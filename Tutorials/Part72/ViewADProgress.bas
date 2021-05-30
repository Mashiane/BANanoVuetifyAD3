B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adprogress"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private VProgressCircular1 As VProgressCircular
	Private VProgressCircular2 As VProgressCircular
	Private VProgressCircular3 As VProgressCircular
	Private VProgressLinear1 As VProgressLinear
	Private VProgressLinear2 As VProgressLinear
	Private VProgressCircular8 As VProgressCircular
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myprogress")
	'
	about.BindVueElement(VProgressLinear1.VElement)
	about.BindVueElement(VProgressLinear2.VElement)
		
	about.BindVueElement(VProgressCircular1.VElement)
	about.BindVueElement(VProgressCircular2.VElement)
	about.BindVueElement(VProgressCircular3.VElement)
	about.BindVueElement(VProgressCircular8.VElement)
	
	VProgressCircular1.SetValue(about, 5)
	VProgressCircular1.SetValue(about, 10)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

