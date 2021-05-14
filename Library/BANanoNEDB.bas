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
	Private cur As BANanoObject
End Sub

'open the database, this is just 1 table
'<code>
''initialize the database to a table
'Dim neDB as BANanoNEDB
'neDB.Initialize(Me, "dbName")
'</code>
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


'sort asc
'<code>
''sort in asc order
'neDB.sortAsc(fields As List)
'</code>
Sub sortAsc(fields As List) As BANanoNEDB
	Dim sm As Map = CreateMap()
	For Each k As String In fields
		sm.Put(k, 1)
	Next
	cur = cur.RunMethod("sort", Array(sm))
	Return Me
End Sub

'sort desc
'<code>
''sort in desc order
'neDB.sortDesc(fields As List)
'</code>
Sub sortDesc(fields As List) As BANanoNEDB
	Dim sm As Map = CreateMap()
	For Each k As String In fields
		sm.Put(k, -1)
	Next
	cur = cur.RunMethod("sort", Array(sm))
	Return Me
End Sub

'skip
'<code>
'neDB.skip(1)
'</code>
Sub skip(i As Int) As BANanoNEDB
	cur = cur.RunMethod("skip", Array(i))
	Return Me
End Sub

'limit
'<code>
'neDB.limit(1)
'</code>
Sub limitTo(i As Int) As BANanoNEDB
	cur = cur.RunMethod("limit", Array(i))
	Return Me
End Sub


'countAll
'<code>
''count all records in the database
'neDB.CountAll
''count callback - error and records counted
'Sub dbName_count(err As Object, count As Int)
'End Sub
'</code>
Sub countAll
	Dim doc As Map = CreateMap()
	count(doc)
End Sub

'count records
'<code>
''count records where
'Dim rw As Map = CreateMap()
'rw.put("planet","pluto") 
'neDB.Count(rw)
''count callback - error and records counted
'Sub dbName_count(err As Object, count As Int)
'End Sub
'</code>
Sub count(doc As Map)
	Dim methodName As String = $"${fname}_count"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim countr As Int
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, countr))
		db.RunMethod("count", Array(doc, cb))
	End If
End Sub

'exec
Sub exec
	Dim methodName As String = $"${fname}_exec"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim docs As List
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, docs))
		cur.RunMethod("exec", Array(cb))
	End If
End Sub


'update a record where
'<code>
''update documents
'Dim rw As Map = CreateMap()
'rw.put("planet", "Pluto")
'Dim st As Map = CreateMap()
'st.put("age", 2000)
'neDB.update(rw, st, False, False, True)
''callback
'Sub dbName_update(err As Object, numAffected As Int)
'End Sub
'</code>
Sub update(query As Map, values As Map, multi As Boolean, upsert As Boolean, returnUpdatedDocs As Boolean)
	Dim methodName As String = $"${fname}_update"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim numAffected As Int
		Dim options As Map = CreateMap()
		options.Put("multi", multi)
		options.Put("upsert", upsert)
		options.Put("returnUpdatedDocs", returnUpdatedDocs)
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, numAffected))
		db.RunMethod("update", Array(query, values, options, cb))
	End If
End Sub

'remove all documents
'<code>
''remove all documents
'neDB.removeAll
''calback
'Sub dbName_remove(err As Object, numRemoved As Int)
'End Sub
'</code>
Sub removeAll
	Dim doc As Map = CreateMap()
	remove(doc, True)
End Sub

'delete a record and fire callback
'<code>
''delete a record
'Dim rw As Map = CreateMap()
'rw.put("planet", "Pluto")
'neDB.remove(rw, False)
''callback
'Sub dbName_remove(err As Object, numRemoved As Int)
'End Sub
'</code>
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
'<code>
''inset a record
'Dim rec As Map = CreateMap()
'rec.put("planet", "Pluto")
'neDB.insert(rec)
''call back
'Sub dbName_insert(err As Object, newDoc As Map)
'End Sub
'</code>
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

'insert bulk
'<code>
''insert bulk records
'Dim recs As List
'recs.Initialize
'recs.Add(Record1)
'recs.Add(Record2)
'neDB.insertBulk(recs)
''callback
'Sub dbName_insert(err As Object, docs As List)
'End Sub
'</code>
Sub insertBulk(docs As List)
	Dim methodName As String = $"${fname}_insert"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim newDoc As Object
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, newDoc))
		db.RunMethod("insert", Array(docs, cb))
	Else
		db.RunMethod("insert", Array(docs))
	End If
End Sub

'find all
'<code>
''find all records
'neDB.findAll
''callback
'Sub dbName_find(err As Object, docs As List)
'End Sub
'</code>
Sub findAll
	Dim doc As Map = CreateMap()
	find(doc)
End Sub

'find a document
'<code>
''find a record
'Dim rw As Map = CreateMap()
'rw.put("planet", "pluto")
'neDB.Find(rw)
''callback
'Sub dbName_find(err As Object, docs As List)
'End Sub
'</code>
Sub find(doc As Map) As BANanoNEDB
	Dim methodName As String = $"${fname}_find"$
	If SubExists(mCallBack, methodName) Then
		Dim err As Object
		Dim docs As List
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(err, docs))
		db.RunMethod("find", Array(doc, cb))
	Else
		cur = db.RunMethod("find", Array(doc))
	End If
	Return Me	
End Sub

'remove an index
'<code>
''remove an index
'neDB.removeIndex("planet")
''callback
'Sub dbName_removeIndex(err As Object)
'End Sub
'</code>
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

'create an index
'<code>
''create an index for a field, unique and sparse
'neDB.ensureIndex("planet", False, False)
''callback
'Sub dbName_ensureIndex(err As Object)
'End Sub
'</code>
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