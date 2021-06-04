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
	Public name As String = "adcolorpicker"
	Private banano As BANano
	
	Private VCol1 As VCol
	Private VCol2 As VCol
	Private VColorPicker1 As VColorPicker
	Private VColorPicker2 As VColorPicker
	Private VContainer1 As VContainer
	Private VRow1 As VRow
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycolorpicker")
	'
	about.BindVueElement(VCol1.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VColorPicker1.VElement)
about.BindVueElement(VColorPicker2.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VRow1.VElement)


	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VColorPicker1_Input (color As String)
	vuetify.ShowSwalNotificationSuccess(color, 1000)
End Sub