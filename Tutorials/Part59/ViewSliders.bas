B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public sliders As VueComponent
	Public path As String
	Public name As String = "sliders"
	Private banano As BANano
	Private vsliders As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	sliders.Initialize(Me, name)
	path = sliders.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vsliders")
	
	Dim slid As VueElement = vuetify.AddSlider(Me, vsliders.MatrixID(1,1), "slid1", "slida1", "The Slider X", 0, 10, 1, True, False, Null)
	sliders.BindVueElement(slid)
	
	Dim r2c1 As String = vsliders.MatrixID(2, 1)
	Dim slid2 As VueElement = vuetify.AddSlider(Me, r2c1, "slid2", "slida2", "The Slider Y", 0, 10, 1, True, False, Null)
	sliders.BindVueElement(slid2)
	
	'add the component as a router
	vuetify.AddRoute(sliders)
End Sub
