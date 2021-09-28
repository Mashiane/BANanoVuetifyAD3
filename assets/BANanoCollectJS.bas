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
	Public const NE As String = "<>"
	Public const GT As String = ">"
	Public const LT As String = "<"
	Public const GE As String = ">="
	Public const LE As String = "<="
	Public const ET As String = "=="
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

'skip
Sub skip(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("skip", Array(num))
	Return Me
End Sub

'skipUntil
Sub skipUntil(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("skipUntil", Array(num))
	Return Me
End Sub

'skipWhile
Sub skipWhile(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("skipWhile", Array(num))
	Return Me
End Sub

'slice
Sub slice(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("slice", Array(num))
	Return Me
End Sub

'slice1
Sub slice1(num As Int, endAt As Int) As BANanoCollectJS
	collect = collect.RunMethod("slice", Array(num, endAt))
	Return Me
End Sub

'splice
Sub splice(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("splice", Array(num))
	Return Me
End Sub

'take
Sub take(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("take", Array(num))
	Return Me
End Sub

'takeUntil
Sub takeUntil(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("takeUntil", Array(num))
	Return Me
End Sub

'split into groups
Sub split(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("split", Array(num))
	Return Me
End Sub

'splice1
Sub splice1(num As Int, endAt As Int) As BANanoCollectJS
	collect = collect.RunMethod("splice", Array(num, endAt))
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

'last
Sub last As Object
	Dim res As Object = collect.RunMethod("last", Null).Result
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

'whereNotNull
Sub whereNotNull(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("whereNotNull", Array(fld))
	Return Me
End Sub

'whereNull
Sub whereNull(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("whereNull", Array(fld))
	Return Me
End Sub

'firstWhere
Sub firstWhere(fld As String, value As String) As Map
	Dim res As Map = collect.RunMethod("firstWhere", Array(fld, value)).Result
	Return res
End Sub

'exists
Sub exists(fld As String, value As String) As Boolean
	Dim fw As Map = firstWhere(fld, value)
	If BANano.IsNull(fw) Or BANano.IsUndefined(fw) Then Return False
	Return True
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

'merge arrays into 1
Sub collapse As BANanoCollectJS
	collect = collect.RunMethod("collapse", Null)
	Return Me
End Sub

'chunk break into smaller parts
Sub chunk(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("chunk", Array(num))
	Return Me
End Sub

'crossJoin and return all possible permutations from the join
Sub crossJoin(objects As List) As BANanoCollectJS
	collect = collect.RunMethod("crossJoin", Array(objects))
	Return Me
End Sub

'concat
Sub concat(objects As List) As BANanoCollectJS
	collect = collect.RunMethod("concat", Array(objects))
	Return Me
End Sub

'contains a property or value
Sub contains1(fld As String) As Boolean
	Dim res As Boolean = collect.RunMethod("contains", Array(fld)).Result
	Return res
End Sub

'flatten multi dimention array
Sub flatten() As BANanoCollectJS
	collect = collect.RunMethod("flatten", Null)
	Return Me
End Sub

'flip values keys
Sub flip() As BANanoCollectJS
	collect = collect.RunMethod("flip", Null)
	Return Me
End Sub

'flatten multi dimention array with deptth
Sub flatten1(depth As Int) As BANanoCollectJS
	collect = collect.RunMethod("flatten", Array(depth))
	Return Me
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
Sub eachItem(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("each", cb)
	Return Me
End Sub

'reduce against callback
Sub reduceItem(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("reduce", cb)
	Return Me
End Sub

'transform against callback
Sub transform(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("transform", cb)
	Return Me
End Sub

'takeWhile against callback
Sub takeWhile(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("takeWhile", cb)
	Return Me
End Sub

'tap against callback
Sub tap(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("tap", cb)
	Return Me
End Sub

'reject against callback
Sub rejectItem(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("reject", cb)
	Return Me
End Sub

'map against callback
Sub mapItem(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("map", cb)
	Return Me
End Sub

'filter against callback
Sub filter(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("filter", cb)
	Return Me
End Sub

'eachSpread against callback
Sub eachSpread(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("eachSpread", cb)
	Return Me
End Sub

'every against callback
Sub every(module As Object, methodName As String, params As List) As BANanoCollectJS
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	collect = collect.RunMethod("every", cb)
	Return Me
End Sub

'pipe against callback
Sub pipe(module As Object, methodName As String, params As List) As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, params)
	Dim res As Object = collect.RunMethod("pipe", cb).Result
	Return res
End Sub

'first
Sub first As Map
	Dim res As Map = collect.RunMethod("first", Null).result
	Return res
End Sub

'forget - remove a key from the collection
Sub forget(prop As String) As BANanoCollectJS
	collect = collect.RunMethod("forget", Array(prop))
	Return Me
End Sub

'get value at
Sub getValueAt(pos As Int) As Object
	Dim res As Object = collect.RunMethod("get", Array(pos)).Result
	Return res
End Sub

'get item with key
Sub get(prop As String) As Map
	Dim res As Object = collect.RunMethod("get", Array(prop)).Result
	Return res
End Sub

'replace item with key
Sub replaceItem(item As Map) As BANanoCollectJS
	collect = collect.RunMethod("replace", Array(item))
	Return Me
End Sub

'replaceRecursive item with key
Sub replaceRecursive(item As Map) As BANanoCollectJS
	collect = collect.RunMethod("replaceRecursive", Array(item))
	Return Me
End Sub

'groupBy
Sub groupBy(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("groupBy", Array(fld))
	Return Me
End Sub

'has as key
Sub has(fld As String) As Boolean
	Dim res As Boolean = collect.RunMethod("has", Array(fld)).Result
	Return res
End Sub

'search for a value as return its key
Sub search(value As Object) As Object
	Dim res As Object = collect.RunMethod("search", Array(value)).Result
	Return res
End Sub

'searchStrict for a value as return its key
Sub searchStrict(value As Object) As Object
	Dim res As Object = collect.RunMethod("search", Array(value, True)).Result
	Return res
End Sub

'implode join specific keys
Sub implode(fld As String, delim As String) As String
	Dim res As String = collect.runmethod("implode", Array(fld,delim)).result
	Return res
End Sub

'pad
Sub pad(num As Int, value As String) As String
	collect = collect.runmethod("pad", Array(num, value))
	Return Me
End Sub

'keys
Sub keys As BANanoCollectJS
	collect = collect.RunMethod("keys", Null)
	Return Me
End Sub

'values
Sub values As BANanoCollectJS
	collect = collect.RunMethod("values", Null)
	Return Me
End Sub

'max of a given key
Sub maxOfKey(fld As String) As Long
	Dim res As Long = collect.RunMethod("max", Array(fld)).Result
	Return res
End Sub

'mode of a given key
Sub modeOfKey(fld As String) As List
	Dim res As List = collect.RunMethod("mode", Array(fld)).Result
	Return res
End Sub

'medium of a given key
Sub medianOfKey(fld As String) As Double
	Dim res As Double = collect.RunMethod("median", Array(fld)).Result
	Return res
End Sub

'merge
Sub merge(lst As List) As BANanoCollectJS
	collect = collect.RunMethod("merge", lst)
	Return Me
End Sub

'only
Sub only(lst As List) As BANanoCollectJS
	collect = collect.RunMethod("only", lst)
	Return Me
End Sub

'nth
Sub nth(inth As Int) As BANanoCollectJS
	collect = collect.RunMethod("nth", Array(inth))
	Return Me
End Sub


'mergeRecursive
Sub mergeRecursive(lst As List) As BANanoCollectJS
	collect = collect.RunMethod("mergeRecursive", lst)
	Return Me
End Sub

'min of key
Sub minOfKey(fld As String) As Int
	Dim res As Int = collect.RunMethod("min", Array(fld)).Result
	Return res
End Sub

'isEmpty
Sub isEmpty As Boolean
	Dim res As Boolean = collect.RunMethod("isEmpty", Null).Result
	Return res
End Sub

'isNotEmpty
Sub isNotEmpty As Boolean
	Dim res As Boolean = collect.RunMethod("isNotEmpty", Null).Result
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
Sub random As BANanoCollectJS
	collect = collect.RunMethod("random", Null)
	Return Me
End Sub

'random number of items
Sub random1(num As Int) As BANanoCollectJS
	collect = collect.RunMethod("random", Array(num))
	Return Me
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

'prepend
Sub prepend(xitems As List) As BANanoCollectJS
	collect = collect.RunMethod("prepend", Array(xitems))
	Return Me
End Sub

'push
Sub push(xitems As List) As BANanoCollectJS
	collect = collect.RunMethod("push", Array(xitems))
	Return Me
End Sub

'put
Sub put(xitems As List) As BANanoCollectJS
	collect = collect.RunMethod("put", Array(xitems))
	Return Me
End Sub

'pull
Sub pull(prop As String) As BANanoCollectJS
	collect = collect.RunMethod("pull", Array(prop))
	Return Me
End Sub

'diff
Sub diff(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("diff", Array(flds))
	Return Me
End Sub

'diffAssoc
Sub diffAssoc(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("diffAssoc", Array(flds))
	Return Me
End Sub

'diffKeys
Sub diffKeys(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("diffKeys", Array(flds))
	Return Me
End Sub

'duplicates
Sub duplicates() As BANanoCollectJS
	collect = collect.RunMethod("duplicates", Null)
	Return Me
End Sub

'except - remove these keys on objects
Sub except(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("except", Array(flds))
	Return Me
End Sub


'intersect - remove these keys on objects
Sub intersect(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("intersect", Array(flds))
	Return Me
End Sub

'join
Sub join(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("join", Array(flds))
	Return Me
End Sub

'keyBy
Sub keyBy(skeyBy As String) As BANanoCollectJS
	collect = collect.RunMethod("keyBy", Array(skeyBy))
	Return Me
End Sub

'intersectByKeys
Sub intersectByKeys(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("intersectByKeys", Array(flds))
	Return Me
End Sub

'union
Sub union(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("union", Array(flds))
	Return Me
End Sub

'unwrap
Sub unwrap(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("unwrap", Array(flds))
	Return Me
End Sub

'wrap
Sub wrap(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("wrap", Array(flds))
	Return Me
End Sub

'zip
Sub zip(flds As List) As BANanoCollectJS
	collect = collect.RunMethod("zip", Array(flds))
	Return Me
End Sub
