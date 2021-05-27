B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adavatars"
	Private banano As BANano
	Private VContainer1 As VContainer
	Private VAvatar1 As VAvatar
	Private VAvatar2 As VAvatar
	Private VAvatar3 As VAvatar
	Private VAvatar4 As VAvatar
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myavatars")
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

