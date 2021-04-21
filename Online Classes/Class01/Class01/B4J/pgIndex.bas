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
	Private vnavigationdrawer As VueElement
	Private vappbar As VueElement
	Private vappbarnavicon As VueElement
	Private vtoolbartitle As VueElement
	Private vmain As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me, Main.AppName)
	'add the v-app
	BANano.LoadLayout(vuetify.here, "lvapp")
	'build the navbar
	BuildNavigationBar
	'build the drawer
	BuildDrawer
	'build the page viewer
	'render the ux
	vuetify.Serve
End Sub

Sub BuildNavigationBar
	'add the v-app-var to the v-app
	BANano.LoadLayoutAppend(vapp.target, "lvappbar")
	vappbar.App = True
	'add the hamburger to the v-app-bar
	BANano.LoadLayoutAppend(vappbar.Target, "lvappbarnavicon")
	'bind the hamburger to the app
	vuetify.BindVueElement(vappbarnavicon)
	'add a title to the v-app-bar
	BANano.LoadLayoutAppend(vappbar.Target, "lvtoolbartitle")
	'update the title in the navbar
	vtoolbartitle.Caption = "Application"
End Sub

Sub BuildPageViewer
	'add the v-main to the v-app
	BANano.LoadLayoutAppend(vapp.target, "lvmain")
End Sub

Sub BuildSnackBar
End Sub

'add all pages
Sub AddPages
	ViewHome.Initialize 
End Sub

Sub BuildDrawer
	'add the drawer to the v-app
	BANano.LoadLayoutAppend("#vapp", "lvnavigationdrawer")
	'set the v-model of the drawer
	vnavigationdrawer.VModel = "drawer"
	vnavigationdrawer.App = True
	vuetify.BindVueElement(vnavigationdrawer)
	'the drawer should be hidden
	vuetify.SetData("drawer", False)	
End Sub

Private Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle the drawer when hamburger is clicked
	vuetify.Toggle("drawer")	
End Sub