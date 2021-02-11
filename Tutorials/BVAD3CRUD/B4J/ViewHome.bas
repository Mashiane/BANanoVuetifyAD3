B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
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
	home.vuetify = vuetify
	'make this the start page
	home.Path = "/"
	path = home.path
	'
	Dim homecont As VueElement = home.AddContainer("homecont", True) 
	homecont.AddRows1.AddColumns12
	homecont.BuildGrid
	
	homecont.AddH1("homeh1", "This is the home page...", vuetify.COLOR_GREEN, "")
	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub
