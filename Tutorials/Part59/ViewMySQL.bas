B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public phpmysql As VueComponent
	Public path As String
	Public name As String = "phpmysql"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	phpmysql.Initialize(Me, name)
	path = phpmysql.path
	'create a container
	Dim sqliteCont As VueElement = vuetify.AddContainer(Me, phpmysql.Here, "scont", True)
	'define the grid
	sqliteCont.AddRows1.AddColumns12
	sqliteCont.AddRows10.AddColumns2x6
	sqliteCont.ShowGridDesign = False
	sqliteCont.BuildGrid
	'
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(1, 1), "para1", "MySQL PHP", "", "")
		
	'add a button to add a new record
	Dim btnAdd As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(2,1), "btnAdd", "Add User", "primary", True, Null)
	phpmysql.BindVueElement(btnAdd)
	'
	'
	Dim btnGet As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(3,1), "btnGet", "Get Users", "primary", True, Null)
	phpmysql.BindVueElement(btnGet)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(3, 2), "para2", "Data: {{ records }}", "", "")
	
	
	Dim btnAge30 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(4,1), "btnAge30", "Get Age >= 30", "primary", True, Null)
	phpmysql.BindVueElement(btnAge30)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(4, 2), "para3", "Age >= 30: {{ age30 }}", "", "")
	'
	Dim btnRec1 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(5,1), "btnRec1", "Get ID = 1", "primary", True, Null)
	phpmysql.BindVueElement(btnRec1)
	
	vuetify.AddParagraph(Me, sqliteCont.MatrixID(5, 2), "para4", "ID = 1: {{ rec1 }}", "", "")
	'
	Dim btnDel3 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(6,1), "btnDel3", "Delete ID = 3", "primary", True, Null)
	phpmysql.BindVueElement(btnDel3)
	'
	Dim btnDeleteWhere As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(7,1), "btnDeleteWhere", "Delete Where Age < 40", "primary", True, Null)
	phpmysql.BindVueElement(btnDeleteWhere)
	'
	Dim btnUpdate4 As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(8,1), "btnUpdate4", "Update Id = 4 (Name)", "primary", True, Null)
	phpmysql.BindVueElement(btnUpdate4)
	'
	Dim btnDelAll As VueElement = vuetify.AddButton(Me, sqliteCont.MatrixID(9,1), "btnDelAll", "Delete All", "primary", True, Null)
	phpmysql.BindVueElement(btnDelAll)
	
	'initialize state
	phpmysql.SetData("records", "")
	phpmysql.SetData("age30", "")
	phpmysql.SetData("rec1", "")
	'you can call anytime
	phpmysql.SetMethod(Me, "GetAllUsers", Null)
	
	'add the component as a router
	vuetify.AddRoute(phpmysql)
End Sub

'event to add the record
Sub btnAdd_click(e As BANanoEvent)
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	'add field types
	dbMySQL.SchemaAddInt(Array("id", "age"))
	dbMySQL.SchemaAddText(Array("name"))
	'create a new record, do not specify auto increment
	Dim faker As BANanoFakeIT
	faker.Initialize
	'create a fake record
	Dim urec As Map = faker.GetRecord1(Array("name", "age"))
	'insert current record
	dbMySQL.Insert1(urec)
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Case Else
			vuetify.ShowSnackBarSuccess("User has been added successfully!")
	End Select
End Sub

Sub btnUpdate4_click(e As BANanoEvent)
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	'add field types
	dbMySQL.SchemaAddInt(Array("id"))
	dbMySQL.SchemaAddText(Array("name"))
	'create a record to contain the fields to update
	Dim faker As BANanoFakeIT
	faker.Initialize
	'create a fake record
	Dim urec As Map = faker.GetRecord1(Array("name"))
	'update current record
	dbMySQL.Update1(urec, 4)
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID=4 has been updated successfully!")
	End Select
	phpmysql.RunMethod("getallusers", Null)
End Sub

Sub GetAllUsers
	'clear content
	phpmysql.SetData("records", "")
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.SelectAll(Array("*"), Array("name"))
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users were retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbMySQL.result)
	phpmysql.SetData("records", jsonUsers)

End Sub

'event to get all users ordered by name
Sub btnGet_click(e As BANanoEvent)
	phpmysql.RunMethod("getallusers", Null)
End Sub

Sub btnAge30_click(e As BANanoEvent)
	'clear content
	phpmysql.SetData("age30", "")
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.SchemaAddInt(Array("age"))
	'define a where clause
	Dim aw As Map = CreateMap()
	aw.Put("age", 30)
	dbMySQL.SelectWhere(Array("*"), aw, Array(">="), Array("name"))
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users >= 30 were retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbMySQL.result)
	phpmysql.SetData("age30", jsonUsers)
End Sub

Sub btnRec1_click(e As BANanoEvent)
	'clear content
	phpmysql.SetData("rec1", "")
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.SchemaAddInt(Array("id"))
	dbMySQL.Read(1)
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID = 1 was retrieved!")
	End Select
	'convert to json
	Dim jsonUsers As String = banano.ToJson(dbMySQL.result)
	phpmysql.SetData("rec1", jsonUsers)
End Sub

Sub btnDel3_click(e As BANanoEvent)
	'clear content
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.SchemaAddInt(Array("id"))
	dbMySQL.Delete(3)
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("User with ID = 3 was deleted!")
	End Select
	phpmysql.RunMethod("getallusers", Null)
End Sub

Sub btnDeleteWhere_click(e As BANanoEvent)
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.SchemaAddInt(Array("age"))
	dbMySQL.DeleteWhere(CreateMap("age": 40), Array("<"))
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("Users with age < 40 ere deleted!")
	End Select
	phpmysql.RunMethod("getallusers", Null)
End Sub

Sub btnDelAll_click(e As BANanoEvent)
	Dim dbMySQL As BANanoMySQLE
	dbMySQL.Initialize("test", "users", "id", "id")
	dbMySQL.DeleteAll
	dbMySQL.JSON = banano.CallInlinePHPWait(dbMySQL.MethodName, dbMySQL.Build)
	dbMySQL.FromJSON
	Select Case dbMySQL.OK
		Case False
			Dim strError As String = dbMySQL.Error
			vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
			Return
		Case Else
			vuetify.ShowSnackBarSuccess("All users have been deleted!")
	End Select
	phpmysql.RunMethod("getallusers", Null)
End Sub