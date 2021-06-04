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
	Public name As String = "adbottomsheet"
	Private banano As BANano
	Private VBtn1 As VBtn
	Private VBottomSheet1 As VBottomSheet
	Private VBtn2 As VBtn
	Private VBottomSheet2 As VBottomSheet
	Private VBtn4 As VBtn
	Private VBtn3 As VBtn
	Private VContainer1 As VContainer
	Private VLabel1 As VLabel
	Private VLabel2 As VLabel
	Private VSheet1 As VSheet
	Private VSheet2 As VSheet
	Private VToolBar1 As VToolBar
	Private VToolBar2 As VToolBar
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mybottomsheet")
	'
	about.BindVueElement(VBottomSheet1.VElement)
	about.BindVueElement(VBottomSheet2.VElement)
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(VBtn2.VElement)
	about.BindVueElement(VBtn4.VElement)
	about.BindVueElement(VBtn3.VElement)
	'
	about.BindVueElement(VContainer1.VElement)
	about.BindVueElement(VLabel1.VElement)
	about.BindVueElement(VLabel2.VElement)
	about.BindVueElement(VSheet1.VElement)
	about.BindVueElement(VSheet2.VElement)
	about.BindVueElement(VToolBar1.VElement)
	about.BindVueElement(VToolBar2.VElement)
		
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VBtn1_Click (e As BANanoEvent)
	VBottomSheet1.UpdateVisible(about, True)
End Sub

Private Sub VBtn2_Click (e As BANanoEvent)
	VBottomSheet1.UpdateVisible(about, False)
End Sub

Private Sub VBtn4_Click (e As BANanoEvent)
	VBottomSheet2.UpdateVisible(about, False)
End Sub

Private Sub VBtn3_Click (e As BANanoEvent)
	VBottomSheet2.UpdateVisible(about, True)
End Sub