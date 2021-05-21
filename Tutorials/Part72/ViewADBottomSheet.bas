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
	
	Log(VBottomSheet1.VElement.ToString)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VBtn1_Click (e As BANanoEvent)
	VBottomSheet1.Visible(about, True)
End Sub

Private Sub VBtn2_Click (e As BANanoEvent)
	VBottomSheet1.Visible(about, False)
End Sub

Private Sub VBtn4_Click (e As BANanoEvent)
	VBottomSheet2.Visible(about, False)
End Sub

Private Sub VBtn3_Click (e As BANanoEvent)
	VBottomSheet2.Visible(about, True)
End Sub