B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.1
@EndOfDesignText@
#IgnoreWarnings:12, 10
Sub Class_Globals
	Private banano As BANano	'ignore
	'Private bo As BANanoObject
	Private fileObject As BANanoObject
	Public fh As BANanoObject
End Sub

Public Sub Initialize(handles As List) As FileHandle
	'get the first element
	fh = handles.Get(0)
	Return Me
End Sub

'get file blob
Sub GetFileWait As BANanoObject
	'get the file
	fileObject = banano.Await(fh.RunMethod("getFile", Null))
	Return fileObject
End Sub

'get text contents of the file
Sub GetTextWait As String
	Dim fileText As String = banano.await(fileObject.RunMethod("text", Null))
	Return fileText
End Sub

'write contents to file
Sub WriteTextWait(txt As String)
	'create a write-table to write to
	Dim writable As BANanoObject = banano.Await(fh.RunMethod("createWritable", Null))
	'write the contents of the file
	banano.Await(writable.RunMethod("write", Array(txt)))
	'close the file and write contents to disk
	banano.Await(writable.RunMethod("close", Null))
End Sub