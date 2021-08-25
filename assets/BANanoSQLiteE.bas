B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public const DB_BOOL As String = "BOOL"
	Public const DB_INT As String = "INT"
	Public const DB_STRING As String = "STRING"
	Public const DB_REAL As String = "REAL"
	Public const DB_DATE As String = "DATE"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Private BANano As BANano   'ignore
	Public MethodName As String
	Private Schema As Map
	Public DBase As String
	Public result As List
	Public command As String
	Public types As List
	Public args As List
	Public query As String
	Public response As String
	Public error As String
	Public affectedRows As Long
	Public json As String
	Public OK As Boolean
	Public TableName As String
	Public PrimaryKey As String
	Public Record As Map
	Private mAI As String
	Public view As String
	Public action As String
	Public NoResult As Boolean
	Public URL As String
End Sub

Sub CallInlinePHPWait(req As String, params As Map) As String
	Dim data As Map = CreateMap()
	data.Put("request", req)
	data.Put("params", params)
	'
	Dim axios As BANanoAxios
	axios.Initialize(URL)
	axios.SetAccessControlAllowOrigin("*")
	axios.SetContentType("json")
	Dim resp As String = BANano.Await(axios.PostWait(data))
	Return resp
End Sub

Sub SetCallBack(v As String, a As String)
	view = v
	action = a
End Sub

Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub

'add a field to the schame
'<code>
''add schema to table
'dbConnect.SchemaAddField("id", dbConntect.DB_INT)
'</code>
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub

'return a sql to delete record of table where one exists
'<code>
''get maximum
'dbConnect.GetMax
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub GetMax As BANanoSQLiteE
	query = $"SELECT MAX(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub

'return a sql to delete record of table where one exists
'<code>
''get minimum
'dbConnect.GetMin
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub GetMin As BANanoSQLiteE
	query = $"SELECT MIN(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub


'get the column names
Sub ColumnNames As BANanoSQLiteE
	query = $"PRAGMA table_info('${TableName}')"$
	command = "select"
	Return Me
End Sub


Sub DescribeTable As BANanoSQLiteE
	query = $"PRAGMA table_info('${TableName}')"$
	command = "select"
	Return Me
End Sub

Sub IndexList As BANanoSQLiteE
	query = $"PRAGMA index_list('${TableName}')"$
	command = "select"
	Return Me
End Sub

Sub IndexInfo(idxName As String) As BANanoSQLiteE
	query = $"PRAGMA index_info('${idxName}')"$
	command = "select"
	Return Me
End Sub


Sub ForeignKeyList As BANanoSQLiteE
	query = $"PRAGMA foreign_key_list('${TableName}')"$
	command = "select"
	Return Me
End Sub

'get the table names
'<code>
''table names
'dbConnect.TableNames
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub TableNames As BANanoSQLiteE
	query = "SELECT name FROM sqlite_master WHERE type='table' AND name Not LIKE 'sqlite_%' ORDER BY name"
	command = "select"
	Return Me
End Sub


'get table names
'<code>
''get table names
'dbConnect.GetTableNames
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub GetTableNames As BANanoSQLiteE
	'get the last part of the database
	query = "SELECT name FROM sqlite_master WHERE type='table' AND name Not LIKE 'sqlite_%' ORDER BY name"
	command = "select"
	Return Me
End Sub

private Sub AndOrOperators(sm As Map) As List    'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("AND")
	Next
	Return nl
End Sub

'return a sql to select record of table where one exists
'<code>
''select where
'dim sw As Map = CreateMap()
'sw.put("name", "Anele")
'dbConnect.SelectWhere1(array("id", "firstname", "lastname"), sw, array("="), array("and", "or"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectWhere1(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.SelectWhere1: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	If BANano.IsNull(AndOr) Then AndOr = AndOrOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
		Case "*"
			selFIelds = "*"
		Case Else
			selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			Dim sandor As String = AndOr.get(i)
			sb.Append($" ${sandor} "$)
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		sb.Append(col)
		If Schema.ContainsKey(col) Then
			Dim colType As String = Schema.Get(col)
			Select Case colType
			Case DB_TEXT, DB_STRING
				sb.Append(" COLLATE NOCASE")
			End Select
		End If
		Dim opr As String = operators.Get(i)
		sb.Append($" ${opr} ?"$)
	Next
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderBy)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	response = ""
	error = ""
	result = NewList
	json = ""
	affectedRows = 0
	Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhereAscDesc(array("*"), sw, array(">=", "<"), array("name"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectWhereAscDesc(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.SelectWhereAscDesc: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
		Case "*"
			selFIelds = "*"
		Case Else
			selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
		sb.Append(EscapeField(col))
		If Schema.ContainsKey(col) Then
			Dim colType As String = Schema.Get(col)
			Select Case colType
				Case DB_TEXT, DB_STRING
					sb.Append(" COLLATE NOCASE")
			End Select
		End If
		sb.Append($" ${oper} ?"$)
	Next
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim xOrder As List
		xOrder.Initialize
		'
		Dim obTot As Int = orderBy.Size - 1
		Dim obCnt As Int
		For obCnt = 0 To obTot
			Dim xfld As String = orderBy.Get(obCnt)
			If AscDesc.IsInitialized And AscDesc.Size > 0 Then
				'does the field exist in sort order
				If AscDesc.IndexOf(xfld) >= 0 Then
					xfld = EscapeField(xfld) & " DESC"
					xOrder.Add(xfld)
				End If
			Else
				xOrder.Add(EscapeField(xfld))
			End If
		Next
		Dim stro As String = Join(",", xOrder)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectMaxWhere("field1", sw, array(">=", "<"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectMaxWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT MAX(${fld}) As ${fld} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
		sb.Append(EscapeField(col))
		If Schema.ContainsKey(col) Then
			Dim colType As String = Schema.Get(col)
			Select Case colType
				Case DB_TEXT, DB_STRING
					sb.Append(" COLLATE NOCASE")
			End Select
		End If
		sb.Append($" ${oper} ?"$)
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub

'initialize a list
Sub NewList As List
	Dim lst As List
	lst.Initialize
	Return lst
End Sub

'return id of record
'<code>
'dim nid As Int = dbConnect.GetNextID
'</code>
Sub GetNextID As String
	Dim nextid As Int
	Dim strid As String
	
	If result.Size = 0 Then
		nextid = 0
	Else
		Dim nr As Map = result.Get(0)
		Dim ni As String = nr.GetDefault(PrimaryKey,"0")
		nextid = BANano.parseInt(ni)
	End If
	nextid = nextid + 1
	strid = CStr(nextid)
	nextid = BANano.ParseInt(nextid)
	Return strid
End Sub

private Sub CStr(o As Object) As String
	Return "" & o
End Sub


'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As BANanoSQLiteE
'dbConnect.Initialize("db1.db", "users", "id", "id")
'</code>
Sub Initialize(dbName As String, tblName As String, PK As String, AI As String) As BANanoSQLiteE
	Schema.Initialize
	Record.Initialize
	MethodName = "BANanoSQLite"
	URL = ""
	result.Initialize
	command = ""
	PrimaryKey = PK
	DBase = dbName
	TableName = tblName
	types.Initialize
	args.Initialize
	query = ""
	response = ""
	error = ""
	affectedRows = 0
	json = ""
	OK = False
	mAI = AI
	NoResult = False
	Return Me
End Sub

'prepare for new table definition
Sub SchemaClear As BANanoSQLiteE
	Schema.clear
	Return Me
End Sub

'prepare record for entry
Sub NewRecord
	Record.Initialize 
End Sub

'update a field value
Sub SetField(fldName As String, fldValue As Object) As BANanoSQLiteE
	Record.Put(fldName, fldValue)
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub
'
'add integer fields
Sub SchemaAddInt(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_INTEGER)
	Next
	Return Me
End Sub

'add float fields
Sub SchemaAddFloat(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub

'add double fields
Sub SchemaAddDouble(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub

'add blob fields
Sub SchemaAddBlob(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

'add text fields
Sub SchemaAddText(bools As List) As BANanoSQLiteE
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
	Return Me
End Sub

'convert a json string to a map
private Sub Json2Map(strJSON As String) As Map
	Dim jsonx As BANanoJSONParser
	Dim Map1 As Map
	Map1.Initialize
	Map1.clear
	Try
		If strJSON.length > 0 Then
			jsonx.Initialize(strJSON)
			Map1 = jsonx.NextObject
		End If
		Return Map1
	Catch
		Return Map1
	End Try
End Sub

'convert a map to a json string using BANanoJSONGenerator
private Sub Map2Json(mp As Map) As String
	Dim jsonx As BANanoJSONGenerator
	jsonx.Initialize(mp)
	Return jsonx.ToString
End Sub


Private Sub EscapeField(f As String) As String
	Return $"[${f}]"$
End Sub

' return string to create database
'<code>
''create a database
'dbConnect.CreateDatabase
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub CreateDatabase As BANanoSQLiteE
	query = $"CREATE DATABASE IF NOT EXISTS ${EscapeField(DBase)}"$
	command = "createdb"
	Return Me
End Sub

'drop the database
'<code>
''drop a database
'dbConnect.DropDatabase
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DropDataBase As BANanoSQLiteE
	query = $"DROP DATABASE ${EscapeField(DBase)}"$
	command = "dropdb"
	Return Me
End Sub

'execute your own sql query
'<code>
''execute a query string
'dbConnect.Execute("...")
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Execute(strSQL As String) As BANanoSQLiteE
	query = strSQL
	command = "execute"
	Return Me
End Sub

'schema create table
'<code>
''schema create table
'dbConnect.SchemaCreateTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub SchemaCreateTable As BANanoSQLiteE
	Return CreateTable(Schema)
End Sub


'return a sql command to create the table
'<code>
''create table
'Dim schema As Map = CreateMap()
'schema.Put("id", dbConnect.DB_INT)
'schema.put("name", dbConnect.DB_TEXT)
'dbConnect.CreateTable(schema)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
private Sub CreateTable(tblFields As Map) As BANanoSQLiteE
	Dim fldName As String
	Dim fldType As String
	Dim fldTot As Int
	Dim fldCnt As Int
	fldTot = tblFields.Size - 1
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append("(")
	For fldCnt = 0 To fldTot
		fldName = tblFields.GetKeyAt(fldCnt)
		fldType = tblFields.Get(fldName)
		fldType = fldType.Replace("STRING", "TEXT")
		fldType = fldType.Replace("TEXT", "VARCHAR(255)")
		If fldType = DB_INT Then fldType = DB_INTEGER
		If fldCnt > 0 Then
			sb.Append(", ")
		End If
		sb.Append(EscapeField(fldName))
		sb.Append(" ")
		sb.Append(fldType)
		Select Case fldType
		Case "STRING", "TEXT", "VARCHAR(255)"
			sb.Append(" COLLATE NOCASE")
		End Select
		If fldName.EqualsIgnoreCase(PrimaryKey) Then
			sb.Append(" PRIMARY KEY")
		End If
		If fldName.EqualsIgnoreCase(mAI) Then
			sb.Append(" AUTOINCREMENT")
		End If
	Next
	sb.Append(")")
	'define the qry to execute
	query = "CREATE TABLE IF NOT EXISTS " & EscapeField(TableName) & " " & sb.ToString
	command = "createtable"
	Return Me
End Sub


'return sql command to drop a table
'<code>
''drop a table
'dbConnect.DropTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
Sub DropTable As BANanoSQLiteE
	'define the qry to execute
	query = "DROP TABLE " & EscapeField(TableName)
	command = "droptable"
	Return Me
End Sub


'get the list of types
private Sub GetMapTypes(sourceMap As Map) As List
	Dim listOfTypes As List
	listOfTypes.Initialize
	Dim iCnt As Int
	Dim iTot As Int
	iTot = sourceMap.Size - 1
	For iCnt = 0 To iTot
		Dim col As String = sourceMap.GetKeyAt(iCnt)
		Dim colType As String = Schema.GetDefault(col,"STRING")
		Select Case colType
			Case "INTEGER", "INT", "BOOL","BOOLEAN"
				listOfTypes.add("i")
			Case "BLOB"
				listOfTypes.add("b")
			Case "REAL","FLOAT","DOUBLE"
				listOfTypes.add("d")
			Case Else
				listOfTypes.add("s")
		End Select
	Next
	Return listOfTypes
End Sub


private Sub GetMapType(k As String) As String
	If Schema.ContainsKey(k) Then
		Dim colType As String = Schema.GetDefault(k, "STRING")
		Select Case colType
			Case "INTEGER", "INT", "BOOL","BOOLEAN"
				Return "i"
			Case "BLOB"
				Return "b"
			Case "REAL","FLOAT","DOUBLE"
				Return "d"
			Case Else
				Return "s"
		End Select
	Else
		Return "s"
	End If
End Sub

'get map values
private Sub GetMapValues(sourceMap As Map) As List
	Dim listOfValues As List
	listOfValues.Initialize
	Dim iCnt As Int
	Dim iTot As Int
	iTot = sourceMap.Size - 1
	For iCnt = 0 To iTot
		'get the value
		Dim key As String = sourceMap.getkeyat(iCnt)
		Dim value As String = sourceMap.GetValueAt(iCnt)
		value = CStr(value)
		value = value.trim
		'get the type
		Dim vtype As String = GetMapType(key)
		Select Case vtype
			Case "i"
				'integer
				If value = "" Then value = "0"
				value = BANano.parseInt(value)
			Case "d"
				'double
				If value = "" Then value = "0"
				value = BANano.parsefloat(value)
			Case "s", "b"
				'string
		End Select
		listOfValues.Add(value)
	Next
	Return listOfValues
End Sub

'get map keys to a list
private Sub GetMapKeys(sourceMap As Map) As List
	Dim listOfValues As List
	listOfValues.Initialize
	Dim iCnt As Int
	Dim iTot As Int
	iTot = sourceMap.Size - 1
	For iCnt = 0 To iTot
		Dim value As String = sourceMap.GetKeyAt(iCnt)
		listOfValues.Add(value)
	Next
	Return listOfValues
End Sub


'return a sql insert statement to insert current record
'<code>
''insert current record
'dbConnect.Insert
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert As BANanoSQLiteE
	Insert1(Record)
	Return Me
End Sub

'return a sql insert statement
'<code>
''insert a record using own record
'dbConnect.Insert1(Record)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert1(Rec As Map) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.Insert1: '${TableName}' schema is not set!"$)
	End If
	Dim sb As StringBuilder
	Dim columns As StringBuilder
	Dim values As StringBuilder
	Dim listOfValues As List = GetMapValues(Rec)
	Dim listOfTypes As List = GetMapTypes(Rec)
	Dim iCnt As Int
	Dim iTot As Int
	sb.Initialize
	columns.Initialize
	values.Initialize
	sb.Append($"INSERT INTO ${EscapeField(TableName)} ("$)
	iTot = Rec.Size - 1
	For iCnt = 0 To iTot
		Dim col As String = Rec.GetKeyAt(iCnt)
		If iCnt > 0 Then
			columns.Append(", ")
			values.Append(", ")
		End If
		columns.Append(EscapeField(col))
		values.Append("?")
	Next
	sb.Append(columns.ToString)
	sb.Append(") VALUES (")
	sb.Append(values.ToString)
	sb.Append(")")
	query = sb.ToString
	args = listOfValues
	types = listOfTypes
	command = "insert"
	Return Me
End Sub



'return a sql insert statement
'<code>
''insert replace a record
'dbConnect.InsertReplace
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub InsertReplace As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.InsertReplace: '${TableName}' schema is not set!"$)
	End If
	Dim sb As StringBuilder
	Dim columns As StringBuilder
	Dim values As StringBuilder
	Dim listOfValues As List = GetMapValues(Record)
	Dim listOfTypes As List = GetMapTypes(Record)
	Dim iCnt As Int
	Dim iTot As Int
	sb.Initialize
	columns.Initialize
	values.Initialize
	sb.Append($"REPLACE INTO ${EscapeField(TableName)} ("$)
	iTot = Record.Size - 1
	For iCnt = 0 To iTot
		Dim col As String = Record.GetKeyAt(iCnt)
		If iCnt > 0 Then
			columns.Append(", ")
			values.Append(", ")
		End If
		columns.Append(EscapeField(col))
		values.Append("?")
	Next
	sb.Append(columns.ToString)
	sb.Append(") VALUES (")
	sb.Append(values.ToString)
	sb.Append(")")
	query = sb.ToString
	args = listOfValues
	types = listOfTypes
	command = "insert"
	Return Me
End Sub

'delete a single value based on the primary key
'<code>
''delete a record using primary key
'dbConnect.Delete(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Delete(primaryValue As String) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.Delete: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhere(qw, Array("="))
	Return Me
End Sub

Sub GetCount As BANanoSQLiteE
	query = $"select count(*) as records from ${TableName}"$
	command = "select"
	Return Me
End Sub

'join list to multi value string
private Sub JoinFields(delimiter As String, lst As List) As String
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	fld = EscapeField(fld)
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		fld = EscapeField(fld)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

'join list to mv string
private Sub Join(delimiter As String, lst As List) As String
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

'<code>
''read a record
'dbConnect.Read(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Read(primaryValue As String) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.Read: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array("*"), qw, Null, Array(PrimaryKey))
	Return Me
End Sub

'exists
'<code>
''check existence of a record
'dbConnect.Exists(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Exists(primaryValue As String) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.Exists: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array(PrimaryKey), qw, Null, Array(PrimaryKey))
	Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectWhere(array("*"), sw, array(">=", "<"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.SelectWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
	Case "*"
		selFIelds = "*"
	Case Else
		selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
		sb.Append(EscapeField(col))
		If Schema.ContainsKey(col) Then
			Dim colType As String = Schema.Get(col)
			Select Case colType
			Case DB_TEXT, DB_STRING
				sb.Append(" COLLATE NOCASE")
			End Select
		End If
		sb.Append($" ${oper} ?"$)
	Next
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderBy)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select distinct where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'dbConnect.SelectDistinctWhere(array("name"), sw, array("="), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.SelectDistinctWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
		Case "*"
			selFIelds = "*"
		Case Else
			selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT DISTINCT ${selFIelds} FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
		sb.Append(EscapeField(col))
		If Schema.ContainsKey(col) Then
			Dim colType As String = Schema.Get(col)
			Select Case colType
				Case DB_TEXT, DB_STRING
					sb.Append(" COLLATE NOCASE")
			End Select
		End If
		sb.Append($" ${oper} ?"$)
	Next
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderBy)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub

'return a sql to delete record of table where one exists
'<code>
''delete all records
'dbConnect.DeleteAll
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteAll As BANanoSQLiteE
	query = $"DELETE FROM ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub

'reset the auto-increment key
'<code>
''reset the auto-increment key
'dbConnect.ResetAutoIncrement
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub ResetAutoIncrement As BANanoSQLiteE
	query = $"delete from sqlite_sequence where name='${TableName}'"$
	command = "delete"
	Return Me
End Sub

'return a sql to truncate table
'<code>
''delete all records and reset auto increment
'dbConnect.Truncate
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Truncate As BANanoSQLiteE
	query = $"TRUNCATE TABLE ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub



private Sub EQOperators(sm As Map) As List   'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub


'return a sql to delete record of table where one exists
'<code>
''delete records where
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.DeleteWhere(uw, array("="))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DeleteWhere(tblWhere As Map, operators As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.DeleteWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblWhere)
	Dim listOfValues As List = GetMapValues(tblWhere)
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"DELETE FROM ${EscapeField(TableName)} WHERE "$)
	Dim i As Int
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		sb.Append(EscapeField(col))
		Dim opr As String = operators.Get(i)
		sb.Append($" ${opr} ?"$)
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "delete"
	Return Me
End Sub


'return a sql to select record of table where one exists
'<code>
''select all records
'dbConnect.SelectAll(array("*"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectAll(tblfields As List, orderBy As List) As BANanoSQLiteE
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
		Case "*"
			selFIelds = "*"
		Case Else
			selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)}"$)
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderBy)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	command =  "select"
	Return Me
End Sub

'return a sql to select record of table where one exists
'<code>
''select distinct all order by
'dbConnect.SelectDistinctAll(array("name"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectDistinctAll(tblfields As List, orderBy As List) As BANanoSQLiteE
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
	Case "*"
		selFIelds = "*"
	Case Else
		selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT DISTINCT ${selFIelds} FROM ${EscapeField(TableName)}"$)
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim stro As String = JoinFields(",", orderBy)
		If stro.Length > 0 Then
			sb.Append(" ORDER BY ").Append(stro)
		End If
	End If
	query = sb.tostring
	command =  "select"
	Return Me
End Sub

'build the query string
Sub Build As Map
	Dim largs As List
	Dim ltypes As List
	largs = BANano.IIf(args.Size=0, Null, args)
	ltypes = BANano.IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("dbname", DBase)
	b.Put("command", command)
	b.Put("query", query.tolowercase)
	b.Put("args", largs)
	b.Put("types", ltypes)
	Return b
End Sub

'build the query string
Sub Build1 As Map
	Dim largs As List
	Dim ltypes As List
	largs = BANano.IIf(args.Size=0, Null, args)
	ltypes = BANano.IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("dbname", DBase)
	b.Put("command", command)
	b.Put("query", query.tolowercase)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.Put("view", view)
	b.Put("action", action)
	b.Put("noresult", NoResult)
	Return b
End Sub

'return the first record
Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub

'update a record
'<code>
''update current record
'dbConnect.Update(10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update(priValue As String) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.Update: '${TableName}' schema is not set!"$)
	End If
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Record, tblWhere, Null)
	Return Me
End Sub

'update using primary key
'<code>
''update record using primary key
'Dim rec as Map = CreateMap()
'rec.put("name", "Anele")
'rec.put("email", "email@email.com")
'dbConnect.Update1(rec, 10)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Update1(Rec As Map, priValue As String) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.Update1: '${TableName}' schema is not set!"$)
	End If
	Record = Rec
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Rec, tblWhere, Null)
	Return Me
End Sub

'return a sql to update records of table where one exists
'<code>
''update where using map...
'dim rec As Map = CreateMap()
''define where clause
'rec.put("name", "Anele")
'Dim uw As Map = CreateMap()
'uw.put("id", 10)
'dbConnect.UpdateWhere(rec, uw, array("="))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code> 
Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLiteE.UpdateWhere: '${TableName}' schema is not set!"$)
	End If
	If BANano.IsNull(operators) Then operators = EQOperators(tblWhere)
	Dim listOfTypes As List = GetMapTypes(tblfields)
	Dim listOfTypes1 As List = GetMapTypes(tblWhere)
	listOfTypes.AddAll(listOfTypes1)
	Dim listOfValues As List = GetMapValues(tblfields)
	Dim listOfValues1 As List = GetMapValues(tblWhere)
	listOfValues.AddAll(listOfValues1)
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"UPDATE ${EscapeField(TableName)} SET "$)
	Dim i As Int
	Dim iTot As Int = tblfields.Size - 1
	For i = 0 To iTot
		Dim col As String = tblfields.GetKeyAt(i)
		sb.Append(EscapeField(col))
		If i <> iTot Then
			sb.Append("= ?,")
		Else
			sb.Append("= ?")
		End If
	Next
	sb.Append($" WHERE "$)
	Dim iWhere As Int = tblWhere.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = tblWhere.GetKeyAt(i)
		sb.Append(EscapeField(col))
		Dim opr As String = operators.Get(i)
		sb.Append($" ${opr} ?"$)
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "update"
	Return Me
End Sub


'return a sql to update all records of table
'update all records
'<code>
''update all records with new field details
'dbConnect.UpdateAll(CreateMap("name":"Anele", "age":30))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub UpdateAll(tblFields As Map) As BANanoSQLiteE
	If Schema.Size = 0 Then
		Log($"BANanoSQLite.UpdateAll: '${TableName}' schema is not set!"$)
	End If
	Dim operators As List = EQOperators(tblFields)
	Dim listOfTypes As List = GetMapTypes(tblFields)
	Dim listOfValues As List = GetMapValues(tblFields)
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"UPDATE ${EscapeField(TableName)} SET "$)
	Dim i As Int
	Dim iTot As Int = tblFields.Size - 1
	For i = 0 To iTot
		Dim col As String = tblFields.GetKeyAt(i)
		Dim oper As String = operators.Get(i)
		sb.Append(col)
		If i <> iTot Then
			sb.Append($" ${oper} ?,"$)
		Else
			sb.Append($" ${oper} ?"$)
		End If
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "update"
	Return Me
End Sub


'convert the json
'<code>
''convert response to readable map
'dbConnect.FromJSON
'</code>
Sub FromJSON As BANanoSQLiteE
	OK = False
	If json.StartsWith("{") Or json.Startswith("[") Then
		Dim m As Map = BANano.FromJson(json)
		response = m.Get("response")
		error = m.Get("error")
		result = m.Get("result")
		affectedRows = m.Get("affectedRows")
		If response = "Success" Then
			OK = True
		End If
	Else
		response = json
		error = json
		result = NewList
		affectedRows = -1
		OK = False
	End If
	Return Me
End Sub

'select sum(receiptamount) as amount from receipts
'get a sum of all records
'<code>
'dbConnect.GetSum
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'for each rec As Map in dbConnect.Result
'log(rec)
'next
'</code>
Sub GetSum
	query = $"select sum(${PrimaryKey}) as ${PrimaryKey} from ${TableName}"$
	command = "select"
End Sub

'return a sql to select record of table where one exists
'<code>
''select all records
'dbConnect.SelectAllDesc(array("*"), array("name"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in res
'Next
'</code>
Sub SelectAllAscDesc(tblfields As List, orderBy As List, AscDesc As List)
	'are we selecting all fields or just some
	Dim fld1 As String = tblfields.Get(0)
	Dim selFIelds As String = ""
	Select Case fld1
		Case "*"
			selFIelds = "*"
		Case Else
			selFIelds = JoinFields(",", tblfields)
	End Select
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"SELECT ${selFIelds} FROM ${EscapeField(TableName)}"$)
	If orderBy.IsInitialized And orderBy.Size > 0 Then
		'order by
		Dim xOrder As List
		xOrder.Initialize
		'
		Dim obTot As Int = orderBy.Size - 1
		Dim obCnt As Int
		For obCnt = 0 To obTot
			Dim xfld As String = orderBy.Get(obCnt)
			If AscDesc.IsInitialized And AscDesc.Size > 0 Then
				'does the field exist in sort order
				If AscDesc.IndexOf(xfld) >= 0 Then
					xfld = EscapeField(xfld) & " DESC"
					xOrder.Add(xfld)
				End If
			Else
				xOrder.Add(EscapeField(xfld))
			End If
		Next
		Dim strO As String = Join(",", xOrder)
		If strO.Length > 0 Then
			sb.Append(" ORDER BY ").Append(strO)
		End If
	End If
	query = sb.tostring
	command =  "select"
	response = ""
	error = ""
	result = NewList
	json = ""
	affectedRows = 0
End Sub



#if PHP
function preparesqlite($db, $sql, $types, $values) {
		/* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */
		$stmt = $db->prepare($sql);
		if(is_array($types)){
			$n = count($types);
			for($i = 0; $i < $n; $i++) {
				$param_type = $types[$i];
				$param_value = $values[$i];
				$loc = $i + 1;
				switch($param_type){
					case "s":
						$stmt->bindValue($loc, $param_value, SQLITE3_TEXT);
						break;
					case "i":
						$stmt->bindValue($loc, $param_value, SQLITE3_INTEGER);
						break;
					case "d":
						$stmt->bindValue($loc, $param_value, SQLITE3_FLOAT);
						break;
					case "b":
						$stmt->bindValue($loc, $param_value, SQLITE3_BLOB);
						break;
				}
			}
		}
		return $stmt;
}

function BANanoSQLite($dbname,$command,$query,$args,$types) {
	$db;
   	//set the header
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
   	$db = new SQLite3($dbname, SQLITE3_OPEN_CREATE | SQLITE3_OPEN_READWRITE);
	if(!$db) {
  		$response = $db->lastErrorMsg();
  		$rows = Array();
		$rows[] = $response;
		$output = json_encode($rows);
	  	die($output);
	}
	$commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable');
	if(in_array($command,$commands)) {
    	$command = 'changes';
	}
	switch($command){
		case "changes":
			try {
			 $stmt = preparesqlite($db, $query, $types, $args);
			 $res = $stmt->execute();
			 $changes = $db->changes();
			 $rows = Array();
			 $rows[] = $changes;
			 $res->finalize();
			 $resp['response'] = "Success";
			 $resp['error'] = '';
			 $resp['result'] = $rows;
			 $resp['affectedRows'] = $changes;
			 $output = json_encode($resp);
	  		 echo $output;
			 break;
			}
			catch (Exception $e) {
			 $error = $e->getMessage();
			 $resp['response'] = "Error";
			 $resp['error'] = $response;
			 $resp['result'] = array();
			 $output = json_encode($resp);
	         die($output);
			}
	   	default:
		    try {
			$stmt = preparesqlite($db, $query, $types, $args);
			$res = $stmt->execute();
			$changes = $db->changes();
			$rows = Array();
			while($row = $res->fetchArray(1)) {
				$rows[] = $row;
			}
			$res->finalize();
			$resp['response'] = "Success";
			$resp['error'] = '';
			$resp['result'] = $rows;
			$resp['affectedRows'] = $changes;
			$output = json_encode($resp);
	  		echo $output;
			break;
			}
			catch (Exception $e) {
			 $error = $e->getMessage();
			 $resp['response'] = "Error";
			 $resp['error'] = $response;
			 $resp['result'] = array();
			 $output = json_encode($resp);
	         die($output);
			}
	}
	$db->close();
}
#End If