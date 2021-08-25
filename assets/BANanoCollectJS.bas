B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.07
@EndOfDesignText@
#IgnoreWarnings:12

Sub Class_Globals
	Public collect As BANanoObject
	Private BANano As BANano			'ignore
	Public result As List
End Sub

'initialize with a list of objects
Sub Initialize(lst As List) As BANanoCollectJS
	BANano.DependsOnAsset("collect.min.js")
	collect = BANano.RunJavascriptMethod("collect", lst)
	result.Initialize 
	Return Me
End Sub

'initialize with a JSON string
Sub InitializeJSON(jsonString As String) As BANanoCollectJS
	Dim lst As List = BANano.FromJson(jsonString)
	collect = BANano.RunJavascriptMethod("collect", Array(lst))
	result.Initialize 
	Return Me
End Sub

'sort an array of objects by
Sub sortBy(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("sortBy", Array(fld))
	Return Me
End Sub	

'sortByDesc
Sub sortByDesc(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("sortByDesc", Array(fld))
	Return Me
End Sub

'unique
Sub unique As List
	Dim res As List = collect.RunMethod("unique", Null).Result
	Return res
End Sub

'unique by field
Sub unique1(fld As String) As List
	Dim res As List = collect.RunMethod("unique", Array(fld)).Result
	Return res
End Sub

'sum
Sub sum(fld As String) As Int
	Dim res As Int = collect.RunMethod("sum", Array(fld)).Result
	Return res
End Sub

'toArray from values
Sub toArray As List
	Dim res As List = collect.RunMethod("toArray", Null).Result
	Return res
End Sub

'toJson
Sub toJson As String
	Dim res As String = collect.RunMethod("toJson", Null).Result
	Return res
End Sub

'sortKeys
Sub sortKeys As BANanoCollectJS
	collect = collect.RunMethod("sortKeys", Null)
	Return Me
End Sub

'sortDesc
Sub sortDesc As BANanoCollectJS
	collect = collect.RunMethod("sortDesc", Null)
	Return Me
End Sub

'sortKeysDesc
Sub sortKeysDesc As BANanoCollectJS
	collect = collect.RunMethod("sortKeysDesc", Null)
	Return Me
End Sub

'return all items
Sub all As List
	result = collect.RunMethod("all", Null).Result
	Return result
End Sub	
	
'where
Sub where1(fld As String, operator As String, value As String) As BANanoCollectJS
	collect = collect.RunMethod("where", Array(fld, operator, value))
	Return Me
End Sub

'where
Sub where(fld As String, value As String) As BANanoCollectJS
	collect = collect.RunMethod("where", Array(fld, value))
	Return Me
End Sub

'forPage
Sub forPage(page As Int, offSet As Int) As List
	Dim res As List = collect.runmethod("forPage", Array(page, offSet))
	Return res
End Sub

'whereBetween
Sub whereBetween(fld As String, range As List) As BANanoCollectJS
	collect = collect.RunMethod("whereBetween", Array(fld, range))
	Return Me	
End Sub

'whereIn
Sub whereIn(fld As String, range As List) As BANanoCollectJS
	collect = collect.RunMethod("whereIn", Array(fld, range))
	Return Me
End Sub

'whereNotBetween
Sub whereNotBetween(fld As String, range As List) As BANanoCollectJS
	collect = collect.RunMethod("whereNotBetween", Array(fld, range))
	Return Me
End Sub

'whereNotIn
Sub whereNotIn(fld As String, range As List) As BANanoCollectJS
	collect = collect.RunMethod("whereNotIn", Array(fld, range))
	Return Me
End Sub

'firstWhere
Sub firstWhere(fld As String, value As String) As Map
	Dim res As Map = collect.RunMethod("firstWhere", Array(fld, value)).Result
	Return res
End Sub

'items as list
Sub items As List
	Return collect.GetField("items").Result
End Sub

'the average of property in the array
Sub avg(fld As String) As Int
	Dim iavg As Int = collect.RunMethod("avg", Array(fld)).Result
	Return iavg
End Sub

'merge arrays
Sub collapse As BANanoCollectJS
	collect = collect.RunMethod("collapse", Null)
	Return Me
End Sub

'concat
Sub concat(objects As List) As BANanoCollectJS
	collect = collect.RunMethod("concat", Array(objects))
	Return Me
End Sub

'contains a property
Sub contains1(fld As String) As Boolean
	Dim res As Boolean = collect.RunMethod("contains", Array(fld)).Result
	Return res
End Sub

'contains a property with value
Sub contains2(fld As String, value As String) As Boolean
	Dim res As Boolean = collect.RunMethod("contains", Array(fld,value)).Result
	Return res
End Sub

'count
Sub count As Int
	Dim res As Int = collect.runmethod("count", Null).Result
	Return res
End Sub

'each against callback
Sub eachItem(module As Object, methodName As String, params As List)
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("each", cb)
End Sub

'first
Sub first As Map
	Dim res As Map = collect.RunMethod("first", Null).result
	Return res
End Sub

'last
Sub last As Map
	Dim res As Map = collect.RunMethod("last", Null).result
	Return res
End Sub

'forget - remove a key from the collection
Sub forget As BANanoCollectJS
	collect = collect.RunMethod("forget", Null)
	Return Me
End Sub

'get value at
Sub getValueAt(pos As Int) As Object
	Dim res As Object = collect.RunMethod("get", Array(pos)).Result
	Return res
End Sub

'get value at
Sub get(key As String) As Map
	Dim res As Object = collect.RunMethod("get", Array(key)).Result
	Return res
End Sub

'groupBy
Sub groupBy(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("groupBy", Array(fld))
	Return Me
End Sub

'has
Sub has(fld As String) As Boolean
	Dim res As Boolean = collect.RunMethod("has", Array(fld)).Result
	Return res
End Sub

'implode
Sub implode(fld As String, delim As String) As String
	Dim res As String = collect.runmethod("implode", Array(fld,delim)).result
	Return res
End Sub

'keys
Sub keys As List
	Dim res As List = collect.RunMethod("keys", Null).result
	Return res
End Sub

'max of a given key
Sub maxOfKey(fld As String) As Int
	Dim res As Int = collect.RunMethod("max", Array(fld)).Result
	Return res
End Sub

'merge
Sub merge(lst As List) As BANanoCollectJS
	collect = collect.RunMethod("merge", lst)
	Return Me
End Sub

'min of key
Sub minOfKey(fld As String) As Int
	Dim res As Int = collect.RunMethod("min", Array(fld)).Result
	Return res
End Sub

'only return these fields
Sub selectFields(flds As List) As List
	Dim res As List = collect.RunMethod("only", flds).result
	Return res
End Sub

'pluck
Sub pluck(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("pluck", Array(fld))
	Return Me
End Sub

'pop
Sub pop As BANanoCollectJS
	collect = collect.RunMethod("pop", Null)
	Return Me
End Sub

'random
Sub random As Object
	Dim res As Object = collect.RunMethod("random", Null)
	Return res
End Sub

'sort
Sub sort As BANanoCollectJS
	collect = collect.RunMethod("sort", Null)
	Return Me
End Sub

'reverse
Sub reverse As BANanoCollectJS
	collect = collect.RunMethod("reverse", Null)
	Return Me
End Sub

'shift
Sub shift As BANanoCollectJS
	collect = collect.RunMethod("shift", Null)
	Return Me
End Sub

'shuffle
Sub shuffle As BANanoCollectJS
	collect = collect.RunMethod("shuffle", Null)
	Return Me
End Sub

'diff
Sub diff(flds As List) As List
	Dim res As List = collect.RunMethod("diff", Array(flds)).Result
	Return res
End Sub
