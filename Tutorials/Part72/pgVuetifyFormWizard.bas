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
	Public name As String = "vfw"
	Private banano As BANano
	Private vsw1 As VueSimpleWizard
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	Dim vfwcont As VueElement = about.Page.AddContainer("vfwcont", False)
	vfwcont.AddRows1.AddColumns12
	vfwcont.BuildGrid
	'
	Dim r1c1 As String = vfwcont.CellID(1, 1)
	banano.LoadLayout($"#${r1c1}"$, "lvfw")
	'
	vsw1.ClearSteps
	vsw1.AddStep("step1", "Step 1", "", "", True, False, False)
	vsw1.AddStep("step2", "Step 2", "", "", False, False, False)
	vsw1.AddStep("step3", "Step 3", "", "", False, False, False)
	vsw1.AddStep("step4", "Step 4", "", "", False, False, False)
	'
	Dim step1Cont As VueElement = vsw1.GetSlot("step1").AddContainer("step1cont", False)
	step1Cont.AddRows2.AddColumns12
	step1Cont.BuildGrid
	'
	Dim txtFirstName As VueElement = step1Cont.Cell(1, 1).AddTextField1("txtfirstname", "fname", "First Name", Null)
	about.BindVueElement(txtFirstName)
	
	about.BindVueSimpleWizard(vsw1)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub vsw1_nextClicked (currentPage As Map)
	Log("nextclicked...")
	Log(currentPage)
End Sub

Private Sub vsw1_backClicked (currentPage As Map)
	Log("back clicked")
	Log(currentPage)
End Sub