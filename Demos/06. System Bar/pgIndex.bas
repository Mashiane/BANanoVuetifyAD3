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
	Private vavatar As VueElement
	Private vbtn As VueElement
	Private vicon As VueElement
	Private vcol As VueElement
	Private vcontainer As VueElement
	Private vrow As VueElement
	Private vsystembar As VueElement
	Private vcol1 As VueElement
	Private vsheet As VueElement
	Private vstrong As VueElement
	Private vtemplate As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "wsystembar")
	BANano.LoadLayout("#placeholder", "vcontainer")
	vuetify.BindVueElement(vnavigationdrawer)
	vuetify.BindVueElement(vmain)
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.BindVueElement(vtoolbartitle)
	vuetify.BindVueElement(vapp)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vavatar)
	vuetify.BindVueElement(vbtn)
	vuetify.BindVueElement(vicon)
	vuetify.BindVueElement(vsystembar)
	vuetify.BindVueElement(vcol)
	vuetify.BindVueElement(vrow)
	vuetify.BindVueElement(vsheet)
	vuetify.BindVueElement(vsystembar)
	vuetify.BindVueElement(vstrong)
	vuetify.BindVueElement(vtemplate)
	vuetify.BindVueElement(vcontainer)
	vuetify.BindVueElement(vcol1)
	'
	
	vtoolbartitle.Caption = "WireFrame: System Bar"
	vnavigationdrawer.AddAttr("fixed", True)
	vnavigationdrawer.AddAttr("temporary", True)
	vmain.classes = "grey lighten-2"
	vcol1.AddAttr(":key", "`${n}${j}`")
	
	'render the ux
	vmain.AppendPlaceHolder
	vuetify.Serve
	'
	Log(vuetify.Template)
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub