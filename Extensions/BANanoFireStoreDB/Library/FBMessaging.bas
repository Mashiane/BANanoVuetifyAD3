B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
'useful links
'https://medium.com/@selvaganesh93/firebase-cloud-messaging-important-rest-apis-be79260022b5

Sub Class_Globals
	Private messaging As BANanoObject
	Private key As String
	Private mToken As String
	Private BANAno As BANano
	Private mServerKey As String
End Sub

'initialize firebase messaging, do not call this directly
Public Sub Initialize(fb As BANanoObject, vapidKey As String, sk As String) As FBMessaging
	messaging = fb.RunMethod("messaging", Null)
	key = vapidKey
	mToken = ""
	mServerKey = sk
	Return Me
End Sub

'is subscribed
Sub IsSubscribed(response As BANanoFetchResponse) As Boolean
	If (response.Status < 200 Or response.Status >= 400) Then
		Return False
	Else
		Return True
	End If
End Sub

'is sent
Sub IsSent(response As BANanoFetchResponse) As Boolean
	If (response.Status < 200 Or response.Status >= 400) Then
		Return False
	Else
		Return True
	End If
End Sub

'request permission
Sub requestPermission As BANanoPromise
	Dim rp As BANanoPromise = messaging.RunMethod("requestPermission", Null)
	Return rp
End Sub

'get a token, use getTokenWait instead
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

'subscribe to topic and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.deleteTokenAndWait("topic1"))
'</code>
Sub deleteTokenAndWait As Boolean
	Dim Done As Boolean
	Dim fetchp As BANanoPromise
    
	' read our JSON
	fetchp = deleteToken
	Done = BANAno.Await(fetchp)
	Return Done
End Sub

'assign a token after we get it
Sub setToken(varToken As String)
	mToken = varToken
End Sub

'when a message arrives with webap on focus, assign a callback method
Sub onMessage(Module As Object, methodName As String)
	methodName = methodName.tolowercase
	Dim payload As Map
	Dim cb As BANanoObject = BANAno.CallBack(Module, methodName, Array(payload))
	messaging.RunMethod("onMessage", cb)
End Sub

'when the token is refreshed by firebase, assign a callbakc method
Sub onTokenRefresh(Module As Object, MethodName As String)
	MethodName = MethodName.tolowercase
	Dim cb As BANanoObject = BANAno.CallBack(Module, MethodName, Null)
	messaging.RunMethod("onTokenRefresh", cb)
End Sub

'send a message to a token
Sub sendToToken(sToken As String, sTitle As String, sMessage As String, sData As Map, sIcon As String) As BANanoFetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	'lets define the notification
	Dim notif As Map = CreateMap()
	notif.put("title", sTitle)
	notif.Put("body", sMessage)
	notif.Put("icon", sIcon)
	
	'lets define the body of the fetch
	Dim body As Map = CreateMap()
	body.put("to", sToken)
	body.put("notification", notif)
	body.put("data", sData)
	options.Body = BANAno.ToJson(body)
		
	Dim fetch As BANanoFetch
	fetch.Initialize("https://fcm.googleapis.com/fcm/send", options)
	Return fetch
End Sub

'send a data message To a topic
'<code>
'Dim msgid As String = firebase.messaging.sendToTokenAndWait("topic1", "title1", "message1", "./assets/icon.png")
'</code>
Sub sendToTokenAndWait(sToken As String, sTitle As String, sMessage As String, sData As Map, sIcon As String) As String
	Dim smessageid As String
	Dim response As BANanoFetchResponse
	Dim fetch As BANanoFetch
		
	fetch = sendToToken(sToken, sTitle, sMessage, sData, sIcon)
	response = BANAno.Await(fetch)
	Dim res As Map = BANAno.Await(response.json)
	If response.OK Then
		smessageid = res.Get("message_id")
	End If
	Return smessageid
End Sub

'send a message to a topic
'send a data message To a topic
'<code>
'Dim bf As BANanoFetch = firebase.messaging.sendToTopic("topic1", "title1", "message1", "./assets/icon.png")
'</code>
Sub sendToTopic(sTopic As String, sTitle As String, sMessage As String, sData As Map, sIcon As String) As BANanoFetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	
	'lets define the notification
	Dim notif As Map = CreateMap()
	notif.put("title", sTitle)
	notif.Put("body", sMessage)
	notif.Put("icon", sIcon)
		
	'lets define the body of the fetch
	Dim body As Map = CreateMap()
	body.put("to", $"/topics/${sTopic}"$)
	body.put("data", sData)
	body.Put("notification", notif)
	options.Body = BANAno.ToJson(body)
		
	Dim fetch As BANanoFetch
	fetch.Initialize("https://fcm.googleapis.com/fcm/send", options)
	Return fetch
End Sub

'send a message To a topic
'<code>
'Dim msgid As String = firebase.messaging.sendToTopicAndWait("topic1", "title1", "message1", "./assets/icon.png")
'</code>
Sub sendToTopicAndWait(sTopic As String, sTitle As String, sMessage As String, sData As Map, sIcon As String) As String
	Dim smessageid As String
	Dim response As BANanoFetchResponse
	Dim fetch As BANanoFetch
		
	fetch = sendToTopic(sTopic, sTitle, sMessage, sData, sIcon)
	response = BANAno.Await(fetch)
	Dim res As Map = BANAno.Await(response.json)
	If response.OK Then
		smessageid = res.Get("message_id")
	End If
	Return smessageid
End Sub

'validate FCM registration
Sub validateToken As BANanoFetch
	Dim fetch As BANanoFetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "GET"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	Dim xFetch As String = $"https://iid.googleapis.com/iid/info/${mToken}"$
	fetch.Initialize(xFetch, options)
	Return fetch
End Sub

'validate token and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.validateTokenAndWait)
'</code>
Sub validateTokenAndWait(stopic As String) As Boolean
	Dim Done As Boolean
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = validateToken
	Done = BANAno.Await(fetch)
	Return Done
End Sub

'subscribe to topic using token
Sub subscribe(sTopic As String) As BANanoFetch
	Dim fetch As BANanoFetch
	sTopic = sTopic.Trim
	If sTopic = "" Then Return fetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	Dim xFetch As String = $"https://iid.googleapis.com/iid/v1/${mToken}/rel/topics/${sTopic}"$
	fetch.Initialize(xFetch, options)
	Return fetch
End Sub


'subscribe to topic and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.subscribeAndWait("topic1"))
'</code>
Sub subscribeAndWait(stopic As String) As Boolean
	Dim Done As Boolean
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = subscribe(stopic)
	Done = BANAno.Await(fetch)
	Return Done
End Sub

'un-subscribe to topic and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.unsubscribeAndWait("topic1"))
'</code>
Sub unsubscribeAndWait(stopic As String) As Boolean
	Dim Done As Boolean
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = unsubscribe(stopic)
	Done = BANAno.Await(fetch)
	Return Done
End Sub

'unsubscribe to topic using token
Sub unsubscribe(sTopic As String) As BANanoFetch
	Dim fetch As BANanoFetch
	sTopic = sTopic.Trim
	If sTopic = "" Then Return fetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "DELETE"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	Dim xFetch As String = $"https://iid.googleapis.com/iid/v1/${mToken}/rel/topics/${sTopic}"$
	fetch.Initialize(xFetch, options)
	Return fetch
End Sub


'create a topic using batchAdd
Sub createTopic(sTopic As String) As BANanoFetch
	Dim fetch As BANanoFetch
	sTopic = sTopic.Trim
	If sTopic = "" Then Return fetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	options.Mode = "cors"
	'
	'lets define the body of the fetch
	Dim body As Map = CreateMap()
	body.put("to", $"/topics/${sTopic}"$)
	body.put("registration_tokens", Array(mToken))
	options.Body = BANAno.ToJson(body)
	
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	fetch.Initialize("https://iid.googleapis.com/iid/v1:batchAdd", options)
	Return fetch
End Sub

'subscribe to topic and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.createTopicAndWait("topic1"))
'</code>
Sub createTopicAndWait(stopic As String) As Boolean
	Dim Done As Boolean
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = createTopic(stopic)
	Done = BANAno.Await(fetch)
	Return Done
End Sub

'remove a topic using batchRemove
Sub removeTopic(sTopic As String) As BANanoFetch
	Dim fetch As BANanoFetch
	sTopic = sTopic.Trim
	If sTopic = "" Then Return fetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "POST"
	options.Mode = "cors"
	'
	'lets define the body of the fetch
	Dim body As Map = CreateMap()
	body.put("to", $"/topics/${sTopic}"$)
	body.put("registration_tokens", Array(mToken))
	options.Body = BANAno.ToJson(body)
	
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	fetch.Initialize("https://iid.googleapis.com/iid/v1:batchRemove", options)
	Return fetch
End Sub

'un-subscribe to topic and wait
'<code>
'Dim Done As Done = BANano.Await(firebase.messaging.removeTopicAndWait("topic1"))
'</code>
Sub removeTopicAndWait(stopic As String) As Boolean
	Dim Done As Boolean
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = removeTopic(stopic)
	Done = BANAno.Await(fetch)
	Return Done
End Sub

'get topics token subscribed to, use getSubscriptionsAndWait instead
Sub GetSubscriptions As BANanoFetch
	'use fetch
	Dim options As BANanoFetchOptions
	options.Initialize
	options.Method = "GET"
	options.Mode = "cors"
	'
	'lets define the headers
	Dim hdrs As Map = CreateMap()
	hdrs.Put("Content-Type", "application/json;")
	hdrs.Put("Authorization", "key=" & mServerKey)
	options.Headers = hdrs
	'
	Dim xFetch As String = $"https://iid.googleapis.com/iid/info/${mToken}?details=true"$
	Dim fetch As BANanoFetch
	fetch.Initialize(xFetch, options)
	Return fetch
End Sub


'subscribe to multiple topics and wait
'<code>
'Dim Done As Boolean = BANano.Await(firebase.messaging.subscribeToTopicsAndWait(Array("topic1", "topic2")))
'</code>
Sub subscribeToTopicsAndWait(topics As List) As Boolean
	Dim fetches As List
	fetches.Initialize
	For Each strtopic As String In topics
		Dim fetch As BANanoFetch = subscribe(strtopic)
		fetches.Add(fetch)
	Next
	Dim ResultsAll() As BANanoFetchResponse		'ignore
	ResultsAll = BANAno.Await(BANAno.PromiseAll(fetches))
	Return True
End Sub

'get topics subscribed to and wait
'<code>
'Dim topics As Map = BANano.Await(firebase.messaging.getSubscriptionsAndWait)
'</code>
Sub GetSubscriptionsAndWait As Map
	Dim topicsM As Map
	Dim response As BANanoFetchResponse
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = GetSubscriptions
	response = BANAno.Await(fetch)
	Dim res As Map = BANAno.Await(response.json)
	Dim rel As Map = res.get("rel")
	topicsM = rel.Get("topics")
	Return topicsM
End Sub

'get the token and wait for it to be retrieved
'<code>
'Dim token As String = BANano.Await(firebase.messaging.getTokenWait)
'</code>
Sub getTokenAndWait As String
	Dim token As String
	Dim fetch As BANanoFetch
    
	' read our JSON
	fetch = getToken
	token = BANAno.Await(fetch)
	Return token
End Sub