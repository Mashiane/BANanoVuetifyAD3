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
	Dim fi As BANanoElement = BVAD3.NewFileInput(fileinput, "fi1", "fi1", "Upload File", "Browse", False, "", Null)
	vfileinputs.Matrix(1, 1).Empty.Append(fi.GetHTML)
	
	'add the component as a router
	vuetify.AddRoute(fileinput)
End Sub

'file change
Sub fi1_change(e As BANanoEvent)
	Log(e)
End Sub