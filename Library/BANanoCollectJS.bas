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
Public Sub Initialize(lst As List) As BANanoCollectJS
	collect = BANano.RunJavascriptMethod("collect", lst)
	result.Initialize 
	Return Me
End Sub

'sort an array of objects by
Sub sortBy(fld As String) As BANanoCollectJS
	collect = collect.RunMethod("sortBy", Array(fld))
	Return Me
End Sub	

'return all items
Sub all As List
	result = collect.RunMethod("all", Null).Result
	Return result
End Sub	
	
