B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
Sub Class_Globals
	Private firebaseConfig As Map
	Public apiKey As String
	Public authDomain As String
	Public databaseURL As String
	Public projectId As String
	Public storageBucket As String
	Public messagingSenderId As String
	Public appId As String
	Public measurementId As String
	Private BANano As BANano  'ignore
	Public firebase As BANanoObject
	Public firebaseApp As BANanoObject
	Public firestore As BANanoObject
	'
	Public const FB_EQ As String = "=="
	Public const FB_GT As String = ">"
	Public const FB_GE As String = ">="
	Public const FB_LT As String = "<"
	Public const FB_LE As String = "<="
	Public const FB_IN As String = "in"
	Public const FB_CONTAINS_ANY As String = "array-contains-any"
	Public const FB_CONTAINS As String = "array-contains"
	Public const FB_NE As String = "ne"
	Public const FB_ASC As String = "asc"
	Public const FB_DESC As String = "desc"
	'
	Public const FB_ADDED As String = "added"
	Public const FB_MODIFIED As String = "modified"
	Public const FB_REMOVED As String = "removed"
	'
	Public storage As BANanoObject
	Public database As BANanoObject
	Public performance As BANanoObject
	Public analytics As BANanoObject
	Public messaging As FBMessaging
	Private settings As Map
	Public vapidKey As String
	Public ServerKey As String
End Sub

'Notes: https://firebase.google.com/docs/firestore/quickstart
'NOTES: update permissions here, https://firebase.google.com/docs/firestore/security/get-started#auth-required
'NOTES on queries, https://firebase.google.com/docs/firestore/query-data/queries

'initialize the bv class
Public Sub Initialize() As BANanoFireStoreDB
	firebaseConfig.Initialize
	apiKey = ""
	authDomain = ""
	databaseURL = ""
	projectId = ""
	storageBucket = ""
	messagingSenderId = ""
	appId = ""
	measurementId = ""
	vapidKey = ""
	firebase.Initialize("firebase")
	settings.Initialize 
	Return Me
End Sub

'build up the config connection string
Sub Connect() As BANanoFireStoreDB
	If apiKey <> "" Then firebaseConfig.put("apiKey", apiKey)
	If authDomain <> "" Then firebaseConfig.put("authDomain", authDomain)
	If databaseURL <> "" Then firebaseConfig.put("databaseURL", databaseURL)
	If projectId <> "" Then firebaseConfig.put("projectId", projectId)
	If storageBucket <> "" Then firebaseConfig.put("storageBucket", storageBucket)
	If messagingSenderId <> "" Then firebaseConfig.put("messagingSenderId", messagingSenderId)
	If appId <> "" Then firebaseConfig.put("appId", appId)
	If measurementId <> "" Then firebaseConfig.put("measurementId", measurementId)
	'initialize the app
	firebaseApp = firebase.RunMethod("initializeApp", firebaseConfig)
	'start analytics
	analytics = firebase.RunMethod("analytics", Null)
	database = firebase.RunMethod("database", Null)
	storage = firebase.RunMethod("storage", Null)
	performance = firebase.RunMethod("performance", Null)
	'get the db
	firestore = firebaseApp.RunMethod("firestore", Null)
	firestore.SetField("settings", settings)
	'
	messaging.Initialize(firebase, vapidKey, ServerKey) 
	Return Me
End Sub

'*get a collection
Sub collection(colName As String) As FBCollection
	Dim lbc As FBCollection
	lbc.Initialize(firestore, colName)
	Return lbc
End Sub

'get access token when login from google
Sub getAccessToken(response As Map) As String
	Dim bo As BANanoObject = response
	Dim token As String = bo.getfield("credential").getfield("accessToken").Result
	Return token
End Sub

'timestampsInSnapshots
Sub timestampsInSnapshots As BANanoFireStoreDB
	settings.Put("timestampsInSnapshots", True)
	Return Me
End Sub

'enable persistence
Sub enablePersistence() As BANanoPromise
	Dim synchronizeTabs As Map = CreateMap("synchronizeTabs":True)
	Dim boOffline As BANanoObject = firestore.RunMethod("enablePersistence", Array(synchronizeTabs))
	Return boOffline
End Sub

'disableNetwork
Sub disableNetwork() As BANanoPromise
	Dim boOffline As BANanoObject = firestore.RunMethod("disableNetwork", Null)
	Return boOffline
End Sub

'enableNetwork
Sub enableNetwork() As BANanoPromise
	Dim boOffline As BANanoObject = firestore.RunMethod("enableNetwork", Null)
	Return boOffline
End Sub

'get the auth object
public Sub auth() As FBAuth
	Dim boauth As FBAuth
	boauth.Initialize(firebaseApp)
	Return boauth
End Sub


'get the display name of a user
public Sub getDisplayName(resp As Map) As String
	Dim dn As String = resp.Get("displayName")
	Return dn
End Sub


'update display name
Sub updateDisplayName(res As BANanoObject, displayName As String) As BANanoPromise
	Dim rec As Map = CreateMap("displayName": displayName)
	Dim promUpdate As BANanoPromise = res.getfield("user").RunMethod("updateProfile", Array(rec))
	Return promUpdate
End Sub

'convert docs to list
Sub FromJSON(response As Map) As List
	'get the returned docs
	Dim docs As List = response.Get("docs")
	Dim recs As List
	recs.Initialize
	For Each userx As BANanoObject In docs
		Dim uid As String = userx.Getfield("id").Result
		Dim udata As Map = userx.RunMethod("data", Null).Result
		udata.Put("id", uid)
		recs.Add(udata)
	Next
	Return recs
End Sub

'get the changes that have been made for added, modified, removed
Sub docChanges(snapShot As Map) As List
	Dim xDocChanges As BANanoObject = snapShot
	Dim changes As List = xDocChanges.RunMethod("docChanges",Null).Result
	Dim recs As List
	recs.Initialize
	For Each recx As BANanoObject In changes
		Dim stype As String = recx.GetField("type").Result
		Dim doc As BANanoObject = recx.GetField("doc")
		Dim rdata As Map = doc.RunMethod("data", Null).Result
		Dim uid As String = doc.Getfield("id").Result
		rdata.Put("changetype", stype)
		rdata.Put("id", uid)
		recs.Add(rdata)
	Next
	Return recs
End Sub

'set on each doc change
Sub SetOnDocChanges(snapShot As Map, Module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	Dim xDocChanges As BANanoObject = snapShot
	Dim changes As List = xDocChanges.RunMethod("docChanges",Null).Result
	For Each recx As BANanoObject In changes
		Dim stype As String = recx.GetField("type").Result
		Dim doc As BANanoObject = recx.GetField("doc")
		Dim rdata As Map = doc.RunMethod("data", Null).Result
		Dim uid As String = doc.Getfield("id").Result
		rdata.Put("changetype", stype)
		rdata.Put("id", uid)
		BANano.CallSub(Module, methodName, Array(rdata))
	Next
End Sub

Sub IsRemoved(m As Map) As Boolean
	Dim ct As String = getChangeType(m)
	If ct = "removed" Then Return True
	Return False
End Sub

Sub IsAdded(m As Map) As Boolean
	Dim ct As String = getChangeType(m)
	If ct = "added" Then Return True
	Return False
End Sub

Sub IsModified(m As Map) As Boolean
	Dim ct As String = getChangeType(m)
	If ct = "modified" Then Return True
	Return False
End Sub

'get the change type
Sub getChangeType(item As Map) As String
	Dim ct As String = item.Get("changetype")
	Return ct
End Sub

'get the id from a response
Sub getID(response As Map) As String
	Dim res As String = response.Get("id")
	Return res
End Sub

'get the message from error
Sub getMessage(error As Map) As String
	Dim res As String = error.Get("message")
	Return res
End Sub

'get the complete record including the id
Sub getRecord(response As BANanoObject) As Map
	Dim id As String = response.GetField("id").Result
	Dim data As Map = response.RunMethod("data", Null).Result
	data.Put("id", id)
	Return data
End Sub

'get a reference to a realtime collection
Sub getDatabaseRef(refName As String) As BANanoObject
	Dim bo As BANanoObject = database.RunMethod("ref", Array(refName))
	Return bo
End Sub

'push to a ref a record
Sub DatabasePush(refName As String, record As Map) As BANanoPromise
	Dim tbl As BANanoObject = getDatabaseRef(refName)
	Dim bp As BANanoPromise = tbl.RunMethod("push", Array(record))
	Return bp
End Sub

'get a reference to a storage path
Sub getStorageRef(refName As String) As BANanoObject
	Dim bo As BANanoObject = storage.RunMethod("ref", Array(refName))
	Return bo
End Sub

'put a file to storage 
Sub StoragePut(refName As String, fo As Map) As BANanoPromise
	Dim tbl As BANanoObject = getStorageRef(refName)
	Dim bp As BANanoPromise = tbl.RunMethod("put", Array(fo))
	Return bp
End Sub

'get the storage URI
Sub getStorageURI(snapShot As BANanoObject) As String
	Dim sURI As String = snapShot.GetField("metadata").GetField("fullPath").Result
	Return sURI
End Sub

Sub getDownloadURL(snapShot As BANanoObject) As BANanoPromise
	Dim bp As BANanoPromise = snapShot.getfield("ref").RunMethod("getDownloadURL", Null)
	Return bp
End Sub
