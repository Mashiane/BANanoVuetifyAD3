B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public alasqlpage As VueComponent
	Public path As String
	Public name As String = "alasqlpage"
	Private banano As BANano
	Private db As BANanoSQL
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	alasqlpage.Initialize(Me, name)
	path = alasqlpage.path
	'create a container
	Dim sqliteCont As VueElement = vuetify.AddContainer(Me, alasqlpage.Here, "scont", True)
	'define the grid
	sqliteCont.AddRows1.AddColumns12
	sqliteCont.AddRows10.AddColumns2x6
	sqliteCont.ShowGridDesign = False
	sqliteCont.BuildGrid
	'
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(1, 1), "para1", "BANanoSQL i.e IndexedDB via AlaSQL", "", "")
		
	'add a button to add a new record
	Dim btnAdd As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(2,1), "btnAdd", "Add User", "primary", True, Null)
	alasqlpage.BindVueElement(btnAdd)
	'
	'
	Dim btnGet As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(3,1), "btnGet", "Get Users", "primary", True, Null)
	alasqlpage.BindVueElement(btnGet)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(3, 2), "para2", "Data: {{ records }}", "", "")
	
	
	Dim btnAge30 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(4,1), "btnAge30", "Get Age >= 30", "primary", True, Null)
	alasqlpage.BindVueElement(btnAge30)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(4, 2), "para3", "Age >= 30: {{ age30 }}", "", "")
	'
	Dim btnRec1 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(5,1), "btnRec1", "Get ID = 1", "primary", True, Null)
	alasqlpage.BindVueElement(btnRec1)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(5, 2), "para4", "ID = 1: {{ rec1 }}", "", "")
	'
	Dim btnDel3 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(6,1), "btnDel3", "Delete ID = 3", "primary", True, Null)
	alasqlpage.BindVueElement(btnDel3)
	'
	Dim btnDeleteWhere As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(7,1), "btnDeleteWhere", "Delete Where Age < 40", "primary", True, Null)
	alasqlpage.BindVueElement(btnDeleteWhere)
	'
	Dim btnUpdate4 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(8,1), "btnUpdate4", "Update Id = 4 (Name)", "primary", True, Null)
	alasqlpage.BindVueElement(btnUpdate4)
	'
	Dim btnDelAll As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(9,1), "btnDelAll", "Delete All", "primary", True, Null)
	alasqlpage.BindVueElement(btnDelAll)
	
	'initialize state
	alasqlpage.SetData("records", "")
	alasqlpage.SetData("age30", "")
	alasqlpage.SetData("rec1", "")
	'you can call anytime
	alasqlpage.SetMethod(Me, "GetAllUsers", Null)
	
	'add the component as a router
	vuetify.AddRoute(alasqlpage)
End Sub

'event to add the record
Sub btnAdd_click(e As BANanoEvent)
	db.OpenWait("test", "test")
	Dim dbMax As BANanoALASQLE
	dbMax.Initialize("test", "users", "id", "id")
	'get the max value for the id field
	dbMax.GetMax
	dbMax.result = db.ExecuteWait(dbMax.query, dbMax.args)
	dbMax.FromJSON
	'increment this by 1
	Dim ni As String = dbMax.GetNextID
	'create a new record, do not specify auto increment
	Dim faker As BANanoFakeIT
	faker.Initialize
	'create a fake record
	Dim urec As Map = faker.GetRecord1(Array("name", "age"))
	urec.Put("id", ni)
	'insert current record
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	'add field types
	dbAla.SchemaAddInt(Array("id", "age"))
	dbAla.SchemaAddText(Array("name"))
	dbAla.Insert1(urec)
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
	Case False
		Dim strError As String = dbAla.Error
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
	Case Else
		vuetify.ShowSnackBarSuccess("User has been added successfully!")
	End Select
End Sub

Sub btnUpdate4_click(e As BANanoEvent)
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	'add field types
	dbAla.SchemaAddInt(Array("id"))
	dbAla.SchemaAddText(Array("name"))
	'create a record to contain the fields to update
	Dim faker As BANanoFakeIT
	faker.Initialize
	'create a fake record
	Dim urec As Map = faker.GetRecord1(Array("name"))
	'update current record
	dbAla.Update1(urec, 4)
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID=4 has been updated successfully!")
	End Select
	alasqlpage.RunMethod("getallusers", Null)
End Sub

Sub GetAllUsers
	'clear content
	alasqlpage.SetData("records", "")
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.SelectAll(Array("*"), Array("name"))
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users were retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbAla.result)
	alasqlpage.SetData("records", jsonUsers)

End Sub

'event to get all users ordered by name
Sub btnGet_click(e As BANanoEvent)
	alasqlpage.RunMethod("getallusers", Null)
End Sub

Sub btnAge30_click(e As BANanoEvent)
	'clear content
	alasqlpage.SetData("age30", "")
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.SchemaAddInt(Array("age"))
	'define a where clause
	Dim aw As Map = CreateMap()
	aw.Put("age", 30)
	dbAla.SelectWhere(Array("*"), aw, Array(">="), Array("name"))
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users >= 30 were retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbAla.result)
	alasqlpage.SetData("age30", jsonUsers)
End Sub

Sub btnRec1_click(e As BANanoEvent)
	'clear content
	alasqlpage.SetData("rec1", "")
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.SchemaAddInt(Array("id"))
	dbAla.Read(1)
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID = 1 was retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbAla.result)
	alasqlpage.SetData("rec1", jsonUsers)
End Sub

Sub btnDel3_click(e As BANanoEvent)
	'clear content
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.SchemaAddInt(Array("id"))
	dbAla.Delete(3)
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID = 3 was deleted!")
	End Select
	alasqlpage.RunMethod("getallusers", Null)
End Sub

Sub btnDeleteWhere_click(e As BANanoEvent)
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.SchemaAddInt(Array("age"))
	dbAla.DeleteWhere(CreateMap("age": 40), Array("<"))
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("Users with age < 40 ere deleted!")
	End Select
	alasqlpage.RunMethod("getallusers", Null)
End Sub

Sub btnDelAll_click(e As BANanoEvent)
	db.OpenWait("test", "test")
	Dim dbAla As BANanoALASQLE
	dbAla.Initialize("test", "users", "id", "id")
	dbAla.DeleteAll
	dbAla.result = db.ExecuteWait(dbAla.query, dbAla.args)
	dbAla.FromJSON
	Select Case dbAla.OK
		Case False
			Dim strError As String = dbAla.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users have been deleted!")
	End Select
	alasqlpage.RunMethod("getallusers", Null)
End Sub