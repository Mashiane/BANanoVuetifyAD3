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
	Private appFooter As VueElement
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
	'
	BuildFooter
	'render the ux
	vuetify.Serve
End Sub

#if css
	.borderleft {
    	border-left: 4px solid #0ba518;
  	}
#End If

Sub BuildFooter
	appFooter = app.AddFooter("appfooter", True, False, Null)
	appFooter.Inset = True
	appFooter.Dark = True
	appFooter.App = True
	'
	Dim fcard As VueElement = appFooter.AddCard("fcard", "red", Null)
	fcard.AddClass("flex")
	fcard.Flat = True
	fcard.Tile = True
	fcard.Elevation = "10"
	'
	Dim fcardText As VueElement = fcard.AddCardText("fcardtext", "", Null)
	fcardText.PY=2
	fcardText.TextCenter = True
	fcardText.TextColor = vuetify.COLOR_WHITE
	fcardText.Caption = "{{ new Date().getFullYear() }} by The Mash"
End Sub


Sub BuildNavigationBar
	'add the v-app-bar
	appbar = app.AddAppBar("appbar")
	appbar.Color = vuetify.color_red
	appbar.App = True
	appbar.Dark = True
	vuetify.BindVueElement(appbar)
	
	'add a hamburger
	apphamburger = appbar.AddAppBarNavIcon("apphamburger")
	apphamburger.TextColor = vuetify.COLOR_WHITE
	vuetify.BindVueElement(apphamburger)
	
	'add the logo
	'applogo = appbar.AddImage("applogo", "./assets/bvad31.png", "", "", "50", "60", Null)
	'applogo.MR = 2
	'applogo.BorderRadius = "5px"
	'vuetify.BindVueElement(applogo)
	
	'add toolbar title
	apptitle = appbar.AddToolbarTitle("apptitle", Main.AppTitle, "", Null)
	apptitle.TextColor = vuetify.color_white
	vuetify.BindVueElement(apptitle)
	'
	'add a spacer
	appbar.AddSpacer
	'
	Dim btnExit As VueElement = appbar.AddButtonWithRightIcon("btnExit", "Exit", "mdi-exit-to-app", "", False, Null, Null)
	btnExit.TextColor = vuetify.color_white
	btnExit.Raised = False
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
	appdrawer = app.AddDrawer("appdrawer", "drawershow", True, "red", False, Null)
	appdrawer.ColorIntensity = vuetify.INTENSITY_DARKEN4
	appdrawer.App = True
	appdrawer.Dark = True
	vuetify.BindVueElement(appdrawer)
	
	Dim drwCont As VueElement = appdrawer.AddDiv("drwcont")
	drwCont.AlignCenter = True
	drwCont.AddRows3.AddColumns12
	drwCont.BuildGrid
	'
	drwCont.Cell(1, 1).MT = 5
	'
	Dim drwavatar As VueElement = drwCont.Cell(1, 1).AddAvatar("drwavatar", "./assets/bvad31.png", "100", Null)
	'
	Dim username As VueElement = drwCont.Cell(2, 1).AddParagraph("username", "Mashiane", vuetify.COLOR_WHITE, "")
	username.SubHeading = True
	username.MT = 1
	username.TextCenter = True

	Dim btnAddProject As VueElement = drwCont.Cell(3, 1).AddButton1("btnaddproject", "Add new project", Null)
	btnAddProject.Dark = True
	btnAddProject.Color = vuetify.COLOR_TEAL
	btnAddProject.ColorIntensity = vuetify.INTENSITY_LIGHTEN3
	btnAddProject.MB = 5
	
	Dim mlist As VueElement = appdrawer.AddList1("mlist")
	mlist.Options.dataSource = "links"
	mlist.Options.activeclass = "borderleft"
	mlist.AddListViewTemplate1(0)
	vuetify.BindVueElement(mlist)
	
	mlist.ClearItems
	mlist.ListViewAddItem1(mlist.CreateListItem("xlist").SetLeftIcon("mdi-desktop-mac-dashboard").SetTitle("Dashboard").SetTo("/"))
	mlist.ListViewAddItem1(mlist.CreateListItem("xprojects").SetLeftIcon("mdi-folder").SetTitle("Projects").SetTo("/projects"))
	mlist.ListViewAddItem1(mlist.CreateListItem("xteam").SetLeftIcon("mdi-account-supervisor").SetTitle("Team").SetTo("/team"))
	vuetify.SetData("links", mlist.Records)
	
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
