B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.1
@EndOfDesignText@
#IgnoreWarnings:12, 10
Sub Class_Globals
	Private banano As BANano		'ignore
	'Private bo As BANanoObject
	Private fileObject As BANanoObject
	Public dirHandle As BANanoObject
	Public kind As String
	Public name As String
End Sub

Public Sub Initialize(handle As BANanoObject) As DirectoryHandle
	kind = ""
	name = ""
	'user cancelled the selection
	If banano.IsNull(handle) Then Return Me
	'
	dirHandle = handle
	'get the kind
	kind = dirHandle.GetField("kind").result
	'get the name
	name = dirHandle.GetField("name").result
	Return Me
End Sub

Sub GetValuesWait As List
	'get the file
	fileObject = banano.Await(dirHandle.RunMethod("values", Null))
	Return fileObject
End Sub
'
''get text contents of the file
'Sub GetText As String
'	Dim fileText As String = banano.await(fileObject.RunMethod("text", Null))
'	Return fileText
'End Sub
'
''write contents to file
'Sub writeText(txt As String)
'	'create a write-table to write to
'	Dim writable As BANanoObject = banano.Await(fileHandle.RunMethod("createWritable", Null))
'	'write the contents of the file
'	banano.Await(writable.RunMethod("write", Array(txt)))
'	'close the file and write contents to disk
'	banano.Await(writable.RunMethod("close", Null))
'End Sub