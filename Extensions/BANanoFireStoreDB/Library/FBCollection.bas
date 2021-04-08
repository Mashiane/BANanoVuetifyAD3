B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
Sub Class_Globals
	Private co As BANanoObject
	Private banano As BANano
	Private DocChangeCallBack As Object
	Private DocChangeMethod As String
	Private GetCallBack As Object
	Private GetMethod As String
End Sub

Public Sub Initialize(fb As BANanoObject, colName As String) As FBCollection
	co = fb.RunMethod("collection", Array(colName))
	Return Me
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
	Dim recs As List
	recs.Initialize
	For Each userx As BANanoObject In docs
		Dim uid As String = userx.Getfield("id").Result
		Dim udata As Map = userx.RunMethod("data", Null).Result
		udata.Put("id", uid)
		recs.Add(udata)
	Next
	Return recs
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
	End If	
End Sub

'get doc
Sub doc(pv As String) As FBDocument
	Dim docx As FBDocument
	docx.Initialize(co, pv)
	Return docx
End Sub

'set orderby on bananoobject
Sub orderBy(fld As String, orderType As String) As FBCollection
	co = co.RunMethod("orderBy", Array(fld, orderType))
	Return Me
End Sub

'set limit
Sub limit(iLimit As Int) As FBCollection
	co = co.RunMethod("limit", Array(iLimit))
	Return Me
End Sub

'get
Sub Get() As BANanoPromise
	Dim promGet As BANanoPromise = co.RunMethod("get", Null)
	Return promGet
End Sub

'set startat
Sub startAt(iLimit As Int) As FBCollection
	co = co.RunMethod("startAt", Array(iLimit))
	Return Me
End Sub

'set end at
Sub endAt(iLimit As Int) As FBCollection
	co = co.RunMethod("endAt", Array(iLimit))
	Return Me
End Sub

'set where
Sub where(fld As String, oper As String, value As Object) As FBCollection
	Select Case oper
	Case "ne"
		co = co.RunMethod("where", Array(fld, "<", value))
		co = co.RunMethod("where", Array(fld, ">", value))
	Case Else
		co = co.RunMethod("where", Array(fld, oper, value))
	End Select
	Return Me
End Sub

'create merge a document
Sub InsertWait(primaryKey As String, rec As Map) As Boolean
	Dim d As FBDocument = doc(primaryKey)
	Dim r As Boolean = banano.Await(d.SetMergeWait(rec))
	Return r
End Sub

'update wait
Sub UpdateWait(primaryKey As String, rec As Map) As String
	Dim d As FBDocument = doc(primaryKey)
	Dim r As String = banano.Await(d.UpdateWait(rec))
	Return r
End Sub

'read document
Sub ReadWait(primaryKey As String) As Map
	Dim d As FBDocument = doc(primaryKey)
	Dim r As Map = banano.Await(d.GetWait)
	Return r
End Sub

'delete
Sub DeleteWait(primaryKey As String) As String
	Dim d As FBDocument = doc(primaryKey)
	Dim r As String = banano.Await(d.DeleteWait)
	Return r
End Sub
