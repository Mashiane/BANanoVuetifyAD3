B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public radiogroups As VueComponent
	Public path As String
	Public name As String = "radiogroups"
	Private banano As BANano
	Private vradiogroups As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	radiogroups.Initialize(Me, name)
	path = radiogroups.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vradiogroups")
	'
'	Dim rg1 As BANanoElement = BVAD3.NewRadioGroup(radiogroups, "rg1", "rgvalues", "My Radio Items 1", True, False, "radioitems", "value", "text", "color", Null, Null)
'	vradiogroups.Matrix(1, 1).Empty.Append(rg1.GetHTML)
'	'
'	Dim rg2 As BANanoElement = BVAD3.NewRadioGroup(radiogroups, "rg2", "rgvalues2", "My Radio Items 2", False, False, "radioitems", "value", "text", "color", Null, Null)
'	vradiogroups.Matrix(1, 2).Empty.Append(rg2.GetHTML)
	
	Dim r2c1 As String = vradiogroups.MatrixID(2, 1)
	Dim r2c2 As String = vradiogroups.MatrixID(2, 2)
	'
	Dim rg3 As VueElement = vuetify.AddRadioGroup(Me, r2c1, "rg3", "rgvalues1", "My Radio Items 3", True, False, "radioitems", "value", "text", "color", Null, Null)
	radiogroups.BindVueElement(rg3)
	'
	Dim rg4 As VueElement = vuetify.AddRadioGroup(Me, r2c2, "rg3", "rgvalues3", "My Radio Items 4", False, False, "radioitems", "value", "text", "color", Null, Null)
	radiogroups.BindVueElement(rg4)
	
	Dim radioitems As List = radiogroups.NewList
	radioitems.Add(CreateMap("value":"red", "text":"Radio", "color":"red"))
	radioitems.Add(CreateMap("value":"yellow", "text":"Yellow", "color":"yellow"))
	radioitems.Add(CreateMap("value":"green", "text":"green", "color":"green"))
	radioitems.Add(CreateMap("value":"orange", "text":"orange", "color":"orange"))
	'
	radiogroups.SetData("radioitems", radioitems)
		
	'add the component as a router
	vuetify.AddRoute(radiogroups)
End Sub

Sub rg1_change(e As BANanoEvent)
	'get the value
	Dim srgvalues As String = radiogroups.GetData("rgvalues")
	vuetify.ShowSnackBarSuccess(srgvalues)
End Sub

Sub rg2_change(e As BANanoEvent)
	'get the value
	Dim srgvalues2 As String = radiogroups.GetData("rgvalues2")
	vuetify.ShowSnackBarSuccess(srgvalues2)
End Sub
