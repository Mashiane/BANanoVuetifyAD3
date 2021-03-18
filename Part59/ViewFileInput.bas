B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public fileinput As VueComponent
	Public path As String
	Public name As String = "fileinput"
	Private banano As BANano
	Private vfileinputs As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	fileinput.Initialize(Me, name)
	path = fileinput.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vfileinputs")
	'
	Dim fi1 As VueElement = vuetify.AddFileInput(Me, vfileinputs.MatrixID(1,1), "fi1", "", "Upload Multiple Files", "Browse", True, "", Null)
	fi1.Loading = ":fi1loading"
	fi1.SetData("fi1loading", False)
	fileinput.BindVueElement(fi1)
	'
	Dim r2c1 As String = vfileinputs.MatrixID(2, 1)
	Dim fi2 As VueElement = vuetify.AddFileInput(Me, r2c1, "fi2", "", "Upload File", "Upload Single File", False, "", Null)
	fi2.Loading = ":fi2loading"
	fi2.SetData("fi2loading", False)
	'fi2.Rules = ":limitsize"
	'add some rules
	'fileinput.AddRule(Me, "limitsize", "limitsizeoffile")
	fileinput.BindVueElement(fi2)
	
	Dim uploadimage As VueElement = vfileinputs.Cell(3, 1).AddFileInputImage("uploadimage")
	fileinput.BindVueElement(uploadimage)
	
	
	'add the component as a router
	vuetify.AddRoute(fileinput)
End Sub
'


Sub uploadimagebutton_click(e As BANanoEvent)
	fileinput.refs = vuetify.GetRefs
	fileinput.SetLoading("uploadimage", False)
	fileinput.ClickFile("uploadimage")
End Sub

Sub uploadimagefile_change(fileObj As Map)
	'we are not loading anything
	fileinput.SetLoading("uploadimage", False)
	'detect files state
	If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
	'get file details
	fileinput.SetLoading("uploadimage", True)
	Dim fileDet As FileObject = BANanoShared.GetFileDetails(fileObj)
	Dim fn As String = fileDet.FileName
	'you can check the size here
	'start uploading the File
	fileDet = BANanoShared.UploadFileWait(fileObj)
	Dim sstatus As String = fileDet.Status
	Select Case sstatus
	Case "error"
		vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)	
	Case "success"
		vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
	End Select
	'hide the loader
	fileinput.SetLoading("uploadimage", False)
	Dim fp As String = fileDet.FullPath
	'update state of some element
	'VC.SetData("vmodel, fp)
End Sub

'Sub limitsizeoffile(v As map) As Object		'ignoredeadcode
'	Log(v)
'	
'	'if banano.IsNull(v) or banano.IsUndefined(v) then return true
'	'dim v1 as bananoobject = v
'	'Dim size As Int = v1.GetField("size").Result
'	'If size < 2000000 Then
'	'	Return True
'	'Else
'	'	Return "The file should be less than 2MB"
'	'End If
'End Sub

'multiple files selection
Sub fi1_change(fileList As List)
	fileinput.SetData("fi1loading", False)
	'detect files state
	If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
	'
	fileinput.SetData("fi1loading", True)
	Dim uploads As List = fileinput.NewList
	For Each fileObj As Map In fileList
		'get file details
		Dim fileDet As FileObject
		fileDet = BANanoShared.GetFileDetails(fileObj)
		Dim fn As String = fileDet.FileName
		'you can check the size here
		'start uploading the file
		fileDet = BANanoShared.UploadFileWait(fileObj)
		Dim sstatus As String = fileDet.Status
		Select Case sstatus
		Case "error"
			vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
		Case "success"
			vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
		End Select
		Dim fp As String = fileDet.FullPath
		uploads.Add(fp)
	Next
	fileinput.SetData("fi1loading", False)
End Sub

'single file selection
Sub fi2_change(fileObj As Map)
	'we are not loading anything
	fileinput.SetData("fi2loading", False)
	'detect files state
	If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
	'get file details
	fileinput.SetData("fi2loading", True)
	Dim fileDet As FileObject = BANanoShared.GetFileDetails(fileObj)
	Dim fn As String = fileDet.FileName
	'you can check the size here
	'start uploading the File
	fileDet = BANanoShared.UploadFileWait(fileObj)
	Dim sstatus As String = fileDet.Status
	Select Case sstatus
	Case "error"
		vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)	
	Case "success"
		vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
	End Select
	'hide the loader
	fileinput.SetData("fi2loading", False)
	
	Dim fp As String = fileDet.FullPath
	'update state of some element
	'VC.SetData("vmodel, fp)
End Sub
