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
	Private inspire As VueElement
	Private vappbar As VueElement
	Private vappbarnavicon As VueElement
	Private vmain As VueElement
	Private vnavigationdrawer As VueElement
	Private vtoolbartitle As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	
	'add the v-app
	inspire = vuetify.AddApp
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
	vappbar = inspire.AddAppBar("vappbar")
	vappbar.App = True
	vuetify.BindVueElement(vappbar)
	
	'add a hamburger
	vappbarnavicon = vappbar.AddAppBarNavIcon("vappbarnavicon")
	vuetify.BindVueElement(vappbarnavicon)
	
	'add toolbar title
	vtoolbartitle = vappbar.AddToolbarTitle("vtoolbartitle", Main.AppTitle, "", Null)
	vuetify.BindVueElement(vtoolbartitle)
End Sub

Sub BuildPageViewer
	'add main container
	vmain = inspire.AddMain
	vuetify.BindVueElement(vmain)
End Sub

Sub BuildSnackBar
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawer
	vnavigationdrawer = inspire.AddDrawer("vnavigationdrawer", "drawer", False, "", False, Null)
	vnavigationdrawer.App = True
	vuetify.BindVueElement(vnavigationdrawer)
	'hide the drawer
	vuetify.SetData("drawer", False)
End Sub

'hamburger clicked
Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("drawer")
End Sub
