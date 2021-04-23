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
	Private dtusers As VueTable
	Private dtimages As VueTable
	Private jsPDF As BANanoJSPDF
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
	'
	vetable.ParentComponent = tables
	vetable.AddDivider
	vetable.AddNew
	vetable.AddDivider
	vetable.AddClearSort
	vetable.AddDivider
	vetable.AddFilter("primary--text")
	vetable.AddDivider
	vetable.AddClearFilter
	vetable.AddDivider
	vetable.AddPDF
	vetable.AddDivider
	vetable.AddExcel
	'
	vetable.AddColumn1("name", "Dessert (100g Serving", vetable.COLUMN_TEXT, 0, True, vetable.ALIGN_LEFT)
	vetable.AddChip("calories", "Calories", "item.color")
	vetable.AddColumn("fat", "Fat (g)")
	vetable.AddColumn("carbs", "Carbs (g)")
	vetable.AddColumn("protein", "Protein")
	vetable.AddColumn("iron", "Iron (%)")
	vetable.AddAction("mashy", "Mashy", "mdi-vuetify")
	vetable.SetFilterable(Array("name", "calories"))
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

	'**** USERS
	vtables.Matrix(2, 1).LoadLayout("dtusers")
	'
	Dim users As List = vuetify.NewList
	users.add(CreateMap("avatar": "./assets/sponge.png", "firstname":"Anele", "lastname":"Mbanga", "active":"Yes", "rating":5, "tasks":19, "projects":50))
	users.add(CreateMap("avatar": "./assets/1.jpg", "firstname":"Him", "lastname":"One", "active":"Yes", "rating":5, "tasks":9, "projects":10))
	users.add(CreateMap("avatar": "./assets/2.jpg", "firstname":"Him 2", "lastname":"One", "active":"No", "rating":4, "tasks": 8, "projects":30))
	users.add(CreateMap("avatar": "./assets/3.jpg", "firstname":"Her ", "lastname":"One", "active":"Yes", "rating":3, "tasks": 5, "projects":50))
	users.add(CreateMap("avatar": "./assets/4.jpg", "firstname":"Her 1", "lastname":"One", "active":"Yes", "rating":2, "tasks": 3, "projects":20))
	users.add(CreateMap("avatar": "./assets/5.jpg", "firstname":"Her 2", "lastname":"One", "active":"No", "rating":1, "tasks": 1, "projects":60))

	dtusers.AddAvatarImg("avatar", "Profile")
	dtusers.AddColumn("firstname", "First Name")
	dtusers.AddColumn("lastname", "Last Name")
	dtusers.AddSwitch("active", "Active")
	dtusers.AddRating("rating", "Performance")
	dtusers.AddProgressLinear("projects", "Projects")
	dtusers.SetProgressLinearDimensions("projects", "orange", "25", True)
	dtusers.AddProgressCircular("tasks", "Completed")
	dtusers.SetProgressCircularDimensions("tasks", "green", "-90", "46", "8")
	dtusers.AddEdit
	dtusers.AddDelete
	dtusers.SetIconDimensions("edit", "", "success")
	dtusers.SetIconDimensions("delete", "", "error")
	dtusers.SetDataSource(users)
	tables.BindVueTable(dtusers)

	
	'***** IMAGES
	vtables.Matrix(3, 1).LoadLayout("dtimages")
	'https://day.js.org/docs/en/display/format
	'http://numeraljs.com/
	'
	Dim images As List = vuetify.newlist
	images.add(CreateMap("image": "./assets/bird.jpg", "sendto":"mashy@gmail.com", "comment":"A bird seen from above", "lat":"16.0", "lng":"20.1", "datetaken":"1973-04-15", "icon":"mdi-account-reactivate","color":"blue"))
	images.add(CreateMap("image": "./assets/dark-beach.jpg", "sendto":"ozzie@gmail.com", "comment":"Seen whilst walking", "lat":"36.0", "lng":"24.8", "datetaken":"2003-02-27","icon":"mdi-car-outline","color":"green"))
	images.add(CreateMap("image": "./assets/planet.jpg", "sendto":"orio@gmail.com", "comment":"A need to visit planets", "lat":"1.0", "lng":"1.1", "datetaken":"2009-04-01","icon":"mdi-filmstrip","color":"orange"))
	images.add(CreateMap("image": "./assets/sky.jpg", "sendto":"ernesto@gmail.com", "comment":"A beautiful skyline", "lat":"0", "lng":"0", "datetaken":"2010-04-24","icon":"mdi-share-all","color":"indigo"))
	images.add(CreateMap("image": "./assets/squirrel.jpg", "sendto":"tgifzone.inc@gmail.com", "comment":"Nutting around", "lat":"45", "lng":"30", "datetaken":"2010-09-02","icon":"mdi-shield-cross","color":"yellow"))
	'
	dtimages.AddImage("image", "Image")
	dtimages.SetImageDimensions("image", "80px", "80px")
	dtimages.AddLink("sendto", "Email To", "_blank")
	dtimages.AddIconView("icon", "Icon", "item.color")
	dtimages.SetColumnPrefix("sendto", "mailto:")
	dtimages.AddColumn("comment", "Comment")
	dtimages.AddColumn("datetaken", "Date Taken")
	dtimages.SetColumnType("datetaken", dtimages.COLUMN_DATE)
	dtimages.SetColumnDateFormat("datetaken", "ddd, DD MMM YYYY")
	dtimages.AddColumn("lat", "Latitude")
	dtimages.AddColumn("lng", "Longitude")
	dtimages.SetColumnNumberFormat("lat", "0.00")
	dtimages.SetColumnNumberFormat("lng", "0.00")
	dtimages.SetDataSource(images)
	tables.BindVueTable(dtimages)

	'
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
	
	'add the component as a router
	vuetify.AddRoute(tables)
	'
	'hide specific columns
	'vetable.HideColumns(Array("fat", "carbs", "protein"))
	'
	
End Sub

Sub vetable_pdf_click(e As BANanoEvent)
	jsPDF.Initialize(Me, "foodstuff.pdf")
	'
	Dim tblA As BANanoJSPDFTable
	tblA.Initialize(Me)
	tblA.SetColumnsFromDataTable(vetable.GetColumns)
	tblA.SetRowsFromDataTable(vetable.GetData)
	'tblA.theme = tblA.THEME_GRID
	tblA.Margin.Top = 60
	'tblA.styles.font = "Meta"
	'tblA.styles.lineWidth = 0.55
	'tblA.setLineColor(tblA.styles, 44, 62, 80)
		'
	'tblA.setFillColor(tblA.headerStyles, 0, 0, 0)
	'tblA.headerStyles.fontSize = 11
	'
	'tblA.setFillColor(tblA.alternateRowStyles, 250, 250, 250)
	
	'jsPDF.Orientation = jsPDF.ORIENTATION_LANDSCAPE 
	'
	Dim data As Object
	tblA.beforePageContent(Me, "beforePageContent", data)
	
	'tblA.setTableLineColor(189, 195, 199)
	'
	jsPDF.Start
	jsPDF.autoTable(tblA)
	
'	jsPDF.addPage
'	jsPDF.setText(20, 20, "Hello world!")
'	jsPDF.setText(20, 40, "This is client-side Javascript to generate a PDF.")
'	jsPDF.setText(20, 60, "Visit https://github.com/Mashiane/BANanoVuetifyAD3")

	jsPDF.Save
	'Log(jsPDF.ToBase64)
End Sub

Sub beforePageContent
	jsPDF.SetText(40, 30, "Food Stuff")
End Sub

Sub vetable_excel_click(e As BANanoEvent)
	Dim jsExcel As BANanoOXML
	Dim stablename As String = "food_stuff"
	Dim fn As String = $"${BANanoShared.datenow}_${stablename}.xlsx"$
	'initialize the spreadsheet
	jsExcel.initialize(fn)
	'create a worksheet
	Dim wkSheet As BANanoObject = jsExcel.WorkSheet(stablename)
	jsExcel.SetColumnsFromDataTable(vetable.GetColumns)
	jsExcel.SetRowsFromDataTable(vetable.GetData)
	'set the headers at row 1
	jsExcel.SetColumns(wkSheet, 1)
	'add each row
	Dim rowCnt As Int = 2
	For Each row As List In jsExcel.rows
		jsExcel.SetRow(wkSheet, rowCnt, 1, row)
		rowCnt = rowCnt + 1
	Next
	'download the file
	jsExcel.download(Me, "dtDataDownload")
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

'when excel is downloaded
Sub dtDataDownload
	vuetify.ShowSnackBarSuccess("Excel Reported!")
End Sub

Sub vetable_filter_click(e As BANanoEvent)
	vuetify.ShowSnackBar("filter...")
	vetable.ApplyFilter
End Sub

Private Sub vetable_Add_Click (e As BANanoEvent)
	vuetify.ShowSnackBar("Add")
End Sub


Private Sub vetable_ClearSort_Click (e As BANanoEvent)
	vuetify.ShowSnackBar("Clear Sort")
	vetable.ClearSort
End Sub

Private Sub vetable_ClearFilter_Click (e As BANanoEvent)
	vuetify.ShowSnackBar("Clear Filter")
	vetable.ClearFilter
End Sub

Private Sub vetable_ItemSelected (item As Map)
	vuetify.ShowSnackBar(banano.ToJson(item))
End Sub


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

Sub dtusers_Edit (item As Map)
	vuetify.ShowSnackBar("Users Edit: " & CRLF & CRLF & banano.ToJson(item))
	
End Sub

Sub dtusers_Delete (item As Map)
	vuetify.ShowSnackBar("Users Delete:" & CRLF & CRLF & banano.ToJson(item))
End Sub

Sub dtusers_Change (item As Map)
	vuetify.ShowSnackBar("Users Change:" & CRLF & CRLF & banano.ToJson(item))
End Sub
