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
	Public appbar As VueElement
	Private appdrawer As VueElement
	Private apphamburger As VueElement
	Public app As VueElement
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
	
	'add global snackbar
	appsnackbar = app.AddAppSnackBar
	vuetify.BindVueElement(appsnackbar)
	'
	BuildNavBar
	
	BuildViewer
			
	'add all pages
	AddRouters
	
	'add the drawer
	'AddDrawer
	
	'render the ux
	vuetify.Serve
End Sub

Sub BuildNavBar
	'add the v-app-bar
	appbar = app.AddAppBar("appbar")
	appbar.Color = vuetify.color_white
	appbar.App = True
	appbar.ClippedLeft = True
	appbar.Extended = True
	vuetify.BindVueElement(appbar)
	
	'add a hamburger
	'apphamburger = appbar.AddHamburger("apphamburger")
	'vuetify.BindVueElement(apphamburger)
	
	'add the logo
	applogo = appbar.AddAvatar("applogo", "./assets/bvad31.png", 100, Null)
	applogo.MT = 6
	applogo.MX = 6
	vuetify.BindVueElement(applogo)
	
	'add toolbar title
	apptitle = appbar.AddToolbarTitle("apptitle", Main.AppTitle, "", Null)
	apptitle.MT = 6
	vuetify.BindVueElement(apptitle)
	
	'add a spacer
	appbar.AddSpacer
End Sub

Sub BuildViewer
	'add main container
	appmain = app.AddMain
	vuetify.BindVueElement(appmain)
	
	'add transition
	apptransition = appmain.AddSlideXTransition("apptransition", "out-in")
	vuetify.BindVueElement(apptransition)
	
	'add router view
	approuterview = apptransition.AddRouterView("approuterview")
	'IMPORTANT
	vuetify.RouterViewName = "approuterview"
	'
	vuetify.BindVueElement(approuterview)
End Sub

'add all pages
Sub AddRouters
	ViewHome.Initialize 
End Sub


'Sub AddDrawer
'	appdrawer = app.AddDrawer("appdrawer", "drawershow", False, "", False, Null)
'	appdrawer.Width = 300
'	appdrawer.App = True
'	appdrawer.Clipped = True
'	vuetify.BindVueElement(appdrawer)
'	'hide the drawer
'	vuetify.SetData("drawershow", False)
'		
'	'inject a list to the vapp drawer
'	Dim drwlist As VueElement = appdrawer.AddList("drwlist", True, False, False, Null)
'	'initialize the listview options, we use the default options to source the data
'	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
'	'set the data source of the list items
'	drwlistOptions.dataSource = "links"
'	'
'	'add the group template to the list
'	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
'	'
'	drwlist.ClearItems
'	'drwlist.AddItemParentChild("", "home", "mdi-home", "", "Home", "/")
'	'drwlist.AddItemParentChild("home", "welcome", "mdi-home", "", "Welcome", "/")
'	'drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
'	'drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/about")
'	
'	'convert items to a tree structure
'	Dim listTree As List = drwlist.ListViewToTree
'	drwlist.SetData("links", listTree)
'		
'	'bind the template
'	vuetify.BindVueElement(drwlist)
'End Sub

'a list item on the drawer is clicked
Sub drwlist_click(item As String)
	'vuetify.ShowSnackBarSuccess(item)
End Sub

'hamburger clicked
Sub apphamburger_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawershow")
End Sub

'dialog ok button clicked
Sub inspireok_Click (e As BANanoEvent)
	'hide the active dialog box
	vuetify.HideDialog
	'get the dialog process being executed
	Dim sconfirm As String = vuetify.Confirm
	'process accordingly
	Select Case sconfirm
	End Select
End Sub

'dialog cancel button clicked
Sub inspirecancel_Click (e As BANanoEvent)
	vuetify.HideDialog
	Dim sconfirm As String = vuetify.Confirm
End Sub