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
	Dim homeCont As VueElement = home.AddContainer("homecont", True)
	homeCont.AddRows5.AddColumns12
	homeCont.BuildGrid
	
	Dim welcome As VueElement = homeCont.Cell(1, 1).AddH1("welcome", "Welcome to JSON Placeholder Explorer", _
	vuetify.COLOR_BLUE, vuetify.INTENSITY_NORMAL)
	home.BindVueElement(welcome)
	
	
	homeCont.MatrixElement(2, 1).AddParagraph("p1", "This project explores CRUD functionality using Axios for the JSONPlaceholder Fake Data API.", "", "")
	homeCont.MatrixElement(2, 1).AddParagraph("p2", "This project does not persist the data to the API but its for demonstration purposes only. A status of 'OK' means that the endpoint request was executed successfully", "", "")
	homeCont.Cell(2, 1).AddParagraph("p3", "For this project we will be looking at the endpoint 'https://jsonplaceholder.typicode.com/users'.", "", "")
	'
	homeCont.Cell(3, 1).AddParagraph("p4", "CREATE - This is fired up by executing a POST request, passing it the user record to add.", vuetify.color_green,"")
	homeCont.Cell(3, 1).AddParagraph("p5", "READ - This is fired up by executing a GET request, passing it the user record to add.", vuetify.color_CYAN,"")
	homeCont.Cell(3, 1).AddParagraph("p6", "UPDATE - This is fired up by executing a PUT request, passing it the user record to update.", vuetify.COLOR_BLUE, "")
	homeCont.Cell(3, 1).AddParagraph("p7", "DELETE - This is fired up by executing a DELETE request.", vuetify.color_red,"")
		
	'add the component as a router
	vuetify.AddRoute(home)
End Sub
