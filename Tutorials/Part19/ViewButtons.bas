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
	
	Dim btn1 As BANanoElement = BVAD3.NewFab(buttons, "btn1", "mdi-minus", "primary", False, CreateMap("x-small":True), Null)
	vbuttoncontainer.matrix(1, 1).Append(btn1.GetHTML)
	'
	Dim btn2 As BANanoElement = BVAD3.NewFab(buttons, "btn2", "mdi-heart", "pink", False, CreateMap("small":True), Null)
	vbuttoncontainer.matrix(1, 2).Append(btn2.GetHTML)
	'
	Dim btn3 As BANanoElement = BVAD3.NewFab(buttons, "btn3", "mdi-plus", "indigo", False, Null, Null)
	vbuttoncontainer.matrix(1, 3).Append(btn3.GetHTML)
	'
	Dim btn4 As BANanoElement = BVAD3.NewFab(buttons, "btn4", "mdi-format-list-bulleted-square", "teal", False, Null, Null)
	vbuttoncontainer.matrix(1, 4).Append(btn4.GetHTML)
	'
	Dim btn5 As BANanoElement = BVAD3.NewFab(buttons, "btn5", "mdi-pencil", "cyan", False, CreateMap("large":True), Null)
	vbuttoncontainer.matrix(1, 5).Append(btn5.GetHTML)
	'
	Dim btn6 As BANanoElement = BVAD3.NewFab(buttons, "btn6", "mdi-android", "purple", True, CreateMap("large":True), Null)
	vbuttoncontainer.matrix(1, 6).Append(btn6.GetHTML)
	'
	Dim btn7 As BANanoElement = BVAD3.NewButtonIconRight(buttons, "btn7", "Remove", "mdi-minus", "primary", False, Null,Null)
	vbuttoncontainer.matrix(2, 1).Append(btn7.GetHTML)
	'
	Dim btn8 As BANanoElement = BVAD3.NewButtonIconRight(buttons, "btn8", "Love", "mdi-heart", "pink", False, CreateMap("large":True), Null)
	vbuttoncontainer.matrix(2, 2).Append(btn8.GetHTML)
	'
	Dim btn9 As BANanoElement = BVAD3.NewButtonIconRight(buttons, "btn9", "Add", "mdi-plus", "indigo", True, Null, Null)
	vbuttoncontainer.matrix(2, 3).Append(btn9.GetHTML)
	'
	Dim btn10 As BANanoElement = BVAD3.NewButtonIconLeft(buttons, "btn10", "Love", "mdi-heart", "pink", False, CreateMap("large":True), Null)
	vbuttoncontainer.matrix(2, 4).Append(btn10.GetHTML)
	'
	Dim btn11 As BANanoElement = BVAD3.NewButtonIconLeft(buttons, "btn11", "Add", "mdi-plus", "indigo", True, Null, Null)
	vbuttoncontainer.matrix(2, 5).Append(btn11.GetHTML)
	'
	Dim btn12 As BANanoElement = BVAD3.NewButton(buttons, "btn12", "Rounded", "primary", False, CreateMap("rounded":True))
	vbuttoncontainer.matrix(2, 6).Append(btn12.GetHTML)
	'
	Dim btn13 As BANanoElement = BVAD3.NewButton(buttons, "btn13", "Information", "info", False, Null)
	vbuttoncontainer.matrix(3, 1).Append(btn13.GetHTML)
	
	Dim btn14 As BANanoElement = BVAD3.NewButtonBadge(buttons, "btn14", "Lock Account", _
	CreateMap("class":"white--text", "color":"error", ":depressed":True), _
	CreateMap(":bordered":True, "color":"error", "icon": "mdi-lock", ":overlap":True))
	vbuttoncontainer.matrix(3, 2).Append(btn14.GetHTML)
	'
	Dim btn15 As BANanoElement = BVAD3.NewButtonBadge(buttons, "btn15", "Button Badge", _
	CreateMap("class":"white--text", "color":"warning"), _
	CreateMap(":bordered":True, "color":"error", ":content": "btn15badge", ":overlap":True))
	vbuttoncontainer.matrix(3, 3).Append(btn15.GetHTML)
	buttons.SetData("btn15badge", 1)
	'
	Dim btn16 As BANanoElement = BVAD3.NewButtonIconBadge(buttons, "btn16", "",  "mdi-pencil", "pink", CreateMap(":fab":True, ":small":True), Null, CreateMap(":content": "btn16badge", ":overlap":True))
	vbuttoncontainer.matrix(3, 4).Append(btn16.GetHTML)
	buttons.SetData("btn16badge", 2)
	
	buttons.AppendPlaceHolder
	vuetify.AddRoute(buttons)
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