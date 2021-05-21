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
	Public name As String = "adfabs"
	Private banano As BANano
	Private VFAB1 As VFAB
	Private VFAB2 As VFAB
	Private VFAB3 As VFAB
	Private VFAB4 As VFAB
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	Dim contfab1 As VueElement = about.Page.AddContainer("contfab1", True)
	banano.LoadLayout(contfab1.Here, "fabs")
	
	about.BindVueElement(VFAB1.VElement)
	about.BindVueElement(VFAB2.VElement)
	about.BindVueElement(VFAB3.VElement)
	about.BindVueElement(VFAB4.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VFAB4_Click (e As BANanoEvent)
	vuetify.ShowSwalInfo("4")
End Sub

Private Sub VFAB3_Click (e As BANanoEvent)
		vuetify.ShowSwalInfo("3")
End Sub

Private Sub VFAB2_Click (e As BANanoEvent)
		vuetify.ShowSwalInfo("2")
End Sub

Private Sub VFAB1_Click (e As BANanoEvent)
		vuetify.ShowSwalInfo("1")
End Sub