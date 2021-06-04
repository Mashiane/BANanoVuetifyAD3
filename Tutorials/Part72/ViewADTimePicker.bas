B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adtime"
	Private banano As BANano
	Private VCol1 As VCol
	Private VCol2 As VCol
	Private VCol3 As VCol
	Private VContainer1 As VContainer
	Private VRow1 As VRow
	Private VRow2 As VRow
	Private VRow3 As VRow
	Private VTimePicker1 As VTimePicker
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mytime")
	'
	about.BindVueElement(VCol1.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VCol3.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VRow1.VElement)
about.BindVueElement(VRow2.VElement)
about.BindVueElement(VRow3.VElement)
about.BindVueElement(VTimePicker1.VElement)

	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VTimePicker1_Change (item As String)
	vuetify.ShowSwal(item)
End Sub