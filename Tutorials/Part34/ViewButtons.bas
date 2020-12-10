B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public buttons As VueComponent
	Public name As String = "buttons"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vbuttoncontainer As VueElement
End Sub

Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	buttons.Initialize(Me, name)
	'path placeholder
	path = buttons.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "vbuttoncontainer")
	'bind any available states from the container to this page
	buttons.BindVueElement(vbuttoncontainer)
	
	Dim btn1 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,1), "btn1", "mdi-minus", "primary", False, CreateMap("x-small":True), Null)
	buttons.BindVueElement(btn1)
	'
	Dim btn2 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,2), "btn2", "mdi-heart", "pink", False, CreateMap("small":True), Null)
	buttons.BindVueElement(btn2)
	'
	Dim btn3 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,3), "btn3", "mdi-plus", "indigo", False, Null, Null)
	buttons.BindVueElement(btn3)
	'
	Dim btn4 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,4), "btn4", "mdi-format-list-bulleted-square", "teal", False, Null, Null)
	buttons.BindVueElement(btn4)
	'
	Dim btn5 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,5), "btn5", "mdi-pencil", "cyan", False, CreateMap("large":True), Null)
	buttons.BindVueElement(btn5)
	'
	Dim btn6 As VueElement = vuetify.AddFab(Me, vbuttoncontainer.MatrixID(1,6), "btn6", "mdi-android", "purple", True, CreateMap("large":True), Null)
	buttons.BindVueElement(btn6)
	'
	Dim btn7 As VueElement = vuetify.AddButtonWidthRightIcon(Me, vbuttoncontainer.MatrixID(2,1), "btn7", "Remove", "mdi-minus", "primary", False, Null,Null)
	buttons.BindVueElement(btn7)
	'
	Dim btn8 As VueElement = vuetify.AddButtonWidthRightIcon(Me, vbuttoncontainer.MatrixID(2,2), "btn8", "Love", "mdi-heart", "pink", False, CreateMap("large":True), Null)
	buttons.BindVueElement(btn8)
	'
	Dim btn9 As VueElement = vuetify.AddButtonWidthRightIcon(Me, vbuttoncontainer.MatrixID(2,3), "btn9", "Add", "mdi-plus", "indigo", True, Null, Null)
	buttons.BindVueElement(btn9)
	'
	Dim btn10 As VueElement = vuetify.AddButtonWithLeftIcon(Me, vbuttoncontainer.MatrixID(2,4), "btn10", "Love", "mdi-heart", "pink", False, CreateMap("large":True), Null)
	buttons.BindVueElement(btn10)
	'
	Dim btn11 As VueElement = vuetify.AddButtonWithLeftIcon(Me, vbuttoncontainer.MatrixID(2,5), "btn11", "Add", "mdi-plus", "indigo", True, Null, Null)
	buttons.BindVueElement(btn11)
	'
'	Dim btn12 As BANanoElement = BVAD3.NewButton(buttons, "btn12", "Rounded", "primary", False, CreateMap("rounded":True))
'	vbuttoncontainer.matrix(2, 6).Append(btn12.GetHTML)
'	'
'	Dim btn13 As BANanoElement = BVAD3.NewButton(buttons, "btn13", "Information", "info", False, Null)
'	vbuttoncontainer.matrix(3, 1).Append(btn13.GetHTML)
	
	Dim btn14 As VueElement = vuetify.AddButtonWithBadge(Me, vbuttoncontainer.MatrixID(3, 1), "btn14", "Lock Account", "error", "", "mdi-lock", "error", _ 
	CreateMap("class":"white--text", ":depressed":True), CreateMap(":bordered":True, ":overlap":True))
	buttons.BindVueElement(btn14)
	'
	Dim btn15 As VueElement = vuetify.AddButtonWithBadge(Me, vbuttoncontainer.MatrixID(3, 2), "btn15", "Button Badge", "warning", "btn15badge", "", "error", _
	CreateMap("class":"white--text"), CreateMap(":bordered":True, ":overlap":True))
	buttons.BindVueElement(btn15)
	'
	buttons.SetData("btn15badge", 1)
	'
'	Dim btn16 As VueElement = BVAD3.AddButtonIconBadge(buttons, "btn16", "",  "mdi-pencil", "pink", CreateMap(":fab":True, ":small":True), Null, CreateMap(":content": "btn16badge", ":overlap":True))
'	vbuttoncontainer.matrix(3, 4).Append(btn16.GetHTML)
'	buttons.SetData("btn16badge", 2)
'	
	Dim r4c1 As String = vbuttoncontainer.MatrixID(4, 1)
	Dim btnAB As VueElement = vuetify.AddButtonWidthRightIcon(Me, r4c1, "btnAB", "AB", "mdi-plus", "indigo", True, Null, Null)
	buttons.BindVueElement(btnAB)
	'
	Dim r4c2 As String = vbuttoncontainer.MatrixID(4, 2)
	Dim btnBC As VueElement = vuetify.AddButtonWithLeftIcon(Me, r4c2, "btnBC", "BC", "mdi-heart", "pink", False, CreateMap(":large":True), Null)
	buttons.BindVueElement(btnBC)
	'
	Dim r5c1 As String = vbuttoncontainer.MatrixID(5, 1)
	Dim btnD As VueElement = vuetify.AddButton(Me, r5c1, "btnD", "D", "primary", False, CreateMap("rounded":True))
	buttons.BindVueElement(btnD)
	'
	Dim r5c2 As String = vbuttoncontainer.MatrixID(5, 2)
	Dim btnE As VueElement = vuetify.AddFab(Me, r5c2, "btnE", "mdi-android", "purple", True, CreateMap("large":True), Null)
	buttons.BindVueElement(btnE)
	
	'
	vuetify.AddRoute(buttons)
End Sub

Sub btnD_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("D!")
End Sub

Sub btn12_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("btn12 clicked")
End Sub


Sub btn14_click(e As BANanoEvent)
	vuetify.ShowSnackBarError("Account Locked")
End Sub


Sub btn15_click(e As BANanoEvent)
	buttons.Increment("btn15badge")
End Sub

Sub btn16_click(e As BANanoEvent)
	buttons.Increment("btn16badge")
End Sub