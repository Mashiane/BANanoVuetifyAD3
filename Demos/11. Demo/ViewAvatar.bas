B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public avatar As VueComponent
	Public name As String = "avatar"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vavatarcontainer As VueElement
End Sub

Sub Initialize
	'get the reference the app
	vuetify = pgIndex.vuetify
	'initialize the component page
	avatar.Initialize(Me, name)
	path = avatar.path
	'load the layout
	BANano.LoadLayout("#placeholder", "vavatarcontainer")
	'bind any states to the component page
	avatar.BindVueElement(vavatarcontainer)
	'
	avatar.AppendPlaceHolder
	vuetify.AddRoute(avatar)
End Sub
