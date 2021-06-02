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
	Public name As String = "adcheckboxes"
	Private banano As BANano
	Private VCheckBox1 As VCheckBox
	Private VCheckBox2 As VCheckBox
	Private VCheckBox3 As VCheckBox
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycheckboxes")
	'
	about.BindVueElement(VCheckBox1.VElement)
	about.BindVueElement(VCheckBox2.VElement)
	about.BindVueElement(VCheckBox3.VElement)
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VCheckBox3_Change (item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub

Private Sub VCheckBox2_Change (item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub

Private Sub VCheckBox1_Change (item As Object)
	vuetify.ShowSwalToastSuccess(item, 1000)
End Sub