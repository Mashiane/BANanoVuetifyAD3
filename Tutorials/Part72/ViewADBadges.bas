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
	Public name As String = "adbadges"
	Private banano As BANano
	Private VContainer1 As VContainer
	Private VBadge1 As VBadge
	Private VBadge2 As VBadge
	Private VBadge4 As VBadge
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "badges")
	'
	about.BindVueElement(VBadge2.VElement)
	VBadge2.UpdateContent(about, 3)
	
	Log(VBadge4.VElement.ToString)
	
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

