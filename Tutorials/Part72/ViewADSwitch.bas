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
	Private VCol1 As VCol
	Private VCol2 As VCol
	Private VCol3 As VCol
	Private VCol4 As VCol
	Private VCol5 As VCol
	Private VCol6 As VCol
	Private VCol7 As VCol
	Private VCol8 As VCol
	Private VContainer1 As VContainer
	Private VRow1 As VRow
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
about.BindVueElement(VCol1.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VCol3.VElement)
about.BindVueElement(VCol4.VElement)
about.BindVueElement(VCol5.VElement)
about.BindVueElement(VCol6.VElement)
about.BindVueElement(VCol7.VElement)
about.BindVueElement(VCol8.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VRow1.VElement)

	VSwitch3.UpdateLoading(about, True)
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