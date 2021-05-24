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
	Public name As String = "adinputs"
	Private banano As BANano
	Private VRating1 As VRating
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myinputs")
	'
	about.BindVueElement(VRating1.VElement)

	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VRating1_Input (num As Double)
	vuetify.ShowSwal(num)
End Sub