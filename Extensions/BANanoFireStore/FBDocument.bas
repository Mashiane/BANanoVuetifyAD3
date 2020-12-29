B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
Sub Class_Globals
	Private doc As BANanoObject
End Sub

Public Sub Initialize(co As BANanoObject, pv As String) As FBDocument
	doc = co.RunMethod("doc", Array(pv))
	Return Me
End Sub

'update a record using a primary autoincrement id or unique key
'dont pass the id as part of the record map
Sub update(record As Map) As BANanoPromise
	'execute the update
	Dim promAdd As BANanoPromise = doc.RunMethod("update", Array(record))
	Return promAdd
End Sub

'delete a record using a primary autoincrement id
Sub delete(collection As String, colID As String) As BANanoPromise
	'execute the update
	Dim promDel As BANanoPromise = doc.RunMethod("delete", Null)
	Return promDel
End Sub

'set a record and overwrite
Sub set(record As Map) As BANanoPromise
	Dim promSet As BANanoPromise = doc.RunMethod("set", Array(record))
	Return promSet
End Sub

'get a record
Sub get() As BANanoPromise
	Dim promGet As BANanoPromise = doc.RunMethod("get", Null)
	Return promGet
End Sub

