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
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vhomecontainer As VueElement
End Sub


Sub Initialize
	vuetify = pgIndex.vuetify 
	home.Initialize(Me, name)
	home.Path = "/"
	path = home.path
	'
	BANano.LoadLayout("#placeholder", "vhomecontainer")
	home.BindVueElement(vhomecontainer)
	'
		
	
	home.AppendPlaceHolder
	vuetify.AddRoute(home)
End Sub
