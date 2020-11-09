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
	Private vcard As VueElement
	Private vcol As VueElement
	Private vcontainer As VueElement
	Private vrow As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vbaseline")
	vtoolbartitle.Caption = "WireFrame: SideNavigation"
	vappbar.AddAttr("shrink-on-scroll", True)
	'
	vnavigationdrawer.AddClass("pt-4")
	vnavigationdrawer.color = "grey lighten-3"
	vnavigationdrawer.SetAttr("mini-variant", True)
	'
	BANano.LoadLayout("#placeholder", "vavatar")
	vavatar.VFor = "n in 6"
	vavatar.AddAttr(":key", "n")
	vavatar.AddAttr(":color", "`grey ${n === 1 ? 'darken' : 'lighten'}-1`")
	vavatar.AddAttr(":size", "n === 1 ? 36 : 20")
	vavatar.AddClass("d-block text-center mx-auto mb-9")
	'the attributes start with :, they will be bound automatically to a state value
	'we remove the code bindings as these are calculated values
	vavatar.RemoveCodeBindings(Array("key", "color", "size"))
	'add the avatar to the drawer
	vnavigationdrawer.AppendPlaceHolder
	'
	'add a spacer to the toolbar
	BANano.LoadLayout("#placeholder", "vspacer")
	vappbar.AppendPlaceHolder
	'
	'add a v-btn + v-icon to the toolbar
	BANano.LoadLayout("#placeholder", "vbtnvicon")
	vicon.Caption = "mdi-dots-vertical"
	vappbar.AppendPlaceHolder
	'
	'add a v-container to v-main
	BANano.LoadLayout("#placeholder", "vcontainer")
	vcol.RemoveCodeBindings(Array("key"))
	vmain.AppendPlaceHolder
	'
	vuetify.BindVueElement(vnavigationdrawer)
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.BindVueElement(vtoolbartitle)
	vuetify.BindVueElement(vapp)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vmain)
	vuetify.BindVueElement(vavatar)
	vuetify.BindVueElement(vbtn)
	vuetify.BindVueElement(vicon)
	'
	'APPLY CHANGES AFTER BINDINGS
	'open the app drawer
	vuetify.SetData("appdrawer", True)
	
	'render the ux
	vuetify.Serve
	'
	Log(vuetify.Template)
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub