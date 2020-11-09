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
	Private vapp As VueElement
	Private vappbar As VueElement
	Private vmain As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vbaseline")
	vtoolbartitle.Caption = "WireFrame: Baseline"
	'
	vuetify.BindVueElement(vnavigationdrawer)
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.BindVueElement(vtoolbartitle)
	vuetify.BindVueElement(vapp)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vmain)
	
	'render the ux
	vuetify.Serve
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub