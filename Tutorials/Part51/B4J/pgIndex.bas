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
	appbar.Color = vuetify.color_teal
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
	appdrawer = app.AddDrawer("appdrawer", "drawershow", False, "", False, Null)
	'appdrawer.Width = 300
	appdrawer.App = True
	appdrawer.Clipped = True
	appdrawer.Dark = True
	appdrawer.MiniVariant = True
	appdrawer.MiniVariantWidth = "100"
	appdrawer.AddClass(vuetify.COLOR_TEAL)
	vuetify.BindVueElement(appdrawer)
	'hide the drawer
	vuetify.SetData("drawershow", True)
	
	Dim list1 As VueElement = appdrawer.AddList1("list1")
	list1.Options.dataSource = "list1links"
	list1.AddListViewTemplate1(0)
	list1.ListViewAddItem1(list1.CreateListItem("medi1").SetIcon("fas fa-hand-holding-medical").SetSubTitle("Medi"))
	list1.ListItem.mb = 12
	list1.Listitemicon1.MB = 2
	list1.ListItemIcon1.Large = True
	list1.ListItemSubTitle.AlignCenter = True
	list1.SetData("list1links", list1.Records)
	vuetify.BindVueElement(list1)
	'
	Dim list2 As VueElement = appdrawer.AddList1("list2")
	list2.Flat = True
	list2.Options.dataSource = "list2links"
	list2.AddListViewTemplate1(0)
	list2.Listitemicon1.MB = 2
	'
	list2.ListViewAddItem1(list2.CreateListItem("home").SetIcon("fas fa-home"))
	list2.ListViewAddItem1(list2.CreateListItem("user").SetIcon("fas fa-user"))
	list2.ListViewAddItem1(list2.CreateListItem("email").SetIcon("fas fa-envelope"))
	list2.ListViewAddItem1(list2.CreateListItem("cog").SetIcon("fas fa-cog"))
	list2.ListViewAddItem1(list2.CreateListItem("ask").SetIcon("fas fa-question-circle"))
	
	list2.SetData("list2links", list2.Records)
	vuetify.BindVueElement(list2)
	'
	Dim list3 As VueElement = appdrawer.AddList1("list3")
	list3.PlaceAtBottom
	list3.ML = 3
	list3.Options.dataSource = "list3links"
	list3.AddListViewTemplate1(0)
	list3.ListItemLeftIcon.Right = True
	list3.ListViewAddItem1(list3.CreateListItem("out").SetLeftIcon("fas fa-sign-out-alt"))
	
	list3.SetData("list3links", list3.Records)
	vuetify.BindVueElement(list3)
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
