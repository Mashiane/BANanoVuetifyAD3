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
	'BuildNavigationBar
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
	appdrawer = app.AddDrawer("appdrawer", "drawershow", True, "", False, Null)
	appdrawer.App = True
	appdrawer.Permanent = True
	appdrawer.Color = "#F4F5F9"
	vuetify.BindVueElement(appdrawer)
	'
	Dim li As VueElement = appdrawer.AddListItem("li", Null)
	li.PX = 2
	li.PY = 5
	'
	Dim lit As VueElement = li.AddListItemTitle("lit", "")
	lit.TextCapitalize = True
	lit.AlignCenter = True
	'
	Dim icon As VueElement = lit.AddIcon("icon", "fab fa-bitcoin", "", False, Null)
	icon.XLarge = True
	'
	lit.AddSpan("litx", " Coinbets", "", "")
	'
	Dim list1 As VueElement = appdrawer.AddList1("list1")
	list1.Nav = True
	list1.Dense = True
	list1.Options.dataSource = "links"
	list1.AddListItemGroupTemplate(0)
	list1.GetTemplate.VModel = "selecteditem"
	list1.GetTemplate.Color = "deep-purple"
	'
	
	list1.ClearItems
	list1.ListViewAddItem1(list1.CreateListItem("dash").SetIcon("fas fa-home").SetTitle("Dashboard").SetTo("/"))
	list1.ListViewAddItem1(list1.CreateListItem("buysell").SetIcon("fas fa-money-check-alt").SetTitle("Buy / Sell").SetTo("/hobuysme"))
	list1.ListViewAddItem1(list1.CreateListItem("transactions").SetIcon("fas fa-dolly").SetTitle("Transactions").SetTo("/transactions"))
	list1.ListViewAddItem1(list1.CreateListItem("xchange").SetIcon("fas fa-exchange-alt").SetTitle("Exchange").SetTo("/exchanges"))
	list1.ListViewAddItem1(list1.CreateListItem("tools").SetIcon("fas fa-cog").SetTitle("Tools").SetTo("/tools"))
		
	vuetify.BindVueElement(list1)
	vuetify.SetData("links", list1.Records)
	vuetify.SetData("selecteditem", 0)
	
	Dim slotappend As VueElement = appdrawer.AddSlotAppend("slotappend")
	Dim slotdiv As VueElement = slotappend.AddDiv("slotdiv")
	slotdiv.PlaceAtBottom
	slotdiv.PA = 2
	'
	Dim card As VueElement = slotdiv.AddCard("card", "", Null)
	card.AlignCenter = True
	card.PA = 3
	
	Dim user As VueElement = card.AddAvatarWithBadge("user", "./assets/bvad31.png", "40", "", "green", Null, Null)
	user.MB = 8
	user.Bottom = True
	user.Bordered = True
	user.Dot = True
	user.OffsetX = "10"
	user.OffsetY = "10"
	user.Overlap = True
	user.GetImage.BorderColor = vuetify.color_black
	user.GetImage.BorderWidth = "1px"
	user.GetImage.BorderStyle = vuetify.BORDER_SOLID
	'
	card.AddH4("h4", "Total Balance", vuetify.COLOR_GREY, "")
	card.addh2("h2", "$8,520.50", "", "")
	card.AddH5("h5", "+$583.50 today", vuetify.COLOR_GREEN, "")
	'
	Dim card1 As VueElement = card.AddCard("card1", vuetify.COLOR_DEEPPURPLE, Null)
	card1.Dark = True
	card1.MT = 5
	'
	Dim listx As VueElement = card1.AddList1("listx")
	listx.Options.dataSource = "wal"
	listx.AddListViewTemplate1(2)
	vuetify.BindVueElement(listx)
	'
	listx.ListViewAddItem1(listx.CreateListItem("walx").SetTitle("Your Wallet Address").SetSubTitle("3QjwF2YkhdygZ47Akjh"))
	vuetify.SetData("wal", listx.Records)
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
