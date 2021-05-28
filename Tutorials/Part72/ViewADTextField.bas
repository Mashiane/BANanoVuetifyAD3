B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.95
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adtextfield"
	Private banano As BANano
	Private VTextField1 As VTextField
	Private VTextField2 As VTextField
	Private VTextField3 As VTextField
	Private VTextField4 As VTextField
	Private VTextField5 As VTextField
	Private VTextField6 As VTextField
	Private VTextField7 As VTextField
	Private VTextField8 As VTextField
	Private VTextField9 As VTextField
	Private VTextField10 As VTextField
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mytextfields")
	'
	about.BindVueElement(VTextField1.VElement)
	about.BindVueElement(VTextField2.VElement)
	about.BindVueElement(VTextField3.VElement)
	about.BindVueElement(VTextField4.VElement)
	about.BindVueElement(VTextField5.VElement)
	about.BindVueElement(VTextField6.VElement)
	about.BindVueElement(VTextField7.VElement)
	about.BindVueElement(VTextField8.VElement)
	about.BindVueElement(VTextField9.VElement)
	about.BindVueElement(VTextField10.VElement)
	
		
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VTextField9_ClickAppend (e As BANanoEvent)
	VTextField9.TogglePassword(about)
End Sub