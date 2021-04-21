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
	'define the template HTML
	Dim sTemplate As String = $"<v-app id="inspire">
	<v-navigation-drawer id="vnavigationdrawer" v-model="drawer" app>
	</v-navigation-drawer>
	<v-app-bar id="vappbar" app>
	<v-app-bar-nav-icon id="vappbarnavicon"></v-app-bar-nav-icon>
	<v-toolbar-title id="vtoolbartitle">Application</v-toolbar-title>
	</v-app-bar>
	<v-main id="vmain"></v-main>
	</v-app>"$
  	'inject the html to the app
  	vuetify.SetTemplate(sTemplate)
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
	'get the element
	vappbarnavicon = vuetify.GetVueElement(Me, "vappbarnavicon")
	'bind all events
	vappbarnavicon.BindAllEvents
	'bind the element
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
	vnavigationdrawer = vuetify.GetVueElement(Me, "vnavigationdrawer")
	vnavigationdrawer.BindAllEvents
	'initialize the state
	vuetify.SetData("drawer", False)
	'bind events and v-model
	vuetify.BindVueElement(vnavigationdrawer)
End Sub


Private Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle the drawer
	vuetify.Toggle("drawer")
End Sub