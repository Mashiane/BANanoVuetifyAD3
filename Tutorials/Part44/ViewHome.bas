B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
#Region BANano 
	' <-------------- IMPORTANT! This is because we want this module to be transpiled by BANano 
#End Region

Sub Process_Globals
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "home"
	Private banano As BANano
End Sub


Sub Initialize
	'establish a reference to the app
	vuetify = modBVAD3.vuetify
	'initialize the component
	home.Initialize(Me, name)
	home.vuetify = vuetify
	'make this the start page
	home.Path = "/"
	path = home.path
	'
	Dim cont As VueElement = vuetify.AddContainer(Me, home.Here, "conthome", True)
	cont.AddRows1.AddColumns12
	cont.BuildGrid
	
	vuetify.AddH1(Me, cont.MatrixID(1, 1), "h1", "BVAD3 Server: Home", vuetify.COLOR_ORANGE, vuetify.INTENSITY_DARKEN4)
	
	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub