B4J=true
Group=Pages
ModulesStructureVersion=1
Type=Class
Version=7.8
@EndOfDesignText@
'BANano compatible ONLY code. You can not use typical B4J libraries here.  Use their BANano version (if it exists)
'Making changes in a this module/class in B4J debug mode will NOT have any effect until recompiled!
#Region BANano 
	' <-------------- IMPORTANT! This is because we want this module to be transpiled by BANano 
#End Region

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private ws As BANanoWebSocket
	'from template
	Private vuetify As VuetifyApp
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
	Private odbc As SHAREDODBC
End Sub

'Initializes the object. You can NOT add extra parameters!
Public Sub Initialize
	'Log("BrowserIndex initialize")
	' does the browser support websockets?
	If ws.IsSupported Then
		' here we connect to our SERVERIndex websocket class using the 'classic' B4J Websocket events WebSocket_Connected and WebSocket_Disconnected
		ws.Initialize("ws://" & BANano.Location.GetHost & "/ws/" & BANano.StaticFolder & "/index")
	End If
End Sub

' Server says socket is ready
Sub WebSocket_Connected()
	'start the vuetify app
	vuetify = modBVAD3.vuetify
	vuetify.Initialize(Me, "inspire")
	
	'Log("Connected ===> My B4J PageId: " & BANano.GetPageID)
	'Log("Testing WatchLive")
	
	'AlaSQLInitialize
	
	'add the v-app
	app = vuetify.AddApp
	
	'add the v-app-bar
	appbar = vuetify.AddAppBar(Me, "appbar", "", Null)
	appbar.Color = vuetify.color_white
	vuetify.BindVueElement(appbar)
	
	'add a hamburger
	apphamburger = vuetify.AddHamburger(Me, appbar.ID, "apphamburger", "", Null)
	vuetify.BindVueElement(apphamburger)
	
	'add the logo
	applogo = vuetify.AddAvatar(Me, appbar.ID, "applogo", "./assets/sponge.png", "", Null)
	vuetify.BindVueElement(applogo)
	
	'add toolbar title
	apptitle = vuetify.AddToolbarTitle(Me, appbar.ID, "apptitle", modBVAD3.AppTitle, "", Null)
	vuetify.BindVueElement(apptitle)
	
	'add a spacer
	appbar.AddSpacer
	
	'add main container
	appmain = vuetify.AddMain
	vuetify.BindVueElement(appmain)
	
	'add transition
	apptransition = vuetify.AddSlideXTransition(Me, appmain.ID, "apptransition", "out-in")
	vuetify.BindVueElement(apptransition)
	
	'add router view
	approuterview = vuetify.AddRouterView(Me, appmain.ID, "approuterview")
	vuetify.BindVueElement(approuterview)
	
	'add app snackbar
	appsnackbar = vuetify.AddAppSnackBar
		
	'add all pages
	AddRouters
	'add the drawer
	AddDrawer
	
	'db methods, we will call from router page
	vuetify.SetMethod(Me, "SQLiteOnBrowser", Null)
	vuetify.SetMethod(Me, "SQLOnBrowser", Null)
	
	'render the ux
	vuetify.Serve
End Sub

'process records to the SQLite Database, receive from router
Sub SQLiteOnBrowser(payload As Map)			'ignoreDeadCode
	Log("BrowserIndex.SQLiteOnBrowser")
	'convert the payload to json
	Dim jsonPayload As String = BANano.ToJson(payload)
	'push the payload to the server
	Dim resp As Object
	Dim prom As BANanoPromise = ws.RunFunctionWithResult("SQLiteOnServer", Array(jsonPayload))
	prom.Then(resp)
		odbc.Initialize(resp)
		'a process with an error returns -1
		If odbc.affectedRows = -1 Then
			vuetify.ShowSnackBarError("An error took place processing your request, please try again!")
			Return
		End If
		'process the payload and show on UX etc
		Select Case odbc.view
		Case "ViewSQLite"
			ViewSQLite.PayloadManager(odbc)
	End Select
	prom.end
End Sub

'process records to the MySQL Database, receive from router
Sub SQLOnBrowser(payload As Map)			'ignoreDeadCode
	Log("BrowserIndex.SQLOnBrowser")
	'convert the payload to json
	Dim jsonPayload As String = BANano.ToJson(payload)
	'push the payload to the server
	Dim resp As Object
	Dim prom As BANanoPromise = ws.RunFunctionWithResult("SQLOnServer", Array(jsonPayload))
	prom.Then(resp)
		odbc.Initialize(resp)
		'a process with an error returns -1
		If odbc.affectedRows = -1 Then
			vuetify.ShowSnackBarError("An error took place processing your request, please try again!")
			Return
		End If
		'process the payload and show on UX etc
		Select Case odbc.view
		Case "ViewMySQL"
			ViewMySQL.PayloadManager(odbc)
		End Select
	prom.end
End Sub



Sub WebSocket_Disconnected(event As BANanoEvent)
	'Log("Websocket closed")
End Sub

'add all pages
Sub AddRouters
	ViewHome.Initialize
	ViewAbout.Initialize
	ViewUsers.Initialize
	'ViewContacts.Initialize
	'ViewBANanoSQL.Initialize
	'ViewMSSQL.Initialize
	'ViewMySQL.Initialize
	ViewSQLite.Initialize
End Sub


Sub AddDrawer
	appdrawer = vuetify.AddDrawer(Me, app.ID, "appdrawer", "drawershow", False, "", False, Null)
	appdrawer.Width = 300
	appdrawer.App = True
	vuetify.BindVueElement(appdrawer)
	'hide the drawer
	vuetify.SetData(appdrawer.VModel, False)
		
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = vuetify.AddList(Me, appdrawer.id, "drwlist", True, False, False, Null)
	'initialize the listview options, we use the default options to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	'
	'add the group template to the list
	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
	'
	drwlist.ClearItems
	'replace the address bar
	drwlist.RouterReplace = True
	drwlist.AddItemParentChild("", "myapp", "mdi-home", "", "App", "/")
	drwlist.AddItemParentChild("myapp", "home", "mdi-home", "", "Home", "/")
	drwlist.AddItemParentChild("myapp", "users", "mdi-account-group", "", "Users", "/users")
	'
	drwlist.AddItemParentChild("", "backend", "mdi-database", "", "Back End", "")
	'drwlist.AddItemParentChild("backend", "alasqlpage", "mdi-database", "", "BANanoSQL", ViewBANanoSQL.path)
	drwlist.AddItemParentChild("backend", "sqlite", "mdi-database", "", "SQLite", ViewSQLite.path)
	'drwlist.AddItemParentChild("backend", "contacts", "mdi-database", "", "MySQL Contacts", "/contacts")
	'drwlist.AddItemParentChild("backend", "mysql", "mdi-database", "", "MySQL", ViewMySQL.path)
	'drwlist.AddItemParentChild("backend", "mssql", "mdi-database", "", "MSSQL", viewmssql.path)
		
	drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
	drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/about")
	
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

''for the indexed DB
'Sub AlaSQLInitialize
'	'create the database
'	Dim db As BANanoSQL
'	db.OpenWait("test", "test")
'	'create the users table
'	Dim users As BANanoALASQLE
'	users.Initialize("test", "users", "id", "id")
'	users.SchemaAddInt(Array("id", "age"))
'	users.SchemaAddText(Array("name"))
'	'schema create table
'	users.SchemaCreateTable
'	users.result = db.ExecuteWait(users.query, users.args)
'	users.FromJSON
'	Select Case users.OK
'	Case False
'		Dim strError As String = users.Error
'		Log(strError)
'	End Select
'End Sub