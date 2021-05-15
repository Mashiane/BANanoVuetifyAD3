B4J=true
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
#Event: ItemSelected (item As Map)
#Event: ClickRow (e As BANanoEvent)
#Event: ClearSort_Click (e As BANanoEvent)
#Event: ClearFilter_Click (e As BANanoEvent)
#Event: FilterChange(e As BANanoEvent)
#Event: Filter_Click(e As BANanoEvent)
#Event: Back_Click (e As BANanoEvent)

#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Ref, DisplayName: Ref, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ItemKey, DisplayName: ItemKey, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ItemsPerPage, DisplayName: ItemsPerPage, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue:  False, Description:
#DesignerProperty: Key: HasSearch, DisplayName: Has Search, FieldType: Boolean, DefaultValue:  False, Description:
#DesignerProperty: Key: ShowSelect, DisplayName: ShowSelect, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: SingleSelect, DisplayName: SingleSelect, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: MultiSort, DisplayName: Multi Sort, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: MustSort, DisplayName: Must Sort, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: FixedHeader, DisplayName: Fixed Header, FieldType: Boolean, DefaultValue:  False, Description: 
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
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue:  , Description: 
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
	Private mTagName As String = "v-data-table"
	Private mStates As String
	Public bindings As Map
	Public methods As Map
	Private stRef As String = ""
	Private stVElse As String = ""
	Private stVElseIf As String = ""
	Private stVIf As String = ""
	Private stVShow As String = ""
	Private bDense As Boolean = False
	Private stItemsPerPage As String = ""
	Private stElevation As String = ""
	Private stGroupBy As String = ""
	Private bShowGroupBy As Boolean = False
	Private bShowSelect As Boolean = False
	Private bSingleSelect As Boolean = False
	Private bMultiSort As Boolean = False
	Private bMustSort As Boolean = False
	Private bFixedHeader As Boolean = False
	Private bHideDefaultHeader As Boolean = False
	Private bHideDefaultFooter As Boolean = False
	Private bShowExpand As Boolean = False
	Private bDark As Boolean = False
	Private bLoading As Boolean = False
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
	Large As Boolean, SourceTable As String, SourceField As String, DisplayField As String, ReturnObject As Boolean, PreDisplay As String, href As String)
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
	'
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
	'
	AddAttr(":loading", sloading)
	AddAttr(":items", itemsname)
	AddAttr(":headers", headers)
	AddAttr(":value", selected)
	AddAttr(":group-by", groupby)
	AddAttr(":sort-by", sortby)
	AddAttr(":group-desc", groupdesc)
	AddAttr(":sort-desc", sortdesc)
	AddAttr(":expanded.sync", expanded)
	'AddAttr(":key", keyID)
	AddAttr(":search", search)
	
	setNoDataText("Working on it, please wait...")
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

'add a new record
Sub AddRow(rowData As Map)
	Items.Add(rowData)
End Sub

'add a new row at the end of the items
Sub AddRow1(rowdata As Map)
	VC.SetDataPush(itemsname, rowdata)
End Sub

'realtime removal of item
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

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mStates = Props.Get("States")
		stRef = Props.Get("Ref")
		stVElse = Props.Get("VElse")
		stVElseIf = Props.Get("VElseIf")
		stVIf = Props.Get("VIf")
		stVShow = Props.Get("VShow")
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
		bLoading = Props.Get("Loading")
		bDark = Props.Get("Dark")
	End If
	
	setLoading(bLoading)
	setMultiSort(bMultiSort)
	setMustSort(bMustSort)
	setFixedHeader(bFixedHeader)
	setHideDefaultHeader(bHideDefaultHeader)
	setHideDefaultFooter(bHideDefaultFooter)
	setShowExpand(bShowExpand)
	setDark(bDark)
	
	AddAttr("ref", stRef)
	AddAttr("v-else", stVElse)
	AddAttr("v-else-if", stVElseIf)
	AddAttr("v-if", stVIf)
	AddAttr("v-show", stVShow)
	AddAttr("item-key", PrimaryKey)
	AddAttr(":dense", bDense)
	AddAttr("items-per-page.sync", stItemsPerPage)
	setElevation(stElevation)
	AddAttr(":show-select", bShowSelect)
	AddAttr(":single-select", bSingleSelect)
	If BANano.IsNull(stGroupBy) = False Then
		Dim gb As List = BANanoShared.StrParse(",",  stGroupBy)
		SetData(groupby, gb)
	End If
	AddAttr(":show-group-by", bShowGroupBy)
	'
	AddClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	'
	SetOnItemSelected($"${mName}_ItemSelected"$)
	SetOnClickRow($"${mName}_ClickRow"$)

	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	setStates(mStates)
	setTitle(mTitle)
	'
	If mHasSearch = True Then
		AddSpacer
		AddSearch
	End If
End Sub

Sub getShowGroupBy As Boolean
	Return bShowGroupBy
End Sub

'return the generated html
Sub ToString As String
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	If className <> "" Then AddAttr("class", className)
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	If styleName <> "" Then AddAttr("style", styleName)
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	'		
	Dim rslt As String = $"<${mTagName} id="${mName}" ${iStructure}></${mTagName}>"$
	Dim sb As StringBuilder
	sb.Initialize 
	sb.Append($"<v-card id="${mName}card">"$)
	sb.Append($"<v-card-title id="${titleID}">"$)
	sb.Append($"{{ ${titleText} }}"$)
	sb.Append($"</v-card-title>"$)
	sb.Append($"<v-divider v-show="${filtershow}"></v-divider>"$)
	sb.Append($"<v-card-text id="${mName}cardtext" v-show="${filtershow}"><p>Choose Filter Columns</p><div id="${mName}filter"></div></v-card-text>"$)
	sb.Append(rslt)
	sb.Append($"</v-card>"$)
	Return sb.tostring
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
	VC.BindVueElement(vbtnright)
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
	Dim vchipgroup As VueElement
	vchipgroup.Initialize(mCallBack, filterChips, filterChips)
	vchipgroup.Bind("show-arrows", True)
	vchipgroup.VModel = filters
	vchipgroup.SetData(filters, NewList)
	vchipgroup.Multiple = True
	vchipgroup.Column = True
	vchipgroup.AddAttr("active-class", activeClass)
	vchipgroup.BindAllEvents
	vchipgroup.SetOnEventOwn(mCallBack, $"${mName}_filterchange"$, "change", "")
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement
	vchip.Initialize(mCallBack, filterChip, filterChip)
	vchip.VFor = $"item in ${allcolumns}"$
	vchip.BindKey("item.value")
	vchip.Caption = vchip.ItemInMoustache("text")
	vchip.AddAttr(":filter", True)
	vchip.AddAttr(":value", "item.value")
	vchip.Outlined = True
	vchipgroup.BindVueElement(vchip)
	VC.BindVueElement(vchipgroup)
End Sub


'add a search to the card title
Sub AddSearch
	Dim str As String = $"<v-text-field id="${searchID}" v-model="${search}" append-icon="mdi-magnify" label="Search" single-line hide-details clearable class="shrink"></v-text-field>"$
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
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
		prop = ""
	End If
	If prop = "" Then Return
	prop = prop.tolowercase
	bindings.put(prop, value)
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
				bindings.Put(k, False)
			End If
		else if v.EqualsIgnoreCase("true") Then
			If k <> "" Then
				bindings.Put(k, True)
			End If
		else if v.EqualsIgnoreCase("array") Then
			If k <> "" Then
				Dim nl As List = NewList
				bindings.Put(k, nl)
			End If
		else if v.EqualsIgnoreCase("object") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				bindings.Put(k, nm)
			End If
		else if v.EqualsIgnoreCase("map") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				bindings.Put(k, nm)
			End If
		else if v.EqualsIgnoreCase("string") Then
			If k <> "" Then
				bindings.Put(k, "")
			End If
		else if v.EqualsIgnoreCase("boolean") Then
			If k <> "" Then
				bindings.Put(k, False)
			End If
		else if v.EqualsIgnoreCase("int") Then
			If k <> "" Then
				bindings.Put(k, 0)
			End If
		Else
			If k <> "" Then
				bindings.put(k, v)
			End If
		End If
	Next
End Sub

'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	Dim elIT As VueElement
	elIT.Initialize(mCallBack, elID, tag)
	elIT.Append(Text)
	If loose <> Null Then
		For Each k As String In loose
			elIT.SetAttr(k, True)
		Next
	End If
	If props <> Null Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If styleProps <> Null Then
		For Each k As String In styleProps.Keys
			Dim v As String = styleProps.Get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If classNames <> Null Then
		elIT.AddClasses(classNames)
	End If
	'convert to string
	Dim sElement As String = elIT.tostring
	mElement.Append(sElement)
End Sub

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

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

'add a class
public Sub AddClass(varClass As String)
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then
		mElement.AddClass(varClass)
	Else
		Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
		For Each mt As String In mxItems
			classList.put(mt, mt)
		Next
	End If
End Sub

Sub AddClasses(listOfClasses As List)
	Dim strClass As String = BANanoShared.Join(" ", listOfClasses)
	AddClass(strClass)
End Sub

'add a class on condition
public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then
		mElement.AddClass(varClass)
	Else
		Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
		For Each mt As String In mxItems
			classList.put(mt, mt)
		Next
	End If
End Sub

'add an attr on condition
public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	AddAttr(varClass, varShouldBe)
End Sub


'add a style
public Sub AddStyle(varProp As String, varStyle As String)
	If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return
	If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle)
	If mElement <> Null Then
		Dim aStyle As Map = CreateMap()
		aStyle.put(varProp, varStyle)
		Dim sStyle As String = BANano.ToJSON(aStyle)
		mElement.SetStyle(sStyle)
	Else
		styleList.put(varProp, varStyle)
	End If
End Sub


'add an attr on condition
public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object)
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe <> varCondition Then Return
	AddStyle(varClass, varCondition)
End Sub

public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe Then AddStyle(varClass, varCondition)
End Sub

Sub SetAttr(varProp As String, varValue As String)
	AddAttr(varProp, varValue)
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
	If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return
	If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue)
	If varValue = "none" Then varValue = ""
	If varValue = "" Then Return
	If varProp = "align" And varValue.EqualsIgnoreCase("false") Then Return
	If varProp = "justify" And varValue.EqualsIgnoreCase("false") Then Return
	'we are adding a boolean
	If BANano.IsBoolean(varValue) Then
		If varValue = True Then
			If mElement <> Null Then
				mElement.SetAttr(varProp, varValue)
			Else
				attributeList.put(varProp, varValue)
			End If
		End If
	Else
		'varValue = varValue.Replace("~","=")
		'varValue = varValue.Replace("#","$")
		'we are adding a string
		If varValue.StartsWith(":") Then
			Dim rname As String = BANanoShared.MidS(varValue, 2)
			If rname.Contains(".") = False Then
				bindings.Put(rname, Null)
			End If
			If mElement <> Null Then
				mElement.SetAttr($":${varProp}"$, rname)
			Else
				attributeList.put($":${varProp}"$, rname)
			End If
		Else
			'we have a binding on the property
			If varProp.StartsWith(":") Then
				If varValue.Contains(".") = False Then
					bindings.Put(varValue, Null)
				End If
			End If
			
			If mElement <> Null Then
				mElement.SetAttr(varProp, varValue)
			Else
				attributeList.put(varProp, varValue)
			End If
		End If
		'
		Select Case varProp
			Case "v-model", "v-show", "v-if", "v-else-if", "required", "disabled", "readonly"
				If varValue <> "" Then
					bindings.Put(varValue, Null)
				End If
		End Select
	End If
	Return
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


Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement
	parent = parent.ToLowerCase
	parent = parent.Replace("#","")
	Dim item As String = $"<${tag} id="${id}"></${tag}>"$
	Dim el As BANanoElement = BANano.GetElement($"#${parent}"$).Append(item).Get($"#${id}"$)
	el.SetText(text)
	Return el
End Sub

'banano helper class
Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
	parentID = parentID.ToLowerCase
	parentID = parentID.Replace("#","")
	id = id.tolowercase
	Dim el As BANanoElement = BANano.GetElement($"#${parentID}"$).Append($"<${tag} id="${id}"></${tag}>"$).Get($"#${id}"$)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			el.SetAttr(k, v)
		Next
	End If
	'
	If BANano.IsNull(styles) = False Then
		Dim strStyle As String = BANano.ToJson(styles)
		el.SetStyle(strStyle)
	End If
	'
	If classes <> "" Then el.AddClass(classes)
	el.settext(text)
	Return el
End Sub

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
	VC.SetData(itemsname, NewList)
	VC.SetData(selected, NewList)
	VC.SetData(groupby, NewList)
	VC.SetData(sortby, NewList)
	VC.SetData(groupdesc, NewList)
	VC.SetData(sortdesc, NewList)
	VC.SetData(expanded, NewList)
	VC.SetData(headers, NewList)
	VC.SetData(filters, NewList)
	VC.SetData(allcolumns, NewList)
	'VC.SetData(keyID, DateTime.Now)
	'
	columnsM.Initialize
End Sub

'set own filter
Sub ApplyFilter1(fltrs As List)
	VC.SetData(filters, fltrs)
	ApplyFilter
End Sub

'update the records
Sub Reload(records As List)
	VC.SetData(itemsname, records)
	VC.SetData(selected, NewList)
	VC.SetData(groupby, NewList)
	VC.SetData(sortby, NewList)
	VC.SetData(groupdesc, NewList)
	VC.SetData(sortdesc, NewList)
	VC.SetData(expanded, NewList)
	'VC.SetData(keyID, DateTime.Now)
End Sub

Sub SetRows(records As List)
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
	Return nf
End Sub

'set colum properties
Sub SetColumnPreDisplay(colName As String, PreDisplay As String)
	colName = colName.tolowercase
	PreDisplay = PreDisplay.tolowercase
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.PreDisplay = PreDisplay
		columnsM.Put(colName, nf)
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

Sub AddItem(rowData As Map)
	VC.SetDataPush(itemsname, rowData)
End Sub

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
		VC.SetDataSplice(itemsname, mpos, 1, item)
	End If
End Sub

'update item where
Sub UpdateItemAtPosition(pos As Int, item As Map)
	If pos >= 0 Then
		VC.SetDataSplice(itemsname, pos, 1, item)
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
	VC.SetData(headers, hdr)
	VC.SetData(allcolumns, hdr)
	VC.SetData(filters, filterList)
	VC.SetData(selected, NewList)
	VC.SetData(groupby, NewList)
	VC.SetData(sortby, NewList)
	VC.SetData(groupdesc, NewList)
	VC.SetData(sortdesc, NewList)
	VC.SetData(expanded, NewList)
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
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
<v-template v-slot:input><v-select :items="${nf.sourceTable}" item-text="${nf.displayField}" item-value="${nf.sourcefield}" clearable v-model="props.item.${value}" :label="props.header.text" @change="${changeEvent}(props.item.${value})"></v-Select></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)
				'
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
				End If

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
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
<v-template v-slot:input><v-combobox :items="${nf.SourceTable}" item-text="${nf.DisplayField}" item-value="${nf.sourcefield}" clearable :return-object=false v-model="props.item.${value}" :label="props.header.text" @change="${changeEvent}(props.item.${value})"></v-combobox></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)
				'
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
				End If

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
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
<v-template v-slot:input><v-autocomplete :items="${nf.SourceTable}" item-text="${nf.DisplayField}" item-value="${nf.sourcefield}" clearable v-model="props.item.${value}" :label="props.header.text" @change="${changeEvent}(props.item.${value})"></v-autocomplete></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)
				'
				If SubExists(mCallBack, changeEvent) Then
					Dim args As List
					SetMethod(mCallBack, changeEvent, args)
				End If

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
				
Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
<v-template v-slot:input><v-text-field v-model="props.item.${value}" :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
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
				
				Dim temp As String = $"<v-template v-slot:item.${value}="props">
<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" @open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
<v-template v-slot:input><v-textarea v-model="props.item.${value}" :label="props.header.text" counter></v-textarea></v-template>
</v-edit-dialog></v-template>"$
				sb.Append(temp)
			Case COLUMN_DATE, COLUMN_DATETIME, COLUMN_TIME
				Dim akey As String = $"${mName}_${value}"$
				'get the date format
				Dim df As String = nf.valueFormat
				'
				Dim span As VueElement
				span.Initialize(mCallBack, akey, akey)
				span.TagName = "span"
				span.Append($"{{ getdateformat(item.${value}, "${df}") }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "" , "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
		
				tmp.Append(span.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_LINK1
				Dim akey As String = $"${mName}_${value}"$
				Dim aLink As VueElement
				aLink.Initialize(mCallBack, akey, akey)
				aLink.TagName = "a"
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
				tmp.Initialize(mCallBack, "" , "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(aLink.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_LINK
				Dim akey As String = $"${mName}_${value}"$
				Dim aLink As VueElement
				aLink.Initialize(mCallBack, akey, akey)
				aLink.TagName = "a"
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
				tmp.Initialize(mCallBack, "" , "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(aLink.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_MONEY, COLUMN_NUMBER
				Dim akey As String = $"${mName}_${value}"$
				'get the date format
				Dim mf As String = nf.valueFormat
				'*** OPEN OLD CODE
				Dim span As VueElement
				span.Initialize(mCallBack, akey, akey)
				span.TagName = "span"
				span.Append($"{{ getmoneyformat(item.${value}, "${mf}") }}"$)
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "", "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(span.ToString)
				sb.Append(tmp.ToString)
				'*** CLOSE OLD CODE
				'
'				Dim itemValue As String = $"{{ getmoneyformat(item.${value}, "${mf}") }}"$
'				
'				Dim temp As String = $"<v-template v-slot:item.${value}="props">
'<v-edit-dialog :return-value.sync="props.item.${value}" @save="${mName}_saveitem(props.item)" @cancel="${mName}_cancelitem(props.item)" 
'@open="${mName}_openitem(props.item)" @close="${mName}_closeitem(props.item)" ${slarge} lazy> {{ ${itemValue} }}
'<v-template v-slot:input><v-text-field v-model="props.item.${value}" :label="props.header.text" counter></v-text-field></v-template></v-edit-dialog></v-template>"$
'sb.Append(temp)

			Case COLUMN_FILESIZE
				Dim akey As String = $"${mName}_${value}"$
				Dim span As VueElement
				span.Initialize(mCallBack, akey, akey)
				span.TagName = "span"
				span.Append($"{{ getfilesize(item.${value}) }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "" , "")
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
				If nf.progressColor <> "" Then pl.Color = nf.progressColor
				If nf.progressheight <> "" Then pl.Height = nf.progressheight
				If nf.progressShowValue Then
					Dim tmpx As VueElement
					tmpx.Initialize(mCallBack, "", "")
					tmpx.TagName = "strong"
					tmpx.Append($"{{ Math.ceil(item.${value}) }}%"$)
					pl.Append(tmpx.ToString)
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
				tmp.Initialize(mCallBack, "" , "")
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
				
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					pc.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "" ,"")
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
				tmp.Initialize(mCallBack, "", "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(rat.ToString)
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
				tmp.Initialize(mCallBack, "" , "")
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
				tmp.Initialize(mCallBack, "" , "")
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
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					aicon.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "", "")
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
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					avtimg.AddAttr(k, v)
'				Next
'				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "" , "")
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
				'
'				Dim colprops As Map = nf.colprops
'				For Each k As String In colprops.Keys
'					Dim v As String = colprops.Get(k)
'					chp.AddAttr(k, v)
'				Next
'				Log(chp.bindings)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, "" , "")
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
				tmp.Initialize(mCallBack, "" ,"")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(abtn.ToString)
				sb.Append(tmp.tostring)
			Case COLUMN_ACTION, COLUMN_EDIT, COLUMN_DELETE, COLUMN_SAVE, COLUMN_CANCEL
				Dim abtn As VueElement
				Dim akey As String = $"${mName}_${value}"$
				Log(akey)
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
				tmp.Initialize(mCallBack, "" , "")
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.Append(abtn.ToString)
				sb.Append(tmp.ToString)
			Case Else
				'*** OPEN OLD CODE
				If nf.PreDisplay <> "" Then
					Dim akey As String = $"${mName}_${value}"$
					Dim span As VueElement
					span.Initialize(mCallBack, akey, akey)
					span.TagName = "span"
					span.Append($"{{ ${nf.predisplay}(item.${value}) }}"$)
					'define template
					Dim tmp As VueElement
					tmp.Initialize(mCallBack, "" , "")
					tmp.TagName = "v-template"
					tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
					tmp.Append(span.ToString)
					sb.Append(tmp.ToString)
				End If
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

'update the data, dont call this direct
Sub Refresh	
	'build the headers
	BuildHeaders(columnsM)	
	BuildSlots
	
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
	AddAttr(":single-select", varSingleSelect)
	bSingleSelect = varSingleSelect
End Sub

'set item-key and force usage
Sub setItemKey(varItemKey As String)
	PrimaryKey = varItemKey
	AddAttr("item-key", varItemKey)
End Sub

'set items-per-page
Sub setItemsPerPage(varItemsPerPage As String)
	AddAttr("items-per-page", varItemsPerPage)
	stItemsPerPage = varItemsPerPage
End Sub

Sub getItemsPerPage As String
	Return stItemsPerPage
End Sub

'set loading-text
Sub setLoadingText(varLoadingText As String)
	AddAttr("loading-text", varLoadingText)
End Sub

'set page
Sub setPage(varPage As String)
	If varPage = "" Then Return
	varPage = BANano.parseInt(varPage)
	AddAttr(":page.sync", varPage)
End Sub

'link a data-table to the pagination
Sub SetExternalPagination
	setPage("1")
	SetData($"${mName}pagecount"$, "0")
	Dim scode As String = mName & "pagecount = $event"
	AddAttr("v-on:page-count", scode)
	setHideDefaultFooter(True)
	hasExternalPagination = True
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
	If BANano.IsNull(varElevation) Then varElevation = ""
	If varElevation = "" Then Return
	AddAttr("elevation", varElevation)
	AddClass("elevation-" & varElevation)
	stElevation = varElevation
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
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		methods.Put(methodName, cb)
	Else
		Log("SetMethod: " & methodName & ", callback is missing.")
	End If
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