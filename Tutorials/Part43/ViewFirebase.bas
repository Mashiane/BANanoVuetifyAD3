B4J=true
Group=Default Group\Views
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
	Private subscriptionsLV As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	fb.Initialize(Me, name)
	fb.vuetify = vuetify
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
	'**** this page needs to use its own dialog, lets add it
	fb.AddMsgBox(True, 500, "primary", "error")
	
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
	SubscribeBlock(cont.MatrixID(4,2))
	
	'when page is mounted
	fb.SetMounted(Me, "openfb", Null)
	'add the component as a router
	vuetify.AddRoute(fb) 
End Sub


Sub SubscribeBlock(parentID As String)
	Dim subCard As VueElement = vuetify.AddCard(Me, parentID, "subCard", "", Null)
	'add card title
	Dim subTitle As VueElement = vuetify.AddCardTitle(Me, subCard.ID, "subtitle", "", Null)
	subTitle.Caption = "Subscribe to Topic"
	subTitle.AddSpacer
	Dim btnsubscribe As VueElement = vuetify.AddButton1(Me, subTitle.ID, "btnsubscribe", "Subscribe", Null)
	btnsubscribe.Outlined = True
	btnsubscribe.Color = vuetify.COLOR_PRIMARY
	btnsubscribe.Loading = "subscribeload"
	'
	subCard.AddDivider
	'
	'add card text
	Dim subText As VueElement = vuetify.AddCardText(Me, subCard.ID, "subtext", "", Null)
	'initialize subscription
	fb.SetData("subscribe", fb.NewMap)
	'add token string
	Dim txtMobileNo As VueElement = vuetify.AddTextField1(Me, subText.ID, "txtmobileno", "subscribe.mobile", "Mobile No", Null)
	txtMobileNo.HideDetails = True
	txtMobileNo.Outlined = True
	txtMobileNo.Dense = True
	txtMobileNo.MY = 2
	'add topic
	Dim txtTopic As VueElement = vuetify.AddTextField1(Me, subText.ID, "txttopic", "subscribe.topic", "Topic", Null)
	txtTopic.Dense = True
	txtTopic.HideDetails = True
	txtTopic.Outlined = True
	txtTopic.MY = 2
	
	Dim btngettopics As VueElement = vuetify.AddButton1(Me, subText.ID, "btngettopics", "Get Subscriptions", Null)
	btngettopics.Raised = True
	btngettopics.MY = 2
	btngettopics.Block = True
	btngettopics.Color = vuetify.COLOR_AMBER
	btngettopics.Loading = "btngettopicsloading"
	'
	'will hold a list of our subscriptons
	subscriptionsLV = vuetify.AddList(Me, subText.id, "subscriptionsLV", True, True, False, Null)
	subscriptionsLV.MA = 2
	'initialize the listview options, we use the default options
	'to source the data
	Dim subscriptionsLVO As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	subscriptionsLVO.dataSource = "subscriptions"
	'add the template to the list
	subscriptionsLV.AddListViewTemplate(0, subscriptionsLVO)
	'bind the list
	fb.BindVueElement(subscriptionsLV)
	'	
	subCard.BindVueElement(btngettopics)
	subCard.BindVueElement(btnsubscribe)
	subCard.BindVueElement(txtMobileNo)
	subCard.BindVueElement(txtTopic)
	fb.BindVueElement(subCard)
	'
	'change state bindings after bindvueelement
	fb.SetData("subscribeload", False)
	fb.SetData("btngettopicsloading", False)
End Sub

'when we want to send a notification to a topic
Sub subscriptionsLV_leftclick(item As Map)
	Dim stopic As String = item.Get("id")
	'
	'use fetch
	Dim response As BANanoFetchResponse
	Dim error As BANanoObject
	
	Dim fetch As BANanoFetch = messaging.sendToTopic(stopic, stopic, stopic, "./assets/firebase-logo.png")
	banano.Await(fetch)
	fetch.Then(response)
	'
	If (response.Status < 200 Or response.Status >= 400) Then
		vuetify.ShowSnackBarError($"Message to topic '${stopic}' was not successfuly sent!"$)
	Else
		vuetify.ShowSnackBarSuccess($"Message to topic '${stopic}' was successful sent!"$)
	End If
	fetch.Else(error)
	vuetify.ShowSnackBarError($"Message to topic '${stopic}' was not successfuly sent!"$)
	fetch.End
End Sub

'when a subscription is deleted
Sub subscriptionsLV_rightclick(item As Map)
	'get the topic name
	Dim sTopic As String = item.Get("id")
	fb.SetData("topic", sTopic)
	'show confirmation
	fb.ShowConfirm("unsubscribe", "Confirm", $"Are you sure you want to un-subscribe from topic '${sTopic}'?"$, "Yep", "Nada")
End Sub

Sub Unsubscribe(stopic As String)
	Dim response As BANanoFetchResponse
	Dim error As BANanoObject
	
	'use batchRemove
	Dim fetch As BANanoFetch = messaging.removeTopic(stopic)
	'use unsubscribe
	'Dim fetch As BANanoFetch = messaging.unsubscribe(sTopic)
	banano.Await(fetch)
	fetch.Then(response)
	'
	If (response.Status < 200 Or response.Status >= 400) Then
		vuetify.ShowSnackBarError($"Removal of the subscription to topic '${stopic}' was not successful!"$)
	Else
		vuetify.ShowSnackBarSuccess($"Removal of the subscription to topic '${stopic}' was successful!"$)
	End If
	fetch.Else(error)
	vuetify.ShowSnackBarError($"Removal of the subscription to topic '${stopic}' was not successful!"$)
	fetch.End
End Sub

'ok button for component is clicked
Sub fbok_click(e As BANanoEvent)
	'hide the dialog
	fb.HideDialog
	'get the process
	Dim sconfirm As String = fb.Confirm
	Select Case sconfirm
	Case "unsubscribe"
		Dim stopic As String = fb.GetData("topic")
		Unsubscribe(stopic)
	End Select
End Sub

'confirm cancel button clicked
Sub fbcancel_click(e As BANanoEvent)
	fb.HideDialog
	Dim sconfirm As String = fb.Confirm
	Select Case sconfirm
	End Select
End Sub

'get subscribed topics
Sub btngettopics_click(e As BANanoEvent)
	'use an entered token or provided token
	Dim stoken As String = fb.GetData("send.token")	
	firebase.messaging.setToken(stoken)
	
	fb.SetData("btngettopicsloading", True)
	'clear the subscriptions
	fb.SetData("subscriptions", fb.NewList)
	'clear the items in the list
	subscriptionsLV.ClearItems
	'
	Dim response As BANanoFetchResponse
	Dim error As BANanoObject
	Dim data As BANanoJSONParser
	
	'get the subscripts
	Dim fetch As BANanoFetch = messaging.GetSubscriptions
	banano.Await(fetch)
	fetch.Then(response)
	fetch.Return(response.json)
	fetch.Then(data)
	Dim res As Map = data.NextObject
	Dim rel As Map = res.get("rel")
	Dim topics As Map = rel.Get("topics")
	
	For Each stopic As String In topics.Keys
		Dim topicDetails As Map = topics.Get(stopic)
		Dim saddDate As String = topicDetails.Get("addDate")
		saddDate = fb.NiceDate(saddDate)
		subscriptionsLV.AddItemAction(stopic, "mdi-message", vuetify.color_green, stopic, saddDate, "", "", "mdi-delete-variant", vuetify.COLOR_RED, 0, "")
		subscriptionsLV.AddItemDivider(True)
	Next
	'set the state for the items
	fb.SetData(subscriptionsLV.datasource, subscriptionsLV.records)
	fetch.Else(error)
	vuetify.ShowSnackBarError("Subscriptions could not be obtained!")
	fetch.End
	fb.SetData("btngettopicsloading", False)
End Sub

Sub btnsubscribe_click(e As BANanoEvent)
	'show loading on the button
	fb.SetData("subscribeload", True)
	'get the subscriptions
	Dim subscription As Map = fb.GetData("subscribe")
	Dim sTopic As String = subscription.Get("topic")
	'
	'use fetch
	Dim response As BANanoFetchResponse
	Dim error As BANanoObject
	
	'use batchAdd
	Dim fetch As BANanoFetch = messaging.createTopic(sTopic)
	'use subscribe
	'Dim fetch As BANanoFetch = messaging.subscribe(sTopic)
	banano.Await(fetch)
	fetch.Then(response)
	If (response.Status < 200 Or response.Status >= 400) Then
		vuetify.ShowSnackBarError($"Subscription to topic '${sTopic}' was not successful!"$)
	Else
		vuetify.ShowSnackBarSuccess($"Subscription to topic '${sTopic}' was made successfully!"$)
	End If
	fetch.Else(error)
	vuetify.ShowSnackBarError($"Subscription to topic '${sTopic}' was not successful!"$)
	fetch.End
	'hide loading on the button
	fb.SetData("subscribeload", False)
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
	banano.Await(fetch)
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
