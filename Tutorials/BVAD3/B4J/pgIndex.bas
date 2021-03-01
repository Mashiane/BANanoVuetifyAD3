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
	Private vapp As VueElement
	Private routerview As VueElement
	Private vmain As VueElement
	Private vappbar As VueElement
	Private apphamburger As VueElement
	Private logo As VueElement
	Private appdrawer As VueElement
	Private drwlist As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	'load the baseline layout to the template
	BANano.LoadLayout(vuetify.Here, "vbaseline")
	
	'set the name of the router view, this will be uses for 'ref' access
	vuetify.RouterViewName = routerview.ID
	'establish bindings
	vuetify.BindVueElement(apphamburger)
	
	'add pages
	AddRouters
	
	AddDrawer
	
	vuetify.SetData("websitessrc", "https://tgifzone.com/")
	'render the ux
	vuetify.Serve
	'
	'Dim body As String = vuetify.BANanoGetHTML("body")
	'Log(body)
	
End Sub


'add all pages
Sub AddRouters
	ViewHome.Initialize 
End Sub


Sub AddDrawer
	'bind the drawer to the app
	vuetify.BindVueElement(appdrawer)
	'bind the template
	vuetify.BindVueElement(drwlist)
	'hide the drawer
	vuetify.SetData("drawershow", False)
		
	'initialize the listview options, we use the default options to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	'add the group template to the list
	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
	'
	drwlist.ClearItems
	drwlist.RouterReplace = True
	drwlist.AddItemParentChild("", "home", "mdi-home", "", "Home", "")
	'
	drwlist.AddItemParentChild("home", "welcome", "mdi-home", "", "Welcome", "/")
	drwlist.AddItemParentChild("home", "b4x", "mdi-home", "", "B4X", "")
	drwlist.AddItemParentChild("home", "tgif", "mdi-home", "", "TGIF Zone Inc", "")
	'
	drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
	drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/about")
	
	'convert items to a tree structure
	Dim listTree As List = drwlist.ListViewToTree
	drwlist.SetData("links", listTree)
	'bind events for the list
	vuetify.BindVueElement(drwlist)	
End Sub

''a list item on the drawer is clicked
Sub drwlist_click(item As Map)
	Dim sid As String = item.Get("id")
	'
	Select Case sid
	Case "b4x"
		vuetify.SetData("websitessrc", "https://www.b4x.com/")
		vuetify.RouterReplace("/")
	Case "tgif"
		vuetify.SetData("websitessrc", "https://tgifzone.com/")
		vuetify.RouterReplace("/")
	End Select
End Sub
'

'hamburger clicked
Sub apphamburger_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawershow")
End Sub