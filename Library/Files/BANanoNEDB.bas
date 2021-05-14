B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Public db As BANanoObject
	Private fname As String
	Private mCallBack As Object
	Private BANano As BANano
	Public const NeDB_LT As String = "$lt"
	Public const NeDB_LTE As String = "$lte"
	Public const NeDB_GT As String = "$gt"
	Public const NeDB_GTE As String = "$gte"
	Public const NeDB_IN As String = "$in"
	Public const NeDB_NIN As String = "$nin"
	Public const NeDB_NE As String = "$ne"
	Public const NeDB_OR As String = "$or"
	Public const NeDB_AND As String = "$and"
	Public const NeDB_NOT As String = "$not"
	Public const NeDB_WHERE As String = "$where"
End Sub

'open the database
Public Sub Initialize(Module As Object, filename As String) As BANanoNEDB
	fname = filename
	mCallBack = Module
	Dim timestampData As Boolean = True
	Dim autoload As Boolean = True
	Dim options As Map = CreateMap()
	options.Put("filename", fname)
	options.put("timestampData", timestampData)
	options.Put("autoload", autoload)
	'
	db.Initialize2("Nedb", options)
	Return Me
End Sub

'count records
Sub count(doc As Map)
	Dim methodName As String = $"${fname}_count"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim countr As Int
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, countr))
		db.RunMethod("count", Array(doc, cb))
	End If
End Sub

'update a record
Sub update(query As Map, values As Map, multi As Boolean, upsert As Boolean, returnUpdatedDocs As Boolean)
	Dim methodName As String = $"${fname}_update"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim numReplaced As Int
		Dim options As Map = CreateMap()
		options.Put("multi", multi)
		options.Put("upsert", upsert)
		options.Put("returnUpdatedDocs", returnUpdatedDocs)
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, numReplaced))
		db.RunMethod("update", Array(query, values, options, cb))
	End If
End Sub

'delete a record and fire callback
Sub remove(doc As Map, multi As Boolean)
	Dim opt As Map = CreateMap()
	opt.Put("multi", multi)
	Dim methodName As String = $"${fname}_remove"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim numRemoved As Int
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, numRemoved))
		db.RunMethod("remove", Array(doc, opt, cb))
	Else
		db.RunMethod("remove", Array(doc, opt))
	End If
End Sub

'insert a record and fire a callback
Sub insert(doc As Map)
	Dim methodName As String = $"${fname}_insert"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim newDoc As Object
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, newDoc))
		db.RunMethod("insert", Array(doc, cb))
	Else
		db.RunMethod("insert", Array(doc))
	End If
End Sub

'find all documents
Sub find(doc As Map)
	Dim methodName As String = $"${fname}_find"$
	Dim err As Object
	Dim docs As List
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, docs))
	db.RunMethod("find", Array(doc, cb))
End Sub

'remove an index
Sub removeIndex(fieldName As String) As BANanoNEDB
	Dim MethodName As String = $"${fname}_removeIndex"$
	If SubExists(mCallBack, MethodName) Then
		Dim err As Object
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, MethodName, Array(err))
		db.RunMethod("removeIndex", Array(fieldName, cb))
	Else
		db.RunMethod("removeIndex", Array(fieldName))
	End If
	Return Me		
End Sub

'ensure index
Sub ensureIndex(fieldName As String, unique As Boolean, sparse As Boolean)
	Dim MethodName As String = $"${fname}_ensureIndex"$
	Dim opt As Map = CreateMap()
	opt.Put("fieldName", fieldName)
	opt.Put("unique", unique)
	opt.Put("sparse", sparse)
	'
	If SubExists(mCallBack, MethodName) Then
		Dim err As Object
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, MethodName, Array(err))
		db.RunMethod("ensureIndex", Array(opt, cb))
	Else
		db.RunMethod("ensureIndex", Array(opt))
	End If
End Sub