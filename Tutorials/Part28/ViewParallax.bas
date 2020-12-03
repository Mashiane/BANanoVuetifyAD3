B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public parallax As VueComponent
	Public path As String
	Public name As String = "parallax"
	Private banano As BANano
	Private vparallaxcontainer As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	parallax.Initialize(Me, name)
	path = parallax.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vparallax")
	'
	'
	Dim r2c1 As String = vparallaxcontainer.MatrixID(1, 1)
	Dim par1 As VueElement = vuetify.AddParallax(Me, r2c1, "parlx2", "500", "./assets/material.jpg", "", Null)
	parallax.BindVueElement(par1)
	
	'add the component as a router
	vuetify.AddRoute(parallax)
End Sub
