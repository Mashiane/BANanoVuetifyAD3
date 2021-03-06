﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

#Event: Add_Click (e As BANanoEvent)
#Event: Save (item As Map)
#Event: Edit (item As Map)
#Event: Pdf (item As Map)
#Event: Delete (item As Map)
#Event: Print (item As Map)
#Event: Cancel (item As Map)
#Event: Change (item As Map)
#Event: Download (item As Map)
#Event: Menu (item As Map)
#Event: Clone (item As Map)
#Event: Refresh_Click (e As BANanoEvent)
#Event: Input (items As List)
#Event: PDF_Click (e As BANanoEvent)
#Event: ItemSelected (item As Map)
#Event: SaveItem (item As Map)
#Event: CancelItem (item As Map) 
#Event: OpenItem (item As Map)
#Event: CloseItem (item As Map)
#Event: ColumnName (item As Map)
#Event: ColumnName_Change (item As Map)

#Event: ClickRow (e As BANanoEvent)
#Event: CurrentItems(items As List)
#Event: DblClickRow (e As BANanoEvent)
#Event: ItemExpanded (item As Map)
#Event: ToggleSelectAll (e As BANanoEvent)

#Event: ClearSort_Click (e As BANanoEvent)
#Event: ClearFilter_Click (e As BANanoEvent)
#Event: FilterChange(e As BANanoEvent)
#Event: Filter_Click(e As BANanoEvent)
#Event: Back_Click (e As BANanoEvent)

#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue:  , Description: The title on the table
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Manual, DisplayName: Manual, FieldType: Boolean, DefaultValue: False, Description: Table created manually.
#DesignerProperty: Key: ItemKey, DisplayName: ItemKey, FieldType: String, DefaultValue:  , Description: The primary key of your records
#DesignerProperty: Key: ItemsPerPage, DisplayName: ItemsPerPage, FieldType: String, DefaultValue:  , Description: Number of items per page
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue:  False, Description: The table should be dense
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue:  False, Description: The table is dark
#DesignerProperty: Key: ShowSelect, DisplayName: ShowSelect, FieldType: Boolean, DefaultValue:  False, Description: Show select for all records
#DesignerProperty: Key: SingleSelect, DisplayName: SingleSelect, FieldType: Boolean, DefaultValue:  False, Description: Single selection mode
#DesignerProperty: Key: MultiSort, DisplayName: Multi Sort, FieldType: Boolean, DefaultValue:  False, Description: Can multi sort
#DesignerProperty: Key: MustSort, DisplayName: Must Sort, FieldType: Boolean, DefaultValue:  False, Description: Records must be sortable
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue:  False, Description: Show progress loading
#DesignerProperty: Key: ExternalPagination, DisplayName: ExternalPagination, FieldType: Boolean, DefaultValue:  True, Description: Use External Pagination
#DesignerProperty: Key: MaxPages, DisplayName: Total Visible, FieldType: String, DefaultValue:  5, Description: Total Visible
#DesignerProperty: Key: PageLength, DisplayName: Pager Length, FieldType: String, DefaultValue:  5, Description: Page Length
#DesignerProperty: Key: PaginationPosition, DisplayName: PaginationPosition, FieldType: String, DefaultValue:  bottom, Description: PaginationPosition, List: top|bottom|both 
'#DesignerProperty: Key: DateFormat, DisplayName: DateFormat, FieldType: String, DefaultValue: , Description: Date Format
'#DesignerProperty: Key: DateTimeFormat, DisplayName: DateTimeFormat, FieldType: String, DefaultValue: , Description: Date Time Format
'#DesignerProperty: Key: MoneyFormat, DisplayName: MoneyFormat, FieldType: String, DefaultValue: , Description: Money Format
'#DesignerProperty: Key: TimeFormat, DisplayName: TimeFormat, FieldType: String, DefaultValue: HH:MM, Description: Time Format
#DesignerProperty: Key: PreDisplay, DisplayName: PreDisplay (JSON), FieldType: String, DefaultValue: , Description: PreDisplay
#DesignerProperty: Key: ConditionalClass, DisplayName: ConditionalClass (JSON), FieldType: String, DefaultValue: , Description: ConditionalClass
#DesignerProperty: Key: ConditionalColor, DisplayName: ConditionalColor (JSON), FieldType: String, DefaultValue: , Description: ConditionalColor
#DesignerProperty: Key: ConditionalStyle, DisplayName: ConditionalStyle (JSON), FieldType: String, DefaultValue: , Description: ConditionalStyle

#DesignerProperty: Key: HasSearch, DisplayName: Has Search, FieldType: Boolean, DefaultValue:  False, Description: Have a search input box
#DesignerProperty: Key: HasAddnew, DisplayName: HasAddNew, FieldType: Boolean, DefaultValue: False, Description: Show Add new on toolbar
#DesignerProperty: Key: HasClearSort, DisplayName: HasClearSort, FieldType: Boolean, DefaultValue: False, Description: Show clear sort on toolbar
#DesignerProperty: Key: HasFilter, DisplayName: HasFilter, FieldType: Boolean, DefaultValue: False, Description: Show filter for columns
#DesignerProperty: Key: HasPdf, DisplayName: HasPdf, FieldType: Boolean, DefaultValue: False, Description: Show pdf button on toolbar
#DesignerProperty: Key: HasExcel, DisplayName: HasExcel, FieldType: Boolean, DefaultValue: False, Description: Show excel on toolbar
#DesignerProperty: Key: HasRefresh, DisplayName: HasRefresh, FieldType: Boolean, DefaultValue: False, Description: Show refresh on toolbar
#DesignerProperty: Key: HasBack, DisplayName: HasBack, FieldType: Boolean, DefaultValue: False, Description: Show back button on toolbar
'
#DesignerProperty: Key: HasEdit, DisplayName: HasEdit, FieldType: Boolean, DefaultValue: False, Description: Has Edit Column
#DesignerProperty: Key: EditColor, DisplayName: EditColor, FieldType: String, DefaultValue: green, Description: EditColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasDelete, DisplayName: HasDelete, FieldType: Boolean, DefaultValue: False, Description: Has Delete Column
#DesignerProperty: Key: DeleteColor, DisplayName: DeleteColor, FieldType: String, DefaultValue: red, Description: DeleteColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasClone, DisplayName: HasClone, FieldType: Boolean, DefaultValue: False, Description: Has Clone Column
#DesignerProperty: Key: CloneColor, DisplayName: CloneColor, FieldType: String, DefaultValue: amber, Description: CloneColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasPrint, DisplayName: HasPrint, FieldType: Boolean, DefaultValue: False, Description: Has Print Column
#DesignerProperty: Key: PrintColor, DisplayName: PrintColor, FieldType: String, DefaultValue: print, Description: PrintColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasSave, DisplayName: HasSave, FieldType: Boolean, DefaultValue: False, Description: Has Save Column
#DesignerProperty: Key: SaveColor, DisplayName: SaveColor, FieldType: String, DefaultValue: blue-grey, Description: SaveColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasCancel, DisplayName: HasCancel, FieldType: Boolean, DefaultValue: False, Description: Has Cancel Column
#DesignerProperty: Key: CancelColor, DisplayName: CancelColor, FieldType: String, DefaultValue: brown, Description: CancelColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasDownload, DisplayName: HasDownload, FieldType: Boolean, DefaultValue: False, Description: Has Download Column
#DesignerProperty: Key: DownloadColor, DisplayName: DownloadColor, FieldType: String, DefaultValue: cyan, Description: DownloadColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HasMenu, DisplayName: HasMenu, FieldType: Boolean, DefaultValue: False, Description: Has Menu Column
#DesignerProperty: Key: MenuColor, DisplayName: MenuColor, FieldType: String, DefaultValue: indigo, Description: MenuColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
'
#DesignerProperty: Key: ColumnFields, DisplayName: ColumnFields (;), FieldType: String, DefaultValue: , Description: Fields
#DesignerProperty: Key: ColumnTitles, DisplayName: ColumnTitles (;), FieldType: String, DefaultValue: , Description: Titles for fields
#DesignerProperty: Key: ColumnWidths, DisplayName: ColumnWidths (;), FieldType: String, DefaultValue: , Description: Widths
#DesignerProperty: Key: ColumIcons, DisplayName: ColumIcons (;), FieldType: String, DefaultValue: , Description: Icon Fields
#DesignerProperty: Key: ColumnAutoComplete, DisplayName: ColumnAutoComplete (;), FieldType: String, DefaultValue: , Description: Auto Complete Fields
#DesignerProperty: Key: ColumnAvatar, DisplayName: ColumnAvatar (;), FieldType: String, DefaultValue: , Description: Avatar Fields
#DesignerProperty: Key: ColumnAvatarText, DisplayName: ColumnAvatarText (;), FieldType: String, DefaultValue: , Description: Avatar Text Fields
#DesignerProperty: Key: ColumnAvatarIcon, DisplayName: ColumnAvatarIcon (;), FieldType: String, DefaultValue: , Description: Avatar Icon Fields
#DesignerProperty: Key: ColumnButton, DisplayName: ColumnButton (;), FieldType: String, DefaultValue: , Description: Button Fields
#DesignerProperty: Key: ColumnCheckbox, DisplayName: ColumnCheckbox (;), FieldType: String, DefaultValue: , Description: Checkbox Fields
#DesignerProperty: Key: ColumnChip, DisplayName: ColumnChip (;), FieldType: String, DefaultValue: , Description: Chip Fields
#DesignerProperty: Key: ColumnCircularProgress, DisplayName: ColumnCircularProgress (;), FieldType: String, DefaultValue: , Description: Circular Progress Fields
#DesignerProperty: Key: ColumnCombobox, DisplayName: ColumnCombobox (;), FieldType: String, DefaultValue: , Description: Combobox Fields
#DesignerProperty: Key: ColumnDate, DisplayName: ColumnDate (;), FieldType: String, DefaultValue: , Description: Date Fields
#DesignerProperty: Key: ColumnDateTime, DisplayName: ColumnDateTime (;), FieldType: String, DefaultValue: , Description: DateTime Fields
#DesignerProperty: Key: ColumnFileSize, DisplayName: ColumnFileSize (;), FieldType: String, DefaultValue: , Description: FileSize Fields
#DesignerProperty: Key: ColumnImage, DisplayName: ColumnImage (;), FieldType: String, DefaultValue: , Description: Image Fields
#DesignerProperty: Key: ColumnLinearProgress, DisplayName: ColumnLinearProgress (;), FieldType: String, DefaultValue: , Description: LinearProgress Fields
#DesignerProperty: Key: ColumnLink, DisplayName: ColumnLink (;), FieldType: String, DefaultValue: , Description: Link Fields
#DesignerProperty: Key: ColumnMoney, DisplayName: ColumnMoney (;), FieldType: String, DefaultValue: , Description: Money Fields
#DesignerProperty: Key: ColumnRating, DisplayName: ColumnRating (;), FieldType: String, DefaultValue: , Description: Rating Fields
#DesignerProperty: Key: ColumnSortable, DisplayName: ColumnSortable (;), FieldType: String, DefaultValue: , Description: Sortable Fields
#DesignerProperty: Key: ColumnFilterable, DisplayName: ColumnFilterable (;), FieldType: String, DefaultValue: , Description: Filterable Fields
#DesignerProperty: Key: ColumnSwitch, DisplayName: ColumnSwitch (;), FieldType: String, DefaultValue: , Description: Switch Fields
#DesignerProperty: Key: ColumnTextarea, DisplayName: ColumnTextarea (;), FieldType: String, DefaultValue: , Description: TextArea Fields
#DesignerProperty: Key: ColumnTextfield, DisplayName: ColumnTextfield (;), FieldType: String, DefaultValue: , Description: TextField Fields
#DesignerProperty: Key: ColumnTime, DisplayName: ColumnTime (;), FieldType: String, DefaultValue: , Description: Time Fields
'
#DesignerProperty: Key: ItemKeys, DisplayName: Action Keys (;), FieldType: String, DefaultValue:  , Description: Action Keys
#DesignerProperty: Key: ItemTitles, DisplayName: Action Titles (;), FieldType: String, DefaultValue:  , Description: Action Titles
#DesignerProperty: Key: ItemIcons, DisplayName: Action Icons (;), FieldType: String, DefaultValue:  , Description: Action Icons
#DesignerProperty: Key: ItemColors, DisplayName: Action Colors (;), FieldType: String, DefaultValue:  , Description: Action Colors

#DesignerProperty: Key: FixedHeader, DisplayName: Fixed Header, FieldType: Boolean, DefaultValue:  True, Description: 
#DesignerProperty: Key: HideDefaultHeader, DisplayName: Hide Default Header, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: HideDefaultFooter, DisplayName: Hide Default Footer, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: ShowExpand, DisplayName: ShowExpand, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: GroupBy, DisplayName: GroupBy, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ShowGroupBy, DisplayName: ShowGroupBy, FieldType: Boolean, DefaultValue:  False, Description:
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElse, DisplayName: VElse, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElseIf, DisplayName: VElseIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mAttributes As String = ""
	Private mStyle As String = ""
	Private classList As Map
	Private styleList As Map
	Private attributeList As Map
	'Private mTagName As String = "v-data-table"
	Private mStates As String
	Public bindings As Map
	Public methods As Map
	Private stVElse As String = ""
	Private stVElseIf As String = ""
	Private stVIf As String = ""
	Private stVShow As String = ""
	Private bDense As Boolean
	Private stItemsPerPage As String = "10"
	Private stElevation As String = ""
	Private stGroupBy As String = ""
	Private bShowGroupBy As Boolean
	Private bShowSelect As Boolean
	Private bSingleSelect As Boolean
	Private bMultiSort As Boolean
	Private bMustSort As Boolean
	Private bFixedHeader As Boolean
	Private bHideDefaultHeader As Boolean
	Private bHideDefaultFooter As Boolean
	Private bShowExpand As Boolean
	Private bDark As Boolean
	Private bLoading As Boolean
	Private sPageLength As String 
	Private bManual As Boolean
	'
	Public Items As List
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	'
	Private hdr As List
	'***** DATA TABLE
	Public PrimaryKey As String = "id"
	'column type
	Public COLUMN_DATE As String = "date"
	Public COLUMN_TEXT As String = "text"
	Public COLUMN_ICON As String = "icon"
	Public COLUMN_CHECKBOX As String = "checkbox"
	Public COLUMN_NONE As String = ""
	Public COLUMN_TIME As String = "time"
	Public COLUMN_DATETIME As String = "datetime"
	Public COLUMN_IMAGE As String = "image"
	Public COLUMN_MONEY As String = "money"
	Public COLUMN_NUMBER As String = "number"
	Public COLUMN_FILESIZE As String = "filesize"
	Public COLUMN_CHIP As String = "chip"
	Public COLUMN_EDIT As String = "edit"
	Public COLUMN_DELETE As String = "delete"
	Public COLUMN_ACTION As String = "action"
	Public COLUMN_SWITCH As String = "switch"
	Public COLUMN_AVATARIMG As String = "avatarimg"
	Public COLUMN_AVATARTXT As String = "avatartxt"
	Public COLUMN_AVATARICON As String = "avataricon"
	Public COLUMN_RATING As String = "rating"
	Public COLUMN_LINK As String = "link"
	Public COLUMN_LINK1 As String = "link1"
	Public COLUMN_PROGRESS_CIRCULAR As String = "progresscircular"
	Public COLUMN_PROGRESS_LINEAR As String = "progresslinear"
	Public COLUMN_SAVE As String = "save"
	Public COLUMN_CANCEL As String = "cancel"
	Public COLUMN_BUTTON As String = "button"
	Public COLUMN_COMBOBOX As String = "combo"
	Public COLUMN_AUTOCOMPLETE As String = "autocomplete"
	Public COLUMN_TEXTFIELD As String = "textfield"
	Public COLUMN_TEXTAREA As String = "textarea"
	Public COLUMN_SELECT As String = "select"
	Private sMaxPages As String = ""
	'
	Private sItemKeys As String
	Private sItemIcons As String
	Private sItemColors As String
	Private sItemTitles As String
			
	'alignment
	Public ALIGN_CENTER As String = "center"
	Public ALIGN_RIGHT As String = "end"
	Public ALIGN_LEFT As String = "start"
	'
	Private columnsM As Map
	Private headers As String
	Private search As String
	Type DataTableColumn(value As String, text As String, align As String, sortable As Boolean, filterable As Boolean, divider As Boolean, _
	className As String, width As String, filter As String, sort As String, ColType As String, extra As String, icon As String, Disabled As Boolean, imgWidth As String, imgHeight As String, avatarSize As String, iconSize As String, ReadOnly As Boolean, progressColor As String, progressRotate As String, progressSize As String, progressWidth As String, progressHeight As String, progressShowValue As Boolean, valueFormat As String, bindTotals As String, hasTotal As Boolean, depressed As Boolean, rounded As Boolean, dark As Boolean, label As String, color As String, outlined As Boolean, shaped As Boolean, target As String, prefix As String, colprops As Map, visible As Boolean, _
	Large As Boolean, SourceTable As String, SourceField As String, DisplayField As String, ReturnObject As Boolean, PreDisplay As String, href As String, ConditionalClass As String, ConditionalColor As String, ConditionalStyle As String)
	Private hasTotals As Boolean
	Private hasExternalPagination As Boolean
	Private totalVisible As String
	Public selected As String
	Public itemsname As String
	Public groupby As String
	Public sortby As String
	Public groupdesc As String
	Public sortdesc As String
	Public expanded As String
	'Public keyID As String
	Public search As String
	Private mTitle As String
	Private mHasSearch As Boolean = False
	Private titleID As String
	Private titleText As String
	Private searchID As String
	Private filtershow As String 
	Private filters As String
	Private filterList As List
	Private allcolumns As String
	Private sloading As String
	Public VC As VueComponent
	'
	Private sCancelColor As String
Private sCloneColor As String
Private sDeleteColor As String
Private sDownloadColor As String
Private sEditColor As String
Private bHasAddnew As Boolean
Private bHasBack As Boolean
Private bHasCancel As Boolean
Private bHasClearSort As Boolean
Private bHasClone As Boolean
Private bHasDelete As Boolean
Private bHasDownload As Boolean
Private bHasEdit As Boolean
Private bHasExcel As Boolean
Private bHasFilter As Boolean
Private bHasMenu As Boolean
Private bHasPdf As Boolean
Private bHasPrint As Boolean
Private bHasRefresh As Boolean
Private bHasSave As Boolean
Private sMenuColor As String
Private sPrintColor As String
Private sSaveColor As String
'
Private sColumIcons As String
Private sColumnAutoComplete As String
Private sColumnAvatar As String
Private sColumnButton As String
Private sColumnCheckbox As String
Private sColumnChip As String
Private sColumnCircularProgress As String
Private sColumnCombobox As String
Private sColumnDate As String
Private sColumnDateTime As String
Private sColumnFields As String
Private sColumnFileSize As String
Private sColumnImage As String
Private sColumnLinearProgress As String
Private sColumnLink As String
Private sColumnMoney As String
Private sColumnRating As String
Private sColumnSortable As String
Private sColumnSwitch As String
Private sColumnTextarea As String
Private sColumnTextfield As String
Private sColumnTime As String
Private sColumnTitles As String
Private sColumnWidths As String
Private sDateFormat As String
Private sDateTimeFormat As String
Private sMoneyFormat As String
Private sTimeFormat As String
Private sColumnFilterable As String
Public VElement As VueElement
Private sitemsperpage As String
Private bExternalPagination As Boolean
Private sPaginationPosition As String
Private showpagination As String
Private xPage As String
Private xPageCount As String
Private xPagination As String
Private sColumnAvatarText As String
Private sColumnAvatarIcon As String
Private sCurrentItems As String
Private sPreDisplay As String
Private sConditionalClass As String
Private sConditionalColor As String	
Private sConditionalStyle As String
	'
Private lstPreDisplay As List
Private lstConditionalClass As List
Private lstConditionalColor As List
Private lstConditionalStyle As List
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.ToLowerCase
	mEventName = EventName.ToLowerCase
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	bindings.Initialize
	methods.Initialize
	Items.Initialize
	columnsM.Initialize
	hasTotals = False
	hasExternalPagination = False
	totalVisible = ""
	hdr.Initialize
	'keyID = $"${mName}key"$
	xPage = $"${mName}page"$
	xPageCount = $"${mName}pagecount"$
	headers = $"${mName}headers"$
	selected = $"${mName}selected"$
	groupby = $"${mName}groupby"$
	sortby = $"${mName}sortby"$
	groupdesc = $"${mName}groupdesc"$
	sortdesc = $"${mName}sortdesc"$
	expanded = $"${mName}expanded"$
	itemsname = $"${mName}items"$
	search = $"${mName}search"$
	titleID = $"${mName}cardtitle"$
	titleText = $"${mName}titletext"$
	searchID = $"${mName}searchid"$
	filtershow = $"${mName}filtershow"$
	filters = $"${mName}filters"$
	allcolumns = $"${mName}allcolumns"$
	sloading = $"${mName}loading"$
	sitemsperpage = $"${mName}itemsperpage"$
	showpagination = $"${mName}paginationshow"$
	xPagination = $"${mName}pagination"$
	xPageCount = $"${mName}pagecount"$
	xPage = $"${mName}page"$
	stVShow = $"${mName}show"$
	sCurrentItems = $"${mName}currentitems"$
End Sub

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mStates = Props.Get("States")
		stVElse = Props.Get("VElse")
		stVElseIf = Props.Get("VElseIf")
		stVIf = Props.Get("VIf")
		PrimaryKey = Props.Get("ItemKey")
		bDense = Props.Get("Dense")
		stItemsPerPage = Props.Get("ItemsPerPage")
		stElevation = Props.Get("Elevation")
		stGroupBy = Props.Get("GroupBy")
		bShowGroupBy = Props.Get("ShowGroupBy")
		bShowSelect = Props.Get("ShowSelect")
		bSingleSelect = Props.Get("SingleSelect")
		mTitle = Props.Get("Title")
		mHasSearch = Props.Get("HasSearch")
		bMultiSort = Props.Get("MultiSort")
		bMustSort = Props.Get("MustSort")
		bFixedHeader = Props.Get("FixedHeader")
		bHideDefaultHeader = Props.Get("HideDefaultHeader")
		bHideDefaultFooter = Props.Get("HideDefaultFooter")
		bShowExpand = Props.Get("ShowExpand")
		bLoading = Props.GetDefault("Loading",False)
		bDark = Props.Get("Dark")
		bManual = Props.GetDefault("Manual", False)
		'
		sCancelColor = Props.GetDefault("CancelColor", "brown")
		sCloneColor = Props.GetDefault("CloneColor", "amber")
		sDeleteColor = Props.GetDefault("DeleteColor", "red")
		sDownloadColor = Props.GetDefault("DownloadColor", "cyan")
		sEditColor = Props.GetDefault("EditColor", "green")
		bHasAddnew = Props.GetDefault("HasAddnew", False)
		bHasBack = Props.GetDefault("HasBack", False)
		bHasCancel = Props.GetDefault("HasCancel", False)
		bHasClearSort = Props.GetDefault("HasClearSort", False)
		bHasClone = Props.GetDefault("HasClone", False)
		bHasDelete = Props.GetDefault("HasDelete", False)
		bHasDownload = Props.GetDefault("HasDownload", False)
		bHasEdit = Props.GetDefault("HasEdit", False)
		bHasExcel = Props.GetDefault("HasExcel", False)
		bHasFilter = Props.GetDefault("HasFilter", False)
		bHasMenu = Props.GetDefault("HasMenu", False)
		bHasPdf = Props.GetDefault("HasPdf", False)
		bHasPrint = Props.GetDefault("HasPrint", False)
		bHasRefresh = Props.GetDefault("HasRefresh", False)
		bHasSave = Props.GetDefault("HasSave", False)
		sMenuColor = Props.GetDefault("MenuColor", "indigo")
		sPrintColor = Props.GetDefault("PrintColor", "blue")
		sSaveColor = Props.GetDefault("SaveColor", "blue-grey")	
		'
		sColumIcons = Props.GetDefault("ColumIcons", "")
		sColumnAutoComplete = Props.GetDefault("ColumnAutoComplete", "")
		sColumnAvatar = Props.GetDefault("ColumnAvatar", "")
		sColumnButton = Props.GetDefault("ColumnButton", "")
		sColumnCheckbox = Props.GetDefault("ColumnCheckbox", "")
		sColumnChip = Props.GetDefault("ColumnChip", "")
		sColumnCircularProgress = Props.GetDefault("ColumnCircularProgress", "")
		sColumnCombobox = Props.GetDefault("ColumnCombobox", "")
		sColumnDate = Props.GetDefault("ColumnDate", "")
		sColumnDateTime = Props.GetDefault("ColumnDateTime", "")
		sColumnFields = Props.GetDefault("ColumnFields", "")
		sColumnFileSize = Props.GetDefault("ColumnFileSize", "")
		sColumnImage = Props.GetDefault("ColumnImage", "")
		sColumnLinearProgress = Props.GetDefault("ColumnLinearProgress", "")
		sColumnLink = Props.GetDefault("ColumnLink", "")
		sColumnMoney = Props.GetDefault("ColumnMoney", "")
		sColumnRating = Props.GetDefault("ColumnRating", "")
		sColumnSortable = Props.GetDefault("ColumnSortable", "")
		sColumnSwitch = Props.GetDefault("ColumnSwitch", "")
		sColumnTextarea = Props.GetDefault("ColumnTextarea", "")
		sColumnTextfield = Props.GetDefault("ColumnTextfield", "")
		sColumnTime = Props.GetDefault("ColumnTime", "")
		sColumnTitles = Props.GetDefault("ColumnTitles", "")
		sColumnWidths = Props.GetDefault("ColumnWidths", "")
		sDateFormat = Props.GetDefault("DateFormat", "")
		sDateTimeFormat = Props.GetDefault("DateTimeFormat", "")
		sMoneyFormat = Props.GetDefault("MoneyFormat", "")
		sTimeFormat = Props.GetDefault("TimeFormat", "")
		sColumnFilterable = Props.GetDefault("ColumnFilterable", "")
		bExternalPagination = Props.GetDefault("ExternalPagination", True)
		sPaginationPosition = Props.getdefault("PaginationPosition", "top")
		sMaxPages = Props.GetDefault("MaxPages", "5")
		sPageLength = Props.GetDefault("PageLength", 5)
		sColumnAvatarText = Props.getdefault("ColumnAvatarText", "")
		sColumnAvatarIcon = Props.GetDefault("ColumnAvatarIcon", "")
		'
		'additional actions
		sItemKeys = Props.GetDefault("ItemKeys","")
		sItemIcons = Props.GetDefault("ItemIcons","")
		sItemColors = Props.GetDefault("ItemColors","")
		sItemTitles = Props.getdefault("ItemTitles", "")
		'
		sPreDisplay = Props.getdefault("PreDisplay", "")
		sConditionalClass = Props.GetDefault("ConditionalClass", "")
		sConditionalColor = Props.GetDefault("ConditionalColor", "")
		sConditionalStyle = Props.GetDefault("ConditionalStyle", "")
	End If
	'
	bManual = BANanoShared.parseBool(bManual)
	bDense = BANanoShared.parseBool(bDense)
	bShowGroupBy = BANanoShared.parseBool(bShowGroupBy)
	bShowSelect = BANanoShared.parseBool(bShowSelect)
	bSingleSelect = BANanoShared.parseBool(bSingleSelect)
	mHasSearch = BANanoShared.parseBool(mHasSearch)
	bMultiSort = BANanoShared.parseBool(bMultiSort)
	bMustSort = BANanoShared.parseBool(bMustSort)
	bFixedHeader = BANanoShared.parseBool(bFixedHeader)
	bHideDefaultHeader = BANanoShared.parseBool(bHideDefaultHeader)
	bHideDefaultFooter = BANanoShared.parseBool(bHideDefaultFooter)
	bShowExpand = BANanoShared.parseBool(bShowExpand)
	bLoading = BANanoShared.parseBool(bLoading)
	bDark = BANanoShared.parseBool(bDark)
	bHasAddnew = BANanoShared.parseBool(bHasAddnew)
	bHasBack = BANanoShared.parseBool(bHasBack)
	bHasCancel = BANanoShared.parseBool(bHasCancel)
	bHasClearSort = BANanoShared.parseBool(bHasClearSort)
	bHasClone = BANanoShared.parseBool(bHasClone)
	bHasDelete = BANanoShared.parseBool(bHasDelete)
	bHasDownload = BANanoShared.parseBool(bHasDownload)
	bHasEdit = BANanoShared.parseBool(bHasEdit)
	bHasExcel = BANanoShared.parseBool(bHasExcel)
	bHasFilter = BANanoShared.parseBool(bHasFilter)
	bHasMenu = BANanoShared.parseBool(bHasMenu)
	bHasPdf = BANanoShared.parseBool(bHasPdf)
	bHasPrint = BANanoShared.parseBool(bHasPrint)
	bHasRefresh = BANanoShared.parseBool(bHasRefresh)
	bHasSave = BANanoShared.parseBool(bHasSave)
	bExternalPagination = BANanoShared.parseBool(bExternalPagination)
	bHideDefaultFooter = BANanoShared.parseBool(bHideDefaultFooter)

	'		
	Dim sb As StringBuilder
	sb.Initialize 
	sb.Append($"<v-card id="${mName}card">"$)
	sb.Append($"<v-card-title id="${titleID}">"$)
	sb.Append($"{{ ${titleText} }}"$)
	sb.Append($"</v-card-title>"$)
	sb.Append($"<v-divider v-show="${filtershow}"></v-divider>"$)
	sb.Append($"<v-card-text id="${mName}cardtext" v-show="${filtershow}"><p>Choose Filter Columns</p><div id="${mName}filter"></div></v-card-text>"$)
	sb.Append($"<v-data-table ref="${mName}" id="${mName}"></v-data-table>"$)
	sb.Append($"<v-divider v-show="${showpagination}"></v-divider>"$)
	sb.Append($"<div class="text-center pa-2" v-show="${showpagination}"><v-pagination id="${mName}pagination" circle></v-pagination></div>"$)
	sb.Append($"</v-card>"$)
	
	mElement = mTarget.Append(sb.tostring).Get("#" & mName)
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-data-table"
	'we have external pagination
	'
	If bExternalPagination Then
		bHideDefaultFooter = True
		GetPagination.AddAttr(":length", $"${mName}pagecount"$)
		'GetPagination.AddAttr("length", sPageLength)
		GetPagination.AddAttr("v-model", $"${mName}page"$)
		GetPagination.AddAttr(":total-visible", sMaxPages)
		VElement.AddAttr(":page.sync", $"${mName}page"$)
		'
		Dim scode As String = mName & "pagecount = $event"
		VElement.AddAttr("v-on:page-count", scode)
	
		VElement.SetData(showpagination, True)
		VElement.SetData($"${mName}page"$, 1)
		VElement.SetData($"${mName}pagecount"$, 0)
	Else
		VElement.SetData(showpagination, False)
	End If
	'
	AddAttr(":loading", sloading)
	AddAttr(":items", itemsname)
	AddAttr(":headers", headers)
	AddAttr(":value", selected)
	AddAttr(":group-by.sync", groupby)
	AddAttr(":sort-by.sync", sortby)
	AddAttr(":group-desc.sync", groupdesc)
	AddAttr(":sort-desc.sync", sortdesc)
	AddAttr(":expanded.sync", expanded)
	AddAttr(":items-per-page.sync", sitemsperpage)
	SetData(sitemsperpage, stItemsPerPage)
	AddAttr(":search", search)
	AddAttr("v-else", stVElse)
	AddAttr("v-else-if", stVElseIf)
	AddAttr("v-if", stVIf)
	'AddAttr("v-show", stVShow)
	AddAttr("item-key", PrimaryKey)
	AddAttr(":dense", bDense)
	setElevation(stElevation)
	AddAttr(":show-select", bShowSelect)
	If bSingleSelect Then
		AddAttr(":single-select", bSingleSelect)
	End If
	AddAttr(":show-group-by", bShowGroupBy)
	'
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"${headers}=array;"$)
	sb.Append($"${selected}=array;"$)
	sb.Append($"${groupby}=array;"$)
	sb.Append($"${sortby}=array;"$)
	sb.Append($"${groupdesc}=array;"$)
	sb.Append($"${sortdesc}=array;"$)
	sb.Append($"${expanded}=array;"$)
	sb.Append($"${itemsname}=array;"$)
	sb.Append($"${search}=string;"$)
	sb.Append($"${filters}=array;"$)
	sb.Append($"${allcolumns}=array;"$)
	sb.Append($"${titleText}=string;"$)
	sb.Append($"${filtershow}=false;"$)
	sb.Append($"${sloading}=false"$)
	setStates(sb.ToString)
	SetData(filtershow, False)
	filterList.Initialize 
	
	setNoDataText("Working on it, please wait...")
	
	setLoading(bLoading)
	setMultiSort(bMultiSort)
	setMustSort(bMustSort)
	setFixedHeader(bFixedHeader)
	setHideDefaultHeader(bHideDefaultHeader)
	setHideDefaultFooter(bHideDefaultFooter)
	setShowExpand(bShowExpand)
	setDark(bDark)
	
	If BANano.IsNull(stGroupBy) = False Then
		Dim gb As List = BANanoShared.StrParse(",",  stGroupBy)
		SetData(groupby, gb)
	End If
	'
	AddClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	'
	SetOnItemSelected($"${mName}_ItemSelected"$)
	SetOnClickRow($"${mName}_ClickRow"$)

	'build and get the element
	setStates(mStates)
	setTitle(mTitle)
	'
	If bManual = False Then
	If mHasSearch = True Then
		AddSpacer
		AddSearch
		'
		AddDivider
		'
		Dim txtSearch As VueElement = GetSearchText
		txtSearch.Rounded = True
		txtSearch.BindAllEvents
		txtSearch.Dense = True
		txtSearch.Solo = True
		VElement.BindVueElement(txtSearch)
	End If
	'
	
	If bHasAddnew Then
		AddNew
		AddDivider
	End If
	
	If bHasClearSort Then
		AddClearSort
		AddDivider
	End If
	
	If bHasFilter Then
		AddFilter("primary--text")
		AddDivider
		AddClearFilter
		AddDivider
	End If
	
	If bHasPdf Then
		AddPDF
		AddDivider
	End If
	'
	If bHasExcel Then
		AddExcel
		AddDivider
	End If
	
	If bHasRefresh Then
		AddRefresh
		AddDivider
	End If
	
	If bHasBack Then
		AddBack
		AddDivider
	End If
	'
	
	'***** DEPENDING ON WHAT HAS BEEN SPECIFIED, CREATE COLUMNS
	Dim lsColumnAutoComplete As List = BANanoShared.StrParse(";", sColumnAutoComplete)
	lsColumnAutoComplete = BANanoShared.ListTrimItems(lsColumnAutoComplete)
	'
	Dim lsColumnAvatar As List = BANanoShared.StrParse(";", sColumnAvatar)
	lsColumnAvatar = BANanoShared.ListTrimItems(lsColumnAvatar)
	'
	Dim lsColumnButton As List = BANanoShared.StrParse(";", sColumnButton)
	lsColumnButton = BANanoShared.ListTrimItems(lsColumnButton)
	'
	Dim lsColumnCheckbox As List = BANanoShared.StrParse(";", sColumnCheckbox)
	lsColumnCheckbox = BANanoShared.ListTrimItems(lsColumnCheckbox)
	'
	Dim lsColumnChip As List = BANanoShared.StrParse(";", sColumnChip)
	lsColumnChip = BANanoShared.ListTrimItems(lsColumnChip)
	'
	Dim lsColumnCircularProgress As List = BANanoShared.StrParse(";", sColumnCircularProgress)
	lsColumnCircularProgress = BANanoShared.ListTrimItems(lsColumnCircularProgress)
	'
	Dim lsColumnCombobox As List = BANanoShared.strparse(";", sColumnCombobox)
	lsColumnCombobox = BANanoShared.ListTrimItems(lsColumnCombobox)
	'
	Dim lsColumnDate As List = BANanoShared.strparse(";", sColumnDate)
	lsColumnDate = BANanoShared.ListTrimItems(lsColumnDate)
	'
	Dim lsColumnDateTime As List = BANanoShared.StrParse(";", sColumnDateTime)
	lsColumnDateTime = BANanoShared.ListTrimItems(lsColumnDateTime)
	'
	Dim lsColumnFields As List = BANanoShared.StrParse(";", sColumnFields)
	lsColumnFields = BANanoShared.ListTrimItems(lsColumnFields)
	'
	Dim lsColumnFileSize As List = BANanoShared.StrParse(";", sColumnFileSize)
	lsColumnFileSize = BANanoShared.ListTrimItems(lsColumnFileSize)
	'
	Dim lsColumnImage As List = BANanoShared.StrParse(";", sColumnImage)
	lsColumnImage = BANanoShared.ListTrimItems(lsColumnImage)
	'
	Dim lsColumnLinearProgress As List = BANanoShared.StrParse(";", sColumnLinearProgress)
	lsColumnLinearProgress = BANanoShared.ListTrimItems(lsColumnLinearProgress)
	'
	Dim lsColumnLink As List = BANanoShared.StrParse(";", sColumnLink)
	lsColumnLink = BANanoShared.ListTrimItems(lsColumnLink)
	'
	Dim lsColumnMoney As List = BANanoShared.StrParse(";", sColumnMoney)
	lsColumnMoney = BANanoShared.ListTrimItems(lsColumnMoney)
	'
	Dim lsColumnRating As List = BANanoShared.StrParse(";", sColumnRating)
	lsColumnRating = BANanoShared.ListTrimItems(lsColumnRating)
	'
	Dim lsColumnSortable As List = BANanoShared.StrParse(";", sColumnSortable)
	lsColumnSortable = BANanoShared.ListTrimItems(lsColumnSortable)
	'
	Dim lsColumnSwitch As List = BANanoShared.StrParse(";", sColumnSwitch)
	lsColumnSwitch = BANanoShared.ListTrimItems(lsColumnSwitch)
	'
	Dim lsColumnTextarea As List = BANanoShared.StrParse(";", sColumnTextarea)
	lsColumnTextarea = BANanoShared.ListTrimItems(lsColumnTextarea)
	'
	Dim lsColumnTextfield As List = BANanoShared.StrParse(";", sColumnTextfield)
	lsColumnTextfield = BANanoShared.ListTrimItems(lsColumnTextfield)
	'
	Dim lsColumnTime As List = BANanoShared.StrParse(";", sColumnTime)
	lsColumnTime = BANanoShared.ListTrimItems(lsColumnTime)
	'
	Dim lsColumnTitles As List = BANanoShared.StrParse(";", sColumnTitles)
	lsColumnTitles = BANanoShared.ListTrimItems(lsColumnTitles)
	'
	Dim lsColumnWidths As List = BANanoShared.StrParse(";", sColumnWidths)
	lsColumnWidths = BANanoShared.ListTrimItems(lsColumnWidths)
	'
	Dim lsColumnFilterable As List = BANanoShared.StrParse(";", sColumnFilterable)
	lsColumnFilterable = BANanoShared.ListTrimItems(lsColumnFilterable)
	'
	Dim lsColumnAvatarTxt As List = BANanoShared.StrParse(";", sColumnAvatarText)
	lsColumnAvatarTxt = BANanoShared.ListTrimItems(lsColumnAvatarTxt)
	'
	Dim lsColumnAvatarIcon As List = BANanoShared.StrParse(";", sColumnAvatarIcon)
	lsColumnAvatarIcon = BANanoShared.ListTrimItems(lsColumnAvatarIcon)
	'
	lstPreDisplay = BANanoShared.StrParse(";",  sPreDisplay)
	lstPreDisplay = BANanoShared.ListTrimItems(lstPreDisplay)
	'
	lstConditionalClass = BANanoShared.StrParse(";", sConditionalClass)
	lstConditionalClass = BANanoShared.ListTrimItems(lstConditionalClass)
	'
	lstConditionalColor = BANanoShared.StrParse(";", sConditionalColor)
	lstConditionalColor = BANanoShared.ListTrimItems(lstConditionalColor)
	'
	lstConditionalStyle = BANanoShared.StrParse(";", sConditionalStyle)
	lstConditionalStyle = BANanoShared.ListTrimItems(lstConditionalStyle)	
	'
	Dim colTot As Int = lsColumnFields.Size - 1
	Dim colCnt As Int
	Dim f As String = ""
	Dim h As String = ""
	
	'add columns
	For colCnt = 0 To colTot
		'
		f = lsColumnFields.Get(colCnt)
		h = lsColumnTitles.Get(colCnt)
		'
		f = f.trim
		h = h.trim
		'
		lsColumnFields.Set(colCnt, f)
		lsColumnTitles.Set(colCnt, h)
		
		AddColumn(f, h)
	Next
	'
	'pre-display progress
	colTot = lstPreDisplay.Size - 1
	For colCnt = 0 To colTot
		Dim fc As String = lstPreDisplay.Get(colCnt)
		Dim c As String = BANanoShared.mvfield(fc, 1, ":")
		Dim m As String = BANanoShared.MvField(fc, 2, ":")
		If lsColumnFields.IndexOf(c) >= 0 Then
			SetColumnPreDisplay(c, m)
		Else
			Log($"DataTable Error: ${mName}.${f} pre-display column not found on column fields!"$)
		End If
	Next
	'
	colTot = lstConditionalClass.Size - 1
	For colCnt = 0 To colTot
		Dim fc As String = lstConditionalClass.Get(colCnt)
		Dim c As String = BANanoShared.mvfield(fc, 1, ":")
		Dim m As String = BANanoShared.MvField(fc, 2, ":")
		If lsColumnFields.IndexOf(c) >= 0 Then
			SetColumnClassOnCondition(c, m)
		Else
			Log($"DataTable Error: ${mName}.${f} conditional-class column not found on column fields!"$)
		End If
	Next
	'
	colTot = lstConditionalColor.Size - 1
	For colCnt = 0 To colTot
		Dim fc As String = lstConditionalColor.Get(colCnt)
		Dim c As String = BANanoShared.mvfield(fc, 1, ":")
		Dim m As String = BANanoShared.MvField(fc, 2, ":")
		If lsColumnFields.IndexOf(c) >= 0 Then
			SetColumnColorOnCondition(c, m)
		Else
			Log($"DataTable Error: ${mName}.${f} conditional-color column not found on column fields!"$)
		End If
	Next
	'
	colTot = lstConditionalStyle.Size - 1
	For colCnt = 0 To colTot
		Dim fc As String = lstConditionalStyle.Get(colCnt)
		Dim c As String = BANanoShared.mvfield(fc, 1, ":")
		Dim m As String = BANanoShared.MvField(fc, 2, ":")
		If lsColumnFields.IndexOf(c) >= 0 Then
			SetColumnStyleOnCondition(c, m)
		Else
			Log($"DataTable Error: ${mName}.${f} conditional-style column not found on column fields!"$)
		End If
	Next	
	
	'circular progress
	colTot = lsColumnCircularProgress.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnCircularProgress.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_PROGRESS_CIRCULAR)
		Else
			Log($"DataTable Error: ${mName}.${f} progress-circular column not found on column fields!"$)
		End If
	Next
	'linear progress
	colTot = lsColumnLinearProgress.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnLinearProgress.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_PROGRESS_LINEAR)
		Else
			Log($"DataTable Error: ${mName}.${f} progress-linear column not found on column fields!"$)
		End If
	Next
	'auto-complete
	colTot = lsColumnAutoComplete.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnAutoComplete.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_AUTOCOMPLETE)
		Else
			Log($"DataTable Error: ${mName}.${f} auto-complete column not found on column fields!"$)
		End If
	Next
	'link
	colTot = lsColumnLink.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnLink.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_LINK)
		Else
			Log($"DataTable Error: ${mName}.${f} link column not found on column fields!"$)
		End If
	Next
	'combobox
	colTot = lsColumnCombobox.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnCombobox.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_COMBOBOX)
		Else
			Log($"DataTable Error: ${mName}.${f} combo-box column not found on column fields!"$)
		End If
	Next
	'time
	colTot = lsColumnTime.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnTime.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_TIME)
		Else
			Log($"DataTable Error: ${mName}.${f} text-field column not found on column fields!"$)
		End If
	Next
	'text-field
	colTot = lsColumnTextfield.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnTextfield.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetTextField(f, False)
		Else
			Log($"DataTable Error: ${mName}.${f} text-field column not found on column fields!"$)
		End If
	Next
	'text-area
	colTot = lsColumnTextarea.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnTextarea.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetTextArea(f, True)
		Else
			Log($"DataTable Error: ${mName}.${f} text-area column not found on column fields!"$)
		End If
	Next
	'switch
	colTot = lsColumnSwitch.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnSwitch.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_SWITCH)
		Else
			Log($"DataTable Error: ${mName}.${f} switch column not found on column fields!"$)
		End If
	Next
	'rating
	colTot = lsColumnRating.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnRating.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_RATING)
		Else
			Log($"DataTable Error: ${mName}.${f} rating column not found on column fields!"$)
		End If
	Next
	'image
	colTot = lsColumnImage.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnImage.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_IMAGE)
		Else
			Log($"DataTable Error: ${mName}.${f} image column not found on column fields!"$)
		End If
	Next
	'chip
	colTot = lsColumnChip.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnChip.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_CHIP)
		Else
			Log($"DataTable Error: ${mName}.${f} chip column not found on column fields!"$)
		End If
	Next
	'checkbox
	colTot = lsColumnCheckbox.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnCheckbox.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_CHECKBOX)
		Else
			Log($"DataTable Error: ${mName}.${f} check-box column not found on column fields!"$)
		End If
	Next	
	'avatar
	colTot = lsColumnAvatar.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnAvatar.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_AVATARIMG)
		Else
			Log($"DataTable Error: ${mName}.${f} avatar column not found on column fields!"$)
		End If
	Next
	'avatar text
	colTot = lsColumnAvatarTxt.size - 1
	For colCnt = 0 To colTot
		f = lsColumnAvatarTxt.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_AVATARTXT)
		Else
			Log($"DataTable Error: ${mName}.${f} avatar text column not found on column fields!"$)
		End If
	Next
	'avatar icons
	colTot = lsColumnAvatarIcon.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnAvatarIcon.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_AVATARICON)
		Else
			Log($"DataTable Error: ${mName}.${f} avatar icon column not found on column fields!"$)
		End If
	Next
	'button
	colTot = lsColumnButton.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnButton.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_BUTTON)
		Else
			Log($"DataTable Error: ${mName}.${f} button column not found on column fields!"$)
		End If
	Next	
	'money
	colTot = lsColumnMoney.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnMoney.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_MONEY)
		Else
			Log($"DataTable Error: ${mName}.${f} money column not found on column fields!"$)
		End If
	Next
	'file sizes
	colTot = lsColumnFileSize.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnFileSize.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_FILESIZE)
		Else
			Log($"DataTable Error: ${mName}.${f} file size column not found on column fields!"$)
		End If
	Next
	'datetime columns
	colTot = lsColumnDateTime.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnDateTime.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_DATETIME)
		Else
			Log($"DataTable Error: ${mName}.${f} date-time column not found on column fields!"$)
		End If
	Next
	'dates
	colTot = lsColumnDate.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnDate.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnType(f, COLUMN_DATE)
		Else
			Log($"DataTable Error: ${mName}.${f} date column not found on column fields!"$)
		End If
	Next
	'sortable
	colTot = lsColumnSortable.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnSortable.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnSortable(f, True)
		Else
			Log($"DataTable Error: ${mName}.${f} sortable column not found on column fields!"$)
		End If	
	Next
	'filterable
	colTot = lsColumnFilterable.Size - 1
	For colCnt = 0 To colTot
		f = lsColumnFilterable.Get(colCnt)
		f = f.trim
		If lsColumnFields.IndexOf(f) >= 0 Then
			SetColumnFilterable(f, True) 
		Else
			Log($"DataTable Error: ${mName}.${f} filterable column not found on column fields!"$)
		End If
	Next
	'
	
	If bHasEdit Then
		AddEdit
	End If
	
	If bHasDelete Then
		AddDelete
	End If
	
	If bHasClone Then
		AddClone
	End If
	
	If bHasPrint Then
		AddPrint
	End If
	
	If bHasSave Then
		AddSave
	End If
	
	If bHasCancel Then
		AddCancel
	End If
	
	If bHasDownload Then
		AddDownload
	End If
	
	If bHasMenu Then
		AddMenuV
	End If
	'
	'add the additional actions
	Dim rs As List
	rs.Initialize 
	'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemIcons = sItemIcons.Replace(",", ";")
	sItemColors = sItemColors.Replace(",", ";")
	sItemTitles = sItemTitles.Replace(",", ";")
		
	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xicons As List = BANanoShared.StrParse(";", sItemIcons)
	Dim xcolors As List = BANanoShared.StrParse(";", sItemColors)
	Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xicons = BANanoShared.ListTrimItems(xicons)
	xcolors = BANanoShared.ListTrimItems(xcolors)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iIco As String = xicons.Get(itemCnt)
		Dim iCol As String = xcolors.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		'
		AddAction1(iKey, iTit, iIco, "", iCol)
	Next	
	
	'
	If bHasEdit Then
		SetIconDimensions("edit", "", sEditColor)
	End If
	
	If bHasDelete Then
		SetIconDimensions("delete", "", sDeleteColor)
	End If
	
	If bHasClone Then
		SetIconDimensions("clone", "", sCloneColor)
	End If
	
	If bHasPrint Then
		SetIconDimensions("print", "", sPrintColor)
	End If
	
	If bHasSave Then
		SetIconDimensions("save", "", sSaveColor)
	End If
	
	If bHasCancel Then
		SetIconDimensions("cancel", "", sCancelColor)
	End If
	
	If bHasDownload Then
		SetIconDimensions("download", "", sDownloadColor)
	End If
	
	If bHasMenu Then
		SetIconDimensions("menu", "", sMenuColor)
	End If
	End If	
End Sub


'get the original columns
Sub GetColumns As List
	Dim nl As List
	nl.initialize
	'get the sort order of the columns
	Dim lst As List = GetHeaders
	Dim colCnt As Int
	Dim colTot As Int = lst.Size - 1
	For colCnt = 0 To colTot
		Dim hdrx As Map = lst.Get(colCnt)
		Dim k As String = hdrx.Get("value")
		Dim dt As DataTableColumn = columnsM.Get(k)
		nl.Add(dt)
	Next
	Return nl
End Sub

'update the title of the table
Sub setTitle(vTitle As String)
	If BANano.IsNull(vTitle) Or BANano.IsUndefined(vTitle) Then vTitle = ""
	mTitle = vTitle
	SetData(titleText, vTitle)
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
End Sub

'update the title
Sub UpdateTitle(title As String)
	VC.SetData(titleText, title)
End Sub

Sub UpdateLoading(b As Boolean)
	VC.SetData(sloading, b)
End Sub

Sub setHasSearch(b As Boolean)
	mHasSearch = b
End Sub

Sub getHasSearch As Boolean
	Return mHasSearch
End Sub

Sub SetHeaders(hdrs As List)
	VC.SetData(headers, hdrs)
End Sub

Sub SetSelected(varSortDesc As List)
	VC.SetData(selected, varSortDesc)
End Sub

'set no-data-text
Sub setNoDataText(varNoDataText As String)
	AddAttr("no-data-text", varNoDataText)
End Sub

'set group-by
Sub SetGroupBy(varGroupBy As List)
	VC.SetData(groupby, varGroupBy)
End Sub

'set sort-by
Sub SetSortBy(varSortBy As List)
	VC.SetData(sortby, varSortBy)
End Sub

'clear any sort
Sub ClearSort
	SetSortBy(NewList)
End Sub

'set group-desc
Sub SetGroupDesc(varGroupDesc As List)
	VC.SetData(groupdesc, varGroupDesc)
End Sub

Sub SetSortDesc(varSortDesc As List)
	VC.SetData(sortdesc, varSortDesc)
End Sub

'set expanded
Sub SetExpanded(varExpanded As List)
	VC.SetData(expanded, varExpanded)
End Sub

'set group-desc
Sub UpdateGroupDesc(varGroupDesc As List)
	VC.SetData(groupdesc, varGroupDesc)
End Sub

Sub UpdateSortDesc(varSortDesc As List)
	VC.SetData(sortdesc, varSortDesc)
End Sub

'set expanded
Sub UpdateExpanded(varExpanded As List)
	VC.SetData(expanded, varExpanded)
End Sub

'return a list of selected primary keys
Sub GetItemKeys(lst As List) As List
	Dim xlist As List
	xlist.Initialize
	For Each m As Map In lst
		Dim xkey As String = m.GetDefault(PrimaryKey, "")
		xlist.Add(xkey)
	Next
	Return xlist
End Sub

'return a list of selected property values
Sub GetItemProps(lst As List, prop As String) As List
	Dim xlist As List
	xlist.Initialize
	For Each m As Map In lst
		Dim xkey As String = m.GetDefault(prop, "")
		xlist.Add(xkey)
	Next
	Return xlist
End Sub

'to be compatible with the simple table, use .setrows
Sub AddRowMap(row As Map)
	Items.add(row)
End Sub

'add a new record, use .setrows
Sub AddRow(rowData As Map)
	Items.Add(rowData)
End Sub

'add a new row at the end of the items in realtime
Sub AddRow1(rowdata As Map)
	VC.SetDataPush(itemsname, rowdata)
End Sub

'realtime removal of item in realtime
Sub RemoveRow(whereMap As Map)
	'find the item
	Dim recpos As Int = VC.GetDataPositionWhere(itemsname, whereMap)
	If recpos = -1 Then Return
	VC.SetDataSpliceRemove(itemsname, recpos, 1)
End Sub

'add a row at the top of the list
Sub AddRowTop(rowdata As Map)
	VC.SetDataUnshift(itemsname, rowdata)
End Sub



Sub getShowGroupBy As Boolean
	Return bShowGroupBy
End Sub


Sub GetCardText As VueElement
	Dim sFilter As String = $"${mName}cardtext"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sFilter, sFilter)
	Return elx
End Sub


Sub GetFilter As VueElement
	Dim sFilter As String = $"${mName}filter"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sFilter, sFilter)
	Return elx
End Sub

'return the table title
Sub GetTableTitle As VueElement
	Dim elx As VueElement
	elx.Initialize(mCallBack, titleID, titleID)
	Return elx
End Sub

'return the table title
Sub TableTitle As VueElement
	Dim elx As VueElement
	elx.Initialize(mCallBack, titleID, titleID)
	Return elx
End Sub

Sub GetCardTitle As VueElement
	Dim elx As VueElement
	elx.Initialize(mCallBack, titleID, titleID)
	Return elx
End Sub

Sub GetCard As VueElement
	Dim sFilter As String = $"${mName}card"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sFilter, sFilter)
	Return elx
End Sub

Sub GetPagination As VueElement
	Dim sFilter As String = $"${mName}pagination"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sFilter, sFilter)
	Return elx
End Sub

'return the search text
Sub GetSearchText As VueElement
	Dim elx As VueElement
	elx.Initialize(mCallBack, searchID, searchID)
	Return elx
End Sub

'add a spacer to the card title
Sub AddSpacer
	Dim ct As BANanoElement
	ct.Initialize($"#${titleID}"$)
	ct.Append("<v-spacer></v-spacer>")
End Sub

'add a spacer to the card title
Sub AddDivider
	Dim ct As BANanoElement
	ct.Initialize($"#${titleID}"$)
	ct.Append($"<v-divider vertical class="mx-2"></v-divider>"$)
End Sub

'add a column to add a new
Sub AddNew
	Dim btnKey As String = $"${mName}_add"$
	AddTitleIcon(btnKey, "mdi-plus", "blue")
End Sub

'add a column to clear sort
Sub AddClearSort
	Dim btnKey As String = $"${mName}_clearsort"$
	AddTitleIcon(btnKey, "mdi-sort-variant-remove", "orange")
End Sub

'add a column to clear filters
Sub AddClearFilter
	Dim btnKey As String = $"${mName}_clearfilter"$
	AddTitleIcon(btnKey, "mdi-filter-remove", "red")
End Sub

'add a back button 
Sub AddBack
	Dim btnKey As String = $"${mName}_back"$
	AddTitleIcon(btnKey, "mdi-chevron-left", "cyan")
End Sub

'add a back button 
Sub AddRefresh
	Dim btnKey As String = $"${mName}_refresh"$
	AddTitleIcon(btnKey, "mdi-reload", "purple")
End Sub

'add a button to the header
Sub AddButtonIcon(elID As String, eIcon As String, btnColor As String)
	AddTitleIcon(elID, eIcon, btnColor)
End Sub	

'add export to pdf
Sub AddPDF
	Dim btnKey As String = $"${mName}_pdf"$
	AddTitleIcon(btnKey, "mdi-file-pdf-outline", "brown")
End Sub

Sub AddExcel
	Dim btnKey As String = $"${mName}_excel"$
	AddTitleIcon(btnKey, "mdi-file-excel-box-outline", "cyan")
End Sub

Sub AddToolbarIcon(elID As String, eIcon As String, btnColor As String)
	Dim btnKey As String = $"${mName}_${elID}"$
	btnKey = btnKey.tolowercase
	AddTitleIcon(btnKey, eIcon, btnColor)
End Sub

'a button with an icon on the left
Sub AddTitleIcon(elID As String, eIcon As String, btnColor As String)
	Dim ct As BANanoElement
	ct.Initialize($"#${titleID}"$)
	elID = elID.ToLowerCase
	Dim siconright As String = $"${elID}icon"$
	ct.Append($"<v-btn icon id="${elID}"><v-icon id="${elID}icon"></v-icon></v-btn>"$)
	Dim vbtnright As VueElement
	vbtnright.Initialize(mCallBack, elID, elID)
	'vbtnright.Small = True
	If btnColor <> "" Then vbtnright.Color = btnColor
	vbtnright.Elevation = 4
	vbtnright.VShow = $"${elID}show"$
	vbtnright.SetData($"${elID}show"$, True)
	'
	Dim viconright As VueElement
	viconright.Initialize(mCallBack, siconright, siconright)
	viconright.Caption = eIcon
	viconright.Dark = True
	
	vbtnright.BindAllEvents
	vbtnright.BindVueElement(viconright)
	VElement.BindVueElement(vbtnright)
End Sub

'add a filter, after all columns are added
Sub AddFilter(activeClass As String)
	'show the filter
	SetData(filtershow, True)
	Dim btnKey As String = $"${mName}_filter"$
	AddTitleIcon(btnKey, "mdi-filter", "green")
	'
	Dim filterID As String = $"${mName}filter"$
	Dim filterChips As String = $"${mName}filterchips"$
	Dim filterChip As String = $"${mName}filterchip"$
	
	Dim ct As BANanoElement
	ct.Initialize($"#${filterID}"$)
	ct.Append($"<v-chip-group id="${filterChips}"><v-chip id="${filterChip}"></v-chip></v-chip-group><v-divider></v-divider>"$)
		
	'get the text field, there is only 1 element on the layout
	Dim vchipgroupx As VueElement
	vchipgroupx.Initialize(mCallBack, filterChips, filterChips)
	vchipgroupx.Bind("show-arrows", True)
	vchipgroupx.VModel = filters
	vchipgroupx.SetData(filters, NewList)
	vchipgroupx.Multiple = True
	vchipgroupx.Column = True
	vchipgroupx.AddAttr("active-class", activeClass)
	vchipgroupx.BindAllEvents
	vchipgroupx.SetOnEventOwn(mCallBack, $"${mName}_filterchange"$, "change", "")
	'get the text field, there is only 1 element on the layout
	Dim vchipx As VueElement
	vchipx.Initialize(mCallBack, filterChip, filterChip)
	vchipx.VFor = $"item in ${allcolumns}"$
	vchipx.BindKey("item.value")
	vchipx.Caption = vchipx.ItemInMoustache("text")
	vchipx.AddAttr(":filter", True)
	vchipx.AddAttr(":value", "item.value")
	vchipx.Outlined = True
	vchipgroupx.BindVueElement(vchipx)
	VElement.BindVueElement(vchipgroupx)
End Sub


'add a search to the card title
Sub AddSearch
	Dim str As String = $"<v-text-field id="${searchID}" @keydown.native.escape="${search}=''" v-model="${search}" append-icon="mdi-magnify" label="Search" single-line hide-details clearable class="shrink"></v-text-field>"$
	Dim ct As BANanoElement
	ct.Initialize($"#${titleID}"$)
	ct.Append(str)
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	VElement.SetData(prop, value)
End Sub

Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

'sets the state bindings
public Sub setStates(varBindings As String)
	If BANano.IsNull(varBindings) Or BANano.IsUndefined(varBindings) Then Return
	If varBindings = "" Then Return
	Dim mxItems As List = BANanoShared.StrParse(";", varBindings)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If v.EqualsIgnoreCase("false") Then
			If k <> "" Then
				SetData(k, False)
			End If
		else if v.EqualsIgnoreCase("true") Then
			If k <> "" Then
				SetData(k, True)
			End If
		else if v.EqualsIgnoreCase("array") Then
			If k <> "" Then
				Dim nl As List = NewList
				SetData(k, nl)
			End If
		else if v.EqualsIgnoreCase("object") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				SetData(k, nm)
			End If
		else if v.EqualsIgnoreCase("map") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				SetData(k, nm)
			End If
		else if v.EqualsIgnoreCase("string") Then
			If k <> "" Then
				SetData(k, "")
			End If
		else if v.EqualsIgnoreCase("boolean") Then
			If k <> "" Then
				SetData(k, False)
			End If
		else if v.EqualsIgnoreCase("int") Then
			If k <> "" Then
				SetData(k, 0)
			End If
		Else
			If k <> "" Then
				SetData(k, v)
			End If
		End If
	Next
End Sub

''add an element to the text
'Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
'	elID = elID.tolowercase
'	elID = elID.Replace("#","")
'	Dim elIT As VueElement
'	elIT.Initialize(mCallBack, elID, tag)
'	elIT.Append(Text)
'	If loose <> Null Then
'		For Each k As String In loose
'			elIT.SetAttr(k, True)
'		Next
'	End If
'	If props <> Null Then
'		For Each k As String In props.Keys
'			Dim v As String = props.Get(k)
'			elIT.SetAttr(k, v)
'		Next
'	End If
'	If styleProps <> Null Then
'		For Each k As String In styleProps.Keys
'			Dim v As String = styleProps.Get(k)
'			elIT.SetAttr(k, v)
'		Next
'	End If
'	If classNames <> Null Then
'		elIT.AddClasses(classNames)
'	End If
'	'convert to string
'	Dim sElement As String = elIT.tostring
'	mElement.Append(sElement)
'End Sub

'returns the BANanoElement
public Sub getElement() As BANanoElement
	Return mElement
End Sub

'sets the BANanoElement
Sub setElement(varElement As BANanoElement)
	mElement = varElement
End Sub

'returns the tag id
public Sub getID() As String
	Return mName
End Sub

'add the element to the parent
public Sub AddToParent(targetID As String)
	targetID = targetID.tolowercase
	targetID = targetID.Replace("#","")
	mTarget = BANano.GetElement($"#${targetID}"$)
	DesignerCreateView(mTarget, Null)
End Sub

'remove the component
public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'add a class
public Sub AddClass(varClass As String)
	VElement.AddClass(varClass)
End Sub
'
Sub AddClasses(listOfClasses As List)
	VElement.AddClasses(listOfClasses)
End Sub

'add a class on condition
public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	VElement.AddClassOnCondition(varClass, varCondition, varShouldBe)
End Sub

'add an attr on condition
public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	VElement.AddAttrOnCondition(varClass, varCondition, varShouldBe)
End Sub


'add a style
public Sub AddStyle(varProp As String, varStyle As String)
	VElement.AddStyle(varProp, varStyle)
End Sub


'add an attr on condition
public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object)
	VElement.AddStyleOnCondition(varClass, varCondition, varShouldBe)
End Sub

public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	VElement.AddStyleOnConditionTrue(varClass, varCondition, varShouldBe)
End Sub

Sub SetAttr(varProp As String, varValue As String)
	VElement.SetAttr(varProp, varValue)
End Sub

'change the text of the element
Sub SetText(varText As String)
	AddChild(varText)
End Sub

Sub Bind(attr As String, value As String)
	AddAttr($":${attr}"$, value)
End Sub

'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'add an attribute
Public Sub AddAttr(varProp As String, varValue As String)
	VElement.AddAttr(varProp, varValue)
End Sub

Sub RemoveCodeBindings(b As List)
	For Each k As String In b
		If k <> "" Then
			bindings.Remove(k)
		End If
	Next
End Sub

'returns the class names
Public Sub getClasses() As String
	Dim sbClass As StringBuilder
	sbClass.Initialize
	For Each k As String In classList.Keys
		sbClass.Append(k).Append(" ")
	Next
	mClasses = sbClass.ToString
	Return mClasses
End Sub

Sub setClasses(varClasses As String)
	AddClass(varClasses)
End Sub

'set the style use a valid JSON string with {}
public Sub setStyle(varStyle As String)
	setStyles(varStyle)
End Sub

'returns the style as JSON
public Sub getStyle() As String
	Dim sbStyle As StringBuilder
	sbStyle.Initialize
	sbStyle.Append("{")
	For Each k As String In styleList.Keys
		Dim v As String = styleList.Get(k)
		sbStyle.Append(k).Append(":").Append(v).Append(",")
	Next
	sbStyle.Append("}")
	mStyle = sbStyle.ToString
	Return mStyle
End Sub

'sets the attributes
public Sub setAttributes(varAttributes As String)
	Dim mxItems As List = BANanoShared.StrParse(";", varAttributes)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If mElement <> Null Then
			mElement.SetAttr(k, v)
		Else
			attributeList.put(k, v)
		End If
	Next
End Sub

'sets the styles from the designer
public Sub setStyles(varStyles As String)
	Dim mxItems As List = BANanoShared.StrParse(";", varStyles)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		AddStyle(k, v)
	Next
End Sub

'returns the attributes
public Sub getAttributes() As String
	Dim sbAttr As StringBuilder
	sbAttr.Initialize
	For Each k As String In attributeList.Keys
		Dim v As String = attributeList.Get(k)
		sbAttr.Append(k).Append("=").Append(v).Append(";")
	Next
	mAttributes = sbAttr.ToString
	Return mAttributes
End Sub

public Sub setVElse(varVElse As String)
	AddAttr("v-else", varVElse)
	stVElse = varVElse
End Sub

public Sub getVElse() As String
	Return stVElse
End Sub

public Sub setVElseIf(varVElseIf As String)
	AddAttr("v-else-if", varVElseIf)
	stVElseIf = varVElseIf
End Sub

public Sub getVElseIf() As String
	Return stVElseIf
End Sub

public Sub setVIf(varVIf As String)
	AddAttr("v-if", varVIf)
	stVIf = varVIf
End Sub

public Sub getVIf() As String
	Return stVIf
End Sub

public Sub setVShow(varVShow As String)
	AddAttr("v-show", varVShow)
	stVShow = varVShow
End Sub

public Sub getVShow() As String
	Return stVShow
End Sub

'add a child component
Sub AddChild(child As String)
	mElement.Append(child)
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
End Sub

Sub SetOnEvent(eventHandler As Object, event As String, args As String)
	event = event.ToLowerCase
	'
	Dim attrName As String = event
	attrName = attrName.tolowercase
	attrName = attrName.Replace(":","")
	attrName = attrName.Replace(".","")
	attrName = attrName.Replace("-","")
	'
	Dim methodName As String = $"${mName}_${attrName}"$
	'
	If SubExists(eventHandler, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${methodName}(${args})"$
	AddAttr($"v-on:${event}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(eventHandler, methodName, Array(e))
	methods.Put(methodName, cb)
End Sub

'on event
Sub On(eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
	seventname = seventname.Replace("-","")
	'
	Dim sName As String = $"${mEventName}_${seventname}"$
	If SubExists(mCallBack, sName) = False Then Return
	'
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${sName}(${args})"$
	AddAttr($"v-on:${eventName}"$, sCode)
	'arguments for the event
	Dim e As BANanoEvent 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

Sub IsValidID(idName As String) As Boolean
	If idName = "" Then Return True
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			Return False
		End If
	Next
	Return True
End Sub
'
'
'Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement
'	parent = parent.ToLowerCase
'	parent = parent.Replace("#","")
'	Dim item As String = $"<${tag} id="${id}"></${tag}>"$
'	Dim el As BANanoElement = BANano.GetElement($"#${parent}"$).Append(item).Get($"#${id}"$)
'	el.SetText(text)
'	Return el
'End Sub
'
''banano helper class
'Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
'	parentID = parentID.ToLowerCase
'	parentID = parentID.Replace("#","")
'	id = id.tolowercase
'	Dim el As BANanoElement = BANano.GetElement($"#${parentID}"$).Append($"<${tag} id="${id}"></${tag}>"$).Get($"#${id}"$)
'	If BANano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As String = props.Get(k)
'			el.SetAttr(k, v)
'		Next
'	End If
'	'
'	If BANano.IsNull(styles) = False Then
'		Dim strStyle As String = BANano.ToJson(styles)
'		el.SetStyle(strStyle)
'	End If
'	'
'	If classes <> "" Then el.AddClass(classes)
'	el.settext(text)
'	Return el
'End Sub

Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'convert a map to a list
Sub Map2List(moptions As Map, sourcefield As String, displayfield As String) As List
	sourcefield = sourcefield.ToLowerCase
	displayfield = displayfield.ToLowerCase
	Dim recs As List
	recs.Initialize
	For Each k As String In moptions.Keys
		Dim v As String = moptions.Get(k)
		k = CStr(k)
		v = CStr(v)
		Dim nrec As Map = CreateMap()
		nrec.Put(sourcefield, k)
		nrec.Put(displayfield, v)
		recs.Add(nrec)
	Next
	Return recs
End Sub

'add save icon
Sub AddSave()
	Dim colField As String = "save"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Save")
	dt.filterable = False
	dt.ColType = COLUMN_SAVE
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-content-save"
	dt.width = 80
	columnsM.Put(colField, dt)
End Sub

'add cancel icon
Sub AddCancel()
	Dim colField As String = "cancel"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Cancel")
	dt.filterable = False
	dt.ColType = COLUMN_CANCEL
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-cancel"
	dt.width = 80
	columnsM.Put(colField, dt)
End Sub

Sub AddPDFColumn()
	AddAction("pdf","PDF","mdi-file-pdf-outline")
End Sub

'add edit icon
Sub AddEdit()
	AddAction("edit","Edit","mdi-pencil")
End Sub

'add delete icon
Sub AddDelete()
	AddAction("delete","Delete","mdi-delete")
End Sub

'add an action
Sub AddAction(colField As String, colTitle As String, colIcon As String)
	If BANano.IsNull(colField) Or BANano.IsUndefined(colField) Then colField = ""
	If BANano.IsNull(colTitle) Or BANano.IsUndefined(colTitle) Then colTitle = ""
	If BANano.IsNull(colIcon) Or BANano.IsUndefined(colIcon) Then colIcon = ""
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_ACTION
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = colIcon
	dt.width = 80
	columnsM.Put(colField, dt)
End Sub

'add an action
Sub AddAction1(colField As String, colTitle As String, colIcon As String, iconSize As String, iconColor As String)
	If BANano.IsNull(colField) Or BANano.IsUndefined(colField) Then colField = ""
	If BANano.IsNull(colTitle) Or BANano.IsUndefined(colTitle) Then colTitle = ""
	If BANano.IsNull(colIcon) Or BANano.IsUndefined(colIcon) Then colIcon = ""
	If BANano.IsNull(iconSize) Or BANano.IsUndefined(iconSize) Then iconSize = ""
	If BANano.IsNull(iconColor) Or BANano.IsUndefined(iconColor) Then iconColor = ""
	'
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_ACTION
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = colIcon
	dt.width = 80
	If iconSize <> "" Then dt.iconSize = iconSize
	If iconColor <> "" Then dt.color = iconColor
	columnsM.Put(colField, dt)
End Sub

'add icon field
Sub AddIconView(colField As String, colTitle As String, colColor As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_ICON
	dt.sortable = False
	If colColor <> "" Then dt.color = colColor
	columnsM.Put(colField, dt)
End Sub

'add icon field
Sub AddChip(colField As String, colTitle As String, colColor As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_CHIP
	dt.sortable = False
	If colColor <> "" Then dt.color = colColor
	columnsM.Put(colField, dt)
End Sub

'add switch field
Sub AddSwitch(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_SWITCH
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add checkbox field
Sub AddCheckBox(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_CHECKBOX
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub


'set a field as a switch
Sub SetColumnsSwitch(colFields As List)
	For Each col As String In colFields
		col = col.tolowercase
		If columnsM.ContainsKey(col) Then
			Dim colx As DataTableColumn = columnsM.Get(col)
			colx.ColType = COLUMN_SWITCH
			colx.filterable = False
			colx.sortable = False
			columnsM.Put(col, colx)
		End If
	Next
End Sub

'set a field as a link
Sub SetColumnsLinks(colFields As List)
	For Each col As String In colFields
		col = col.tolowercase
		SetColumnType(col, COLUMN_LINK)
	Next
End Sub

'set a field as a link
Sub SetColumnsLinks1(colFields As List)
	For Each col As String In colFields
		col = col.tolowercase
		SetColumnType(col, COLUMN_LINK1)
	Next
End Sub

'set column as a checkbox
Sub SetColumnsCheckBox(colFields As List)
	For Each col As String In colFields
		col = col.tolowercase
		If columnsM.ContainsKey(col) Then
			Dim colx As DataTableColumn = columnsM.Get(col)
			colx.ColType = COLUMN_CHECKBOX
			colx.filterable = False
			colx.sortable = False
			columnsM.Put(col, colx)
		End If
	Next
End Sub

'add an image
Sub AddImage(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_IMAGE
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add a link
Sub AddLink(colField As String, colTitle As String, target As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_LINK
	dt.target = target
	columnsM.Put(colField, dt)
End Sub

'add a link
Sub AddLink1(colField As String, colTitle As String, href As String, target As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_LINK1
	dt.target = target
	dt.href = href
	columnsM.Put(colField, dt)
End Sub


'add an avatar image
Sub AddAvatarImg(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_AVATARIMG
	dt.filterable = False
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add an avatar text
Sub AddAvatarTxt(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_AVATARTXT
	dt.filterable = False
	dt.sortable = True
	columnsM.Put(colField, dt)
End Sub

'add an avatar icon
Sub AddAvatarIcon(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_AVATARICON
	dt.filterable = False
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add a rating
Sub AddRating(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_RATING
	columnsM.Put(colField, dt)
End Sub

'add a progress circular
Sub AddProgressCircular(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_PROGRESS_CIRCULAR
	columnsM.Put(colField, dt)
End Sub

'add a progress linear
Sub AddProgressLinear(colField As String, colTitle As String)
	colField = colField.tolowercase
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_PROGRESS_LINEAR
	columnsM.Put(colField, dt)
End Sub

'add download
Sub AddDownload
	AddAction("download","Download","mdi-download")
End Sub

'add horizontal menu button
Sub AddMenuH
	AddAction("menu","Menu","mdi-dots-horizontal")
End Sub

'add vertical menu
Sub AddMenuV
	AddAction("menu","Menu","mdi-dots-vertical")
End Sub

'add clone
Sub AddClone
	AddAction("clone","Clone","mdi-content-copy")
End Sub

'add print
Sub AddPrint
	AddAction("print", "Print", "mdi-printer")
End Sub

'update from a list of existing recods
Sub SetDataSource(ds As List)
	Items.Initialize
	Items = ds 
	SetData(itemsname, ds)
End Sub


'add a column
Sub AddColumn(colName As String, colTitle As String)
	AddColumn1(colName, colTitle, COLUMN_TEXT, 0, True, ALIGN_LEFT)
End Sub

'add date column and use any of dayjs formats
'<code>.AddDateColumn("dateColumn", "Date", "DD/MM/YYY")
'</code>
Sub AddDateColumn(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnDateFormat(colName, colFormat)
End Sub

'add time column and use any of dayjs formats
'<code>.AddTimeColumn("timeColumn", "Date", "DD/MM/YYY")
'</code>
Sub AddTimeColumn(colName As String, colTitle As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_TIME)
End Sub


'add date time column and use any dayjs formats
'<code>.AddDateTimeColumn("dateColumn", "Date", "DD/MM/YYY HH:MM:SS")
'</code>
Sub AddDateTimeColumn(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnDateTimeFormat(colName, colFormat)
End Sub

'add number column and use any numeraljs formats
'<code>.AddNumberColumn("money", "Received", "$0,0.00")
'</code>
Sub AddNumberColumn(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnNumberFormat(colName, colFormat)
End Sub

'add money column and use any numeraljs formats
'<code>.AddMoneyColumn("money", "Received", "$0,0.00")
'</code>
Sub AddMoneyColumn(colName As String, colTitle As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_MONEY)
End Sub

'add file size column
'<code>.AddFileSizeColumn("fs", "File Size")
'</code>
Sub AddFileSizeColumn(colName As String, colTitle As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_FILESIZE)
End Sub

'add button column
'<code>.AddButtonColumn("btnAdd1Day", "Add 1 Day")
'</code>
Sub AddButtonColumn(colName As String, colTitle As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_BUTTON)
	SetButtonLabel(colName, colTitle)
	
End Sub

'add link column
'<code>.AddLinkColumn("emailaddress", "Add 1 Day", "_blank")
'</code>
Sub AddLinkColumn(colName As String, colTitle As String, target As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_LINK)
	SetColumnTarget(colName, target)
End Sub

'add link column
'<code>.AddLinkColumn1("emailaddress", "Add 1 Day", "emailaddress", "_blank)
'</code>
Sub AddLinkColumn1(colName As String, colTitle As String, hrefColumn As String, target As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_LINK)
	SetColumnTarget(colName, target)
	SetColumnHREF(colName, hrefColumn)
End Sub


'add columns from key value pairs
Sub AddColumns(flds As Map)
	For Each k As String In flds.Keys
		Dim v As String = flds.Get(k)
		AddColumn(k, v)
	Next
End Sub

'reset everything about data-table 
Sub Reset
	Dim args As List = NewList
	VC.SetData(itemsname, args)
	VC.SetData(selected, args)
	VC.SetData(groupby, args)
	VC.SetData(sortby, args)
	VC.SetData(groupdesc, args)
	VC.SetData(sortdesc, args)
	VC.SetData(expanded, args)
	VC.SetData(headers, args)
	VC.SetData(filters, args)
	VC.SetData(allcolumns, args)
	VC.SetData($"${mName}page"$, 1)
	VC.SetData($"${mName}pagecount"$, 0)
	'VC.SetData(keyID, DateTime.Now)
	columnsM.Initialize
End Sub


'set own filter
Sub ApplyFilter1(fltrs As List)
	VC.SetData(filters, fltrs)
	ApplyFilter
End Sub


'clear the rows
Sub Clear
	Items.Initialize 
	Reload(Items)
End Sub

'update the records
Sub Reload(records As List)
	Dim args As List = NewList
	Items = records
	VC.SetData(itemsname, records)
	VC.SetData(selected, args)
	VC.SetData(groupby, args)
	VC.SetData(sortby, args)
	VC.SetData(groupdesc, args)
	VC.SetData(sortdesc, args)
	VC.SetData(expanded, args)
	VC.SetData($"${mName}page"$, 1)
	VC.SetData($"${mName}pagecount"$, 0)
	'VC.SetData(keyID, DateTime.Now)
End Sub


'update all rows at runtime
Sub SetRows(records As List)
	Items = records
	VC.SetData(itemsname, records)
End Sub

'add a column
'key, title, 
Sub AddColumn1(colName As String, colTitle As String, colType As String, colWidth As Int, colSortable As Boolean, colAlign As String)
	colName = colName.tolowercase
	Dim nf As DataTableColumn = NewDataTableColumn(colName, colTitle)
	nf.align = colAlign
	nf.sortable = colSortable
	nf.className = Null
	nf.width = colWidth
	nf.ColType = colType
	columnsM.Put(colName, nf)
	SetColumnType(colName, colType)
End Sub

private Sub NewDataTableColumn(colname As String, coltitle As String) As DataTableColumn
	colname = colname.tolowercase
	Dim nf As DataTableColumn
	nf.Initialize
	nf.text = coltitle
	nf.value = colname
	nf.align = ALIGN_LEFT
	nf.sortable = True
	nf.filterable = True
	nf.divider = False
	nf.className = Null
	nf.width = 0
	nf.filter = Null
	nf.sort = Null
	nf.ColType = COLUMN_TEXT
	nf.Disabled = False
	nf.valueFormat = ""
	nf.bindTotals = ""
	nf.hasTotal = False
	nf.depressed = False
	nf.rounded = False
	nf.dark = False
	nf.label = ""
	nf.color = ""
	nf.outlined = False
	nf.shaped = False
	nf.colprops.Initialize 
	nf.Large = False
	nf.SourceTable = ""
	nf.SourceField = ""
	nf.DisplayField = ""
	nf.ReturnObject = False
	nf.PreDisplay = ""
	nf.ConditionalClass = ""
	nf.ConditionalColor = ""
	nf.ConditionalStyle = ""
	Return nf
End Sub

'apply a class to a row based on a method result
Sub SetRowColorOnCondition(MethodName As String)
	MethodName = MethodName.tolowercase
	AddAttr(":item-class", MethodName)
	Dim item As Map 
	SetMethod(mCallBack, MethodName, Array(item))
	VElement.RemoveBinding(MethodName)
End Sub

'apply a class to a column based on a method result
Sub SetColumnTextColorOnCondition(colName As String, MethodName As String)
	colName = colName.tolowercase
	MethodName = MethodName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.ConditionalClass = MethodName
		columnsM.Put(colName, nf)
		Dim item As Map 
		SetMethod(mCallBack, MethodName, Array(item))
		VElement.RemoveBinding(MethodName)
	End If
End Sub

Sub SetColumnStyleOnCondition(colName As String, MethodName As String)
	colName = colName.tolowercase
	MethodName = MethodName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.ConditionalStyle = MethodName
		columnsM.Put(colName, nf)
		Dim item As Map 
		SetMethod(mCallBack, MethodName, Array(item))
		VElement.RemoveBinding(MethodName)
	End If
End Sub

'apply a class to a column based on a method result
Sub SetColumnColorOnCondition(colName As String, MethodName As String)
	colName = colName.tolowercase
	MethodName = MethodName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.ConditionalColor = MethodName
		columnsM.Put(colName, nf)
		Dim item As Map 
		SetMethod(mCallBack, MethodName, Array(item))
	End If
End Sub

'apply a class to a column based on a method result
Sub SetColumnClassOnCondition(colName As String, ConditionalClass As String)
	colName = colName.tolowercase
	ConditionalClass = ConditionalClass.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.ConditionalClass = ConditionalClass
		columnsM.Put(colName, nf)
		Dim item As Map
		SetMethod(mCallBack, ConditionalClass, Array(item))
		VElement.RemoveBinding(ConditionalClass)
	End If
End Sub

'set colum properties
Sub SetColumnPreDisplay(colName As String, PreDisplay As String)
	colName = colName.tolowercase
	PreDisplay = PreDisplay.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.PreDisplay = PreDisplay
		columnsM.Put(colName, nf)
		Dim item As Map
		SetMethod(mCallBack, PreDisplay, Array(item))
		VElement.RemoveBinding(PreDisplay)
	End If
End Sub

'set colum properties
Sub SetColumnAttr(colName As String, attr As String, value As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.colprops.put(attr, value)
		columnsM.Put(colName, nf)
	End If
End Sub		

Sub SetColumnTarget(colName As String, target As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.target = target
		columnsM.Put(colName,col)
	End If
	
End Sub

Sub SetColumnHREF(colName As String, target As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.href = target
		columnsM.Put(colName,col)
	End If
End Sub


Sub SetColumnPrefix(colName As String, prefix As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.prefix = prefix
		columnsM.Put(colName,col)
	End If
	
End Sub


'define whether a column will be totalled or not
Sub SetColumnTotal(colName As String, callBackMethod As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.bindTotals = callBackMethod
		columnsM.Put(colName,col)
		hasTotals = True
	End If	
End Sub

'set image dimensions
Sub SetImageDimensions(colName As String, imgHeight As String, imgWidth As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.imgHeight = imgHeight
		col.imgWidth = imgWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnSortable(colName As String, colSortable As Boolean)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.sortable = colSortable
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnDisabled(colName As String, colDisabled As Boolean)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.Disabled = colDisabled
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnReadOnly(colName As String, colReadOnly As Boolean)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.ReadOnly = colReadOnly
		columnsM.Put(colName,col)
	End If
	
End Sub

'set the column data template
Sub SetColumnAlignment(colName As String, colAlign As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.align = colAlign
		columnsM.Put(colName,col)
	End If
	
End Sub

'change column icon
Sub SetColumnIcon(colName As String, icon As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.icon = icon
		columnsM.Put(colName,col)
	End If
	
End Sub

'set icon dimension
Sub SetIconDimensions(colName As String, iconSize As String, iconColor As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		If iconSize <> "" Then col.iconSize = iconSize
		If iconColor <> "" Then col.color = iconColor
		columnsM.Put(colName,col)
	End If
End Sub

Sub SetIconDimensions1(colName As String, iconSize As String, iconColor As String, columnWidth As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		If iconSize <> "" Then col.iconSize = iconSize
		If iconColor <> "" Then col.color = iconColor
		If columnWidth <> "" Then col.width = columnWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'set progress circular dialog
Sub SetProgressCircularDimensions(colName As String, progressColor As String, progressRotate As String, progressSize As String, progressWidth As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.progressRotate = progressRotate
		col.progressSize = progressSize
		col.progressWidth = progressWidth
		col.progressColor = progressColor
		columnsM.Put(colName,col)
	End If
	
End Sub

Sub SetProgressLinearDimensions(colName As String, progressColor As String, progressHeight As String, progressShowValue As Boolean)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.progressHeight = progressHeight
		col.progressShowValue = progressShowValue
		col.progressColor = progressColor
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be depressed
Sub SetButtonDepressed(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.depressed = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be round
Sub SetButtonRounded(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.rounded = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be shaped
Sub SetButtonShaped(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.shaped = True
		columnsM.Put(colName,col)
	End If
	
End Sub



'make the button to be round
Sub SetButtonOutlined(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.outlined = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be dark
Sub SetButtonDark(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.dark = True
		columnsM.Put(colName,col)
	End If
	
End Sub


'make the button to have a single label
Sub SetButtonLabel(colName As String, label As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.label = label
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be depressed
Sub SetButtonColor(colName As String, color As String, intensity As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		Dim scolor As String = $"${color} ${intensity}"$
		col.color = scolor
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be primary
Sub SetButtonPrimary(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "primary"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be success
Sub SetButtonSuccess(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "success"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be success
Sub SetButtonError(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "error"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be warning
Sub SetButtonWarning(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "warning"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be secondary
Sub SetButtonSecondary(colName As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "secondary"
		columnsM.Put(colName,col)
	End If
	
End Sub

'set rating dimensions
Sub SetRatingDimensions(colName As String, ratLength As String, ratColor As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.iconSize = ratLength
		If ratColor <> "" Then col.icon = ratColor
		columnsM.Put(colName,col)
	End If
End Sub


'set the column data template
Sub SetColumnWidth(colName As String, colWidth As Int)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.width = colWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'hide columns after table creation
Sub HideColumns(colNames As List)
	hdr.Initialize 
	'loop through each column
	For Each k As String In columnsM.Keys
		k = k.tolowercase
		'get the header
		Dim nf As DataTableColumn = columnsM.Get(k)
		Dim colpos As Int = colNames.IndexOf(k)
		'column is not found, thus visible
		If colpos = -1 Then
			Dim header As Map = BuildHeader(nf)
			hdr.Add(header)
		End If
	Next
	VC.SetData(headers, hdr)
End Sub

'Show columns after table creation
Sub ShowColumns(colNames As List)
	hdr.Initialize 
	'loop through each column
	For Each k As String In columnsM.Keys
		k = k.tolowercase
		'get the header
		Dim nf As DataTableColumn = columnsM.Get(k)
		Dim colpos As Int = colNames.IndexOf(k)
		If colpos >= 0 Then
			Dim header As Map = BuildHeader(nf)
			hdr.Add(header)
		End If
	Next
	VC.SetData(headers, hdr)
End Sub

'get all selected
Sub GetSelected As List
	Dim lst As List = VC.GetData(selected)
	Return lst
End Sub

'get all the data from the table
Sub GetData As List
	Dim lst As List = VC.GetData(itemsname)
	Return lst
End Sub

'get headers
Sub GetHeaders As List
	Dim lst As List = VC.GetData(headers)
	Return lst
End Sub

'add row at runtime
Sub AddItem(rowData As Map)
	VC.SetDataPush(itemsname, rowData)
End Sub

'remove item at position
Sub RemoveItemAtPosition(pos As Int)
	If pos >= 0 Then
		VC.SetDataSpliceRemove(itemsname, pos, 1)
	End If
End Sub

'remove an item where
Sub RemoveItem(prop As String, value As String)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = VC.GetDataPositionWhere(itemsname, m)
	If mpos >= 0 Then
		VC.SetDataSpliceRemove(itemsname, mpos, 1)
	End If
End Sub

'update item where
Sub UpdateItem(prop As String, value As String, item As Map)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = VC.GetDataPositionWhere(itemsname, m)
	If mpos >= 0 Then
		Dim oldm As Map = FindItemAtPosition(mpos)
		oldm = BANanoShared.Merge(oldm, item)
		VC.SetDataSplice(itemsname, mpos, 1, oldm)
	End If
End Sub

'update item where
Sub UpdateItemAtPosition(pos As Int, item As Map)
	If pos >= 0 Then
		Dim oldm As Map = FindItemAtPosition(pos)
		oldm = BANanoShared.Merge(oldm, item)
		VC.SetDataSplice(itemsname, pos, 1, oldm)
	End If
End Sub

'get data where
Sub FindItem(whereMap As Map) As Map
	Dim rm As Map = CreateMap()
	'find the item
	Dim recpos As Int = VC.GetDataPositionWhere(itemsname, whereMap)
	If recpos = -1 Then Return rm
	Dim recs As List = VC.GetData(itemsname)
	Dim rec As Map = recs.Get(recpos)
	Return rec
End Sub

'find item at position
Sub FindItemAtPosition(pos As Int) As Map
	Dim recs As List = VC.GetData(itemsname)
	Dim rec As Map = recs.Get(pos)
	Return rec
End Sub

'find item position
Sub FindItemPosition(whereMap As Map) As Int
	Dim mpos As Int = VC.GetDataPositionWhere(itemsname, whereMap)
	Return mpos
End Sub

'reset the filters
Sub ClearFilter
	ResetColumns
End Sub

'apply a filters bases on fields
Sub ApplyFilter
	filterList = VC.GetData(filters)
	Dim hdr As List
	hdr.Initialize 
	For Each strF As String In filterList
		If columnsM.ContainsKey(strF) Then
			Dim nf As DataTableColumn = columnsM.Get(strF)
			Dim header As Map = BuildHeader(nf)
			hdr.Add(header)
		End If
	Next
	VC.SetData(headers, hdr)
End Sub

'reset the columns
Sub ResetColumns
	hdr.Initialize
	filterList.Initialize 
	'loop through each column
	For Each k As String In columnsM.Keys
		'get the header
		Dim nf As DataTableColumn = columnsM.Get(k)
		Dim header As Map = BuildHeader(nf)
		hdr.Add(header)
		filterList.Add(k)
	Next
	Dim args As List = NewList
	VC.SetData(headers, hdr)
	VC.SetData(allcolumns, hdr)
	VC.SetData(filters, filterList)
	VC.SetData(selected, args)
	VC.SetData(groupby, args)
	VC.SetData(sortby, args)
	VC.SetData(groupdesc, args)
	VC.SetData(sortdesc, args)
	VC.SetData(expanded, args)
	'VC.SetData(keyID, DateTime.Now)
End Sub

Sub UpdateHeaders
	hdr.Initialize
	filterList.Initialize 
	'loop through each column
	For Each k As String In columnsM.Keys
		'get the header
		Dim nf As DataTableColumn = columnsM.Get(k)
		Dim header As Map = BuildHeader(nf)
		hdr.Add(header)
		filterList.Add(k)
	Next
	VC.SetData(headers, hdr)
	VC.SetData(allcolumns, hdr)
	VC.SetData(filters, filterList)
End Sub


'set column filterable
Sub SetColumnFilterable(colName As String, colFilter As Boolean)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.filterable = colFilter
		columnsM.Put(colName,col)
	End If
End Sub

'specify columns you can filter
Sub SetFilterable(colNames As List)
	For Each fld As String In colNames
		SetColumnFilterable(fld, True)
	Next
End Sub

'set column class
Sub SetColumnClass(colName As String, colClass As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.classname = colClass
		columnsM.Put(colName,col)
	End If
	
End Sub

'build headers
private Sub BuildHeaders(colNames As Map)
	hdr.Initialize
	filterList.Initialize 
	'
	For Each k As String In colNames.keys
		'get the column details
		Dim nf As DataTableColumn = colNames.Get(k)
		Dim header As Map = BuildHeader(nf)
		hdr.Add(header)
		filterList.Add(k)
	Next
	SetData(headers, hdr)
	SetData(filters, filterList)
	SetData(allcolumns, hdr)
End Sub

private Sub BuildHeader(nf As DataTableColumn) As Map
	Dim header As Map = CreateMap()
	header.Initialize
	header.put("text", nf.text)
	header.put("value", nf.value)
	header.put("align", nf.align)
	header.put("sortable", nf.Sortable)
	header.put("filterable", nf.filterable)
	header.put("divider", nf.divider)
	header.Put("class", nf.classname)
	If nf.width <> 0 Then header.Put("width", nf.width)
	If nf.filter <> Null Then header.put("filter", nf.filter)
	If nf.sort <> Null Then header.Put("sort", nf.sort)
	Return header
End Sub

'set the column data template
Sub SetColumnType(colName As String, colType As String)
	colName = colName.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.ColType = colType
		Dim item As Map
		Dim value As String
		Select Case colType
			Case COLUMN_IMAGE, COLUMN_AVATARIMG, COLUMN_SWITCH, COLUMN_BUTTON
				col.filterable = False
			Case COLUMN_NUMBER
				col.align = ALIGN_RIGHT
				col.valueFormat = "0"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, value))
				'add to methods
				SetCallBack("getmoneyformat", cb)
			Case COLUMN_MONEY
				col.align = ALIGN_RIGHT
				col.valueFormat = "0,0.00"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, value))
				'add to methods
				SetCallBack("getmoneyformat", cb)
			Case COLUMN_FILESIZE
				col.align = ALIGN_RIGHT
				Dim cb As BANanoObject = BANano.CallBack(Me, "getfilesize", Array(item))
				'add to methods
				SetCallBack("getfilesize", cb)
			Case COLUMN_DATE
				col.valueFormat = "yyyy-MM-dd"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
			Case COLUMN_TIME
				col.valueFormat = "HH:MM"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
			Case COLUMN_DATETIME
				col.valueFormat = "yyyy-MM-dd HH:MM"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
		End Select
		columnsM.Put(colName,col)
	End If
End Sub

Sub SetComboBox(colName As String, bLarge As Boolean, sourceTable As String, sourceField As String, displayField As String)
	colName = colName.tolowercase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	Dim col As DataTableColumn = columnsM.Get(colName)
	col.Large = bLarge
	col.SourceTable = sourceTable
	col.SourceField = sourceField
	col.DisplayField = displayField
	col.ColType = COLUMN_COMBOBOX
	columnsM.Put(colName, col)
End Sub

Sub SetTextField(colName As String, bLarge As Boolean)
	colName = colName.tolowercase
	Dim col As DataTableColumn = columnsM.Get(colName)
	col.Large = bLarge
	col.ColType = COLUMN_TEXTFIELD
	columnsM.Put(colName, col)
End Sub

Sub SetTextArea(colName As String, bLarge As Boolean)
	colName = colName.tolowercase
	Dim col As DataTableColumn = columnsM.Get(colName)
	col.Large = bLarge
	col.ColType = COLUMN_TEXTAREA
	columnsM.Put(colName, col)
End Sub

Sub SetAutoComplete(colName As String, bLarge As Boolean, sourceTable As String, sourceField As String, displayField As String)
	colName = colName.tolowercase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	Dim col As DataTableColumn = columnsM.Get(colName)
	col.Large = bLarge
	col.SourceTable = sourceTable
	col.SourceField = sourceField
	col.DisplayField = displayField
	col.ColType = COLUMN_AUTOCOMPLETE
	columnsM.Put(colName, col)
End Sub

'build controls
private Sub BuildSlots
	mElement.Empty
	Dim sbTotals As StringBuilder
	sbTotals.Initialize
	If hasTotals Then
		'lets define the totals row
		sbTotals.Append($"<v-template slot="body.append">"$)
		sbTotals.Append($"<tr>"$)
		sbTotals.Append($"<th>Totals</th>"$)
	End If
	Dim bHasEditDialog As Boolean = False
		
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In columnsM.Keys
		Dim nf As DataTableColumn = columnsM.Get(k)
		'get type of column
		Dim ct As String = nf.ColType
		'get column name
		Dim value As String = nf.value
		Dim bindTotals As String = nf.bindTotals
		Dim methodName As String = $"${mName}_${value}"$
		Dim changeEvent As String = $"${mName}_${value}_change"$
		Dim aslot As String = $"${mName}${value}slot"$
		'
		Dim sbThisEvent As String = ""
		Dim sbConditionalClass As String = ""
		Dim sbConditionalColor As String = ""
		Dim sbConditionalStyle As String = ""
		
		If nf.ConditionalClass <> "" Then
			sbConditionalClass = $":class="${nf.ConditionalClass}(props.item)""$
		End If
		'
		If nf.ConditionalColor <> "" Then
			sbConditionalColor = $":color="${nf.ConditionalColor}(props.item)""$
		End If
		'
		If nf.ConditionalStyle <> "" Then
			sbConditionalStyle = $":style="${nf.ConditionalStyle}(props.item)""$
		End If
		'
		'does it have a total
		If hasTotals Then
			Select Case bindTotals
			Case ""
				sbTotals.Append($"<th></th>"$)
			Case Else
				sbTotals.Append($"<th>{{ ${bindTotals} }}</th>"$)
			End Select
		End If
		'define args for methods
				
		Select Case ct
			Case COLUMN_SELECT
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				Dim itemValue As String
				If nf.PreDisplay = "" Then
					itemValue = $"props.item.${value}"$
				Else
					itemValue = $"props.item.${value}"$
					itemValue = $"${nf.predisplay}(${itemValue})"$
				End If
				'
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-select :items="${nf.sourceTable}" item-text="${nf.displayField}" item-value="${nf.sourcefield}" clearable v-model="props.item.${value}" :label="props.header.text" dense class="mt-2" outlined ${sbThisEvent}></v-select></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)
				'
				

			Case COLUMN_COMBOBOX
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				Dim itemValue As String
				If nf.PreDisplay = "" Then
					itemValue = $"props.item.${value}"$
				Else
					itemValue = $"props.item.${value}"$
					itemValue = $"${nf.predisplay}(${itemValue})"$
				End If
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-combobox :items="${nf.SourceTable}" item-text="${nf.DisplayField}" item-value="${nf.sourcefield}" clearable :return-object=false v-model="props.item.${value}" :label="props.header.text" dense class="mt-2" outlined ${sbThisEvent}></v-combobox></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)

			Case COLUMN_AUTOCOMPLETE
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				Dim itemValue As String
				If nf.PreDisplay = "" Then
					itemValue = $"props.item.${value}"$
				Else
					itemValue = $"props.item.${value}"$
					itemValue = $"${nf.predisplay}(${itemValue})"$
				End If
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-autocomplete :items="${nf.SourceTable}" item-text="${nf.DisplayField}" item-value="${nf.sourcefield}" clearable v-model="props.item.${value}" :label="props.header.text" dense class="mt-2" outlined ${sbThisEvent}></v-autocomplete></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)

			Case COLUMN_TEXTFIELD
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				Dim itemValue As String
				If nf.PreDisplay = "" Then
					itemValue = $"props.item.${value}"$
				Else
					itemValue = $"props.item.${value}"$
					itemValue = $"${nf.predisplay}(${itemValue})"$
				End If				
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-text-field dense class="mt-2" outlined v-model="props.item.${value}" ${sbThisEvent} :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
sb.Append(temp)

				
			Case COLUMN_TEXTAREA
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				'
				Dim itemValue As String
				If nf.PreDisplay = "" Then
					itemValue = $"props.item.${value}"$
				Else
					itemValue = $"props.item.${value}"$
					itemValue = $"${nf.predisplay}(${itemValue})"$
				End If		
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
						
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-textarea dense class="mt-2" outlined v-model="props.item.${value}" ${sbThisEvent} :label="props.header.text" counter></v-textarea></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)

			Case COLUMN_DATE, COLUMN_DATETIME, COLUMN_TIME
				
				'OLD START
				'Dim akey As String = $"${mName}_${value}"$
				'get the date format
				'Dim df As String = nf.valueFormat
				'
				'Dim span As VueElement
				'span.Initialize(mCallBack, akey, akey)
				'span.TagName = "span"
				'span.Append($"{{ getdateformat(item.${value}, "${df}") }}"$)
				
				'define template
				'Dim tmp As VueElement
				'tmp.Initialize(mCallBack, "" , "")
				'tmp.TagName = "v-template"
				'tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
		
				'tmp.Append(span.ToString)
				'sb.Append(tmp.ToString)
				'OLD END
				
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				Dim itemValue As String = ""
				'get the date format
				Dim df As String = nf.valueFormat
				
				itemValue = $"props.item.${value}"$
				itemValue = $"getdateformat(${itemValue}, "${df}")"$
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-text-field dense class="mt-2" outlined v-model="props.item.${value}" ${sbThisEvent} :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
sb.Append(temp)

			Case COLUMN_LINK1
				Dim akey As String = $"${mName}_${value}"$
				Dim aLink As VueElement
				aLink.Initialize(mCallBack, akey, akey)
				aLink.TagName = "a"
				If nf.ConditionalClass <> "" Then
					aLink.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					aLink.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					aLink.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				Dim sLink As String = $"item.${nf.href}"$
				aLink.AddAttr(":href", "'" & nf.prefix & "' + " & sLink)
				aLink.AddAttr("target", nf.target)
				If nf.PreDisplay = "" Then
					aLink.Append($"{{ item.${value} }}"$)
				Else
					aLink.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(aLink.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_LINK
				Dim akey As String = $"${mName}_${value}"$
				Dim aLink As VueElement
				aLink.Initialize(mCallBack, akey, akey)
				aLink.TagName = "a"
				If nf.ConditionalClass <> "" Then
					aLink.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					aLink.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					aLink.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				Dim sLink As String = $"item.${value}"$
				aLink.AddAttr(":href", "'" & nf.prefix & "' + " & sLink)
				aLink.AddAttr("target", nf.target)
				If nf.PreDisplay = "" Then
					aLink.Append($"{{ item.${value} }}"$)
				Else
					aLink.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(aLink.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_MONEY, COLUMN_NUMBER
				'*** OPEN OLD CODE
				'Dim akey As String = $"${mName}_${value}"$
				'get the date format
				'Dim mf As String = nf.valueFormat
				'Dim span As VueElement
				'span.Initialize(mCallBack, akey, akey)
				'span.TagName = "span"
				'span.Append($"{{ getmoneyformat(item.${value}, "${mf}") }}"$)
				'define template
				'Dim tmp As VueElement
				'tmp.Initialize(mCallBack, "", "")
				'tmp.TagName = "v-template"
				'tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				'tmp.Append(span.ToString)
				'sb.Append(tmp.ToString)
				'*** CLOSE OLD CODE
				'
				bHasEditDialog = True
				Dim slarge As String = "large"
				If nf.Large = False Then slarge = ""
				
				Dim itemValue As String = ""
				'get the date format
				Dim df As String = nf.valueFormat
				
				itemValue = $"props.item.${value}"$
				itemValue = $"getmoneyformat(${itemValue}, "${df}")"$
				
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
					sbThisEvent = $"@change="${changeEvent}(props.item)""$
				End If
				
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy><span ${sbConditionalClass} ${sbConditionalColor} ${sbConditionalStyle}>{{ ${itemValue} }}</span>
<v-template v-slot:input><v-text-field dense class="mt-2" outlined v-model="props.item.${value}" ${sbThisEvent} :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
sb.Append(temp)

			Case COLUMN_FILESIZE
				Dim akey As String = $"${mName}_${value}"$
				Dim span As VueElement
				span.Initialize(mCallBack, akey, akey)
				span.TagName = "span"
				If nf.ConditionalClass <> "" Then
					span.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					span.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					span.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				span.Append($"{{ getfilesize(item.${value}) }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(span.ToString)
				sb.Append(tmp.ToString)		
			Case COLUMN_PROGRESS_LINEAR
				Dim akey As String = $"${mName}_${value}"$
				Dim pl As VueElement
				pl.Initialize(mCallBack, akey, akey)
				pl.TagName = "v-progress-linear" 
				pl.VModel = $"item.${value}"$
				pl.Reactive = True
				pl.Rounded = True
				If nf.ConditionalClass <> "" Then
					pl.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.progressColor <> "" Then pl.Color = nf.progressColor
				If nf.progressheight <> "" Then pl.Height = nf.progressheight
				If nf.progressShowValue Then
					Dim tmpx As VueElement
					tmpx.Initialize(mCallBack, "", "")
					tmpx.TagName = "strong"
					tmpx.Append($"{{ Math.ceil(item.${value}) }}%"$)
					pl.Append(tmpx.ToString)
				End If
				If nf.ConditionalColor <> "" Then
					pl.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					pl.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					pl.AddAttr("v-on:change", $"${methodName}(item)"$)
					Dim args As List
					SetMethod(mCallBack, methodName, args)
				End If
				
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					pl.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(pl.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_PROGRESS_CIRCULAR
				Dim akey As String = $"${mName}_${value}"$
				Dim pc As VueElement
				pc.Initialize(mCallBack, akey, akey)
				pc.TagName = "v-progress-circular"
				pc.VModel = $"item.${value}"$
				pc.Reactive = True
				If nf.PreDisplay = "" Then
					pc.Append($"{{ item.${value} }}"$)
				Else
					pc.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If
				If nf.progressRotate <> "" Then pc.Rotate = nf.progressRotate
				If nf.progressSize <> "" Then pc.Size = nf.progressSize
				If nf.progressWidth <> "" Then pc.Width = nf.progressWidth
				If nf.progressColor <> "" Then pc.Color = nf.progressColor
				If nf.ConditionalClass <> "" Then
					pc.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					pc.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					pc.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					pc.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot, aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(pc.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_RATING
				Dim akey As String = $"${mName}_${value}"$
				Dim rat As VueElement
				rat.Initialize(mCallBack, akey, akey)
				rat.TagName = "v-rating"
				rat.Dense = True
				rat.VModel = $"item.${value}"$
				If nf.Disabled Then rat.disabled = True
				If nf.ReadOnly Then rat.readonly = True
				If nf.iconSize <> "" Then 
					rat.Length = nf.iconSize
				End If
				'
				If nf.color.StartsWith("item.") Then
					rat.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then 
						rat.Color = nf.color
					End If
				End If
				If nf.ConditionalClass <> "" Then
					rat.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					rat.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					rat.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					rat.AddAttr(k, v)
'				Next
'				
				'
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					rat.AddAttr("v-on:input", $"${methodName}(item)"$)
					Dim args As List
					SetMethod(mCallBack, methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot, aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(rat.ToString)
				sb.Append(tmp.ToString)
				'
			Case COLUMN_AVATARTXT
				Dim akey As String = $"${mName}_${value}"$
				Dim avt As VueElement
				avt.Initialize(mCallBack, akey, akey)
				avt.TagName = "v-avatar"
				avt.Size = "36"
				'
				If nf.color.StartsWith("item.") Then
					avt.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then 
						avt.Color = nf.color
					End If
				End If

				Dim avtimg As VueElement
				avtimg.Initialize(mCallBack, "", "")
				avtimg.TagName = "span"
				avtimg.AddClass("white--text")
				avtimg.AddClass("headline")
				If nf.PreDisplay = "" Then
					avtimg.AddAttr("v-text", $"item.${value}"$)
				Else
					avtimg.AddAttr("v-text", $"${nf.predisplay}(item.${value})"$)
				End If
					
				If nf.ConditionalClass <> "" Then
					avt.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					avt.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					avt.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
'								
				avt.Append(avtimg.ToString)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(avt.ToString)
				sb.Append(tmp.ToString)
				'
			Case COLUMN_AVATARICON		
				Dim akey As String = $"${mName}_${value}"$
				Dim avt As VueElement
				avt.Initialize(mCallBack, akey, akey)
				avt.TagName = "v-avatar"
				'
				If nf.color.StartsWith("item.") Then
					avt.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then 
						avt.Color = nf.color
					End If
				End If

				Dim avtimg As VueElement
				avtimg.Initialize(mCallBack, "", "")
				avtimg.TagName = "v-icon"
				avtimg.Dark = True
				
				If nf.PreDisplay = "" Then
					avtimg.AddAttr("v-text", $"item.${value}"$)
				Else
					avtimg.AddAttr("v-text", $"${nf.predisplay}(item.${value})"$)
				End If
					
				If nf.ConditionalClass <> "" Then
					avt.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					avt.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					avt.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
'								
				avt.Append(avtimg.ToString)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(avt.ToString)
				sb.Append(tmp.ToString)
				
			Case COLUMN_AVATARIMG
				Dim akey As String = $"${mName}_${value}"$
				Dim avt As VueElement
				avt.Initialize(mCallBack, akey, akey)
				avt.TagName = "v-avatar"
				'
				Dim avtimg As VueElement
				avtimg.Initialize(mCallBack, "", "")
				avtimg.TagName = "v-img"
				If nf.PreDisplay = "" Then
					avtimg.AddAttr(":src", $"item.${value}"$)
					avtimg.AddAttr(":lazy-src", $"item.${value}"$)
				Else
					avtimg.AddAttr(":src", $"${nf.predisplay}(item.${value})"$)
					avtimg.AddAttr(":lazy-src", $"${nf.predisplay}(item.${value})"$)
				End If
					
				avtimg.Alt = ""
				If nf.imgHeight <> "" Then
					avtimg.Height = nf.imgheight
					avtimg.MaxHeight = nf.imgheight
				End If
				'
				If nf.imgWidth <> "" Then
					avtimg.Width = nf.imgWidth
					avtimg.MaxWidth = nf.imgWidth
				End If
				If nf.ConditionalClass <> "" Then
					avt.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					avt.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					avt.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					avt.AddAttr(k, v)
'				Next
'								
				avt.Append(avtimg.ToString)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(avt.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_SWITCH, COLUMN_CHECKBOX
				Dim akey As String = $"${mName}_${value}"$
				Dim swt As VueElement
				swt.Initialize(mCallBack, akey, akey)
				swt.TagName = "v-checkbox"
				swt.MA = 0
				swt.HideDetails = True
				'
				If ct = COLUMN_SWITCH Then
					swt.tagname = "v-switch"
					swt.SetInset(True)
					swt.Dense = True
				End If
				swt.TrueValue = "Yes"
				swt.FalseValue = "No"
				swt.VModel = $"item.${value}"$
				If nf.Disabled Then swt.Disabled = True
				If nf.ConditionalClass <> "" Then
					swt.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					swt.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					swt.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					swt.AddAttr(k, v)
'				Next
'				
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					swt.AddAttr("v-on:change", $"${methodName}(item)"$)
					Dim args As List
		
					SetMethod(mCallBack, methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(swt.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_ICON
				Dim akey As String = $"${mName}_${value}"$
				Dim aicon As VueElement
				aicon.Initialize(mCallBack, akey, akey)
				aicon.TagName = "v-icon"
				If nf.PreDisplay = "" Then
					aicon.Append($"{{ item.${value} }}"$)
				Else
					aicon.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If
				If nf.Disabled Then aicon.disabled = True
				If nf.iconSize <> "" Then aicon.Size = nf.iconSize
				If nf.color.StartsWith("item.") Then
					aicon.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then aicon.Color = nf.color
				End If
				If nf.ConditionalClass <> "" Then
					aicon.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					aicon.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					aicon.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					aicon.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot, aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(aicon.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_IMAGE
				Dim avtimg As VueElement
				Dim akey As String = $"${mName}_${value}"$
				avtimg.Initialize(mCallBack,akey, akey)
				avtimg.TagName = "v-img"
				If nf.PreDisplay = "" Then
					avtimg.AddAttr(":src", $"item.${value}"$)
					avtimg.AddAttr(":lazy-src", $"item.${value}"$)
				Else
					avtimg.AddAttr(":src", $"${nf.predisplay}(item.${value})"$)
					avtimg.AddAttr(":lazy-src", $"${nf.predisplay}(item.${value})"$)
				End If	
				avtimg.Alt = ""
				If nf.Disabled Then avtimg.disabled = True
				If nf.imgHeight <> "" Then
					avtimg.Height = nf.imgheight
					avtimg.MaxHeight = nf.imgheight
				End If
				If nf.imgWidth <> "" Then
					avtimg.Width = nf.imgWidth
					avtimg.MaxWidth = nf.imgWidth
				End If
				avtimg.AddClass("rounded-lg")
				If nf.ConditionalClass <> "" Then
					avtimg.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					avtimg.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					avtimg.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					avtimg.AddAttr(k, v)
'				Next
'				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(avtimg.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_CHIP
				Dim chp As VueElement
				Dim akey As String = $"${mName}_${value}"$
				chp.Initialize(mCallBack, akey, akey)
				chp.TagName = "v-chip"
				chp.dark = True
				chp.Elevation = "4"
				If nf.PreDisplay = "" Then
					chp.Append($"{{ item.${value} }}"$)
				Else
					chp.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If	
				If nf.Disabled Then chp.disabled = True
				If nf.color.StartsWith("item.") Then
					chp.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then 
						chp.Color = nf.color
					End If
				End If
				'conditional formatting
				If nf.ConditionalClass <> "" Then
					chp.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					chp.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					chp.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If

'				Dim colprops As Map = nf.colprops
'				For Each k As String In colprops.Keys
'					Dim v As String = colprops.Get(k)
'					chp.AddAttr(k, v)
'				Next
'				Log(chp.bindings)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(chp.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_BUTTON
				Dim abtn As VueElement
				Dim akey As String = $"${mName}_${value}"$
				abtn.Initialize(mCallBack, akey, akey)
				abtn.TagName = "v-btn"
				abtn.AddClass("mr-2")
				abtn.Depressed = nf.depressed
				abtn.Rounded = nf.rounded
				abtn.Dark = nf.dark
				abtn.Label = nf.label
				abtn.Color = nf.color
				abtn.Outlined = nf.outlined
				abtn.Shaped = nf.shaped
				If nf.ConditionalClass <> "" Then
					abtn.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					abtn.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					abtn.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					abtn.AddAttr(k, v)
'				Next
					'
				If SubExists(mCallBack, methodName) Then
					abtn.AddAttr("v-on:click", $"${mName}_${value}(item)"$)
					Dim args As List
		
					SetMethod(mCallBack, methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(abtn.ToString)
				sb.Append(tmp.tostring)
			Case COLUMN_ACTION, COLUMN_EDIT, COLUMN_DELETE, COLUMN_SAVE, COLUMN_CANCEL
				Dim abtn As VueElement
				Dim akey As String = $"${mName}_${value}"$
				abtn.Initialize(mCallBack, akey, akey)
				abtn.TagName = "v-btn"
				abtn.Elevation = "4"
				'abtn.Small = True
				'abtn.dark = True
				abtn.ButtonIcon = True
				abtn.AddClass("mr-2")
				If nf.color.StartsWith("item.") Then
					abtn.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then abtn.Color = nf.color
				End If
				If nf.Disabled Then abtn.disabled = True
				If nf.ConditionalClass <> "" Then
					abtn.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					abtn.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					abtn.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					abtn.AddAttr(k, v)
'				Next
								
				Dim aicon As VueElement
				aicon.Initialize(mCallBack, "", "")
				aicon.TagName = "v-icon"
				aicon.Append(nf.icon)
				aicon.Dark = True
				If nf.iconSize <> "" Then 
					aicon.Size = nf.iconSize
				End If
				abtn.Append(aicon.tostring)
			
				If SubExists(mCallBack, methodName) Then
					abtn.AddAttr("v-on:click", $"${mName}_${value}(item)"$)
					Dim args As List
		
					SetMethod(mCallBack, methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(abtn.ToString)
				sb.Append(tmp.ToString)
			Case Else
				Dim akey As String = $"${mName}_${value}"$
				Dim pc As VueElement
				pc.Initialize(mCallBack, akey, akey)
				pc.TagName = "span"
				If nf.PreDisplay = "" Then
					pc.Append($"{{ item.${value} }}"$)
				Else
					pc.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
				End If
				If nf.ConditionalClass <> "" Then
					pc.Bind("class", $"${nf.ConditionalClass}(item)"$)
				End If
				If nf.ConditionalColor <> "" Then
					pc.Bind("color", $"${nf.ConditionalColor}(item)"$)
				End If
				If nf.ConditionalStyle <> "" Then
					pc.Bind("style", $"${nf.ConditionalStyle}(item)"$)
				End If
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, aslot , aslot)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(pc.ToString)
				sb.Append(tmp.ToString)
				
				
				'*** OPEN OLD CODE
'				If nf.PreDisplay <> "" Then
'					Dim akey As String = $"${mName}_${value}"$
'					Dim span As VueElement
'					span.Initialize(mCallBack, akey, akey)
'					span.TagName = "span"
'					span.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
'					'define template
'					Dim tmp As VueElement
'					tmp.Initialize(mCallBack, "" , "")
'					tmp.TagName = "v-template"
'					tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
'					tmp.Append(span.ToString)
'					sb.Append(tmp.ToString)
'				End If
				'*** CLOSE OLD CODE
				'
'				Dim itemValue As String
'				If nf.PreDisplay = "" Then
'					itemValue = $"item.${value}"$
'				Else
'					itemValue = $"item.${value}"$
'					itemValue = $"${nf.predisplay}(${itemValue})"$
'				End If				
'				
'				Dim temp As String = $"<v-template v-slot:item.${value}="props">
'		<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
'		@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
'		<v-template v-slot:input><v-text-field v-model="props.item.${value}" :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
'		sb.Append(temp)
		End Select
	Next
	'
	If hasTotals Then
		sbTotals.Append($"</tr>"$)
		sbTotals.Append("</template>")
		sb.Append(sbTotals.ToString)
	End If
	Dim sout As String = sb.tostring
	mElement.Append(sout)
	If bHasEditDialog Then
		Dim item As Map
		Dim savemethodName As String = $"${mName}_saveitem"$
		If SubExists(mCallBack, savemethodName) = False Then
			Log($"VueTable: Please add '${mName}_saveitem(item As Map)' callback."$)
			Return
		End If
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, savemethodName, Array(item))
		SetCallBack(savemethodName, cb)
		'
		Dim cancelmethodName As String = $"${mName}_cancelitem"$
		If SubExists(mCallBack, cancelmethodName) = False Then
			Log($"VueTable: Please add '${mName}_cancelitem(item As Map)' callback."$)
			Return
		End If
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, cancelmethodName, Array(item))
		SetCallBack(cancelmethodName, cb)
		'
		Dim openmethodName As String = $"${mName}_openitem"$
		If SubExists(mCallBack, openmethodName) = False Then
			Log($"VueTable: Please add '${mName}_openitem(item As Map)' callback."$)
			Return
		End If
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, openmethodName, Array(item))
		SetCallBack(openmethodName, cb)
	
		Dim closemethodName As String = $"${mName}_closeitem"$
		If SubExists(mCallBack, closemethodName) = False Then
			Log($"VueTable: Please add '${mName}_closeitem(item As Map)' callback."$)
			Return
		End If
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, closemethodName, Array(item))
		SetCallBack(closemethodName, cb)
	End If
End Sub

'set total-visible
Sub SetTotalVisible(varTotalVisible As String)
	totalVisible = varTotalVisible
End Sub

'update the data, dont call this directly
Sub Refresh	
	'build the headers
	BuildHeaders(columnsM)	
	BuildSlots
	VElement.BindAllEvents
	'SetData(keyID, DateTime.Now)
	If Items.Size > 0 Then
		SetData(itemsname, Items)
	End If
End Sub

'set calculate-widths
Sub setCalculateWidths(varCalculateWidths As Boolean)
	AddAttr(":calculate-widths", varCalculateWidths)
End Sub

Sub setDisableFiltering(varDisableFiltering As Boolean)
	AddAttr(":disable-filtering", varDisableFiltering)
End Sub

'set disable-pagination
Sub setDisablePagination(varDisablePagination As Boolean)
	AddAttr(":disable-pagination", varDisablePagination)
End Sub

'set disable-sort
Sub setDisableSort(varDisableSort As Boolean)
	AddAttr(":disable-sort", varDisableSort)
End Sub

'set fixed-header
Sub setFixedHeader(varFixedHeader As Boolean)
	AddAttr(":fixed-header", varFixedHeader)
	bFixedHeader = varFixedHeader
End Sub

Sub getFixedHeader As Boolean
	Return bFixedHeader
End Sub

'set hide-default-footer
Sub setHideDefaultFooter(varHideDefaultFooter As Boolean)
	AddAttr(":hide-default-footer", varHideDefaultFooter)
	bHideDefaultFooter = varHideDefaultFooter
End Sub

Sub getHideDefaultFooter As Boolean
	Return bHideDefaultFooter
End Sub

'set hide-default-header
Sub setHideDefaultHeader(varHideDefaultHeader As Boolean)
	AddAttr(":hide-default-header", varHideDefaultHeader)
	bHideDefaultHeader = varHideDefaultHeader
End Sub

Sub getHideDefaultHeader As Boolean
	Return bHideDefaultHeader
End Sub	

'set light
Sub setLight(varLight As Boolean)
	AddAttr(":light", varLight)
End Sub

'set loading
Sub setLoading(varLoading As Boolean)
	AddAttr(":loading", sloading)
	bLoading = varLoading
	SetData(sloading, bLoading)
End Sub

Sub getLoading As Boolean
	Return bLoading
End Sub

'set multi-sort
Sub setMultiSort(varMultiSort As Boolean)
	AddAttr(":multi-sort", varMultiSort)
	bMultiSort = varMultiSort
End Sub

Sub getMultiSort As Boolean
	Return bMultiSort
End Sub

'set must-sort
Sub setMustSort(varMustSort As Boolean)
	AddAttr(":must-sort", varMustSort)
	bMustSort = varMustSort
End Sub

Sub getMustSort As Boolean
	Return bMustSort
End Sub

'set show-expand
Sub setShowExpand(varShowExpand As Boolean)
	AddAttr(":show-expand", varShowExpand)
	bShowExpand = varShowExpand
End Sub

Sub getShowExpand As Boolean
	Return bShowExpand
End Sub

'set show-group-by
Sub setShowGroupBy(varShowGroupBy As Boolean)
	AddAttr(":show-group-by", varShowGroupBy)
	stGroupBy = varShowGroupBy
End Sub


'set dark
Sub setDark(varDark As Boolean)
	AddAttr(":dark", varDark)
	bDark = varDark
End Sub

'set show-select
Sub setShowSelect(varShowSelect As Boolean)
	AddAttr(":show-select", varShowSelect)
	bShowSelect = varShowSelect
End Sub

'set single-expand
Sub setSingleExpand(varSingleExpand As Boolean)
	AddAttr(":single-expand", varSingleExpand)
End Sub

'set single-select
Sub setSingleSelect(varSingleSelect As Boolean)
	If varSingleSelect Then
		AddAttr(":single-select", varSingleSelect)
		bSingleSelect = varSingleSelect
	End If
End Sub

'set item-key and force usage
Sub setItemKey(varItemKey As String)
	PrimaryKey = varItemKey
	AddAttr("item-key", varItemKey)
End Sub

'set items-per-page
Sub setItemsPerPage(varItemsPerPage As String)
	stItemsPerPage = varItemsPerPage
	SetData(sitemsperpage, varItemsPerPage)
End Sub

Sub getItemsPerPage As String
	Return stItemsPerPage
End Sub

'set loading-text
Sub setLoadingText(varLoadingText As String)
	AddAttr("loading-text", varLoadingText)
End Sub

'set selectable-key
Sub setSelectableKey(varSelectableKey As String)
	AddAttr("selectable-key", varSelectableKey)
End Sub

'set what will happen when the row is clicked
Sub SetOnClickRow(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e))
	AddAttr("v-on:click:row", methodName)
	'add to methods
	SetCallBack(methodName, cb)
End Sub

'on item selected event
Sub SetOnItemSelected(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e))
	AddAttr("v-on:item-selected", methodName)
	'add to methods
	SetCallBack(methodName, cb)
End Sub

Sub SetColumnsFormatDateTime(dates As List)
	SetDateTimeColumns(dates)
End Sub

'set the column type to date time for these columns
Sub SetDateTimeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_DATETIME)
	Next
End Sub

'set the column type to date time for these columns
Sub SetFileSizeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_FILESIZE)
	Next
End Sub

'set the current items
Sub setCurrentItems(theItems As List)
	VC.SetData(sCurrentItems, theItems)
End Sub

'get the current items
Sub getCurrentItems As List
	Dim res As List = VC.GetData(sCurrentItems)
	Return res
End Sub

Sub SetColumnsFormatFileSize(dates As List)
	SetFileSizeColumns(dates)
End Sub

'set the column type to time for these columns
Sub SetTimeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_TIME)
	Next
End Sub

Sub SetColumnsFormatTime(dates As List)
	SetTimeColumns(dates)
End Sub

Sub SetColumnsFormatMoney(dates As List)
	SetMoneyColumns(dates)
End Sub

'set the column type to time for these columns
Sub SetMoneyColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_MONEY)
	Next
End Sub

'set the column type to time for these columns
Sub SetNumberColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_NUMBER)
	Next
End Sub

Sub SetItemClass(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) Then
		AddAttr(":item-class", methodName)
		Dim Item As Map
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(Item))
		'add to methods
		SetCallBack(methodName, cb)
	End If
End Sub

'set the format of the date in the 
Sub SetColumnDateFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_DATE)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getdateformat", cb)
	End If
End Sub

'set the format of the date time in the column
Sub SetColumnDateTimeFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_DATETIME)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getdateformat", cb)
	End If
End Sub

'set the format of the number in the column
Sub SetColumnNumberFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_NUMBER)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		col.align = ALIGN_RIGHT
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getmoneyformat", cb)
	End If
End Sub

private Sub getdateformat(item As String, sFormat As String) As String		'ignoredeadcode
	Dim svalue As String = FormatDisplayDate(item, sFormat)
	Return svalue
End Sub


private Sub getmoneyformat(item As String, sformat As String) As String		'ignoredeadcode
	Dim svalue As String = FormatDisplayNumber(item, sformat)
	Return svalue
End Sub

private Sub getfilesize(item As String) As String							'ignoredeadcode
	Dim svalue As String = FormatFileSize(item)
	Return svalue
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	item = BANanoShared.Val(item)
	item = BANano.parseFloat(item)
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

Sub FormatFileSize(Bytes As Float) As String					'ignoredeadcode
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub


'set dense
public Sub setDense(varDense As Boolean)
	AddAttr(":dense", varDense)
	bDense = varDense
End Sub

'get dense
public Sub getDense() As Boolean
	Return bDense
End Sub

'get dense
public Sub getItemKey() As String
	Return PrimaryKey
End Sub


public Sub setElevation(varElevation As String)
	VElement.setelevation(varElevation)
End Sub

public Sub getElevation() As String
	Return stElevation
End Sub

public Sub getGroupBy() As String
	Return stGroupBy
End Sub


public Sub getShowSelect() As Boolean
	Return bShowSelect
End Sub

Sub getSingleSelect() As Boolean
	Return bSingleSelect
End Sub

'set direct method
Sub SetMethod(Module As Object,methodName As String, args As List)
	VElement.SetMethod(Module, methodName, args)
	VElement.RemoveBinding(methodName)
End Sub

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("hidden-sm-only")
End Sub
	
Sub HiddenMDOnly
	AddClass("hidden-md-only")
End Sub
	
Sub HiddenLGOnly
	AddClass("hidden-lg-only")
End Sub
	
Sub HiddenXLOnly
	AddClass("hidden-xl-only")
End Sub
'
Sub HiddenXSAndDown
	AddClass("hidden-xs-and-down")
End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
Sub HiddenXLAndDown
	AddClass("hidden-xl-and-down")
End Sub
'
Sub HiddenXSAndUp
	AddClass("hidden-xs-and-up")
End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
Sub HiddenXLAndUp
	AddClass("hidden-xl-and-up")
End Sub	

Sub HideOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("d-none d-sm-flex")
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


'add row list using data keys
Sub AddRow2(rowList As List)
	Dim dk As List = BANanoShared.StrParse(";", sColumnFields)
	Dim nr As Map = CreateMap()
	Dim dkTot As Int = dk.Size - 1
	Dim dkCnt As Int
	For dkCnt = 0 To dkTot
		Dim k As String = dk.Get(dkCnt)
		Dim v As String = rowList.Get(dkCnt)
		k = k.Trim
		nr.Put(k, v)
	Next
	Items.Add(nr)
End Sub


Sub BindState(VS As VueComponent)
	VC = VS
	Refresh
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

'build a table from the table description
Sub BuildFromTableDescription(TD As TableDescription, ShowPrimaryKey As Boolean, ShowBlobs As Boolean, PdfBlobs As Boolean, ExcelBlobs As Boolean, FormBlobs As Boolean)
	'reset the table
	Reset
	'update the table title
	UpdateTitle(TD.tableName)
	'attribute cannot be changed at runtime
	setItemKey(TD.PrimaryKey)
	'get the fields
	Dim fields As List = TD.Fields
	Dim pk As String = TD.PrimaryKey
		'
	Dim fldTot As Int = fields.Size - 1
	Dim fldCnt As Int
	
	'loop through each column and create the structure
	For fldCnt = 0 To fldTot
		Dim colm As Map = fields.get(fldCnt)
		Dim sfieldtype As String = colm.Get("fieldtype")
		Dim sfieldname As String = colm.Get("fieldname")
		'
		colm.Put("title", sfieldname)
		colm.Put("ontable", "Yes")
		colm.Put("onpdf", "Yes")
		colm.Put("onxls", "Yes")
		colm.Put("onform", "Yes")
			
		'check against blob
		If sfieldtype.EqualsIgnoreCase("blob") Then
			If ShowBlobs Then
				colm.Put("ontable", "Yes")
			Else
				colm.Put("ontable", "No")
				'do not process further
			End If
			'can pdf
			If PdfBlobs Then
				colm.Put("onpdf", "Yes")
			Else
				colm.Put("onpdf", "No")	
			End If
			'can excel
			If ExcelBlobs Then
				colm.Put("onxls", "Yes")
			Else
				colm.Put("onxls", "No")				
			End If
			'can form
			If FormBlobs Then
				colm.Put("onform", "Yes")
			Else
				colm.Put("onform", "No")	
			End If
		End If
		
		Dim sontable As String = colm.Get("ontable")
		'this field will be in the table
		If sontable = "Yes" Then
			If sfieldname.EqualsIgnoreCase(pk) Then 
				If ShowPrimaryKey = False Then
					Continue
				End If
			End If
			'add the column to the collection
			AddColumn(sfieldname.tolowercase, sfieldname)
			SetColumnFilterable(sfieldname, True)
		End If
	Next
	'add actions
	AddEdit
	AddDelete
	'update headers to new ones
	UpdateHeaders
	'save the fields
	VC.SetData("fields", fields)
End Sub

'get filtered items for table
Sub getFilteredItems As List
	Dim schildren As String = "$children"
	'get the table
	Dim refs As BANanoObject = VC.refs
	Dim children As List = refs.GetField(mName).GetField(schildren)
	Dim fChild As Map = children.Get(0)
	Dim filteredItems As List = fChild.Get("filteredItems")
	Return filteredItems
End Sub

'get computed items for table
Sub getComputedItems As List
	Dim schildren As String = "$children"
	'get the table
	Dim refs As BANanoObject = VC.refs
	Dim children As List = refs.GetField(mName).GetField(schildren)
	Dim fChild As Map = children.Get(0)
	Dim computedItems As List = fChild.Get("computedItems")
	Return computedItems
End Sub


'read an item where
Sub Read(V As VueComponent, prop As String, value As String) As Map
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = V.GetDataPositionWhere(itemsname, m)
	Dim res As Map = CreateMap()
	If mpos >= 0 Then
		res = FindItemAtPosition1(V, mpos)
	End If
	Return res
End Sub

'add a new row at the end of the items in realtime
Sub Add(V As VueComponent, rowdata As Map)
	V.SetDataPush(itemsname, rowdata)
End Sub

'add a row at the top of the list
Sub AddOnTop(V As VueComponent, rowdata As Map)
	V.SetDataUnshift(itemsname, rowdata)
End Sub

'remove an item where
Sub Delete(V As VueComponent, prop As String, value As String)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = V.GetDataPositionWhere(itemsname, m)
	If mpos >= 0 Then
		VC.SetDataSpliceRemove(itemsname, mpos, 1)
	End If
End Sub

'update item where
Sub Update(V As VueComponent, prop As String, value As String, item As Map)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = V.GetDataPositionWhere(itemsname, m)
	If mpos >= 0 Then
		Dim oldm As Map = FindItemAtPosition1(V, mpos)
		oldm = BANanoShared.Merge(oldm, item)
		VC.SetDataSplice(itemsname, mpos, 1, oldm)
	End If
End Sub


'find item at position
private Sub FindItemAtPosition1(V As VueComponent, pos As Int) As Map
	Dim recs As List = V.GetData(itemsname)
	Dim rec As Map = recs.Get(pos)
	Return rec
End Sub