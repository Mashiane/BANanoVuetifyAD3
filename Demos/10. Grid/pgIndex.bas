B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Private BANano As BANano
	Private vsnackbar As VueElement
	Private routerview As VueElement
	Private vappbar As VueElement
	Private vappbarnavicon As VueElement
	Private vmain As VueElement
	Private vnavigationdrawer As VueElement
	Private vtoolbartitle As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'initialize and import the component
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vbaseline")
	vuetify.BindVueElement(vsnackbar)
	vuetify.BindVueElement(routerview)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.BindVueElement(vmain)
	vuetify.BindVueElement(vtoolbartitle)
	vuetify.BindVueElement(vnavigationdrawer)
	'
	vuetify.SetData("apptitle", Main.AppTitle)
	
	' set up snack bar stuff: depends on the vsnackbar layout
	vuetify.SnackBarInitialize
	'
	CompHome.Initialize 
	
	'render the ux
	vuetify.Serve
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub