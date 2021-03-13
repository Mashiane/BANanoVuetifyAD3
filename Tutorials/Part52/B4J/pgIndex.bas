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
	app.Color = vuetify.color_black
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

#if css
	.activeborder {
  		border-right: 5px solid red;
	}
#End If

Sub BuildNavigationBar
	'add the v-app-bar
	appbar = app.AddAppBar("appbar")
	appbar.Color = vuetify.color_blue
	appbar.App = True
	appbar.clippedleft = True
	appbar.Dark = True
	appbar.Color = vuetify.COLOR_GREY
	appbar.ColorIntensity = vuetify.INTENSITY_DARKEN3
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
	'appdrawer.Clipped = True
	appdrawer.Dark = True
	appdrawer.Color = vuetify.COLOR_GREY
	appdrawer.ColorIntensity = vuetify.INTENSITY_DARKEN3
	vuetify.BindVueElement(appdrawer)
	'Show the drawer
	vuetify.SetData("drawershow", True)
	
	Dim li1 As VueElement = appdrawer.AddListItem("li1", Null)
	li1.MB = 10
	li1.MT = 10
	li1.AddClass("d-flex")
	li1.JustifyCenterClass = True
	'
	Dim li1icon As VueElement = li1.AddIcon("li1icon", "mdi-android-studio", "", True, Null)
	li1icon.XLarge = True
	
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = appdrawer.AddList("drwlist", False, False, False, Null)
	'set the datasource to get the listing from
	drwlist.Options.dataSource = "links"
	'when an item is selected, set an active border
	drwlist.Options.activeclass = "activeborder"
	'add the "Options" with 0 lines
	drwlist.AddListItemGroupTemplate(0)
	'set the v-model to save the selected item
	drwlist.GetTemplate.VModel = "selecteditem"
	'the color of the template items is red
	drwlist.GetTemplate.Color = vuetify.color_red
	'the first item should be selectec
	drwlist.SetData("selecteditem", 1)
	'
	drwlist.ClearItems
	drwlist.ListViewAddItem1(drwlist.CreateListItem("dashboard").SetLeftIcon("mdi-view-dashboard").SetTitle("Dashboard"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("projects").SetLeftIcon("mdi-briefcase-check").SetTitle("Projects"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("tasks").SetLeftIcon("mdi-menu").SetTitle("Tasks"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("calendar").SetLeftIcon("mdi-calendar").SetTitle("Calendar"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("time").SetLeftIcon("mdi-clock").SetTitle("Time Manager"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("reports").SetLeftIcon("mdi-chart-pie").SetTitle("Reports"))
	drwlist.ListViewAddItem1(drwlist.CreateListItem("settings").SetLeftIcon("mdi-cog-outline").SetTitle("Settings"))
	
	'bind the template
	vuetify.BindVueElement(drwlist)
		
	'convert items to a tree structure
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
