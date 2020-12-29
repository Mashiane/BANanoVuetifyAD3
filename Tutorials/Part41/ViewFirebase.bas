B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public fb As VueComponent
	Public path As String
	Public name As String = "fb"
	Private banano As BANano
	Private firebase As BANanoFireStoreDB
	Private messaging As FBMessaging
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	fb.Initialize(Me, name)
	path = fb.path
	'
	firebase.Initialize
	firebase.apiKey = "(redacted)"
	firebase.authDomain = "(redacted)"
	firebase.databaseURL = "(redacted)"
	firebase.projectId = "(redacted)"
	firebase.storageBucket = "(redacted)"
	firebase.messagingSenderId = "(redacted)"
	firebase.appId = "(redacted)"
	firebase.measurementId = "(redacted)"
	firebase.vapidKey = "(redacted)"
	firebase.ServerKey = "(redacted)"
	
	'add a container
	Dim cont As VueElement = vuetify.AddContainer(Me, fb.Here, "fbcont", True)
	cont.AddRows5.AddColumns2x6
	cont.BuildGrid
	'
	Dim btnperm As VueElement = vuetify.AddButton(Me, cont.MatrixID(1,1), "btnperm", "Request Permission", "", True, Null)
	btnperm.Raised = False
	btnperm.Loading = "btnpermloading"
	fb.BindVueElement(btnperm)
	fb.SetData("btnpermloading", False)
	
	
	Dim btnrp As VueElement = vuetify.AddButton(Me, cont.MatrixID(2,1), "btnrp", "Get Token", "", True, Null)
	btnrp.Raised = False
	btnrp.Loading = "btnrploading"
	fb.BindVueElement(btnrp)
	fb.SetData("btnrploading", False)
	
	Dim tkn As VueElement = vuetify.AddParagraph(Me, cont.MatrixID(2,2), "tkn", "Token: {{ send.token }}", "", "")
	fb.BindVueElement(tkn)
	'
	Dim btndt As VueElement = vuetify.AddButton(Me, cont.MatrixID(3,1), "btndt", "Delete Token", "", True, Null)
	btndt.Raised = False
	fb.BindVueElement(btndt)
	'
	SendingBlock(cont.MatrixID(4,1))
	
	'when page is mounted
	fb.SetMounted(Me, "openfb", Null)
	'add the component as a router
	vuetify.AddRoute(fb) 
End Sub

'create the sending block
Sub SendingBlock(parentID As String)
	'add sending block
	Dim sendCard As VueElement = vuetify.AddCard(Me, parentID, "sendCard", "", Null)
	'add card title
	Dim scTitle As VueElement = vuetify.AddCardTitle(Me, sendCard.ID, "sctitle", "", Null)
	scTitle.Caption = "Send FireBase Message"
	scTitle.AddSpacer
	Dim btnSend As VueElement = vuetify.AddButton1(Me, scTitle.ID, "btnsend", "Send", Null)
	btnSend.Outlined = True
	btnSend.Color = vuetify.COLOR_PRIMARY
	'
	sendCard.AddDivider
	'
	'add card text
	Dim scText As VueElement = vuetify.AddCardText(Me, sendCard.ID, "sctext", "", Null)
	'initialize the vue state
	fb.SetData("send", fb.NewMap)
	'add token string
	Dim txtToken As VueElement = vuetify.AddTextArea1(Me, scText.ID, "txttoken", "send.token", "Token", Null)
	txtToken.HideDetails = True
	txtToken.Outlined = True
	txtToken.MY = 2
	'add title
	Dim txtTitle As VueElement = vuetify.AddTextField1(Me, scText.ID, "txttitle", "send.title", "Title", Null)
	txtTitle.Dense = True
	txtTitle.HideDetails = True
	txtTitle.Outlined = True
	txtTitle.MY = 2
	'add message
	Dim txtMessage As VueElement = vuetify.AddTextArea1(Me, scText.ID, "txtmessage", "send.message", "Message", Null)
	txtMessage.HideDetails = True
	txtMessage.Outlined = True
	txtMessage.MY = 2
	'
	sendCard.BindVueElement(txtToken)
	sendCard.BindVueElement(txtMessage)
	sendCard.BindVueElement(txtTitle)
	sendCard.BindVueElement(scTitle)
	sendCard.BindVueElement(scText)
	sendCard.BindVueElement(btnSend)
	fb.BindVueElement(sendCard)
	
End Sub

'send the message
Sub btnSend_click(e As BANanoEvent)
	vuetify.ShowSnackBar("Send it!")
	Dim sendM As Map = fb.GetData("send")
	'
	Dim smessage As String = sendM.Get("message")
	Dim stitle As String = sendM.Get("title")
	Dim stoken As String = sendM.Get("token")
	
	'use fetch
	Dim response As BANanoFetchResponse
	Dim error As BANanoObject
	Dim data As BANanoJSONParser
	
	Dim fetch As BANanoFetch = messaging.sendToToken(stoken, stitle, smessage, "./assets/firebase-logo.png")
	fetch.Then(response)
	fetch.Return(response.json)
	fetch.Then(data)
	Dim res As Map = data.NextObject
	Dim results As List = res.get("results")
	If results.Size > 0 Then
		Dim result As Map = results.Get(0)
		Dim smessage_id As String = result.Get("message_id")
		vuetify.ShowSnackBarSuccess("Message ID: " & smessage_id)
	End If
	fetch.Else(error)
	vuetify.ShowSnackBarError("Notification message could not be sent!")
	fetch.End
	Return
End Sub


'connect to database
Sub openfb		'ignoreDeadCode
	'connect to firebase
	firebase.Connect
	messaging = firebase.messaging
	
	'when a message is received with app having focus
	messaging.onMessage(Me, "onMessage")
	'when the token is refreshed
	messaging.onTokenRefresh(Me, "onTokenRefresh")
	
	vuetify.ShowSnackBarSuccess("Connected to firebase...")
End Sub

'when a message is received when app has focus
'Reference: https://stackoverflow.com/questions/40411059/create-firebase-notification-with-page-in-foreground-focus/60247902#60247902
Sub onMessage(payload As Map)
	Log("foreground: onMessage...")
	Dim notification As Map = payload.Get("notification")
	Dim sbody As String = notification.Get("body")
	Dim sicon As String = notification.Get("icon")
	Dim stitle As String = notification.Get("title")
	'
	Dim nav As BANanoNavigator = banano.Navigator
	
	Dim registration As BANanoObject
	Dim swe As Map
	Dim swr As BANanoPromise = nav.GetField("serviceWorker").RunMethod("getRegistration", "/firebase-cloud-messaging-push-scope")
	banano.Await(swr)
	swr.Then(registration)
	Dim notificationOptions As Map = CreateMap()
	notificationOptions.Put("body", sbody)
	notificationOptions.Put("icon", sicon)
	notificationOptions.Put("requireInteraction", True)
	notificationOptions.Put("putvibrate", Array(300, 100, 400))
	'
	registration.RunMethod("showNotification", Array(stitle, notificationOptions))
	
	swr.Else(swe)
	vuetify.ShowSnackBarError("We could not show the notification...")
	swr.End
End Sub

Sub onTokenRefresh()
	'get token using vapidKey
	Dim tThen As Object
	Dim tErr As Map
	Dim token As BANanoPromise = firebase.messaging.getToken
	banano.Await(token)
	token.Then(tThen)
	vuetify.ShowSnackBarSuccess("Token obtained!")
	fb.SetData("send.token", tThen)
	firebase.messaging.setToken(tThen)
	token.Else(tErr)
	vuetify.ShowSnackBarError("Could not retrieve token!")
	fb.SetData("send.token", "")
	token.End
End Sub

Sub btndt_click(e As BANanoEvent)
	Dim dtR As Object
	Dim dtE As Map
	Dim dt As BANanoPromise = firebase.messaging.deleteToken
	banano.Await(dt)
	dt.Then(dtR)
	If dtR Then
		vuetify.ShowSnackBarSuccess("Token deleted successfully")
	Else
		vuetify.ShowSnackBarError("Token could not be deleted!")
	End If	
	dt.Else(dtE)
	vuetify.ShowSnackBarError("Token could not be deleted!")
	dt.End
End Sub

'request permission
Sub btnperm_click(e As BANanoEvent)
	fb.SetData("btnpermloading", True)
	Dim rpThen As Map
	Dim rpErr As Map
	Dim rp As BANanoPromise = firebase.messaging.requestPermission
	banano.Await(rp)
	rp.Then(rpThen)
	vuetify.ShowSnackBarSuccess("Permission granted!")
	rp.Else(rpErr)
	vuetify.ShowSnackBarError("Permission could not be granted!")
	rp.End
	fb.SetData("btnpermloading", False)
End Sub

'get token
Sub btnrp_click(e As BANanoEvent)
	fb.SetData("btnrploading", True)
	'get token using vapidKey
	Dim tThen As Object
	Dim tErr As Map
	Dim token As BANanoPromise = firebase.messaging.getToken 
	banano.Await(token)
	token.Then(tThen)
	vuetify.ShowSnackBarSuccess("Token obtained!")
	fb.SetData("send.token", tThen)
	firebase.messaging.setToken(tThen)
	token.Else(tErr)
	vuetify.ShowSnackBarError("Could not retrieve token!")
	fb.SetData("send.token", "")
	token.End
	fb.SetData("btnrploading", False)
End Sub
