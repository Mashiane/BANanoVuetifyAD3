B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.3
@EndOfDesignText@
#ignorewarnings:12
Sub Class_Globals
	Private BANano As BANano   'ignore
	Public CONST SEND_EMAIL As String = "SendEmail"
	Private Const GET_FILE As String = "GetFile"
	Private Const DIRECTORY_LIST As String = "DirectoryList"
	Private const ROLLING_COPYRIGHT As String = "RollingCopyright"		'ignore
	Private const VALIDATE_CC As String = "ValidateCC"					'ignore
	Private const FILE_EXISTS As String = "FileExists"
	Private const DIRECTORY_EXISTS As String = "DirectoryExists"
	Private const FILE_WRITE As String = "WriteFile"
	Private const FILE_LOG As String = "LogFile"
	Private const FILE_APPEND As String = "FileAppend"
	Private const FILE_COPY As String = "FileCopy"
	Private const FILE_RENAME As String = "FileRename"
	Private const FILE_DELETE As String = "FileDelete"
	Private const DIRECTORY_MAKE As String = "DirectoryMake"
	Private const FILE_GETHTML As String = "FileGetHTML"
	Private const FILE_GETJSON As String = "FileGetJSON"
	Private const DIRECTORY_ZIP As String = "DirectoryZip"
	Private const DIRECTORY_DELETE As String = "DirectoryDelete"
	Private const DIRECTORY_LISTRECURSIVE As String = "DirectoryListRecursive"
	Private const FILE_UNZIP As String = "FileUnzip"
	Private const DIRECTORY_COPY As String = "DirectoryCopy"
	Private const PATH_INFO As String = "GetPathInfo"
	Private const EXCEL_TEST As String = "ExcelTest"					'ignore
	Private LogFileName As String
	Public SuspendLogs As Boolean
	Private IncludeResponses As Boolean									'ignore
	Type FileInfo(FileName As String, FileDate As String, FileSize As Long, FileType As String, Status As String, FullPath As String, FileDateOnly As String, FileError As String)
	Public const START_IN_DOCUMENTS As String = "documents"
	Public const START_IN_DESKTOP As String = "desktop"
	Public const START_IN_PICTURES As String = "pictures"
	Public const START_IN_DOWNLOADS As String = "downloads"
	Public const START_IN_MUSIC As String = "music"
	Public const START_IN_VIDEOS As String = "videos"
End Sub

'
'FileAPI - returns the directory handles for selected folder
'<code>
''show a directory picker
'Dim boDH As BANanoObject = BANano.Await(php.DirectoryShowPickerWait)
''define a directory handle object
'Dim dh As DirectoryHandle
''initialize a directory handle object
'dh.Initialize(boDH)
''define the dir name
'Dim dirName as String = dh.name
''dir the user select a folder?
'if dirName = "" Then return
''get the contents 
'Dim dirContent As BANanoObject = BANAno.Await(dh.GetValuesWait)
'Log(dirContent)
'</code>
Sub DirectoryShowPickerWait As BANanoObject
	Dim handles As List
	handles.Initialize 
	Try
		Dim window As BANanoWindow
		handles = BANano.Await(window.RunMethod("showDirectoryPicker", Null))
	Catch
		Log(LastException)
		Return Null
	End Try	
	Return handles
End Sub

'FileAPI - show file picker and returns the handles for selected files
'id - unique identifier for this picker
'start in can be any of
'START_IN_DOCUMENTS, START_IN_DESKTOP, START_IN_DOWNLOADS
' START_IN_MUSIC, START_IN_PICTURES, START_IN_VIDEOS
''show a file picker
'Dim lstFiles As List = BANano.Await(php.FileShowOpenPickerWait("docs", START_IN_DESKTOP))
''define a file handle object
'Dim fh As FileHandle
''initialize a file handle object
'fh.Initialize(lstFiles)
'</code>
Sub FileShowOpenPickerWait(id As String, startIn As String) As List
	Dim handles As List
	handles.Initialize 
	Dim options As Map = CreateMap()
	If startIn <> "" Then
		options.put("startIn", startIn)
	End If
	If id <> "" Then
		options.Put("id", id)
	End If
	Try
		Dim window As BANanoWindow
		handles = BANano.Await(window.RunMethod("showOpenFilePicker", Array(options)))
	Catch
		Log(LastException)
		Return Null
	End Try	
	Return handles
End Sub

'show save as dialog box
'FileAPI
'suggestedName - e.g. My File.txt
'Description - e.g. Text Files
'Extension - e.g. '.txt'
'ExtensionsType - e.g. 'text/plain'
Sub FileShowSavePickerWait(suggestedName As String, Description As String, Extension As String, ExtensionsType As String) As BANanoPromise
	'build the options
	Dim options As Map = CreateMap()
	Dim types As List
	types.Initialize 
	
	Dim fileType As Map = CreateMap()
	fileType.Put("description", Description)
	Dim accept As Map = CreateMap()
	Dim ext As List
	ext.Initialize 
	ext.Add(Extension)
	accept.Put(ExtensionsType, ext) 
	fileType.Put("accept", accept)
	'
	types.Add(fileType)
	options.Put("suggestedName", suggestedName)
	options.Put("types", types)
	Dim window As BANanoWindow
	Dim handle As BANanoPromise = BANano.Await(window.RunMethod("showSaveFilePicker", Array(options)))
	Return handle
End Sub

''convert dataURL to blob
'Sub dataURLToBlobWait(sPath As String) As BANanoObject
'	Dim bf As BANanoFetch
'	Dim fr As BANanoFetchResponse
'	Dim blob As BANanoObject
'	'
'	Dim dataUrl As String
' 	Dim dataUrlProm As BANanoPromise = BANano.GetFileAsDataURL(sPath, Null)
'	dataUrlProm.Then(dataUrl)
'	Dim blob As BANanoObject = Part2Wait(dataUrl)
'	Log("part1")
'	Log(blob)
'	Return blob
'		'bf.Initialize(dataUrl, Null)
'   		'bf.ThenWait(fr)
'		'bf.Return(fr.Blob)
'		'bf.ThenWait(blob)
'		'Log("inside...")
'		'Log(blob)
'		'bf.Return(blob)
'		'bf.End
'	dataUrlProm.End
'End Sub
'
'Sub Part2Wait(dataUrl As String) As Object
'	Dim bf As BANanoFetch
'	Dim bfr As BANanoFetchResponse
'	bf.Initialize(dataUrl, Null)
'	bfr = BANano.Await(bf)    
'    Dim blob As Object = BANano.Await(bfr.Blob)
'	Log("part2")
'	Log(blob)
'   	Return blob
'End Sub

'Sub dataURLToBlob1(sPath As String) As BANanoObject
'	Dim bf As BANanoFetch
'	Dim fr As BANanoFetchResponse
'	Dim blob As BANanoObject
'	'
'	Dim dataUrl As String
' 	Dim dataUrlProm As BANanoPromise = BANano.GetFileAsDataURL(sPath, Null)
'	dataUrlProm.Then(dataUrl)
'		bf.Initialize(dataUrl, Null)
'		fr = BANano.Await(bf)    
'    	blob = BANano.Await(fr.Blob)
'		Log("inside...")
'		Log(blob)
'		BANano.ReturnThen(dataUrlProm)
'		'Return blob
'		bf.End
'	dataUrlProm.End
'End Sub	

'initialize the class for use
'sLogFile - you can pass it the LogFile name if you want to keep logs of what the library is doing
'bIncludeResponses - include the response of the operations of the logs
Sub Initialize(sLogFile As String, bIncludeResponses As Boolean) As BANanoPHP
	LogFileName = sLogFile
	IncludeResponses = bIncludeResponses
	SuspendLogs = False
	Return Me
End Sub

'convert object to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'pad a string to the right
private Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String
	Value = CStr(Value)
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = PadChar & Value
	Next
	Return Value
End Sub


'gets the infor about the file from file input
'<code>
''gets the file info from an input component and save to FileInfo type
'dim fi As FileInfo = FileGetInfo(fileObj)
'</code>
Sub FileGetInfo(fileObj As Map) As FileInfo
	Dim ff As FileInfo
	ff.Initialize
	
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return ff
	
	Dim sname As String = fileObj.Get("name")
	Dim slastModifiedDate As BANanoObject = fileObj.Get("lastModifiedDate")
	Dim ssize As String = fileObj.Get("size")
	Dim stype As String = fileObj.Get("type")
	'
	Dim yyyy As String = slastModifiedDate.RunMethod("getFullYear", Null).Result
	Dim dd As String = slastModifiedDate.RunMethod("getDate", Null).Result
	Dim mm As String = slastModifiedDate.RunMethod("getMonth", Null).Result
	Dim hh As String = slastModifiedDate.RunMethod("getHours", Null).Result
	Dim minutes As String = slastModifiedDate.RunMethod("getMinutes", Null).Result
	'pad the details
	dd = PadRight(dd, 2, "0")
	mm = PadRight(mm, 2, "0")
	hh = PadRight(hh, 2, "0")
	minutes = PadRight(minutes, 2, "0")
	'
	Dim fd As String = $"${yyyy}-${mm}-${dd} ${hh}:${minutes}"$
		
	ff.FileName = sname
	ff.FileDate = fd
	ff.FileDateOnly = $"${yyyy}-${mm}-${dd}"$
	ff.FileSize = ssize
	ff.FileType = stype
	ff.FileError = ""
	Return ff
End Sub


'get the length of the string
private Sub Len(Text As String) As Int
	Return Text.Length
End Sub

'upload file to server and return success or error
'server should have write permissions
'targetDir - the target directory, will be created if it does not exist
'fo is the file object for file input change event
'<code>
''upload a file to assets folder
'Dim res As String = BANano.Await(FileUploadWait(fo, "./assets"))
'</code>
Sub FileUploadWait(fileO As Map, limit As Long, targetDir As String) As FileInfo
	'get the file details
	Dim fileDet As FileInfo = FileGetInfo(fileO)
	'get the file name
	Dim fn As String = fileDet.FileName
	Log($"File Name: ${fn}"$)
	'check size
	Dim fs As Long = fileDet.FileSize
	Log($"File Size: "$ & fs)
	If fs > limit Then
		'return a blank path
		fileDet.FullPath = ""
		fileDet.FileError = "The file size is larger than the specified limits."
		Return fileDet
	End If
	
	'start uploading the file
	Dim fd As BANanoObject
	fd.Initialize2("FormData", Null)
	fd.RunMethod("append", Array("upload", fileO))
	fd.RunMethod("append", Array("target", targetDir))
	'
	Dim Res As String = BANano.CallAjaxWait("./assets/upload.php", "POST", "", fd, True, Null)
	Dim result As Map = BANano.FromJson(Res)
	Dim sstatus As String = result.Get("status")
	Dim starget As String = result.Get("target")
	Log(starget)
	fileDet.Status = sstatus
	fileDet.FullPath = $"./assets/${fn}"$
	Return fileDet
End Sub

'delete the log file
'<code>
''delete the log file
'Dim res As String = BANano.Await(bPHP.DeleteLogFile)
'</code>
Sub DeleteLogFileWait As String
	Dim res As String = BANano.Await(FileDeleteWait(LogFileName))	
	Return res
End Sub

'update a log file with content
'<code>
''update the log file
'Dim res As String = BANano.Await(bPHP.UpdateLogWait("Started BANanoPHP..."))
'</code>
Sub UpdateLogWait(content As String) As String
	If LogFileName = "" And SuspendLogs = False Then
		BANano.Throw("The LogFileName has not been set!")
		Return False
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_LOG, BuildWriteFile(LogFileName, content))
	Return res
End Sub

'write a text file and wait
'<code>
''create a new text file with contents
'Dim res As String = BANano.Await(bPHP.FileCreateWait("./assets/mashy.txt", "Creating a new text file"))
'</code>
Sub FileCreateWait(fileName As String, content As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Creating a new text file '${fileName}' with content '${content}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_WRITE, BuildWriteFile(fileName, content))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'get the directory listing
'<code>
''get the directory listing
'Dim dl As Map = BANano.Await(bPHP.DirectoryListWait("./"))
'</code>
Sub DirectoryListWait(directoryPath As String) As Map
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Directory listing '${directoryPath}'"$))
	End If
	Dim assetsList As String = BANano.CallInlinePHPWait(DIRECTORY_LIST, BuildDirectoryList(directoryPath))
	Dim soutm As Map = BANano.fromjson(assetsList)
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response:"$))
		BANano.Await(UpdateLogWait(BANano.ToJson(soutm)))
	End If
	Return soutm
End Sub

'check file existence and returns yes or no
'<code>
''check file existence
'Dim fe As string = BANano.Await(bPHP.FileExistsWait("./mashy.txt"))
'if fe = "yes" then
''the file exists
'else
''the file does not exist
'end if
'</code>
Sub FileExistsWait(fn As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Check File Existstance '${fn}'"$))
	End If
	Dim sfc As String = BANano.CallInlinePHPWait(FILE_EXISTS, BuildFileExists(fn))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${sfc}"$))
	End If
	Return sfc
End Sub

'rename / move a directory
'<code>
''rename or move a directory
'Dim res As String = BANano.Await(bPHP.DirectoryRenameWait("./assets1", "./assets2"))
'</code>
'Sub DirectoryRenameWait(oldDir As String, newDir As String) As Boolean
'	If LogFileName <> "" And SuspendLogs = False Then
'		BANano.Await(UpdateLogWait($"Directory Rename from '${oldDir}' to '${newDir}'"$))
'	End If
'	'copy the directory to the new location
'	Dim res As Boolean = BANano.Await(DirectoryCopyWait(oldDir, newDir))
'	If res Then
'		'the directly has been copied and exists
'		'delete the old folder
'		Dim bd As Boolean = BANano.Await(DirectoryDeleteWait(oldDir))
'		If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
'			BANano.Await(UpdateLogWait($"Response: ${bd}"$))
'		End If
'		'return result of the delete, should be true
'		Return bd
'	Else
'		If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
'			BANano.Await(UpdateLogWait($"Response: ${res}"$))
'		End If
'		Return res
'	End If
'End Sub

'rename / move a directory
'<code>
''rename or move a directory
'Dim res As String = BANano.Await(bPHP.DirectoryRenameWait("./assets1", "./assets2"))
'</code>
Sub DirectoryRenameWait(oldname As String, newname As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Rename directory from '${oldname}' to '${newname}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_RENAME, BuildFileRename(oldname, newname))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub


'check directory existence and returns yes or no
'<code>
''check directory existence
'Dim fe As string = BANano.Await(bPHP.DirectoryExistsWait("./anele"))
'if fe = "yes" then
''the directory exists
'else
''the directory does not exist
'end if
'</code>
Sub DirectoryExistsWait(fn As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Check Directory Existence '${fn}'"$))
	End If
	Dim sfc As String = BANano.CallInlinePHPWait(DIRECTORY_EXISTS, BuildFileExists(fn))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${sfc}"$))
	End If
	Return sfc
End Sub

'get the file contents
'<code>
''get the file contents
'Dim text As String = BANano.Await(bPHP.FileReadWait("./mashy.txt"))
'</code>
Sub FileReadWait(fn As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Read file '${fn}'"$))
	End If
	Dim strfc As String = BANano.CallInlinePHPWait(GET_FILE, BuildGetFile(fn))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response:"$))
		BANano.Await(UpdateLogWait(strfc))
	End If
	Return strfc
End Sub

'append text to a file use \n for new lines
'<code>
''append text to a file
'Dim res As String = BANano.Await(bPHP.FileAppendWait("./mashy.txt", "This is new content..."))
'</code>
Sub FileAppendWait(fn As String, content As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Append file '${fn}' with '${content}'"$))
		BANano.Await(UpdateLogWait(content))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_APPEND, BuildWriteFile(fn, content))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'append a new line to a file
'<code>
''append a new line to a file
'Dim res As String = BANano.Await(bPHP.FileAppendNewLineWait("./mashy.txt"))
'</code>
Sub FileAppendNewLineWait(fn As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Append a new line to file '${fn}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_APPEND, BuildWriteFile(fn, "\n"))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'rename a file
'<code>
''rename a file to another returns file existence
'dim res as string = BANano.Await(bPHP.FileRenameWait("./mashy.txt", "./mashy1.txt"))
'</code>
Sub FileRenameWait(oldname As String, newname As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Rename file from '${oldname}' to '${newname}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_RENAME, BuildFileRename(oldname, newname))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'copy a file to another or another directory, it will create folder structure if not existing when copying to another directory
''Example: bPHP.FileCopyWait("./mashy.txt", "./mashy1.txt")
''Example: bPHP.FileCopyWait("./mashy.txt", "./assets/mashy1.txt")
'<code>
''copy the file
'Dim res As String = BANano.Await(bPHP.FileCopyWait("./mashy.txt", "./mashy1.txt"))
'</code>
Sub FileCopyWait(fn As String, newLocation As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Copy file from '${fn}' to '${newLocation}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_COPY, BuildFileCopy(fn, newLocation))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'delete a file
'<code>
''delete the file
'Dim res As String = BANano.Await(bPHP.FileDeleteWait("./mashy.txt"))
'</code>
Sub FileDeleteWait(fn As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Delete file '${fn}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_DELETE, BuildFileDelete(fn))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'create a directory, this also can create recursively
'Example: bPHP.DirectoryCreateWait("./mashy")
'Dim res As String = BANano.Await(bPHP.DirectoryCreateWait("./anele/mashy/mbanga/is/enjoying/BANanoPHP"))
'<code>
''create a directory
'bPHP.DirectoryCreateWait("./mashy/1")
'</code>
Sub DirectoryCreateWait(dirName As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Create directory '${dirName}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(DIRECTORY_MAKE, BuildDirectoryMake(dirName))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'get an html file from site
'<code>
''get the HTML of a website
'Dim res As String = BANano.Await(bPHP.WebsiteGetHTMLWait("http://thedomain.com"))
'</code>
Sub WebsiteGetHTMLWait(siteURL As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Get HTML from URL '${siteURL}'"$))
	End If
	Dim html As String = BANano.CallInlinePHPWait(FILE_GETHTML, BuildFileGetHTML(siteURL))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response:"$))
		BANano.Await(UpdateLogWait(html))
	End If
	Return html
End Sub

'get json 
'<code>
''get JSON from an API
'Dim res As String = BANano.Await(bPHP.GetJSONWait("http://jsonip.com"))
'</code>
Sub GetJSONWait(siteURL As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Get JSON from URL '${siteURL}'"$))
	End If
	Dim json As String = BANano.CallInlinePHPWait(FILE_GETJSON, BuildFileGetJSON(siteURL))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response:"$))
		BANano.Await(UpdateLogWait(json))
	End If
	Return json
End Sub

'get your internet IP address
'<code>
''get IP Address
'Dim res As String = BANano.Await(bPHP.GetIPAddressWait)
'</code>
Sub GetIPAddressWait As String
	Dim res As String = GetJSONWait("http://jsonip.com")
	Return res
End Sub

'delete directory completely
'<code>
''delete the directory recursibely
'Dim res As String = BANano.Await(bPHP.DirectoryDeleteWait("./assets/anele"))
'</code>
Sub DirectoryDeleteWait(dirName As String) As Boolean
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Delete directory '${dirName}'"$))
	End If
	Dim res As Boolean = BANano.CallInlinePHPWait(DIRECTORY_DELETE, BuildDirectoryDelele(dirName))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'directory list recursively
'<code>
''get the directory listing recursively
'Dim res As String = BANano.Await(bPHP.DirectoryListRecursiveWait("./assets/mashy"))
'</code>
Sub DirectoryListRecursiveWait(dirName As String) As List
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Directory listing recursive '${dirName}'"$))
	End If
	Dim rl As String = BANano.CallInlinePHPWait(DIRECTORY_LISTRECURSIVE, BuildDirectoryListRecursive(dirName))
	Dim lst As List = BANano.FromJson(rl)
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response:"$))
		BANano.Await(UpdateLogWait(BANano.tojson(lst)))
	End If
	Return lst
End Sub

'zip a directory
'<code>
''zip the directory to a file
'Dim res As String = BANano.Await(bPHP.ZipDirectoryWait("./scripts", "./mashy.zip"))
'</code>
Sub ZipDirectoryWait(dirName As String, zipFileName As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Zip directory from '${dirName}' to '${zipFileName}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(DIRECTORY_ZIP, BuildDirectoryZip(dirName, zipFileName))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'unzip a file
'<code>
''unzip the file to a target location, target folders will be created if they dont exist
'Dim res As String = BANano.Await(bPHP.UnZipWait("./mashy.zip", "./assets"))
'</code>
Sub UnZipWait(zipFileName As String, targetFolder As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Un-Zip file from '${zipFileName}' to '${targetFolder}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(FILE_UNZIP, BuildFileUnzip(zipFileName, targetFolder))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub


'directory copy, target location folder is created if it does not exist
'<code>
''copy the directory to a new location, target folders will be created if they dont exist
'Dim res As String = BANano.Await(bPHP.DirectoryCopy("./scripts", "./backup scripts"))
'</code>
Sub DirectoryCopyWait(dirName As String, targetLocation As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Copy directory from '${dirName}' to '${targetLocation}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(DIRECTORY_COPY, BuildDirectoryCopy(dirName, targetLocation))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'get path info for a file
'<code>
''get path info for a file
'Dim res As String = BANano.Await(bPHP.PathInfoWait("./scripts/file1.txt"))
'Dim pm As Map = BANano.FromJson(pathinfo)
'Dim dirname as string = pm.get("dirname")
'Dim basename as string = pm.get("basename")	'file name with extension
'Dim extension as string = pm.get("extension")
'Dim filename as string = pm.get("filename")	'filename without extension
'</code>
Sub PathInfoWait(dirName As String) As String
	If LogFileName <> "" And SuspendLogs = False Then
		BANano.Await(UpdateLogWait($"Path Info '${dirName}'"$))
	End If
	Dim res As String = BANano.CallInlinePHPWait(PATH_INFO, BuildPathInfo(dirName))
	If LogFileName <> "" And SuspendLogs = False And IncludeResponses Then
		BANano.Await(UpdateLogWait($"Response: ${res}"$))
	End If
	Return res
End Sub

'send an email
'to send email via gmail, you need to set less secure apps on https://myaccount.google.com/
'1. Click Security
'<code>
''send an email
'bPHP.SendEmailWait("from@gmail.com", "to@gmail.com", "cc@gmail.com", "Test Email", "Have you received this...")
'</code>
Sub SendEmailWait(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String)
	Dim res As String = BANano.CallInlinePHPWait(SEND_EMAIL, BuildSendEmail(fromEmail, toEmail, ccEmail, subject, message))	'ignore
End Sub

'rolling copyright
private Sub BuildRollingCopyright(message As String, year As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("message", message)
	Se.put("year", year)
	Return Se
End Sub

private Sub BuildPathInfo(path As String) As Map
	Dim Se As Map = CreateMap()
	Se.Put("fileName", path)
	Return Se
End Sub


'build file exists
private Sub BuildFileExists(path As String) As Map
	Dim Se As Map = CreateMap()
	Se.Put("path", path)
	Return Se
End Sub

'validate cc
private Sub BuildValidateCC(number As String, expiry As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("number", number)
	Se.put("expiry", expiry)
	Return Se
End Sub

'build code to send email
'to send email via gmail, you need to set less secure apps on https://myaccount.google.com/
private Sub BuildSendEmail(fromEmail As String, toEmail As String, ccEmail As String, subject As String, message As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("from", fromEmail)
	Se.put("to", toEmail)
	Se.put("cc", ccEmail)
	Se.put("subject", subject)
	Se.put("msg", message)
	Return Se
End Sub

'build the code to get the contents
private Sub BuildGetFile(fileName As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("fileName", fileName)
	Return Se
End Sub

'build the code to get the contents
private Sub BuildFileGetHTML(url As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("url", url)
	Return Se
End Sub

'build the code to get the contents
private Sub BuildFileGetJSON(url As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("url", url)
	Return Se
End Sub


'build the code to write contents to file, will overwite
private Sub BuildWriteFile(fileName As String, fileContents As String) As Map
	Dim Se As Map = CreateMap()
	Se.Put("fileName", fileName)
	Se.Put("fileContents", fileContents)
	Return Se
End Sub

'build code to copy the files
private Sub BuildFileCopy(source As String, target As String) As Map
	Dim Se As Map = CreateMap()
	Se.Put("source", source)
	Se.Put("target", target)
	Return Se
End Sub

'build code to rename the files
private Sub BuildFileRename(source As String, target As String) As Map
	Dim Se As Map = CreateMap()
	Se.Put("source", source)
	Se.Put("target", target)
	Return Se
End Sub

'build the directory listing
private Sub BuildDirectoryList(path As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("path", path)
	Return Se
End Sub

'build the file unzip
private Sub BuildFileUnzip(zipfile As String, extractTo As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("zipfile", zipfile)
	Se.Put("extractTo", extractTo)
	Return Se
End Sub


'build the directory zip
private Sub BuildDirectoryZip(path As String, zipname As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("path", path)
	Se.Put("zipname", zipname)
	Return Se
End Sub

'build the file to delete
private Sub BuildFileDelete(filex As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("filex", filex)
	Return Se
End Sub

'build the directory make
private Sub BuildDirectoryMake(dirPath As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("dirpath", dirPath)
	Return Se
End Sub

'build the directory delete
private Sub BuildDirectoryDelele(dirPath As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("dir", dirPath)
	Return Se
End Sub

'build the directory recursive listing
private Sub BuildDirectoryListRecursive(dirPath As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("path", dirPath)
	Return Se
End Sub

'build directory copy
private Sub BuildDirectoryCopy(src As String, dst As String) As Map
	Dim Se As Map = CreateMap()
	Se.put("src", src)
	Se.put("dst", dst)
	Return Se
End Sub


#if PHP

/**
* FlxZipArchive, Extends ZipArchiv.
* Add Dirs with Files and Subdirs.
*
* <code>
*  $archive = new FlxZipArchive;
*  // .....
*  $archive->addDir( 'test/blub', 'blub' );
* </code>
*/
class FlxZipArchive extends ZipArchive {
    /**
     * Add a Dir with Files and Subdirs to the archive
     *
     * @param string $location Real Location
     * @param string $name Name in Archive
     * @author Nicolas Heimann
     * @access private
     **/

    public function addDir($location, $name) {
        $this->addEmptyDir($name);

        $this->addDirDo($location, $name);
     } // EO addDir;

    /**
     * Add Files & Dirs to archive.
     *
     * @param string $location Real Location
     * @param string $name Name in Archive
     * @author Nicolas Heimann
     * @access private
     **/

    private function addDirDo($location, $name) {
        $name .= '/';
        $location .= '/';

        // Read all Files in Dir
        $dir = opendir ($location);
        while ($file = readdir($dir))
        {
            if ($file == '.' || $file == '..') continue;

            // Rekursiv, If dir: FlxZipArchive::addDir(), else ::File();
            $do = (filetype( $location . $file) == 'dir') ? 'addDir' : 'addFile';
            $this->$do($location . $file, $name . $file);
        }
    } // EO addDirDo();
}

function DirectoryCopy($src, $dst) {
	//check the source directory
	$source_exists = is_dir($src);
	$target_exists = is_dir($dst);
	if (!$source_exists) {
		//source does not exist
		die("no");
	}
	if ($target_exists) {
		//target already exists
		die("yes");
	}  
	// open the source directory 
    $dir = opendir($src);  
    // Make the destination directory if not exist 
    mkdir($dst, 0700, true);
	// Loop through the files in source directory 
    foreach (scandir($src) as $file) {  
        if (( $file != '.' ) && ( $file != '..' )) {  
            if ( is_dir($src . '/' . $file) )  
            {  
                // Recursively calling custom copy function 
                // for sub directory  
                DirectoryCopy($src . '/' . $file, $dst . '/' . $file);  
            }  
            else {  
                copy($src . '/' . $file, $dst . '/' . $file);  
            }  
        }  
    }  
    closedir($dir);
	//return directory existence
	$res = DirectoryExists($dst);
	die($res); 
}   

function FileUnzip($zipfile, $extractTo) {
	if (!file_exists($zipfile)) {
    	die("no");
    }
	// Create new zip class 
	$zip = new ZipArchive; 
	$zip->open($zipfile); 
	// Extracts to current directory 
	$zip->extractTo($extractTo); 
	$zip->close();
	//return directory existence
	$res = FileExists($extractTo);
	die($res);  
}


function DirectoryListRecursive($path) {
	$target_exists = is_dir($path);
	if (!$target_exists) {
		//source does not exist
		die("{}");
	}
	$iterator = new RecursiveDirectoryIterator($path);
    // skip dot files while iterating 
    $iterator->setFlags(RecursiveDirectoryIterator::SKIP_DOTS);
	$rii = new RecursiveIteratorIterator($iterator, RecursiveIteratorIterator::SELF_FIRST);

    $files = array(); 
    foreach ($rii as $file) {
	   	$fname = $file->getPathname();
		$fname = str_replace('\\', '/', $fname);
		$files[] = $fname;
	}
		
    $output = json_encode($files);
    die($output);
}

function DirectoryDelete($dir) {
	$target_exists = is_dir($dir);
	if (!$target_exists) {
		//source does not exist
		die("no");
	}
	$iter = new RecursiveDirectoryIterator($dir);
	foreach (new RecursiveIteratorIterator($iter, RecursiveIteratorIterator::CHILD_FIRST) as $f) {
		if ($f->isDir()) {
			rmdir($f->getPathname());
		} else {
			unlink($f->getPathname());
		}
	}
	rmdir($dir);
	//return directory existence
	$res = DirectoryExists($dir);
}


function DirectoryZip($path, $zipname) {
	$target_exists = is_dir($path);
	if (!$target_exists) {
		//source does not exist
		die("no");
	}
	$za = new FlxZipArchive;
	$res = $za->open($zipname, ZipArchive::CREATE);
	if($res === TRUE) {
    	$za->addDir($path, basename($path));
    	$za->close();
	}
	//return directory existence
	$res = FileExists($zipname);
}

function FileGetJSON($url) {
	$f = file_get_contents($url);
	echo $f;
}


function FileGetHTML($url) {
	$f = file_get_contents($url);
	echo $f;
}

function DirectoryMake($dirpath) {
	$target_exists = is_dir($dirpath);
	if ($target_exists) {
		die("yes");
	}
	mkdir($dirpath, 0700, true);
	//return directory existence
	$res = DirectoryExists($dirpath);
	die($res);
}

function FileDelete($filex) {
	if (file_exists($filex)) {
		unlink($filex);
	}
	$res = FileExists($filex);
	switch ($res) {
  	case "yes":
    	die("no");
  	case "no":
    	die("yes");
	default:
    	die("no");
	}
}

function FileExists($path) {
	if (file_exists($path)) {
    	die("yes");
    }else {
        die("no");
    }
}

function DirectoryExists($path) {
	$target_exists = is_dir($path);
	if (!$target_exists) {
		//source does not exist
		die("no");
	}
	die("yes");
}



function RollingCopyright($message,$year)
{
  die("$message &copy;$year-" . date("Y"));
}

function WriteFile($fileName, $fileContents) {
	file_put_contents($fileName, $fileContents);
	$res = FileExists($fileName);
	die($res);
}

function LogFile($fileName, $fileContents) {
	$msg = date("Y-m-d H:i:s ") . $fileContents . "\n";
	file_put_contents($fileName, $msg, FILE_APPEND);
	$res = FileExists($fileName);
	die($res);
}

function FileAppend($fileName, $fileContents) {
	if (!file_exists($fileName)) {
		die("no");
	}
	file_put_contents($fileName, $fileContents, FILE_APPEND);
	$res = FileExists($fileName);
	die($res);
}

function FileCopy($source, $target) {
	// does the file / directory
	if (!file_exists($source)) {
		die("no");
	}
	if (!file_exists($target)) {
		die("no");
	}
	copy($source, $target);
	$res = FileExists($target);
	die($res);
}

function FileRename($source, $target) {
	// does the file / directory
	if (!file_exists($source)) {
		die("no");
	}
	//if target exists, no
	if (file_exists($target)) {
		die("no");
	}
	rename($source, $target);
	$res = FileExists($target);
	die($res);
}

function GetFile($fileName) {
	// does the file / directory
	if (!file_exists($fileName)) {
		die("");
	}
	$f = file_get_contents($fileName);
	die($f);
}

function GetPathInfo($fileName) {
	// does the file / directory
	if (!file_exists($fileName)) {
		die("");
	}
	$path_parts = pathinfo($fileName);
	$output = json_encode($path_parts);
	die($output);
}

function SendEmail($from,$to,$cc,$subject,$msg) { 
    $msg = str_replace("|", "\r\n", $msg);
	$msg = str_replace("\n.", "\n..", $msg); 
	// use wordwrap() if lines are longer than 70 characters 
	$msg = wordwrap($msg,70,"\r\n"); 
	//define from header 
	$headers = "From:" . $from . "\r\n"; 
	$headers .= "Cc: " . $cc . "\r\n"; 
	$headers .= "X-Mailer:PHP/" . phpversion();
	$headers .= "MIME-Version: 1.0\r\n";
	$headers .= "Content-type: text/html\r\n";
	// send email 
	$response = (mail($to,$subject,$msg,$headers)) ? "success" : "failure"; 
    $output = json_encode(array("response" => $response)); 
    header('content-type: application/json; charset=utf-8'); 
    die($output); 
} 

function DirectoryList($path) {
	$files = array();
	$dirs = array();
	$fnum = $dnum = 0;
	if (is_dir($path)) 
   { 
      $dh = opendir($path); 
      do 
      { 
         $item = readdir($dh); 
         if ($item !== FALSE && $item != "." && $item != "..")
         { 
            if (is_dir("$path/$item")) $dirs[$dnum++] = $item; 
            else $files[$fnum++] = $item; 
         } 
      } while($item !== FALSE);    
      closedir($dh); 
   }  
   $resp['dnum'] = $dnum;
   $resp['fnum'] = $fnum;
   $resp['dirs'] = $dirs;
   $resp['files'] = $files;
   $output = json_encode($resp);
   die($output);
}

function ValidateCC($number, $expiry) 
{ 
   $ccnum  = preg_replace('/[^\d]/', '', $number); 
   $expiry = preg_replace('/[^\d]/', '', $expiry); 
   $left   = substr($ccnum, 0, 4); 
   $cclen  = strlen($ccnum); 
   $chksum = 0; 
 
   // Diners Club 
   if (($left >= 3000) && ($left <= 3059) || 
       ($left >= 3600) && ($left <= 3699) || 
       ($left >= 3800) && ($left <= 3889)) 
      if ($cclen != 14) die(FALSE); 
 
   // JCB 
   if (($left >= 3088) && ($left <= 3094) || 
       ($left >= 3096) && ($left <= 3102) || 
       ($left >= 3112) && ($left <= 3120) || 
       ($left >= 3158) && ($left <= 3159) || 
       ($left >= 3337) && ($left <= 3349) || 
       ($left >= 3528) && ($left <= 3589)) 
      if ($cclen != 16) die(FALSE); 
 
   // American Express 
   elseif (($left >= 3400) && ($left <= 3499) || 
           ($left >= 3700) && ($left <= 3799)) 
      if ($cclen != 15) die(FALSE); 
 
   // Carte Blanche 
   elseif (($left >= 3890) && ($left <= 3899)) 
      if ($cclen != 14) die(FALSE); 
 
   // Visa 
   elseif (($left >= 4000) && ($left <= 4999)) 
      if ($cclen != 13 && $cclen != 16) die(FALSE); 
 
   // MasterCard 
   elseif (($left >= 5100) && ($left <= 5599)) 
      if ($cclen != 16) die(FALSE); 
       
   // Australian BankCard 
   elseif ($left == 5610) 
      if ($cclen != 16) die(FALSE); 
 
   // Discover 
   elseif ($left == 6011) 
      if ($cclen != 16) die(FALSE); 
 
   // Unknown 
   else die(FALSE); 
 
   for ($j = 1 - ($cclen % 2); $j < $cclen; $j += 2) 
      $chksum += substr($ccnum, $j, 1); 
 
   for ($j = $cclen % 2; $j < $cclen; $j += 2) 
   { 
      $d = substr($ccnum, $j, 1) * 2; 
      $chksum += $d < 10 ? $d : $d - 9; 
   } 
 
   if ($chksum % 10 != 0) die(FALSE); 
 
   if (mktime(0, 0, 0, substr($expiry, 0, 2), date("t"), 
      substr($expiry, 2, 2)) < time()) die(FALSE); 
    
   die(TRUE); 
}

#End If