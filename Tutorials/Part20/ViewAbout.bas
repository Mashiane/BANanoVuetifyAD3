B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "about"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vabout")
	'add the placeholder content to the template
	about.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub
