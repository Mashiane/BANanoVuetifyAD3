﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'version 1.00
Sub Process_Globals
	Public bc As ByteConverter
End Sub

Public Sub init
	bc.LittleEndian = True
End Sub

#Region Test

Public Sub EscapeHtml(Raw As String) As String
	Dim sb As StringBuilder
	sb.Initialize
	For i = 0 To Raw.Length - 1
		Dim C As Char = Raw.CharAt(i)
		Select C
			Case QUOTE
				sb.Append("&quot;")
			Case "'"
				sb.Append("&#39;")
			Case "<"
				sb.Append("&lt;")
			Case ">"
				sb.Append("&gt;")
			Case "&"
				sb.Append("&amp;")
			Case Else
				sb.Append(C)
		End Select
	Next
	Return sb.ToString
End Sub

Public Sub ReplaceMap(Base As String, Replacements As Map) As String
	Dim pattern As StringBuilder
	pattern.Initialize
	For Each k As String In Replacements.Keys
		If pattern.Length > 0 Then pattern.Append("|")
		pattern.Append("\$").Append(k).Append("\$")
	Next
	Dim m As Matcher = Regex.Matcher(pattern.ToString, Base)
	Dim result As StringBuilder
	result.Initialize
	Dim lastIndex As Int
	Do While m.Find
		result.Append(Base.SubString2(lastIndex, m.GetStart(0)))
		Dim replace As String = Replacements.Get(m.Match.SubString2(1, m.Match.Length - 1))
		If m.Match.ToLowerCase.StartsWith("$h_") Then replace = EscapeHtml(replace)
		result.Append(replace)
		lastIndex = m.GetEnd(0)
	Loop
	If lastIndex < Base.Length Then result.Append(Base.SubString(lastIndex))
	Return result.ToString
End Sub

Public Sub RedirectTo(ws As WebSocket, TargetUrl As String)
	ws.Eval("window.location = arguments[0]", Array As Object(TargetUrl))
End Sub

Public Sub ReadString(In As InputStream) As String
	Dim len As Int = bc.IntsFromBytes(ReadBytesFromStream(In, 4))(0)
	Return BytesToString(ReadBytesFromStream(In, len), 0, len, "UTF8")
End Sub

#End Region

Sub ReadBytesFromStream(In As InputStream, Length As Int) As Byte()
	If Length > 5000 Then
		Log("Error reading from stream")
		Return Null
	End If
	Dim b(Length) As Byte
	Dim count As Int = 0
	Do While count < Length
		Dim read As Int = In.ReadBytes(b, count, Length - count)
		If read <= 0 Then
			Log("Error reading from stream.")
			Return Null
		End If
		count = count + read
	Loop
	Return b
End Sub