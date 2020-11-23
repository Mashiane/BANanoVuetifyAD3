B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "home"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	home.Initialize(Me, name)
	'this should be the starting page
	home.Path = "/"
	path = home.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vhome")
	'add the placeholder content to the template
	home.AppendPlaceHolder	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub
