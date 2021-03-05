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
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	
	'add the v-app
	app = vuetify.AddApp
	'
	BuildNavigationBar
	'
	BuildPageViewer
	'
	BuildSnackBar
		
	'add all pages
	AddPages
	'add the drawer
	BuildDrawer
	
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

Sub BuildDrawer
	Dim appnav As VueElement = app.AddNav("appnav")
	appdrawer = appnav.AddDrawer("appdrawer", "drawershow", False, "", False, Null)
	appdrawer.App = True
	appdrawer.Dark = True
	appdrawer.Color = vuetify.COLOR_GREY
	appdrawer.ColorIntensity = vuetify.INTENSITY_DARKEN3
	appdrawer.PY = 0
	appdrawer.Clipped = True
	vuetify.BindVueElement(appdrawer)
	'hide the drawer
	vuetify.SetData("drawershow", True)
	
	'
	Dim drwcont As VueElement = appdrawer.AddContainer("drwcont", False)
	drwcont.AddRows1.AddColumns9.AddColumns3
	drwcont.BuildGrid
	'
	drwcont.Cell(1, 1).RemoveAttr("xs")
	drwcont.Cell(1, 1).RemoveAttr("cols")
	'
	drwcont.Cell(1, 2).RemoveAttr("xs")
	drwcont.Cell(1, 2).RemoveAttr("cols")
	
	Dim bars As VueElement = drwcont.Cell(1, 2).AddIcon("bars", "fas fa-bars", "", False, Null)
	bars.Right = True
	bars.MT = 1
	'
	Dim progc As VueElement = drwcont.Cell(1, 1).AddProgressCircular("progc", "value", "{{ value }}", "", Null)
	progc.Rotate = 360
	progc.Size = 50
	progc.Width = 7
	progc.Color = vuetify.COLOR_LIME
	progc.ColorIntensity = vuetify.INTENSITY_ACCENT3
	progc.MT = "n1"
	vuetify.SetData("value", 0)
	'
	
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = appdrawer.AddList1("drwlist")
	drwlist.Dense = True
	drwlist.Nav = True
	drwlist.Options.dataSource = "links"
	'add the group template to the list
	drwlist.AddListViewTemplate1(0)
		
	drwlist.ClearItems
	drwlist.ListViewAddItem1(drwlist.CreateListItem("dash").SetTitle("Dashboard").SetLeftIcon("fas fa-tachometer-alt").SetTo("/"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("apps").SetTitle("Applicants").SetLeftIcon("fas fa-users").SetTo("/applications").SetRightChip("3").SetRightChipColor(vuetify.COLOR_CYAN))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("jobs").SetTitle("Jobs").SetLeftIcon("fas fa-briefcase").SetTo("/jobs"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("cal").SetTitle("Calendar").SetLeftIcon("fas fa-calendar-alt").SetTo("/calendar"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("reps").SetTitle("Reports").SetLeftIcon("fas fa-clipboard-list").SetTo("/reports"))
	drwlist.SetData("links", drwlist.Records)
	'bind the template
	vuetify.BindVueElement(drwlist)
	'
	BuildDrawerBottom
End Sub


Sub BuildDrawerBottom
	Dim bottomD As VueElement = appdrawer.AddDiv("bottomd")
	bottomD.AddRows1.AddColumns6.AddColumns6.AddColumns12
	bottomD.BuildGrid
	'
	bottomD.Cell(1, 1).RemoveAttr("xs")
	bottomD.Cell(1, 1).RemoveAttr("cols")
	'
	bottomD.Cell(1, 2).RemoveAttr("xs")
	bottomD.Cell(1, 2).RemoveAttr("cols")
	
	bottomD.AbsolutePosition
	bottomD.AtTheBottom
	'
	Dim user As VueElement = bottomD.Cell(1, 1).AddAvatarWithBadge("user", "./assets/sponge.png", 50, "usermsgs", vuetify.COLOR_RED, Null, Null)
	user.MX = 2
	user.Overlap = True
	vuetify.BindVueElement(user)
	vuetify.SetData("usermsgs", 3)
	
	Dim btnSO As VueElement = bottomD.Cell(1, 2).AddButtonWithRightIcon("signout", "Exit","fas fa-sign-out-alt", "", False, Null, Null)
	btnSO.MT = 2
	btnSO.Raised = False
	'
	Dim bcard As VueElement = bottomD.Cell(1, 3).AddCard("bcard", "", Null)
	bcard.Color = vuetify.COLOR_GREY
	bcard.ColorIntensity = vuetify.INTENSITY_DARKEN1
	'
	Dim cardlist As VueElement = bcard.AddList1("cardlist")
	cardlist.Dense = True
	cardlist.Options.dataSource = "cardlinks"
	cardlist.AddListViewTemplate1(0)
	
	cardlist.ClearItems
	cardlist.ListViewAddItem1(cardlist.CreateListItem("mvl").SetLeftIcon("mdi-heart").SetLeftIconColor(vuetify.COLOR_RED).SetTitle("by Mashy").SetRightIcon("fas fa-chevron-down").SetRightIconClass("mr-2"))
	
	cardlist.SetData("cardlinks", cardlist.Records)
	'bind the template
	vuetify.BindVueElement(cardlist)
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
