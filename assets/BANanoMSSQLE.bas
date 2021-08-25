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
	Public const DB_BLOB As String = "BLOB"
	Public const DB_DOUBLE As String = "DOUBLE"
	Public const DB_BOOL As String = "BOOL"
	Public const DB_REAL As String = "REAL"
	Public const DB_DATE As String = "DATE"
	Public const DB_INTEGER As String = "INTEGER"
	Public const DB_TEXT As String = "TEXT"
	Private BANano As BANano   'ignore
	Public MethodName As String
	Public MethodNameDynamic As String
	Private Schema As Map
	Public TableName As String
	Public PrimaryKey As String
	Public Record As Map
	Public OK As Boolean
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
	Private Schema As Map
	Private host As String
	Private username As String
	Private password As String
	Private Auto As String
	Public view As String
	Public action As String
	Public NoResult As Boolean
	Public URL As String
End Sub


Sub GetCount As BANanoMSSQLE
	query = $"select count(*) as records from ${TableName}"$
	command = "select"
	Return Me
End Sub

'set database connection settings
Sub SetConnection(shost As String, susername As String, spassword As String) As BANanoMSSQLE
	host = shost
	username = susername
	password = spassword
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
Sub Truncate As BANanoMSSQLE
	query = $"TRUNCATE TABLE ${EscapeField(TableName)}"$
	command = "delete"
	Return Me
End Sub


Sub SetCallBack(v As String, a As String)
	view = v
	action = a
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
Sub SelectWhere1(tblfields As List, tblWhere As Map, operators As List, AndOr As List, orderBy As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.SelectWhere: '${TableName}' schema is not set!"$)
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
Sub SelectWhereAscDesc(tblfields As List, tblWhere As Map, operators As List, orderBy As List, AscDesc As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQL.SelectWhereAscDesc: '${TableName}' schema is not set!"$)
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

'return a sql to select record of table where one exists
'<code>
''select where
'Dim sw As Map = CreateMap()
'sw.put("id", 10)
'sw.put("age", 20)
'dbConnect.SelectMaxWhere("field", sw, array(">=", "<"))
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
Sub SelectMaxWhere(fld As String, tblWhere As Map, operators As List) As BANanoMSSQLE
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
Sub GetTableNames As BANanoMSSQLE
	query = $"select table_name from information_schema.tables where TABLE_TYPE = 'BASE TABLE' and table_name not in ('MSreplication_options','spt_fallback_db', 'spt_fallback_dev', 'spt_fallback_usg', 'spt_monitor') order by table_name"$
	command = "select"
	Return Me
End Sub

'get table structure
'<code>
''describe table
'dbConnect.DescribeTable
'dbConnect.JSON = BANano.CallInlinePHPWait(dbConnect.MethodName, dbConnect.Build)
'dbConnect.FromJSON
'Select Case dbConnect.OK
'Case False
'Dim strError As String = dbConnect.Error
'Log(strError)
'End Select
'</code>
Sub DescribeTable As BANanoMSSQLE
	query = $"select character_maximum_length, column_name, data_type from information_schema.columns where table_name = '${TableName}'"$
	command = "select"
	Return Me
End Sub


Sub NewList As List
	Dim lst As List
	lst.Initialize
	Return lst
End Sub

'convert the json
Sub FromJSON As BANanoMSSQLE
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
Sub DeleteAll As BANanoMSSQLE
	Dim sb As String = $"DELETE FROM ${EscapeField(TableName)}"$
	query = sb
	command = "delete"
	Return Me
End Sub

Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub

Sub SchemaAddBlob(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
	Return Me
End Sub


'schema add boolean
Sub SchemaAddBoolean(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
	Return Me
End Sub


Sub SchemaAddDate(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_DATE)
	Next
	Return Me
End Sub

'add double fields
Sub SchemaAddDouble(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
	Return Me
End Sub


Sub SchemaAddFloat(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
	Return Me
End Sub

Sub SchemaAddText(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
	Return Me
End Sub



Sub SchemaAddInt(bools As List) As BANanoMSSQLE
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
	Return Me
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
Sub Update(priValue As String) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Update: '${TableName}' schema is not set!"$)
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
Sub Update1(Rec As Map, priValue As String) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Update1: '${TableName}' schema is not set!"$)
	End If
	Record = Rec
	Dim tblWhere As Map = CreateMap()
	tblWhere.Put(PrimaryKey, priValue)
	UpdateWhere(Rec, tblWhere, Null)
	Return Me
End Sub

private Sub EQOperators(sm As Map) As List    'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub

Sub RecordFromMap(sm As Map)
	Record.Initialize
	For Each k As String In sm.Keys
		Dim v As Object = sm.Get(k)
		Record.Put(k, v)
	Next
End Sub

'prepare for new table definition
Sub SchemaClear As BANanoMSSQLE
	Schema.clear
	Return Me
End Sub


Sub SetField(fldName As String, fldValue As Object) As BANanoMSSQLE
	Record.Put(fldName, fldValue)
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
Sub SchemaCreateTable As BANanoMSSQLE
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
Sub CreateTable(tblFields As Map) As BANanoMSSQLE
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
		If fldName.EqualsIgnoreCase(Auto) Then
			sb.Append(" IDENTITY(1,1)")
		End If
		If fldName.EqualsIgnoreCase(PrimaryKey) Then
			sb.Append(" PRIMARY KEY")
		End If
	Next
	sb.Append(")")
	'define the qry to execute
	query = "CREATE TABLE " & EscapeField(TableName) & " " & sb.ToString
	command = "createtable"
	Return Me
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
Sub GetMax As BANanoMSSQLE
	Dim sb As String = $"SELECT MAX(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	query = sb
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
Sub GetMin As BANanoMSSQLE
	Dim sb As String = $"SELECT MIN(${PrimaryKey}) As ${PrimaryKey} FROM ${EscapeField(TableName)}"$
	query = sb
	command = "select"
	Return Me
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


'convert object to string
private Sub CStr(o As Object) As String
	If o = BANano.UNDEFINED Then o = ""
	Return "" & o
End Sub

'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As BANanoMSSQLE
'dbConnect.Initialize("db1", "users", "id", "id")
'</code>
Sub Initialize(dbName As String, tblName As String, PK As String, AI As String) As BANanoMSSQLE
	Schema.Initialize
	Record.Initialize
	MethodName = "BANanoMSSQL"
	MethodNameDynamic = "BANanoMSSQLDynamic"
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
	host = ""
	username = ""
	password = ""
	Auto = AI
	NoResult = False
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

'convert a map to a json string using BANanoJSONGenerator
private Sub Map2Json(mp As Map) As String
	Dim jsonx As BANanoJSONGenerator
	jsonx.Initialize(mp)
	Return jsonx.ToString
End Sub


Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub

'escape fields with []
Private Sub EscapeField(f As String) As String
	Return $"[${f}]"$
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
Sub Execute(strSQL As String) As BANanoMSSQLE
	strSQL = strSQL.trim
	query = strSQL
	command = "execute"
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

'get map keys
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
Sub Insert As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Insert: '${TableName}' schema is not set!"$)
	End If
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
Sub Insert1(Rec As Map) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.Insert1: '${TableName}' schema is not set!"$)
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
Sub Read(primaryValue As String) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Read: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	SelectWhere(Array("*"), qw, Null, Array(PrimaryKey))
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
Sub Delete(primaryValue As String) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Delete: '${TableName}' schema is not set!"$)
	End If
	Dim qw As Map = CreateMap()
	qw.Put(PrimaryKey, primaryValue)
	DeleteWhere(qw, Array("="))
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
Sub Exists(primaryValue As String) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMySQLE.Exists: '${TableName}' schema is not set!"$)
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
Sub SelectWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.SelectWhere: '${TableName}' schema is not set!"$)
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
		sb.Append(EscapeField(col))
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
Sub SelectDistinctWhere(tblfields As List, tblWhere As Map, operators As List, orderBy As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.SelectDistinctWhere: '${TableName}' schema is not set!"$)
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
Sub DeleteWhere(tblWhere As Map, operators As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.DeleteWhere: '${TableName}' schema is not set!"$)
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
Sub SelectAll(tblfields As List, orderBy As List) As BANanoMSSQLE
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
Sub SelectDistinctAll(tblfields As List, orderBy As List) As BANanoMSSQLE
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

'build the map to pass to php from statement
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

'build the map to pass to php from statement
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

'build with connection settings
Sub BuildDynamic As Map
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
	Return b
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
Sub UpdateWhere(tblfields As Map, tblWhere As Map, operators As List) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.UpdateWhere: '${TableName}' schema is not set!"$)
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
Sub UpdateAll(tblFields As Map) As BANanoMSSQLE
	If Schema.Size = 0 Then
		Log($"BANanoMSSQLE.UpdateAll: '${TableName}' schema is not set!"$)
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




#if php
function BANanoMSSQL($command, $query, $args, $types){
	$resp = array();
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
	require_once './assets/mssqlconfig.php';
	$serverName = DB_HOST;
	$uid = DB_USER;
	$pwd = DB_PASS;
	$database = DB_NAME;
	try {
		$conn = new PDO("sqlsrv:server=$serverName;database=$database", $uid, $pwd);
 		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		$conn->setAttribute(PDO::SQLSRV_ATTR_DIRECT_QUERY, true);
		
    	$commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
    	if (in_array($command, $commands)) {
        	$command = 'changes';
    	}
		switch ($command) {
    	case "changes":
        	$stmt = $conn->prepare($query);
			$stmt->execute($args);
			$affRows = $stmt->rowCount();
			
			$resp['response'] = "Success";
			$resp['error'] = '';
			$resp['result'] = array();
			$resp['affectedRows'] = $affRows;
			$output = json_encode($resp);
        	break;
    	default:
			$stmt = $conn->prepare($query);
			$stmt->execute($args);
			$rows = $stmt->fetchAll();
        	$affRows = $stmt->rowCount();
			$resp['response'] = "Success";
			$resp['error'] = '';
			$resp['result'] = $rows;
			$resp['affectedRows'] = $affRows;
			$output = json_encode($resp);
        	break;
		}
    	echo ($output);
		// Free statement and connection resources.
		$stmt = null;
		$conn = null;
	} catch( PDOException $e ) {
		$response = $e->getMessage();
		$resp['response'] = "Error";
		$resp['error'] = $response;
		$resp['result'] = array();
		$output = json_encode($resp);
        die($output);
	}
}

function BANanoMSSQLDynamic($command, $query, $args, $types, $host, $username, $password, $dbname){
	$resp = array();
	header('Access-Control-Allow-Origin: *');
	header('content-type: application/json; charset=utf-8');
	header("Access-Control-Allow-Credentials: true");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');
	$conn=null;
	try {
		$conn = new PDO("sqlsrv:server=$host;database=$dbname", $username, $password);
 		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		$conn->setAttribute(PDO::SQLSRV_ATTR_DIRECT_QUERY, true);
		
    	$commands = array('delete', 'update', 'replace', 'insert', 'connection', 'createdb', 'dropdb', 'createtable', 'droptable');
    	if (in_array($command, $commands)) {
        	$command = 'changes';
    	}
		switch ($command) {
    	case "changes":
        	$stmt = $conn->prepare($query);
			$stmt->execute($args);
			$affRows = $stmt->rowCount();
			
			$resp['response'] = "Success";
			$resp['error'] = '';
			$resp['result'] = array();
			$resp['affectedRows'] = $affRows;
			$output = json_encode($resp);
        	break;
    	default:
			$stmt = $conn->prepare($query);
			$stmt->execute($args);
			$rows = $stmt->fetchAll();
        	$affRows = $stmt->rowCount();
			$resp['response'] = "Success";
			$resp['error'] = '';
			$resp['result'] = $rows;
			$resp['affectedRows'] = $affRows;
			$output = json_encode($resp);
        	break;
		}
    	echo ($output);
		// Free statement and connection resources.
		$stmt = null;
		$conn = null;
	} catch( PDOException $e ) {
		$response = $e->getMessage();
		$resp['response'] = "Error";
		$resp['error'] = $response;
		$resp['result'] = array();
		$output = json_encode($resp);
        die($output);
	}
}

#End If