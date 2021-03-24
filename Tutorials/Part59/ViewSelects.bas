B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public selects As VueComponent
	Public path As String
	Public name As String = "selects"
	Private banano As BANano
	Private vselects As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	selects.Initialize(Me, name)
	path = selects.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vselects")
	'
	Dim sel1 As VueElement = vuetify.AddComboBox(Me, vselects.MatrixID(1,1), "sel1", "sel1selected", "Select 1", False, False, "", "listitems", "", "", False, "", Null)
	selects.BindVueElement(sel1)
	'
	Dim sel2 As VueElement = vuetify.AddComboBox(Me, vselects.MatrixID(1,2), "sel2", "sel2selected", "Select 2", False, False, "", "listitems", "", "", False, "", CreateMap(":filled":True))
	selects.BindVueElement(sel2)
	'
	Dim sel3 As VueElement = vuetify.AddSelect(Me, vselects.MatrixID(1,3), "sel3", "sel3selected", "Select 3", False, False, "", "listitems", "", "", False, "Select 3", CreateMap(":outlined":True))
	selects.BindVueElement(sel3)
	'
	Dim sel4 As VueElement = vuetify.AddSelect(Me, vselects.MatrixID(1,4), "sel4", "sel4selected", "Select 4", False, True, "", "listitems", "", "", False, "", _
	CreateMap(":rounded":True, ":outlined":True, ":chips":True, ":small-chips":True,":deletable-chips":True))
	selects.BindVueElement(sel4)
	'
	Dim r2c1 As String = vselects.MatrixID(2, 1)
	Dim sel5 As VueElement = vuetify.AddAutoComplete(Me, r2c1, "sel5", "sel5selected", "Select 5", False, True, "", "listitems", "", "", False, "", _
	CreateMap(":rounded":True, ":outlined":True, ":chips":True, ":small-chips":True,":deletable-chips":True))
	selects.BindVueElement(sel5)
	'
	' if not multiple, set selected item via the vmodel as a single item
	selects.SetData("sel2selected", "Foo")
	
	'if multiple, set selected item via the vmodal as an array
	Dim sel As List = selects.NewList
	sel.AddAll(Array("Foo", "Buzz"))
	
	'set selected items for multi select
	selects.SetData("sel4selected", sel)
	
	'define items for the list
	Dim items As List = selects.NewList
	items.AddAll(Array("Foo", "Bar", "Fizz", "Buzz"))
	'set the state and save list items
	selects.SetData("listitems", items)
	'
	'add the component as a router
	vuetify.AddRoute(selects)
	'

End Sub

Sub sel1_change(e As BANanoObject)
	'get the selectec item
	Dim selItem As String = selects.GetData("sel1selected")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub