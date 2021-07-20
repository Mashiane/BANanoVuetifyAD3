B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class
#Event: Exists (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Done (Action As String, Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Create (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Update (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Delete (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Read (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: SelectAll (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: SelectWhere (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Count (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Pdf (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Excel (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Report (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: SelectForCombo (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Chart (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Connected (Success As Boolean)
#Event: OnAuthStateChanged (User As Map)
#Event: SignUp (Success As Boolean, Result As Map)

#DesignerProperty: Key: ApiKey, DisplayName: ApiKey, FieldType: String, DefaultValue: , Description: ApiKey
#DesignerProperty: Key: AuthDomain, DisplayName: AuthDomain, FieldType: String, DefaultValue: , Description: AuthDomain
#DesignerProperty: Key: DatabaseUrl, DisplayName: DatabaseUrl, FieldType: String, DefaultValue: , Description: DatabaseUrl
#DesignerProperty: Key: ProjectId, DisplayName: ProjectId, FieldType: String, DefaultValue: , Description: ProjectId
#DesignerProperty: Key: StorageBucket, DisplayName: StorageBucket, FieldType: String, DefaultValue: , Description: StorageBucket
#DesignerProperty: Key: MessagingSenderId, DisplayName: MessagingSenderId, FieldType: String, DefaultValue: , Description: MessagingSenderId
#DesignerProperty: Key: AppId, DisplayName: AppId, FieldType: String, DefaultValue: , Description: AppId
#DesignerProperty: Key: MeasurementId, DisplayName: MeasurementId, FieldType: String, DefaultValue: , Description: MeasurementId
#DesignerProperty: Key: VapidKey, DisplayName: VapidKey, FieldType: String, DefaultValue: , Description: VapidKey
#DesignerProperty: Key: ServerKey, DisplayName: ServerKey, FieldType: String, DefaultValue: , Description: ServerKey

#DesignerProperty: Key: UseAnalytics, DisplayName: UseAnalytics, FieldType: Boolean, DefaultValue: False, Description: UseAnalytics
#DesignerProperty: Key: UseAuth, DisplayName: UseAuth, FieldType: Boolean, DefaultValue: False, Description: UseAuth
#DesignerProperty: Key: UseDatabase, DisplayName: UseDatabase, FieldType: Boolean, DefaultValue: False, Description: UseDatabase
#DesignerProperty: Key: UsePerformance, DisplayName: UsePerformance, FieldType: Boolean, DefaultValue: False, Description: UsePerformance
#DesignerProperty: Key: UseStorage, DisplayName: UseStorage, FieldType: Boolean, DefaultValue: False, Description: UseStorage
#DesignerProperty: Key: UseMessaging, DisplayName: UseMessaging, FieldType: Boolean, DefaultValue: False, Description: UseMessaging
#DesignerProperty: Key: TimeStampOnSnapShots, DisplayName: TimeStampOnSnapShots, FieldType: Boolean, DefaultValue: True, Description: TimeStampOnSnapShots
#DesignerProperty: Key: EnablePersistence, DisplayName: EnablePersistence, FieldType: Boolean, DefaultValue: True, Description: EnablePersistence
#DesignerProperty: Key: UserName, DisplayName: UserName, FieldType: String, DefaultValue: root, Description: UserName
#DesignerProperty: Key: Password, DisplayName: Password, FieldType: String, DefaultValue: , Description: Password
#DesignerProperty: Key: ShowLog, DisplayName: ShowLog, FieldType: Boolean, DefaultValue: False, Description: ShowLog
#DesignerProperty: Key: TableName, DisplayName: TableName, FieldType: String, DefaultValue: , Description: TableName
#DesignerProperty: Key: RecordSource, DisplayName: RecordSource, FieldType: String, DefaultValue: , Description: RecordSource
#DesignerProperty: Key: PrimaryKey, DisplayName: PrimaryKey, FieldType: String, DefaultValue: , Description: PrimaryKey
#DesignerProperty: Key: AutoIncrement, DisplayName: AutoIncrement, FieldType: String, DefaultValue: , Description: AutoIncrement
#DesignerProperty: Key: Singular, DisplayName: Singular, FieldType: String, DefaultValue: , Description: Singular
#DesignerProperty: Key: Plural, DisplayName: Plural, FieldType: String, DefaultValue: , Description: Plural
#DesignerProperty: Key: DisplayField, DisplayName: DisplayField, FieldType: String, DefaultValue: , Description: DisplayField
#DesignerProperty: Key: Fields, DisplayName: Fields (;), FieldType: String, DefaultValue: , Description: Fields
#DesignerProperty: Key: Defaults, DisplayName: Defaults JSON, FieldType: String, DefaultValue: , Description: Defaults
#DesignerProperty: Key: Integers, DisplayName: Integers (;), FieldType: String, DefaultValue: , Description: Integers
#DesignerProperty: Key: Doubles, DisplayName: Doubles (;), FieldType: String, DefaultValue: , Description: Doubles
#DesignerProperty: Key: Blobs, DisplayName: Blobs (;), FieldType: String, DefaultValue: , Description: Blobs
#DesignerProperty: Key: SelectFields, DisplayName: SelectFields (;), FieldType: String, DefaultValue: , Description: SelectFields
#DesignerProperty: Key: WhereFields, DisplayName: WhereFields, FieldType: String, DefaultValue: , Description: WhereFields
#DesignerProperty: Key: Operators, DisplayName: Operators, FieldType: String, DefaultValue: , Description: Operators
#DesignerProperty: Key: AndOr, DisplayName: AndOr, FieldType: String, DefaultValue: , Description: AndOr
#DesignerProperty: Key: AscDesc, DisplayName: AscDesc, FieldType: String, DefaultValue: , Description: AscDesc
#DesignerProperty: Key: OrderBy, DisplayName: OrderBy (;), FieldType: String, DefaultValue: , Description: OrderBy
#DesignerProperty: Key: CustomQuery, DisplayName: CustomQuery, FieldType: String, DefaultValue: , Description: CustomQuery

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sAndOr As String
	Private sApiKey As String
	Private sAppId As String
	Private sAscDesc As String
	Private sAuthDomain As String
	Private sAutoIncrement As String
	Private sBlobs As String
	Private sCustomQuery As String   'ignore
	Private sDatabaseUrl As String
	Private sDefaults As String
	Private sDisplayField As String
	Private sDoubles As String
	Private bEnablePersistence As Boolean
	Private sFields As String
	Private sIntegers As String
	Private sMeasurementId As String
	Private sMessagingSenderId As String
	Private sOperators As String
	Private sOrderBy As String
	Private sPlural As String
	Private sPrimaryKey As String
	Private sProjectId As String
	Private sRecordSource As String
	Private sSelectFields As String
	Private sSingular As String
	Private sStorageBucket As String
	Private sTableName As String
	Private bTimeStampOnSnapShots As Boolean
	Private bUseAnalytics As Boolean
	Private bUseAuth As Boolean
	Private bUseDatabase As Boolean
	Private bUsePerformance As Boolean
	Private bUseStorage As Boolean
	Private sVapidKey As String   'ignore
	Private sWhereFields As String   'ignore
 	Private bShowLog As Boolean
	'
	Private schemaIntegers As List
	Private schemaStrings As List    'ignore
	Private schemaDoubles As List
	Private schemaBlobs As List
	Private schemaFields As List
	Private schemaDefaults As List
	Private schemaDefaultsM As Map
	'
	Private Strings As List
	Private Integers As List
	Private Blobs As List
	Private Doubles As List
	Private ParentComponent As VueComponent
	Private schemaOrderBy As List
	Private schemaSelectFields As List
	Private dsKey As String
	Public Tag As String
	Private sUserName As String    'ignore
	Private sPassword As String    'ignore
	'
	Public const ACTION_CREATE_TABLE As String = "CreateTable"
	Public const ACTION_CREATE As String = "Create"
	Public const ACTION_READ As String = "Read"
	Public const ACTION_UPDATE As String = "Update"
	Public const ACTION_DELETE As String = "Delete"
	Public const ACTION_SELECTALL As String = "SelectAll"
	Public const ACTION_SELECTWHERE As String = "SelectWhere"
	Public const ACTION_COUNT As String = "Count"
	Public const ACTION_GETMAX As String = "GetMax"
	Public const ACTION_GETMIN As String = "GetMin"
	Public const ACTION_SUMOF As String = "SumOf"
	Public const ACTION_CUSTOM As String = "Custom"
	Public const ACTION_REPORT As String = "Report"
	Public const ACTION_PDF As String = "Pdf"
	Public const ACTION_EXCEL As String = "Excel"
	Public const ACTION_SELECTFORCOMBO As String = "SelectForCombo"
	Public const ACTION_CHART As String = "Chart"
	Public const ACTION_SIGN_UP_OWN As String = "SignUpOwn"
	Public const ACTION_EXISTS As String = "Exists"
	'
	Public const MODE_CREATE As String = "C"
	Public const MODE_UPDATE As String = "U"
	Public const MODE_READ As String = "R"
	Public const MODE_DELETE As String = "D"
	
	Private cw As Map = CreateMap()
	Private ops As List
	Public Mode As String 
	Public IsBound As Boolean
	Private Record As Map
	Private sPrimaryKeyValue As String   'ignore
	Private firebaseConfig As Map
	Public firebase As BANanoObject
	Public firebaseApp As BANanoObject
	Public firestore As BANanoObject
	Public const FB_EQ As String = "=="
	Public const FB_GT As String = ">"
	Public const FB_GE As String = ">="
	Public const FB_LT As String = "<"
	Public const FB_LE As String = "<="
	Public const FB_IN As String = "in"
	Public const FB_NIN As String = "not-in"
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
	'Public messaging As FBMessaging
	Private settings As Map
	Private bUseMessaging As Boolean
	Public OK As Boolean
	Public Result As List
	Public Response As String
	Public Error As String
	Public affectedRows As Int
	Private sAction As String
	Private db As BVAD3FBCollection
	Private auth As BVAD3FBAuth
	Private fireSQL As BANanoObject
End Sub


'Notes: https://firebase.google.com/docs/firestore/quickstart
'NOTES: update permissions here, https://firebase.google.com/docs/firestore/security/get-started#auth-required
'NOTES on queries, https://firebase.google.com/docs/firestore/query-data/queries


Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	BANano.DependsOnAsset("firesql.umd.js")
	mName = Name.tolowercase 
	mEventName = EventName.ToLowerCase 
	mCallBack = CallBack	 
	mName = mName.Replace("#","") 
	mEventName = mEventName.Replace("#","") 
	If mName <> "" Then 
		Dim fKey As String = $"#${mName}"$ 
		If BANano.Exists(fKey) Then  
			mElement = BANano.GetElement(fKey) 
		End If 
	End If 
	Mode = "" 
	Record.Initialize 
	IsBound = False
	settings.Initialize 
	firebaseConfig.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bShowLog = Props.GetDefault("ShowLog", False)
		bShowLog = BANanoShared.parseBool(bShowLog)
		sAndOr = Props.GetDefault("AndOr", "")
		sApiKey = Props.GetDefault("ApiKey", "")
		sAppId = Props.GetDefault("AppId", "")
		sAscDesc = Props.GetDefault("AscDesc", "")
		sAuthDomain = Props.GetDefault("AuthDomain", "")
		sAutoIncrement = Props.GetDefault("AutoIncrement", "")
		sBlobs = Props.GetDefault("Blobs", "")
		sCustomQuery = Props.GetDefault("CustomQuery", "")
		sDatabaseUrl = Props.GetDefault("DatabaseUrl", "")
		sDefaults = Props.GetDefault("Defaults", "")
		sDisplayField = Props.GetDefault("DisplayField", "")
		sDoubles = Props.GetDefault("Doubles", "")
		bEnablePersistence = Props.GetDefault("EnablePersistence", False)
		bEnablePersistence = BANanoShared.parseBool(bEnablePersistence)
		sFields = Props.GetDefault("Fields", "")
		sIntegers = Props.GetDefault("Integers", "")
		sMeasurementId = Props.GetDefault("MeasurementId", "")
		sMessagingSenderId = Props.GetDefault("MessagingSenderId", "")
		sOperators = Props.GetDefault("Operators", "")
		sOrderBy = Props.GetDefault("OrderBy", "")
		sPlural = Props.GetDefault("Plural", "")
		sPrimaryKey = Props.GetDefault("PrimaryKey", "")
		sProjectId = Props.GetDefault("ProjectId", "")
		sRecordSource = Props.GetDefault("RecordSource", "")
		sSelectFields = Props.GetDefault("SelectFields", "")
		sSingular = Props.GetDefault("Singular", "")
		sStorageBucket = Props.GetDefault("StorageBucket", "")
		sTableName = Props.GetDefault("TableName", "")
		bTimeStampOnSnapShots = Props.GetDefault("TimeStampOnSnapShots", False)
		bTimeStampOnSnapShots = BANanoShared.parseBool(bTimeStampOnSnapShots)
		bUseAnalytics = Props.GetDefault("UseAnalytics", False)
		bUseAnalytics = BANanoShared.parseBool(bUseAnalytics)
		bUseAuth = Props.GetDefault("UseAuth", False)
		bUseAuth = BANanoShared.parseBool(bUseAuth)
		bUseDatabase = Props.GetDefault("UseDatabase", False)
		bUseDatabase = BANanoShared.parseBool(bUseDatabase)
		bUsePerformance = Props.GetDefault("UsePerformance", False)
		bUsePerformance = BANanoShared.parseBool(bUsePerformance)
		bUseStorage = Props.GetDefault("UseStorage", False)
		bUseStorage = BANanoShared.parseBool(bUseStorage)
		bUseMessaging = Props.GetDefault("UseMessaging", False)
		bUseMessaging = BANanoShared.parseBool(bUseMessaging)
		sVapidKey = Props.GetDefault("VapidKey", "")
		sWhereFields = Props.GetDefault("WhereFields", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.AddStyle("display", "none")
	VElement.TagName = "div" 
	'
	Strings.Initialize 
	Doubles.Initialize 
	Blobs.Initialize 
	Integers.Initialize 
	schemaDefaultsM.Initialize 
	'
	'ensure consistency
	sFields = sFields.Replace(",", ";")
	sBlobs = sBlobs.Replace(",", ";")
	sIntegers = sIntegers.Replace(",", ";")
	sDoubles = sDoubles.Replace(",", ";") 
	sSelectFields = sSelectFields.Replace(",", ";")
	sOperators = sOperators.Replace(",", ";")
	sAndOr = sAndOr.Replace(",", ";")
	sAscDesc = sAscDesc.Replace(",", ";")
	sOrderBy = sOrderBy.Replace(",", ";")
	'
	sDefaults = sDefaults.replace("=", ":")
	schemaDefaults = BANano.Split(";", sDefaults)
	schemaDefaults = BANanoShared.ListTrimItems(schemaDefaults)
	For Each fld As String In schemaDefaults
		Dim k As String = BANanoShared.MvField(fld, 1, ":")
		Dim v As String = BANanoShared.MvField(fld, 2, ":")
		k = k.Trim
		v = v.Trim
		If k <> "" Then
			schemaDefaultsM.Put(k, v)
		End If
	Next
	'
	schemaIntegers = BANano.Split(";", sIntegers)
	schemaIntegers = BANanoShared.ListTrimItems(schemaIntegers)
	'
	schemaDoubles = BANano.Split(";", sDoubles)
	schemaDoubles = BANanoShared.ListTrimItems(schemaDoubles)
	'
	schemaBlobs = BANano.Split(";", sBlobs)
	schemaBlobs = BANanoShared.ListTrimItems(schemaBlobs)
	'
	schemaFields = BANano.Split(";", sFields)
	schemaFields = BANanoShared.ListTrimItems(schemaFields)
	'
	schemaOrderBy = BANano.Split(";", sOrderBy)
	schemaOrderBy = BANanoShared.ListTrimItems(schemaOrderBy)
	'
	schemaSelectFields = BANano.Split(";", sSelectFields)
	schemaSelectFields = BANanoShared.ListTrimItems(schemaSelectFields)
	'
	dsKey = $"${sRecordSource}.${sPrimaryKey}"$
	'
	'loop through each field
	For Each fld As String In schemaFields
		'its an integer
		If schemaIntegers.IndexOf(fld) >= 0 Then
			Integers.Add(fld)
			Continue
		End If
		'its a blob
		If schemaBlobs.IndexOf(fld) >= 0 Then
			Blobs.Add(fld)
			Continue
		End If
		'its a double
		If schemaDoubles.IndexOf(fld) >= 0 Then
			Doubles.Add(fld)
			Continue
		End If
		'then its a string
		Strings.Add(fld)
	Next
	Tag = ""
	IsBound = False
End Sub

'build up the config connection string
Sub Connect
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.Connect"$)
	End If
	
	firebase.Initialize("firebase")
	firebaseConfig.Initialize
	settings.Initialize 
	 
	If sApiKey <> "" Then firebaseConfig.put("apiKey", sApiKey)
	If sAuthDomain <> "" Then firebaseConfig.put("authDomain", sAuthDomain)
	If sDatabaseUrl <> "" Then firebaseConfig.put("databaseURL", sDatabaseUrl)
	If sProjectId <> "" Then firebaseConfig.put("projectId", sProjectId)
	If sStorageBucket <> "" Then firebaseConfig.put("storageBucket", sStorageBucket)
	If sMessagingSenderId <> "" Then firebaseConfig.put("messagingSenderId", sMessagingSenderId)
	If sAppId <> "" Then firebaseConfig.put("appId", sAppId)
	If sMeasurementId <> "" Then firebaseConfig.put("measurementId", sMeasurementId)
	
	'if we are still connected, then exit
	If IsConnected Then Return
	
	'initialize the app
	firebaseApp = firebase.RunMethod("initializeApp", firebaseConfig)
	
	'we are using the database
	If bUseDatabase Then
		If sDatabaseUrl <> "" Then
			database = firebase.RunMethod("database", Null)
		End If
	End If
	'we are using storage
	If bUseStorage Then
		If bTimeStampOnSnapShots Then
			settings.Put("timestampsInSnapshots", True)
		End If
		If sStorageBucket <> "" Then
			firestore = firebaseApp.RunMethod("firestore", Null)
			If settings.Size > 0 Then
				firestore.SetField("settings", settings)
			End If
		End If
	End If
	'we are using messaging
	If bUseMessaging Then
		If sMessagingSenderId <> "" Then
			'messaging.Initialize(firebase, sVapidKey, sServerKey) 
		End If
	End If
	'we are using analytics
	If bUseAnalytics Then
		analytics = firebase.RunMethod("analytics", Null)
	End If
	'we measure performance
	If bUsePerformance Then
		performance = firebase.RunMethod("performance", Null)
	End If
	'we are using storage
	If bUseStorage Then
		storage = firebase.RunMethod("storage", Null)
	End If
	'we are using authorization
	If bUseAuth Then
		auth.Initialize(firebaseApp)
		auth.onAuthStateChanged(Me, "onAuthStateChanged")
	
	End If	
	'check if we are connected
	Dim bConnect As Boolean = IsConnected
	'enable persistence
	If bEnablePersistence Then
		BANano.Await(enablePersistence)
	End If
	'if we have done defined, call it
	If SubExists(mCallBack, $"${mName}_connected"$) Then
		BANano.CallSub(mCallBack, $"${mName}_connected"$, Array(bConnect))
	Else
		BANano.Throw($"BANanoDataSourceFireBase.${mName} Connected event does not exist!"$)
	End If
End Sub

'run internal to return to the user
private Sub onAuthStateChanged(user As Object)
	Dim isauthenticated As Boolean
	Dim usr As Map = CreateMap()
	If BANano.isnull(user) Or BANano.isundefined(user) Then
		'user not authenticated
		isauthenticated = False
	Else
		'user authenticated
		isauthenticated = True
		'get the user data
		usr = auth.GetUserData(user)
	End If
	'update the authentication status of the user
	usr.Put("authenticated", isauthenticated)
	'call the sub
	If SubExists(mCallBack, $"${mName}_onAuthStateChanged"$) Then
		BANano.CallSub(mCallBack, $"${mName}_onAuthStateChanged"$, Array(usr))
	Else
		BANano.Throw($"${mName}_onAuthStateChanged does not exist!"$)	
	End If
End Sub


'check if we are connected to firestore
private Sub IsConnected As Boolean
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.IsConnected"$)
	End If
	'check to see if we have apps already opened
	Dim apps As List = firebase.GetField("apps").result
	If apps.Size = 0 Then
		Return False
	Else
		Return True	
	End If
End Sub

'enable persistence
private Sub enablePersistence() As BANanoPromise
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.enablePersistence"$)
	End If
	Dim synchronizeTabs As Map = CreateMap("synchronizeTabs":True)
	Dim boOffline As BANanoObject = firestore.RunMethod("enablePersistence", Array(synchronizeTabs))
	Return boOffline
End Sub

'disableNetwork
Sub disableNetwork() As BANanoPromise
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.disableNetwork"$)
	End If
	Dim boOffline As BANanoObject = firestore.RunMethod("disableNetwork", Null)
	Return boOffline
End Sub

'enableNetwork
Sub enableNetwork() As BANanoPromise
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.enableNetwork"$)
	End If
	Dim boOffline As BANanoObject = firestore.RunMethod("enableNetwork", Null)
	Return boOffline
End Sub

'key for deletes and reads
Sub SetKey(keyValue As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SetKey.${keyValue}"$)
	End If
	ParentComponent.SetData(dsKey, keyValue)
End Sub

'set the record tp update
Sub SetRecord(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SetRecord.${BANano.ToJson(rec)}"$)
	End If
	ParentComponent.SetData(sRecordSource, rec)
End Sub

private Sub CorrectDataTypes(rec As Map)
	For Each fld As String In Integers
		Dim v As String = rec.GetDefault(fld, 0)
		v = BANano.parseInt(v)
		rec.Put(fld, v)
	Next
	For Each fld As String In Doubles
		Dim v As String = rec.GetDefault(fld, 0)
		v = BANano.parseFloat(v)
		rec.Put(fld, v)
	Next
End Sub

Sub getID As String
	Return mName
End Sub

'the target for this document
Sub getHere As String
	Return $"#${mName}"$
End Sub

'return the primary key field bame
Sub getPrimaryKey As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	Return sPrimaryKey
End Sub

'return the singular name of these records, this is used for deletes
Sub getSingular As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	Return sSingular
End Sub

'return the plural name of these records
Sub getPlural As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	Return sPlural
End Sub

'return the display field, this is used for deleted
Sub getDisplayField As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	Return sDisplayField
End Sub

'return the display value, this is used for deletes
Sub getDisplayValue As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	'get the record
	Record = ParentComponent.GetData(sRecordSource)
	'get the display field
	Dim sDisplayValue As String = Record.GetDefault(sDisplayField, "")
	sPrimaryKeyValue = Record.GetDefault(sPrimaryKey, "")
	Return sDisplayValue
End Sub

'clear where clause
Sub ClearWhere As BANanoDataSourceFireBase
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.ClearWhere"$)
	End If
	cw.Initialize 
	ops.Initialize 
	Return Me
End Sub

'add a where clause for your select where
Sub AddWhere(fld As String, operator As String, value As Object) As BANanoDataSourceFireBase
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.AddWhere"$)
	End If
	cw.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub


'set the defaults for the form as specified in AD
Sub DEFAULTS
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.DEFAULTS"$)
	End If
	'get the schema and prepare defaults
	Record = CreateMap()
	'copy the fields
	For Each k As String In schemaFields
		Record.Put(k, "")
	Next
	If schemaDefaultsM.Size >= 0 Then
		'loop through each item in defaults
		For Each k As String In schemaDefaultsM.Keys
			Dim v As String = schemaDefaultsM.Get(k)
			'does this exist on the fields
			If schemaFields.IndexOf(k) >= 0 Then
				Record.Put(k, v)
			End If
		Next
	End If
	CorrectDataTypes(Record)
	ParentComponent.SetData(sRecordSource, Record)
End Sub

'create or update based on the mode
Sub CREATE_OR_UPDATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	'determinate the mode
	Select Case Mode
	Case MODE_CREATE
		'create a record
		CREATE
	Case MODE_UPDATE
		'update a record		
		UPDATE
	End Select
End Sub

'set a Create mode
Sub CREATE_MODE
	Mode = MODE_CREATE
End Sub

'set an update mode
Sub UPDATE_MODE
	Mode = MODE_UPDATE
End Sub

'set a read mode
Sub READ_MODE
	Mode = MODE_READ
End Sub

'set a delete mode
Sub DELETE_MODE
	Mode = MODE_DELETE
End Sub

'clear the record source linked to a form
Sub RESET
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.RESET"$)
	End If
	Record = CreateMap()
	'copy the fields
	For Each k As String In schemaFields
		Record.Put(k, "")
	Next
	CorrectDataTypes(Record)
	ParentComponent.SetData(sRecordSource, Record)
End Sub

'get the form contents
Sub FORM As Map
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.FORM"$)
	End If
	Record = ParentComponent.GetData(sRecordSource)
	Return Record
End Sub

'read a record from an existing one
Sub READ
	Record = ParentComponent.GetData(sRecordSource)
	READ1(Record)	
End Sub

'read a record using outside record map
Sub READ1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.READ1"$)
	End If
	'the record will be in update mode after being read
	UPDATE_MODE
	SetRecord(rec)	
	Tag = ACTION_READ
	Execute(ACTION_READ)
End Sub

'create a new record from an outside map
Sub CREATE1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.CREATE1"$)
	End If
	CREATE_MODE
	SetRecord(rec)
	Tag = ACTION_CREATE
	Execute(ACTION_CREATE)
End Sub

'create a new record from existing recordsource, use setRecord first
Sub CREATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.CREATE"$)
	End If
	CREATE_MODE
	Tag = ACTION_CREATE
	Execute(ACTION_CREATE)
End Sub

'delete the record internally, use setRecord first
Sub DELETE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.DELETE"$)
	End If
	DELETE_MODE
	Tag = ACTION_DELETE
	Execute(ACTION_DELETE)
End Sub

'delete a record from outside map
Sub DELETE1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.DELETE1"$)
	End If
	DELETE_MODE
	SetRecord(rec)
	Tag = ACTION_DELETE
	Execute(ACTION_DELETE)
End Sub

'update existing record from an outside map
Sub UPDATE1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.UPDATE1"$)
	End If
	UPDATE_MODE
	SetRecord(rec)
	Tag = ACTION_UPDATE
	Execute(ACTION_UPDATE)
End Sub

'update existing record from existing recordsource, use setRecord first
Sub UPDATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.UPDATE"$)
	End If
	UPDATE_MODE
	Tag = ACTION_UPDATE
	Execute(ACTION_UPDATE)
End Sub

'run your own query
Sub CUSTOM(ActionName As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.UPDATE"$)
	End If
	Tag = ActionName
	Execute(ACTION_CUSTOM)
End Sub

'count total number of records
Sub COUNT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.COUNT"$)
	End If
	Tag = ACTION_COUNT
	Execute(ACTION_COUNT)
End Sub

'select all based on fields and order by
Sub SELECTFORCOMBO
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SELECTFORCOMBO"$)
	End If
	Tag = ACTION_SELECTFORCOMBO
	Execute(ACTION_SELECTFORCOMBO)
End Sub

'select all based on fields and order by
Sub SELECTALL
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SELECTALL"$)
	End If
	Tag = ACTION_SELECTALL
	Execute(ACTION_SELECTALL)
End Sub

'select all based on fields and order by
Sub SELECTWHERE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SELECTWHERE"$)
	End If
	Tag = ACTION_SELECTWHERE
	Execute(ACTION_SELECTWHERE)
End Sub

'select all based on fields and order by for PDF
Sub PDF
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.PDF"$)
	End If
	Tag = ACTION_PDF
	Execute(ACTION_PDF)
End Sub

'select all based on fields and order by for Chart
Sub CHART
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.Chart"$)
	End If
	Tag = ACTION_CHART
	Execute(ACTION_CHART)
End Sub

'select all based on fields and order by for Excel
Sub EXCEL
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.EXCEL"$)
	End If
	Tag = ACTION_EXCEL
	Execute(ACTION_EXCEL)
End Sub

'select all based on fields and order by for Excel
Sub REPORT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.REPORT"$)
	End If
	Tag = ACTION_REPORT
	Execute(ACTION_REPORT)
End Sub

'execute a given transaction
private Sub Execute(nAction As String)
	OK = False
	Result.Initialize 
	affectedRows = 0
	Error = ""
	sAction = nAction
	'
	Dim bpRun As BANanoPromise
	bpRun.CallSub(Me, "FireStoreExecute", Null)
	BANano.Await(bpRun)
		'
	'priorize the exact query, if not execute done
	Dim subKey As String = $"${mName}_${Tag}"$
	If SubExists(mCallBack, subKey) Then
		BANano.CallSub(mCallBack, subKey, Array(OK, Response, Error, affectedRows, Result))
		Return
	End If
	'
	'if we have done defined, call it
	If SubExists(mCallBack, $"${mName}_done"$) Then
		BANano.CallSub(mCallBack, $"${mName}_done"$, Array(Tag, OK, Response, Error, affectedRows, Result))
	End If
End Sub

'*get a collection
private Sub collection(colName As String) As BVAD3FBCollection
	Dim lbc As BVAD3FBCollection
	lbc.Initialize(firestore, colName)
	Return lbc
End Sub

private Sub FireStoreExecute As Boolean    'ignore
	'clear the schema
	db = collection(sTableName)
	db.PrimaryKey = sPrimaryKey
	db.AutoIncrement = sAutoIncrement
	db.SchemaClear
	'add the schema to the dbclass
	db.SchemaAddBlob(Blobs)
	db.SchemaAddDouble(Doubles)
	db.SchemaAddInt(Integers)
	db.SchemaAddText(Strings)
	'
	Dim bRead As Boolean = False
	Dim bSelect As Boolean = False  'ignore
	Dim bCount As Boolean = False    'ignore
	'
	'
	Tag = sAction
	
	Select Case sAction
	Case ACTION_CREATE_TABLE
		'MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		Record = ParentComponent.GetData(sRecordSource)
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${Record}"$)
		'insert a record and wait to finish and raise the event
		BANano.Await(db.AddWait(Record))
	Case ACTION_READ
		bRead = True
		'get the key for the record
		Dim pkValue As String = ParentComponent.GetData(dsKey)
		'there is no key, return a blank data-source
		If pkValue = "" Then
			Dim nr As Map = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(nr)
			ParentComponent.SetData(sRecordSource, nr) 
			BANano.ReturnThen(True)
		End If
		Log($"Read: ${pkValue}"$)
		'execute the read
		BANano.Await(db.ReadWait(pkValue))
	Case ACTION_UPDATE
		'get the key for the record
		Dim pkValue As String = ParentComponent.GetData(dsKey)
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		Record = ParentComponent.GetData(sRecordSource)
		CorrectDataTypes(Record)
		'we need to remove the auto-increment key from the record
		Record.Remove(sPrimaryKey)
		Log($"Update: ${Record}"$)
		'use merge to update affected fields only
		BANano.Await(db.MergeWait(pkValue, Record))
	Case ACTION_DELETE
		'get the key for the record
		Dim pkValue As String = ParentComponent.GetData(dsKey)
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		Log($"Delete: ${pkValue}"$)
		BANano.Await(db.DeleteWait(pkValue))
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_CHART
		bSelect = True
		If schemaOrderBy.Size = 0 Then
			Result = BANano.Await(db.GetWait)
		Else
			Result = BANano.Await(db.GetWaitSort(schemaOrderBy))
		End If		
	Case ACTION_SELECTFORCOMBO, ACTION_EXISTS
		'fireSQL
		bSelect = True
		Dim xSort As String = BANano.Join(schemaOrderBy, ",")
		Dim xqry As String = $"SELECT __name__ AS ${sPrimaryKey}, ${sDisplayField} FROM ${sTableName}"$
		If cw.Size > 0 Then
			Dim strWhere As String = BuildWhere
			xqry = xqry & " WHERE " & strWhere & " "
		End If
		If xSort <> "" Then
			xqry = $"${xqry} ORDER BY ${xSort}"$
		End If
		xqry = xqry.trim
		'
		'include the id as a field 
		fireSQL.Initialize2("FireSQL", firestore)
		Result = BANano.Await(db.query(fireSQL, xqry))
		'
	Case ACTION_SELECTWHERE
		bSelect = True
		Dim xfields As String = BANano.join(schemaSelectFields, ",")
		Dim xSort As String = BANano.Join(schemaOrderBy, ",")
		Dim xqry As String = $"SELECT __name__ AS ${sPrimaryKey}, ${xfields} FROM ${sTableName}"$
		If cw.Size > 0 Then
			Dim strWhere As String = BuildWhere
			xqry = xqry & " WHERE " & strWhere & " "
		End If
		If xSort <> "" Then
			xqry = $"${xqry} ORDER BY ${xSort}"$
		End If
		xqry = xqry.trim
		'include the id as a field 
		fireSQL.Initialize2("FireSQL", firestore)
		Result = BANano.Await(db.query(fireSQL, xqry))	
		'
	Case ACTION_COUNT
		bCount = True
		bSelect = True
		'MySQL.GetCount
	Case ACTION_GETMAX
		bSelect = True
	Case ACTION_GETMIN
		bSelect = True
	Case ACTION_CUSTOM
		bSelect = True
		'MySQL.Execute(sCustomQuery)
	End Select
	'we are using mysqlphp.config
	
	'get the result
	Response = db.response
	Error = db.error
	affectedRows = db.affectedRows
	Result = db.result
	OK = db.OK
	'
	'we are reading a record
	If bRead Then
		'record is found
		If Result.Size >= 0 Then
			Record = Result.Get(0)
			ParentComponent.SetData(sRecordSource, Record)
		Else
			'record is not found
			Record = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(Record)
			ParentComponent.SetData(sRecordSource, Record)
		End If
	End If
	BANano.ReturnThen(True)
End Sub


private Sub BuildWhere() As String
	Dim sb As StringBuilder
	sb.Initialize
	Dim i As Int
	Dim iWhere As Int = cw.Size - 1
	For i = 0 To iWhere
		If i > 0 Then
			sb.Append(" AND ")
		End If
		Dim col As String = cw.GetKeyAt(i)
		Dim val As String = cw.GetValueAt(i)
		Dim oper As String = ops.Get(i)
		'
		sb.Append(col)
		sb.Append($" ${oper} "$)
		sb.Append(val)
	Next
	Return sb.tostring
End Sub


'bind to this DS to this component
Sub BindState(VC As VueComponent)
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.BindState"$)
	End If
	ParentComponent = VC
	'initialize a blank record
	Dim nr As Map = CreateMap()
	ParentComponent.SetData(sRecordSource, nr)
	IsBound = True
End Sub
 
Sub SIGN_UP_OWN(emailAddress As String, password As String)
	Tag = ACTION_SIGN_UP_OWN
	If IsBound = False Then
		BANano.Throw($"BANanoDataSourceFireBase.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSourceFireBase.${sTableName}.SIGN_UP_OWN"$)
	End If
	'
	Dim resp As Map
	Dim err As Map
	Dim promRegister As BANanoPromise = auth.createUserWithEmailAndPassword(emailAddress, password)
	promRegister.ThenWait(resp)
		Dim usr As Map = auth.getSignedInUserDetails(resp)
		'if we have done defined, call it
		If SubExists(mCallBack, $"${mName}_signup"$) Then
			BANano.CallSub(mCallBack, $"${mName}_signup"$, Array(True, usr))
		Else
			BANano.Throw($"BANanoDataSourceFireBase.${mName}.SIGNUP callback not defined!"$)
		End If
	promRegister.ElseWait(err)
		If SubExists(mCallBack, $"${mName}_signup"$) Then
			BANano.CallSub(mCallBack, $"${mName}_signup"$, Array(False, err))
		Else
			BANano.Throw($"BANanoDataSourceFireBase.${mName}.SIGNUP callback not defined!"$)
		End If
	promRegister.End
End Sub

'get the error message from the response
Sub ErrorMessage(res As Map) As String
	Dim serror As String = res.GetDefault("message", "")
	Return serror
End Sub