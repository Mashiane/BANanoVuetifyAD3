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
	Public name As String = "adcombo"
	Private banano As BANano
	Private VComboBox1 As VComboBox
	Private VComboBox2 As VComboBox
	Private VComboBox3 As VComboBox
	Private VComboBox4 As VComboBox
	Private VComboBox5 As VComboBox
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycombo")
	about.BindVueElement(VComboBox1.VElement)
	about.BindVueElement(VComboBox2.VElement)
	about.BindVueElement(VComboBox3.VElement)
	about.BindVueElement(VComboBox4.VElement)
	about.BindVueElement(VComboBox5.VElement)
	
	'set the list items
	VComboBox1.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VComboBox2.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VComboBox3.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	VComboBox4.UpdateItems1(about, Array("Foo", "Bar", "Fizz", "Buzz"))
	
	VComboBox5.Clear(about)
	VComboBox5.AddItem("Foo", "Foo")
	VComboBox5.AddItem("Bar", "Bar")
	VComboBox5.AddItem("Fizz", "Fizz")
	VComboBox5.AddItem("Buzz", "Buzz")
	VComboBox5.Refresh(about)
	
	'set the selected value
	VComboBox1.SetValue(about, "Bar")
	'is multiple, select items
	VComboBox4.SetValue(about, Array("Bar","Fizz"))
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Private Sub VComboBox1_Change (item As Object)
	vuetify.ShowSwalToastInfo(banano.ToJson(item), 1000)
End Sub