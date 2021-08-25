B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public const DB_VARCHAR_20 As String = "VARCHAR(20)"
	Public const DB_VARCHAR_10 As String = "VARCHAR(10)"
	Public const DB_VARCHAR_30 As String = "VARCHAR(30)"
	Public const DB_VARCHAR_40 As String = "VARCHAR(40)"
	Public const DB_VARCHAR_50 As String = "VARCHAR(50)"
	Public const DB_VARCHAR_100 As String = "VARCHAR(100)"
	Public const DB_VARCHAR_255 As String = "VARCHAR(255)"
	Public const DB_STRING As String = "TEXT"
	Public const DB_INT As String = "INT"
	Public const DB_FLOAT As String = "FLOAT"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_BLOB As String = "BLOB"
	Public const DB_BOOL As String = "BOOL"
	Public const DB_REAL As String = "REAL"
	Public const DB_DATE As String = "DATE"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Private BANano As BANano   'ignore
	Public MethodName As String
	Public MethodNameDynamic As String
	Private Schema As Map
	Private host As String
	Private username As String
	Private password As String
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
	Public Auto As String
	Public fields As List
	Public view As String
	Public action As String
	Public NoResult As Boolean
	Public URL As String
End Sub

'get a count of all records
'<code>
'dbConnect.GetCount
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
Sub GetCount As BANanoMySQLE
	query = $"select count(${PrimaryKey}) as records from ${TableName}"$
	command = "select"
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
Sub GetSum As BANanoMySQLE
	query = $"select sum(${PrimaryKey}) as ${PrimaryKey} from ${TableName}"$
	command = "select"
	Return Me
End Sub

'set database connection settings
Sub SetConnection(shost As String, susername As String, spassword As String) As BANanoMySQLE
	host = shost
	username = susername
	password = spassword
	Return Me
End Sub

'set callback for BANanoServer
Sub SetCallBack(v As String, a As String)
	view = v
	action = a
End Sub

private Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub


private Sub AndOrOperators(sm As Map) As List    'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("AND")
	Next
	Return nl
End Sub

'select where
'<code>
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
Sub SelectWhere1(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.SelectWhere1: '${TableName}' schema is not set!"$)
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

'define a new list
Sub NewList As List
	Dim lst As List
	lst.Initialize
	Return lst
End Sub


'convert the json
'<code>
''convert response to readable map
'dbConnect.FromJSON
'</code>
Sub FromJSON As BANanoMySQLE
	OK = False
	Try
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
	End If
	Catch
		response = json
		error = json
		result = NewList
		affectedRows = -1
	End Try
	Return Me
End Sub

'add a field to the schame
'<code>
''add schema to table
'dbConnect.SchemaAddField("id", dbConntect.DB_INT)
'</code>
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub


'get maximum of the primary key
'<code>
'dbConnect.GetMax
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
Sub GetMax As BANanoMySQLE
	query = $"SELECT MAX(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub

'get minimum of the primary key
'<code>
'dbConnect.GetMin
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
Sub GetMin As BANanoMySQLE
	query = $"SELECT MIN(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	command = "select"
	Return Me
End Sub


'get databases
'<code>
'dbConnect.GetDatabases
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
Sub GetDatabases As BANanoMySQLE
	query = $"SHOW DATABASES"$
	command = "databases"
	Return Me
End Sub

'get table names
'<code>
'dbConnect.GetTableNames
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
Sub GetTableNames As BANanoMySQLE
	query = $"select table_name from information_schema.tables where table_schema = '${DBase}' order by table_name"$
	command = "select"
	Return Me
End Sub

'show indexes
'<code>
'dbConnect.ShowIndexes
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
Sub ShowIndexes
	query = $"SELECT INDEX_NAME AS `idxname`, IF (NON_UNIQUE = 0 AND INDEX_NAME = 'PRIMARY', 1, 0) AS `idxprimary`, IF (NON_UNIQUE = 0 AND INDEX_NAME <> 'PRIMARY', 1, 0) AS `idxunique`, GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX) AS `idxcolumns` FROM information_schema.STATISTICS WHERE TABLE_SCHEMA = '${DBase}' AND TABLE_NAME = '${TableName}' GROUP BY INDEX_NAME, NON_UNIQUE"$
	command = "select"
End Sub

'show foreign keys
'<code>
'dbConnect.ShowForeignKeys
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
Sub ShowForeignKeys
	query = $"SELECT i.CONSTRAINT_NAME as `fkname`, k.COLUMN_NAME AS `column`, k.REFERENCED_TABLE_NAME AS `reftable`, k.REFERENCED_COLUMN_NAME AS `refcolumn`, c.UPDATE_RULE AS `onupdate`, c.DELETE_RULE AS `ondelete` FROM information_schema.TABLE_CONSTRAINTS AS i JOIN information_schema.KEY_COLUMN_USAGE AS k ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME JOIN information_schema.REFERENTIAL_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = i.CONSTRAINT_NAME WHERE i.TABLE_SCHEMA = '${DBase}' AND i.TABLE_NAME = '${TableName}' AND i.CONSTRAINT_TYPE = 'FOREIGN KEY' GROUP BY i.CONSTRAINT_NAME, k.COLUMN_NAME, k.REFERENCED_TABLE_NAME, k.REFERENCED_COLUMN_NAME, c.UPDATE_RULE, c.DELETE_RULE"$
	command = "select"
End Sub

'get table structure
'<code>
'dbConnect.ShowColumns
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
Sub ShowColumns As BANanoMySQLE
	query = $"SHOW COLUMNS FROM ${TableName.touppercase}"$
	command = "select"
	Return Me
End Sub

'describe table
'<code>
'dbConnect.DescribeTable
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
Sub DescribeTable As BANanoMySQLE
	query = $"DESCRIBE ${TableName.ToUpperCase}"$
	command = "select"
	Return Me
End Sub

'get next available id using pk
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

'convert to string
Sub CStr(o As Object) As String
	Return "" & o
End Sub


'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As BANanoMySQLE
'dbConnect.Initialize("db1", "users", "id", "id")
'</code>
Sub Initialize(dbName As String, tblName As String, PK As String, AI As String) As BANanoMySQLE
	Schema.Initialize
	Record.Initialize
	URL = ""
	MethodName = "BANanoMySQL"
	MethodNameDynamic = "BANanoMySQLDynamic"
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
	host = ""
	username = ""
	password = ""
	Auto = AI
	NoResult = False
	Return Me
End Sub

'prepare for new table definition
Sub SchemaClear As BANanoMySQLE
	Schema.clear
	Return Me
End Sub

'set record field
Sub SetField(fldName As String, fldValue As Object) As BANanoMySQLE
	Record.Put(fldName, fldValue)
	Return Me
End Sub

'schema add boolean
Sub SchemaAddBoolean(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub

'add int to the schema
Sub SchemaAddInt(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
End Sub

'add double fields
Sub SchemaAddDouble(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub


'add float to the schema
Sub SchemaAddFloat(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub

'add blob to the schema
Sub SchemaAddBlob(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub

'add text to the schema
Sub SchemaAddText(bools As List) As BANanoMySQLE
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
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
Sub SchemaCreateTable As BANanoMySQLE
	Return CreateTable(Schema)
End Sub

'convert a json string to a map
Sub Json2Map(strJSON As String) As Map
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
Sub Map2Json(mp As Map) As String
	Dim jsonx As BANanoJSONGenerator
	jsonx.Initialize(mp)
	Return jsonx.ToString
End Sub


'excape fields with ``
Private Sub EscapeField(f As String) As String
	Return $"`${f}`"$
End Sub

'return string for test connection operation
Sub Connection As BANanoMySQLE
	command = "connection"
	Return Me
End Sub

'create a database
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
Sub CreateDatabase As BANanoMySQLE
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
Sub DropDataBase As BANanoMySQLE
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
'for each rec As Map in dbConnect.Result
'next
'</code>
Sub Execute(strSQL As String) As BANanoMySQLE
	query = strSQL
	command = "execute"
	Return Me
End Sub

'create table
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
Sub CreateTable(tblFields As Map) As BANanoMySQLE
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
		If fldCnt > 0 Then
			sb.Append(", ")
		End If
		sb.Append(EscapeField(fldName))
		sb.Append(" ")
		sb.Append(fldType)
		If fldName.EqualsIgnoreCase(PrimaryKey) Then
			sb.Append(" NOT NULL PRIMARY KEY")
		End If
		If fldName.EqualsIgnoreCase(Auto) Then
			sb.Append(" AUTO_INCREMENT")
		End If
	Next
	sb.Append(")")
	'define the qry to execute
	query = "CREATE TABLE IF NOT EXISTS " & EscapeField(TableName) & " " & sb.ToString
	command = "createtable"
	Return Me
End Sub

'drop a table
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
'</code>
Sub DropTable As BANanoMySQLE
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


'insert current record
'<code>
''insert current record
'dbConnect.Record.Initialize
'dbConnect.Record.put("id", "1")
'dbConnect.Record.put("name", "Mashy")
'dbConnect.Insert
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert As BANanoMySQLE
	Insert1(Record)
	Return Me
End Sub

'insert a record using own record
'<code>
''insert a record using own record
'Dim rec As Map = CreateMap()
'rec.put("id", "1")
'rec.put("name", "Mashy")
'dbConnect.Insert1(rec)
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Insert1(Rec As Map) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Insert1: '${TableName}' schema is not set!"$)
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



'insert replace a record using current record
'<code>
''insert replace a record
'dbConnect.InsertReplace
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'End Select
'</code>
Sub InsertReplace As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.InsertReplace: '${TableName}' schema is not set!"$)
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
	command = "replace"
	Return Me
End Sub

'delete a record using primary key
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
Sub Delete(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Delete: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhere(qw, Array("="))
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

'read a record
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
'Dim res As List = dbConnect.Result
'For Each rec As Map in Res
'Next
'</code>
Sub Read(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Read: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array("*"), qw, Null, Array(PrimaryKey))
	Return Me
End Sub

'check existence of a record
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
'Dim res As List = dbConnect.Result
'For Each rec As Map in Res
'Next
'</code>
Sub Exists(primaryValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Exists: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array(PrimaryKey), qw, Null, Array(PrimaryKey))
	Return Me
End Sub

'select where
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
'For Each rec As Map in Res
'Next
'</code>
Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectWhere: '${TableName}' schema is not set!"$)
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


'select max where
'<code>
''select max where
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
'For Each rec As Map in Res
'Next
'</code>
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As BANanoMySQLE
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
		sb.Append($" ${oper} ?"$)
	Next
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "select"
	Return Me
End Sub


'select where asc/desc
'<code>
''select where asc/desc
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
'For Each rec As Map in Res
'Next
'</code>
Sub SelectWhereAscDesc(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.SelectWhereAscDesc: '${TableName}' schema is not set!"$)
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



'select distinct where
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
'For Each rec As Map in Res
'Next
'</code>
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.SelectDistinctWhere: '${TableName}' schema is not set!"$)
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

'delete all records
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
Sub DeleteAll As BANanoMySQLE
	query = $"DELETE FROM ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub


private Sub EQOperators(sm As Map) As List  'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub



'delete records where
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
Sub DeleteWhere(tblWhere As Map, operators As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.DeleteWhere: '${TableName}' schema is not set!"$)
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


'select all records
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
'For Each rec As Map in Res
'Next
'</code>
Sub SelectAll(tblfields As List, orderBy As List) As BANanoMySQLE
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

'select distinct all order by
'<code>
'dbConnect.SelectDistinctAll(array("name"), array("name"))
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'Dim res As List = dbConnect.Result
'For Each rec As Map in Res
'Next
'</code>
Sub SelectDistinctAll(tblfields As List, orderBy As List) As BANanoMySQLE
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

'build qry
Sub Build As Map
	Dim largs As List
	Dim ltypes As List
	largs = BANano.IIf(args.Size=0, Null, args)
	ltypes = BANano.IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query.tolowercase)
	b.Put("args", largs)
	b.Put("types", ltypes)
	Return b
End Sub

'build qry
Sub Build1 As Map
	Dim largs As List
	Dim ltypes As List
	largs = BANano.IIf(args.Size=0, Null, args)
	ltypes = BANano.IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query.tolowercase)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.Put("view", view)
	b.Put("action", action)
	b.Put("noresult", NoResult)
	Return b
End Sub

'build qry for dynamic connection
Sub BuildDynamic(isPHP As Boolean) As Map
	Dim largs As List
	Dim ltypes As List
	largs = BANano.IIf(args.Size=0, Null, args)
	ltypes = BANano.IIf(types.Size=0,Null, types)
	Dim b As Map = CreateMap()
	b.Put("command", command)
	b.Put("query", query.tolowercase)
	b.Put("args", largs)
	b.Put("types", ltypes)
	b.put("host", host)
	b.Put("username", username)
	b.Put("password", password)
	b.Put("dbname", DBase)
	If isPHP = False Then
		b.Put("view", view)
		b.Put("action", action)
	End If
	Return b
End Sub

'delete all records and reset auto increment
'<code>
'dbConnect.Truncate
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub Truncate As BANanoMySQLE
	query = $"TRUNCATE TABLE ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub


'get the first record
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
Sub Update(priValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.Update: '${TableName}' schema is not set!"$)
	End If
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Record, tblWhere, Null)
	Return Me
End Sub

'update record using primary key
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
Sub Update1(Rec As Map, priValue As String) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.Update1: '${TableName}' schema is not set!"$)
	End If
	Record = Rec
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Rec, tblWhere, Null)
	Return Me
End Sub

'update where using map...
'<code>
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
Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.UpdateWhere: '${TableName}' schema is not set!"$)
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
	fields = GetMapKeys(tblfields)
	query = sb.tostring
	args = listOfValues
	types = listOfTypes
	command = "update"
	Return Me
End Sub


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
Sub UpdateAll(tblFields As Map) As BANanoMySQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQL.UpdateAll: '${TableName}' schema is not set!"$)
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

'select all records asc/desc
'<code>
''select all records
'dbConnect.SelectAllAscDesc(array("*"), array("name"), array("name"))
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


'**** DONT EVER USE
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

#if PHP
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

function get_result(\mysqli_stmt $statement)
{
    $result = array();
    $statement->store_result();
    for ($i = 0; $i < $statement->num_rows; $i++)
    {
        $metadata = $statement->result_metadata();
        $params = array();
        while ($field = $metadata->fetch_field())
        {
            $params[] = &$result[$i][$field->name];
        }
        call_user_func_array(array($statement, 'bind_result'), $params);
        $statement->fetch();
    }
    return $result;
}

function prepareMySQL($conn, $query, $types, $args) {
	//paramater types to execute
	/* Bind parameters. Types: s = string, i = integer, d = double,  b = blob */
	$stmt = $conn->prepare($query);
	if(is_array($types)){
		$a_params = array();
		$param_type = '';
		$n = count($types);
		for($i = 0; $i < $n; $i++) {
			$param_type .= $types[$i];
		}
		$a_params[] = & $param_type;
		//values to execute
		for($i = 0; $i < $n; $i++) {
			$a_params[] = & $args[$i];
		}
		call_user_func_array(array($stmt, 'bind_param'), $a_params);
	}
	return $stmt;
}

function BANanoMySQL($command, $query, $args, $types) {
	$resp = array();
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
	require_once './assets/mysqlconfig.php';
    //connect To MySQL
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    //we cannot connect Return an error
    if ($conn->connect_error) {
        $response = $conn->connect_error;
        $resp['response'] = "Error";
		$resp['error'] = $response;
		$resp['result'] = array();
		$output = json_encode($resp);
        die($output);
    }
    mysqli_set_charset($conn, 'utf8');
    //$query = mysqli_real_escape_string($conn, $query);
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
    if (in_array($command, $commands)) {
        $command = 'changes';
    }
    switch ($command) {
    case "changes":
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
	
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
    default:
        $stmt = prepareMySQL($conn, $query, $types, $args);
        
		if (!($result = $stmt->execute())) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
		
		$rows = get_result($stmt);
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = $rows;
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
	}
	echo ($output);
    $stmt->close();
    $conn->close();
}

function BANanoMySQL1($command, $query, $args, $types) {
	$resp = array();
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
	require_once './assets/mysqlconfig.php';
    //connect To MySQL
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    //we cannot connect Return an error
    if ($conn->connect_error) {
        $response = $conn->connect_error;
        $resp['response'] = "Error";
		$resp['error'] = $response;
		$resp['result'] = array();
		$output = json_encode($resp);
        die($output);
    }
    mysqli_set_charset($conn, 'utf8');
    //$query = mysqli_real_escape_string($conn, $query);
    $commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
    if (in_array($command, $commands)) {
        $command = 'changes';
    }
    switch ($command) {
    case "changes":
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
	
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
    default:
        $stmt = prepareMySQL($conn, $query, $types, $args);
        //$result = $stmt->execute();
		//$result = $stmt->get_result();
        
		if (!($result = $stmt->execute())) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
		
		if (!($result = $stmt->get_result())) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
		
		$affRows = $conn->affected_rows;
    	$rows = array();
        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
        }
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = $rows;
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
	}
	echo ($output);
    $stmt->close();
    $conn->close();
}

function BANanoMySQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname) {
	$resp = array();
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
	//connect To MySQL
    $conn = new mysqli($host, $username, $password);
    //we cannot connect Return an error
    if ($conn->connect_error) {
        $response = $conn->connect_error;
        $resp['response'] = "Error";
		$resp['error'] = $response;
		$resp['result'] = array();
		$output = json_encode($resp);
        die($output);
    }
	//select the database
	mysqli_set_charset($conn, 'utf8');
    $commands = array('delete', 'update', 'replace', 'insert', 'createtable', 'droptable');
    if (in_array($command, $commands)) {
        $command = 'changes';
    }
    switch ($command) {
    case "connection":
		$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = 0;
		$output = json_encode($resp);
		die($output);
	case "createdb":
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
	
		$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = 0;
		$output = json_encode($resp);
        break;
	case "dropdb":
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
	
		$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = 0;
		$output = json_encode($resp);
        break;
	case "databases":
		$stmt = prepareMySQL($conn, $query, $types, $args);
        if (!($result = $stmt->execute())) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
		$rows = get_result($stmt);
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = $rows;
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
	case "changes":
		//select the db before processing
		$selected = mysqli_select_db($conn, $dbname);
		if (!$selected) {
			$response = $conn->connect_error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
        	die($output);
		}
        $stmt = prepareMySQL($conn, $query, $types, $args);
        if (! $stmt -> execute()) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
	
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = array();
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
    default:
		//select the db before processing
		$dbname = mysqli_real_escape_string($conn, $dbname);
		$selected = mysqli_select_db($conn, $dbname);
		if (!$selected) {
			$response = $conn->connect_error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
        	die($output);
		}
        $stmt = prepareMySQL($conn, $query, $types, $args);
               
		if (!($result = $stmt->execute())) {
			$response = $stmt->error;
        	$resp['response'] = "Error";
			$resp['error'] = $response;
			$resp['result'] = array();
			$output = json_encode($resp);
	        die($output);
		}
		$rows = get_result($stmt);
		$affRows = $conn->affected_rows;
    	$resp['response'] = "Success";
		$resp['error'] = '';
		$resp['result'] = $rows;
		$resp['affectedRows'] = $affRows;
		$output = json_encode($resp);
        break;
	}
	echo ($output);
    $stmt->close();
    $conn->close();
}
#end if