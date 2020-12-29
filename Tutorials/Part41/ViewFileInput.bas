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
	fileinput.BindVueElement(fi1)
	'
	Dim r2c1 As String = vfileinputs.MatrixID(2, 1)
	Dim fi2 As VueElement = vuetify.AddFileInput(Me, r2c1, "fi2", "", "Upload File", "Upload Single File", False, "", Null)
	
	'fi2.Rules = ":limitsize"
	
	'add some rules
	'fileinput.AddRule(Me, "limitsize", "limitsizeoffile")
	fileinput.BindVueElement(fi2)
	
	'add the component as a router
	vuetify.AddRoute(fileinput)
End Sub
'
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
	'detect files state
	If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
	Log(fileList)
End Sub

'single file selection
Sub fi2_change(fileObj As Map)
	'detect files state
	If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
	'get file details
	Dim fileDet As FileObject = BANanoShared.GetFileDetails(fileObj)
	
	Log(fileDet)
End Sub
