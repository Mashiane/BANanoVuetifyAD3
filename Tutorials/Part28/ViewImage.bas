B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public images As VueComponent
	Public path As String
	Public name As String = "images"
	Private banano As BANano
	Private imgcontainer As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	images.Initialize(Me, name)
	path = images.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vimagecontainer")
	'
	Dim r2c1 As String = imgcontainer.MatrixID(1, 1)
	Dim ni1 As VueElement = vuetify.AddImage(Me, r2c1, "ni2", "./assets/lock.jpg", "./assets/lock.jpg", "", "500", "500", Null)
	images.BindVueElement(ni1)
	
	'add the component as a router
	vuetify.AddRoute(images)
End Sub
