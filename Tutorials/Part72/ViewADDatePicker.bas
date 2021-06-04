B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "addatepicker"
	Private banano As BANano
	Private VCol1 As VCol
	Private VCol2 As VCol
	Private VContainer1 As VContainer
	Private VDatePicker1 As VDatePicker
	Private VRow1 As VRow
	Private VDatePicker2 As VDatePicker
	Private VDatePicker3 As VDatePicker
	Private VDatePicker4 As VDatePicker
	Private VDatePicker5 As VDatePicker
	Private lbldate As VLabel
	Private VCol10 As VCol
	Private VCol11 As VCol
	Private VCol12 As VCol
	Private VCol13 As VCol
	Private VCol14 As VCol
	Private VCol3 As VCol
	Private VCol4 As VCol
	Private VCol5 As VCol
	Private VCol6 As VCol
	Private VCol7 As VCol
	Private VCol8 As VCol
	Private VCol9 As VCol
	Private VDatePicker6 As VDatePicker
	Private VDatePicker7 As VDatePicker
	Private VLabel1 As VLabel
	Private VLabel2 As VLabel
	Private VLabel3 As VLabel
	Private VLabel4 As VLabel
	Private VLabel5 As VLabel
	Private VLabel6 As VLabel
	Private VRow2 As VRow
	Private VRow3 As VRow
	Private VRow4 As VRow
	Private VRow5 As VRow
	Private VRow6 As VRow
	Private VRow7 As VRow
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mydatepicker")
	
	about.BindVueElement(VCol1.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VDatePicker1.VElement)
about.BindVueElement(VRow1.VElement)
about.BindVueElement(VDatePicker2.VElement)
about.BindVueElement(VDatePicker3.VElement)
about.BindVueElement(VDatePicker4.VElement)
about.BindVueElement(VDatePicker5.VElement)
about.BindVueElement(lbldate.VElement)
about.BindVueElement(VCol10.VElement)
about.BindVueElement(VCol11.VElement)
about.BindVueElement(VCol12.VElement)
about.BindVueElement(VCol13.VElement)
about.BindVueElement(VCol14.VElement)
about.BindVueElement(VCol3.VElement)
about.BindVueElement(VCol4.VElement)
about.BindVueElement(VCol5.VElement)
about.BindVueElement(VCol6.VElement)
about.BindVueElement(VCol7.VElement)
about.BindVueElement(VCol8.VElement)
about.BindVueElement(VCol9.VElement)
about.BindVueElement(VDatePicker6.VElement)
about.BindVueElement(VDatePicker7.VElement)
about.BindVueElement(VLabel1.VElement)
about.BindVueElement(VLabel2.VElement)
about.BindVueElement(VLabel3.VElement)
about.BindVueElement(VLabel4.VElement)
about.BindVueElement(VLabel5.VElement)
about.BindVueElement(VLabel6.VElement)
about.BindVueElement(VRow2.VElement)
about.BindVueElement(VRow3.VElement)
about.BindVueElement(VRow4.VElement)
about.BindVueElement(VRow5.VElement)
about.BindVueElement(VRow6.VElement)
about.BindVueElement(VRow7.VElement)

	
	VDatePicker1.SetValue(about, "2018-03-02")
	VDatePicker1.UpdateMax(about, "2018-03-20")
	VDatePicker1.UpdateMin(about, "2016-06-15")
	'	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Private Sub VDatePicker1_Change (item As Object)
	vuetify.ShowSwal(item)
End Sub

Private Sub VDatePicker1_Allowed (val As Object)
	Log(val)
End Sub


Private Sub VDatePicker3_PickerDate (val As Object)
	vuetify.ShowSwal(val)
End Sub