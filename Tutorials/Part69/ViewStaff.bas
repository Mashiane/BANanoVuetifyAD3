B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "staff"
	Private banano As BANano
	Private vdiv As VueElement
	Private vsheet As VueElement
	Private staff As VueFlowy
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'build the person component
	BuildPersonComponent
	
	'initialize the component
	home.Initialize(Me, name)
	home.vuetify = vuetify
	path = home.path
	'
	Dim contHome As VueElement = home.Page.AddContainer("contc2", True)
	
	'load the layout
	banano.LoadLayout("#contc2", "lstaff")
	'*IMPORTANT
	staff.ParentComponent = home
	'*IMPORTANT
	home.BindVueFlowy(staff)
	'
	home.SetCreated(Me, "oncreate", Null)
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

'build data before loading
Sub oncreate
	'clear the nodes
	staff.ClearNodes
	'add the master node
	staff.AddNode(-1, "1", "Board", "./assets/img1.png", "", Null)
	staff.AddNode("1", "2", "General Manager", "./assets/img2.png", "", Null)
	'
	staff.AddNode("2", "3", "Human Resource Manager", "./assets/img3.png", "", Null)
	staff.AddNode("2", "4", "Design Manager", "./assets/img4.png", "", Null)
	staff.AddNode("2", "5", "Operations Manager", "./assets/img5.png", "", Null)
	staff.AddNode("2", "6", "Marketing Manager", "./assets/img6.png", "", Null)
	'
	staff.AddNode("3", "7", "Trainers", "./assets/img7.png", "", Null)
	staff.AddNode("3", "8", "Recruiting Team", "./assets/img8.png", "", Null)
	staff.AddNode("3", "9", "Finance Asst. Manager", "./assets/img9.png", "", Null)
	
	staff.Refresh 
End Sub

'build the person component
'things we will add
Sub BuildPersonComponent
	Dim person As VueComponent
	person.Initialize(Me, "employee")
	person.SetData("text", "An Employee")
	'set the properties to access
	person.AddProperty("remove")
	person.AddProperty("node")
	person.AddProperty("title")
	person.AddProperty("description")
	person.AddProperty("color")
	'
	Dim avatar As VueElement = person.Page.AddAvatar("avatar", "", 80, Null)
	avatar.GetImage.Bind("src", "title")
	avatar.GetImage.Bind("lazy-src", "title")
	avatar.Hover = True
	'
	vuetify.Import(person)
End Sub
