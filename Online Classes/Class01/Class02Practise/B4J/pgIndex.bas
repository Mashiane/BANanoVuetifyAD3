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
	vuetify.BindVueElement(vappbarnavicon)
End Sub

Sub BuildPageViewer
End Sub

Sub BuildSnackBar
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawer
	'bind events and v-model
	vuetify.BindVueElement(vnavigationdrawer)
End Sub


Private Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle the drawer
	vuetify.Toggle("drawer")
End Sub