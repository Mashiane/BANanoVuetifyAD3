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
	
'	Dim rate1 As BANanoElement = BVAD3.NewRating(rating, "rate1", "ratex", 5, 60, True, "orange", Null)
'	vratingcontainer.Matrix(1, 1).Empty.Append(rate1.GetHTML)
	'
	Dim r2c1 As String = vratingcontainer.MatrixID(2, 1)
	Dim rate2 As VueElement = vuetify.AddRating(Me, r2c1, "rate2", "ratey", 6, 50, True, "green", Null)
	rating.BindVueElement(rate2)
	
	'add the component as a router
	vuetify.AddRoute(rating)
End Sub

Sub rate1_input(e As BANanoEvent)
	Dim rate1v As String = rating.GetData("ratex")
	vuetify.ShowSnackBarSuccess(rate1v)
End Sub