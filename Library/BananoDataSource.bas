﻿B4J=true
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
#DesignerProperty: Key: RecordSource, DisplayName: RecordSource, FieldType: String, DefaultValue: , Description: RecordSource
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
#DesignerProperty: Key: SelectFields, DisplayName: SelectFields (;) , FieldType: String, DefaultValue: , Description: SelectFields
#DesignerProperty: Key: WhereFields, DisplayName: WhereFields, FieldType: String, DefaultValue: , Description: WhereFields
#DesignerProperty: Key: Operators, DisplayName: Operators (;) , FieldType: String, DefaultValue: , Description: Operators
#DesignerProperty: Key: AndOr, DisplayName: AndOr (;), FieldType: String, DefaultValue: , Description: AndOr
#DesignerProperty: Key: AscDesc, DisplayName: AscDesc (;), FieldType: String, DefaultValue: , Description: AscDesc
#DesignerProperty: Key: OrderBy, DisplayName: OrderBy (;), FieldType: String, DefaultValue: , Description: OrderBy
#DesignerProperty: Key: CustomQuery, DisplayName: CustomQuery, FieldType: String, DefaultValue: , Description: CustomQuery


Sub Class_Globals 
	Public Relationships As List
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
	Public const ACTION_REPORT As String = "Report"
	Public const ACTION_PDF As String = "Pdf"
	Public const ACTION_EXCEL As String = "Excel"
	Public const ACTION_SELECTFORCOMBO As String = "SelectForCombo"
	Public const ACTION_CHART As String = "Chart"
	'
	Public const MODE_CREATE As String = "C"
	Public const MODE_UPDATE As String = "U"
	Public const MODE_READ As String = "R"
	Public const MODE_DELETE As String = "D"
	
	Private cw As Map = CreateMap()
	Private ops As List
	Public Mode As String 
	Private bShowLog As Boolean
	'
	Type BDSRelationship(name As String, DisplayFormat As String, SourceTable As String, SourceKey As String, ForeignTable As String, ForeignKey As String, ForeignFields As String)
	Private IsBound As Boolean
End Sub

'initialize the BANanoDS
Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	mName = Name.tolowercase 
	mEventName = EventName.ToLowerCase 
	mCallBack = CallBack	
	Mode = "" 
	IsBound = False
End Sub

Sub BEToRelationships(be As BANanoElement)
	'clear existing relationships
	Relationships.Initialize 
	'loop through each child
	Dim children() As BANanoElement = be.Children("")
	Dim pgTot As Int = children.Length - 1
	Dim pgCnt As Int
	For pgCnt = 0 To pgTot
		'get the banano element
		Dim child As BANanoElement = children(pgCnt)
		'get the data-type
		Dim edt As String = child.GetData("type")
		'validate the element
		If BANano.IsNull(edt) Then edt = ""
		
		If edt <> "bdsrelationship" Then Continue
				
		Dim sDisplayFormat As String = be.GetData("displayformat")
		If BANano.IsNull(sDisplayFormat) Then sDisplayFormat = ""

		Dim sForeignFields As String = be.GetData("foreignfields")
		If BANano.IsNull(sForeignFields) Then sForeignFields = ""

		Dim sForeignKey As String = be.GetData("foreignkey")
		If BANano.IsNull(sForeignKey) Then sForeignKey = ""

		Dim sForeignTable As String = be.GetData("foreigntable")
		If BANano.IsNull(sForeignTable) Then sForeignTable = ""

		Dim sSourceKey As String = be.GetData("sourcekey")
		If BANano.IsNull(sSourceKey) Then sSourceKey = ""

		Dim sSourceTable As String = be.GetData("sourcetable")
		If BANano.IsNull(sSourceTable) Then sSourceTable = ""
		'
		Dim nr As BDSRelationship
		nr.DisplayFormat = sDisplayFormat
		nr.ForeignFields = sForeignFields
		nr.ForeignKey = sForeignKey
		nr.ForeignTable = sForeignTable
		nr.SourceTable = sSourceTable
		nr.SourceKey = sSourceKey
		Relationships.Add(nr)
		'
	Next	
End Sub

'return the primary key field bame
Sub getPrimaryKey As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	Return sPrimaryKey
End Sub

'return the singular name of these records, this is used for deletes
Sub getSingular As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	Return sSingular
End Sub

'return the plural name of these records
Sub getPlural As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	Return sPlural
End Sub

'return the display field, this is used for deleted
Sub getDisplayField As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	Return sDisplayField
End Sub

'return the display value, this is used for deletes
Sub getDisplayValue As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
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
	'build and get the element
	'we need to find each relationships put inside it 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="bds" id="${mName}"></div>"$).Get("#" & mName) 
	End If
	'
	BEToRelationships(mElement)
	If bShowLog And Relationships.Size > 0 Then
		Log("Relationships...")
		Log(Relationships)
	End If
	
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.AddStyle("display", "none")
	
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
	IsBound = False
End Sub

'bind to this DS to this component
Sub BindState(VC As VueComponent)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.BindState"$)
	End If
	ParentComponent = VC
	'initialize a blank record
	Dim nr As Map = CreateMap()
	ParentComponent.SetData(sRecordSource, nr)
	IsBound = True
End Sub

'set the defaults for the form as specified in AD
Sub DEFAULTS
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
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
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
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
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.FORM"$)
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
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.READ1"$)
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
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE1"$)
	End If
	CREATE_MODE
	SetRecord(rec)
	Tag = ACTION_CREATE
	Execute(ACTION_CREATE)
End Sub

'create a new record from existing recordsource, use setRecord first
Sub CREATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE"$)
	End If
	CREATE_MODE
	Tag = ACTION_CREATE
	Execute(ACTION_CREATE)
End Sub

'delete the record internally, use setRecord first
Sub DELETE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE"$)
	End If
	DELETE_MODE
	Tag = ACTION_DELETE
	Execute(ACTION_DELETE)
End Sub

'delete a record from outside map
Sub DELETE1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE1"$)
	End If
	DELETE_MODE
	SetRecord(rec)
	Tag = ACTION_DELETE
	Execute(ACTION_DELETE)
End Sub

'update existing record from an outside map
Sub UPDATE1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE1"$)
	End If
	UPDATE_MODE
	SetRecord(rec)
	Tag = ACTION_UPDATE
	Execute(ACTION_UPDATE)
End Sub

'update existing record from existing recordsource, use setRecord first
Sub UPDATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE"$)
	End If
	UPDATE_MODE
	Tag = ACTION_UPDATE
	Execute(ACTION_UPDATE)
End Sub

'run your own query
Sub CUSTOM(ActionName As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE"$)
	End If
	Tag = ActionName
	Execute(ACTION_CUSTOM)
End Sub

'count total number of records
Sub COUNT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.COUNT"$)
	End If
	Tag = ACTION_COUNT
	Execute(ACTION_COUNT)
End Sub

'select all based on fields and order by
Sub SELECTFORCOMBO
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTFORCOMBO"$)
	End If
	Tag = ACTION_SELECTFORCOMBO
	Execute(ACTION_SELECTFORCOMBO)
End Sub

'select all based on fields and order by
Sub SELECTALL
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTALL"$)
	End If
	Tag = ACTION_SELECTALL
	Execute(ACTION_SELECTALL)
End Sub

'select all based on fields and order by
Sub SELECTWHERE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERE"$)
	End If
	Tag = ACTION_SELECTWHERE
	Execute(ACTION_SELECTWHERE)
End Sub

'select all based on fields and order by for PDF
Sub PDF
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.PDF"$)
	End If
	Tag = ACTION_PDF
	Execute(ACTION_PDF)
End Sub

'select all based on fields and order by for Chart
Sub CHART
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.Chart"$)
	End If
	Tag = ACTION_CHART
	Execute(ACTION_CHART)
End Sub

'select all based on fields and order by for Excel
Sub EXCEL
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.EXCEL"$)
	End If
	Tag = ACTION_EXCEL
	Execute(ACTION_EXCEL)
End Sub

'select all based on fields and order by for Excel
Sub REPORT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.REPORT"$)
	End If
	Tag = ACTION_REPORT
	Execute(ACTION_REPORT)
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
		
		
	Case "sqlite"
	End Select
End Sub

'clear where clause
Sub ClearWhere As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.ClearWhere"$)
	End If
	cw.Initialize 
	ops.Initialize 
	Return Me
End Sub

'add a where clause for your select where
Sub AddWhere(fld As String, operator As String, value As Object) As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
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
	Case ACTION_CREATE_TABLE
		MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		Record = ParentComponent.GetData(sRecordSource)
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${Record}"$)
		'insert a record
		MySQL.Insert1(Record)
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
		MySQL.Read(pkValue)
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
		MySQL.Update1(Record, pkValue)
	Case ACTION_DELETE
		'get the key for the record
		Dim pkValue As String = ParentComponent.GetData(dsKey)
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		Log($"Delete: ${pkValue}"$)
		MySQL.Delete(pkValue)
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_SELECTFORCOMBO, ACTION_CHART
		bSelect = True
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case ACTION_SELECTWHERE
		bSelect = True
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case ACTION_COUNT
		bCount = True
		bSelect = True
		MySQL.GetCount
	Case ACTION_GETMAX
		bSelect = True
	Case ACTION_GETMIN
		bSelect = True
	Case ACTION_CUSTOM
		bSelect = True
		MySQL.Execute(sCustomQuery)
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
		End If
	End If
	BANano.ReturnThen(True)
End Sub

'key for deletes and reads
Sub SetKey(keyValue As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SetKey.${keyValue}"$)
	End If
	ParentComponent.SetData(dsKey, keyValue)
End Sub

'set the record tp update
Sub SetRecord(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName} has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SetRecord.${BANano.ToJson(rec)}"$)
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
