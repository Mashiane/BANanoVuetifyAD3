B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: CalculateWidths, DisplayName: CalculateWidths, FieldType: Boolean, DefaultValue: false, Description: CalculateWidths
#DesignerProperty: Key: CheckboxColor, DisplayName: CheckboxColor, FieldType: String, DefaultValue: , Description: CheckboxColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: CheckboxColorIntensity, DisplayName: CheckboxColorIntensity, FieldType: String, DefaultValue: , Description: CheckboxColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: DisableFiltering, DisplayName: DisableFiltering, FieldType: Boolean, DefaultValue: false, Description: DisableFiltering
#DesignerProperty: Key: DisablePagination, DisplayName: DisablePagination, FieldType: Boolean, DefaultValue: false, Description: DisablePagination
#DesignerProperty: Key: DisableSort, DisplayName: DisableSort, FieldType: Boolean, DefaultValue: false, Description: DisableSort
#DesignerProperty: Key: ExpandIcon, DisplayName: ExpandIcon, FieldType: String, DefaultValue: , Description: ExpandIcon
#DesignerProperty: Key: FixedHeader, DisplayName: FixedHeader, FieldType: Boolean, DefaultValue: false, Description: FixedHeader
#DesignerProperty: Key: HeadersLength, DisplayName: HeadersLength, FieldType: String, DefaultValue: , Description: HeadersLength
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideDefaultFooter, DisplayName: HideDefaultFooter, FieldType: Boolean, DefaultValue: false, Description: HideDefaultFooter
#DesignerProperty: Key: HideDefaultHeader, DisplayName: HideDefaultHeader, FieldType: Boolean, DefaultValue: false, Description: HideDefaultHeader
#DesignerProperty: Key: ItemClass, DisplayName: ItemClass, FieldType: String, DefaultValue: , Description: ItemClass
#DesignerProperty: Key: ItemKey, DisplayName: ItemKey, FieldType: String, DefaultValue: , Description: ItemKey
#DesignerProperty: Key: ItemsPerPage, DisplayName: ItemsPerPage, FieldType: String, DefaultValue: , Description: ItemsPerPage
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: , Description: LoaderHeight
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: , Description: Locale
#DesignerProperty: Key: MobileBreakpoint, DisplayName: MobileBreakpoint, FieldType: String, DefaultValue: , Description: MobileBreakpoint
#DesignerProperty: Key: MultiSort, DisplayName: MultiSort, FieldType: Boolean, DefaultValue: false, Description: MultiSort
#DesignerProperty: Key: MustSort, DisplayName: MustSort, FieldType: Boolean, DefaultValue: false, Description: MustSort
#DesignerProperty: Key: NoDataText, DisplayName: NoDataText, FieldType: String, DefaultValue: , Description: NoDataText
#DesignerProperty: Key: NoResultsText, DisplayName: NoResultsText, FieldType: String, DefaultValue: , Description: NoResultsText
#DesignerProperty: Key: Page, DisplayName: Page, FieldType: String, DefaultValue: , Description: Page
#DesignerProperty: Key: SelectableKey, DisplayName: SelectableKey, FieldType: String, DefaultValue: , Description: SelectableKey
#DesignerProperty: Key: ServerItemsLength, DisplayName: ServerItemsLength, FieldType: String, DefaultValue: , Description: ServerItemsLength
#DesignerProperty: Key: ShowExpand, DisplayName: ShowExpand, FieldType: Boolean, DefaultValue: false, Description: ShowExpand
#DesignerProperty: Key: ShowGroupBy, DisplayName: ShowGroupBy, FieldType: Boolean, DefaultValue: false, Description: ShowGroupBy
#DesignerProperty: Key: ShowSelect, DisplayName: ShowSelect, FieldType: Boolean, DefaultValue: false, Description: ShowSelect
#DesignerProperty: Key: SingleExpand, DisplayName: SingleExpand, FieldType: Boolean, DefaultValue: false, Description: SingleExpand
#DesignerProperty: Key: SingleSelect, DisplayName: SingleSelect, FieldType: Boolean, DefaultValue: false, Description: SingleSelect
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
	Private bCalculateWidths As Boolean
Private sCaption As String
Private sCheckboxColor As String
Private sCheckboxColorIntensity As String
Private bDark As Boolean
Private bDense As Boolean
Private bDisableFiltering As Boolean
Private bDisablePagination As Boolean
Private bDisableSort As Boolean
Private sExpandIcon As String
Private sExpanded As String
Private bFixedHeader As Boolean
Private sFooterProps As String
Private sGroupBy As String
Private sGroupDesc As String
Private sHeaderProps As String
Private sHeaders As String
Private sHeadersLength As String
Private sHeight As String
Private bHideDefaultFooter As Boolean
Private bHideDefaultHeader As Boolean
Private sItemClass As String
Private sItemKey As String
Private sItems As String
Private sItemsPerPage As String
Private sKey As String
Private bLight As Boolean
Private sLoaderHeight As String
Private sLoading As String
Private sLocale As String
Private sMobileBreakpoint As String
Private bMultiSort As Boolean
Private bMustSort As Boolean
Private sNoDataText As String
Private sNoResultsText As String
Private sOptions As String
Private sPage As String
Private sSearch As String
Private sSelectableKey As String
Private sServerItemsLength As String
Private bShowExpand As Boolean
Private bShowGroupBy As Boolean
Private bShowSelect As Boolean
Private bSingleExpand As Boolean
Private bSingleSelect As Boolean
Private sSortBy As String
Private sSortDesc As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private xHeaders As List
Private columns As Map
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
	xHeaders.Initialize 
	columns.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bCalculateWidths = Props.Get("CalculateWidths")
sCaption = Props.Get("Caption")
sCheckboxColor = Props.Get("CheckboxColor")
sCheckboxColorIntensity = Props.Get("CheckboxColorIntensity")
bDark = Props.Get("Dark")
bDense = Props.Get("Dense")
bDisableFiltering = Props.Get("DisableFiltering")
bDisablePagination = Props.Get("DisablePagination")
bDisableSort = Props.Get("DisableSort")
sExpandIcon = Props.Get("ExpandIcon")
bFixedHeader = Props.Get("FixedHeader")
sFooterProps = Props.Get("FooterProps")
sHeadersLength = Props.Get("HeadersLength")
sHeight = Props.Get("Height")
bHideDefaultFooter = Props.Get("HideDefaultFooter")
bHideDefaultHeader = Props.Get("HideDefaultHeader")
sItemClass = Props.Get("ItemClass")
sItemKey = Props.Get("ItemKey")
sItemsPerPage = Props.Get("ItemsPerPage")
sKey = Props.Get("Key")
bLight = Props.Get("Light")
sLoaderHeight = Props.Get("LoaderHeight")
sLocale = Props.Get("Locale")
sMobileBreakpoint = Props.Get("MobileBreakpoint")
bMultiSort = Props.Get("MultiSort")
bMustSort = Props.Get("MustSort")
sNoDataText = Props.Get("NoDataText")
sNoResultsText = Props.Get("NoResultsText")
sPage = Props.Get("Page")
sSelectableKey = Props.Get("SelectableKey")
sServerItemsLength = Props.Get("ServerItemsLength")
bShowExpand = Props.Get("ShowExpand")
bShowGroupBy = Props.Get("ShowGroupBy")
bShowSelect = Props.Get("ShowSelect")
bSingleExpand = Props.Get("SingleExpand")
bSingleSelect = Props.Get("SingleSelect")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
sVShow = Props.Get("VShow")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-data-table id="${mName}"></v-data-table>"$).Get("#" & mName)
	End If
	'
	sExpanded = $"${mName}expanded"$
	sGroupBy = $"${mName}groupby"$
	sGroupDesc = $"${mName}groupdesc"$
	sHeaders = $"${mName}headers"$
	sItems = $"${mName}items"$
	sLoading = $"${mName}loading"$
	sSearch = $"${mName}search"$
	sSortBy = $"${mName}sortby"$
	sSortDesc = $"${mName}sortdesc"$
	sValue = $"${mName}value"$
		
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-data-table"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":calculate-widths", bCalculateWidths)
'VElement.CheckboxColor = VElement.BuildColor(sCheckboxColor, sCheckboxColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disable-filtering", bDisableFiltering)
VElement.AddAttr(":disable-pagination", bDisablePagination)
VElement.AddAttr(":disable-sort", bDisableSort)
VElement.AddAttr("expand-icon", sExpandIcon)
VElement.AddAttr(":expanded", sExpanded)
VElement.AddAttr(":fixed-header", bFixedHeader)
'VElement.AddAttr("footer-props", sFooterProps)
VElement.AddAttr(":group-by", sGroupBy)
VElement.AddAttr(":group-desc", sGroupDesc)
'VElement.AddAttr("header-props", sHeaderProps)
VElement.AddAttr(":headers", sHeaders)
VElement.AddAttr("headers-length", sHeadersLength)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":hide-default-footer", bHideDefaultFooter)
VElement.AddAttr(":hide-default-header", bHideDefaultHeader)
VElement.AddAttr("item-class", sItemClass)
VElement.AddAttr("item-key", sItemKey)
VElement.AddAttr(":items", sItems)
VElement.AddAttr("items-per-page", sItemsPerPage)
VElement.AddAttr(":key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("loader-height", sLoaderHeight)
VElement.AddAttr(":loading", sLoading)
VElement.AddAttr("locale", sLocale)
VElement.AddAttr("mobile-breakpoint", sMobileBreakpoint)
VElement.AddAttr(":multi-sort", bMultiSort)
VElement.AddAttr(":must-sort", bMustSort)
VElement.AddAttr("no-data-text", sNoDataText)
VElement.AddAttr("no-results-text", sNoResultsText)
'VElement.AddAttr("options", sOptions)
VElement.AddAttr("page", sPage)
VElement.AddAttr(":search", sSearch)
VElement.AddAttr("selectable-key", sSelectableKey)
VElement.AddAttr("server-items-length", sServerItemsLength)
VElement.AddAttr(":show-expand", bShowExpand)
VElement.AddAttr(":show-group-by", bShowGroupBy)
VElement.AddAttr(":show-select", bShowSelect)
VElement.AddAttr(":single-expand", bSingleExpand)
VElement.AddAttr(":single-select", bSingleSelect)
VElement.AddAttr(":sort-by", sSortBy)
VElement.AddAttr(":sort-desc", sSortDesc)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.AddAttr("value", sValue)
'
	xHeaders.Initialize 
	VElement.SetData(sExpanded, xHeaders)
	VElement.SetData(sGroupBy, xHeaders)
	VElement.SetData(sGroupDesc, xHeaders)
	VElement.SetData(sHeaders, xHeaders)
	VElement.SetData(sItems, xHeaders)
	VElement.SetData(sLoading, False)
	VElement.SetData(sSearch, "")
	VElement.SetData(sSortBy, xHeaders)
	VElement.SetData(sSortDesc, xHeaders)
	VElement.SetData(sValue, xHeaders)
	VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VDataTable
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VDataTable
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VDataTable
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VDataTable
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VDataTable
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

'set Expanded
Sub UpdateExpanded(VC As VueComponent, vExpanded As List)
	VC.SetData(sExpanded, vExpanded)
End Sub

'set GroupBy
Sub UpdateGroupBy(VC As VueComponent, vGroupBy As List)
	VC.SetData(sGroupBy, vGroupBy)
End Sub

'set Headers
Sub UpdateHeaders(VC As VueComponent, vHeaders As List)
	VC.SetData(sHeaders, vHeaders)
End Sub

'set Items
Sub UpdateItems(VC As VueComponent, vItems As List)
	VC.SetData(sItems, vItems)
End Sub

'set Loading
Sub UpdateLoading(VC As VueComponent, vLoading As Boolean)
	VC.SetData(sLoading, vLoading)
End Sub

'set Search
Sub UpdateSearch(VC As VueComponent, vSearch As String)
	VC.SetData(sSearch, vSearch)
End Sub

'set SortBy
Sub UpdateSortBy(VC As VueComponent, vSortBy As List)
	VC.SetData(sSortBy, vSortBy)
End Sub

'set SortDesc
Sub UpdateSortDesc(VC As VueComponent, vSortDesc As List)
	VC.SetData(sSortDesc, vSortDesc)
End Sub

'clear the headers
Sub ClearHeaders(VC As VueComponent)
	xHeaders.Initialize 
	VC.SetData(sHeaders, VC.NewList)
End Sub

'clear the items
Sub Clear(VC As VueComponent)
	Dim xitems As List = VC.newlist
	VC.SetData(sExpanded, xitems)
	VC.SetData(sGroupBy, xitems)
	VC.SetData(sGroupDesc, xitems)
	VC.SetData(sItems, xitems)
	VC.SetData(sSortBy, xitems)
	VC.SetData(sSortDesc, xitems)
	VC.SetData(sValue, xitems)
	VC.SetData(sLoading, False)
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub