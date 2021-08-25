B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private co As BANanoObject
	Private banano As BANano 'ignore
	Private DocChangeCallBack As Object
	Private DocChangeMethod As String
	Private GetCallBack As Object    'ignore
	Private GetMethod As String     'ignore
	Private Schema As Map
	'
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
	Public affectedRows As Long
	Public OK As Boolean
	Public result As List
	Public response As String
	Public error As String
	Public PrimaryKey As String
	Public AutoIncrement As String
End Sub

Sub Initialize(fb As BANanoObject, colName As String) As BVAD3FBCollection
	co = fb.RunMethod("collection", Array(colName))
	Schema.Initialize 
	affectedRows = 0
	OK = False
	result.Initialize 
	response = ""
	error = ""
	PrimaryKey = ""
	AutoIncrement = ""
	Return Me
End Sub

'use fireSQL to execute SQL query
Sub query(fireSQL As BANanoObject, qry As String) As List
	result.Initialize
	Dim promGet As BANanoPromise = fireSQL.RunMethod("query", qry)
	result = banano.Await(promGet)
	affectedRows = result.size
	response = "Success"
	error = ""
	OK = True
	Return result
End Sub


'add a field to the schame
'<code>
''add schema to table
'dbConnect.SchemaAddField("id", dbConntect.DB_INT)
'</code>
Sub SchemaAddField(fldName As String, fldType As String)
	Schema.Put(fldName, fldType)
End Sub

'prepare for new table definition
Sub SchemaClear
	Schema.clear
End Sub


'schema add boolean
Sub SchemaAddBoolean(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_BOOL)
	Next
End Sub

'add int to the schema
Sub SchemaAddInt(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_INT)
	Next
End Sub

'add double fields
Sub SchemaAddDouble(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_DOUBLE)
	Next
End Sub


'add float to the schema
Sub SchemaAddFloat(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_FLOAT)
	Next
End Sub

'add blob to the schema
Sub SchemaAddBlob(bools As List) 
	For Each b As String In bools
		Schema.Put(b, DB_BLOB)
	Next
End Sub

'add text to the schema
Sub SchemaAddText(bools As List)
	For Each b As String In bools
		Schema.Put(b, DB_STRING)
	Next
End Sub

'detect changes when made and fire an event for each document
Sub onSnapshot(Module As Object, methodName As String)
	DocChangeCallBack = Module
	DocChangeMethod = methodName
	Dim docx As Object
	Dim cb As BANanoObject = banano.CallBack(Me, "onSnapshotx", Array(docx))
	co.RunMethod("onSnapshot", cb)
End Sub

private Sub onSnapshotx(querySnapshot As BANanoObject)
	Dim changes As List = querySnapshot.RunMethod("docChanges",Null).Result
	For Each recx As BANanoObject In changes
		Dim stype As String = recx.GetField("type").Result
		Dim docx As BANanoObject = recx.GetField("doc")
		Dim rdata As Map = docx.RunMethod("data", Null).Result
		Dim uid As String = docx.Getfield("id").Result
		rdata.Put("changetype", stype)
		rdata.Put("id", uid)
		banano.CallSub(DocChangeCallBack, DocChangeMethod, Array(rdata))
	Next
End Sub

'add a record, return its id
Sub Add(record As Map) As BANanoPromise
	'execute the addition
	Dim promAdd As BANanoPromise = co.RunMethod("add", Array(record))
	Return promAdd
End Sub

'add a document and wait
Sub AddWait(record As Map) As String
	Dim docRef As Map
	Dim bpAdd As BANanoPromise
	'
	bpAdd = Add(record)
    docRef = banano.Await(bpAdd)
	Dim res As String = getID(docRef)
	If res <> "" Then 
		affectedRows = 1
		response = "Success"
		error = ""
		result.Initialize
		Dim nr As Map = record
		nr.Put(PrimaryKey, res)
		result.Add(nr)
		OK = True
	Else
		affectedRows = 0
		response = "Error"
		error = "Could not add the record"
		result.Initialize 	
		OK = False 
	End If
	Return res
End Sub

'get documents and wait and fire the sub when done
Sub GetWait() As List
	Dim querySnapshot As Map
	Dim bpGet As BANanoPromise
	'
	bpGet = Get
    querySnapshot = banano.Await(bpGet)
	Dim docs As List = querySnapshot.Get("docs")
	result.Initialize
	For Each userx As BANanoObject In docs
		Dim uid As String = userx.Getfield("id").Result
		Dim udata As Map = userx.RunMethod("data", Null).Result
		udata.Put(PrimaryKey, uid)
		result.Add(udata)
	Next
	affectedRows = result.size
	response = "Success"
	error = ""
	OK = True
	Return result
End Sub

'get documents and wait and fire the sub when done
Sub GetWaitSort(sortFields As List) As List
	Dim querySnapshot As Map
	Dim bpGet As BANanoPromise
	'
	For Each k As String In sortFields
		k = k.Trim
		If k = "" Then Continue
		orderBy(k, "asc")
	Next
	bpGet = Get
    querySnapshot = banano.Await(bpGet)
	Dim docs As List = querySnapshot.Get("docs")
	result.Initialize
	For Each userx As BANanoObject In docs
		Dim uid As String = userx.Getfield("id").Result
		Dim udata As Map = userx.RunMethod("data", Null).Result
		udata.Put(PrimaryKey, uid)
		result.Add(udata)
	Next
	affectedRows = result.size
	response = "Success"
	error = ""
	OK = True
	Return result
End Sub


'get the id from a response
private Sub getID(xresponse As Map) As String  'ignore
	If xresponse.ContainsKey("id") Then
		Dim res As String = xresponse.Get("id")
		Return res
	Else if xresponse.ContainsKey("message") Then
		Dim res As String = xresponse.Get("message")
		res = "error." & res
		Return res
	End If	
End Sub

'get doc
Sub doc(pv As String) As BVAD3FBDocument
	Dim docx As BVAD3FBDocument
	docx.Initialize(co, pv)
	Return docx
End Sub

'set orderby on bananoobject
Sub orderBy(fld As String, orderType As String) As BVAD3FBCollection
	co = co.RunMethod("orderBy", Array(fld, orderType))
	Return Me
End Sub

'set limit
Sub limit(iLimit As Int) As BVAD3FBCollection
	co = co.RunMethod("limit", Array(iLimit))
	Return Me
End Sub

'get
Sub Get() As BANanoPromise
	Dim promGet As BANanoPromise = co.RunMethod("get", Null)
	Return promGet
End Sub

'set startat
Sub startAt(iLimit As Int) As BVAD3FBCollection
	co = co.RunMethod("startAt", Array(iLimit))
	Return Me
End Sub

'set end at
Sub endAt(iLimit As Int) As BVAD3FBCollection
	co = co.RunMethod("endAt", Array(iLimit))
	Return Me
End Sub

'set where
Sub where(fld As String, oper As String, value As Object) As BVAD3FBCollection
	Select Case oper
	Case "ne"
		co = co.RunMethod("where", Array(fld, "<", value))
		co = co.RunMethod("where", Array(fld, ">", value))
	Case Else
		co = co.RunMethod("where", Array(fld, oper, value))
	End Select
	Return Me
End Sub

'merge changes wait
Sub MergeWait(sPrimaryKey As String, rec As Map) As Boolean
	Dim d As BVAD3FBDocument = doc(sPrimaryKey)
	Dim r As Boolean = banano.Await(d.SetMergeWait(rec))
	If r = False Then
		affectedRows = 0
		response = "Error"
		error = "Could not merge the record"
		result.Initialize 	
		OK = False 
	Else
		'update the pk
		affectedRows = 1
		response = "Success"
		error = ""
		result.Initialize
		OK = True
	End If
	Return r
End Sub

'update wait will overwrite a record
Sub UpdateWait(sPrimaryKey As String, rec As Map) As String
	Dim d As BVAD3FBDocument = doc(sPrimaryKey)
	Dim r As String = banano.Await(d.UpdateWait(rec))
	If r <> "" Then
		affectedRows = 0
		response = "Error"
		error = "Could not update the record"
		result.Initialize 	
		OK = False 
	Else
		'update the pk
		affectedRows = 1
		response = "Success"
		error = ""
		result.Initialize
		OK = True
	End If
	Return r
End Sub

'read document
Sub ReadWait(sPrimaryKey As String) As Map
	Dim d As BVAD3FBDocument = doc(sPrimaryKey)
	Dim r As Map = banano.Await(d.GetWait)
	If banano.IsNull(r) Then
		affectedRows = 0
		response = "Error"
		error = "Could not read the record"
		result.Initialize 	
		OK = False 
	Else
		'update the pk
		r.Put(PrimaryKey, sPrimaryKey)	
		affectedRows = 1
		response = "Success"
		error = ""
		result.Initialize
		result.Add(r)
		OK = True
	End If
	Return r
End Sub

'delete
Sub DeleteWait(sPrimaryKey As String) As String
	Dim d As BVAD3FBDocument = doc(sPrimaryKey)
	Dim r As String = banano.Await(d.DeleteWait)
	If r <> "" Then
		affectedRows = 0
		response = "Error"
		error = "Could not delete the record"
		result.Initialize 	
		OK = False 
	Else
		'update the pk
		affectedRows = 1
		response = "Success"
		error = ""
		result.Initialize
		OK = True
	End If
	Return r
End Sub
