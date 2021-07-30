B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Input (B As Boolean)
#Event: Submit (e As BANanoEvent)
#Event: SubmitPrevent (e As BANanoEvent)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: AutoComplete, DisplayName: Auto Complete, FieldType: Boolean, DefaultValue: False, Description: AutoComplete

#DesignerProperty: Key: LazyValidation, DisplayName: LazyValidation, FieldType: Boolean, DefaultValue: True, Description: LazyValidation
#DesignerProperty: Key: RecordSource, DisplayName: Record Source*, FieldType: String, DefaultValue: , Description: Record Source/Table Name
#DesignerProperty: Key: Singular, DisplayName: Singular, FieldType: String, DefaultValue: , Description: Singular Name of Record
#DesignerProperty: Key: Plural, DisplayName: Plural, FieldType: String, DefaultValue: , Description: Plural Name of Records
#DesignerProperty: Key: PrimaryKey, DisplayName: Primary Key*, FieldType: String, DefaultValue: , Description: Primary Key Field Name
#DesignerProperty: Key: AutoIncrement, DisplayName: Auto Increment, FieldType: String, DefaultValue: , Description: Auto Increment Field Name
#DesignerProperty: Key: DisplayField, DisplayName: Delete Display Field, FieldType: String, DefaultValue: , Description: Field to show for deletes
#DesignerProperty: Key: FocusOn, DisplayName: FocusOn, FieldType: String, DefaultValue: , Description: Focus On Element When Opened

#DesignerProperty: Key: Clearable, DisplayName: Elements Clearable, FieldType: Boolean, DefaultValue: False, Description: Clearable
#DesignerProperty: Key: Dense, DisplayName: Elements Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: HideDetails, DisplayName: Elements Hide Details, FieldType: Boolean, DefaultValue: False, Description: Hide Details
#DesignerProperty: Key: Filled, DisplayName: Elements Filled, FieldType: Boolean, DefaultValue: False, Description: Filled
#DesignerProperty: Key: Outlined, DisplayName: Elements Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Elements Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded
#DesignerProperty: Key: Shaped, DisplayName: Elements Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped

#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: ShowGridDesign, DisplayName: ShowGridDesign, FieldType: Boolean, DefaultValue: True, Description: ShowGridDesign
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Private mClasses As String = "" 
	Private mStyles As String = "" 
	Private mAttributes As String = "" 
	Public VElement As VueElement 
	Private sDisabled As String
	Private bLazyValidation As Boolean
	Private sReadonly As String
	Private sVBind As String
	Private sVFor As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	Private sVShow As String
 	Private bDisabled As Boolean
	Private bReadonly As Boolean
	Private sRecordSource As String
	Private bAutoComplete As Boolean
	Private sAutoIncrement As String
	Private bClearable As Boolean
	Private bDense As Boolean
	Private sDisplayField As String
	Private bFilled As Boolean
	Private sFocusOn As String
	Private bHideDetails As Boolean
	Private bOutlined As Boolean
	Private sPlural As String
	Private sPrimaryKey As String
	Private bRounded As Boolean
	Private bShaped As Boolean
	Private sSingular As String
	Private bHidden As Boolean
	'
	Public Integers As List
	Public Strings As List
	Public Doubles As List
	Public Blobs As List
	Public Defaults As Map
	Public Filterable As List
	Public Sortable As List
	Public Fields As List
	Public DBSort As List
	Public OnPDF As List
	Public OnXLS As List
	Public OnTable As List
	'
	Private matrix As List
	Private matrixMap As Map
	Private bShowGridDesign As Boolean
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
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
	sDisabled = $"${mName}disabled"$
	sReadonly = $"${mName}readonly"$
	sVModel = $"${mName}vmodel"$
	sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bDisabled = Props.GetDefault("Disabled",False)
		bReadonly = Props.GetDefault("Readonly",False)
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		bLazyValidation = Props.GetDefault("LazyValidation", False)
		sVBind = Props.Get("VBind")
		sVIf = Props.Get("VIf")
		sVOn = Props.Get("VOn") 
		sRecordSource = Props.GetDefault("RecordSource", "")
		bAutoComplete = Props.GetDefault("AutoComplete", False)
		bAutoComplete = BANanoShared.parseBool(bAutoComplete)
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sAutoIncrement = Props.GetDefault("AutoIncrement", "")
		bClearable = Props.GetDefault("Clearable", False)
		bClearable = BANanoShared.parseBool(bClearable)
		bDense = Props.GetDefault("Dense", False)
		bDense = BANanoShared.parseBool(bDense)
		sDisplayField = Props.GetDefault("DisplayField", "")
		bFilled = Props.GetDefault("Filled", False)
		bFilled = BANanoShared.parseBool(bFilled)
		sFocusOn = Props.GetDefault("FocusOn", "")
		bHideDetails = Props.GetDefault("HideDetails", False)
		bHideDetails = BANanoShared.parseBool(bHideDetails)
		bOutlined = Props.GetDefault("Outlined", False)
		bOutlined = BANanoShared.parseBool(bOutlined)
		sPlural = Props.GetDefault("Plural", "")
		sPrimaryKey = Props.GetDefault("PrimaryKey", "")
		bRounded = Props.GetDefault("Rounded", False)
		bRounded = BANanoShared.parseBool(bRounded)
		bShaped = Props.GetDefault("Shaped", False)
		bShaped = BANanoShared.parseBool(bShaped)
		sSingular = Props.GetDefault("Singular", "")
		bShowGridDesign = Props.GetDefault("ShowGridDesign", False)
		bShowGridDesign = BANanoShared.parseBool(bShowGridDesign)
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-form ref="${mName}" id="${mName}"></v-form>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-form" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)

	VElement.AddAttr(":lazy-validation", bLazyValidation)
	
	VElement.AddAttr(":readonly", sReadonly)
	VElement.SetData(sReadonly, bReadonly)

	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("v-on", sVOn)	
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr("v-if", sVIf) 
	If bAutoComplete Then
		VElement.AddAttr("autocomplete", "on")
	Else
		VElement.AddAttr("autocomplete", "off")
	End If
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	VElement.SetData(sVModel, False)
	VElement.BindAllEvents
End Sub

'create the form
Sub CreateForm()
	'build the from from child fields
	Dim be As BANanoElement
	be.Initialize($"#${mName}"$)
	Integers.Initialize 
	Strings.Initialize 
	Doubles.Initialize 
	Blobs.Initialize 
	Filterable.Initialize 
	Sortable.Initialize 
	Fields.Initialize 
	matrix.Initialize
	matrixMap.Initialize 
	DBSort.Initialize 
	OnPDF.Initialize 
	OnXLS.Initialize 
	OnTable.Initialize 
	
	'loop through each child, build then grid definition
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
		
		'process only vfields
		If edt <> "vfield" Then Continue
		'
		BEForGrid(child)
	Next
	'build the grid
	BuildGrid
	'build the actual form
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
		
		'process only vfields
		If edt <> "vfield" Then Continue
		'
		BEToVueElement(child)
	Next
End Sub

private Sub BEForGrid(bc As BANanoElement)
	Dim bActive As String = bc.GetData("active")
	bActive = BANanoShared.parseBool(bActive)
	If bActive = False Then Return
	'
	Dim iRowPos As String = bc.GetData("rowpos")
	If BANano.IsNull(iRowPos) Then iRowPos = ""

	Dim iColPos As String = bc.GetData("colpos")
	If BANano.IsNull(iColPos) Then iColPos = ""
	'
	UpdateMatrix(iRowPos, iColPos)
End Sub

'update the grid matrix
private Sub UpdateMatrix(row As Int, col As Int)
	Dim scol As String = BANanoShared.PadRight(col, 2, "0")
	Dim srow As String = BANanoShared.PadRight(row, 2, "0")
	Dim skey As String = $"${srow}.${scol}"$
	matrix.Add(skey)
End Sub

'build the grid
private Sub BuildGrid
	'initialize the form
	Dim thisForm As VueElement
	thisForm.Initialize(mCallBack, mName, mName)
	thisForm.ShowGridDesign = bShowGridDesign
	
	matrixMap.Initialize 
	'sort the matrix
	matrix.Sort(True)
	For Each entryx As String In matrix
		Dim srow As String = BANanoShared.MvField(entryx, 1, ".")
		Dim scol As String = BANanoShared.MvField(entryx, 2, ".")
		'convert to integers
		srow = BANano.parseInt(srow)
		scol = BANano.parseInt(scol)
		If matrixMap.ContainsKey(srow) Then
			Dim lastCol As Int = matrixMap.Get(srow)
			lastCol = BANano.ParseInt(lastCol)
			If scol > lastCol Then
				matrixMap.Put(srow, scol)
			End If
		Else
			matrixMap.Put(srow, scol)	
		End If
	Next
	'
	For Each k As String In matrixMap.Keys
		Dim v As Int = matrixMap.Get(k)
		thisForm.AddRows1
		Select Case v
		Case 1
			'add columns12
			thisForm.AddColumns12
		Case 2
			'add columns2x6
			thisForm.AddColumns2x6
		Case 3
			'addcolumns3x4
			thisForm.AddColumns3x4
		Case 4
			'addcolumns4x3
			thisForm.AddColumns4x3
		Case 5
			thisForm.AddColumns5x2
		Case 6
			'addcolumns6x2
			thisForm.AddColumns6x2
		Case 7
			thisForm.AddColumns7x1
		Case 8
			thisForm.AddColumns8x1
		Case 9
			thisForm.AddColumns9x1
		Case 10
			thisForm.AddColumns10x1
		Case 11
			thisForm.AddColumns11x1
		Case 12
			'addcolumns12x1	
			thisForm.AddColumns12x1	
		End Select
	Next
	thisForm.BuildGrid
End Sub


Sub BEToVueElement(be As BANanoElement)
	Dim fBinding As Map = CreateMap()
	Dim fData As Map = CreateMap()
	
	Dim bActive As String = be.GetData("active")
	bActive = BANanoShared.parseBool(bActive)
	If bActive = False Then Return
	'
	Dim sComponentType As String = be.GetData("componenttype")
	If BANano.IsNull(sComponentType) Then sComponentType = ""
	'
	Dim ssVModel As String = be.GetData("vmodel")
	If BANano.IsNull(ssVModel) Then ssVModel = ""
	If ssVModel <> "" Then
		ssVModel = $"${sRecordSource}.${ssVModel}"$
	End If
	fBinding.Put("VModel", ssVModel)
	'
	Dim sName As String = be.GetData("name")
	If BANano.IsNull(sName) Then sName = ""
	
	'get the field name
	Dim sFieldName As String = be.GetData("fieldname")
	If BANano.IsNull(sFieldName) Then sFieldName = ""
	
	Dim sAlt As String = be.GetData("alt")
	If BANano.IsNull(sAlt) Then sAlt = ""
	If sAlt <> "" Then fBinding.Put("alt", sAlt)

	Dim bAutoFocus As String = be.GetData("autofocus")
	bAutoFocus = BANanoShared.parseBool(bAutoFocus)
	If bAutoFocus Then 
		fBinding.Put("Autofocus", True)
		setFocusOn(sName)
	End If
		
	Dim bAutoIncrement As String = be.GetData("autoincrement")
	bAutoIncrement = BANanoShared.parseBool(bAutoIncrement)
	If bAutoIncrement Then 
		setAutoIncrement(sFieldName)
	End If
	
	Dim sownsize As String = be.GetData("ownsize")
	If BANano.IsNull(sownsize) Then sownsize = ""

	Dim iColPos As String = be.GetData("colpos")
	If BANano.IsNull(iColPos) Then iColPos = ""

	Dim sColumnType As String = be.GetData("columntype")
	If BANano.IsNull(sColumnType) Then sColumnType = ""

	Dim sDataKey As String = be.GetData("datakey")
	If BANano.IsNull(sDataKey) Then sDataKey = ""
	
	Dim sDataSource As String = be.GetData("datasource")
	If BANano.IsNull(sDataSource) Then sDataSource = ""
	'If sDataSource <> "" Then 
	'	fBinding.Put("Items", sDataSource)
	'	fData.Put(sDataSource, VElement.NewList)
	'End If
	
	Dim sDataType As String = be.GetData("datatype")
	If BANano.IsNull(sDataType) Then sDataType = ""

	Dim sDataValue As String = be.GetData("datavalue")
	If BANano.IsNull(sDataValue) Then sDataValue = ""
	'
	Dim sItemValue As String = be.getdata("itemvalue")
	If BANano.IsNull(sItemValue) Then sItemValue = ""
	If sItemValue <> "" Then
		fBinding.Put("ItemValue", sItemValue)	
	End If
	'
	Dim sItemText As String = be.GetData("itemtext")
	If BANano.IsNull(sItemText) Then sItemText = ""
	If sItemText <> "" Then
		fBinding.Put("ItemText", sItemText)	
	End If
		
	Dim bDbSort As String = be.GetData("dbsort")
	bDbSort = BANanoShared.parseBool(bDbSort)
	If bDbSort Then 
		BANanoShared.ListAddIfNotBlank(DBSort, sFieldName)
	End If
	
	Dim sDefaultValue As String = be.GetData("defaultvalue")
	If BANano.IsNull(sDefaultValue) Then sDefaultValue = ""
	fData.Put(sVModel, sDefaultValue)

	Dim ssDisabled As String = be.GetData("disabled")
	ssDisabled = BANanoShared.parseBool(ssDisabled)
	fBinding.Put("Disabled", ssDisabled)	
	
	Dim sFalseValue As String = be.GetData("falsevalue")
	If BANano.IsNull(sFalseValue) Then sFalseValue = ""
	If sFalseValue <> "" Then
		fBinding.Put("FalseValue", sFalseValue)
	End If
	'
	Dim bFilterable As String = be.GetData("filterable")
	bFilterable = BANanoShared.parseBool(bFilterable)
	If bFilterable Then 
		BANanoShared.ListAddIfNotBlank(Filterable, sFieldName)
	End If
	
	Dim sHeight As String = be.GetData("height")
	If BANano.IsNull(sHeight) Then sHeight = ""
	If sHeight <> "" Then 
		fBinding.Put("Height", sHeight)
	End If

	Dim bInset As String = be.GetData("inset")
	bInset = BANanoShared.parseBool(bInset)
	If bInset Then 
		fBinding.Put("Inset", True)
	End If
	
	Dim sItemKeys As String = be.GetData("itemkeys")
	If BANano.IsNull(sItemKeys) Then sItemKeys = ""

	Dim sItemValues As String = be.GetData("itemvalues")
	If BANano.IsNull(sItemValues) Then sItemValues = ""

	Dim sLazySrc As String = be.GetData("lazysrc")
	If BANano.IsNull(sLazySrc) Then sLazySrc = ""
	
	Dim sListItemType As String = be.GetData("listitemtype")
	If BANano.IsNull(sListItemType) Then sListItemType = ""

	Dim iMaxLen As String = be.GetData("maxlen")
	If BANano.IsNull(iMaxLen) Then iMaxLen = ""
	If iMaxLen <> "0" Then
		iMaxLen = BANano.parseInt(iMaxLen)
		fBinding.Put("Counter", iMaxLen)
	End If

	Dim bMultiple As String = be.GetData("multiple")
	bMultiple = BANanoShared.parseBool(bMultiple)
	If bMultiple Then
		fBinding.Put("Multiple", True)
	End If
	
	Dim bOnDb As String = be.GetData("ondb")
	bOnDb = BANanoShared.parseBool(bOnDb)
	If bOnDb Then
		BANanoShared.ListAddIfNotBlank(Fields, sFieldName)
	End If
	
	Dim bOnPdf As String = be.GetData("onpdf")
	bOnPdf = BANanoShared.parseBool(bOnPdf)
	If bOnPdf Then
		BANanoShared.ListAddIfNotBlank(OnPDF, sFieldName)
	End If
	
	Dim bOnTable As String = be.GetData("ontable")
	bOnTable = BANanoShared.parseBool(bOnTable)
	If bOnTable Then
		BANanoShared.ListAddIfNotBlank(OnTable, sFieldName)
	End If
	
	Dim bOnXls As String = be.GetData("onxls")
	bOnXls = BANanoShared.parseBool(bOnXls)
	If bOnXls Then
		BANanoShared.ListAddIfNotBlank(OnXLS, sFieldName)
	End If
	
	Dim bPrimaryKey As String = be.GetData("primarykey")
	bPrimaryKey = BANanoShared.parseBool(bPrimaryKey)
	If bPrimaryKey Then
		setPrimaryKey(sFieldName)
	End If
	
	Dim ssReadonly As String = be.GetData("readonly")
	ssReadonly = BANanoShared.parseBool(ssReadonly)
	fBinding.Put("Readonly", ssReadonly)
	
	Dim bRequired As String = be.GetData("required")
	bRequired = BANanoShared.parseBool(bRequired)
	fBinding.Put("Required", bRequired)
	
	Dim bReturnObject As String = be.GetData("returnobject")
	bReturnObject = BANanoShared.parseBool(bReturnObject)
	fBinding.Put("ReturnObject", bReturnObject)
	
	Dim bRowDisplay As String = be.GetData("rowdisplay")
	bRowDisplay = BANanoShared.parseBool(bRowDisplay)
	If bRowDisplay Then
		fBinding.Put("Alignment", "row")
	End If
	
	Dim iRowPos As String = be.GetData("rowpos")
	If BANano.IsNull(iRowPos) Then iRowPos = ""

	Dim bSortable As String = be.GetData("sortable")
	bSortable = BANanoShared.parseBool(bSortable)
	If bSortable Then
		BANanoShared.ListAddIfNotBlank(Sortable, sFieldName)
	End If
	
	Dim sTitle As String = be.GetData("title")
	If BANano.IsNull(sTitle) Then sTitle = ""
	If sTitle <> "" Then
		fBinding.Put("Label", sTitle)
	End If

	Dim sTrueValue As String = be.GetData("truevalue")
	If BANano.IsNull(sTrueValue) Then sTrueValue = ""
	If sTrueValue <> "" Then
		fBinding.Put("TrueValue", sTrueValue)
	End If

	Dim bUseItems As String = be.GetData("useitems")
	bUseItems = BANanoShared.parseBool(bUseItems)
	'
	Dim sSrc As String = be.GetData("src")
	If BANano.IsNull(sSrc) Then sSrc = ""
	
	
	Dim sWidth As String = be.GetData("width")
	If BANano.IsNull(sWidth) Then sWidth = ""
	If sWidth <> "" Then
		fBinding.Put("Width", sWidth)
	End If
	'
	Dim sVisible As String = be.GetData("visible")
	sVisible = BANanoShared.parseBool(sVisible)
	fBinding.Put("Hidden", Not(sVisible))
	'
	Dim splaceholder As String = be.GetData("placeholder")
	If BANano.IsNull(splaceholder) Then splaceholder = ""
	If splaceholder <> "" Then
		fBinding.Put("Placeholder", splaceholder)
	End If
	
	Dim shint As String = be.GetData("hint")
	If BANano.IsNull(shint) Then shint = ""
	If shint <> "" Then
		fBinding.Put("Hint", shint)
	End If
	'
	Dim bLoremIpsum As Boolean = be.GetData("loremipsum")
	bLoremIpsum = BANanoShared.parseBool(bLoremIpsum)
	If bLoremIpsum Then
		fBinding.put("LoremIpsum", True)
	End If
	'
	Dim sMaxValue As String = be.GetData("maxvalue")
	If BANano.IsNull(sMaxValue) Then sMaxValue = ""
	
	Dim sMinValue As String = be.GetData("minvalue")
	If BANano.IsNull(sMinValue) Then sMinValue = ""
	
	Dim bChips As Boolean = be.GetData("chips")
	If BANano.IsNull(bChips) Then bChips = False
	
	Dim ssize As String = be.GetData("size")
	If BANano.IsNull(ssize) Then ssize = ""
	'
	Dim mparent As BANanoElement
	mparent.Initialize($"#${mName}r${iRowPos}c${iColPos}"$)
	'
	Dim sIconName As String = be.GetData("iconname")
	If BANano.IsNull(sIconName) Then sIconName = ""
		
	If bFilled Then
		fBinding.Put("Filled", True)
	End If
	If bDense Then
		fBinding.Put("Dense", True)
	End If
	If bClearable Then
		fBinding.Put("Clearable", True)
	End If
	If bHideDetails Then
		fBinding.Put("HideDetails", True)
	End If
	If bOutlined Then
		fBinding.Put("Outlined", True)
	End If
	If bRounded Then
		fBinding.Put("Rounded", True)
	End If
	If bShaped Then
		fBinding.Put("Shaped", True)
	End If
	'
	'process the component type
	Select Case sComponentType
	Case "Icon"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("Height")
		fBinding.remove("Width")
		fBinding.Remove("ReturnObject")
		fBinding.Put("Size1", ssize)
		fBinding.Put("Position", "none")
		fBinding.Put("Caption", sIconName)
		If sownsize <> "" Then
			fBinding.Remove("Size1")
			fBinding.Put("Size", sownsize)
		End If
		Dim icn As VIcon
		icn.Initialize(mCallBack, sName, sName)
		icn.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(icn.VElement)
	Case "Button"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		
	Case "FAB"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("Height")
		fBinding.remove("Width")
		fBinding.Remove("ReturnObject")
		fBinding.Put("Size", ssize)
		fBinding.Put("IconName", sIconName)
		fBinding.Put("Position", "normal")
		If sownsize <> "" Then
			fBinding.Put("Size", sownsize)
		End If
		Dim fab As VFAB
		fab.Initialize(mCallBack, sName, sName)
		fab.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(fab.VElement)
	Case "Chip"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("Label")
		fBinding.Put("Text", sTitle)
		fBinding.Put("Value", "")
		fBinding.Put("Size", ssize)
		If sSrc <> "" Then
			fBinding.Put("Avatar", sSrc)
			fBinding.Put("ItemType", "avatar-left")
		End If
		'
		If bUseItems Then
			fBinding.Remove("Text")
			fBinding.Remove("Value")
			fBinding.Remove("Avatar")
			fBinding.Put("ItemType", "text")
			fBinding.Put("ItemKeys", sItemKeys)
			fBinding.Put("ItemTexts", sItemValues)
		End If
		
		Dim chp As VChip
		chp.Initialize(mCallBack, sName, sName)
		chp.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(chp.VElement)	
	Case "P", "H6", "H1", "H2", "H3", "H4", "H5", "span", "div"
		fBinding.Put("Caption", sTitle)
		fBinding.Put("Size", sComponentType.tolowercase)
		fBinding.Remove("ReturnObject") 
		Dim lbl As VLabel
		lbl.Initialize(mCallBack, sName, sName)
		lbl.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(lbl.VElement)
	Case "TextField"
		fBinding.Put("TypeOf", "text")
		fBinding.Remove("ReturnObject")
		fBinding.Put("AutoComplete", "off")
		Dim txtField As VTextField
		txtField.Initialize(mCallBack, sName, sName)
		txtField.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtField.VElement)
	Case "TextArea"
		fBinding.Put("TypeOf", "text")
		fBinding.Put("TextArea", True)
		fBinding.Put("AutoGrow", True)
		fBinding.Remove("ReturnObject")
		fBinding.Put("AutoComplete", "off")
		Dim txtFieldA As VTextField
		txtFieldA.Initialize(mCallBack, sName, sName)
		txtFieldA.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtFieldA.VElement)
	Case "TimePicker"
		fBinding.Put("TimePicker", True)
		fBinding.Remove("ReturnObject")
		Dim txtTP As VTextField
		txtTP.Initialize(mCallBack, sName, sName)
		txtTP.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtTP.VElement)
	Case "DatePicker"
		fBinding.Put("DatePicker", True)
		fBinding.Remove("ReturnObject")
		Dim txtD As VTextField
		txtD.Initialize(mCallBack, sName, sName)
		txtD.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtD.VElement)
	Case "FileInput"
		fBinding.Remove("ReturnObject")
		fBinding.Put("TypeOf", "file")
		fBinding.Put("Chips", bChips)
		Dim fi As VFileInput
		fi.Initialize(mCallBack, sName, sName)
		fi.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(fi.VElement)
	Case "FileInputImage"
		fBinding.Remove("ReturnObject")
		fBinding.Put("IsGoogle", True)
		fData.Put($"${sName}filehidden"$, False)
		fBinding.Put("TypeOf", "file")
		Dim gfi As VFileInput
		gfi.Initialize(mCallBack, sName, sName)
		gfi.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(gfi.VElement)
	Case "Password"
		fBinding.Put("TypeOf", "password")
		fBinding.Put("ShowEyes", True)
		fBinding.Remove("ReturnObject")
		fBinding.Put("AutoComplete", "off")
		Dim txtP As VTextField
		txtP.Initialize(mCallBack, sName, sName)
		txtP.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtP.VElement)
	Case "ComboBox"
		If bUseItems Then
			fBinding.Put("ItemKeys", sItemKeys)
			fBinding.Put("ItemTitles", sItemValues)
		End If
		fBinding.Put("Chips", bChips)
		If bChips Then
			fBinding.Put("DeletableChips", True)
		End If
		Dim cbo As VComboBox
		cbo.Initialize(mCallBack, sName, sName)
		cbo.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(cbo.VElement)
	Case "AutoComplete"
		If bUseItems Then
			fBinding.Put("ItemKeys", sItemKeys)
			fBinding.Put("ItemTitles", sItemValues)
		End If
		fBinding.Put("Chips", bChips)
		If bChips Then
			fBinding.Put("DeletableChips", True)
		End If
		Dim ac As VAutoComplete
		ac.Initialize(mCallBack, sName, sName)
		ac.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(ac.VElement)
	Case "Select"
		If bUseItems Then
			fBinding.Put("ItemKeys", sItemKeys)
			fBinding.Put("ItemTitles", sItemValues)
		End If
		fBinding.Put("Chips", bChips)
		If bChips Then
			fBinding.Put("DeletableChips", True)
		End If
		Dim selx As VSelect
		selx.Initialize(mCallBack, sName, sName)
		selx.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(selx.VElement)
	Case "Avatar"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("ReturnObject")
		If sownsize <> "" Then
			fBinding.Put("Size", sownsize)
		End If
		fBinding.put("AvatarType", "image")
		If sSrc <> "" Then
			fBinding.Put("Image", sSrc)
		End If
		If ssVModel <> "" Then
			fBinding.Put("SrcBind", ssVModel)
		End If
		Dim avt As VAvatar
		avt.Initialize(mCallBack, sName, sName)
		avt.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(avt.VElement)
	Case "CheckBox"
		fBinding.Remove("ReturnObject")
		Dim chk As VCheckBox
		chk.Initialize(mCallBack, sName, sName)
		chk.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(chk.VElement)
	Case "Switch"
		fBinding.Remove("ReturnObject")
		Dim swt As VSwitch
		swt.Initialize(mCallBack, sName, sName)
		swt.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(swt.VElement)
	Case "RadioGroup"
		fBinding.Remove("ReturnObject")
		If bUseItems Then
			fBinding.Put("ItemKeys", sItemKeys)
			fBinding.Put("ItemTitles", sItemValues)
		End If
		Dim rg As VRadioGroup
		rg.Initialize(mCallBack, sName, sName)
		rg.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(rg.VElement)
	Case "Image"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("ReturnObject")
		fBinding.Put("MinHeight", sHeight)
		fBinding.Put("MinWidth", sWidth)
		If sSrc <> "" Then
			fBinding.Put("Src", sSrc)
		End If
		If sLazySrc <> "" Then
			fBinding.Put("LazySrc", sLazySrc)
		End If
		If ssVModel <> "" Then
			fBinding.Put("SrcBind", ssVModel)
		End If
		Dim img As VImg
		img.Initialize(mCallBack, sName, sName)
		img.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(img.VElement)
	Case "Telephone" , "Money", "Thousands"
		fBinding.Put("TypeOf", "tel")
		fBinding.Remove("ReturnObject")
		Dim txtT As VTextField
		txtT.Initialize(mCallBack, sName, sName)
		txtT.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtT.VElement)
	Case "Email"
		fBinding.Put("TypeOf", "email")
		fBinding.Remove("ReturnObject")
		Dim txtE As VTextField
		txtE.Initialize(mCallBack, sName, sName)
		txtE.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtE.VElement)
	Case "Slider"
		fBinding.Remove("ReturnObject")
		If sMinValue <> "" Then
			fBinding.put("MinValue", sMinValue)
		End If
		If sMaxValue <> "" Then
			fBinding.Put("MaxValue", sMaxValue)
		End If
		If sDefaultValue <> "" Then
			fBinding.Put("Value", sDefaultValue)
		End If
		fBinding.Put("ThumbLabel", True)
		Dim sld As VSlider
		sld.Initialize(mCallBack, sName, sName)
		sld.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(sld.VElement)
	Case "Website"
		fBinding.Put("TypeOf", "url")
		fBinding.Remove("ReturnObject")
		Dim txtW As VTextField
		txtW.Initialize(mCallBack, sName, sName)
		txtW.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(txtW.VElement)
	Case "Rating"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("ReturnObject")
		fBinding.Put("Length", iMaxLen)
		fBinding.Put("Size1", ssize)
		If sownsize <> "" Then
			fBinding.Put("Size", sownsize)
		End If
		Dim rat As VRating
		rat.Initialize(mCallBack, sName, sName)
		rat.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(rat.VElement)
	Case "ProgressCircular"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("ReturnObject")
		fBinding.Remove("Height")
		If ssVModel <> "" Then
			fBinding.Put("Caption", $"{{ ${ssVModel} }}%"$)
		End If
		If sDefaultValue <> "" Then
			fBinding.Put("Value", sDefaultValue)
		End If
		If sownsize <> "" Then
			fBinding.Put("Size", sownsize)
		End If
		If sSrc <> "" Then
			fBinding.Put("Avatar", sSrc)
		End If
		If sWidth <> "" Then
			fBinding.Put("Width", sWidth)
		End If
		Dim prgc As VProgressCircular
		prgc.Initialize(mCallBack, sName, sName)
		prgc.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(prgc.VElement)
	Case "ProgressLinear"
		fBinding.Remove("Outlined")
		fBinding.Remove("Rounded")
		fBinding.Remove("ReturnObject")
		If sHeight <> "" Then
			fBinding.Put("Height", sHeight)
		End If
		fBinding.Put("ShowCaption", True)
		fBinding.Put("Caption", "{{ Math.ceil(value) }}%")
		If sDefaultValue <> "" Then
			fBinding.Put("Value", sDefaultValue)
		End If
		Dim prg As VProgressLinear
		prg.Initialize(mCallBack, sName, sName)
		prg.DesignerCreateView(mparent, fBinding)
		VElement.BindVueElement(prg.VElement)
	End Select	
	'eastablish bindings
	For Each k As String In fData.Keys
		Dim v As Object = fData.Get(k)
		VElement.SetData(k, v)
	Next
	'remove the element
	be.Remove
End Sub


public Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

public Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VForm 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VForm 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VForm 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VForm 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadonly, vReadonly)
End Sub

'Update Visible
Sub UpdateVisible(VC As VueComponent, b As Boolean)
	VC.SetData(sVShow, b)
End Sub

'Update VModel
Sub SetValue(VC As VueComponent, vVModel As Object)
VC.SetData(sVModel, vVModel)
End Sub

'get value
Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
	Return res
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

'reset the form
Sub Reset(VC As VueComponent)
	SetValue(VC, True)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("reset", Null)
End Sub

'reset validation not state
Sub ResetValidation(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("resetValidation", Null)
End Sub

'validate the form
Sub Validate(VC As VueComponent) As Boolean
	Dim refs As BANanoObject = VC.refs
	Dim res As Boolean = refs.GetField(mName).runmethod("validate", Null).Result
	Return res
End Sub

Sub ValidateBlankOutMinusOne(VC As VueComponent) As Boolean
	BlankOutMinusOne(VC)
	Dim refs As BANanoObject = VC.refs
	Dim res As Boolean = refs.GetField(mName).runmethod("validate", Null).Result
	Return res
End Sub

'blank out -1, for validation
Sub BlankOutMinusOne(VC As VueComponent)
	If sRecordSource = "" Then Return
	Dim rec As Map = VC.GetData(sRecordSource)
	For Each k As String In rec.Keys
		Dim v As String = rec.Get(k)
		v = BANanoShared.CStr(v)
		If v = "-1" Then
			rec.Put(k, "")
		End If
	Next
	VC.SetData(sRecordSource, rec)
End Sub

'get the data of the form
Sub GetData(VC As VueComponent) As Map
	Dim m As Map = CreateMap()
	If sRecordSource = "" Then
		BANano.Throw($"VForm.${mName} - the RecordSource has not been specified!"$)
		Return m
	End If
	m = VC.GetData(sRecordSource)
	Return m
End Sub

'set the data of the form
Sub SetData(VC As VueComponent, rec As Map)
	If sRecordSource = "" Then
		BANano.Throw($"VForm.${mName} - the RecordSource has not been specified!"$)
		Return
	End If
	VC.SetData(sRecordSource, rec)
End Sub

Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		VC.SetCallBack(k, cb)
	Next
End Sub

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("d-sm-none d-md-flex")
End Sub
	
Sub HiddenMDOnly
	AddClass("d-md-none d-lg-flex")
End Sub
	
Sub HiddenLGOnly
	AddClass("d-lg-none d-xl-flex")
End Sub
	
Sub HiddenXLOnly
	AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
	
'End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
'Sub HiddenXLAndDown
	
'End Sub
'
'Sub HiddenXSAndUp
	
'End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
'Sub HiddenXLAndUp
	
'End Sub	

Sub HiddenOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("hidden-xs-only")
End Sub

Sub HideOnlyOnSM
	AddClass("d-sm-none d-md-flex")
End Sub

Sub HideOnlyOnMD
	AddClass("d-md-none d-lg-flex")
End Sub

Sub HideOnlyOnLG
	AddClass("d-lg-none d-xl-flex")
End Sub

Sub HideOnlyOnXL
	AddClass("d-xl-none")
End Sub

Sub VisibleOnAll
	AddClass("d-flex")
End Sub

Sub VisibleOnlyOnXS
	AddClass("d-flex d-sm-none")
End Sub

Sub VisibleOnlyOnSM
	AddClass("d-none d-sm-flex d-md-none")
End Sub

Sub VisibleOnlyOnMD
	AddClass("d-none d-md-flex d-lg-none")
End Sub

Sub VisibleOnlyOnLG
	AddClass("d-none d-lg-flex d-xl-none")
End Sub

Sub VisibleOnlyOnXL
	AddClass("d-none d-xl-flex")
End Sub

'get AutoIncrement
Sub getAutoIncrement As String
Return sAutoIncrement
End Sub

'set AutoIncrement
Sub setAutoIncrement(vAutoIncrement As String)
If BANano.IsNull(vAutoIncrement) Or BANano.IsUndefined(vAutoIncrement) Then Return
sAutoIncrement  = vAutoIncrement
End Sub

'get Clearable
Sub getClearable As Boolean
Return bClearable
End Sub

'set Clearable
Sub setClearable(vClearable As Boolean)
If BANano.IsNull(vClearable) Or BANano.IsUndefined(vClearable) Then Return
bClearable  = vClearable
End Sub

'get Dense
Sub getDense As Boolean
Return bDense
End Sub

'set Dense
Sub setDense(vDense As Boolean)
If BANano.IsNull(vDense) Or BANano.IsUndefined(vDense) Then Return
bDense  = vDense
End Sub

'get DisplayField
Sub getDisplayField As String
Return sDisplayField
End Sub

'set DisplayField
Sub setDisplayField(vDisplayField As String)
If BANano.IsNull(vDisplayField) Or BANano.IsUndefined(vDisplayField) Then Return
sDisplayField  = vDisplayField
End Sub

'get Filled
Sub getFilled As Boolean
Return bFilled
End Sub

'set Filled
Sub setFilled(vFilled As Boolean)
If BANano.IsNull(vFilled) Or BANano.IsUndefined(vFilled) Then Return
bFilled  = vFilled
End Sub

'get FocusOn
Sub getFocusOn As String
Return sFocusOn
End Sub

'set FocusOn
Sub setFocusOn(vFocusOn As String)
If BANano.IsNull(vFocusOn) Or BANano.IsUndefined(vFocusOn) Then Return
sFocusOn  = vFocusOn
End Sub

'get HideDetails
Sub getHideDetails As Boolean
Return bHideDetails
End Sub

'set HideDetails
Sub setHideDetails(vHideDetails As Boolean)
If BANano.IsNull(vHideDetails) Or BANano.IsUndefined(vHideDetails) Then Return
bHideDetails  = vHideDetails
End Sub

'get Outlined
Sub getOutlined As Boolean
Return bOutlined
End Sub

'set Outlined
Sub setOutlined(vOutlined As Boolean)
If BANano.IsNull(vOutlined) Or BANano.IsUndefined(vOutlined) Then Return
bOutlined  = vOutlined
End Sub

'get Plural
Sub getPlural As String
Return sPlural
End Sub

'set Plural
Sub setPlural(vPlural As String)
If BANano.IsNull(vPlural) Or BANano.IsUndefined(vPlural) Then Return
sPlural  = vPlural
End Sub

'get PrimaryKey
Sub getPrimaryKey As String
Return sPrimaryKey
End Sub

'set PrimaryKey
Sub setPrimaryKey(vPrimaryKey As String)
If BANano.IsNull(vPrimaryKey) Or BANano.IsUndefined(vPrimaryKey) Then Return
sPrimaryKey  = vPrimaryKey
End Sub

'get Rounded
Sub getRounded As Boolean
Return bRounded
End Sub

'set Rounded
Sub setRounded(vRounded As Boolean)
If BANano.IsNull(vRounded) Or BANano.IsUndefined(vRounded) Then Return
bRounded  = vRounded
End Sub

'get Shaped
Sub getShaped As Boolean
Return bShaped
End Sub

'set Shaped
Sub setShaped(vShaped As Boolean)
If BANano.IsNull(vShaped) Or BANano.IsUndefined(vShaped) Then Return
bShaped  = vShaped
End Sub

'get Singular
Sub getSingular As String
Return sSingular
End Sub

'set Singular
Sub setSingular(vSingular As String)
If BANano.IsNull(vSingular) Or BANano.IsUndefined(vSingular) Then Return
sSingular  = vSingular
End Sub
