B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
#Region BANano 
	' <-------------- IMPORTANT! This is because we want the non specific B4J code in this module to be transpiled by BANano
#End Region

Sub Class_Globals
	Private BANano As BANano   'ignore
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
	Public payload As String
	Private usePool As Boolean
	Public lastID As Long
	Public view As String
	Public action As String
	Public NoResult As Boolean
	#if b4j
		Private rdcLink As String
		Private jSQL As SQL
		Private pool As ConnectionPool
	#end if
End Sub

'initialize the class, a field named "id" is assumed to be an integer
'<code>
''initialize the class
'Dim dbConnect As SHAREDODBC
'dbConnect.Initialize(payload)
'</code>
Sub Initialize(pl As String)
	Log("SHAREDODBC.Initialize")
	result.Initialize
	command = ""
	DBase = ""
	types.Initialize
	args.Initialize
	query = ""
	response = ""
	error = ""
	affectedRows = 0
	OK = False
	usePool = False
	lastID = 0
	view = ""
	action = ""
	NoResult = False
	If pl <> "" Then
		payload = pl
		FromJSON(pl)
	End If
End Sub

'get the payload and process it
private Sub FromJSON(pl As String)
	Log("SHAREDODBC.FromJSON")
	Dim mapPayload As Map = MapFromJSON(payload)
	
	'get the payload items we need to process
	If mapPayload.ContainsKey("dbname") Then
		DBase = mapPayload.get("dbname")
	End If
	If mapPayload.ContainsKey("command") Then
		command = mapPayload.get("command")
	End If
	If mapPayload.ContainsKey("query") Then
		query = mapPayload.get("query")
	End If
	If mapPayload.ContainsKey("args") Then
		args = mapPayload.Get("args")
	End If
	If mapPayload.ContainsKey("types") Then
		types = mapPayload.get("types")
	End If
	If mapPayload.ContainsKey("view") Then
		view = mapPayload.Get("view")
	End If
	If mapPayload.ContainsKey("action") Then
		action = mapPayload.Get("action")
	End If
	If mapPayload.ContainsKey("affectedRows") Then
		affectedRows = mapPayload.Get("affectedRows")
	End If
	If mapPayload.ContainsKey("response") Then
		response = mapPayload.Get("response")
	End If
	If mapPayload.ContainsKey("error") Then
		error = mapPayload.Get("error")
	End If
	If mapPayload.ContainsKey("OK") Then
		OK = mapPayload.Get("OK")
	End If
	If mapPayload.ContainsKey("result") Then
		result = mapPayload.Get("result")
	End If
	If mapPayload.ContainsKey("lastID") Then
		lastID = mapPayload.Get("lastID")
	End If
	If mapPayload.ContainsKey("noresult") Then
		NoResult= mapPayload.Get("noresult")
	End If
End Sub

'convert a map to json
public Sub MapToJSON(m As Map) As String
	#If B4J
	Dim jsonx As JSONGenerator
	#Else 'if BANANO
		Dim jsonx As BANanoJSONGenerator		
	#End If
	jsonx.Initialize(m)
	Return jsonx.ToString
End Sub

'convert json to map
public Sub MapFromJSON(jsonStr As String) As Map
	Dim m As Map = CreateMap()
	
	#if B4J 
	Dim jsonx As JSONParser
	#Else 'if BANAno
		Dim jsonx As BANanoJSONParser
	#End If
	
	jsonx.Initialize(jsonStr)
	m = jsonx.NextObject
	Return m
End Sub

'initialize sqlite for processing
Sub OpenSQLite(Dir As String, fileName As String, createIfNeeded As Boolean)
	#if b4j
	jSQL.InitializeSQLite(Dir, fileName, createIfNeeded)
	jSQL.ExecNonQuery("PRAGMA journal_mode = wal") 'best mode for multithreaded apps.
	usePool = False
	#end if
End Sub

'Initialize a connection to MSAccess database
Sub OpenMSAccess(Dir As String, fileName As String)
	#if b4j
	jSQL.Initialize("net.ucanaccess.jdbc.UcanaccessDriver", "jdbc:ucanaccess://" & File.Combine(Dir,fileName) & ";memory=true")
	usePool = False
	#End if
End Sub


'Initialize a connection to MySQL/MSSQL server and returns True if successful
Sub OpenSQL
	usePool = False
	#if b4j
	Try
		Dim config As Map = Utility.ReadConfig
		Dim sJdbc As String = config.Get("Jdbc")
		Dim sDBServer As String = config.Get("DBServer")
		Dim sDbPort As String = config.Get("DbPort")
		Dim sDatabase As String = config.Get("Database")
		Dim scharacterEncoding As String = config.Get("characterEncoding")
		Dim sDBuseSSL As String = config.Get("DBuseSSL")
		Dim sMaxPoolSize As Int = config.Get("MaxPoolSize")
		Dim sUser As String = config.Get("User")
		Dim sPassword As String = config.Get("Password")
		Dim sDriverClass As String = config.Get("DriverClass")
		'
		Dim jdbcUrl As StringBuilder
		jdbcUrl.Initialize
		jdbcUrl.Append($"${sJdbc}://"$)
		jdbcUrl.Append(sDBServer)
		jdbcUrl.Append(":")
		jdbcUrl.Append(sDbPort)
		jdbcUrl.Append("/")
		jdbcUrl.Append(sDatabase)
		jdbcUrl.Append($"?characterEncoding=${scharacterEncoding}"$)
		jdbcUrl.Append($"&useSSL=${sDBuseSSL}"$)
		'
		Dim sjdb As String = jdbcUrl.ToString
		pool.Initialize(sDriverClass, sjdb, sUser, sPassword)
		'change pool size...
		Dim jo As JavaObject = pool
		jo.RunMethod("setMaxPoolSize", Array(sMaxPoolSize))
		jSQL = pool.GetConnection
		usePool = True
	Catch
		Log("Connect: "&LastException.Message)
	End Try
	#end if
End Sub

'get the sql connection
Sub GetSQL() As SQL 'ignore
	#if b4j
	If usePool Then
		Return pool.GetConnection
	Else
		Return jSQL
	End If
	#end if
End Sub

'close the SQL connection
Sub CloseSQL
	#if b4j
	If pool.IsInitialized Then
		pool.ClosePool
	End If
	If jSQL.IsInitialized Then
		jSQL.Close
	End If
	#end if
End Sub

'convert the json
'<code>
''convert response to JSON to send to server
'dbConnect.ToJSON
'</code>
Sub ToJSON
	#if b4j
	OK = False
	If usePool Then
		'get a connection from the pool
		jSQL = pool.GetConnection
	End If
	Try
		result.Initialize
		Dim cur As ResultSet
		If args.IsInitialized Then
			Select Case command
				Case "execute", "select"
					cur = jSQL.ExecQuery2(query, args)
					Do While cur.NextRow
						Dim res As Map
						res.Initialize
						For i = 0 To cur.ColumnCount - 1
							'get the column type
							Dim colName As String = cur.GetColumnName(i).ToLowerCase
							'get the value
							Dim fValue As String = cur.GetString2(i)
							fValue = FixNull(fValue)
							res.Put(colName, fValue)
						Next
						result.Add(res)
					Loop
					cur.Close
				Case Else
					jSQL.ExecNonQuery2(query, args)
					If command = "insert" Then
						If usePool Then
							lastID = jSQL.ExecQuerySingleResult("SELECT LAST_INSERT_ID()")
						Else
							lastID = jSQL.ExecQuerySingleResult("SELECT last_insert_rowid()")
						End If
					End If
			End Select
		Else
			Select Case command
				Case "execute", "select"
					cur = jSQL.ExecQuery(query)
					Do While cur.NextRow
						Dim res As Map
						res.Initialize
						For i = 0 To cur.ColumnCount - 1
							'get the column type
							Dim colName As String = cur.GetColumnName(i).ToLowerCase
							'get the value
							Dim fValue As String = cur.GetString2(i)
							fValue = FixNull(fValue)
							res.Put(colName, fValue)
						Next
						result.Add(res)
					Loop
					cur.Close
				Case Else
					jSQL.ExecNonQuery(query)
			End Select
		End If
		affectedRows = result.size
		response = "Success"
		error = ""
		OK = True
	Catch
		response = "Error"
		error = LastException
		affectedRows = -1
		Log(LastException)
	End Try
	'close the connection to the database
	
	CloseSQL
	
	'we need to send a response back to the client
	Dim mpayload As Map = CreateMap()
	mpayload.Put("affectedRows", affectedRows)
	mpayload.Put("response", response)
	mpayload.Put("error", error)
	mpayload.Put("OK", OK)
	mpayload.Put("result", result)
	mpayload.Put("lastID", lastID)
	mpayload.put("view", view)
	mpayload.put("action", action)
	'convert it to json
	payload = MapToJSON(mpayload)
	#end if
End Sub

'convert nulls to blanks
private Sub FixNull(sObj As Object) As String
	#if b4j
	Dim sValue As String
	If BANano.isnull(sObj) Or BANano.isundefined(sObj) Then
		sValue = ""
	Else
		sValue = BANanoShared.CStr(sObj)
	End If
	sValue = sValue.Replace("NULL","").Replace("null","")
	Return sValue
	#end if
End Sub

'get the first record from the list
Sub FirstRecord As Map
	Dim rec As Map = result.Get(0)
	Return rec
End Sub


'initialize a connection to JDRC2 connection
Sub OpenJRDC2
	#if b4j
	Dim config As Map = Utility.ReadConfig
	Dim jrdc2port As String = config.Get("jrdc2port")
	Dim sDBServer As String = config.Get("DBServer")
	rdcLink = $"http://${sDBServer}:${jrdc2port}/rdc"$
	#end if
End Sub

public Sub CreateRequest(Target As Object) As DBRequestManager
	#if b4j
	Dim req As DBRequestManager
	req.Initialize(Target, rdcLink)
	Return req
	#end if
End Sub

public Sub CreateCommand(Name As String, Parameters() As Object) As DBCommand
	#if b4j
	Dim cmd As DBCommand
	cmd.Initialize
	cmd.Name = Name
	If Parameters <> Null Then cmd.Parameters = Parameters
	Return cmd
	#end if
End Sub


'convert argument list to objects
private Sub Args2ObjectArray(m As List) As Object()
	Dim mtot As Int = m.size
	Dim mcnt As Int
	Dim obj(mtot) As Object
	For mcnt = 0 To mtot - 1
		Dim v As Object = m.Get(mcnt)
		obj(mcnt) = v
	Next
	Return obj
End Sub

Sub ToJRDC2 As ResumableSub
	#if b4j
	OK = False
	result.Initialize
	Dim req As DBRequestManager = CreateRequest(Me)
	Dim cmd As DBCommand
	If args.IsInitialized Then
		Dim ur() As Object = Args2ObjectArray(args)
		cmd = CreateCommand(command, ur)
	Else
		cmd = CreateCommand(command, Null)
	End If
	Wait For (req.ExecuteCommand(cmd, Null)) JobDone(j As HttpJob)
	OK = j.success
	'
	If OK Then
		response = "Success"
		error = ""
	End If
	'
	If j.Success Then
		If NoResult = False Then
			req.HandleJobAsync(j, "req")
			Wait For (req) req_result(res As DBResult)
			'convert to list of objects
			result = req.ToList(res)
			affectedRows = result.size
		Else
			affectedRows = 0
		End If
	Else
		affectedRows = -1
		error = j.ErrorMessage
		Log("ERROR: " & j.ErrorMessage)
	End If
	j.release
	
	'we need to send a response back to the client
	Dim mpayload As Map = CreateMap()
	mpayload.Put("affectedRows", affectedRows)
	mpayload.Put("response", response)
	mpayload.Put("error", error)
	mpayload.Put("OK", OK)
	mpayload.Put("result", result)
	mpayload.Put("lastID", lastID)
	mpayload.put("view", view)
	mpayload.put("action", action)
	'convert it to json
	payload = MapToJSON(mpayload)
	Return OK
	#end if
End Sub