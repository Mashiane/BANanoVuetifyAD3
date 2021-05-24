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
	Public name As String = "designs"
	Private banano As BANano
	Private contAD As VueElement
	Private VBtn2 As VBtn
	Private VBtn4 As VBtn
	Private VBtn6 As VBtn
	Private VIcon1 As VIcon
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	contAD = about.Page.AddContainer("contad", True)
	contAD.AddRows(1).AddColumns12
	contAD.BuildGrid
	'
	contAD.Matrix(1, 1).LoadLayout("mybuttons")
	'
	'bind events
	about.BindVueElement(VBtn2.VElement)
	about.BindVueElement(VBtn4.VElement)
	about.BindVueElement(VBtn6.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Private Sub VBtn6_Click (e As BANanoEvent)
	VBtn6.Loading(about, True)
	vuetify.SetTimeOut(Me, "turnoff", 3000)
End Sub

Private Sub VBtn2_Click (e As BANanoEvent)
	vuetify.ShowSwal("vbtn2")
End Sub

Private Sub VBtn4_Click (e As BANanoEvent)
	vuetify.ShowSwal("vbtn4")
End Sub

Sub turnoff
	VBtn6.Loading(about, False)
End Sub
