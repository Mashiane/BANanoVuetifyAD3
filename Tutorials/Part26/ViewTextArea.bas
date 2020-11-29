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
	Dim txta As BANanoElement = BVAD3.NewTextArea(textareas, "txta", "notes", "Notes", "", False, "", 0, "", CreateMap(":outlined":True))
	vtextareas.Matrix(1, 1).Empty.Append(txta.GetHTML)
	
	
	
	'add the placeholder content to the template
	textareas.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(textareas)
End Sub
