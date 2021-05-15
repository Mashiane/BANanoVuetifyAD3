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
	Private applogo As VueElement
	Private appmain As VueElement
	Private approuterview As VueElement
	Private apptitle As VueElement
	Private apptransition As VueElement
	Private drwlist As VueElement
	Private inspire As VueElement
	Private appsnack As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	'load the base template
	BANano.LoadLayout(vuetify.Here, "vbaseline")
	'update the caption of the app navbar
	vuetify.SetData("apptitle", Main.AppTitle)
		
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
	'
	Log(vuetify.Template)
	
End Sub

Sub BuildNavigationBar
	'update the v-app-bar
	appbar.Color = vuetify.COLOR_TRANSPARENT
	vuetify.BindVueElement(appbar)
	
	'bind the hamburger so events can fire
	vuetify.BindVueElement(apphamburger)
	
	'set right margin of logo to 2
	applogo.MR = 2
	applogo.Elevation = 4
	vuetify.BindVueElement(applogo)
	
	'add toolbar title
	vuetify.BindVueElement(apptitle)
End Sub

Sub BuildPageViewer
	'bind main container
	vuetify.BindVueElement(appmain)
	
	'set the mode of the transition
	apptransition.Mode = "out-in"
	vuetify.BindVueElement(apptransition)
	
	'bindrouter view
	vuetify.BindVueElement(approuterview)
End Sub

Sub BuildSnackBar
	'build the snackbar
	appsnack.BuildSnackBar
	vuetify.BindVueElement(appsnack)
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawer
	vuetify.BindVueElement(appdrawer)
	'hide the drawer
	vuetify.SetData("drawershow", False)
		
	'initialize the listview options, we use the default options to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	'
	'add the group template to the list
	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
	'
	drwlist.ClearItems
	drwlist.AddItemParentChild("", "home", "mdi-home", "", "Home", "")
	drwlist.AddItemParentChild("home", "pg1", "mdi-home", "", "Page 1", "/")
	'
	drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
	drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/about")
	
	drwlist.SetDataFromTree
			
	'bind the template
	vuetify.BindVueElement(drwlist)
	'we have a click event on the items, remove click event from list
	drwlist.RemoveEvent("click")
End Sub

''a list item on the drawer is clicked
Sub drwlist_click(item As String)
	Log(item)
End Sub

'hamburger clicked
Sub apphamburger_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawershow")
End Sub
