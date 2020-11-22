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
	vtables.Matrix(2, 1).LoadLayout("vetable1")
	'
	vetable.AddColumn1("name", "Dessert (100g Serving", vetable.COLUMN_TEXT, 0, False, vetable.ALIGN_LEFT)
	vetable.AddColumn("calories", "Calories")
	vetable.AddColumn("fat", "Fat (g)")
	vetable.AddColumn("carbs", "Carbs (g)")
	vetable.AddColumn("protein", "Protein")
	vetable.AddColumn("iron", "Iron (%)")
	'add data
	vetable.AddRow(CreateMap("name": "Frozen Yogurt", "calories": 159, "fat": 6.0, "carbs": 24, "protein": 4.0, "iron": "1%"))
	vetable.AddRow(CreateMap("name": "Ice cream sandwich", "calories": 237, "fat": 9.0, "carbs": 37, "protein": 4.3, "iron": "1%"))
	vetable.AddRow(CreateMap("name": "Eclair", "calories": 262, "fat": 16.0, "carbs": 23, "protein": 6.0, "iron": "7%"))
	vetable.AddRow(CreateMap("name": "Cupcake",	"calories": 305, "fat": 3.7, "carbs": 67, "protein": 4.3, "iron": "8%"))
	vetable.AddRow(CreateMap("name": "Gingerbread", "calories": 356, "fat": 16.0, "carbs": 49, "protein": 3.9, "iron": "16%"))
	tables.BindVueTable(vetable)
	'
	
	vetable1.AddColumn1("name", "Dessert (100g Serving", vetable.COLUMN_TEXT, 0, False, vetable.ALIGN_LEFT)
	vetable1.AddColumn("calories", "Calories")
	vetable1.AddColumn("fat", "Fat (g)")
	vetable1.AddColumn("carbs", "Carbs (g)")
	vetable1.AddColumn("protein", "Protein")
	vetable1.AddColumn("iron", "Iron (%)")
	'add data
	vetable1.AddRow(CreateMap("name": "Frozen Yogurt", "calories": 159, "fat": 6.0, "carbs": 24, "protein": 4.0, "iron": "1%"))
	vetable1.AddRow(CreateMap("name": "Ice cream sandwich", "calories": 237, "fat": 9.0, "carbs": 37, "protein": 4.3, "iron": "1%"))
	vetable1.AddRow(CreateMap("name": "Eclair", "calories": 262, "fat": 16.0, "carbs": 23, "protein": 6.0, "iron": "7%"))
	vetable1.AddRow(CreateMap("name": "Cupcake",	"calories": 305, "fat": 3.7, "carbs": 67, "protein": 4.3, "iron": "8%"))
	vetable1.AddRow(CreateMap("name": "Gingerbread", "calories": 356, "fat": 16.0, "carbs": 49, "protein": 3.9, "iron": "16%"))
	tables.BindVueTable(vetable1)
	
	
	'add the placeholder content to the template
	tables.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(tables)
End Sub
