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
	Private vcontainer As VueElement
	Private vappbarnavicon As VueElement
	Private vtoolbartitle As VueElement
	Private vbtn As VueElement
	Private vappbar As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'load the vapp to the app template
	BANano.LoadLayout(vuetify.apptemplatename, "vapp")
	'load main
	BANano.LoadLayout("#vapp", "vmain")
	'load container
	BANano.LoadLayout("#vmain", "vcontainer")
	vcontainer.Caption = "Welcome to BANanoVuetifyAD3"
	'load appbar to a placeholder as vapp already has content
	BANano.LoadLayout(vuetify.PlaceHolderName, "vappbar")
	'update the structure of vapp
	vapp.AppendPlaceHolder
	'load hamburger
	BANano.LoadLayout(vuetify.PlaceHolderName, "vappbarnavicon")
	vappbar.AppendPlaceHolder
	'load toolbar
	BANano.LoadLayout(vuetify.PlaceHolderName, "vtoolbartitle")
	'make the title dynamic
	vtoolbartitle.Caption = "{{ title }}"
	vappbar.AppendPlaceHolder
	'add a spacer
	BANano.loadlayout(vuetify.PlaceHolderName, "vspacer")
	vappbar.AppendPlaceHolder
	'add button
	BANano.LoadLayout(vuetify.PlaceHolderName, "vbtn")
	vbtn.Caption = "Ok"
	vappbar.AppendPlaceHolder
	'initialize the value of the title state
	vuetify.SetData("title", "My Vuetify App in BANano")
	'
	'bind the button
	vuetify.BindVueElement(vbtn)
	
	'render the ux
	vuetify.Serve
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	
End Sub

Sub vbtn_Click (e As BANanoEvent)
	'change the state of the title to a new value
	vuetify.SetData("title", "Anele Mbanga (Mashy)")
End Sub