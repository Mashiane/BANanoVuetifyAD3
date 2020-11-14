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
	Private btnOk As VueElement
	Private vappbarnavicon As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'load the baseline layer to the app template
	BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	'bind events for elements
	vuetify.BindVueElement(btnOk)
	vuetify.BindVueElement(vappbarnavicon)
	
	'render the ux
	vuetify.Serve
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	Log("btnHamburger_click")
End Sub

Sub btnOk_Click (e As BANanoEvent)
	Log("btnOK_click")
End Sub