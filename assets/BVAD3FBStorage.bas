B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private ref As BANanoObject
	Private BANano As BANano  'ignore
End Sub

'get storage path
Sub Initialize(storage As BANanoObject, refName As String) As BVAD3FBStorage
	ref = storage.RunMethod("ref", Array(refName))
	Return Me
End Sub

'put a file to the server
Sub put(fo As Map) As BANanoPromise
	Dim pPromise As BANanoPromise = ref.RunMethod("put", Array(fo))
	Return pPromise
End Sub

'upload a document and wait
Sub putWait(record As Map) As String
	Dim docRef As String
	Dim bpAdd As BANanoPromise
	'
	bpAdd = put(record)
    docRef = BANano.Await(bpAdd)
	Log(docRef)
	Return docRef
End Sub