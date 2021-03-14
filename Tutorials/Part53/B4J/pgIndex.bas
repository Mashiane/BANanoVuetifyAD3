B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private appbar As VueElement
	Private appdrawer As VueElement
	Private apphamburger As VueElement
	Private app As VueElement
	Private appsnackbar As VueElement
	Private apptitle As VueElement
	Private applogo As VueElement
	Private appmain As VueElement
	Private apptransition As VueElement
	Private approuterview As VueElement
	Private appnav As VueElement
	Private rightdrawer As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	vuetify.UseGoogleCharts
	
	'add the v-app
	app = vuetify.AddApp
	'
	'BuildNavigationBar
	'
	BuildPageViewer
	'
	BuildSnackBar
		
	'add all pages
	AddPages
	'add the drawer
	BuildDrawer
	BuildDrawerRight
	
	'render the ux
	vuetify.Serve
End Sub

Sub BuildNavigationBar
	'add the v-app-bar
	appbar = app.AddAppBar("appbar")
	appbar.Color = vuetify.color_blue
	appbar.App = True
	appbar.clippedleft = True
	vuetify.BindVueElement(appbar)
	
	'add a hamburger
	apphamburger = appbar.AddAppBarNavIcon("apphamburger")
	apphamburger.TextColor = vuetify.COLOR_WHITE
	vuetify.BindVueElement(apphamburger)
	
	'add the logo
	applogo = appbar.AddImage("applogo", "./assets/bvad31.png", "", "", "50", "60", Null)
	applogo.MR = 2
	applogo.BorderRadius = "5px"
	vuetify.BindVueElement(applogo)
	
	'add toolbar title
	apptitle = appbar.AddToolbarTitle("apptitle", Main.AppTitle, "", Null)
	apptitle.TextColor = vuetify.color_white
	vuetify.BindVueElement(apptitle)
	
	'add a spacer
	appbar.AddSpacer
	
End Sub

Sub BuildPageViewer
	'add main container
	appmain = app.AddMain
	vuetify.BindVueElement(appmain)
	
	'add transition
	apptransition = appmain.AddSlideXTransition("apptransition", "out-in")
	vuetify.BindVueElement(apptransition)
	
	'add router view
	approuterview = apptransition.AddRouterView("approuterview")
	vuetify.RouterViewName = approuterview.ID
	vuetify.BindVueElement(approuterview)
End Sub

Sub BuildSnackBar
	'add app snackbar
	appsnackbar = app.AddAppSnackBar
	vuetify.BindVueElement(appsnackbar)
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawerRight
	rightdrawer = appnav.AddDrawer("rightdrawer", "right", True, "", True, Null)
	rightdrawer.Dark = True
	rightdrawer.App = True
	rightdrawer.Color = vuetify.COLOR_DEEPORANGE
	rightdrawer.ColorIntensity = vuetify.INTENSITY_ACCENT2
	rightdrawer.Fixed = True
	vuetify.BindVueElement(rightdrawer)
	'
	Dim dcont As VueElement = rightdrawer.AddDiv("dcont")
	dcont.AlignCenter = True
	dcont.AddRows1.AddColumns12
	dcont.BuildGrid
	dcont.Cell(1, 1).MT = 5
	dcont.Cell(1, 1).AddAvatar("davatar", "./assets/sponge.png", 100, Null)
	'
	Dim h4 As VueElement = dcont.Cell(1, 1).AddH4("h41", "Anele 'Mashiane' Mbanga", vuetify.color_white, "")
	h4.SubHeading = True
	h4.MT = 1
	h4.TextCenter = True
	'
	Dim h6 As VueElement = dcont.Cell(1, 1).AddH6("h61", "CEO - TGIF Zone Inc", vuetify.color_white, "")
	h6.SubHeading = True
	h6.MT = 1
	h6.TextCenter = True
	'
	Dim p As VueElement = rightdrawer.AddParagraph("pa1", "Rank of Company", vuetify.color_white, "")
	p.PL = 3
	p.SubHeading = True
	p.MT = 3 
	'
	BuildRightDrawerList
	'
	Dim p1 As VueElement = rightdrawer.AddParagraph("pa2", "Next Meeting Places", vuetify.COLOR_WHITE, "")
	p1.PL = 3
	p1.MT =3 
	p1.SubHeading = True
	'
	Dim tl As VueElement = rightdrawer.AddTimeLine("tl1")
	tl.AlignTop = True
	tl.Dense = True
	tl.FillDot = True
	tl.Small = True
	tl.Dark = True
	'
	Dim tli As VueElement = tl.AddTimeLineItem("tli")
	tli.VFor = "item in places"
	tli.Bind("key", "item.id")
	tli.FillDot = True
	tli.Small = True
	tli.Bind("color", "item.color")
	tli.TextColor = vuetify.COLOR_WHITE
	tli.Caption = "{{ item.text }}"
	'
	Dim places As List = vuetify.NewList
	places.Add(CreateMap("id":1, "color":"red", "text":"East London, RSA"))
	places.Add(CreateMap("id":2, "color":"blue", "text":"Johannesburg, RSA"))
	places.Add(CreateMap("id":3, "color":"brown", "text":"Durban, RSA"))
	vuetify.SetData("places", places)
End Sub


Sub BuildRightDrawerList
	Dim stats As VueElement = rightdrawer.AddList1("stats")
	stats.Options.dataSource = "statsdata"
	stats.AddListViewTemplate1(0)
	stats.Rounded = True
	stats.Dense = True
	'
	stats.ClearItems
	stats.ListViewAddItem1(stats.CreateListItem("income").SetAvatarText("03").SetTitle("The Income").SetTo("/"))
	stats.ListViewAddItem1(stats.CreateListItem("hr").SetAvatarText("05").SetTitle("Human Resources").SetTo("/"))
	stats.ListViewAddItem1(stats.CreateListItem("income").SetAvatarText("12").SetTitle("The Growth").SetTo("/"))
	'
	vuetify.BindVueElement(stats)
	vuetify.SetData("statsdata", stats.Records)
End Sub

Sub BuildDrawer
	appnav = app.AddNav("appnav")
	appdrawer = appnav.AddDrawer("appdrawer", "drawershow", True, "", False, Null)
	appdrawer.App = True
	appdrawer.Dark = True
	appdrawer.MiniVariant = True
	appdrawer.MiniVariantWidth = 100
	appdrawer.Color = vuetify.COLOR_PINK
	appdrawer.ColorIntensity = vuetify.INTENSITY_ACCENT2
	vuetify.BindVueElement(appdrawer)
		
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = appdrawer.AddList("drwlist", False, False, False, Null)
	drwlist.Tile = True
	drwlist.Options.dataSource = "links"
	drwlist.AddListViewTemplate1(0)
	drwlist.ListItem.MB = 8
	'drwlist.ListItemTitle
	'drwlist.ListItemSubTitle
	'drwlist.ListItemSubTitle1
	'drwlist.ListItemRightChip
	'drwlist.ListItemRightRating
	'drwlist.ListItemRightText
	'drwlist.ListItemLeftIcon
	'drwlist.ListItemLeftCheckBox
	'drwlist.ListItemRightCheckBox
	'drwlist.ListItemIcon
	'drwlist.ListItemRightIcon
	'drwlist.ListItemLeftSwitch
	'drwlist.ListItemRightSwitch
	'drwlist.ListItemLeftAction
	'drwlist.ListItemRightAction
	'drwlist.ListItemAvatar
	'drwlist.ListItemAvatarImage
	'drwlist.ListItemAvatarIcon
	'drwlist.ListItemContent
	'drwlist.ListItemRightAvatar
	'drwlist.ListItemRightAvatarImage
	'drwlist.ListItemRightAvatarIcon
	
	drwlist.ClearItems		
	'
	drwlist.ListViewAddItem1(drwlist.CreateListItem("i1").SetLeftIcon("fas fa-window-restore"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("i2").SetLeftIcon("far fa-clock"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("i3").SetLeftIcon("fas fa-chart-line"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("i4").SetLeftIcon("far fa-comment-alt"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("i5").SetLeftIcon("fas fa-cog"))
	
	'bind the template
	vuetify.BindVueElement(drwlist)
	vuetify.SetData("links", drwlist.Records)
End Sub

'a list item on the drawer is clicked
Sub drwlist_click(item As String)
	Log(item)
End Sub

'hamburger clicked
Sub apphamburger_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawershow")
End Sub
