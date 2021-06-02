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
	Public name As String = "adfileinput"
	Private banano As BANano
	Private VFileInput1 As VFileInput
	Private VFileInput2 As VFileInput
	Private VFileInput3 As VFileInput
	Private VFileInput4 As VFileInput
	Private VFileInput5 As VFileInput
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myfiles")
	
	about.BindVueElement(VFileInput1.VElement)
	about.BindVueElement(VFileInput2.VElement)
	about.BindVueElement(VFileInput3.VElement)
	about.BindVueElement(VFileInput4.VElement)
	about.BindVueElement(VFileInput5.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VFileInput4_Change (item As Object)
	Log(item)
End Sub

Private Sub VFileInput3_Change (item As Object)
	Log(item)
End Sub

Private Sub VFileInput2_Change (item As Object)
	Log(item)
End Sub

Private Sub VFileInput1_Change (item As Object)
	Log(item)
End Sub

Private Sub VFileInput5_Change (item As Object)
	VFileInput5.UpdateLoading(about, True)
	about.SetTimeOut("hideprogress", 3000)
	Log(item)
End Sub

Sub hideprogress
	VFileInput5.UpdateLoading(about, False)
	VFileInput5.Clear(about)
End Sub

Private Sub VFileInput5_Button_Click (e As BANanoEvent)
	'get the refs
	about.refs = vuetify.GetRefs
	VFileInput5.Click(about)
End Sub