B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public rating As VueComponent
	Public path As String
	Public name As String = "rating"
	Private banano As BANano
	Private vratingcontainer As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	rating.Initialize(Me, name)
	path = rating.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vratingcontainer")
	
	'get the grid position
	Dim r2c1 As String = vratingcontainer.MatrixID(2, 1)
	'add a rating
	Dim rate2 As VueElement = vuetify.AddRating(Me, r2c1, "rate2", "ratey", 5, 30, True, "orange", Null)
	'bind the rating element to this component
	rating.BindVueElement(rate2)
	
	'add the component as a router
	vuetify.AddRoute(rating)
End Sub

Sub rate2_input(e As BANanoEvent)
	'read the value of the rating
	Dim rate1v As String = rating.GetData("ratey")
	'show the value in a snackbar
	vuetify.ShowSnackBarSuccess(rate1v)
End Sub