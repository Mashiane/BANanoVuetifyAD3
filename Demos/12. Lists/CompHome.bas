B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public home As VueComponent
	Public name As String = "home"
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vhomecontainer As VueElement
	Private homer3c2 As VueElement

End Sub


Sub Initialize
	vuetify = pgIndex.vuetify 
	home.Initialize(Me, name)
	home.path = "/"
	'
	BANano.LoadLayout("#placeholder", "vhomecontainer")
	home.BindVueElement(vhomecontainer)
	
	
	
	vhomecontainer.Matrix(3, 2).LoadLayout("vhomer3c2")
	home.BindVueElement(homer3c2)
	homer3c2.Matrix(1, 1).AddClass("text-center green")
	homer3c2.Matrix(1, 2).AddClass("text-center orange")
	'
	homer3c2.Matrix(2, 1).AddClass("text-center blue")
	homer3c2.Matrix(2, 2).AddClass("text-center yellow")
	
	vhomecontainer.Matrix(1, 1).AddClass("text-center success")
	vhomecontainer.Matrix(1, 2).AddClass("text-center warning")
	vhomecontainer.Matrix(1, 3).AddClass("text-center error")
	home.AppendPlaceHolder
	
	vuetify.AddRoute(home)
End Sub
