﻿using System;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Principal;
using CSETWebCore.DataLayer.Model;
using CSETWebCore.Interfaces.Helpers;
using CSETWebCore.Interfaces.User;
using CSETWebCore.Model.Authentication;
using CSETWebCore.Model.Contact;
using CSETWebCore.Model.User;
using Microsoft.AspNetCore.Hosting;


namespace CSETWebCore.Helpers
{
    public class UserAuthentication : IUserAuthentication
    {
        private readonly IPasswordHash _password;
        private readonly IUserBusiness _userBusiness;
        private readonly ITokenManager _transactionSecurity;
        private readonly IHostingEnvironment _hostingEnvironment;
        private CSETContext _context;

        public UserAuthentication(IPasswordHash password, IUserBusiness userBusiness, 
            ITokenManager transactionSecurity, IHostingEnvironment hostingEnvironment, CSETContext context)
        {
            _password = password;
            _transactionSecurity = transactionSecurity;
            _userBusiness = userBusiness;
            _hostingEnvironment = hostingEnvironment;
            _context = context;
        }

        public LoginResponse Authenticate(Login login)
        {
            // Ensure that we have what we need
            if (login == null || string.IsNullOrEmpty(login.Email) || string.IsNullOrEmpty(login.Password))
            {
                return null;
            }

            USERS loginUser = null;

            // Read directly from the database; UserManager does not read password and salt, in order to keep them more private
            loginUser = _context.USERS.Where(x => x.PrimaryEmail == login.Email).FirstOrDefault();

            if (loginUser == null)
            {
                return null;
            }

                // Validate the supplied password against the hashed password and its salt
            bool success = _password.ValidatePassword(login.Password, loginUser.Password, loginUser.Salt);
            if (!success)
            {
                return null;
            }

            // Generate a token for this user
            string token = _transactionSecurity.GenerateToken(loginUser.UserId, login.TzOffset, -1, null, null, login.Scope);

            // Build response object
            LoginResponse resp = new LoginResponse
            {
                Token = token,
                UserId = loginUser.UserId,
                Email = login.Email,
                UserFirstName = loginUser.FirstName,
                UserLastName = loginUser.LastName,
                IsSuperUser = loginUser.IsSuperUser,
                ResetRequired = loginUser.PasswordResetRequired ?? true,
                ExportExtension = IOHelper.GetExportFileExtension(login.Scope),
                ImportExtensions = IOHelper.GetImportFileExtensions(login.Scope),
                LinkerTime = new BuildNumberHelper().GetLinkerTime()
            };

            return resp;
        }


        /// <summary>
        /// Emulates credential authentication without requiring credentials.
        /// The Windows file system is consulted to see if a certain file was placed there
        /// during the stand-alone install process.  
        /// </summary>
        /// <param name="login"></param>
        /// <returns></returns>
        public LoginResponse AuthenticateStandalone(Login login, ITokenManager tokenManager)
        {
            int?  assessmentId = ((TokenManager)tokenManager).GetAssessmentId();
            
            assessmentId = assessmentId == 0 ? null : assessmentId;

            int userIdSO = 100;
            string primaryEmailSO = "";

            // Read the file system for the LOCAL-INSTALLATION file put there at install time
            if (!IsLocalInstallation(login.Scope))
            {
                return null;
            }

            using (CSETContext tmpcontext = new CSETContext()) {
                //TODO: Make work multi-platform

                string name = null;
                if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
                {
                    name = WindowsIdentity.GetCurrent().Name;
                    name = string.IsNullOrWhiteSpace(name) ? "Local" : name;
                }
                else
                {
                    name = "Local";
                }
                name = string.IsNullOrWhiteSpace(name) ? "Local" : name;
                primaryEmailSO = name;
                //check for legacy default email for local installation and set to new standard
                var userOrg = tmpcontext.USERS.Where(x => x.PrimaryEmail == primaryEmailSO + "@myorg.org").FirstOrDefault();
                if (userOrg != null)
                {
                    string tmp = userOrg.PrimaryEmail.Split('@')[0];
                    userOrg.PrimaryEmail = tmp;
                    if (tmpcontext.USERS.Where(x => x.PrimaryEmail == tmp).FirstOrDefault() == null)
                        tmpcontext.SaveChanges();
                    primaryEmailSO = userOrg.PrimaryEmail;
                }

                var user = tmpcontext.USERS.Where(x => x.PrimaryEmail == primaryEmailSO).FirstOrDefault();
                if (user == null)
                {
                    UserDetail ud = new UserDetail()
                    {
                        Email = primaryEmailSO,
                        FirstName = name,
                        LastName = ""
                    };
                    UserCreateResponse userCreateResponse = _userBusiness.CreateUser(ud,tmpcontext);

                    tmpcontext.SaveChanges();
                    //update the userid 1 to the new user
                    var tempu = tmpcontext.USERS.Where(x => x.PrimaryEmail == primaryEmailSO).FirstOrDefault();
                    if (tempu != null)
                        userIdSO = tempu.UserId;
                    determineIfUpgradedNeededAndDoSo(userIdSO,tmpcontext);
                }
                else
                {
                    userIdSO = user.UserId;
                }

                    if (string.IsNullOrEmpty(primaryEmailSO))
                {
                    return null;
                }


                // Generate a token for this user
                string token = _transactionSecurity.GenerateToken(userIdSO, login.TzOffset, -1, assessmentId, null, login.Scope);

                // Build response object
                LoginResponse resp = new LoginResponse
                {
                    Token = token,
                    Email = primaryEmailSO,
                    UserFirstName = name,
                    UserLastName = "",
                    IsSuperUser = false,
                    ResetRequired = false,
                    UserId = userIdSO,
                    ExportExtension = IOHelper.GetExportFileExtension(login.Scope),
                    ImportExtensions = IOHelper.GetImportFileExtensions(login.Scope),
                    LinkerTime = new BuildNumberHelper().GetLinkerTime()
                };


                return resp;
            }
        }

        private bool IsUpgraded = false;

        public void determineIfUpgradedNeededAndDoSo(int newuserID, CSETContext tmpContext)
        {
            //look to see if the localuser exists
            //if so then get that user id and changes all 
            if (!IsUpgraded)
            {
                var user = tmpContext.USERS.Where(x => x.PrimaryEmail == "localuser").FirstOrDefault();
                if (user != null)
                {
                    var contacts = tmpContext.ASSESSMENT_CONTACTS.Where(x => x.UserId == user.UserId).ToList();
                    if(contacts.Any())
                        for (int i = 0; i < contacts.Count(); i++)
                            contacts[i].UserId = newuserID;
                    
                    tmpContext.ASSESSMENT_CONTACTS.UpdateRange(contacts);
                    tmpContext.SaveChanges();
                }
            }
            IsUpgraded = true;
        }

        /// <summary>
        /// Returns 'true' if the installation is 'local' (self-contained using Windows identity).
        /// The local installer will place an empty file (LOCAL-INSTALLATION) in the website folder
        /// and the existence of the file indicates if the installation is local.
        /// </summary>
        /// <param name="app_code"></param>
        /// <returns></returns>
        public bool IsLocalInstallation(String app_code)
        {
            string physicalAppPath = _hostingEnvironment.ContentRootPath;

            return File.Exists(Path.Combine(physicalAppPath, "LOCAL-INSTALLATION"));
        }


        
    }
}