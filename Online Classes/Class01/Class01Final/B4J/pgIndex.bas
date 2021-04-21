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
	'load the app container, this loads the inspire element
	BANano.LoadLayout(vuetify.Here, "lvapp")
	'build the navbar
	BuildNavigationBar
	'build the drawer
	BuildDrawer
	'build the page viewer
	BuildPageViewer
	'build the snackbar
	BuildSnackBar
	'render the ux
	vuetify.Serve
End Sub

Sub BuildNavigationBar
	'add the v-app-bar inside the v-app
	BANano.LoadLayoutAppend(inspire.Target, "lvappbar")
	'add the hamburger button
	BANano.LoadLayoutAppend(vappbar.Target, "lvappbarnavicon")
	'bind events
	vuetify.BindVueElement(vappbarnavicon)
	'add the title bar
	BANano.LoadLayoutAppend(vappbar.Target, "lvtoolbartitle")
End Sub

Sub BuildPageViewer
	BANano.LoadLayoutAppend(inspire.Target, "lvmain")
End Sub

Sub BuildSnackBar
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawer
	BANano.LoadLayoutAppend(inspire.Target, "lvnavigationdrawer")
	'bind events and v-model
	vuetify.BindVueElement(vnavigationdrawer)
End Sub



Private Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle the drawer
	vuetify.Toggle("drawer")
End Sub