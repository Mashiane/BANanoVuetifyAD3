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
	Dim sel1 As BANanoElement = BVAD3.NewSelect(selects, "sel1", "sel1selected", "Select 1", False, False, "", "listitems", "", "", False, "", Null)
	vselects.Matrix(1, 1).Append(sel1.GetHTML)
	'
	Dim sel2 As BANanoElement = BVAD3.NewSelect(selects, "sel2", "sel2selected", "Select 2", False, False, "", "listitems", "", "", False, "", CreateMap(":filled":True))
	vselects.Matrix(1, 2).Append(sel2.GetHTML)
	'
	Dim sel3 As BANanoElement = BVAD3.NewSelect(selects, "sel3", "sel3selected", "Select 3", False, False, "", "listitems", "", "", False, "Select 3", CreateMap(":outlined":True))
	vselects.Matrix(1, 3).Append(sel3.GetHTML)
	'
	Dim sel4 As BANanoElement = BVAD3.NewSelect(selects, "sel4", "sel4selected", "Select 4", False, True, "", "listitems", "", "", False, "", _
	CreateMap(":rounded":True, ":outlined":True, ":chips":True, ":small-chips":True,":deletable-chips":True))
	'
	vselects.Matrix(1, 4).Append(sel4.GetHTML)
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