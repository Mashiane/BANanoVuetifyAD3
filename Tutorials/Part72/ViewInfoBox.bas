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
	Public name As String = "infobox"
	Private banano As BANano
	Private contInfo As VueElement
	
	Private info1 As VueInfoBox
	Private info2 As VueInfoBox
	Private info3 As VueInfoBox
	Private info4 As VueInfoBox
	Private info5 As VueInfoBox
	Private info6 As VueInfoBox
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	contInfo = about.Page.AddContainer("continfo", True)
	contInfo.AddRows5.AddColumns2x6
	contInfo.BuildGrid
	'
	contInfo.Matrix(1, 1).LoadLayout("vinfo1")
	contInfo.Matrix(1, 2).LoadLayout("boxmsgs")
	contInfo.Matrix(2, 1).LoadLayout("vinfor2")
	'
	Dim btnCountPlay As VueElement = contInfo.Cell(2, 1).AddButtonWithIcon("btnCountPlay", "mdi-play", "", Null, Null)
	about.BindVueElement(btnCountPlay)
	'
	Dim btnCountPause As VueElement = contInfo.Cell(2, 1).AddButtonWithIcon("btnCountPause", "mdi-pause", "", Null, Null)
	about.BindVueElement(btnCountPause)
	'
	Dim btnCountReset As VueElement = contInfo.Cell(2, 1).AddButtonWithIcon("btnCountReset", "mdi-refresh", "", Null, Null)
	about.BindVueElement(btnCountReset)
	
	contInfo.Matrix(2, 2).LoadLayout("vinfo4")
	contInfo.Matrix(3, 1).LoadLayout("vinfo5")
	contInfo.Matrix(3, 2).LoadLayout("vinfo6")
	'
	about.BindInfoBox(info1)
	about.BindInfoBox(info2)
	about.BindInfoBox(info3)
	about.BindInfoBox(info4)
	about.BindInfoBox(info5)
	about.BindInfoBox(info6)
		
	'add the component as a router
	vuetify.AddRoute(about)
End Sub

Sub btnCountPlay_click(e As BANanoEvent)
	about.refs = vuetify.GetRefs
	info3.start(about)
End Sub

Sub btnCountPause_click(e As BANanoEvent)
	about.refs = vuetify.GetRefs
	info3.pause(about)
End Sub

Sub btnCountReset_click(e As BANanoEvent)
	about.refs = vuetify.GetRefs
	info3.reset(about)
End Sub



Private Sub info2_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info2")
End Sub

Private Sub info1_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info1")
End Sub

Private Sub info4_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info4")
End Sub

Private Sub info5_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info5")
End Sub

Private Sub info6_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info6")
End Sub

Private Sub info3_Click (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("info3")
End Sub