B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public tables As VueComponent
	Public path As String
	Public name As String = "tables"
	Private banano As BANano
	Private vtables As VueElement
	Private vetable As VueTable
	Private vetable1 As VueTable

End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	tables.Initialize(Me, name)
	path = tables.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vtables")
	vtables.Matrix(1, 1).LoadLayout("vetable")
'	vtables.Matrix(2, 1).LoadLayout("vetable1")
'	'
	vetable.AddColumn1("name", "Dessert (100g Serving", vetable.COLUMN_TEXT, 0, False, vetable.ALIGN_LEFT)
	vetable.AddChip("calories", "Calories", "item.color")
	vetable.AddColumn("fat", "Fat (g)")
	vetable.AddColumn("carbs", "Carbs (g)")
	vetable.AddColumn("protein", "Protein")
	vetable.AddColumn("iron", "Iron (%)")
	vetable.AddAction("mashy", "Mashy", "mdi-vuetify")
	vetable.AddEdit
	vetable.AddDelete
	vetable.AddClone
	vetable.AddPrint
	vetable.AddSave
	vetable.AddCancel
	vetable.AddDownload
	vetable.AddMenuV
	vetable.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)
	vetable.SetIconDimensions("delete", "", vuetify.COLOR_RED)
	vetable.SetIconDimensions("clone", "", vuetify.COLOR_AMBER)
	vetable.SetIconDimensions("print", "", vuetify.COLOR_BLUE)
	vetable.SetIconDimensions("save", "", vuetify.COLOR_BLUEGREY)
	vetable.SetIconDimensions("cancel", "", vuetify.COLOR_BROWN)
	vetable.SetIconDimensions("download", "", vuetify.COLOR_CYAN)
	vetable.SetIconDimensions("menu", "", vuetify.COLOR_INDIGO)
	vetable.SetIconDimensions("mashy", "", vuetify.COLOR_DEEPPURPLE)
	
	'add data
	vetable.AddRow(CreateMap("name": "Frozen Yogurt", "calories": 159, "color":"green", "fat": 6.0, "carbs": 24, "protein": 4.0, "iron": "1%"))
	vetable.AddRow(CreateMap("name": "Ice cream sandwich", "calories": 237, "color":"orange", "fat": 9.0, "carbs": 37, "protein": 4.3, "iron": "1%"))
	vetable.AddRow(CreateMap("name": "Eclair", "calories": 262, "color":"orange", "fat": 16.0, "carbs": 23, "protein": 6.0, "iron": "7%"))
	vetable.AddRow(CreateMap("name": "Cupcake",	"calories": 305, "color":"orange", "fat": 3.7, "carbs": 67, "protein": 4.3, "iron": "8%"))
	vetable.AddRow(CreateMap("name": "Gingerbread", "calories": 356, "color":"orange", "fat": 16.0, "carbs": 49, "protein": 3.9, "iron": "16%"))
	'
	'vetable.SetColumnTotal("calories", "sumfield('calories')")
	'vetable.SetColumnAttr("calories", ":color", "getcolor(item.calories)")
	'vetable.SetColumnAttr("calories", ":color", "item.color")
	'
	'
	tables.BindVueTable(vetable)
'	'
'	
'	vetable1.AddColumn1("name", "Dessert (100g Serving", vetable.COLUMN_TEXT, 0, False, vetable.ALIGN_LEFT)
'	vetable1.AddColumn("calories", "Calories")
'	vetable1.AddColumn("fat", "Fat (g)")
'	vetable1.AddColumn("carbs", "Carbs (g)")
'	vetable1.AddColumn("protein", "Protein")
'	vetable1.AddColumn("iron", "Iron (%)")
'	'add data
'	vetable1.AddRow(CreateMap("name": "Frozen Yogurt", "calories": 159, "color":"green", "fat": 6.0, "carbs": 24, "protein": 4.0, "iron": "1%"))
'	vetable1.AddRow(CreateMap("name": "Ice cream sandwich", "calories": 237, "color":"orange", "fat": 9.0, "carbs": 37, "protein": 4.3, "iron": "1%"))
'	vetable1.AddRow(CreateMap("name": "Eclair", "calories": 262, "color":"orange", "fat": 16.0, "carbs": 23, "protein": 6.0, "iron": "7%"))
'	vetable1.AddRow(CreateMap("name": "Cupcake",	"calories": 305, "color":"orange", "fat": 3.7, "carbs": 67, "protein": 4.3, "iron": "8%"))
'	vetable1.AddRow(CreateMap("name": "Gingerbread", "calories": 356, "color":"orange", "fat": 16.0, "carbs": 49, "protein": 3.9, "iron": "16%"))
'	tables.BindVueTable(vetable1)
	'
	'Dim args As List
	'tables.SetMethod(Me, "getcolor", args)
	'tables.SetMethod(Me, "sumfield", args)
	
	'add the placeholder content to the template
	tables.AppendPlaceHolder
	
	'
	'add the component as a router
	vuetify.AddRoute(tables)
End Sub


''sum any column passed
'Sub sumfield(fld As String) As String   'ignoredeadcode
'	'get all the records
'	Dim totSum As Int = 0
'	'get the records of the table
'	Dim recs As List = tables.GetTableData(vetable)
'	For Each rec As Map In recs
'		Dim fldNum As String = rec.get(fld)
'		totSum = totSum + banano.parseInt(fldNum)
'	Next
'	totSum = BANanoShared.makemoney(totSum)
'	Return totSum
'End Sub
'''
'Sub getcolor(calories As Int) As String   'ignoredeadcode
'	If calories > 400 Then
'		Return "red"
'	else if calories > 200 Then
'		Return "orange"
'	Else
'		Return "green"
'	End If
'End Sub

Sub vetable_mashy(item As Map)
	vuetify.ShowSnackBar("Mashy tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Save (item As Map)
	vuetify.ShowSnackBar("Save tapped!" & CRLF & CRLF & banano.ToJson(item))	
End Sub

Sub vetable_Edit (item As Map)
	vuetify.ShowSnackBar("Edit tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Delete (item As Map)
	vuetify.ShowSnackBar("Delete tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Print (item As Map)
	vuetify.ShowSnackBar("Print tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Cancel (item As Map)
	vuetify.ShowSnackBar("Cancel tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Change (item As Map)
	vuetify.ShowSnackBar("Change tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Download (item As Map)
	vuetify.ShowSnackBar("Download tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Menu (item As Map)
	vuetify.ShowSnackBar("Menu tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub vetable_Clone (item As Map)
	vuetify.ShowSnackBar("Clone tapped!" & CRLF & CRLF & banano.ToJson(item))
End Sub