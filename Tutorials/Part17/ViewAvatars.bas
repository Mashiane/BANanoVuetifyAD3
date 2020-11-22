B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public avatars As VueComponent
	Public path As String
	Public name As String = "avatars"
	Private banano As BANano
	Private vavatars As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	avatars.Initialize(Me, name)
	path = avatars.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vavatars")
	'add layouts to the positions
	vavatars.Matrix(1, 1).LoadLayout("avatar1")
	vavatars.Matrix(1, 2).LoadLayout("avatar2")
	vavatars.Matrix(1, 3).LoadLayout("avatar3")
	
	'add the placeholder content to the template
	avatars.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(avatars)
End Sub
