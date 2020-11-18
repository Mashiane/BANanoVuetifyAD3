B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	
	Public vuetify As VuetifyApp
	Public questions As VueComponent
	Public path As String
	Public name As String = "questions"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	questions.Initialize(Me, name)
	path = questions.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vquestions")
	'add the placeholder content to the template
	questions.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(questions)
End Sub
