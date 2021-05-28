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
	Public name As String = "adswitch"
	Private banano As BANano
	Private VSwitch1 As VSwitch
	Private VSwitch2 As VSwitch
	Private VSwitch3 As VSwitch
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myswitch")
	
	about.BindVueElement(VSwitch1.VElement)
	about.BindVueElement(VSwitch2.VElement)
	about.BindVueElement(VSwitch3.VElement)

	VSwitch3.Loading(about, True)
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VSwitch1_Change(item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub

Private Sub VSwitch3_Change(item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub

Private Sub VSwitch2_Change(item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub