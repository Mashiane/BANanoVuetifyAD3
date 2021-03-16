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
	Private maindiv As VueElement
	Private maindiv1 As VueElement
	Private maincontainer As VueElement
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
	'add a parent div
	maindiv = home.Page.AddDiv("maindiv")
	maindiv.AddClass("home")
	'
	AddNavBar
	
	maindiv1 = maindiv.AddDiv("maindiv1")
	maindiv1.MT = "n3"
	
	maincontainer = maindiv1.AddContainer("maincontainer", True)
	maincontainer.AddRows1.AddColumns4.AddColumns4.AddColumns4.AddColumns4.AddColumns4
	maincontainer.BuildGrid
	
	BuildCard1
	
	BuildCard2
	
	BuildCard3
	
	BuildCard4
	
	BuildCard5
	
	home.SetMethod(Me, "getAvatarClass", Null)
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildCard5
	Dim card5 As VueElement = maincontainer.Cell(1, 5).AddCard("card5", "", Null)
	card5.Color = vuetify.COLOR_GREY
	card5.ColorIntensity = vuetify.INTENSITY_DARKEN3
	card5.Dark = True
	card5.AlignCenter = True
	card5.PB = 6
	'
	Dim appbar5 As VueElement = card5.AddAppBar("appbar5")
	appbar5.Flat = True
	appbar5.color = "rgba(0, 0, 0, 0)"
	'
	Dim tt As VueElement = appbar5.AddToolbarTitle("tt1", "Messages", "", Null)
	tt.TextColor = vuetify.COLOR_WHITE
	tt.PL = 0
	tt.ML = 2
	tt.AddClass("title")
	'
	Dim list5 As VueElement = card5.AddList("list5", False, False, True, Null)
	list5.Color = vuetify.COLOR_GREY
	list5.ColorIntensity = vuetify.INTENSITY_DARKEN3
	list5.Options.dataSource = "chats"
	list5.Options.hasdivider = True
	list5.AddListItemGroupTemplate(0)
	list5.GetTemplate.VModel = "selected2"
	list5.GetTemplate.ActiveClass = "yellow--text"
	'
	list5.ClearItems
	list5.ListViewAddItem1(list5.CreateListItem("chat1").SetTitle("User 1").SetRightIcon("mdi-message-outline").SetAvatar("./assets/img1.png"))
	list5.ListViewAddItem1(list5.CreateListItem("chat2").SetTitle("User 2").SetRightIcon("mdi-message-outline").SetAvatar("./assets/img2.png"))
	list5.ListViewAddItem1(list5.CreateListItem("chat3").SetTitle("User 3").SetRightIcon("mdi-message-outline").SetAvatar("./assets/img3.png"))
	list5.ListViewAddItem1(list5.CreateListItem("chat4").SetTitle("User 4").SetRightIcon("mdi-message-outline").SetAvatar("./assets/img4.png"))
	home.BindVueElement(list5)
	
	home.SetData("chats", list5.Records)
	home.SetData("selected2", "2")
End Sub

Sub BuildCard4
	Dim card4 As VueElement = maincontainer.Cell(1, 4).AddCard("card4", "", Null)
	card4.Color = vuetify.COLOR_GREY
	card4.ColorIntensity = vuetify.INTENSITY_DARKEN3
	card4.Dark = True
	card4.AlignCenter = True
	card4.PB = 6
	'
	Dim appbar4 As VueElement = card4.AddAppBar("appbar4")
	appbar4.Flat = True
	appbar4.color = "rgba(0, 0, 0, 0)"
	'
	Dim tt As VueElement = appbar4.AddToolbarTitle("tt", "Google", "", Null)
	tt.TextColor = vuetify.COLOR_WHITE
	tt.PL = 0
	tt.ML = 2
	tt.AddClass("title")
	'
	Dim list4 As VueElement = card4.AddList("list4", False, False, False, Null)
	list4.Color = vuetify.COLOR_GREY
	list4.ColorIntensity = vuetify.INTENSITY_DARKEN3
	list4.Options.dataSource = "articles"
	list4.Options.hasdivider = True
	list4.AddListItemGroupTemplate(0)
	list4.GetTemplate.VModel = "selected1"
	list4.GetTemplate.ActiveClass = "red--text"
	list4.GetTemplate.Multiple = True
	'
	list4.ClearItems
	list4.ListViewAddItem1(list4.CreateListItem("art1").SetTitle("01 Create wireframe").SetLeftIcon("mdi-rewind").SetRightIcon("mdi-fast-forward"))
	list4.ListViewAddItem1(list4.CreateListItem("art2").SetTitle("02 Slack Logo Design").SetLeftIcon("mdi-rewind").SetRightIcon("mdi-fast-forward"))
	home.BindVueElement(list4)
	
	home.SetData("articles", list4.Records)
	home.SetData("selected1", Array("1"))
End Sub

Sub AddNavBar
	Dim navbardiv As VueElement = maindiv.AddDiv("navbardiv")
	navbardiv.MA = 5
	navbardiv.Secondary = True
	navbardiv.TextNoWrap = True
	navbardiv.RoundedLG
	'
	Dim appbar As VueElement = navbardiv.AddAppBar("navappbar")
	appbar.Color = vuetify.COLOR_GREY
	appbar.ColorIntensity = vuetify.INTENSITY_DARKEN3
	appbar.Dark = True
	appbar.RoundedLG 
	'
	Dim txtsearch As VueElement = appbar.AddTextField1("txtsearch", "", "Search", Null)
	txtsearch.PrependIcon = "mdi-magnify"
	txtsearch.Solo = True
	txtsearch.HideDetails = True
	txtsearch.Clearable = True
	txtsearch.Color = vuetify.COLOR_WHITE
	'
	appbar.AddSpacer
	'
	appbar.AddButtonWithIcon("btnbell", "mdi-bell", "", Null, Null)
	'
	appbar.AddAvatar("user", "./assets/bvad31.png", 0, Null)
End Sub

Sub BuildCard3
	Dim card3 As VueElement = maincontainer.Cell(1, 3).AddCard("card3", "", Null)
	card3.Color = vuetify.COLOR_GREY
	card3.ColorIntensity = vuetify.INTENSITY_DARKEN3
	card3.Dark = True
	card3.AlignCenter = True
	
	Dim dp As VueElement = card3.AddDatePicker("datepicker1", "date2", "", Null)
	dp.NoTitle = True
	home.BindVueElement(dp)
	home.SetData("date2", BANanoShared.DateNow)
End Sub

Sub BuildCard2
	Dim card2 As VueElement = maincontainer.Cell(1, 2).AddCard("card2", "", Null)
	card2.Color = vuetify.COLOR_GREY
	card2.ColorIntensity = vuetify.INTENSITY_DARKEN3
	card2.Dark = True
	card2.AlignCenter = True
	'
	Dim card2appbar As VueElement = card2.AddAppBar("card2appbar")
	card2appbar.Flat = True
	card2appbar.Color = "rgba(0, 0, 0, 0)"
	'
	Dim appbartitle As VueElement = card2appbar.AddToolbarTitle("card2title", "My Tasks (05)", "", Null)
	appbartitle.AddClass("title")
	appbartitle.TextColor = vuetify.color_white
	appbartitle.PL = 0
	appbartitle.ML = 2
	'
	Dim tasklist As VueElement = card2.AddList("tasklist", False, False, False, Null)
	tasklist.Color = vuetify.COLOR_GREY
	tasklist.ColorIntensity = vuetify.INTENSITY_DARKEN3
	tasklist.MT = 4
	tasklist.Options.dataSource = "tasks"
	tasklist.Options.hasdivider = True
	tasklist.AddListItemGroupTemplate(0)
	'
	tasklist.GetTemplate.ActiveClass = "red--text"
	tasklist.GetTemplate.VModel = "selected"
	tasklist.GetTemplate.Multiple = True
	
	'add the tasks
	tasklist.clearitems
	tasklist.ListViewAddItem1(tasklist.CreateListItem("task1").SetTitle("01 Create wireframe").SetRightIcon("mdi-star-outline"))
	tasklist.ListViewAddItem1(tasklist.CreateListItem("task2").SetTitle("02 Slack Logo Design").SetRightIcon("mdi-star-outline"))
	tasklist.ListViewAddItem1(tasklist.CreateListItem("task3").SetTitle("03 Dashboard Design").SetRightIcon("mdi-star-outline"))
	tasklist.ListViewAddItem1(tasklist.CreateListItem("task4").SetTitle("04 Create wireframe").SetRightIcon("mdi-star"))
	
	home.BindVueElement(tasklist)
	home.SetData("tasks", tasklist.Records)
	home.SetData("selected", Array("1"))
End Sub


Sub BuildCard1
	Dim card1 As VueElement = maincontainer.Cell(1, 1).AddCard("card1", "", Null)
	card1.Color = vuetify.COLOR_GREY
	card1.ColorIntensity = vuetify.INTENSITY_DARKEN3
	card1.Dark = True
	'
	
	Dim card1appbar As VueElement = card1.AddAppBar("card1appbar")
	card1appbar.Flat = True
	card1appbar.Color = "rgba(0, 0, 0, 0)"
	'
	Dim card1google As VueElement = card1appbar.AddAvatar("card1google", "./assets/google.png", "45", Null)
	card1google.Color = vuetify.color_grey
	card1google.ColorIntensity = vuetify.INTENSITY_DARKEN2
	'
	Dim card1title As VueElement = card1appbar.AddToolbarTitle("card1title", "Google", "", Null)
	card1title.AddClassTitle
	card1title.TextColor = vuetify.COLOR_WHITE
	card1title.PL = 0
	card1title.ML = 2
	'
	card1appbar.AddSpacer
	'
	Dim card1btn1 As VueElement = card1appbar.AddButtonWithIcon("card1btn1", "mdi-star", vuetify.COLOR_WHITE, Null, Null)
	card1btn1.Outlined = True
	card1btn1.Small = True
	card1btn1.GetIcon.Color = vuetify.COLOR_YELLOW
	card1btn1.GetIcon.Small = True
	'
	Dim card1btn2 As VueElement = card1appbar.AddButtonWithIcon("card1btn2", "mdi-dots-vertical", vuetify.COLOR_WHITE, Null, Null)
	'
	Dim card1appbar1 As VueElement = card1.AddAppBar("card1appbar1")
	card1appbar1.Flat = True
	card1appbar1.Color = "rgba(0, 0, 0, 0)"
	'
	Dim card1btn3 As VueElement = card1appbar1.AddButton("card1btn3", "Select Progress", "", False, Null)
	card1btn3.Color = vuetify.COLOR_GREY
	card1btn3.ColorIntensity = vuetify.INTENSITY_DARKEN2
	card1btn3.Small = True
	card1btn3.Dark = True
	'
	card1appbar1.AddSpacer
	
	card1appbar1.AddButton("card1btn4", "High", "red", True, CreateMap(":small":True))
	'
	Dim card1appbar2 As VueElement = card1.AddAppBar("card1appbar2")
	card1appbar2.Flat = True
	card1appbar2.Color = "rgba(0, 0, 0, 0)"
	card1appbar2.MT = "n4"
	'
	card1appbar2.AddParagraph("p1", "Task Done: 25/50", "", "")
	'
	Dim card1appbar3 As VueElement = card1.AddAppBar("card1appbar3")
	card1appbar3.Flat = True
	card1appbar3.Color = "rgba(0, 0, 0, 0)"
	card1appbar3.MT = "n10"
	'
	Dim prg1 As VueElement = card1appbar3.AddProgressLinear("prg1", "prg1value", "red", Null)
	prg1.Height = "6"
	home.BindVueElement(prg1)
	home.SetData("prg1value", "65")
	'
	Dim card1appbar4 As VueElement = card1.AddAppBar("card1appbar4")
	card1appbar4.Flat = True
	card1appbar4.Color = "rgba(0, 0, 0, 0)"
	card1appbar4.MT = "n10"
	'
	Dim btnios As VueElement = card1appbar4.AddButton("btnios", "IOS APP", "green", False, Null)
	btnios.Small = True
	btnios.MR = 2
	btnios.Raised = False
	'
	Dim btnux As VueElement = card1appbar4.AddButton("btnux", "UI/UX", "blue", False, Null)
	btnux.Small = True
	btnux.Raised = False
	'
	Dim card1appbar5 As VueElement = card1.AddAppBar("card1appbar5")
	card1appbar5.Flat = True
	card1appbar5.Color = "rgba(0, 0, 0, 0)"
	card1appbar5.MT = "n7"
	'
	Dim avatars As VueElement = card1appbar5.AddAvatarGroup("avatars", 30, "people", "id", "src", "alt", "text")
	avatars.Color = vuetify.color_grey
	avatars.ColorIntensity = vuetify.INTENSITY_DARKEN2
	avatars.Bind("class", "getavatarclass(index)")
	home.BindVueElement(avatars)
	
	Dim people As List = home.NewList
	people.Add(CreateMap("id":1, "src":"./assets/img1.png", "alt":"John"))
	people.Add(CreateMap("id":2, "src":"./assets/img2.png", "alt":"Man"))
	people.Add(CreateMap("id":3, "src":"./assets/img3.png", "alt":"Sara"))
	people.Add(CreateMap("id":4, "src":"./assets/img6.png", "alt":"Samuel"))
	people.Add(CreateMap("id":4, "text":"+5"))
	
	home.SetData("people", people)
	
	Dim card1appbar6 As VueElement = card1.AddAppBar("card1appbar6")
	card1appbar6.Flat = True
	card1appbar6.Color = "rgba(0, 0, 0, 0)"
	card1appbar6.MT = "n8"
	'
	Dim btnDue As VueElement = card1appbar6.AddButton("btndue", "DUE DATE: 20 JUNE", "", False, Null)
	btnDue.Small = True
	btnDue.Raised = False
	btnDue.Color = vuetify.COLOR_RED
	btnDue.ColorIntensity = vuetify.INTENSITY_DARKEN2
	
End Sub

'we will compile our class depending on the index
Sub getAvatarClass(idx As Int) As String
	If idx > 0 Then
		Return "ml-n3"
	Else
		Return ""	
	End If
End Sub

