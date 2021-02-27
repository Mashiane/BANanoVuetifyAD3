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
	
	BuildNavBar
	'
	BuildViewer
		
	'add all pages
	AddRouters
	'add the drawer
	AddDrawer
	
	'render the ux
	vuetify.Serve
End Sub

Sub BuildViewer
	'add main container
	appmain = vuetify.AddMain
	vuetify.BindVueElement(appmain)
	
	'add transition
	apptransition = appmain.AddSlideXTransition("apptransition", "out-in")
	vuetify.BindVueElement(apptransition)
	
	'add router view
	approuterview = apptransition.AddRouterView("approuterview")
	vuetify.RouterViewName = "approuterview"
	vuetify.BindVueElement(approuterview)
	
	'add app snackbar
	appsnackbar = vuetify.AddAppSnackBar
End Sub


Sub BuildNavBar
	'add the v-app-bar
	appbar = app.AddAppBar("appbar")
	appbar.Color = vuetify.COLOR_BLUE
	appbar.App = True
	appbar.ClippedLeft = True
	vuetify.BindVueElement(appbar)
	
	'add a hamburger
	apphamburger = appbar.AddHamburger("apphamburger")
	apphamburger.TextColor = vuetify.color_white
	vuetify.BindVueElement(apphamburger)
	
	'add the logo
	applogo = appbar.AddAvatar("applogo", "./assets/bvad31.png", "", Null)
	applogo.MX = 4
	vuetify.BindVueElement(applogo)
	
	'add toolbar title
	apptitle = appbar.AddToolbarTitle("apptitle", Main.AppTitle, "", Null)
	apptitle.TextColor = vuetify.color_white
	vuetify.BindVueElement(apptitle)
	
	'add a spacer
	appbar.AddSpacer
End Sub


'add all pages
Sub AddRouters
	ViewHome.Initialize 
	ViewUsers.Initialize 
End Sub


Sub AddDrawer
	appdrawer = app.AddDrawer("appdrawer", "drawershow", False, "", False, Null)
	appdrawer.Width = 300
	appdrawer.App = True
	appdrawer.Clipped = True
	vuetify.BindVueElement(appdrawer)
	'hide the drawer
	vuetify.SetData(appdrawer.VModel, True)
		
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = appdrawer.AddList("drwlist", False, False, True, Null)
	'initialize the listview options, we use the default options to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	'
	'add the group template to the list
	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
	'
	drwlist.ClearItems
	drwlist.AddItemParentChild("", "home", "mdi-home", "", "Home", "/")
	drwlist.AddItemParentChild("home", "users", "mdi-account-supervisor-circle-outline", "", "Users", ViewUsers.path)
	drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
	drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/")
	
	'convert items to a tree structure
	Dim listTree As List = drwlist.ListViewToTree
	drwlist.SetData("links", listTree)
		
	'bind the template
	vuetify.BindVueElement(drwlist)
End Sub

'a list item on the drawer is clicked
Sub drwlist_click(item As String)
	'vuetify.ShowSnackBarSuccess(item)
End Sub

'hamburger clicked
Sub apphamburger_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawershow")
End Sub
