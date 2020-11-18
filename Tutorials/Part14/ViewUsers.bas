B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	
	Public vuetify As VuetifyApp
	Public users As VueComponent
	Public path As String
	Public name As String = "users"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	users.Initialize(Me, name)
	path = users.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vusers")
	'add the placeholder content to the template
	users.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(users)
End Sub
