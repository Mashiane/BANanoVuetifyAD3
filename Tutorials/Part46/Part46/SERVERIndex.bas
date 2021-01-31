B4J=true
Group=Pages
ModulesStructureVersion=1
Type=Class
Version=7.8
@EndOfDesignText@
' B4J compatible ONLY code, no BANano allowed.
'WebSocket class
Sub Class_Globals
	Private ws As WebSocket
	Private CacheReport As BANanoCacheReport	
	Private odbc As SHAREDODBC
End Sub

Public Sub Initialize
	'Log("Server...")
	odbc.Initialize("")
End Sub

Private Sub WebSocket_Connected (WebSocket1 As WebSocket)
	'Log("Connected")
	
	ws = WebSocket1
	
	' Lets update the cache with this class
	CacheReport = Main.Server.UpdateFromCache(Me, ws)
	'Log("PageID: " & CacheReport.BANPageID)
	'Log("Comes From Cache:" & CacheReport.ComesFromCache)
	'Log("Is a reconnecting socket: " & CacheReport.IsReconnected)
	
	' IMPORTANT lets tell the browser we are ready to receive call from the browser
	' Uses the classic WebSocket_Connected and WebSocket_DisConnected events on the browser size
	' Use Main.Server.SendReady(ws, "ws") if you use the advanced events OnOpen, OnMessage, OnServerReady, ...
	Main.server.SendConnected(ws)
End Sub

Private Sub WebSocket_Disconnected
	'Log("disconnected")
End Sub

' event raised to distribute incoming events coming from the BROWSER
public Sub BANano_ParseEvent(params As Map)
	Main.Server.ParseEvent(Me, ws, CacheReport.BANPageID, CacheReport.BANSessionID, params)
End Sub

' event raised when a file has been uploaded
public Sub BANano_Uploaded(status As Int, fileName As String)
	'Log(fileName & " = " & status)
	Select Case status
		Case 200 ' OK
		Case 500 ' was not a POST call
		Case 501 ' file to big
		Case 502 ' file type not allowed
	End Select
End Sub

'save on server
Sub SQLiteOnServer(payload As String) As String
	Log("ServerIndex.SQLiteOnServer...")
	odbc.Initialize(payload)
	odbc.OpenSQLite(Main.SQLiteFolder, odbc.dbase, True)
	odbc.ToJSON
	odbc.CloseSQL
	Return odbc.payload	
End Sub


Sub SQLOnServer(payload As String) As String
	Log("ServerIndex.SQLOnServer...")
	odbc.Initialize(payload)
	odbc.OpenSQL
	odbc.ToJSON
	odbc.CloseSQL
	Return odbc.payload
End Sub

Sub JRDC2OnServer(payload As String) As ResumableSub
	Log("ServerIndex.JRDC2OnServer...")
	odbc.Initialize(payload)
	odbc.OpenJRDC2
	wait for (odbc.ToJRDC2) Complete (Done As Boolean)
	Return odbc.payload
End Sub
'

