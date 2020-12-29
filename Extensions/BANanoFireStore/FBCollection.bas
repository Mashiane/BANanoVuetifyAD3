B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
Sub Class_Globals
	Private co As BANanoObject
	Private cName As String
	Private banano As BANano
End Sub


Public Sub Initialize(firestore As BANanoObject, colName As String) As FBCollection
	cName = colName
	co = firestore.RunMethod("collection", Array(colName))
	Return Me
End Sub

'detect changes when made
Sub onSnapshot(Module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	Dim docx As Map
	Dim cb As BANanoObject = banano.CallBack(Module, methodName, Array(docx))
	co.RunMethod("onSnapshot", cb)
End Sub


'add a record
Sub add(record As Map) As BANanoPromise
	'execute the addition
	Dim promAdd As BANanoPromise = co.RunMethod("add", Array(record))
	Return promAdd
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
Sub get() As BANanoPromise
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