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
	Private homecont As VueElement
	Private txtbox As VueElement
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
	
	banano.LoadLayout(home.Here, "homecont")
	'
	homecont.Cell(1, 1).AddH1("h1", "This project attempts to be as much codeless by using the abstract designer as much as possible.", vuetify.COLOR_ORANGE, vuetify.INTENSITY_DARKEN4)
	
	homecont.Matrix(2, 1).LoadLayout("txtbox")

	homecont.Cell(3, 1).StyleMinHeight = "70vh"
	homecont.Cell(3, 1).AddPDFView("websites", "https://tgifzone.com/")
	'
	home.SetComputed("websitessrc", Me, "getwebsitessrc", Null)
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub getwebsitessrc As String
	'read the website from the app
	'this is set in the pgIndex module
	Dim websitessrc As String = vuetify.GetData("websitessrc")
	Return websitessrc
End Sub
