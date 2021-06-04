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
	Public name As String = "adradio"
	Private banano As BANano
	Private VRadioGroup1 As VRadioGroup
	Private VCol2 As VCol
	Private VContainer1 As VContainer
	Private VRow1 As VRow
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	banano.LoadLayout(about.Here, "myradio")
	
	about.BindVueElement(VRadioGroup1.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VRow1.VElement)

			
	VRadioGroup1.Clear(about)
	VRadioGroup1.AddItem("m", "Males")
	VRadioGroup1.AddItem("f", "Females")
	VRadioGroup1.AddItem("b", "Boys")
	VRadioGroup1.AddItem("g", "Girls")
	VRadioGroup1.Refresh(about)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VRadio1_Change(item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub

Private Sub VRadioGroup1_Change(item As Object)
	vuetify.ShowSwalToastInfo(item, 1000)
End Sub