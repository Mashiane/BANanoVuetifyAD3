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
	Public name As String = "adsliders"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private VSlider1 As VSlider
	Private VSlider2 As VSlider
	Private VSlider3 As VSlider
	Private VSlider4 As VSlider
	Private VSlider5 As VSlider
	Private VSlider6 As VSlider
	Private VRangeSlider1 As VRangeSlider
	Private btnGetRange1 As VBtn
	Private btnGetSlider As VBtn
	Private btnSetRange1 As VBtn
	Private btnSetSlider1 As VBtn
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mysliders")
	about.BindVueElement(btnGetRange1.VElement)
	about.BindVueElement(btnGetSlider.VElement)
	about.BindVueElement(btnSetRange1.VElement)
	about.BindVueElement(btnSetSlider1.VElement)
	
	
	VSlider1.SetValue(about, 25)
	about.BindVueElement(VSlider1.VElement)
	'
	VSlider2.SetValue(about, 75)
	about.BindVueElement(VSlider2.VElement)
	'
	about.BindVueElement(VSlider3.VElement)
	about.BindVueElement(VSlider4.VElement)
	about.BindVueElement(VSlider5.VElement)
	
	VSlider6.AddRule("checkRule6")
	about.BindVueElement(VSlider6.VElement)
	'
	about.BindVueElement(VRangeSlider1.VElement)
	
	VSlider5.UpdateTickLabels(about, Array("Figs", "Lemon", "Pear", "Apple"))
	VSlider5.SetValue(about, 1)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub checkRule6(v As Object) As Object	'ignoredeadcode
	v = banano.parseInt(v)
	If v > 40 Then
		Return "There are only 40 items in stock"
	Else
		Return True
	End If
End Sub


Private Sub VSlider1_Change (num As Object)
	vuetify.ShowSwalToastInfo(num, 1000)
End Sub

Private Sub VSlider2_Change (num As Object)
	vuetify.ShowSwalToastInfo(num, 1000)
End Sub

Private Sub VSlider4_ClickAppend (e As BANanoEvent)
	about.Increment(VSlider4.VModel)
End Sub

Private Sub VSlider4_ClickPrepend (e As BANanoEvent)
	about.Decrement(VSlider4.VModel)
End Sub

Private Sub VRangeSlider1_Change (nums As List)
	Dim sValues As String = banano.ToJson(nums)
	vuetify.ShowSwalToastInfo(sValues, 1000)
End Sub

Private Sub btnSetSlider1_Click (e As BANanoEvent)
	VSlider1.SetValue(about, 67)
End Sub

Private Sub btnSetRange1_Click (e As BANanoEvent)
	VRangeSlider1.SetValue(about, 60, 80)
End Sub

Private Sub btnGetSlider_Click (e As BANanoEvent)
	Dim snum As String = VSlider1.GetValue(about)
	vuetify.ShowSwalToastInfo("Get Slider: " & snum, 1000)
End Sub

Private Sub btnGetRange1_Click (e As BANanoEvent)
	Dim nums As List = VRangeSlider1.GetValue(about)
	Dim sValues As String = banano.ToJson(nums)
	vuetify.ShowSwalToastInfo("Get Range: " & sValues, 1000)
End Sub