B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.95
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adicons"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myicons")
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

