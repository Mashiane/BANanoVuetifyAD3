B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private doc As BANanoObject
	Private BANAno As BANano  'ignore
	Private DocChangeCallBack As Object
	Private DocChangeMethod As String
End Sub

Sub Initialize(co As BANanoObject, pv As String) As BVAD3FBDocument
	doc = co.RunMethod("doc", Array(pv))
	Return Me
End Sub

'detect changes when made and fire an event for each document
Sub onSnapshot(Module As Object, methodName As String)
	DocChangeCallBack = Module
	DocChangeMethod = methodName
	Dim docx As Object
	Dim cb As BANanoObject = BANAno.CallBack(Me, "onSnapshotx", Array(docx))
	doc.RunMethod("onSnapshot", cb)
End Sub

private Sub onSnapshotx(docx As BANanoObject)
	Dim rdata As Map = docx.RunMethod("data", Null).Result
	Dim uid As String = docx.Getfield("id").Result
	rdata.Put("id", uid)
	BANAno.CallSub(DocChangeCallBack, DocChangeMethod, Array(rdata))
End Sub


'update a record using a primary autoincrement id or unique key
'dont pass the id as part of the record map
Sub Update(record As Map) As BANanoPromise
	'execute the update
	Dim promAdd As BANanoPromise = doc.RunMethod("update", Array(record))
	Return promAdd
End Sub

'delete a record using a primary autoincrement id
Sub Delete() As BANanoPromise
	'execute the update
	Dim promDel As BANanoPromise = doc.RunMethod("delete", Null)
	Return promDel
End Sub

'set a record and overwrite
Sub Set(record As Map) As BANanoPromise
	Dim promSet As BANanoPromise = doc.RunMethod("set", Array(record))
	Return promSet
End Sub

'set a record and merge
Sub SetMerge(record As Map) As BANanoPromise
	Dim m As Map = CreateMap()
	m.Put("merge", True)
	Dim promSet As BANanoPromise = doc.RunMethod("set", Array(record, m))
	Return promSet
End Sub


'get a record
Sub Get() As BANanoPromise
	Dim promGet As BANanoPromise = doc.RunMethod("get", Null)
	Return promGet
End Sub

'get documents and wait and fire the sub when done
Sub GetWait() As Map
	Dim docx As BANanoObject
	Dim bpGet As BANanoPromise
	'
	bpGet = Get
    docx = BANAno.Await(bpGet)
	Dim bexists As Boolean = docx.GetField("exists").Result
	If bexists Then
		Dim uid As String = docx.Getfield("id").Result
		Dim udata As Map = docx.RunMethod("data", Null).Result
		udata.Put("id", uid)
		Return udata
	Else
		Dim m As Map = CreateMap()
		Return m
	End If	
End Sub

Sub SetWait(record As Map) As Boolean
	Dim docRef As Map
	Dim bpAdd As BANanoPromise
	'
	bpAdd = Set(record)
    docRef = BANAno.Await(bpAdd)
	If BANAno.IsNull(docRef) Or BANAno.IsUndefined(docRef) Then
		Return True
	Else
		Return False
	End If
End Sub

Sub SetMergeWait(record As Map) As Boolean
	Dim docRef As Map
	Dim bpAdd As BANanoPromise
	'
	bpAdd = SetMerge(record)
    docRef = BANAno.Await(bpAdd)
	If BANAno.IsNull(docRef) Or BANAno.IsUndefined(docRef) Then
		Return True
	Else
		Return False
	End If
End Sub

Sub UpdateWait(record As Map) As String
	Dim docRef As Map
	Dim bpAdd As BANanoPromise
	'
	bpAdd = Update(record)
    docRef = BANAno.Await(bpAdd)
	If BANAno.IsNull(docRef) Or BANAno.IsUndefined(docRef) Then
		Return ""
	Else
		Dim res As String = getID(docRef)
		Return res
	End If
End Sub

Sub DeleteWait() As String
	Dim docRef As Map
	Dim bpAdd As BANanoPromise
	'
	bpAdd = Delete
	docRef = BANAno.Await(bpAdd)
	If BANAno.IsNull(docRef) Or BANAno.IsUndefined(docRef) Then
		Return ""
	Else
		Dim res As String = getID(docRef)
		Return res
	End If	
End Sub

'get the id from a response
private Sub getID(response As Map) As String
	If response.ContainsKey("id") Then
		Dim res As String = response.Get("id")
		Return res
	Else if response.ContainsKey("message") Then
		Dim res As String = response.Get("message")
		res = "error." & res
		Return res
	Else
		Return ""
	End If	
End Sub
