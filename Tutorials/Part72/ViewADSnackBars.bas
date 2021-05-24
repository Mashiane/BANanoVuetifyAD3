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
	Public name As String = "adsnackbars"
	Private banano As BANano
	Private VSnackBar1 As VSnackBar
	Private VSnackBar2 As VSnackBar
	Private VSnackBar3 As VSnackBar
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mysnackbars")
	'
	about.BindVueElement(VSnackBar1.VElement)
	about.BindVueElement(VSnackBar2.VElement)
	about.BindVueElement(VSnackBar3.VElement)
	'
	about.SetData("snack1", False)
	
	about.SetCreated(Me, "oncreated", Null)	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub oncreated
	about.SetData("snack1", True)
End Sub



