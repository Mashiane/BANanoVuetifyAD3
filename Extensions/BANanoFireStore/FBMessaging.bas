B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
Sub Class_Globals
	Private messaging As BANanoObject
	Private key As String
	Private mToken As String
	Private BANAno As BANano
	Private mServerKey As String
End Sub

'initialize firebase messaging
Public Sub Initialize(fb As BANanoObject, vapidKey As String, sk As String) As FBMessaging
	messaging = fb.RunMethod("messaging", Null)
	key = vapidKey
	mToken = ""
	mServerKey = sk
	Return Me
End Sub

'request permission
Sub requestPermission As BANanoPromise
	Dim rp As BANanoPromise = messaging.RunMethod("requestPermission", Null)
	Return rp
End Sub

'get a token
Sub getToken As BANanoPromise
	Dim opt As Map = CreateMap()
	opt.Put("vapidKey", key)
	Dim t As BANanoPromise = messaging.RunMethod("getToken", opt)
	Return t
End Sub

'delete a token
Sub deleteToken As BANanoPromise
	Dim dt As BANanoPromise = messaging.RunMethod("deleteToken", Array(mToken))
	Return dt
End Sub

'assign a token
Sub setToken(varToken As String)
	mToken = varToken
End Sub

'when a message arrives with webap on focus
Sub onMessage(Module As Object, methodName As String)
	methodName = methodName.tolowercase
	Dim payload As Map
	Dim cb As BANanoObject = BANAno.CallBack(Module, methodName, Array(payload))
	messaging.RunMethod("onMessage", cb)
End Sub

'when the token is refreshed by firebase
Sub onTokenRefresh(Module As Object, MethodName As String)
	MethodName = MethodName.tolowercase
	Dim cb As BANanoObject = BANAno.CallBack(Module, MethodName, Null)
	messaging.RunMethod("onTokenRefresh", cb)
End Sub

'send a message to a topic
Sub sendToToken(sToken As String, sTitle As String, sMessage As String, sIcon As String) As BANanoFetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	'lets define the notification
	Dim notification As Map = CreateMap()
	notification.put("title", sTitle)
	notification.Put("body", sMessage)
	notification.Put("icon", sIcon)
	'lets define the body of the fetch
	Dim body As Map = CreateMap()
	body.put("to", sToken)
	body.put("notification", notification)
	options.Body = BANAno.ToJson(body)
		
	Dim fetch As BANanoFetch
	fetch.Initialize("https://fcm.googleapis.com/fcm/send", options)
	Return fetch
End Sub