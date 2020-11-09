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
	Private vnavigationdrawer As VueElement
	Private vappbarnavicon As VueElement
	Private vtoolbartitle As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vapp")
	
	'append v-main to vapp
	BANano.LoadLayout("#placeholder", "vmain")
	vuetify.AppendPlaceHolderTo("vapp")
	
	'append v-navigation-drawer to vapp
	BANano.LoadLayout("#placeholder", "vnavigationdrawer")
	'the navdrawer has been loaded, lets bind it to the app
	vuetify.BindVueElement(vnavigationdrawer)
	vuetify.AppendPlaceHolderTo("vapp")
	
	'append appbar to vapp
	BANano.LoadLayout("#placeholder", "vappbar")
	vuetify.AppendPlaceHolderTo("vapp")
	
	'append hamburger button to v-app-bar
	BANano.LoadLayout("#placeholder", "vappbarnavicon")
	'bind the hamburger
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.AppendPlaceHolderTo("vappbar")
	
	'append toolbar title to v-app-bar
	BANano.LoadLayout("#placeholder", "vtoolbartitle")
	vuetify.BindVueElement(vtoolbartitle)
	vtoolbartitle.Caption = "WireFrame: Baseline"
	vuetify.AppendPlaceHolderTo("vappbar")
	
	'render the ux
	vuetify.Serve
End Sub

'
Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub