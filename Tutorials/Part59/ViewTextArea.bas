B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public textareas As VueComponent
	Public path As String
	Public name As String = "textareas"
	Private banano As BANano
	Private vtextareas As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	textareas.Initialize(Me, name)
	path = textareas.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vtextareas")
	'
	Dim r2c1 As String = vtextareas.MatrixID(1, 1)
	Dim txta1 As VueElement = vuetify.AddTextArea(Me, r2c1, "txta1", "notes1", "Notes 1", "", False, "", 0, "", CreateMap(":outlined":True))
	textareas.BindVueElement(txta1)
	
	'add the component as a router
	vuetify.AddRoute(textareas)
End Sub
