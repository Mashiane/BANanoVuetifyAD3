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
	Public name As String = "adchips"
	Private banano As BANano
	Private contAD As VueElement
	Private chipad1 As VChip
	Private VChip1 As VChip
	Private VChip2 As VChip
	Private VChip3 As VChip
	Private VChip4 As VChip
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	contAD = about.Page.AddContainer("contadchips", True)
	contAD.AddRows(1).AddColumns12
	contAD.BuildGrid
	'
	contAD.Matrix(1, 1).LoadLayout("mychips")
	
	about.BindVueElement(chipad1.VElement)
	about.BindVueElement(VChip1.VElement)
	'	
	about.SetCreated(Me, "oncreated", Null)

	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub oncreated
	chipad1.UpdateVisible(about, True)
End Sub

Private Sub chipad1_ClickClose (e As BANanoEvent)
	chipad1.UpdateVisible(about, False)
End Sub

Private Sub VChip1_Click (e As BANanoEvent)
	vuetify.ShowSwalToastSuccess("Colored Chip", 2000)
End Sub