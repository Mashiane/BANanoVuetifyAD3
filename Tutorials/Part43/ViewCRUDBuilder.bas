B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public crud As VueComponent
	Public path As String
	Public name As String = "crud"
	Private banano As BANano   'ignore
	Private tablecrud As VueTable
	Private Mode As String
	Private flds As List
	Private preflist As VueElement
	Private mysql As BANanoMySQLE
	Private mssql As BANanoMSSQLE
	Private sqlite As BANanoSQLiteE
	Private alasql As BANanoALASQLE
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	crud.Initialize(Me, name)
	path = crud.path
	
	'add msgbox
	crud.AddMsgBox(True, 500, "green", "red")
	
	Dim cont As VueElement = vuetify.AddContainer(Me, crud.Here, "crudcont", True)
	cont.AddRows1.AddColumns11.AddColumns1
	cont.buildgrid
	
	Dim btncrud As VueElement = vuetify.AddButton1(Me, cont.MatrixID(1,2), "btncrud", "Do It", Null)
	btncrud.Outlined = True
	crud.BindVueElement(btncrud)
	
	'initialize the data holder
	crud.SetData("builder", crud.NewMap)
	
	'add the expansion panel on row 1 column 1
	Dim crudep As VueElement = vuetify.AddExpansionPanels(Me, cont.matrixid(1,1), "crudep", "crudepvalue")
	crudep.Accordion = True
	'
	Dim cruddb As VueElement = crudep.AddExpansionPanel("cruddb", "Database Schema")
	cruddbcont(cruddb.id)
	'
	Dim crudtb As VueElement = crudep.AddExpansionPanel("crudtb", "Table Schema")
	crudtbcont(crudtb.id)
	'
	Dim cruddiag As VueElement = crudep.AddExpansionPanel("cruddiag", "Dialog")
	dialogcont(cruddiag.ID)
	
	Dim crudtable As VueElement = crudep.AddExpansionPanel("crudtable", "Data Table")
	tablecont(crudtable.id)
	'
	crudep.BindVueElement(cruddiag)
	crudep.BindVueElement(crudtable)
	crudep.BindVueElement(cruddb)
	crud.BindVueElement(crudep)
	'
	Dim drwdiagentry As VueElement = vuetify.AddDrawer(Me, "vapp", "drwdiagentry", "diagentry", False, "", True, Null)
	drwdiagentry.App = True
	drwdiagentry.Width = 400
	vuetify.SetData("diagentry", False)
	crud.BindVueElement(drwdiagentry)
	DrawerField(drwdiagentry.ID)
	'
	crud.SetMounted(Me, "getschema", Null)
	'add the component as a router
	vuetify.AddRoute(crud)
End Sub

Sub btncrud_click(e As BANanoEvent)
	'get the prefList
	Dim preferences As Map = preflist.GetPreferences(crud)
	banano.SetLocalStorage("preferences", preferences)
	crud.SetData("preferences", preferences)
	'
	'save builder to localstorage
	Dim builder As Map = crud.GetData("builder")
	banano.SetLocalStorage("builder", builder)
	
	Dim sdbtype As String = builder.GetDefault("dbtype", "")
	Dim shostname As String = builder.GetDefault("hostname", "")
	Dim sdatabasename As String = builder.GetDefault("databasename", "")
	Dim susername As String = builder.GetDefault("username", "")
	Dim spassword As String = builder.GetDefault("password", "")
	Dim sdiagwidth As String = builder.GetDefault("diagwidth", "600")
	Dim sfullscreen As String = builder.GetDefault("fullscreen", "No")
	'
	'check data validity
	Dim ssortby As String = builder.GetDefault("sortby","")
	Dim sitemsperpage As String = builder.GetDefault("itemsperpage", "10")
	Dim sfocuson As String = builder.GetDefault("focuson", "")
	Dim sdisplayfield As String = builder.GetDefault("displayfield", "")
	Dim stablename As String = builder.GetDefault("tablename", "")
	Dim scomponentname As String = builder.GetDefault("componentname", "")
	Dim ssingular As String = builder.GetDefault("singular", "")
	Dim splural As String = builder.GetDefault("plural", "")
	Dim sprimarykey As String = builder.GetDefault("primarykey", "")
	Dim sautoincrement As String = builder.GetDefault("autoincrement", "")
	Dim bfullscreen As Boolean = banano.IIf(sfullscreen = "Yes", True, False)
	'	
	Dim clsBuilder As MySQLCRUD
	Select Case sdbtype
	Case "mysql"
		clsBuilder.Initialize("BANanoMySQLE")
		mysql.Initialize(sdatabasename, stablename, sprimarykey, sautoincrement)
	Case "mssql"
		clsBuilder.Initialize("BANanoMSSQLE")
		mssql.Initialize(sdatabasename, stablename, sprimarykey, sautoincrement)
	Case "sqlite"
		clsBuilder.Initialize("BANanoSQLiteE")
		sqlite.Initialize(sdatabasename, stablename, sprimarykey, sautoincrement)
	Case "indexeddb"
		clsBuilder.Initialize("BANanoALASQLE")
		alasql.Initialize(sdatabasename, stablename, sprimarykey, sautoincrement)
	End Select
	'
	
	'define the database name
	clsBuilder.databasename = sdatabasename
	'define the table name
	clsBuilder.tablename = stablename
	'what is the primary key of this table
	clsBuilder.PrimaryKey = sprimarykey
	'which field is the auto-increment field, if none comment out
	clsBuilder.AutoIncrement = sautoincrement
	'what is the singular name for each record
	clsBuilder.Singular = ssingular
	'what is the plural name for many records
	clsBuilder.Plural = splural
	'which field should be used to sort the records
	clsBuilder.SortBy = ssortby
	'what is the component name to create
	clsBuilder.componentname = scomponentname
	'we have an alert/confirm dialog
	clsBuilder.HasDialog = True
	'IMPORTANT before execution
	clsBuilder.Prepare
	'
	'when dialog is opened, focus on which field. NB: This currently raises an error, comment it out on final file
	clsBuilder.focuson = sfocuson
	'the field value to show to confirm deletion
	clsBuilder.DisplayField = sdisplayfield
	
	'set the data-table
	clsBuilder.DT_ItemsPerPage = sitemsperpage
	clsBuilder.Diag_FullScreenOnMobile = bfullscreen
	clsBuilder.Diag_Width = sdiagwidth
	'	
	'data-table title
	For Each k As String In preferences.Keys
		Dim v As Boolean = preferences.Get(k)
		If k = "search" And v = True Then
			clsBuilder.DT_HasSearch = True
		End If
		If k = "filter" And v = True Then
			clsBuilder.DT_HasFilter = True
		End If
		If k = "refresh" And v = True Then
			clsBuilder.DT_HasRefresh = True
		End If
		If k = "showgroupby" And v = True Then
			clsBuilder.DT_ShowGroupBy = True
		End If
		
		If k = "showselect" And v = True Then
			clsBuilder.DT_SHowSelect = True
		End If
		
		If k = "singleselect" And v = True Then
			clsBuilder.DT_SingleSelect = True
		End If
		
		If k = "addnew" And v = True Then
			clsBuilder.DT_HasAddNew = True
		End If
		If k = "back" And v = True Then
			clsBuilder.DT_HasBack = True
		End If
		
		If k = "clearsort" And v = True Then
			clsBuilder.DT_HasClearSort = True
		End If
		
		If k = "mustsort" And v = True Then
			clsBuilder.DT_MustSort = True
		End If	
		
		If k = "multisort" And v = True Then
			clsBuilder.DT_multisort = True
		End If
		
		If k = "dense" And v = True Then
			clsBuilder.DT_Dense = True
		End If	
	Next
	
	'loop through each field
	For Each fld As Map In flds
		Dim sfieldname As String = fld.GetDefault("fieldname","")
		Dim stitle As String = fld.GetDefault("title","")
		Dim svmodel As String = fld.GetDefault("vmodel","")
		Dim srowpos As String = fld.GetDefault("rowpos","")
		Dim scolumnpos As String = fld.GetDefault("columnpos","")
		Dim sdefaultvalue As String = fld.GetDefault("defaultvalue","")
		Dim swidth As String = fld.GetDefault("width","")
		Dim sheight As String = fld.GetDefault("height","")
		Dim salt As String = fld.GetDefault("alt","")
		Dim slazysrc As String = fld.GetDefault("lazysrc","")
		Dim syesvalue As String = fld.GetDefault("yesvalue","")
		Dim snovalue As String = fld.GetDefault("novalue","")
		Dim savatarsize As String = fld.GetDefault("avatarsize","")
		Dim smaxlen As String = fld.GetDefault("maxlen","0")
		Dim sdatasource As String = fld.GetDefault("datasource","")
		Dim skey As String = fld.GetDefault("key","")
		Dim svalue As String = fld.GetDefault("value","")
		'
		Dim sactive As String = fld.GetDefault("active","No")
		Dim sontable As String = fld.GetDefault("ontable","No")
		Dim shidedetails As String = fld.GetDefault("hidedetails","No")
		Dim sdense As String = fld.GetDefault("dense","No")
		Dim srequired As String = fld.GetDefault("required","No")
		Dim sreadonly As String = fld.GetDefault("readonly","No")
		Dim sdisabled As String = fld.GetDefault("disabled","No")
		Dim soutlined As String = fld.GetDefault("outlined","No")
		Dim srounded As String = fld.GetDefault("rounded","No")
		Dim shidden As String = fld.GetDefault("hidden","No")
		Dim sfilter As String = fld.GetDefault("filter","No")
		Dim ssorted As String = fld.GetDefault("sorted","No")
		Dim srowdisplay As String = fld.GetDefault("rowdisplay","No")
		Dim sinset As String = fld.GetDefault("inset","No")
		Dim smultiple As String = fld.GetDefault("multiple","No")
		Dim sreturnobject As String = fld.GetDefault("returnobject","No")
		Dim sdatatype As String = fld.GetDefault("datatype","String")
		Dim scolumntype As String = fld.GetDefault("columntype","Normal")
		Dim scomponenttype As String = fld.GetDefault("componenttype","TextField")
		Dim sclearable As String = fld.getDefault("clearable", "No")
		Dim sautofocus As String = fld.getdefault("autofocus", "No")
		Dim sfilled As String = fld.getdefault("filled", "No")
		Dim sshaped As String = fld.getdefault("shaped", "No")
		'
		If smaxlen = "" Then smaxlen = "0"
		smaxlen = banano.parseInt(smaxlen)
		Dim bMultiple As Boolean = banano.IIf(smultiple = "Yes", True, False)
		Dim bReturnObject As Boolean = banano.IIf(sreturnobject = "Yes", True, False)
		Dim bInset As Boolean = banano.IIf(sinset = "Yes", True, False)
		Dim bRowDisplay As Boolean = banano.IIf(srowdisplay = "Yes", True, False)
		Dim bHidden As Boolean = banano.IIf(shidden = "Yes", True, False)
		Dim bSorted As Boolean = banano.IIf(ssorted = "Yes", True, False)
		Dim bHideDetails As Boolean = banano.IIf(shidedetails = "Yes", True, False)
		Dim bDense As Boolean = banano.IIf(sdense = "Yes", True, False)
		Dim bRequired As Boolean = banano.IIf(srequired = "Yes", True, False)
		Dim bReadOnly As Boolean = banano.IIf(sreadonly = "Yes", True, False)
		Dim bDisabled As Boolean = banano.IIf(sdisabled = "Yes", True, False)
		Dim bOutlined As Boolean = banano.IIf(soutlined = "Yes", True, False)
		Dim bRounded As Boolean = banano.Iif(srounded = "Yes", True, False)
		Dim bClearable As Boolean = banano.IIf(sclearable = "Yes", True, False)
		Dim bAutoFocus As Boolean = banano.IIf(sautofocus = "Yes", True, False)
		Dim bFilled As Boolean = banano.IIf(sfilled = "Yes", True, False)
		Dim bShaped As Boolean = banano.IIf(sshaped = "Yes", True, False)
		'
		'build the database schema
		Select Case sdbtype
		Case "mysql"
			Select Case sdatatype
			Case "string"
				mysql.SchemaAddField(sfieldname, mysql.DB_STRING)
			Case "double"
				mysql.SchemaAddField(sfieldname, mysql.DB_FLOAT)
			Case "int"
				mysql.SchemaAddField(sfieldname, mysql.DB_INT)
			Case "blob"
				mysql.SchemaAddField(sfieldname, mysql.DB_BLOB)
			End Select
		Case "mssql"
			Select Case sdatatype
			Case "string"
				mssql.SchemaAddField(sfieldname, mysql.DB_STRING)
			Case "double"
				mssql.SchemaAddField(sfieldname, mysql.DB_FLOAT)
			Case "int"
				mssql.SchemaAddField(sfieldname, mysql.DB_INT)
			Case "blob"
				mssql.SchemaAddField(sfieldname, mysql.DB_BLOB)
			End Select
		Case "sqlite"
			Select Case sdatatype
			Case "string"
				sqlite.SchemaAddField(sfieldname, mysql.DB_STRING)
			Case "double"
				sqlite.SchemaAddField(sfieldname, mysql.DB_FLOAT)
			Case "int"
				sqlite.SchemaAddField(sfieldname, mysql.DB_INT)
			Case "blob"
				sqlite.SchemaAddField(sfieldname, mysql.DB_BLOB)
			End Select
		Case "indexeddb"
			Select Case sdatatype
			Case "string"
				alasql.SchemaAddField(sfieldname, mysql.DB_STRING)
			Case "double"
				alasql.SchemaAddField(sfieldname, mysql.DB_FLOAT)
			Case "int"
				alasql.SchemaAddField(sfieldname, mysql.DB_INT)
			Case "blob"
				alasql.SchemaAddField(sfieldname, mysql.DB_BLOB)
			End Select
		End Select
		'
		'this field is not active, so dont process
		If sactive = "No" Then Continue
		'
		clsBuilder.Diag_SetHideDetails(sfieldname, bHideDetails)
		clsBuilder.Diag_SetDense(sfieldname, bDense)
		clsBuilder.Diag_SetRequired(sfieldname, bRequired)
		clsBuilder.Diag_SetReadOnly(sfieldname, bReadOnly)
		clsBuilder.Diag_SetDisabled(sfieldname, bDisabled)
		clsBuilder.Diag_SetOutlined(sfieldname, bOutlined)
		clsBuilder.Diag_SetRounded(sfieldname, bRounded)
		clsBuilder.Diag_SetClearable(sfieldname, bClearable)
		clsBuilder.Diag_SetAutoFocus(sfieldname, bAutoFocus)
		clsBuilder.Diag_SetFilled(sfieldname, bFilled)
		clsBuilder.Diag_SetShaped(sfieldname, bShaped)
		'
		'add data types
		Select Case sdatatype
		Case "string"
			clsBuilder.AddString(sfieldname)
		Case "double"
			clsBuilder.AddDouble(sfieldname)
		Case "int"
			clsBuilder.AddInteger(sfieldname)
		Case "blob"
			clsBuilder.AddBlob(sfieldname)
		End Select
		
		'add filters
		If sfilter = "Yes" Then 
			clsBuilder.DT_AddFilter(sfieldname)
		End If
		'add defaults
		clsBuilder.AddDefaults(sfieldname, sdefaultvalue)
		'add hidden fields
		If bHidden Then
			clsBuilder.AddVisibility(sfieldname, False)
		End If
				
		'for ComponentTypes
		Select Case scomponenttype
		Case "Paragraph"
			clsBuilder.Diag_AddParagraph(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H6"
			clsBuilder.Diag_AddH6(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H1"
			clsBuilder.Diag_AddH1(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H2"
			clsBuilder.Diag_AddH2(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H3"
			clsBuilder.Diag_AddH3(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H4"
			clsBuilder.Diag_AddH4(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "H5"
			clsBuilder.Diag_AddH5(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "TextField"
			clsBuilder.Diag_AddTextField(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "TextArea"
			clsBuilder.Diag_AddTextArea(sfieldname, srowpos, scolumnpos, svmodel, stitle)
		Case "TimePicker"
			clsBuilder.Diag_AddTimePicker(sfieldname, srowpos, scolumnpos, svmodel, stitle)	
		Case "DatePicker"
			clsBuilder.Diag_AddDatePicker(sfieldname, srowpos, scolumnpos, svmodel, stitle)	
		Case "FileInput"		
			clsBuilder.Diag_AddFileInput(sfieldname, srowpos, scolumnpos, svmodel, stitle, bMultiple) 	
		Case "Password"
			clsBuilder.Diag_AddPassword(sfieldname, srowpos, scolumnpos, svmodel, stitle, smaxlen)
		Case "ComboBox"
			clsBuilder.Diag_AddComboBox(sfieldname, srowpos, scolumnpos, svmodel, stitle, sdatasource, skey, svalue, bReturnObject, bMultiple)
		Case "AutoComplete"
			clsBuilder.Diag_AddAutoComplete(sfieldname, srowpos, scolumnpos, svmodel, stitle, sdatasource, skey, svalue, bReturnObject, bMultiple)
		Case "Select"
			clsBuilder.Diag_AddSelect(sfieldname, srowpos, scolumnpos, svmodel, stitle, sdatasource, skey, svalue, bReturnObject, bMultiple)
		Case "Avatar"
			clsBuilder.Diag_AddAvatar(sfieldname, srowpos, scolumnpos, sdefaultvalue, savatarsize)
		Case "Avatar1"
			clsBuilder.Diag_AddAvatar1(sfieldname, srowpos, scolumnpos, svmodel, savatarsize)
		Case "CheckBox"
			clsBuilder.Diag_AddCheckBox(sfieldname, srowpos, scolumnpos, svmodel, stitle, syesvalue, snovalue)
		Case "Switch"
			clsBuilder.Diag_AddSwitch(sfieldname, srowpos, scolumnpos, svmodel, stitle, syesvalue, snovalue, bInset)
		Case "RadioGroup"
			clsBuilder.Diag_AddRadioGroup(sfieldname, srowpos, scolumnpos, svmodel, stitle, sdatasource, skey, svalue, bRowDisplay, bMultiple)
		Case "Image"
			clsBuilder.Diag_AddImage(sfieldname, srowpos, scolumnpos, sdefaultvalue, slazysrc, salt, swidth, sheight)
		Case "Image1"
			clsBuilder.Diag_AddImage1(sfieldname, srowpos, scolumnpos, svmodel, salt, swidth, sheight)
		End Select
				
		'only add a field that should show on the table
		If sontable = "Yes" Then
			'for data-table
			Select Case scolumntype
			Case "Normal"
				clsBuilder.DT_AddColumn(sfieldname, stitle)
			Case "TextArea"
				clsBuilder.DT_AddColumn(sfieldname, stitle)
				clsBuilder.DT_SetTextArea(sfieldname, True)
			Case "TextField"
				clsBuilder.DT_AddColumn(sfieldname, stitle)
				clsBuilder.DT_SetTextField(sfieldname, False)
			Case "IconView"
				clsBuilder.DT_AddIconView(sfieldname, stitle, "")
			Case "Chip"
				clsBuilder.DT_AddChip(sfieldname, stitle, "")
			Case "Switch"
				clsBuilder.DT_AddSwitch(sfieldname, stitle)
			Case "Action"
				clsBuilder.DT_AddAction(sfieldname, stitle, "")
			Case "Image"
				clsBuilder.DT_AddImage(sfieldname, stitle)
			Case "CheckBox"
				clsBuilder.DT_AddCheckBox(sfieldname, stitle)
			Case "Time"
				clsBuilder.DT_AddTime(sfieldname, stitle)
			Case "Money"
				clsBuilder.DT_AddMoney(sfieldname, stitle)
			Case "AvatarImg"
				clsBuilder.DT_AddAvatarImg(sfieldname, stitle)
			Case "Rating"
				clsBuilder.DT_AddRating(sfieldname, stitle)
			Case "ProgressCircular"
				clsBuilder.DT_AddProgressCircular(sfieldname, stitle)
			Case "ProgressLinear"
				clsBuilder.DT_AddProgressLinear(sfieldname, stitle)
			Case "DateColumn"
				clsBuilder.DT_AddDateColumn(sfieldname, stitle, "yyyy-mm-dd")
			Case "DateTimeColumn"
				clsBuilder.DT_AddDateTimeColumn(sfieldname, stitle, "yyyy-mm-dd HH:mm")
			Case "NumberColumn"
				clsBuilder.DT_AddNumberColumn(sfieldname, stitle, "")
			Case "ButtonColumn"
				clsBuilder.DT_AddButtonColumn(sfieldname, stitle)
			Case "LinkColumn"
				clsBuilder.DT_AddLinkColumn(sfieldname, stitle, "")
			End Select
			clsBuilder.DT_SetColumnSortable(sfieldname, bSorted)
		End If
	Next	
	
	'data-table
	For Each k As String In preferences.Keys
		Dim v As Boolean = preferences.Get(k)
		If k = "edit" And v = True Then
			clsBuilder.DT_HasEdit = True
		End If
		If k = "delete" And v = True Then
			clsBuilder.DT_HasDelete = True			
		End If
		If k = "clone" And v = True Then
			clsBuilder.DT_HasClone = True
		End If
		If k = "print" And v = True Then
			clsBuilder.DT_HasPrint = True
		End If
		If k = "save" And v = True Then
			clsBuilder.DT_HasSave = True
		End If
		If k = "cancel" And v = True Then
			clsBuilder.DT_HasCancel = True
		End If
		If k = "download" And v = True Then
			clsBuilder.DT_HasDownload = True
		End If
		If k = "menu" And v = True Then
			clsBuilder.DT_HasMenu = True
		End If
	Next
	'
	'create table code
	Select Case sdbtype
	Case "mysql"
		mysql.SchemaCreateTable
		clsBuilder.DB_CreateTable = mysql.query
	Case "mssql"
		mssql.SchemaCreateTable
		clsBuilder.DB_CreateTable = mssql.query
	Case "sqlite"
		sqlite.SchemaCreateTable
		clsBuilder.DB_CreateTable = sqlite.query
	Case "indexeddb"
		alasql.SchemaCreateTable
		clsBuilder.DB_CreateTable = alasql.query
	End Select
	
	'process the code
	clsBuilder.save
End Sub

Sub crudok_click(e As BANanoEvent)
	Dim sprocess As String = crud.PromptProcess
	Select Case sprocess
	Case "deletefield"
		crud.hidedialog
		Dim sfldname As String = crud.GetData("fieldname")
		flds = BANanoShared.ListRemoveItemsWithProp(flds,"fieldname", sfldname)
		tablecrud.Reload(crud, flds)
		banano.SetLocalStorage("fields", flds)
	End Select
End Sub

'hide the dialog
Sub crudcancel_click(e As BANanoEvent)
	crud.HideDialog
End Sub

Sub btnEditable1_click(e As BANanoEvent)
	'apply the filter to the columns
	Dim nfld As List = crud.NewList
	nfld.AddAll(Array("fieldname", "title", "vmodel", "defaultvalue", "maxlen", "datatype", "componenttype", _
	"columntype", "rowpos", "columnpos", "active", "ontable", "edit", "delete", "clone"))
	tablecrud.ApplyFilter1(crud, nfld)
End Sub

Sub btnSwitches1_click(e As BANanoEvent)
	'apply the filter to the columns
	Dim nfld As List = crud.NewList
	nfld.AddAll(Array("fieldname", "active", "ontable", "hidedetails", _
	"dense", "required", "clearable", "autofocus", "outlined", "filled", "shaped", "rounded", "hidden", "filter", "sorted", _
	"rowdisplay", "inset", "multiple", "returnobject", _
	"edit", "delete", "clone"))
	tablecrud.ApplyFilter1(crud, nfld)
End Sub

Sub btnRelationships1_click(e As BANanoEvent)
	'apply the filter to the columns
	Dim nfld As List = crud.NewList
	nfld.AddAll(Array("fieldname", "title", "vmodel", "componenttype", "datasource", "key", "value", "edit", "delete", "clone"))
	tablecrud.ApplyFilter1(crud, nfld)
End Sub

Sub getschema()			'ignoredeadcode
	crud.SetData("builder", crud.NewMap)
	crud.SetData("field", crud.NewMap)
	crud.SetData("preferences", crud.NewMap)
	Dim builder As Map = banano.GetLocalStorage("builder")
	If banano.IsNull(builder) Or banano.IsUndefined(builder) Then
		builder.Initialize 
	End If
	crud.SetData("builder", builder)
	'preferences
	Dim preferences As Map = banano.GetLocalStorage("preferences")
	If banano.IsNull(preferences) Or banano.IsUndefined(preferences) Then
		preferences.Initialize
	Else
		preflist.SetPreferences(crud, preferences)
	End If
	
	flds = banano.GetLocalStorage("fields")
	If banano.IsNull(flds) Or banano.IsUndefined(flds) Then
		flds.Initialize
	End If
	tablecrud.Reload(crud, flds)
	'apply the filter to the columns
	Dim nfld As List = crud.NewList
	nfld.AddAll(Array("fieldname", "title", "vmodel", "defaultvalue", "maxlen", "datatype", "componenttype", "columntype", _
	"rowpos", "columnpos", "active", "ontable", "edit", "delete", "clone"))
	tablecrud.ApplyFilter1(crud, nfld) 
End Sub


Sub tablecont(parentid As String)
	Dim cont As VueElement = vuetify.AddContainer(Me, parentid, "tablex", True)
	cont.AddRows1.AddColumns2x6
	cont.BuildGrid
	'
	Dim sortby As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,2), "bsortby", "builder.sortby", "Sort By", Null)
	crud.BindVueElement(sortby)
	'
	Dim itemsperpage As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,2), "bitemsperpage", "builder.itemsperpage", "Items per Page", Null)
	crud.BindVueElement(itemsperpage)
		
	preflist = vuetify.AddList(Me, cont.MatrixID(1, 1), "preflist", True, True, False, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim preflistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	preflistOptions.dataSource = "preflist"
	preflistOptions.showrightswitches = True
	preflistOptions.switchinset = True
	'add the template to the list
	preflist.AddListViewTemplate(0, preflistOptions)
	'bind the template
	crud.BindVueElement(preflist)
	'
	preflist.ClearItems
	preflist.AddItemHeader("Data-Table Preferences")
	preflist.AddItemDivider(True)
	preflist.AddItemRightSwitch("dense", False, "Dense", "", "", "")
	preflist.AddItemRightSwitch("search", False, "Search", "", "", "")
	preflist.AddItemRightSwitch("addnew", False, "Add New", "", "", "")
	preflist.AddItemRightSwitch("clearsort", False, "Clear Sort", "", "", "")
	preflist.AddItemRightSwitch("filter", False, "Filter", "", "", "")
	preflist.AddItemRightSwitch("refresh", False, "Refresh", "", "", "")
	preflist.AddItemRightSwitch("back", False, "Back", "", "", "")
	preflist.AddItemRightSwitch("edit", False, "Edit", "", "", "")
	preflist.AddItemRightSwitch("delete", False, "Delete", "", "", "")
	preflist.AddItemRightSwitch("clone", False, "Clone", "", "", "")
	preflist.AddItemRightSwitch("print", False, "Print", "", "", "")
	preflist.AddItemRightSwitch("save", False, "Save", "", "", "")
	preflist.AddItemRightSwitch("cancel", False, "Cancel", "", "", "")
	preflist.AddItemRightSwitch("download", False, "Download", "", "", "")
	preflist.AddItemRightSwitch("menu", False, "Menu", "", "", "")
	preflist.AddItemRightSwitch("showselect", False, "Show Select", "", "", "")
	preflist.AddItemRightSwitch("singleselect", False, "Single Select", "", "", "")
	preflist.AddItemRightSwitch("showgroupby", False, "Show Group By", "", "", "")
	preflist.AddItemRightSwitch("mustsort", False, "Must Sort", "", "", "")
	preflist.AddItemRightSwitch("multisort", False, "Multi Sort", "", "", "")
	'
	'
	crud.SetData("preflist", preflist.Records)
	
End Sub

Sub dialogcont(parentid As String)
	Dim cont As VueElement = vuetify.AddContainer(Me, parentid, "dialogx", True)
	cont.AddRows2.AddColumns2x6
	cont.BuildGrid
	'
	Dim focuson As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,1), "bfocuson", "builder.focuson", "Focus On", Null)
	focuson.HideDetails = True
	crud.BindVueElement(focuson)
	'
	Dim displayfield As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,2), "bdisplayfield", "builder.displayfield", "Display Field", Null)
	displayfield.HideDetails = True
	crud.BindVueElement(displayfield)
	'
	Dim diagwidth As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(2,1), "bdiagwidth", "builder.diagwidth", "Dialog Width", Null)
	diagwidth.HideDetails = True
	crud.BindVueElement(diagwidth)
	'
	Dim diagFullScreenOnMobile As VueElement = vuetify.AddSwitch(Me, cont.MatrixID(2,2), "bfullscreen", "builder.fullscreen", _
	"Full Screen on Mobile", "Yes", "No", "success", False, Null)
	diagFullScreenOnMobile.HideDetails = True
	crud.BindVueElement(diagFullScreenOnMobile)
	
End Sub

Sub crudtbcont(parentid As String)
	Dim cont As VueElement = vuetify.AddContainer(Me, parentid, "tbschema", True)
	cont.AddRows3.AddColumns2x6
	cont.AddRows1.AddColumns12
	cont.BuildGrid
	'
	Dim tblname As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,1), "btblname", "builder.tablename", "Table Name", Null)
	tblname.HideDetails = True
	crud.BindVueElement(tblname)
	'
	Dim compname As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(1,2), "bcompname", "builder.componentname", "Component Name", Null)
	compname.HideDetails = True
	crud.BindVueElement(compname)
	'
	Dim singular As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(2,1), "bsingular", "builder.singular", "Singular Name", Null)
	singular.HideDetails = True
	crud.BindVueElement(singular)
	'
	Dim plural As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(2,2), "bplural", "builder.plural", "Plural Name", Null)
	plural.HideDetails = True
	crud.BindVueElement(plural)
	'
	Dim primary As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(3,1), "bprimary", "builder.primarykey", "Primary Key", Null)
	primary.HideDetails = True
	crud.BindVueElement(primary)
	'
	Dim auto As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(3,2), "bauto", "builder.autoincrement", "Auto Increment", Null)
	auto.HideDetails = True
	crud.BindVueElement(auto)
	
	tablecrud = vuetify.AddDataTable(Me, cont.MatrixID(4,1), "tablecrud")
	tablecrud.Title = "Fields"
	tablecrud.ItemKey = "fieldname"
	tablecrud.Dense = True
	tablecrud.MustSort = True
	tablecrud.MultiSort = True	
	tablecrud.ItemsPerPage = 50
	tablecrud.AddSpacer
	tablecrud.AddSearch
	tablecrud.AddDivider
	tablecrud.AddNew(crud)
	tablecrud.AddDivider
	tablecrud.AddClearSort(crud)
	tablecrud.AddDivider
	tablecrud.AddFilter(crud, "primary--text")	
	tablecrud.AddDivider
	tablecrud.AddButtonIcon(crud, "btnEditable1", "mdi-briefcase-edit", "green")
	tablecrud.AddDivider
	tablecrud.AddButtonIcon(crud, "btnSwitches1", "mdi-electric-switch", "orange")
	tablecrud.AddDivider
	tablecrud.AddButtonIcon(crud, "btnRelationships1", "mdi-transit-connection", "purple")
	tablecrud.AddDivider
	tablecrud.AddClearFilter(crud)
	'
	tablecrud.AddColumn("fieldname", "Field Name")
	tablecrud.SetTextField("fieldname", False)
	tablecrud.AddColumn("title", "Title")
	tablecrud.SetTextField("title", False)
	tablecrud.AddColumn("vmodel", "VModel")
	tablecrud.SetTextField("vmodel", False)
	tablecrud.AddColumn("defaultvalue", "Default")
	tablecrud.SetTextField("defaultvalue", False)
	tablecrud.AddNumberColumn("maxlen", "Max Len","0")
	tablecrud.SetTextField("maxlen", False)
	tablecrud.AddColumn("datatype", "Data Type")
	tablecrud.AddColumn("componenttype", "Component Type")
	tablecrud.AddColumn("columntype", "Column Type")
	tablecrud.AddNumberColumn("rowpos", "Row","0")
	tablecrud.SetTextField("rowpos", False)
	tablecrud.AddNumberColumn("columnpos", "Column","0")
	tablecrud.SetTextField("columnpos", False)
	tablecrud.AddSwitch("active", "Active")
	tablecrud.AddSwitch("ontable", "On Table")
	'
	tablecrud.AddNumberColumn("width", "Width","0")
	tablecrud.SetTextField("width", False)
	tablecrud.AddNumberColumn("height", "Height","0")
	tablecrud.SetTextField("height", False)
	tablecrud.AddColumn("alt", "Alt")
	tablecrud.SetTextField("alt", False)
	tablecrud.AddColumn("lazysrc", "Lazy Src")
	tablecrud.SetTextField("lazysrc", False)
	tablecrud.AddColumn("yesvalue", "Yes Value")
	tablecrud.SetTextField("yesvalue", False)
	tablecrud.AddColumn("novalue", "No Value")
	tablecrud.SetTextField("novalue", False)
	tablecrud.AddNumberColumn("avatarsize", "Avatar Size","0")
	tablecrud.SetTextField("avatarsize", False)
	
	tablecrud.AddColumn("datasource", "Data Source")
	tablecrud.SetTextField("datasource", False)
	tablecrud.AddColumn("key", "Key")
	tablecrud.SetTextField("key", False)
	tablecrud.AddColumn("value", "Value")
	tablecrud.SetTextField("value", False)
	'
	tablecrud.AddSwitch("hidedetails", "Hide Details")
	tablecrud.AddSwitch("dense", "Dense")
	tablecrud.AddSwitch("clearable", "Clearable")
	tablecrud.AddSwitch("autofocus", "Auto Focus")
	tablecrud.AddSwitch("filled", "Filled")
	tablecrud.AddSwitch("shaped", "Shaped")
	tablecrud.AddSwitch("required", "Required")
	tablecrud.AddSwitch("readonly", "Read Only")
	tablecrud.AddSwitch("disabled", "Disabled")
	tablecrud.AddSwitch("outlined", "Outlined")
	tablecrud.AddSwitch("rounded", "Rounded")
	tablecrud.AddSwitch("hidden", "Hidden")
	tablecrud.AddSwitch("filter", "Filter")
	tablecrud.AddSwitch("sorted", "Sort")
	tablecrud.AddSwitch("rowdisplay", "Row Display")
	tablecrud.AddSwitch("inset", "Inset")
	tablecrud.AddSwitch("multiple", "Multiple")
	tablecrud.AddSwitch("returnobject", "Return Object")
	tablecrud.AddEdit
	tablecrud.AddDelete
	tablecrud.AddClone
	tablecrud.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)
	tablecrud.SetIconDimensions("delete", "", vuetify.COLOR_RED)
	tablecrud.SetIconDimensions("clone", "", vuetify.COLOR_AMBER)
	'
	crud.BindVueTable(tablecrud)
End Sub

Sub DrawerField(parentID As String)
	vuetify.SetData("field", vuetify.NewMap)
	Dim fldfieldname As VueElement = vuetify.AddTextField1(Me, parentID, "fldfieldname", "field.fieldname", "Field Name", Null)
	fldfieldname.HideDetails = True
	fldfieldname.MA = 2
	fldfieldname.Outlined = True
	fldfieldname.Dense = True
	vuetify.BindVueElement(fldfieldname)
	'
	Dim fldtitle As VueElement = vuetify.AddTextField1(Me, parentID, "fldtitle", "field.title", "Title", Null)
	fldtitle.HideDetails = True
	fldtitle.MA = 2
	fldtitle.Outlined = True
	fldtitle.Dense = True
	vuetify.BindVueElement(fldtitle)
	'
	Dim fldvmodel As VueElement = vuetify.AddTextField1(Me, parentID, "fldvmodel", "field.vmodel", "VModel", Null)
	fldvmodel.HideDetails = True
	fldvmodel.MA = 2
	fldvmodel.Outlined = True
	fldvmodel.Dense = True
	vuetify.BindVueElement(fldvmodel)
	'
	Dim flddatatype As VueElement = vuetify.AddAutoComplete1(Me, parentID, "flddatatype", "field.datatype", "Data Type", "datatypes", "id", "text", False, False)
	flddatatype.HideDetails = True
	flddatatype.MA = 2
	flddatatype.Outlined = True
	flddatatype.Dense = True
	vuetify.BindVueElement(flddatatype)
	Dim datatypes As List = vuetify.NewList
	datatypes.Add(CreateMap("id":"string", "text":"String"))
	datatypes.Add(CreateMap("id":"double", "text":"Double"))
	datatypes.Add(CreateMap("id":"int","text":"Integer"))
	datatypes.Add(CreateMap("id":"blob", "text":"Blob"))
	vuetify.SetData("datatypes", datatypes)
	'
	Dim fldcomponenttype As VueElement = vuetify.AddAutoComplete1(Me, parentID, "fldcomponenttype", "field.componenttype", "Component Type", "componenttypes", "id", "text", False, False)
	fldcomponenttype.HideDetails = True
	fldcomponenttype.MA = 2
	fldcomponenttype.Outlined = True
	fldcomponenttype.Dense = True
	vuetify.BindVueElement(fldcomponenttype)
	Dim componenttypes As List = vuetify.NewList
	componenttypes.AddAll(Array("Paragraph", "H6", "H1", "H2", "H3", "H4", "H5"))
	componenttypes.AddAll(Array("TextField", "TextArea", "TimePicker", "DatePicker", "FileInput"))
	componenttypes.AddAll(Array("Password", "ComboBox", "AutoComplete", "Select", "Avatar", "Avatar1", "CheckBox"))
	componenttypes.AddAll(Array("Switch", "RadioGroup", "Image", "Image1"))
	componenttypes.Sort(True)
	Dim componenttypes1 As List = vuetify.ListToDataSource("id", "text", componenttypes)
	vuetify.SetData("componenttypes", componenttypes1)
	'
	Dim fldcolumntype As VueElement = vuetify.AddAutoComplete1(Me, parentID, "fldcolumntype", "field.columntype", "Column Type", "columntypes", "id", "text", False, False)
	fldcolumntype.HideDetails = True
	fldcolumntype.MA = 2
	fldcolumntype.Outlined = True
	fldcolumntype.Dense = True
	vuetify.BindVueElement(fldcolumntype)
	Dim columntypes As List = vuetify.NewList
	columntypes.AddAll(Array("Normal", "TextArea", "TextField", "IconView", "Chip", "Switch", "Action", "Image"))
	columntypes.AddAll(Array("CheckBox", "Time", "Money", "AvatarImg", "Rating", "ProgressCircular", "ProgressLinear"))
	columntypes.AddAll(Array("DateColumn", "DateTimeColumn", "NumberColumn", "ButtonColumn", "LinkColumn"))
	columntypes.Sort(True)
	Dim columntypes1 As List = vuetify.ListToDataSource("id", "text", columntypes)
	vuetify.SetData("columntypes", columntypes1)
	'
	Dim contRC As VueElement = vuetify.AddDiv(Me, parentID, "rowcolpositions")
	contRC.MX = 2
	contRC.AddRows1.AddColumns2x6
	contRC.BuildGrid
	
	Dim fldrowpos As VueElement = vuetify.AddTextField1(Me, contRC.MatrixID(1,1), "fldrowpos", "field.rowpos", "Row Pos", Null)
	fldrowpos.HideDetails = True
	fldrowpos.Outlined = True
	fldrowpos.Dense = True
	vuetify.BindVueElement(fldrowpos)
	'
	Dim fldcolumnpos As VueElement = vuetify.AddTextField1(Me, contRC.MatrixID(1,2), "fldcolumnpos", "field.columnpos", "Column Pos", Null)
	fldcolumnpos.HideDetails = True
	fldcolumnpos.Outlined = True
	fldcolumnpos.Dense = True
	vuetify.BindVueElement(fldcolumnpos)
	
	'
	Dim flddefaultvalue As VueElement = vuetify.AddTextField1(Me, parentID, "flddefaultvalue", "field.defaultvalue", "Default Value", Null)
	flddefaultvalue.HideDetails = True
	flddefaultvalue.MA = 2
	flddefaultvalue.Outlined = True
	flddefaultvalue.Dense = True
	vuetify.BindVueElement(flddefaultvalue)
	
	Dim contRC1 As VueElement = vuetify.AddDiv(Me, parentID, "widthheight")
	contRC1.MX = 2
	contRC1.AddRows1.AddColumns2x6
	contRC1.BuildGrid
	'
	Dim fldwidth As VueElement = vuetify.AddTextField1(Me, contRC1.MatrixID(1,1), "fldwidth", "field.width", "Width", Null)
	fldwidth.HideDetails = True
	fldwidth.Outlined = True
	fldwidth.Dense = True
	vuetify.BindVueElement(fldwidth)
	'
	Dim fldheight As VueElement = vuetify.AddTextField1(Me, contRC1.MatrixID(1,2), "fldheight", "field.height", "Height", Null)
	fldheight.HideDetails = True
	fldheight.Outlined = True
	fldheight.Dense = True
	vuetify.BindVueElement(fldheight)
	'
	Dim fldAlt As VueElement = vuetify.AddTextField1(Me, parentID, "fldAlt", "field.alt", "Alt", Null)
	fldAlt.HideDetails = True
	fldAlt.MA = 2
	fldAlt.Outlined = True
	fldAlt.Dense = True
	vuetify.BindVueElement(fldAlt)
	'
	Dim fldlazysrc As VueElement = vuetify.AddTextField1(Me, parentID, "fldlazysrc", "field.lazysrc", "Lazy Src", Null)
	fldlazysrc.HideDetails = True
	fldlazysrc.MA = 2
	fldlazysrc.Outlined = True
	fldlazysrc.Dense = True
	vuetify.BindVueElement(fldlazysrc)
	'
	Dim contRC2 As VueElement = vuetify.AddDiv(Me, parentID, "yesno")
	contRC2.MX = 2
	contRC2.AddRows1.AddColumns2x6
	contRC2.BuildGrid
	
	Dim fldyesvalue As VueElement = vuetify.AddTextField1(Me, contRC2.MatrixID(1,1), "fldyesvalue", "field.yesvalue", "Yes Value", Null)
	fldyesvalue.HideDetails = True
	fldyesvalue.Outlined = True
	fldyesvalue.Dense = True
	vuetify.BindVueElement(fldyesvalue)
	'
	Dim fldnovalue As VueElement = vuetify.AddTextField1(Me, contRC2.MatrixID(1,2), "fldnovalue", "field.novalue", "No Value", Null)
	fldnovalue.HideDetails = True
	fldnovalue.Outlined = True
	fldnovalue.Dense = True
	vuetify.BindVueElement(fldnovalue)
	'
	Dim contRC3 As VueElement = vuetify.AddDiv(Me, parentID, "sizes")
	contRC3.MX = 2
	contRC3.AddRows1.AddColumns2x6
	contRC3.BuildGrid
	
	Dim fldavatarsize As VueElement = vuetify.AddTextField1(Me, contRC3.MatrixID(1,1), "fldavatarsize", "field.avatarsize", "Avatar Size", Null)
	fldavatarsize.HideDetails = True
	fldavatarsize.Outlined = True
	fldavatarsize.Dense = True
	vuetify.BindVueElement(fldavatarsize)
	'
	Dim fldmaxlen As VueElement = vuetify.AddTextField1(Me, contRC3.MatrixID(1,2), "fldmaxlen", "field.maxlen", "Max Len", Null)
	fldmaxlen.HideDetails = True
	fldmaxlen.Outlined = True
	fldmaxlen.Dense = True
	vuetify.BindVueElement(fldmaxlen)
	'
	Dim flddatasource As VueElement = vuetify.AddTextField1(Me, parentID, "flddatasource", "field.datasource", "Data Source", Null)
	flddatasource.HideDetails = True
	flddatasource.MA = 2
	flddatasource.Outlined = True
	flddatasource.Dense = True
	vuetify.BindVueElement(flddatasource)
	'
	Dim fldkey As VueElement = vuetify.AddTextField1(Me, parentID, "fldkey", "field.key", "Key", Null)
	fldkey.HideDetails = True
	fldkey.MA = 2
	fldkey.Outlined = True
	fldkey.Dense = True
	vuetify.BindVueElement(fldkey)
	'
	Dim fldvalue As VueElement = vuetify.AddTextField1(Me, parentID, "fldvalue", "field.value", "Value", Null)
	fldvalue.HideDetails = True
	fldvalue.MA = 2
	fldvalue.Outlined = True
	fldvalue.Dense = True
	vuetify.BindVueElement(fldvalue)
	
	Dim contRC5 As VueElement = vuetify.AddDiv(Me, parentID, "choices")
	contRC5.MX = 2
	contRC5.AddRows10.AddColumns2x6
	contRC5.BuildGrid
	'
	Dim fldActive As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldactive", "field.active", "Active", "Yes", "No", "", Null)
	fldActive.HideDetails = True
	fldActive.MA = 0
	vuetify.BindVueElement(fldActive)
	'
	Dim fldontable As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldontable", "field.ontable", "On Table", "Yes", "No", "", Null)
	fldontable.HideDetails = True
	fldontable.MA = 0
	vuetify.BindVueElement(fldontable)
		
	Dim fldhidedetails As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldhidedetails", "field.hidedetails", "Hide Details", "Yes", "No", "", Null)
	fldhidedetails.HideDetails = True
	fldhidedetails.MA = 0
	vuetify.BindVueElement(fldhidedetails)
	'
	Dim flddense As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "flddense", "field.dense", "Dense", "Yes", "No", "", Null)
	flddense.HideDetails = True
	flddense.MA = 0
	vuetify.BindVueElement(flddense)
	'
	Dim fldclearable As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldclearable", "field.clearable", "Clearable", "Yes", "No", "", Null)
	fldclearable.HideDetails = True
	fldclearable.MA = 0
	vuetify.BindVueElement(fldclearable)
	'
	Dim fldautofocus As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldautofocus", "field.autofocus", "Auto Focus", "Yes", "No", "", Null)
	fldautofocus.HideDetails = True
	fldautofocus.MA = 0
	vuetify.BindVueElement(fldautofocus)
	'
	Dim fldfilled As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldfilled", "field.filled", "Filled", "Yes", "No", "", Null)
	fldfilled.HideDetails = True
	fldfilled.MA = 0
	vuetify.BindVueElement(fldfilled)
	'
	Dim fldshaped As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldshaped", "field.shaped", "Shaped", "Yes", "No", "", Null)
	fldshaped.HideDetails = True
	fldshaped.MA = 0
	vuetify.BindVueElement(fldshaped)
	'
	Dim fldrequired As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldrequired", "field.required", "Required", "Yes", "No", "", Null)
	fldrequired.HideDetails = True
	fldrequired.MA = 0
	vuetify.BindVueElement(fldrequired)
	'
	Dim fldreadonly As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldreadonly", "field.readonly", "Read Only", "Yes", "No", "", Null)
	fldreadonly.HideDetails = True
	fldreadonly.MA = 0
	vuetify.BindVueElement(fldreadonly)
	'
	Dim flddisabled As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "flddisabled", "field.disabled", "Disabled", "Yes", "No", "", Null)
	flddisabled.HideDetails = True
	flddisabled.MA = 0
	vuetify.BindVueElement(flddisabled)	
	'
	Dim fldoutlined As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldoutlined", "field.outlined", "Outlined", "Yes", "No", "", Null)
	fldoutlined.HideDetails = True
	fldoutlined.MA = 0
	vuetify.BindVueElement(fldoutlined)
	'
	Dim fldrounded As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldrounded", "field.rounded", "Rounded", "Yes", "No", "", Null)
	fldrounded.HideDetails = True
	fldrounded.MA = 0
	vuetify.BindVueElement(fldrounded)
	'
	Dim fldHidden As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldhidden", "field.hidden", "Hidden", "Yes", "No", "", Null)
	fldHidden.HideDetails = True
	fldHidden.MA = 0
	vuetify.BindVueElement(fldHidden)
	'
	Dim fldfilter As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldfilter", "field.filter", "Filter", "Yes", "No", "", Null)
	fldfilter.HideDetails = True
	fldfilter.MA = 0
	vuetify.BindVueElement(fldfilter)
	'
	Dim fldsorted As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldsorted", "field.sorted", "Sorted", "Yes", "No", "", Null)
	fldsorted.HideDetails = True
	fldsorted.MA = 0
	vuetify.BindVueElement(fldsorted)
	'
	Dim fldrowdisplay As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldrowdisplay", "field.rowdisplay", "Row Display", "Yes", "No", "", Null)
	fldrowdisplay.HideDetails = True
	fldrowdisplay.MA = 0
	vuetify.BindVueElement(fldrowdisplay)
	'
	Dim fldinset As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldinset", "field.inset", "Inset", "Yes", "No", "", Null)
	fldinset.HideDetails = True
	fldinset.MA =0
	vuetify.BindVueElement(fldinset)
	'
	Dim fldmultiple As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.NextRow,1), "fldmultiple", "field.multiple", "Multiple", "Yes", "No", "", Null)
	fldmultiple.HideDetails = True
	fldmultiple.MA = 0
	vuetify.BindVueElement(fldmultiple)
	'
	Dim fldreturnobject As VueElement = vuetify.AddCheckBox(Me, contRC5.MatrixID(contRC5.ThisRow,2), "fldreturnobject", "field.returnobject", "Return Object", "Yes", "No", "", Null)
	fldreturnobject.HideDetails = True
	fldreturnobject.MA = 0
	vuetify.BindVueElement(fldreturnobject)
	'
	Dim contRC4 As VueElement = vuetify.AddDiv(Me, parentID, "buttonsx")
	contRC4.MX = 2
	contRC4.AddRows1.AddColumns2x6
	contRC4.BuildGrid
	'
	Dim propcancel As VueElement = vuetify.AddButton1(Me, contRC4.MatrixID(1,2), "propcancel", "Cancel", Null)
	propcancel.Outlined = True
	propcancel.Color = vuetify.COLOR_ERROR
	propcancel.Block = True
	vuetify.BindVueElement(propcancel)
	'
	Dim propsave As VueElement = vuetify.AddButton1(Me, contRC4.MatrixID(1,1), "propsave", "Save", Null)
	propsave.Outlined = True
	propsave.Color = vuetify.COLOR_SUCCESS
	propsave.Block = True
	vuetify.BindVueElement(propsave)
End Sub

'close the drawer
Sub propcancel_click(e As BANanoEvent)
	vuetify.SetData("diagentry", False)
End Sub

'save the field
Sub propsave_click(e As BANanoEvent)
	Dim fld As Map = vuetify.GetData("field")
	Select Case Mode
	Case "A"	
		flds.Add(fld)
		tablecrud.Reload(crud, flds)
	End Select	
	banano.SetLocalStorage("fields", flds)
End Sub

'open the drawer
Sub tablecrud_add_click(e As BANanoEvent)				'ignoredeadcode
	Mode = "A"
	Dim fld As Map = CreateMap()
	fld.Put("datatype", "string")
	fld.Put("componenttype", "TextField")
	fld.Put("columntype", "TextField")
	fld.Put("rowpos", 1)
	fld.put("columnpos", 1)
	fld.Put("yesvalue", "Yes")
	fld.Put("novalue", "No")
	vuetify.SetData("field", fld)
	vuetify.SetData("diagentry", True)
End Sub


Private Sub tablecrud_clearsort_Click (e As BANanoEvent)		'ignoredeadcode
	tablecrud.ClearSort(crud)
End Sub

Private Sub tablecrud_clearfilter_click (e As BANanoEvent)			'ignoredeadcode
	tablecrud.ClearFilter(crud)
End Sub

Private Sub tablecrud_change (item As Map)				'ignoredeadcode
	banano.SetLocalStorage("fields", flds)
End Sub

Private Sub tablecrud_filter_click(e As BANanoEvent)		'ignoredeadcode
	tablecrud.ApplyFilter(crud)
End Sub

Sub tablecrud_Clone (item As Map)
	Dim sfieldname As String = item.Get("fieldname")
	sfieldname = sfieldname & "Copy"
	'copy the map
	Dim nm As Map = BANanoShared.CopyMap(item, Array("*"))
	nm.Put("fieldname", sfieldname)
	flds.Add(nm)
	tablecrud.Reload(crud, flds)
	banano.SetLocalStorage("fields", flds)
End Sub

Sub tablecrud_Edit (item As Map)
	Mode = "E"
	vuetify.SetData("field", item)
	vuetify.SetData("diagentry", True)
End Sub

Sub tablecrud_Delete (item As Map)
	Dim sfieldname As String = item.Get("fieldname")
	crud.SetData("fieldname", sfieldname)
	crud.ShowConfirm("deletefield", "Confirm Delete", $"Are you sure that you want to delete the field named '${sfieldname}'?"$, "Yes", "No")
End Sub

Sub tablecrud_SaveItem (item As Map)
	banano.SetLocalStorage("fields", flds)
End Sub

Private Sub tablecrud_CancelItem (item As Map)
End Sub

Private Sub tablecrud_OpenItem (item As Map)
End Sub

Private Sub tablecrud_CloseItem (item As Map)
End Sub

Private Sub tablecrud_ItemSelected (item As Map)
End Sub

Private Sub tablecrud_ClickRow (e As BANanoEvent)
End Sub

Sub cruddbcont(parentid As String)
	Dim cont As VueElement = vuetify.AddContainer(Me, parentid, "dbschema", True)
	cont.AddRows1.AddColumns12
	cont.AddRows2.AddColumns2x6
	cont.BuildGrid
	
	Dim databasetype As List = crud.NewList
	databasetype.Add(CreateMap("id":"mysql","text":"MySQL"))
	databasetype.Add(CreateMap("id":"mssql","text":"MSSQL"))
	databasetype.Add(CreateMap("id":"sqlite","text":"SQLite"))
	databasetype.Add(CreateMap("id":"indexeddb","text":"IndexedDB"))
	'define the db type
	crud.SetData("databasetype", databasetype)
	
	'add database type
	Dim dbtype As VueElement = vuetify.AddRadioGroup(Me, cont.MatrixID(1,1), "bdbtype", "builder.dbtype", "Database Type", True, False, "databasetype", "id", "text", "", Null, Null)
	dbtype.HideDetails = True
	crud.BindVueElement(dbtype)
	'
	Dim dbhostname As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(2,1), "bdbhost", "builder.hostname", "Host Name / IP Address", Null)
	dbhostname.HideDetails = True
	crud.BindVueElement(dbhostname)
	
	Dim dbname As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(2,2), "bdbname", "builder.databasename", "Database Name", Null)
	dbname.HideDetails = True
	crud.BindVueElement(dbname)
	'
	Dim username As VueElement = vuetify.AddTextField1(Me, cont.MatrixID(3,1), "busername", "builder.username", "Username", Null)
	username.HideDetails = True
	crud.BindVueElement(username)
	'
	Dim password As VueElement = vuetify.AddPassword1(Me, cont.MatrixID(3,2), "bpassword", "builder.password", "Password", 0, Null)
	password.HideDetails = True
	crud.BindVueElement(password)
End Sub