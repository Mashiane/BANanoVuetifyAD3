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
#Event: Done (Action As String, Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)

#DesignerProperty: Key: ShowLog, DisplayName: ShowLog, FieldType: Boolean, DefaultValue: False, Description: ShowLog
#DesignerProperty: Key: DatabaseType, DisplayName: DatabaseType, FieldType: String, DefaultValue: mysql, Description: DatabaseType, List: banano|firebase|firestore|mssql|mysql|sqlite
#DesignerProperty: Key: Action, DisplayName: Action, FieldType: String, DefaultValue: , Description: Action, List: CreateTable|Create|Read|Update|Delete|SelectAll|SelectWhere|Count|GetMax|GetMin|SumOf|Custom
#DesignerProperty: Key: HostName, DisplayName: HostName, FieldType: String, DefaultValue: localhost, Description: HostName
#DesignerProperty: Key: DatabaseName, DisplayName: DatabaseName, FieldType: String, DefaultValue: , Description: DatabaseName
#DesignerProperty: Key: UserName, DisplayName: UserName, FieldType: String, DefaultValue: root, Description: UserName
#DesignerProperty: Key: Password, DisplayName: Password, FieldType: String, DefaultValue: , Description: Password
#DesignerProperty: Key: UseJetty, DisplayName: UseJetty, FieldType: Boolean, DefaultValue: False, Description: UseJetty
#DesignerProperty: Key: Dynamic, DisplayName: Dynamic, FieldType: Boolean, DefaultValue: False, Description: Dynamic
#DesignerProperty: Key: TableName, DisplayName: TableName, FieldType: String, DefaultValue: , Description: TableName
#DesignerProperty: Key: PrimaryKey, DisplayName: PrimaryKey, FieldType: String, DefaultValue: , Description: PrimaryKey
#DesignerProperty: Key: AutoIncrement, DisplayName: AutoIncrement, FieldType: String, DefaultValue: , Description: AutoIncrement
#DesignerProperty: Key: Singular, DisplayName: Singular, FieldType: String, DefaultValue: , Description: Singular
#DesignerProperty: Key: Plural, DisplayName: Plural, FieldType: String, DefaultValue: , Description: Plural
#DesignerProperty: Key: DisplayField, DisplayName: DisplayField, FieldType: String, DefaultValue: , Description: DisplayField
#DesignerProperty: Key: Fields, DisplayName: Fields (;), FieldType: String, DefaultValue: , Description: Fields
#DesignerProperty: Key: Defaults , DisplayName: Defaults JSON;, FieldType: String, DefaultValue: , Description: Defaults
#DesignerProperty: Key: Integers, DisplayName: Integers (;), FieldType: String, DefaultValue: , Description: Integers
#DesignerProperty: Key: Doubles, DisplayName: Doubles (;), FieldType: String, DefaultValue: , Description: Doubles
#DesignerProperty: Key: Blobs, DisplayName: Blobs (;), FieldType: String, DefaultValue: , Description: Blobs
#DesignerProperty: Key: RecordSource, DisplayName: RecordSource, FieldType: String, DefaultValue: , Description: RecordSource
#DesignerProperty: Key: SelectFields, DisplayName: SelectFields (;) , FieldType: String, DefaultValue: , Description: SelectFields
#DesignerProperty: Key: WhereFields, DisplayName: WhereFields, FieldType: String, DefaultValue: , Description: WhereFields
#DesignerProperty: Key: Operators, DisplayName: Operators (;) , FieldType: String, DefaultValue: , Description: Operators
#DesignerProperty: Key: AndOr, DisplayName: AndOr (;), FieldType: String, DefaultValue: , Description: AndOr
#DesignerProperty: Key: AscDesc, DisplayName: AscDesc (;), FieldType: String, DefaultValue: , Description: AscDesc
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
	Private sAction As String
	Private sAndOr As String
	Private sAscDesc As String
	Private sAutoIncrement As String
	Private sBlobs As String
	Private sCustomQuery As String
	Private sDatabaseName As String
	Private sDatabaseType As String
	Private sDoubles As String
	Private bDynamic As Boolean
	Private sFields As String
	Private bGetNextId As Boolean
	Private sHostName As String
	Private sIntegers As String
	'
	Public affectedRows As Int
	Public Error As String
	Public OK As String
	Public Response As String
	Public Result As List
	Public Record As Map
	'
	Private sOperators As String
	Private sOrderBy As String
	Private sPassword As String
	Private sPrimaryKey As String
	Private sRecordSource As String
	Private sSelectFields As String
	Private sTableName As String
	Private bUseJetty As Boolean
	Private sUserName As String
	Private sWhereFields As String
	Private sDefaults As String
	
	Private schemaIntegers As List
	Private schemaStrings As List
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
	Private Tag As String
	Private sSingular As String
	Private sPlural As String
	Private sDisplayField As String
	Private sPrimaryKeyValue As String
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
	Private cw As Map = CreateMap()
	Private ops As List
	Public Mode As String 
	Private bShowLog As Boolean
End Sub

'initialize the BANanoDS
Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	mName = Name.tolowercase 
	mEventName = EventName.ToLowerCase 
	mCallBack = CallBack	
	Mode = "" 
End Sub

'return the primary key field bame
Sub getPrimaryKey As String
	Return sPrimaryKey
End Sub

'return the singular name of these records, this is used for deletes
Sub getSingular As String
	Return sSingular
End Sub

'return the plural name of these records
Sub getPlural As String
	Return sPlural
End Sub

'return the display field, this is used for deleted
Sub getDisplayField As String
	Return sDisplayField
End Sub

'return the display value, this is used for deletes
Sub getDisplayValue As String
	'get the record
	Record = ParentComponent.GetData(sRecordSource)
	'get the display field
	Dim sDisplayValue As String = Record.GetDefault(sDisplayField, "")
	sPrimaryKeyValue = Record.GetDefault(sPrimaryKey, "")
	Return sDisplayValue
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		sAction = Props.GetDefault("Action", "")
		sAndOr = Props.GetDefault("AndOr", "")
		sAscDesc = Props.GetDefault("AscDesc", "")
		sAutoIncrement = Props.GetDefault("AutoIncrement", "")
		sBlobs = Props.GetDefault("Blobs", "")
		sCustomQuery = Props.GetDefault("CustomQuery", "")
		sDatabaseName = Props.GetDefault("DatabaseName", "")
		sDatabaseType = Props.GetDefault("DatabaseType", "mysql")
		sDoubles = Props.GetDefault("Doubles", "")
		bDynamic = Props.GetDefault("Dynamic", False)
		sFields = Props.GetDefault("Fields", "")
		sHostName = Props.GetDefault("HostName", "")
		sIntegers = Props.GetDefault("Integers", "")
		sOperators = Props.GetDefault("Operators", "")
		sOrderBy = Props.GetDefault("OrderBy", "")
		sPassword = Props.GetDefault("Password", "")
		sPrimaryKey = Props.GetDefault("PrimaryKey", "")
		sRecordSource = Props.GetDefault("RecordSource", "")
		sSelectFields = Props.GetDefault("SelectFields", "")
		sTableName = Props.GetDefault("TableName", "")
		bUseJetty = Props.GetDefault("UseJetty", False)
		sUserName = Props.GetDefault("UserName", "")
		sWhereFields = Props.GetDefault("WhereFields", "")
		sDefaults = Props.GetDefault("Defaults", "")
		sSingular = Props.GetDefault("Singular", "")
		sPlural = Props.GetDefault("Plural", "")
		sDisplayField = Props.GetDefault("DisplayField", "")
		bShowLog = Props.GetDefault("ShowLog", False)
	End If
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
	dsKey = $"${sTableName}.${sPrimaryKey}"$
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
End Sub

'bind to this DS to this component
Sub BindState(VC As VueComponent)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.BindState"$)
	End If
	ParentComponent = VC
End Sub

'set the defaults for the form as specified in AD
Sub DEFAULTS
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DEFAULTS"$)
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
	'determinate the mode
	Select Case Mode
	Case "C"
		'create a record
		CREATE
	Case "U"
		'update a record		
		UPDATE
	End Select
End Sub

'set a Create mode
Sub CREATE_MODE
	Mode = "C"
End Sub

'set an update mode
Sub UPDATE_MODE
	Mode = "U"
End Sub

'set a read mode
Sub READ_MODE
	Mode = "R"
End Sub

'set a delete mode
Sub DELETE_MODE
	Mode = "D"
End Sub

'clear the record source linked to a form
Sub RESET
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.RESET"$)
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
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.FORM"$)
	End If
	Record = ParentComponent.GetData(sRecordSource)
	Return Record
End Sub

'read a record using outside record map
Sub READ1(rec As Map)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.READ1"$)
	End If
	'the record will be in update mode after being read
	UPDATE_MODE
	SetRecord(rec)	
	Execute(ACTION_READ)
End Sub

'create a new record from an outside map
Sub CREATE1(rec As Map)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE1"$)
	End If
	SetRecord(rec)
	Execute(ACTION_CREATE)
End Sub

'create a new record from existing recordsource, use setRecord first
Sub CREATE
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE"$)
	End If
	Execute(ACTION_CREATE)
End Sub

'delete the record internally, use setRecord first
Sub DELETE
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE"$)
	End If
	DELETE_MODE
	Execute(ACTION_DELETE)
End Sub

'delete a record from outside map
Sub DELETE1(rec As Map)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE1"$)
	End If
	DELETE_MODE
	SetRecord(rec)
	Execute(ACTION_DELETE)
End Sub

'update existing record from an outside map
Sub UPDATE1(rec As Map)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE1"$)
	End If
	SetRecord(rec)
	Execute(ACTION_UPDATE)
End Sub

'update existing record from existing recordsource, use setRecord first
Sub UPDATE
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE"$)
	End If
	Execute(ACTION_UPDATE)
End Sub

'count total number of records
Sub COUNT
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.COUNT"$)
	End If
	Execute(ACTION_COUNT)
End Sub

'select all based on fields and order by
Sub SELECTALL
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTALL"$)
	End If
	Execute(ACTION_SELECTALL)
End Sub

'execute a given transaction
private Sub Execute(nAction As String)
	OK = False
	Result.Initialize 
	affectedRows = -1
	Error = ""
	sAction = nAction
	'
	Select Case sDatabaseType
	Case "banano"
	Case "firebase"
	Case "firestore"
	Case "mssql"
	Case "mysql"
		Dim bpRun As BANanoPromise
		bpRun.CallSub(Me, "MySQLExecute", Null)
		BANano.Await(bpRun)
		BANano.CallSub(mCallBack, $"${mName}_done"$, Array(Tag, OK, Response, Error, affectedRows, Result))
	Case "sqlite"
	End Select
End Sub

'clear where clause
Sub ClearWhere As BananoDataSource
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.ClearWhere"$)
	End If
	cw.Initialize 
	ops.Initialize 
	Return Me
End Sub

'add a where clause for your select where
Sub AddWhere(fld As String, operator As String, value As Object) As BananoDataSource
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.AddWhere"$)
	End If
	cw.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub

private Sub MySQLExecute As Boolean    'ignore
	Dim MySQL As BANanoMySQLE
	MySQL.Initialize(sDatabaseName, sTableName, sPrimaryKey, sAutoIncrement) 
	If bDynamic Then
		MySQL.SetConnection(sHostName, sUserName, sPassword)
	End If
	'clear the schema
	MySQL.SchemaClear
	'add the schema to the dbclass
	MySQL.SchemaAddBlob(Blobs)
	MySQL.SchemaAddDouble(Doubles)
	MySQL.SchemaAddInt(Integers)
	MySQL.SchemaAddText(Strings)
	Dim bRead As Boolean = False
	Dim bSelect As Boolean = False
	Dim bCount As Boolean = False
	Tag = sAction
	Select Case sAction
	Case "CreateTable"
		MySQL.SchemaCreateTable
	Case "Create"
		'remove auto-increment
		Record = ParentComponent.GetData(sRecordSource)
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		'insert a record
		MySQL.Insert1(Record)
	Case "Read"
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
		'execute the read
		MySQL.Read(pkValue)
	Case "Update"
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
		MySQL.Update1(Record, pkValue)
	Case "Delete"
		'get the key for the record
		Dim pkValue As String = ParentComponent.GetData(dsKey)
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		MySQL.Delete(pkValue)
	Case "SelectAll"
		bSelect = True
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case "SelectWhere"
		bSelect = True
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case "Count"
		bCount = True
		bSelect = True
		MySQL.GetCount
	Case "GetMax"
		bSelect = True
	Case "GetMin"
		bSelect = True
	Case "SumOf"
		bSelect = True
	End Select
	'we are using mysqlphp.config
	If bDynamic = False Then 
		MySQL.JSON = BANano.CallInlinePHPWait(MySQL.MethodName, MySQL.Build) 
	Else
		'we are using dynamic
		MySQL.JSON = BANano.CallInlinePHPWait(MySQL.MethodNameDynamic, MySQL.BuildDynamic(Not(bUseJetty)))
	End If	
	'get the result
	MySQL.FromJSON 
	Response = MySQL.response
	Error = MySQL.error
	affectedRows = MySQL.affectedRows
	Result = MySQL.result
	OK = MySQL.OK
	'we are counting records
	If bCount Then
		If Result.Size >= 0 Then
			Record = Result.Get(0)
			Dim srecord As String = Record.GetDefault("records", 0)
			affectedRows = BANano.parseInt(srecord)
		Else
			affectedRows = 0
		End If
	Else
		If bRead Then
			'record is found
			If Result.Size >= 0 Then
				Record = Result.Get(0)
				CorrectDataTypes(Record)
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
		Else
			If bSelect Then
				'save the result to the data source
				ParentComponent.SetData(sRecordSource, Result)
			End If
		End If
	End If
	BANano.ReturnThen(True)
End Sub

'key for deletes and reads
Sub SetKey(keyValue As String)
	ParentComponent.SetData(dsKey, keyValue)
End Sub

'set the record tp update
Sub SetRecord(rec As Map)
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

private Sub BANanoExecute
	Select Case sAction
	Case "CreateTable"
	Case "Create"
	Case "Read"
	Case "Update"
	Case "Delete"
	Case "SelectAll"
	Case "SelectWhere"
	Case "Count"
	Case "GetMax"
	Case "GetMin"
	Case "SumOf"
	End Select
End Sub
