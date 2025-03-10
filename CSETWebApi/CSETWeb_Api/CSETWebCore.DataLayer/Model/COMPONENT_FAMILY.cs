﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// A collection of COMPONENT_FAMILY records
    /// </summary>
    public partial class COMPONENT_FAMILY
    {
        public COMPONENT_FAMILY()
        {
            COMPONENT_SYMBOLS = new HashSet<COMPONENT_SYMBOLS>();
        }

        /// <summary>
        /// The Component Family Name is used to
        /// </summary>
        [Key]
        [StringLength(150)]
        public string Component_Family_Name { get; set; }

        [InverseProperty("Component_Family_NameNavigation")]
        public virtual ICollection<COMPONENT_SYMBOLS> COMPONENT_SYMBOLS { get; set; }
    }
}