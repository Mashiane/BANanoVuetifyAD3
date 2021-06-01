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
	Public name As String = "adselects"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private VSelect1 As VSelect
	Private VSelect2 As VSelect
	Private VSelect3 As VSelect
	Private VSelect4 As VSelect
	Private VSelect5 As VSelect
	Private VSelect6 As VSelect
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myselects")
	about.BindVueElement(VSelect1.VElement)
	about.BindVueElement(VSelect2.VElement)
	about.BindVueElement(VSelect3.VElement)
	about.BindVueElement(VSelect4.VElement)
	about.BindVueElement(VSelect5.VElement)
	about.BindVueElement(VSelect6.VElement)
	
	'set the list items
	VSelect1.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VSelect2.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VSelect3.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VSelect5.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VSelect6.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	
	VSelect4.Clear(about)
	VSelect4.AddItem("Foo", "Foo")
	VSelect4.AddItem("Bar", "Bar")
	VSelect4.AddItem("Fizz", "Fizz")
	VSelect4.AddItem("Buzz", "Buzz")
	VSelect4.Refresh(about)
	
	'set the selected value
	VSelect1.SetValue(about, "Bar")
	'is multiple, select items
	VSelect4.SetValue(about, Array("Bar","Fizz"))
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VSelect3_Change (item As Object)
	vuetify.ShowSwalToastInfo(item, 1000)
End Sub

Private Sub VSelect2_Change (item As Object)
	vuetify.ShowSwalToastInfo(item, 1000)
End Sub

Private Sub VSelect1_Change (item As Object)
	vuetify.ShowSwalToastInfo(item, 1000)
End Sub