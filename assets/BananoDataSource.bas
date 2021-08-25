B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Connect (Success As Boolean, Response As String, Error As String)
#Event: ShowDataBases (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)

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
#Event: Exists (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: TableNames (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: DescribeTable (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)
#Event: Undo (Success As Boolean, Response As String, Error As String, affectedRows As Int, Result As List)

#DesignerProperty: Key: ShowLog, DisplayName: ShowLog, FieldType: Boolean, DefaultValue: False, Description: Show Logs
#DesignerProperty: Key: DatabaseType, DisplayName: DatabaseType*, FieldType: String, DefaultValue: mysql, Description: Database Type, List: mysql|jrdc|sqlite|indexeddb
#DesignerProperty: Key: HostName, DisplayName: HostName*, FieldType: String, DefaultValue: localhost, Description: Host Name
#DesignerProperty: Key: DatabaseName, DisplayName: DatabaseName*, FieldType: String, DefaultValue: , Description: Database Name
#DesignerProperty: Key: UserName, DisplayName: UserName, FieldType: String, DefaultValue: root, Description: User Name
#DesignerProperty: Key: Password, DisplayName: Password, FieldType: String, DefaultValue: , Description: Password
#DesignerProperty: Key: Dynamic, DisplayName: Dynamic, FieldType: Boolean, DefaultValue: False, Description: Dynamic (Do not use config file)
#DesignerProperty: Key: TableName, DisplayName: TableName*, FieldType: String, DefaultValue: , Description: Table Name
#DesignerProperty: Key: RecordSource, DisplayName: RecordSource*, FieldType: String, DefaultValue: , Description: Record Source
#DesignerProperty: Key: PrimaryKey, DisplayName: PrimaryKey*, FieldType: String, DefaultValue: , Description: Primary Key
#DesignerProperty: Key: AutoIncrement, DisplayName: AutoIncrement, FieldType: String, DefaultValue: , Description: Auto Increment
#DesignerProperty: Key: Singular, DisplayName: Singular*, FieldType: String, DefaultValue: , Description: Singular
#DesignerProperty: Key: Plural, DisplayName: Plural*, FieldType: String, DefaultValue: , Description: Plural
#DesignerProperty: Key: DisplayField, DisplayName: DisplayField*, FieldType: String, DefaultValue: , Description: Display Field for deletes
#DesignerProperty: Key: JRDCInsert, DisplayName: JRDC Insert Command, FieldType: String, DefaultValue: , Description: JRDC Insert Command
#DesignerProperty: Key: JRDCUpdate, DisplayName: JRDC Update Command, FieldType: String, DefaultValue: , Description: JRDC Update Command
#DesignerProperty: Key: JRDCDelete, DisplayName: JRDC Delete Command, FieldType: String, DefaultValue: , Description: JRDC Delete Command
#DesignerProperty: Key: JRDCSelect, DisplayName: JRDC Select Command, FieldType: String, DefaultValue: , Description: JRDC Select Command
#DesignerProperty: Key: JRDCSelectWhere, DisplayName: JRDC Select Where Command, FieldType: String, DefaultValue: , Description: JRDC Select Where Command
#DesignerProperty: Key: JRDCSelectWhereCustom, DisplayName: JRDC Select Where Custom Command, FieldType: String, DefaultValue: , Description: JRDC Select Where Custom Command
#DesignerProperty: Key: JRDCExists, DisplayName: JRDC Exists Command, FieldType: String, DefaultValue: , Description: JRDC Exists Command
#DesignerProperty: Key: JRDCRead, DisplayName: JRDC Read Command, FieldType: String, DefaultValue: , Description: JRDC Read Command

#DesignerProperty: Key: Fields, DisplayName: Fields (;)*, FieldType: String, DefaultValue: , Description: Fields from table
#DesignerProperty: Key: Defaults , DisplayName: Defaults JSON;, FieldType: String, DefaultValue: , Description: Default values
#DesignerProperty: Key: Integers, DisplayName: Integers (;), FieldType: String, DefaultValue: , Description: Integer Types
#DesignerProperty: Key: Doubles, DisplayName: Doubles (;), FieldType: String, DefaultValue: , Description: Double Types
#DesignerProperty: Key: Blobs, DisplayName: Blobs (;), FieldType: String, DefaultValue: , Description: Blob Types
#DesignerProperty: Key: SelectFields, DisplayName: SelectFields (;)* , FieldType: String, DefaultValue: , Description: Fields to select from table
'#DesignerProperty: Key: WhereFields, DisplayName: WhereFields, FieldType: String, DefaultValue: , Description: WhereFields
'#DesignerProperty: Key: Operators, DisplayName: Operators (;) , FieldType: String, DefaultValue: , Description: Operators
'#DesignerProperty: Key: AndOr, DisplayName: AndOr (;), FieldType: String, DefaultValue: , Description: AndOr
'#DesignerProperty: Key: AscDesc, DisplayName: AscDesc (;), FieldType: String, DefaultValue: , Description: AscDesc
#DesignerProperty: Key: OrderBy, DisplayName: OrderBy (;)*, FieldType: String, DefaultValue: , Description: Fields to Order By
'#DesignerProperty: Key: CustomQuery, DisplayName: CustomQuery, FieldType: String, DefaultValue: , Description: CustomQuery


Sub Class_Globals 
	Private sJRDCRead As String
	Private sJRDCInsert As String
	Private sJRDCUpdate As String
	Private sJRDCDelete As String
	Private sJRDCSelect As String
	Public Relationships As List
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sAction As String
	Private sAutoIncrement As String
	Private sBlobs As String
	Private sCustomQuery As String
	Private sDatabaseName As String
	Private sDatabaseType As String
	Private sDoubles As String
	Private bDynamic As Boolean
	Private sFields As String
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
	Private sOrderBy As String
	Private sPassword As String
	Private sPrimaryKey As String
	Private sRecordSource As String
	Private sSelectFields As String
	Private sTableName As String
	Private sUserName As String
	Private sDefaults As String
	
	Private schemaIntegers As List
	Private schemaStrings As List   'ignore
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
	Private AppComponent As VuetifyApp
	Private schemaOrderBy As List
	Private schemaSelectFields As List
	Private dsKey As String
	Private Tag As String
	Private sSingular As String
	Private sPlural As String
	Private sDisplayField As String
	Private sPrimaryKeyValue As String   'ignore
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
	Public const ACTION_EXISTS As String = "Exists"
	Public const ACTION_TABLENAMES As String = "TableNames"
	Public const ACTION_DESCRIBETABLE As String = "DescribeTable"
	Public const ACTION_UNDO As String = "Undo"
	Public const ACTION_CONNECT As String = "Connect"
	Public const ACTION_SHOWDATABASES As String = "ShowDataBases"
	'
	Public const MODE_CREATE As String = "C"
	Public const MODE_UPDATE As String = "U"
	Public const MODE_READ As String = "R"
	Public const MODE_DELETE As String = "D"
	'
	Private sJRDCSelectWhere As String
	Private sJRDCExists As String
	Private sJRDCSelectWhereCustom As String
		
	Private cw As Map = CreateMap()
	Private ops As List
	Public Mode As String 
	Private bShowLog As Boolean
	'
	Type BDSRelationship(name As String, DisplayFormat As String, SourceTable As String, SourceKey As String, ForeignTable As String, ForeignKey As String, ForeignFields As String)
	Private IsBound As Boolean
	Private sjrdcCommand As String
	Private mPayload As Map
	Type TableDescription(tableName As String, PrimaryKey As String, AutoIncrement As String, Fields As List, _
	Strings As List, Booleans As List, Doubles As List, Blobs As List, Integers As List, TinyInts As List, Sorts As List, FieldNames As List)
	Public TD As TableDescription
	Public UsesApp As Boolean
	Public const RESULT_SUCCESS As String = "Success"
	Public const RESULT_ERROR As String = "Error"
End Sub

'initialize the BANanoDS
Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	mName = Name.tolowercase 
	mEventName = EventName.ToLowerCase 
	mCallBack = CallBack	
	Mode = "" 
	IsBound = False
	mPayload.Initialize 
	UsesApp = False
End Sub

'set the jrdc command
Sub setJRDCCommand(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.JRDCCommand has not been bound to the component!"$)
	End If
	sjrdcCommand = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.JRDCCommand - '${p}'"$)
	End If
End Sub

'get the jrdc command
Sub getJRDCCommand As String
	Return sjrdcCommand
End Sub

'convert a banano element to a relationship
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



'set the user name
Sub setUserName(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.UserName has not been bound to the component!"$)
	End If
	sUserName = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.UserName - '${p}'"$)
	End If
End Sub

'get the user name
Sub getUserName As String
	Return sUserName
End Sub

'set connection to be dynamic
Sub setDynamic(b As Boolean)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Dynamic has not been bound to the component!"$)
	End If
	b = BANanoShared.parsebool(b)
	bDynamic = b
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.Dynamic - '${b}'"$)
	End If
End Sub

'set the primary key
Sub setPrimaryKey(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.PrimaryKey has not been bound to the component!"$)
	End If
	sPrimaryKey = p
	dsKey = $"${sRecordSource}.${sPrimaryKey}"$
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.PrimaryKey - '${p}'"$)
	End If
End Sub

'set sAutoIncrement
Sub setAutoIncrement(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.AutoIncrement has not been bound to the component!"$)
	End If
	sAutoIncrement = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.AutoIncremenent - '${p}'"$)
	End If
End Sub

'return the primary key field bame
Sub getPrimaryKey As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.PrimaryKey has not been bound to the component!"$)
	End If
	Return sPrimaryKey
End Sub

'set singular
Sub setSingular(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Singular has not been bound to the component!"$)
	End If
	sSingular = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.Singular - '${p}'"$)
	End If
End Sub

'return the singular name of these records, this is used for deletes
Sub getSingular As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Singular has not been bound to the component!"$)
	End If
	Return sSingular
End Sub

'set plural
Sub setPlural(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Plural has not been bound to the component!"$)
	End If
	sPlural = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.Plural - '${p}'"$)
	End If
End Sub

'return the plural name of these records
Sub getPlural As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Plural has not been bound to the component!"$)
	End If
	Return sPlural
End Sub

'return the display field, this is used for deleted
Sub getDisplayField As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DisplayField has not been bound to the component!"$)
	End If
	Return sDisplayField
	
End Sub

'set display field
Sub setDisplayField(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DisplayField has not been bound to the component!"$)
	End If
	sDisplayField = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.DisplayField - '${p}'"$)
	End If
End Sub

'return the display value, this is used for deletes
Sub getDisplayValue As String
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DisplayValue has not been bound to the component!"$)
	End If
	'get the record
	If UsesApp = False Then
		Record = ParentComponent.GetData(sRecordSource)
	Else
		Record = AppComponent.GetData(sRecordSource)
	End If	
	'get the display field
	Dim sDisplayValue As String = Record.GetDefault(sDisplayField, "")
	sPrimaryKeyValue = Record.GetDefault(sPrimaryKey, "")
	Return sDisplayValue
End Sub

'set CustomQuery
Sub setCustomQuery(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CustomQuery has not been bound to the component!"$)
	End If
	sCustomQuery = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.CustomQuery - '${p}'"$)
	End If
End Sub

'set password
Sub setPassword(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.Password has not been bound to the component!"$)
	End If
	sPassword = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.Password - '${p}'"$)
	End If
End Sub

'set hostname
Sub setHostName(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.HostName has not been bound to the component!"$)
	End If
	sHostName = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.HostName - '${p}'"$)
	End If
End Sub

'get the host name
Sub getHostName As String
	Return sHostName
End Sub

'set database name
Sub setDatabaseName(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DatabaseName has not been bound to the component!"$)
	End If
	sDatabaseName = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.DataBase - '${p}'"$)
	End If
End Sub

'get the database name
Sub getDatabaseName As String
	Return sDatabaseName
End Sub

'set table name
Sub setTableName(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.TableName has not been bound to the component!"$)
	End If
	sTableName = p
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.TableName - '${p}'"$)
	End If
End Sub

'get the table name
Sub getTableName As String
	Return sTableName
End Sub

'set record source
Sub setRecordSource(p As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.RecordSource has not been bound to the component!"$)
	End If
	sRecordSource = p
	dsKey = $"${sRecordSource}.${sPrimaryKey}"$
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.RecordSource - '${p}'"$)
	End If
End Sub

'get the record source
Sub getRecordSource As String
	Return sRecordSource
End Sub

'set DatabaseType
Sub setDatabaseType(dt As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DatabaseType has not been bound to the component!"$)
	End If
	sDatabaseType = dt
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.DatabaseType - '${dt}'"$)
	End If
End Sub

'create the view
Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		sAutoIncrement = Props.GetDefault("AutoIncrement", "")
		sAutoIncrement = sAutoIncrement.tolowercase
		sBlobs = Props.GetDefault("Blobs", "")
		sCustomQuery = Props.GetDefault("CustomQuery", "")
		sDatabaseName = Props.GetDefault("DatabaseName", "")
		sDatabaseType = Props.GetDefault("DatabaseType", "mysql")
		sDoubles = Props.GetDefault("Doubles", "")
		bDynamic = Props.GetDefault("Dynamic", False)
		bDynamic = BANanoShared.parseBool(bDynamic)
		sFields = Props.GetDefault("Fields", "")
		sHostName = Props.GetDefault("HostName", "")
		sIntegers = Props.GetDefault("Integers", "")
		sOrderBy = Props.GetDefault("OrderBy", "")
		sPassword = Props.GetDefault("Password", "")
		sPrimaryKey = Props.GetDefault("PrimaryKey", "")
		sPrimaryKey = sPrimaryKey.tolowercase
		sRecordSource = Props.GetDefault("RecordSource", "")
		sSelectFields = Props.GetDefault("SelectFields", "")
		sTableName = Props.GetDefault("TableName", "")
		sUserName = Props.GetDefault("UserName", "")
		sDefaults = Props.GetDefault("Defaults", "")
		sSingular = Props.GetDefault("Singular", "")
		sPlural = Props.GetDefault("Plural", "")
		sDisplayField = Props.GetDefault("DisplayField", "")
		sDisplayField = sDisplayField.tolowercase
		bShowLog = Props.GetDefault("ShowLog", False)
		bShowLog = BANanoShared.parseBool(bShowLog)
		'
		sJRDCInsert = Props.GetDefault("JRDCInsert", "")
		sJRDCInsert = BANanoShared.parseNull(sJRDCInsert)
		'
		sJRDCUpdate = Props.getdefault("JRDCUpdate", "")
		sJRDCUpdate = BANanoShared.parseNull(sJRDCUpdate)
		'
		sJRDCDelete = Props.getdefault("JRDCDelete", "")
		sJRDCDelete = BANanoShared.parseNull(sJRDCDelete)
		'
		sJRDCSelect = Props.getdefault("JRDCSelect", "")
		sJRDCSelect = BANanoShared.parseNull(sJRDCSelect)
		'
		sJRDCRead = Props.GetDefault("JRDCRead", "")
		sJRDCRead = BANanoShared.parseNull(sJRDCRead)
		'
		sJRDCSelectWhere = Props.GetDefault("JRDCSelectWhere", "")
		sJRDCSelectWhere = BANanoShared.parseNull(sJRDCSelectWhere)
		'
		sJRDCExists = Props.GetDefault("JRDCExists", "")
		sJRDCExists = BANanoShared.parsenull(sJRDCExists)
		'
		sJRDCSelectWhereCustom = Props.GetDefault("JRDCSelectWhereCustom", "")
		sJRDCSelectWhereCustom = BANanoShared.parseNull(sJRDCSelectWhereCustom)
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
	'
	SchemaBuild
	
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.AddStyle("display", "none")
	Tag = ""
	IsBound = False
End Sub

'build the schema
Sub SchemaBuild
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaBuild"$)
	End If
	Strings.Initialize 
	Doubles.Initialize 
	Blobs.Initialize 
	Integers.Initialize 
	schemaDefaultsM.Initialize 
	'
	'ensure consistency
	sDefaults = sDefaults.replace("=", ":")
	schemaDefaults = BANano.Split(";", sDefaults)	
	schemaDefaults = BANanoShared.ListTrimItems(schemaDefaults)
	For Each fld As String In schemaDefaults
		Dim k As String = BANanoShared.MvField(fld, 1, ":")
		Dim v As String = BANanoShared.MvField(fld, 2, ":")
		k = k.Trim
		k = k.tolowercase
		v = v.Trim
		If k <> "" Then
			schemaDefaultsM.Put(k, v)
		End If
	Next
	'
	schemaIntegers = BANanoShared.StrParseComma(";", sIntegers)
	schemaIntegers = BANanoShared.ListTrimItems(schemaIntegers)
	'
	schemaDoubles = BANanoShared.StrParseComma(";", sDoubles)
	schemaDoubles = BANanoShared.ListTrimItems(schemaDoubles)
	'
	schemaBlobs = BANanoShared.StrParseComma(";", sBlobs)
	schemaBlobs = BANanoShared.ListTrimItems(schemaBlobs)
	'
	schemaFields = BANanoShared.StrParseComma(";", sFields)
	schemaFields = BANanoShared.ListTrimItems(schemaFields)
	'
	schemaOrderBy = BANanoShared.StrParseComma(";", sOrderBy)
	schemaOrderBy = BANanoShared.ListTrimItems(schemaOrderBy)
	'
	schemaSelectFields = BANanoShared.StrParseComma(";", sSelectFields)
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
End Sub

'reset the datasource to be able to use with another table
Sub SchemaReset As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaReset has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaReset"$)
	End If
	Tag = ""
	Strings.Initialize 
	Doubles.Initialize 
	Blobs.Initialize 
	Integers.Initialize 
	schemaDefaultsM.Initialize
	schemaFields.Initialize 
	schemaOrderBy.Initialize 
	schemaSelectFields.Initialize 
	dsKey = ""
	mPayload.Initialize 
	Return Me
End Sub

'set the default values for fields
Sub AddDefault(fld As String, value As Object) As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.AddDefault has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.AddDefault(${fld},${value})"$)
	End If
	schemaDefaultsM.Put(fld, value)
	Return Me
End Sub

'set schema fields
Sub SchemaSetFields(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetFields has not been bound to the component!"$)
	End If
	schemaFields = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetFields(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set integers
Sub SchemaSetIntegers(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetIntegers has not been bound to the component!"$)
	End If
	Integers = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetIntegers(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set strings
Sub SchemaSetStrings(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetStrings has not been bound to the component!"$)
	End If
	Strings = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetStrings(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set defaults
Sub SchemaSetDefaults(dm As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetStrings has not been bound to the component!"$)
	End If
	schemaDefaultsM.Initialize 
	For Each k As String In dm.Keys
		Dim v As Object = dm.Get(k)
		AddDefault(k, v)
	Next
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetDefaults(${BANano.ToJson(dm)})"$)
	End If
End Sub

'set doubles
Sub SchemaSetDoubles(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetDoubles has not been bound to the component!"$)
	End If
	Doubles = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetDoubles(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set blobs
Sub SchemaSetBlobs(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetBlobs has not been bound to the component!"$)
	End If
	Blobs = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetBlobs(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set order by
Sub SchemaSetOrderBy(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetOrderBy has not been bound to the component!"$)
	End If
	schemaOrderBy = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetOrderBy(${BANano.ToJson(flds)})"$)
	End If
End Sub

'set select fields
Sub SchemaSetSelectFields(flds As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SchemaSetSelectFields has not been bound to the component!"$)
	End If
	schemaSelectFields = flds
	If bShowLog Then
		Log($"BANanoDataSource.${mName}.SchemaSetSelectFields(${BANano.ToJson(flds)})"$)
	End If
End Sub

'bind to this DS to this component
Sub BindState(VC As VueComponent)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.BindState"$)
	End If
	UsesApp = False
	ParentComponent = VC
	'initialize a blank record
	Dim nr As Map = CreateMap()
	ParentComponent.SetData(sRecordSource, nr)
	IsBound = True
End Sub

'bind to this DS to pgIndex
Sub BindStateOnApp(C As VuetifyApp)
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.BindStateOnApp"$)
	End If
	UsesApp = True
	AppComponent = C
	'initialize a blank record
	Dim nr As Map = CreateMap()
	AppComponent.SetData(sRecordSource, nr)
	IsBound = True
End Sub

'set the defaults for the form as specified in AD
Sub DEFAULTS
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DEFAULTS has not been bound to the component!"$)
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
	If UsesApp = False Then
		ParentComponent.SetData(sRecordSource, Record)
	Else
		AppComponent.SetData(sRecordSource, Record)
	End If	
End Sub

'create or update based on the mode
Sub CREATE_OR_UPDATE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CREATE_OR_UPDATE has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE_OR_UPDATE"$)
	End If
	'only use fields on the fields list
	'schemaSelectFields
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

'create or update based on the mode
Sub CREATE_OR_UPDATE_JRDC(VA As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CREATE_OR_UPDATE_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE_OR_UPDATE_JRDC"$)
	End If
	If sJRDCInsert = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE_OR_UPDATE_JRDC.JRDC Insert Command not specified."$)
	End If
	If sJRDCUpdate = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CREATE_OR_UPDATE_JRDC.JRDC Update Command not specified."$)
	End If
	'
	Select Case Mode
	Case MODE_CREATE
		'we will build the insert
		setJRDCCommand(sJRDCInsert)
	Case MODE_UPDATE
		'we will build the update
		setJRDCCommand(sJRDCUpdate)
	End Select
	CREATE_OR_UPDATE
	Dim payload As Map = GetJRDCPayload
	VA.RunMethod("JRDCOnBrowser", payload)
End Sub

'delete command execution on JRDC
Sub DELETE_JRDC(V As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DELETE_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE_JRDC"$)
	End If
	If sJRDCDelete = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.DELETE_JRDC.JRDC Delete Command not specified."$)
	End If
	setJRDCCommand(sJRDCDelete)
	DELETE
	Dim payload As Map = GetJRDCPayload
	V.RunMethod("JRDCOnBrowser", payload)
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
		BANano.Throw($"BANanoDataSource.${mName}.RESET has not been bound to the component!"$)
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
	If UsesApp = False Then
		ParentComponent.SetData(sRecordSource, Record)
	Else
		AppComponent.SetData(sRecordSource, Record)
	End If	
End Sub

'move to the first record
Sub MOVEFIRST(recs As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.MOVEFIRST has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.MOVEFIRST"$)
	End If
	Dim rec As Map = CreateMap()
	If recs.Size >= 1 Then
		rec = recs.Get(0)
	End If
	Record = rec
	If UsesApp = False Then
		ParentComponent.SetData(sRecordSource, rec)
	Else
		AppComponent.SetData(sRecordSource, rec)
	End If
End Sub

'get the form contents
Sub FORM As Map
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.FORM has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.FORM"$)
	End If
	If UsesApp = False Then
		Record = ParentComponent.GetData(sRecordSource)
	Else
		Record = AppComponent.GetData(sRecordSource)
	End If	
	Return Record
End Sub

'read a record from an existing one
Sub READ
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}READ has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.READ"$)
	End If
	Record = ParentComponent.GetData(sRecordSource)
	READ1(Record)	
End Sub

'read command from JRDC
Sub READ_JRDC(V As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.READ_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.READ_JRDC"$)
	End If
	If sJRDCRead = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.READ_JRDC.JRDC Read Command not specified."$)
	End If
	UPDATE_MODE
	setJRDCCommand(sJRDCRead)
	READ
	Dim payload As Map = GetJRDCPayload
	V.RunMethod("JRDCOnBrowser", payload)
End Sub


'read a record using outside record map
Sub READ1(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}READ1 has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.CREATE1 has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.CREATE has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.DELETE has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.DELETE1 has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.UPDATE1 has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.UPDATE has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UPDATE"$)
	End If
	UPDATE_MODE
	Tag = ACTION_UPDATE
	Execute(ACTION_UPDATE)
End Sub

'update existing record from existing recordsource, use setRecord first
Sub UNDO
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.UNDO has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.UNDO"$)
	End If
	UPDATE_MODE
	Tag = ACTION_UNDO
	Execute(ACTION_UNDO)
End Sub

'connect to the database

'ACTION_CONNECT
'update existing record from existing recordsource, use setRecord first
Sub CONNECT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CONNECT has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.CONNECT"$)
	End If
	Tag = ACTION_CONNECT
	Execute(ACTION_CONNECT)
End Sub

'update existing record from existing recordsource, use setRecord first
Sub SHOWDATABASES
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SHOWDATABASES has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.SHOWDATABASES"$)
	End If
	Tag = ACTION_SHOWDATABASES
	Execute(ACTION_SHOWDATABASES)
End Sub

'run your own query
Sub CUSTOM(ActionName As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CUSTOM has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CUSTOM"$)
	End If
	Tag = ActionName
	Execute(ACTION_CUSTOM)
End Sub

'get the table names
Sub TABLE_NAMES
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.TABLE_NAMES has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.TABLE_NAMES"$)
	End If
	Tag = ACTION_TABLENAMES
	Execute(ACTION_TABLENAMES)
End Sub

'describe the table
Sub DESCRIBE_TABLE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.DESCRIBE_TABLE has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.TABLE_NAMES"$)
	End If
	Tag = ACTION_DESCRIBETABLE
	Execute(ACTION_DESCRIBETABLE)
End Sub

'count total number of records
Sub COUNT
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.COUNT has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.SELECTFORCOMBO has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTFORCOMBO"$)
	End If
	Tag = ACTION_SELECTFORCOMBO
	Execute(ACTION_SELECTFORCOMBO)
End Sub

'select all based on fields and order by
Sub SELECTFORCOMBOCUSTOM(MyAction As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTFORCOMBOCUSTOM has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTFORCOMBOCUSTOM"$)
	End If
	Tag = MyAction
	Execute(ACTION_SELECTFORCOMBO)
End Sub

'select all based on fields and order by
Sub SELECTALL
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTALL has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTALL"$)
	End If
	Tag = ACTION_SELECTALL
	Execute(ACTION_SELECTALL)
End Sub

'create or update based on the mode
Sub SELECTALL_JRDC(VA As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTALL_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTALL_JRDC"$)
	End If
	If sJRDCSelect = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTALL_JRDC.JRDC Select Command not specified."$)
	End If
	'we will build the select
	setJRDCCommand(sJRDCSelect)
	SELECTALL
	Dim payload As Map = GetJRDCPayload
	VA.RunMethod("JRDCOnBrowser", payload)
End Sub

'run your own query command
Sub CUSTOM_JRDC(VA As VuetifyApp, command As String, args As List)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.CUSTOM_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.CUSTOM_JRDC"$)
	End If
	'we will build the select
	setJRDCCommand(command)
	mPayload.Initialize 
	Dim largs As List
	largs = BANano.IIf(args.Size=0, Null, args)
	mPayload.Put("command", command)
	mPayload.Put("query", command)
	mPayload.Put("args", largs)
	mPayload.Put("types", Null)
	mPayload.Put("jrdccommand", command)
	VA.RunMethod("JRDCOnBrowser", mPayload)
End Sub

'select all based on fields and order by
Sub SELECTWHERE
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTWHERE has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERE"$)
	End If
	Tag = ACTION_SELECTWHERE
	Execute(ACTION_SELECTWHERE)
End Sub

'select where jrdc
Sub SELECTWHERE_JRDC(V As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTWHERE_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERE_JRDC"$)
	End If
	If sJRDCSelectWhere = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERE_JRDC.JRDC Select Where Command not specified."$)
	End If
	setJRDCCommand(sJRDCSelectWhere)
	SELECTWHERE
	Dim payload As Map = GetJRDCPayload
	V.RunMethod("JRDCOnBrowser", payload)
End Sub


'select all based on fields and order by
Sub SELECTWHERECUSTOM(MyAction As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTWHERECUSTOM has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERECUSTOM"$)
	End If
	Tag = MyAction
	Execute(ACTION_SELECTWHERE)
End Sub

'select custom jrdc
Sub SELECTWHERECUSTOM_JRDC(V As VuetifyApp, MyAction As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SELECTWHERECUSTOM_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERECUSTOM_JRDC"$)
	End If
	If sJRDCSelectWhereCustom = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERECUSTOM_JRDC.JRDC Select Where Custom Command not specified."$)
	End If
	setJRDCCommand(sJRDCSelectWhereCustom)
	SELECTWHERECUSTOM(MyAction)
	Dim payload As Map = GetJRDCPayload
	V.RunMethod("JRDCOnBrowser", payload)
End Sub

'select all based on fields and order by
Sub EXISTS
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.EXISTS has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SELECTWHERE"$)
	End If
	Tag = ACTION_EXISTS
	Execute(ACTION_EXISTS)
End Sub

'exists jrdc
Sub EXISTS_JRDC(V As VuetifyApp)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.EXISTS_JRDC has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.EXISTS_JRDC"$)
	End If
	If sJRDCExists = "" Then
		BANano.Throw($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.EXISTS_JRDC.JRDC Exists Command not specified."$)
	End If
	setJRDCCommand(sJRDCExists)
	EXISTS
	Dim payload As Map = GetJRDCPayload
	V.RunMethod("JRDCOnBrowser", payload)
End Sub



'select all based on fields and order by for PDF
Sub PDF
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.PDF has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.CHART has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.EXCEL has not been bound to the component!"$)
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
		BANano.Throw($"BANanoDataSource.${mName}.REPORT has not been bound to the component!"$)
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
	affectedRows = 0
	Error = ""
	sAction = nAction
	'
	Select Case sDatabaseType
	Case "indexeddb"
		Dim bpRun As BANanoPromise
		bpRun.CallSub(Me, "AlaSQLExecute", Null)
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
		Dim bpRun As BANanoPromise
		bpRun.CallSub(Me, "SQLiteExecute", Null)
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
	Case "jrdc"
		JRDCExecute
		'we are using jrdc
	End Select
End Sub

'get the payload
Sub GetJRDCPayload As Map
	Return mPayload
End Sub

'clear where clause
Sub ClearWhere As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.ClearWhere has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.ClearWhere"$)
	End If
	cw.Initialize 
	ops.Initialize 
	Return Me
End Sub

'add a where clause for your select where
Sub AddWhereMap(fw As Map) As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.AddWhere has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.AddWhereMap"$)
	End If
	ClearWhere
	For Each k As String In fw.Keys
		Dim v As Object = fw.Get(k)
		AddWhere(k, "=", v)
	Next
	Return Me
End Sub

'add a where clause for your select where
Sub AddWhere(fld As String, operator As String, value As Object) As BananoDataSource
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.AddWhere has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.AddWhere"$)
	End If
	cw.Put(fld, value)
	ops.Add(operator)
	Return Me
End Sub

'mysql execute
private Sub MySQLExecute As Boolean    'ignore
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.MySQLExecute has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.MySQLExecute"$)
		Log($"Table Name: ${sTableName}"$)
		Log($"Primary Key: ${sPrimaryKey}"$)
		Log($"AutoIncrement: ${sAutoIncrement}"$)
		Log($"RecordSource: ${sRecordSource}"$)
		Log($"Singular: ${sSingular}"$)
		Log($"Plural: ${sPlural}"$)
		Log($"Display Field: ${sDisplayField}"$)
		Log($"Fields: ${BANano.ToJson(schemaFields)}"$)
		Log($"Select Fields: ${BANano.ToJson(schemaSelectFields)}"$)
		Log($"Sort By: ${BANano.ToJson(schemaOrderBy)}"$)
		Log($"Integers: ${BANano.ToJson(Integers)}"$)
		Log($"Doubles: ${BANano.ToJson(Doubles)}"$)
		Log($"Blobs: ${BANano.ToJson(Blobs)}"$)
		Log($"Defaults: ${BANano.ToJson(schemaDefaultsM)}"$)		
	End If
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
	Dim bSelect As Boolean = False  'ignore
	Dim bCount As Boolean = False
	Select Case sAction
	Case ACTION_SHOWDATABASES
		MySQL.GetDatabases
	Case ACTION_CONNECT
		MySQL.Connection
	Case ACTION_CREATE_TABLE
		MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${BANano.ToJson(Record)}"$)
		'insert a record
		MySQL.Insert1(Record)
	Case ACTION_READ
		bRead = True
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		'there is no key, return a blank data-source
		If pkValue = "" Then
			Dim nr As Map = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(nr)
			If UsesApp = False Then
				ParentComponent.SetData(sRecordSource, nr) 
			Else
				AppComponent.SetData(sRecordSource, nr)
			End If	
			BANano.ReturnThen(True)
		End If
		Log($"Read: ${pkValue}"$)
		'execute the read
		MySQL.Read(pkValue)
	Case ACTION_UPDATE, ACTION_UNDO
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		'we need to remove the auto-increment key from the record
		Record.Remove(sPrimaryKey)
		Log($"Update: ${BANano.ToJson(Record)}"$)
		MySQL.Update1(Record, pkValue)
	Case ACTION_DELETE
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		Log($"Delete: ${pkValue}"$)
		MySQL.Delete(pkValue)
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_SELECTFORCOMBO, ACTION_CHART
		bSelect = True
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case ACTION_SELECTWHERE, ACTION_EXISTS
		bSelect = True
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case ACTION_TABLENAMES
		bSelect = True
		MySQL.GetTableNames
	Case ACTION_DESCRIBETABLE
		bSelect = True
		MySQL.DescribeTable
	Case ACTION_COUNT
		bCount = True
		bSelect = True
		MySQL.GetCount
	Case ACTION_GETMAX
		bSelect = True
		MySQL.GetMax
	Case ACTION_GETMIN
		bSelect = True
		MySQL.GetMin
	Case ACTION_SUMOF
		bSelect = True
		MySQL.GetSum	
	Case ACTION_CUSTOM
		bSelect = True
		MySQL.Execute(sCustomQuery)
	End Select
	If bShowLog Then
		Log(MySQL.query)
		Log(MySQL.args)
	End If
	
	'we are using mysqlphp.config
	If bDynamic = False Then 
		mPayload = MySQL.Build
		MySQL.JSON = BANano.CallInlinePHPWait(MySQL.MethodName, mPayload) 
	Else
		'we are using dynamic
		mPayload = MySQL.BuildDynamic(True)
		MySQL.JSON = BANano.CallInlinePHPWait(MySQL.MethodNameDynamic, mPayload)
	End If
	If bShowLog Then
		Log("Payload...")
		Log(mPayload)
	End If	
	'get the result
	MySQL.FromJSON
	Select Case sAction
	Case ACTION_SHOWDATABASES
		Dim dbList As List
		dbList.Initialize 
		For Each rec As Map In MySQL.result
			Dim sDatabase As String = rec.GetDefault("Database", "")
			If sDatabase <> "" Then
				dbList.Add(sDatabase)
			End If
		Next
		MySQL.result = dbList
		MySQL.affectedRows = dbList.size
	Case ACTION_TABLENAMES
		'convert to a list
		Dim tblNames As List
		tblNames.Initialize 
		For Each rec As Map In MySQL.result
			Dim stable_name As String = rec.GetDefault("table_name", "")
			stable_name = stable_name.Trim
			If stable_name <> "" Then
				tblNames.Add(stable_name)
			End If 
		Next
		MySQL.result = tblNames
		MySQL.affectedRows = tblNames.Size
	Case ACTION_DESCRIBETABLE
		'just prepare the information we need
		TD.Initialize 
		TD.tableName = sTableName
		TD.PrimaryKey = ""
		TD.AutoIncrement = ""
		TD.Booleans.Initialize 
		TD.Strings.Initialize 
		TD.Doubles.Initialize  
		TD.Blobs.Initialize 
		TD.Integers.Initialize 
		TD.TinyInts.Initialize 
		TD.Fields.Initialize 
		TD.Sorts.Initialize 
		TD.FieldNames.Initialize
		
		'will have the auto & primary keys
		Dim fldnames As List
		fldnames.Initialize 
		Dim sauto As String = ""
		Dim spri As String = ""
		'loop through each field
		For Each fldm As Map In MySQL.result
			'create a new field
			Dim newfld As Map = CreateMap()
			Dim sDefault As String = fldm.getdefault("Default","")
			Dim sExtra As String = fldm.getdefault("Extra", "")
			Dim sField As String = fldm.getdefault("Field", "")
			Dim sKey As String = fldm.getdefault("Key", "")
			Dim sNull As String = fldm.getdefault("Null", "")
			Dim sType As String = fldm.getdefault("Type", "")	
			If sNull = "NO" Then sNull = "No"
			If sNull = "YES" Then sNull = "Yes"
		'	
			'update field names
			TD.FieldNames.Add(sField.tolowercase)
			'
			sDefault = BANanoShared.CStr(sDefault)
			sField = BANanoShared.CStr(sField)
			sKey = BANanoShared.CStr(sKey)
			sNull = BANanoShared.CStr(sNull)
			sType = BANanoShared.CStr(sType)
			sExtra = BANanoShared.CStr(sExtra)
			'we have found the auto increment
			If sExtra.EqualsIgnoreCase("auto_increment") Then 
				sauto = sField
				TD.AutoIncrement = sauto
			End If
			'we have found the primary key
			If sKey.EqualsIgnoreCase("pri") Then 
				spri = sField
				TD.PrimaryKey = spri
			End If
		
			'get the fld len
			Dim fldLen As String = BANanoShared.val(sType)
			'get the fld type
			Dim fldType As String = BANanoShared.alpha(sType)
		
			newfld.Put("defaultvalue", sDefault)
			newfld.Put("fieldname", sField)
			newfld.Put("fieldtype", fldType)
			newfld.Put("fieldlen", fldLen)
			newfld.Put("acceptnull", sNull)
			'
			newfld.Put("title", sField)
			newfld.Put("ontable", "Yes")
			newfld.Put("onpdf", "Yes")
			newfld.Put("onxls", "Yes")
						
			If spri.EqualsIgnoreCase(sField) Then
				newfld.Put("pri", "Yes")
				newfld.Put("sortdb", "Yes")
				'sorts
				TD.Sorts.Add(sField.tolowercase)
			Else
				newfld.Put("pri", "No")	
			End If
			'
			If sauto.EqualsIgnoreCase(sField) Then
				newfld.Put("ai", "Yes")
			Else
				newfld.Put("ai", "No")	
			End If
			newfld.Put("fieldkey", $"${sTableName}.${sField}"$)
			'add to collection
			fldnames.Add(newfld)
			TD.Fields.Add(newfld)
			'
			'define the field types
			Select Case fldType
			Case "blob"
				TD.Blobs.Add(sField.tolowercase)
			Case "varchar", "date", "longtext"
				TD.Strings.Add(sField.ToLowerCase)
			Case "bigint", "int"
				TD.Integers.Add(sField.tolowercase)
			Case "tinyint"
				TD.Integers.Add(sField.tolowercase)
				TD.TinyInts.Add(sField.ToLowerCase)
			Case Else
				TD.Strings.Add(sField.ToLowerCase)
			End Select
		Next
		MySQL.result = fldnames
		MySQL.affectedRows = fldnames.Size
	End Select
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
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
			Else
				'record is not found
				Record = CreateMap()
				'copy the fields
				For Each k As String In schemaFields
					Record.Put(k, "")
				Next
				CorrectDataTypes(Record)
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
				affectedRows = -1
			End If
		End If
	End If
	BANano.ReturnThen(True)
End Sub
'

'show first record
Sub SHOWFIRSTRECORD
	Record = GetFirstRecord
	SetRecord(Record)
End Sub

'get the first record
Sub GetFirstRecord As Map
	Dim fr As Map = Result.Get(0)
	CorrectDataTypes(Record)
	Return fr
End Sub

'key for deletes and reads
Sub SetKey(keyValue As String)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SetKey has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SetKey.${keyValue}"$)
	End If
	If UsesApp = False Then
		ParentComponent.SetData(dsKey, keyValue)
	Else
		AppComponent.SetData(dsKey, keyValue)
	End If	
End Sub

'set the record to update
Sub SetRecord(rec As Map)
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SetRecord has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SetRecord.${BANano.ToJson(rec)}"$)
	End If
	If UsesApp = False Then
		ParentComponent.SetData(sRecordSource, rec)
	Else
		AppComponent.SetData(sRecordSource,rec)
	End If	
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

'jrdc execute
private Sub JRDCExecute
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.JRDCExecute has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.JRDCExecute"$)
		Log($"Table Name: ${sTableName}"$)
		Log($"Primary Key: ${sPrimaryKey}"$)
		Log($"AutoIncrement: ${sAutoIncrement}"$)
		Log($"RecordSource: ${sRecordSource}"$)
		Log($"Singular: ${sSingular}"$)
		Log($"Plural: ${sPlural}"$)
		Log($"Display Field: ${sDisplayField}"$)
		Log($"Fields: ${BANano.ToJson(schemaFields)}"$)
		Log($"Select Fields: ${BANano.ToJson(schemaSelectFields)}"$)
		Log($"Sort By: ${BANano.ToJson(schemaOrderBy)}"$)
		Log($"Integers: ${BANano.ToJson(Integers)}"$)
		Log($"Doubles: ${BANano.ToJson(Doubles)}"$)
		Log($"Blobs: ${BANano.ToJson(Blobs)}"$)
		Log($"Defaults: ${BANano.ToJson(schemaDefaultsM)}"$)		
	End If
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
	Select Case sAction
	Case ACTION_CREATE_TABLE
		MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${BANano.ToJson(Record)}"$)
		'insert a record
		MySQL.Insert1(Record)
	Case ACTION_READ
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		'there is no key, return a blank data-source
		If pkValue = "" Then
			Dim nr As Map = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(nr)
			If UsesApp = False Then
				ParentComponent.SetData(sRecordSource, nr) 
			Else
				AppComponent.SetData(sRecordSource, nr)
			End If	
			BANano.ReturnThen(True)
		End If
		Log($"Read: ${pkValue}"$)
		'execute the read
		MySQL.Read(pkValue)
	Case ACTION_UPDATE, ACTION_UNDO
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		'we need to remove the auto-increment key from the record
		Record.Remove(sPrimaryKey)
		Log($"Update: ${BANano.ToJson(Record)}"$)
		MySQL.Update1(Record, pkValue)
	Case ACTION_DELETE
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		Log($"Delete: ${pkValue}"$)
		MySQL.Delete(pkValue)
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_SELECTFORCOMBO, ACTION_CHART
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case ACTION_SELECTWHERE, ACTION_EXISTS
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case ACTION_TABLENAMES
		MySQL.GetTableNames
	Case ACTION_DESCRIBETABLE
		MySQL.DescribeTable
	Case ACTION_COUNT
		MySQL.GetCount
	Case ACTION_GETMAX
		MySQL.GetMax
	Case ACTION_GETMIN
		MySQL.GetMin
	Case ACTION_SUMOF
		MySQL.GetSum	
	Case ACTION_CUSTOM
		MySQL.Execute(sCustomQuery)
	End Select
	If bShowLog Then
		Log(MySQL.query)
		Log(MySQL.args)
	End If	
	'we are using mysqlphp.config
	If bDynamic = False Then 
		mPayload = MySQL.Build
	Else
		'we are using dynamic
		mPayload = MySQL.BuildDynamic(True)
	End If
	mPayload.Put("jrdccommand", sjrdcCommand)	
End Sub

'sqlite execute
private Sub SQLiteExecute As Boolean    'ignore
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.SQLiteExecute has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.SQLiteExecute"$)
		Log($"Table Name: ${sTableName}"$)
		Log($"Primary Key: ${sPrimaryKey}"$)
		Log($"AutoIncrement: ${sAutoIncrement}"$)
		Log($"RecordSource: ${sRecordSource}"$)
		Log($"Singular: ${sSingular}"$)
		Log($"Plural: ${sPlural}"$)
		Log($"Display Field: ${sDisplayField}"$)
		Log($"Fields: ${BANano.ToJson(schemaFields)}"$)
		Log($"Select Fields: ${BANano.ToJson(schemaSelectFields)}"$)
		Log($"Sort By: ${BANano.ToJson(schemaOrderBy)}"$)
		Log($"Integers: ${BANano.ToJson(Integers)}"$)
		Log($"Doubles: ${BANano.ToJson(Doubles)}"$)
		Log($"Blobs: ${BANano.ToJson(Blobs)}"$)
		Log($"Defaults: ${BANano.ToJson(schemaDefaultsM)}"$)		
	End If
	Dim MySQL As BANanoSQLiteE
	MySQL.Initialize(sDatabaseName, sTableName, sPrimaryKey, sAutoIncrement) 
	'clear the schema
	MySQL.SchemaClear
	'add the schema to the dbclass
	MySQL.SchemaAddBlob(Blobs)
	MySQL.SchemaAddDouble(Doubles)
	MySQL.SchemaAddInt(Integers)
	MySQL.SchemaAddText(Strings)
	Dim bRead As Boolean = False
	Dim bSelect As Boolean = False  'ignore
	Dim bCount As Boolean = False
	Select Case sAction
	Case ACTION_CREATE_TABLE
		MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${BANano.ToJson(Record)}"$)
		'insert a record
		MySQL.Insert1(Record)
	Case ACTION_READ
		bRead = True
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		'there is no key, return a blank data-source
		If pkValue = "" Then
			Dim nr As Map = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(nr)
			If UsesApp = False Then
				ParentComponent.SetData(sRecordSource, nr) 
			Else
				AppComponent.SetData(sRecordSource, nr)
			End If	
			BANano.ReturnThen(True)
		End If
		Log($"Read: ${pkValue}"$)
		'execute the read
		MySQL.Read(pkValue)
	Case ACTION_UPDATE, ACTION_UNDO
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		'we need to remove the auto-increment key from the record
		Record.Remove(sPrimaryKey)
		Log($"Update: ${BANano.ToJson(Record)}"$)
		MySQL.Update1(Record, pkValue)
	Case ACTION_DELETE
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		Log($"Delete: ${pkValue}"$)
		MySQL.Delete(pkValue)
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_SELECTFORCOMBO, ACTION_CHART
		bSelect = True
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case ACTION_SELECTWHERE, ACTION_EXISTS
		bSelect = True
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case ACTION_TABLENAMES
		bSelect = True
		MySQL.GetTableNames
	Case ACTION_DESCRIBETABLE
		bSelect = True
		MySQL.DescribeTable
	Case ACTION_COUNT
		bCount = True
		bSelect = True
		MySQL.GetCount
	Case ACTION_GETMAX
		bSelect = True
		MySQL.GetMax
	Case ACTION_GETMIN
		bSelect = True
		MySQL.GetMin
	Case ACTION_SUMOF
		bSelect = True
		MySQL.GetSum	
	Case ACTION_CUSTOM
		bSelect = True
		MySQL.Execute(sCustomQuery)
	End Select
	If bShowLog Then
		Log(MySQL.query)
		Log(MySQL.args)
	End If
	
	'we are using mysqlphp.config
	mPayload = MySQL.Build
	MySQL.JSON = BANano.CallInlinePHPWait(MySQL.MethodName, mPayload) 
	If bShowLog Then
		Log("Payload...")
		Log(mPayload)
	End If	
	'get the result
	MySQL.FromJSON
	Select Case sAction
	Case ACTION_TABLENAMES
		'convert to a list
		Dim tblNames As List
		tblNames.Initialize 
		For Each rec As Map In MySQL.result
			Dim stable_name As String = rec.GetDefault("name", "")
			stable_name = stable_name.Trim
			If stable_name <> "" Then
				tblNames.Add(stable_name)
			End If 
		Next
		MySQL.result = tblNames
		MySQL.affectedRows = tblNames.Size
	Case ACTION_DESCRIBETABLE
		'just prepare the information we need
		TD.Initialize 
		TD.tableName = sTableName
		TD.PrimaryKey = ""
		TD.AutoIncrement = ""
		TD.Booleans.Initialize 
		TD.Strings.Initialize 
		TD.Doubles.Initialize  
		TD.Blobs.Initialize 
		TD.Integers.Initialize 
		TD.TinyInts.Initialize 
		TD.Fields.Initialize 
		TD.Sorts.Initialize 
		TD.FieldNames.Initialize
		
		'will have the auto & primary keys
		Dim fldnames As List
		fldnames.Initialize 
		Dim sauto As String = ""
		Dim spri As String = ""
		'loop through each field
		For Each fldm As Map In MySQL.result
			'create a new field
			Dim newfld As Map = CreateMap()
			Dim sDefault As String = fldm.getdefault("Default","")
			Dim sExtra As String = fldm.getdefault("Extra", "")
			Dim sField As String = fldm.getdefault("Field", "")
			Dim sKey As String = fldm.getdefault("Key", "")
			Dim sNull As String = fldm.getdefault("Null", "")
			Dim sType As String = fldm.getdefault("Type", "")	
			If sNull = "NO" Then sNull = "No"
			If sNull = "YES" Then sNull = "Yes"
		'	
			'update field names
			TD.FieldNames.Add(sField.tolowercase)
			'
			sDefault = BANanoShared.CStr(sDefault)
			sField = BANanoShared.CStr(sField)
			sKey = BANanoShared.CStr(sKey)
			sNull = BANanoShared.CStr(sNull)
			sType = BANanoShared.CStr(sType)
			sExtra = BANanoShared.CStr(sExtra)
			'we have found the auto increment
			If sExtra.EqualsIgnoreCase("auto_increment") Then 
				sauto = sField
				TD.AutoIncrement = sauto
			End If
			'we have found the primary key
			If sKey.EqualsIgnoreCase("pri") Then 
				spri = sField
				TD.PrimaryKey = spri
			End If
		
			'get the fld len
			Dim fldLen As String = BANanoShared.val(sType)
			'get the fld type
			Dim fldType As String = BANanoShared.alpha(sType)
		
			newfld.Put("defaultvalue", sDefault)
			newfld.Put("fieldname", sField)
			newfld.Put("fieldtype", fldType)
			newfld.Put("fieldlen", fldLen)
			newfld.Put("acceptnull", sNull)
			'
			newfld.Put("title", sField)
			newfld.Put("ontable", "Yes")
			newfld.Put("onpdf", "Yes")
			newfld.Put("onxls", "Yes")
						
			If spri.EqualsIgnoreCase(sField) Then
				newfld.Put("pri", "Yes")
				newfld.Put("sortdb", "Yes")
				'sorts
				TD.Sorts.Add(sField.tolowercase)
			Else
				newfld.Put("pri", "No")	
			End If
			'
			If sauto.EqualsIgnoreCase(sField) Then
				newfld.Put("ai", "Yes")
			Else
				newfld.Put("ai", "No")	
			End If
			newfld.Put("fieldkey", $"${sTableName}.${sField}"$)
			'add to collection
			fldnames.Add(newfld)
			TD.Fields.Add(newfld)
			'
			'define the field types
			Select Case fldType
			Case "blob"
				TD.Blobs.Add(sField.tolowercase)
			Case "varchar", "date", "longtext"
				TD.Strings.Add(sField.ToLowerCase)
			Case "bigint", "int"
				TD.Integers.Add(sField.tolowercase)
			Case "tinyint"
				TD.Integers.Add(sField.tolowercase)
				TD.TinyInts.Add(sField.ToLowerCase)
			Case Else
				TD.Strings.Add(sField.ToLowerCase)
			End Select
		Next
		MySQL.result = fldnames
		MySQL.affectedRows = fldnames.Size
	End Select
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
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
			Else
				'record is not found
				Record = CreateMap()
				'copy the fields
				For Each k As String In schemaFields
					Record.Put(k, "")
				Next
				CorrectDataTypes(Record)
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
				affectedRows = -1
			End If
		End If
	End If
	BANano.ReturnThen(True)
End Sub

'indexdb execute
private Sub AlaSQLExecute As Boolean    'ignore
	If IsBound = False Then
		BANano.Throw($"BANanoDataSource.${mName}.AlaSQLExecute has not been bound to the component!"$)
	End If
	If bShowLog Then
		Log($"BANanoDataSource.${sDatabaseType}.${sDatabaseName}.${sTableName}.AlaSQLExecute"$)
		Log($"Table Name: ${sTableName}"$)
		Log($"Primary Key: ${sPrimaryKey}"$)
		Log($"AutoIncrement: ${sAutoIncrement}"$)
		Log($"RecordSource: ${sRecordSource}"$)
		Log($"Singular: ${sSingular}"$)
		Log($"Plural: ${sPlural}"$)
		Log($"Display Field: ${sDisplayField}"$)
		Log($"Fields: ${BANano.ToJson(schemaFields)}"$)
		Log($"Select Fields: ${BANano.ToJson(schemaSelectFields)}"$)
		Log($"Sort By: ${BANano.ToJson(schemaOrderBy)}"$)
		Log($"Integers: ${BANano.ToJson(Integers)}"$)
		Log($"Doubles: ${BANano.ToJson(Doubles)}"$)
		Log($"Blobs: ${BANano.ToJson(Blobs)}"$)
		Log($"Defaults: ${BANano.ToJson(schemaDefaultsM)}"$)		
	End If
	'
	Dim dbName As String = sDatabaseName
	Dim dbALA As BANanoSQL
	dbALA.OpenWait(dbName, dbName)
	'
	Dim MySQL As BANanoALASQLE
	MySQL.Initialize(sDatabaseName, sTableName, sPrimaryKey, sAutoIncrement) 
	'clear the schema
	MySQL.SchemaClear
	'add the schema to the dbclass
	MySQL.SchemaAddBlob(Blobs)
	MySQL.SchemaAddDouble(Doubles)
	MySQL.SchemaAddInt(Integers)
	MySQL.SchemaAddText(Strings)
	Dim bRead As Boolean = False
	Dim bSelect As Boolean = False  'ignore
	Dim bCount As Boolean = False
	Select Case sAction
	Case ACTION_CREATE_TABLE
		MySQL.SchemaCreateTable
	Case ACTION_CREATE
		'remove auto-increment
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		If sAutoIncrement <> "" Then
			Record.Remove(sAutoIncrement)
		End If
		Log($"Create: ${BANano.ToJson(Record)}"$)
		'insert a record
		MySQL.Insert1(Record)
	Case ACTION_READ
		bRead = True
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		'there is no key, return a blank data-source
		If pkValue = "" Then
			Dim nr As Map = CreateMap()
			'copy the fields
			For Each k As String In schemaFields
				Record.Put(k, "")
			Next
			CorrectDataTypes(nr)
			If UsesApp = False Then
				ParentComponent.SetData(sRecordSource, nr) 
			Else
				AppComponent.SetData(sRecordSource, nr)
			End If	
			BANano.ReturnThen(True)
		End If
		Log($"Read: ${pkValue}"$)
		'execute the read
		MySQL.Read(pkValue)
	Case ACTION_UPDATE, ACTION_UNDO
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		'we need to remove the auto-increment key from the record
		Record.Remove(sPrimaryKey)
		Log($"Update: ${BANano.ToJson(Record)}"$)
		MySQL.Update1(Record, pkValue)
	Case ACTION_DELETE
		'get the key for the record
		If UsesApp = False Then
			Dim pkValue As String = ParentComponent.GetData(dsKey)
		Else
			Dim pkValue As String = AppComponent.GetData(dsKey)
		End If	
		If pkValue = "" Then
			BANano.ReturnThen(True)
		End If
		'read the record to update
		If UsesApp = False Then
			Record = ParentComponent.GetData(sRecordSource)
		Else
			Record = AppComponent.GetData(sRecordSource)
		End If	
		Dim nr As Map = CreateMap()
		For Each fld As String In schemaFields
			Dim value As String = Record.GetDefault(fld, "")
			nr.Put(fld, value)
		Next
		Record = nr
		CorrectDataTypes(Record)
		Log($"Delete: ${pkValue}"$)
		MySQL.Delete(pkValue)
	Case ACTION_SELECTALL, ACTION_PDF, ACTION_REPORT, ACTION_EXCEL, ACTION_SELECTFORCOMBO, ACTION_CHART
		bSelect = True
		MySQL.SelectAll(schemaSelectFields, schemaOrderBy)
	Case ACTION_SELECTWHERE, ACTION_EXISTS
		bSelect = True
		MySQL.SelectWhere(schemaSelectFields, cw, ops, schemaOrderBy) 
	Case ACTION_TABLENAMES
		bSelect = True
		'MySQL.GetTableNames
	Case ACTION_DESCRIBETABLE
		bSelect = True
		'MySQL.DescribeTable
	Case ACTION_COUNT
		bCount = True
		bSelect = True
		MySQL.GetCount
	Case ACTION_GETMAX
		bSelect = True
		MySQL.GetMax
	Case ACTION_GETMIN
		bSelect = True
		MySQL.GetMin
	Case ACTION_SUMOF
		bSelect = True
		MySQL.GetSum	
	Case ACTION_CUSTOM
		bSelect = True
		MySQL.Execute(sCustomQuery)
	End Select
	If bShowLog Then
		Log(MySQL.query)
		Log(MySQL.args)
	End If
	
	MySQL.result = dbALA.ExecuteWait(MySQL.query, MySQL.args)
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
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
			Else
				'record is not found
				Record = CreateMap()
				'copy the fields
				For Each k As String In schemaFields
					Record.Put(k, "")
				Next
				CorrectDataTypes(Record)
				If UsesApp = False Then
					ParentComponent.SetData(sRecordSource, Record)
				Else
					AppComponent.SetData(sRecordSource, Record)
				End If	
				affectedRows = -1
			End If
		End If
	End If
	BANano.ReturnThen(True)
End Sub
