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
	Public name As String = "adautocomplete"
	Private banano As BANano
	Private VAutocomplete1 As VAutoComplete
	Private VAutocomplete2 As VAutoComplete
	Private VAutocomplete3 As VAutoComplete
	Private VAutocomplete4 As VAutoComplete
	Private VAutocomplete5 As VAutoComplete
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myautocomplete")
	about.BindVueElement(VAutocomplete1.VElement)
	about.BindVueElement(VAutocomplete2.VElement)
	about.BindVueElement(VAutocomplete3.VElement)
	about.BindVueElement(VAutocomplete4.VElement)
	about.BindVueElement(VAutocomplete5.VElement)
	
	'set the list items
	VAutocomplete1.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VAutocomplete2.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VAutocomplete3.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VAutocomplete4.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	
	VAutocomplete5.Clear(about)
	VAutocomplete5.AddItem("Foo", "Foo")
	VAutocomplete5.AddItem("Bar", "Bar")
	VAutocomplete5.AddItem("Fizz", "Fizz")
	VAutocomplete5.AddItem("Buzz", "Buzz")
	VAutocomplete5.Refresh(about)
	
	'set the selected value
	VAutocomplete1.SetValue(about, "Bar")
	'is multiple, select items
	VAutocomplete5.SetValue(about, Array("Bar","Fizz"))
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VAutocomplete1_Change (item As Object)
	vuetify.ShowSwalToastInfo(item, 1000)
End Sub