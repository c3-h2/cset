const fs = require('fs')
const path = require('path')
const url = require('url')
const electron = require('electron')
const {Menu: menu, shell} = require('electron')
const ipcMain = electron.ipcMain
const dialog = electron.dialog
const app = electron.app
const BrowserWindow = electron.BrowserWindow
const globalShortcut = electron.globalShortcut;
const crc = require('crc');
const zlib = require('zlib');
const log = require('electron-log')
const program = require('commander')
const {autoUpdater} = require("electron-updater")
const Store = require('electron-store');
const store = new Store();
const ProgressBar = require('electron-progressbar');
autoUpdater.logger = log
autoUpdater.logger.transports.file.level = 'info'
autoUpdater.autoDownload = false

const __DEV__ = process.env.NODE_ENV === 'development'
		
let windowsRegistry = []
let cmdQPressed = false

function createWindow (opt = {})
{
	let options = Object.assign(
	{
		width: 1600,
		height: 1200,
		webViewTag: false,
		'web-security': true,
		webPreferences: {
			// preload: path.resolve('./preload.js'),
			nodeIntegration: true
		}
	}, opt)

	let mainWindow = new BrowserWindow(options)
	windowsRegistry.push(mainWindow)

	if (__DEV__) 
	{
		console.log('createWindow', opt)
	}

	let ourl = url.format(
	{
		pathname: `${__dirname}/index.html`,
		protocol: 'file:',
		query:
		{
			'dev': __DEV__ ? 1 : 0,
			'drawdev': __DEV__ ? 1 : 0,
			'test': __DEV__ ? 1 : 0,
			'db': 0,
			'gapi': 0,
			'od': 0,
			'gh': 0,
			'tr': 0,
			'analytics': 0,
			'picker': 0,
			'mode': 'device',
			'browser': 0,
			'export': 'https://exp.draw.io/ImageExport4/export'
		},
		slashes: true
	})
	
	mainWindow.loadURL(ourl)

	// Open the DevTools.
	if (__DEV__)
	{
		mainWindow.webContents.openDevTools()
	}

	mainWindow.on('close', (event) =>
	{
		const win = event.sender
		const index = windowsRegistry.indexOf(win)
		
		if (__DEV__) 
		{
			console.log('Window on close', index)
		}
		
		const contents = win.webContents

		if (contents != null)
		{
			contents.executeJavaScript('if(typeof global.__emt_isModified === \'function\'){global.__emt_isModified()}', true,
				isModified =>
				{
					if (__DEV__) 
					{
						console.log('__emt_isModified', isModified)
					}
					
					if (isModified)
					{
						var choice = dialog.showMessageBox(
							win,
							{
								type: 'question',
								buttons: ['Cancel', 'Discard Changes'],
								title: 'Confirm',
								message: 'The document has unsaved changes. Do you really want to quit without saving?' //mxResources.get('allChangesLost')
							})
							
						if (choice === 1)
						{
							win.destroy()
						}
						else
						{
							cmdQPressed = false
						}
					}
					else
					{
						win.destroy()
					}
				})

			event.preventDefault()
		}
	})

	// Emitted when the window is closed.
	mainWindow.on('closed', (event/*:WindowEvent*/) =>
	{
		const index = windowsRegistry.indexOf(event.sender)
		
		if (__DEV__) 
		{
			console.log('Window closed idx:%d', index)
		}
		
		windowsRegistry.splice(index, 1)
	})
	
	return mainWindow
}

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', e =>
{
	//asynchronous
	ipcMain.on('asynchronous-message', (event, arg) =>
	{
		console.log(arg)  // prints "ping"
		event.sender.send('asynchronous-reply', 'pong')
	})
	//synchronous
	ipcMain.on('winman', (event, arg) =>
	{
		if (__DEV__) 
		{
			console.log('ipcMain.on winman', arg)
		}
		
		if (arg.action === 'newfile')
		{
			event.returnValue = createWindow(arg.opt).id
			
			return
		}
		
		event.returnValue = 'pong'
	})
	
    let argv = process.argv
    // https://github.com/electron/electron/issues/4690#issuecomment-217435222
    if (process.defaultApp != true)
    {
        argv.unshift(null)
    }

	var validFormatRegExp = /^(pdf|svg|png|jpeg|jpg)$/;
	
	function argsRange(val) 
	{
	  return val.split('..').map(Number);
	}

	program
        .version(app.getVersion())
        .usage('[options] [input file/folder]')
        .option('-c, --create', 'creates a new empty file if no file is passed')
        .option('-x, --export', 'export the input file/folder based on the given options')
        .option('-r, --recursive', 'for a folder input, recursively convert all files in sub-folders also')
        .option('-o, --output <output file/folder>', 'specify the output file/folder. If omitted, the input file name is used for output with the specified format as extension')
        .option('-f, --format <format>',
		    'if output file name extension is specified, this option is ignored (file type is determined from output extension)',
		    validFormatRegExp, 'pdf')
		.option('-q, --quality <quality>',
			'output image quality for JPEG (default: 90)', parseInt)
		.option('-t, --transparent',
			'set transparent background for PNG')
		.option('-e, --embed-diagram',
			'includes a copy of the diagram (for PNG format only)')
		.option('-b, --border <border>',
			'sets the border width around the diagram (default: 0)', parseInt)
		.option('-s, --scale <scale>',
			'scales the diagram size', parseFloat)
		.option('-w, --width <width>',
			'fits the generated image/pdf into the specified width, preserves aspect ratio.', parseInt)
		.option('-h, --height <height>',
			'fits the generated image/pdf into the specified height, preserves aspect ratio.', parseInt)
		.option('--crop',
			'crops PDF to diagram size')
		.option('-a, --all-pages',
			'export all pages (for PDF format only)')
		.option('-p, --page-index <pageIndex>',
			'selects a specific page, if not specified and the format is an image, the first page is selected', parseInt)
		.option('-g, --page-rage <from>..<to>',
			'selects a page range (for PDF format only)', argsRange)
        .parse(argv)

    //Start export mode?
    if (program.export)
	{
    	var dummyWin = new BrowserWindow({
			show : false
		});
    	
    	windowsRegistry.push(dummyWin);
    	
    	try
    	{
	    	//Prepare arguments and confirm it's valid
	    	var format = null;
	    	var outType = null;
	    	
	    	//Format & Output
	    	if (program.output)
			{
	    		try
	    		{
	    			var outStat = fs.statSync(program.output);
	    			
	    			if (outStat.isDirectory())
					{
	    				outType = {isDir: true};
					}
	    			else //If we can get file stat, then it exists
					{
	    				throw 'Error: Output file already exists';
					}
	    		}
	    		catch(e) //on error, file doesn't exist and it is not a dir
	    		{
	    			outType = {isFile: true};
	    			
	    			format = path.extname(program.output).substr(1);
					
					if (!validFormatRegExp.test(format))
					{
						format = null;
					}
	    		}
			}
	    	
	    	if (format == null)
			{
	    		format = program.format;
			}
	    	
	    	var from = null, to = null;
	    	
	    	if (program.pageIndex != null && program.pageIndex >= 0)
			{
	    		from = program.pageIndex;
			}
	    	else if (program.pageRage && program.pageRage.length == 2)
			{
	    		from = program.pageRage[0] >= 0 ? program.pageRage[0] : null;
	    		to = program.pageRage[1] >= 0 ? program.pageRage[1] : null;
			}
	    	
			var expArgs = {
				format: format,
				w: program.width > 0 ? program.width : null,
				h: program.height > 0 ? program.height : null,
				border: program.border > 0 ? program.border : 0,
				bg: program.transparent ? 'none' : '#ffffff',
				from: from,
				to: to,
				allPages: format == 'pdf' && program.allPages,
				scale: (program.crop && program.scale == null) ? 1.00001: (program.scale || 1), //any value other than 1 crops the pdf
				embedXml: program.embedDiagram? '1' : '0',
				jpegQuality: program.quality
			};

			var paths = program.args;
			
			// If a file is passed 
			if (paths !== undefined && paths[0] != null)
			{
				var inStat = null;
				
				try
				{
					inStat = fs.statSync(paths[0]);
				}
				catch(e)
				{
					throw 'Error: input file/directory not found';	
				}
				
				var files = [];
				
				function addDirectoryFiles(dir, isRecursive)
				{
					fs.readdirSync(dir).forEach(function(file) 
					{
						var filePath = path.join(dir, file);
						stat = fs.statSync(filePath);
					    
						if (stat.isFile())
						{
							files.push(filePath);
						}
						if (stat.isDirectory() && isRecursive)
					    {
							addDirectoryFiles(filePath, isRecursive)
					    }
					});
				}
				
				if (inStat.isFile())
				{
					files.push(paths[0]);
				}
				else if (inStat.isDirectory())
				{
					addDirectoryFiles(paths[0], program.recursive);
				}

				if (files.length > 0)
				{
					var fileIndex = 0;
					
					function processOneFile()
					{
						var curFile = files[fileIndex];
						
						try
						{
							expArgs.xml = fs.readFileSync(curFile, 'utf-8');
							
							var mockEvent = {
								reply: function(msg, data)
								{
									try
									{
										if (data == null || data.length == 0)
										{
											console.error('Error: Export failed: ' + curFile);
										}
										else if (msg == 'export-success')
										{
											var outFileName = null;
											
											if (outType != null)
											{
												if (outType.isDir)
												{
													outFileName = path.join(program.output, path.basename(curFile, path.extname(curFile))) + '.' + format;
												}
												else
												{
													outFileName = program.output;
												}
											}
											else if (inStat.isFile())
											{
												outFileName = path.join(path.dirname(paths[0]), path.basename(paths[0], path.extname(paths[0]))) + '.' + format;
											}
											else //dir
											{
												outFileName = path.join(path.dirname(curFile), path.basename(curFile, path.extname(curFile))) + '.' + format;
											}
											
											try
											{
												fs.writeFileSync(outFileName, data, { flag: 'wx' });
												console.log(curFile + ' -> ' + outFileName);
											}
											catch(e)
											{
												console.error('Error writing to file: ' + outFileName);
											}
										}
										else
										{
											console.error('Error: ' + data + ': ' + curFile);
										}
										
										fileIndex++;
										
										if (fileIndex < files.length)
										{
											processOneFile();
										}
										else
										{
											cmdQPressed = true;
											dummyWin.destroy();
										}
									}
									finally
									{
										mockEvent.finalize();
									}
						    	}
							};
					    	
							exportDiagram(mockEvent, expArgs, true);
						}
						catch(e)
						{
							console.error('Error reading file: ' + curFile);
							
							fileIndex++;
							
							if (fileIndex < files.length)
							{	
								processOneFile();
							}
							else
							{
								cmdQPressed = true;
								dummyWin.destroy();
							}
						}
					}
					
					processOneFile();
				}
				else
				{
					throw 'Error: input file/directory not found or directory is empty';
				}
			}
			else
			{
				throw 'Error: An input file must be specified';
			}
    	}
    	catch(e)
    	{
    		console.error(e);
    		
    		cmdQPressed = true;
			dummyWin.destroy();
    	}
    	
    	return;
	}
    
    let win = createWindow()
    
    win.webContents.on('did-finish-load', function()
    {
        win.webContents.send('args-obj', program);
        
        win.webContents.setZoomFactor(1);
        win.webContents.setVisualZoomLevelLimits(1, 1);
        win.webContents.setLayoutZoomLevelLimits(0, 0);
    });
	
    let updateNoAvailAdded = false;
    
	let checkForUpdates = {
		label: 'Check for updates',
		click() 
		{ 
			autoUpdater.checkForUpdates();
			store.set('dontCheckUpdates', false);
			
			if (!updateNoAvailAdded) 
			{
				updateNoAvailAdded = true;
				autoUpdater.on('update-not-available', (info) => {
					dialog.showMessageBox(
						{
							type: 'info',
							title: 'No updates found',
							message: 'You application is up-to-date',
						})
				})
			}
		}
	}

	let template = [{
	    label: app.getName(),
	    submenu: [
	      {
	        label: 'Website',
	        click() { shell.openExternal('https://about.draw.io'); }
	      },
	      {
	        label: 'Support',
	        click() { shell.openExternal('https://about.draw.io/support'); }
		  },
		  checkForUpdates,
	      {
	        type: 'separator'
	      },
	      {
	        label: 'Quit',
	        accelerator: 'CmdOrCtrl+Q',
	        click() { 
						cmdQPressed = true;
						app.quit(); 
					}
	      }]
	}]
	
	if (process.platform === 'darwin')
	{
	    template = [{
	      label: app.getName(),
	      submenu: [
	        {
	          label: 'About ' + app.getName(),
	          click() { shell.openExternal('https://about.draw.io'); }
	        },
	        {
	          label: 'Support',
	          click() { shell.openExternal('https://about.draw.io/support'); }
			},
			checkForUpdates,
			{ type: 'separator' },
	        { role: 'hide' },
	        { role: 'hideothers' },
	        { role: 'unhide' },
	        { type: 'separator' },
	        { role: 'quit' }
	      ]
	    }, {
	      label: 'Edit',
	      submenu: [{
	        label: 'Cut',
	        accelerator: 'CmdOrCtrl+X',
	        selector: 'cut:'
	      }, {
	        label: 'Copy',
	        accelerator: 'CmdOrCtrl+C',
	        selector: 'copy:'
	      }, {
	        label: 'Paste',
	        accelerator: 'CmdOrCtrl+V',
	        selector: 'paste:'
	      }]
	    }]
	}
	
	const menuBar = menu.buildFromTemplate(template)
	menu.setApplicationMenu(menuBar)

	autoUpdater.setFeedURL({
		provider: 'github',
		repo: 'drawio-desktop',
		owner: 'jgraph'
	})
	
	if (!store.get('dontCheckUpdates'))
	{
		autoUpdater.checkForUpdates()
	}
})

//Quit from the dock context menu should quit the application directly
if (process.platform === 'darwin') 
{
	app.on('before-quit', function() {
		cmdQPressed = true;
	});	
}

// Quit when all windows are closed.
app.on('window-all-closed', function ()
{
	if (__DEV__) 
	{
		console.log('window-all-closed', windowsRegistry.length)
	}
	
	// On OS X it is common for applications and their menu bar
	// to stay active until the user quits explicitly with Cmd + Q
	if (cmdQPressed || process.platform !== 'darwin')
	{
		app.quit()
	}
})

app.on('activate', function ()
{
	if (__DEV__) 
	{
		console.log('app on activate', windowsRegistry.length)
	}
	
	// On OS X it's common to re-create a window in the app when the
	// dock icon is clicked and there are no other windows open.
	if (windowsRegistry.length === 0)
	{
		createWindow()
	}
})


autoUpdater.on('error', e => log.error('@error@\n', e))

autoUpdater.on('update-available', (a, b) =>
{
	log.info('@update-available@\n', a, b)
	
	dialog.showMessageBox(
	{
		type: 'question',
		buttons: ['Ok', 'Cancel', 'Don\'t Ask Again'],
		title: 'Confirm Update',
		message: 'Update available.\n\nWould you like to download and install new version?',
		detail: 'Application will automatically restart to apply update after download',
	}, response =>
	{
		if (response === 0)
		{
			autoUpdater.downloadUpdate()
			
			var progressBar = new ProgressBar({
				title: 'draw.io Update',
			    text: 'Downloading draw.io update...',
				browserWindow: {
					webPreferences: {
						nodeIntegration: true
					}
				}
			});
			
			function reportUpdateError(e)
			{
				progressBar.detail = 'Error occured while fetching updates. ' + e
				progressBar._window.setClosable(true);
			}

			autoUpdater.on('error', e => {
				if (progressBar._window != null)
				{
					reportUpdateError(e);
				}
				else
				{
					progressBar.on('ready', function() {
						reportUpdateError(e);
					});
				}
			})

			var firstTimeProg = true;
			
			autoUpdater.on('download-progress', (d) => {
				//On mac, download-progress event is not called, so the indeterminate progress will continue until download is finished
				log.info('@update-progress@\n', d);
				
				if (firstTimeProg)
				{
					firstTimeProg = false;
					progressBar.close();

					progressBar = new ProgressBar({
						indeterminate: false,
						title: 'draw.io Update',
						text: 'Downloading draw.io update...',
						detail: `${d.percent}% ...`,
						initialValue: d.percent,
						browserWindow: {
							webPreferences: {
								nodeIntegration: true
							}
						}
					});
				
					progressBar
							.on('completed', function() {
								progressBar.detail = 'Download completed.';
							})
							.on('aborted', function(value) {
								log.info(`progress aborted... ${value}`);
							})
							.on('progress', function(value) {
								progressBar.detail = `${value}% ...`;
							})
							.on('ready', function() {
								//InitialValue doesn't set the UI! so this is needed to render it correctly
								progressBar.value = d.percent;
							});
				}
				else 
				{
					progressBar.value = d.percent;
				}
			});

		    autoUpdater.on('update-downloaded', (info) => {
				if (!progressBar.isCompleted())
				{
					progressBar.close()
				}
		
				log.info('@update-downloaded@\n', info)
				// Ask user to update the app
				dialog.showMessageBox(
				{
					type: 'question',
					buttons: ['Install', 'Later'],
					defaultId: 0,
					message: 'A new version of ' + app.getName() + ' has been downloaded',
					detail: 'It will be installed the next time you restart the application',
				}, response =>
				{
					if (response === 0)
					{
						setTimeout(() => autoUpdater.quitAndInstall(), 1)
					}
				})
		    });
		}
		else if (response === 2)
		{
			//save in settings don't check for updates
			log.info('@dont check for updates!@')
			store.set('dontCheckUpdates', true)
		}
	})
})

//Pdf export
const MICRON_TO_PIXEL = 264.58 		//264.58 micron = 1 pixel
const PNG_CHUNK_IDAT = 1229209940;
const LARGE_IMAGE_AREA = 30000000;

//NOTE: Key length must not be longer than 79 bytes (not checked)
function writePngWithText(origBuff, key, text, compressed, base64encoded)
{
	var inOffset = 0;
	var outOffset = 0;
	var data = text;
	var dataLen = key.length + data.length + 1; //we add 1 zeros with non-compressed data
	
	//prepare compressed data to get its size
	if (compressed)
	{
		data = zlib.deflateRawSync(encodeURIComponent(text));
		dataLen = key.length + data.length + 2; //we add 2 zeros with compressed data
	}
	
	var outBuff = Buffer.allocUnsafe(origBuff.length + dataLen + 4); //4 is the header size "zTXt" or "tEXt"
	
	try
	{
		var magic1 = origBuff.readUInt32BE(inOffset);
		inOffset += 4;
		var magic2 = origBuff.readUInt32BE(inOffset);
		inOffset += 4;
		
		if (magic1 != 0x89504e47 && magic2 != 0x0d0a1a0a)
		{
			throw new Error("PNGImageDecoder0");
		}
		
		outBuff.writeUInt32BE(magic1, outOffset);
		outOffset += 4;
		outBuff.writeUInt32BE(magic2, outOffset);
		outOffset += 4;
	}
	catch (e)
	{
		log.error(e.message, {stack: e.stack});
		throw new Error("PNGImageDecoder1");
	}

	try
	{
		while (inOffset < origBuff.length)
		{
			var length = origBuff.readInt32BE(inOffset);
			inOffset += 4;
			var type = origBuff.readInt32BE(inOffset)
			inOffset += 4;

			if (type == PNG_CHUNK_IDAT)
			{
				// Insert zTXt chunk before IDAT chunk
				outBuff.writeInt32BE(dataLen, outOffset);
				outOffset += 4;
				
				var typeSignature = (compressed) ? "zTXt" : "tEXt";
				outBuff.write(typeSignature, outOffset);
				
				outOffset += 4;
				outBuff.write(key, outOffset);
				outOffset += key.length;
				outBuff.writeInt8(0, outOffset);
				outOffset ++;

				if (compressed)
				{
					outBuff.writeInt8(0, outOffset);
					outOffset ++;
					data.copy(outBuff, outOffset);
				}
				else
				{
					outBuff.write(data, outOffset);	
				}
				
				outOffset += data.length;				

				var crcVal = crc.crc32(typeSignature);
				crc.crc32(data, crcVal);

				// CRC
				outBuff.writeInt32BE(crcVal ^ 0xffffffff, outOffset);
				outOffset += 4;

				// Writes the IDAT chunk after the zTXt
				outBuff.writeInt32BE(length, outOffset);
				outOffset += 4;
				outBuff.writeInt32BE(type, outOffset);
				outOffset += 4;

				origBuff.copy(outBuff, outOffset, inOffset);

				// Encodes the buffer using base64 if requested
				return base64encoded? outBuff.toString('base64') : outBuff;
			}

			outBuff.writeInt32BE(length, outOffset);
			outOffset += 4;
			outBuff.writeInt32BE(type, outOffset);
			outOffset += 4;

			origBuff.copy(outBuff, outOffset, inOffset, inOffset + length + 4);// +4 to move past the crc
			
			inOffset += length + 4;
			outOffset += length + 4;
		}
	}
	catch (e)
	{
		log.error(e.message, {stack: e.stack});
		throw e;
	}
}

//to-do Use canvas to export images if math is not used to speedup export (no capturePage). Requires change to export3.html also
function exportDiagram(event, args, directFinalize)
{
	var browser = null;
	
	try
	{
		browser = new BrowserWindow({
			webPreferences: {
				backgroundThrottling: false,
				nodeIntegration: true
			},
			show : false,
			frame: false,
			enableLargerThanScreen: true,
			transparent: args.format == 'png' && (args.bg == null || args.bg == 'none'),
			parent: windowsRegistry[0] //set parent to first opened window. Not very accurate, but useful when all visible windows are closed
		});

		browser.loadURL(`file://${__dirname}/export3.html`);

		const contents = browser.webContents;

		contents.on('did-finish-load', function()
	    {
			contents.send('render', {
				xml: args.xml,
				format: args.format,
				w: args.w,
				h: args.h,
				border: args.border || 0,
				bg: args.bg,
				"from": args["from"],
				to: args.to,
				pageId: args.pageId,
				allPages: args.allPages,
				scale: args.scale || 1,
				extras: args.extras
			});
			
			ipcMain.once('render-finished', (evt, bounds) =>
			{
				var pdfOptions = {pageSize: 'A4'};
				var hasError = false;
				
				if (bounds == null || bounds.width < 5 || bounds.height < 5) //very small page size never return from printToPDF
				{
					//A workaround to detect errors in the input file or being empty file
					hasError = true;
				}
				else
				{
					//Chrome generates Pdf files larger than requested pixels size and requires scaling
					var fixingScale = 0.959;
	
					var w = Math.ceil(bounds.width * fixingScale);
					
					// +0.1 fixes cases where adding 1px below is not enough
					// Increase this if more cropped PDFs have extra empty pages
					var h = Math.ceil(bounds.height * fixingScale + 0.1);
					
					pdfOptions = {
						printBackground: true,
						pageSize : {
							width: w * MICRON_TO_PIXEL,
							height: (h + 2) * MICRON_TO_PIXEL //the extra 2 pixels to prevent adding an extra empty page						
						},
						marginsType: 1 // no margin
					}
				}
				
				var base64encoded = args.base64 == '1';
				
				//Set finalize here since it is call in the reply below
				function finalize()
				{
					browser.destroy();
				};
				
				if (directFinalize === true)
				{
					event.finalize = finalize;
				}
				else
				{
					//Destroy the window after response being received by caller
					ipcMain.once('export-finalize', finalize);
				}
				
				if (hasError)
				{
					event.reply('export-error');
				}
				else if (args.format == 'png' || args.format == 'jpg' || args.format == 'jpeg')
				{
					var newBounds = {width: Math.ceil(bounds.width + bounds.x), height: Math.ceil(bounds.height + bounds.y)};
					browser.setBounds(newBounds);
					
					//to-do The browser takes sometime to show the graph (also after resize it takes some time to render)
					//	 	1 sec is most probably enough (for small images, 5 for large ones) BUT not a stable solution
					setTimeout(function()
					{
						browser.capturePage().then(function(img)
						{
							//Image is double the given bounds, so resize is needed!
							img = img.resize(newBounds);

							var data = args.format == 'png'? img.toPNG() : img.toJPEG(args.jpegQuality || 90);
							
							if (args.embedXml == "1" && args.format == 'png')
							{
								data = writePngWithText(data, "mxGraphModel", args.xml, true,
										base64encoded);
							}
							else
							{
								if (base64encoded)
								{
									data = data.toString('base64');
								}
							}
							
							event.reply('export-success', data);
						});
					}, bounds.width * bounds.height < LARGE_IMAGE_AREA? 1000 : 5000);
				}
				else if (args.format == 'pdf')
				{
					contents.printToPDF(pdfOptions, (error, data) => 
					{
						if (error)
						{
							event.reply('export-error', error);
						}
						else
						{
							event.reply('export-success', data);
						}
					});
				}
				else if (args.format == 'svg')
				{
					contents.send('get-svg-data');
					
					ipcMain.once('svg-data', (evt, data) =>
					{
						event.reply('export-success', data);
					});
				}
				else
				{
					event.reply('export-error', 'Error: Unsupported format');
				}
			});
	    });
	}
	catch (e)
	{
		if (browser != null)
		{
			browser.destroy();
		}

		event.reply('export-error', e);
		console.log('export-error', e);
	}
};

ipcMain.on('export', exportDiagram);
