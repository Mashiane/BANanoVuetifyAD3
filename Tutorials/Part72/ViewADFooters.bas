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
	Public name As String = "adfooters"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myfooter")
	
	Dim links As List = about.newlist
	links.AddAll(Array("Home", "About Us", "Team", "Services", "Blog", "Contact Us"))
	about.SetData("links", links)
	'
	Dim icons As List = about.newlist
	icons.AddAll(Array("mdi-facebook", "mdi-twitter", "mdi-linkedin", "mdi-instagram"))
	about.SetData("icons", icons)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub
