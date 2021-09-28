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
#Event: Blur (e As BANanoEvent)
#Event: Change (item As Object)
#Event: Click (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickAppendOuter (e As BANanoEvent)
#Event: ClickClear (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: ClickPrependInner (e As BANanoEvent)
#Event: Focus (e As BANanoEvent)
#Event: Input (item As Object)
#Event: KeyDown (e As BANanoEvent)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: UpdateError (B As Boolean)
#Event: UpdateListIndex (n As Int)
#Event: UpdateSearchInput (s As String)
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: autocomplete1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: autocomplete1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: ItemValue, DisplayName: Item Value, FieldType: String, DefaultValue: value, Description: Item Value
#DesignerProperty: Key: ItemText, DisplayName: Item Text, FieldType: String, DefaultValue: text, Description: Item Text
#DesignerProperty: Key: ItemDisabled, DisplayName: Item Disabled, FieldType: String, DefaultValue: disabled, Description: Item Disabled
#DesignerProperty: Key: ItemAvatar, DisplayName: Item Avatar, FieldType: String, DefaultValue: avatar, Description: Item Avatar
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (Key)(;), FieldType: String, DefaultValue:  , Description: Item Values to be used as keys
#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (Value)(;), FieldType: String, DefaultValue:  , Description: Item Texts
'
#DesignerProperty: Key: ColorList, DisplayName: List of Colors, FieldType: Boolean, DefaultValue: False, Description: Show Colors
#DesignerProperty: Key: PersonList, DisplayName: List of Persons, FieldType: Boolean, DefaultValue: False, Description: Show Persons
'#DesignerProperty: Key: Reactions, DisplayName: Re-Actions (smile, love), FieldType: Boolean, DefaultValue: False, Description: Show ReActions (love, wow, haha, sad, angry, like)
'#DesignerProperty: Key: RagSmiles, DisplayName: RAG KPI Smiles, FieldType: Boolean, DefaultValue: False, Description: Show smiles as KPI
'#DesignerProperty: Key: RagCircles, DisplayName: RAG KPIs Circles, FieldType: Boolean, DefaultValue: False, Description: Show color circles as KPI
'#DesignerProperty: Key: RagUpDown, DisplayName: RAG KPIs UpDown, FieldType: Boolean, DefaultValue: False, Description: Show Up/Down as KPI
'#DesignerProperty: Key: CustomColors, DisplayName: CustomColors, FieldType: Boolean, DefaultValue: False, Description: Show Own Colors (specify the color and text in item keys and titles)
'#DesignerProperty: Key: GenderList, DisplayName: GenderList, FieldType: Boolean, DefaultValue: False, Description: Show images for male and female
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: AllowOverflow, DisplayName: AllowOverflow, FieldType: Boolean, DefaultValue: False, Description: AllowOverflow
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: AppendOuterIcon, DisplayName: AppendOuterIcon, FieldType: String, DefaultValue: , Description: AppendOuterIcon
#DesignerProperty: Key: Attach, DisplayName: Attach, FieldType: String, DefaultValue: , Description: Attach
#DesignerProperty: Key: AutoSelectFirst, DisplayName: AutoSelectFirst, FieldType: Boolean, DefaultValue: False, Description: AutoSelectFirst
#DesignerProperty: Key: Autofocus, DisplayName: Autofocus, FieldType: Boolean, DefaultValue: False, Description: Autofocus
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CacheItems, DisplayName: CacheItems, FieldType: Boolean, DefaultValue: False, Description: CacheItems
#DesignerProperty: Key: Chips, DisplayName: Chips, FieldType: Boolean, DefaultValue: False, Description: Chips
#DesignerProperty: Key: ClearIcon, DisplayName: ClearIcon, FieldType: String, DefaultValue: , Description: ClearIcon
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False, Description: Clearable
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Counter, DisplayName: Counter, FieldType: String, DefaultValue: , Description: Counter
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: DeletableChips, DisplayName: DeletableChips, FieldType: Boolean, DefaultValue: False, Description: DeletableChips
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: DisableLookup, DisplayName: DisableLookup, FieldType: Boolean, DefaultValue: False, Description: DisableLookup
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: False, Description: Eager
'#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
'#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
'#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages
#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: False, Description: Filled
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue: False, Description: FullWidth
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: HideNoData, DisplayName: HideNoData, FieldType: Boolean, DefaultValue: False, Description: HideNoData
#DesignerProperty: Key: HideSelected, DisplayName: HideSelected, FieldType: Boolean, DefaultValue: False, Description: HideSelected
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: InputType, DisplayName: InputType, FieldType: String, DefaultValue: text, Description: InputType
#DesignerProperty: Key: ItemColor, DisplayName: ItemColor, FieldType: String, DefaultValue: , Description: ItemColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ItemColorIntensity, DisplayName: Itemcolorintensity, FieldType: String, DefaultValue: , Description: Itemcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: , Description: LoaderHeight
#DesignerProperty: Key: MenuProps, DisplayName: MenuProps, FieldType: String, DefaultValue: , Description: MenuProps
'#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue: , Description: Messages
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: NoDataText, DisplayName: NoDataText, FieldType: String, DefaultValue: , Description: NoDataText
#DesignerProperty: Key: NoFilter, DisplayName: NoFilter, FieldType: Boolean, DefaultValue: False, Description: NoFilter
#DesignerProperty: Key: OpenOnClear, DisplayName: OpenOnClear, FieldType: Boolean, DefaultValue: False, Description: OpenOnClear
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: PersistentPlaceholder, DisplayName: PersistentPlaceholder, FieldType: Boolean, DefaultValue: False, Description: PersistentPlaceholder
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Prefix
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: PrependInnerIcon, DisplayName: PrependInnerIcon, FieldType: String, DefaultValue: , Description: PrependInnerIcon
#DesignerProperty: Key: ReturnObject, DisplayName: ReturnObject, FieldType: Boolean, DefaultValue: False, Description: ReturnObject
#DesignerProperty: Key: Reverse, DisplayName: Reverse, FieldType: Boolean, DefaultValue: False, Description: Reverse
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
#DesignerProperty: Key: SearchInput, DisplayName: SearchInput, FieldType: String, DefaultValue: , Description: SearchInput
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: SingleLine, DisplayName: SingleLine, FieldType: Boolean, DefaultValue: False, Description: SingleLine
#DesignerProperty: Key: SmallChips, DisplayName: SmallChips, FieldType: Boolean, DefaultValue: False, Description: SmallChips
#DesignerProperty: Key: Solo, DisplayName: Solo, FieldType: Boolean, DefaultValue: False, Description: Solo
#DesignerProperty: Key: SoloInverted, DisplayName: SoloInverted, FieldType: Boolean, DefaultValue: False, Description: SoloInverted
'#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
'#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: False, Description: ValidateOnBlur
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
'Definition of variables used in this VAutoComplete component.
'Definition of variables used in this VAutoComplete component.
Sub Class_Globals
Private sItemKeys As String
Private sItemTitles As String
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
Private bAllowOverflow As Boolean
Private sAppendIcon As String
Private sAppendOuterIcon As String
Private sAttach As String
Private bAutoSelectFirst As Boolean
Private bAutofocus As Boolean
Private sBackgroundColor As String
Private sBackgroundColorIntensity As String
Private bCacheItems As Boolean
Private bChips As Boolean
Private sClearIcon As String
Private bClearable As Boolean
Private sColor As String
Private sColorIntensity As String
Private sCounter As String
Private bDark As Boolean
Private bDeletableChips As Boolean
Private bDense As Boolean
Private bDisableLookup As Boolean
Private sDisabled As String
Private bEager As Boolean
'Private sError As String
'Private sErrorCount As String
'Private sErrorMessages As String
Private bFilled As Boolean
Private bFlat As Boolean
Private bFullWidth As Boolean
Private sHeight As String
Private bHideDetails As Boolean
Private bHideNoData As Boolean
Private bHideSelected As Boolean
Private sHint As String
Private sInputType As String
Private sItemColor As String
Private sItemColorIntensity As String
Private sItemDisabled As String
Private sItemText As String
Private sItemValue As String
Private sItems As String
Private sKey As String
Private sLabel As String
Private bLight As Boolean
Private sLoaderHeight As String
Private sLoading As String
Private sMenuProps As String
'Private sMessages As String
Private bMultiple As Boolean
Private sNoDataText As String
Private bNoFilter As Boolean
Private bOpenOnClear As Boolean
Private bOutlined As Boolean
Private bPersistentHint As Boolean
Private bPersistentPlaceholder As Boolean
Private sPlaceholder As String
Private sPrefix As String
Private sPrependIcon As String
Private sPrependInnerIcon As String
Private sReadonly As String
Private bReturnObject As Boolean
Private bReverse As Boolean
Private bRounded As Boolean
Private sRules As String
Private sSearchInput As String
Private bShaped As Boolean
Private bSingleLine As Boolean
Private bSmallChips As Boolean
Private bSolo As Boolean
Private bSoloInverted As Boolean
'Private sSuccess As String
'Private sSuccessMessages As String
Private sSuffix As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private bValidateOnBlur As Boolean
Private xitems As List
Private xReturnObject As String
'
Private bDisabled As Boolean
Private bHidden As Boolean
Private bLoading As Boolean
Private bReadonly As Boolean
Private bRequired As Boolean
Private sRequired As String
Private sValue As String
Private bColorList As Boolean
Private bShrink As Boolean
Private VC As VueComponent
Private bPersonList As Boolean
Private sItemAvatar As String
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bAbsolute As Boolean
Private bHover As Boolean
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private sTransition As String
Private sElevation As String
Private sMinHeight As String
Private sMaxHeight As String
Private sWidth As String
Private sMinWidth As String
Private sMaxWidth As String
Private sRounded As String
Private bTile As Boolean
Private bGrow As Boolean
End Sub
'Initializes the VAutoComplete component.
'Initializes the VAutoComplete component.
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
xitems.Initialize
xReturnObject = $"${mName}returnobject"$
sRequired = $"${mName}required"$
sDisabled = $"${mName}disabled"$
sReadonly = $"${mName}readonly"$
sVShow = $"${mName}show"$
sLoading = $"${mName}loading"$
sItems = $"${mName}items"$
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VAutoComplete
'This builds the HTML tree based on defined properties for VAutoComplete
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDefault("Hidden",False)
bLoading = Props.GetDefault("Loading",False)
bReadonly = Props.GetDefault("Readonly",False)
bRequired = Props.GetDefault("Required",False)
mClasses = Props.Get("Classes")
mStyles = Props.Get("Styles")
mAttributes = Props.Get("Attributes")
bAllowOverflow = Props.Get("AllowOverflow")
sAppendIcon = Props.Get("AppendIcon")
sAppendOuterIcon = Props.Get("AppendOuterIcon")
sAttach = Props.Get("Attach")
bAutoSelectFirst = Props.Get("AutoSelectFirst")
bAutofocus = Props.Get("Autofocus")
sBackgroundColor = Props.Get("BackgroundColor")
sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
bCacheItems = Props.Get("CacheItems")
bChips = Props.Get("Chips")
sClearIcon = Props.Get("ClearIcon")
bClearable = Props.Get("Clearable")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sCounter = Props.Get("Counter")
bDark = Props.Get("Dark")
bDeletableChips = Props.Get("DeletableChips")
bDense = Props.Get("Dense")
bDisableLookup = Props.Get("DisableLookup")
bEager = Props.Get("Eager")
'sError = Props.Get("Error")
'sErrorCount = Props.Get("ErrorCount")
'sErrorMessages = Props.Get("ErrorMessages")
bFilled = Props.Get("Filled")
bFlat = Props.Get("Flat")
bFullWidth = Props.Get("FullWidth")
sHeight = Props.Get("Height")
bHideDetails = Props.Get("HideDetails")
bHideNoData = Props.Get("HideNoData")
bHideSelected = Props.Get("HideSelected")
sHint = Props.Get("Hint")
sInputType = Props.Get("InputType")
sItemColor = Props.Get("ItemColor")
sItemColorIntensity = Props.Get("ItemColorIntensity")
sItemDisabled = Props.Get("ItemDisabled")
sItemText = Props.Get("ItemText")
sItemValue = Props.Get("ItemValue")
sKey = Props.Get("Key")
sLabel = Props.Get("Label")
bLight = Props.Get("Light")
sLoaderHeight = Props.Get("LoaderHeight")
sLoading = Props.Get("Loading")
sMenuProps = Props.Get("MenuProps")
'sMessages = Props.Get("Messages")
bMultiple = Props.Get("Multiple")
sNoDataText = Props.Get("NoDataText")
bNoFilter = Props.Get("NoFilter")
bOpenOnClear = Props.Get("OpenOnClear")
bOutlined = Props.Get("Outlined")
bPersistentHint = Props.Get("PersistentHint")
bPersistentPlaceholder = Props.Get("PersistentPlaceholder")
sPlaceholder = Props.Get("Placeholder")
sPrefix = Props.Get("Prefix")
sPrependIcon = Props.Get("PrependIcon")
sPrependInnerIcon = Props.Get("PrependInnerIcon")
bReturnObject = Props.Get("ReturnObject")
bReverse = Props.Get("Reverse")
bRounded = Props.Get("Rounded")
sRules = Props.Get("Rules")
sSearchInput = Props.Get("SearchInput")
bShaped = Props.Get("Shaped")
bSingleLine = Props.Get("SingleLine")
bSmallChips = Props.Get("SmallChips")
bSolo = Props.Get("Solo")
bSoloInverted = Props.Get("SoloInverted")
'sSuccess = Props.Get("Success")
'sSuccessMessages = Props.Get("SuccessMessages")
sSuffix = Props.Get("Suffix")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bValidateOnBlur = Props.Get("ValidateOnBlur")
sItemKeys = Props.GetDefault("ItemKeys", "")
sItemTitles = Props.GetDefault("ItemTitles", "")
bColorList = Props.GetDefault("ColorList", False)
bColorList = BANanoShared.parseBool(bColorList)
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bPersonList = Props.getdefault("PersonList", False)
bPersonList = BANanoShared.parsebool(bPersonList)
sItemAvatar = Props.GetDefault("ItemAvatar", "avatar")
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = BANanoShared.parseBool(bDisabled)
bAbsolute = Props.GetDefault("Absolute", False)
bHover = Props.GetDefault("Hover", False)
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
mAttributes = Props.GetDefault("Attributes", "")
mClasses = Props.GetDefault("Classes", "")
mStyles = Props.GetDefault("Styles", "")
sTransition = Props.GetDefault("Transition", "")
sElevation = Props.GetDefault("Elevation", "")
sHeight = Props.GetDefault("Height", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMaxHeight = Props.GetDefault("MaxHeight", "")
sWidth = Props.GetDefault("Width", "")
sMinWidth = Props.GetDefault("MinWidth", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sRounded = Props.GetDefault("Rounded", "")
bTile = Props.GetDefault("Tile", False)
bTile = BANanoShared.parseBool(bTile)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
End If
'
If bPersonList Then
bChips = True
End If
bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bLoading = BANanoShared.parseBool(bLoading)
bReadonly = BANanoShared.parseBool(bReadonly)
bRequired = BANanoShared.parseBool(bRequired)
bAllowOverflow = BANanoShared.parseBool(bAllowOverflow)
bAutoSelectFirst = BANanoShared.parseBool(bAutoSelectFirst)
bAutofocus = BANanoShared.parseBool(bAutofocus)
bCacheItems = BANanoShared.parseBool(bCacheItems)
bChips = BANanoShared.parseBool(bChips)
bClearable = BANanoShared.parseBool(bClearable)
bDark = BANanoShared.parseBool(bDark)
bDeletableChips = BANanoShared.parseBool(bDeletableChips)
bDense = BANanoShared.parseBool(bDense)
bDisableLookup = BANanoShared.parseBool(bDisableLookup)
bEager = BANanoShared.parseBool(bEager)
bFilled = BANanoShared.parseBool(bFilled)
bFlat = BANanoShared.parseBool(bFlat)
bFullWidth = BANanoShared.parseBool(bFullWidth)
bHideDetails = BANanoShared.parseBool(bHideDetails)
bHideNoData = BANanoShared.parseBool(bHideNoData)
bHideSelected = BANanoShared.parseBool(bHideSelected)
bLight = BANanoShared.parseBool(bLight)
bMultiple = BANanoShared.parseBool(bMultiple)
bNoFilter = BANanoShared.parseBool(bNoFilter)
bOpenOnClear = BANanoShared.parseBool(bOpenOnClear)
bOutlined = BANanoShared.parseBool(bOutlined)
bPersistentHint = BANanoShared.parseBool(bPersistentHint)
bPersistentPlaceholder = BANanoShared.parseBool(bPersistentPlaceholder)
bReturnObject = BANanoShared.parseBool(bReturnObject)
bReverse = BANanoShared.parseBool(bReverse)
bRounded = BANanoShared.parseBool(bRounded)
bShaped = BANanoShared.parseBool(bShaped)
bSingleLine = BANanoShared.parseBool(bSingleLine)
bSmallChips = BANanoShared.parseBool(bSmallChips)
bSolo = BANanoShared.parseBool(bSolo)
bSoloInverted = BANanoShared.parseBool(bSoloInverted)
bValidateOnBlur = BANanoShared.parseBool(bValidateOnBlur)
bDisabled = BANanoShared.parseBool(bDisabled)
bRequired = BANanoShared.parseBool(bRequired)
bLoading = BANanoShared.parseBool(bLoading)
bMultiple = BANanoShared.parseBool(bMultiple)
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
mElement = mTarget.Append($"<v-autocomplete ref="${mName}" id="${mName}"></v-autocomplete>"$).Get("#" & mName)
End If
'
'build the color list
If bColorList Then
sItemKeys = $"red,pink,purple,indigo,deep-purple,blue,light-blue,cyan,teal,green,light-green,lime,yellow,amber,orange,deep-orange,brown,grey,blue-grey,black,white"$
sItemTitles = $"Red,Pink,Purple,Indigo,Deep Purple,Blue,Light Blue,Cyan,Teal,Green,Light Green,Lime,Yellow,Amber,Orange,Deep Orange,Brown,Grey,Blue Grey,Black,White"$
End If
'
Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
Dim xtitles As List = BANanoShared.StrParseComma(";", sItemTitles)
'
xkeys = BANanoShared.ListTrimItems(xkeys)
xtitles = BANanoShared.ListTrimItems(xtitles)
'
xitems.Initialize
Dim tItems As Int = xkeys.Size - 1
For itemCnt = 0 To tItems
Dim iKey As String = xkeys.Get(itemCnt)
Dim iTit As String = xtitles.Get(itemCnt)
AddItem(iKey, iTit)
Next
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "v-autocomplete"
'this is a color list
If bColorList Then
Dim strColor As String = $"<v-template v-slot:selection="data">
<v-list-item-avatar size="16">
<v-avatar left :color="data.item.${sItemValue}" size="16" style='border:1px solid black !important;'></v-avatar>
</v-list-item-avatar>
{{ data.item.${sItemText} }}
</v-template>
<v-template v-slot:item="data">
<v-list-item-avatar size="16">
<v-avatar left :color="data.item.${sItemValue}" size="16" style='border:1px solid black !important;'></v-avatar>
</v-list-item-avatar>
<v-list-item-content>
<v-list-item-title v-html="data.item.${sItemText}"></v-list-item-title>
</v-list-item-content>
</v-template>"$
VElement.Append(strColor)
End If
'
If bPersonList Then
Dim strPerson As String = $"<v-template v-slot:selection="data">
<v-chip v-bind="data.attrs" :input-value="data.selected" @click="data.select">
<v-avatar left>
<v-img :src="data.item.${sItemAvatar}"></v-img>
</v-avatar>
{{ data.item.${sItemText} }}
</v-chip>
</v-template>
<v-template v-slot:item="data">
<v-list-item-avatar>
<v-img :src="data.item.${sItemAvatar}"></v-img>
</v-list-item-avatar>
<v-list-item-content>
<v-list-item-title v-html="data.item.${sItemText}"></v-list-item-title>
</v-list-item-content>
</v-template>"$
VElement.Append(strPerson)
End If
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Attributes = mAttributes
VElement.AddAttr(":allow-overflow", bAllowOverflow)
VElement.AddAttr("append-icon", sAppendIcon)
VElement.AddAttr("append-outer-icon", sAppendOuterIcon)
VElement.AddAttr("attach", sAttach)
VElement.AddAttr(":auto-select-first", bAutoSelectFirst)
VElement.AddAttr(":autofocus", bAutofocus)
VElement.AddAttr("background-color", VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity))
VElement.AddAttr(":cache-items", bCacheItems)
VElement.AddAttr(":chips", bChips)
VElement.AddAttr("clear-icon", sClearIcon)
VElement.AddAttr(":clearable", bClearable)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr("counter", sCounter)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":deletable-chips", bDeletableChips)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disable-lookup", bDisableLookup)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":eager", bEager)
'VElement.AddAttr(":error", sError)
'VElement.SetData(sError, False)
'VElement.AddAttr("error-count", sErrorCount)
'VElement.AddAttr(":error-messages", sErrorMessages)
'VElement.SetData(sErrorMessages, VElement.NewList)
VElement.AddAttr(":filled", bFilled)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":full-width", bFullWidth)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr(":hide-no-data", bHideNoData)
VElement.AddAttr(":hide-selected", bHideSelected)
VElement.AddAttr("hint", sHint)
VElement.AddAttr("input-type", sInputType)
VElement.AddAttr("item-color", VElement.BuildColor(sItemColor, sItemColorIntensity))
VElement.AddAttr("item-disabled", sItemDisabled)
VElement.AddAttr("item-text", sItemText)
VElement.AddAttr("item-value", sItemValue)
VElement.AddAttr(":items", sItems)
VElement.AddAttr("key", sKey)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("loader-height", sLoaderHeight)
VElement.AddAttr(":loading", sLoading)
VElement.SetData(sLoading, bLoading)
VElement.AddAttr(":menu-props", sMenuProps)
VElement.SetData(sMenuProps, VElement.NewMap)
'VElement.AddAttr(":messages", sMessages)
'VElement.SetData(sMessages, VElement.NewList)
VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr(":no-data-text", sNoDataText)
VElement.SetData(sNoDataText, "")
VElement.AddAttr(":no-filter", bNoFilter)
VElement.AddAttr(":open-on-clear", bOpenOnClear)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr(":persistent-placeholder", bPersistentPlaceholder)
VElement.AddAttr("placeholder", sPlaceholder)
VElement.AddAttr("prefix", sPrefix)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr("prepend-inner-icon", sPrependInnerIcon)
VElement.AddAttr(":readonly", sReadonly)
VElement.SetData(sReadonly, bReadonly)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)
VElement.AddAttr(":return-object", xReturnObject)
VElement.SetData(xReturnObject, bReturnObject)
VElement.AddAttr(":reverse", bReverse)
VElement.AddAttr(":rounded", bRounded)
VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.NewList)
VElement.AddAttr(":search-input", sSearchInput)
VElement.SetData(sSearchInput, Null)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr(":single-line", bSingleLine)
VElement.AddAttr(":small-chips", bSmallChips)
VElement.AddAttr(":solo", bSolo)
VElement.AddAttr(":solo-inverted", bSoloInverted)
'VElement.AddAttr(":success", sSuccess)
'VElement.SetData(sSuccess, False)
'VElement.AddAttr(":success-messages", sSuccessMessages)
'VElement.SetData(sSuccessMessages, VElement.NewList)
VElement.AddAttr("suffix", sSuffix)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("value", "")
'
If bMultiple = False Then
VElement.SetData(sVModel, sValue)
Else
VElement.SetData(sVModel, VElement.NewList)
End If
VElement.AddAttr("v-on", sVOn)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
VElement.SetData(sItems, xitems)
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.Absolute = bAbsolute
VElement.Hover = bHover
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
VElement.Transition = sTransition
VElement.Elevation = sElevation
VElement.Height = sHeight
VElement.MinHeight = sMinHeight
VElement.MaxHeight = sMaxHeight
VElement.Width = sWidth
VElement.MinWidth = sMinWidth
VElement.MaxWidth = sMaxWidth
VElement.AddClass(sRounded)
VElement.Tile = bTile
VElement.AddClassOnCondition("shrink", bShrink, True)
VElement.AddAttr(":grow", bGrow)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End If
VElement.BindAllEvents
End Sub
Sub UpdateDisabled(C As VueComponent, b As Boolean)
bDisabled = b
C.SetData(sDisabled, b)
End Sub
Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
bDisabled = b
C.SetData(sDisabled, b)
End Sub
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
Sub AddToParent(targetID As String)
mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
DesignerCreateView(mTarget, Null)
End Sub
'Remove the component, this is a design time call on Initialize
'Remove the component, this is a design time call on Initialize
Sub Remove()
mElement.Remove
BANano.SetMeToNull
End Sub
Sub AddClass(s As String) As VAutoComplete
VElement.AddClass(s)
Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VAutoComplete
VElement.SetAttr(p, v)
Return Me
End Sub
Sub AddStyle(p As String, v As String) As VAutoComplete
VElement.AddStyle(p, v)
Return Me
End Sub
Sub RemoveAttr(p As String) As VAutoComplete
VElement.RemoveAttr(p)
Return Me
End Sub
'Hide the component at runtime, needs BindState
'Hide the component at runtime, needs BindState
Sub Hide
VC.SetData(sVIf, False)
VC.SetData(sVShow, False)
End Sub
'Show the component at runtime, needs BindState
'Show the component at runtime, needs BindState
Sub Show
VC.SetData(sVIf, True)
VC.SetData(sVShow, True)
End Sub
Sub UpdateVisible(C As VueComponent, b As Boolean) As VAutoComplete
C.SetData(sVIf, b)
C.SetData(sVShow, b)
Return Me
End Sub
Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VAutoComplete
C.SetData(sVIf, b)
C.SetData(sVShow, b)
Return Me
End Sub
'add a rule
'<code>
'Sub AddRule(v As String) As Object	'ignoredeadcode
'If v = "" Then
'return "This is required!"
'Else
'Return True
'End If
'End Sub
'</code>
Sub AddRule(methodName As String)
VElement.AddRule(methodName)
VElement.SetData(sRequired, True)
bRequired = True
End Sub
'
''Update Error
'Sub UpdateError(C As VueComponent, vError As Object)
'C.SetData(sError, vError)
'End Sub
'
''Update ErrorMessages
'Sub UpdateErrorMessages(C As VueComponent, vErrorMessages As Object)
'C.SetData(sErrorMessages, vErrorMessages)
'End Sub
'
''Clear ErrorMessages
'Sub ClearErrorMessages(C As VueComponent)
'C.SetData(sErrorMessages, C.NewList)
'End Sub
'Update ItemColor
Sub UpdateItemColor(C As VueComponent, vItemColor As Object)
C.SetData(sItemColor, vItemColor)
End Sub
Sub UpdateItemColorOnApp(C As VuetifyApp, vItemColor As Object)
C.SetData(sItemColor, vItemColor)
End Sub
'Update Items
Sub UpdateItems(C As VueComponent, vItems As Object)
C.SetData(sItems, vItems)
End Sub
'Update Items
Sub UpdateItemsOnApp(C As VuetifyApp, vItems As Object)
C.SetData(sItems, vItems)
End Sub
'Update Items
Sub Reload(C As VueComponent, vItems As Object)
C.SetData(sItems, vItems)
End Sub
'Update Items
Sub ReloadOnApp(C As VuetifyApp, vItems As Object)
C.SetData(sItems, vItems)
End Sub
'Clear Items
Sub Clear(C As VueComponent)
xitems.Initialize
C.SetData(sItems, C.NewList)
End Sub
'Clear Items
Sub ClearOnApp(C As VuetifyApp)
xitems.Initialize
C.SetData(sItems, C.NewList)
End Sub
'Update Loading
Sub UpdateLoading(C As VueComponent, vLoading As Object)
C.SetData(sLoading, vLoading)
End Sub
'Update Loading
Sub UpdateLoadingOnApp(C As VuetifyApp, vLoading As Object)
C.SetData(sLoading, vLoading)
End Sub
'Update Readonly
Sub UpdateReadonly(C As VueComponent, vReadonly As Object)
C.SetData(sReadonly, vReadonly)
End Sub
'Update Readonly
Sub UpdateReadonlyOnApp(C As VuetifyApp, vReadonly As Object)
C.SetData(sReadonly, vReadonly)
End Sub
''Update Success
'Sub UpdateSuccess(C As VueComponent, vSuccess As Object)
'C.SetData(sSuccess, vSuccess)
'End Sub
'
''Update SuccessMessages
'Sub UpdateSuccessMessages(C As VueComponent, vSuccessMessages As Object)
'C.SetData(sSuccessMessages, vSuccessMessages)
'End Sub
'
''Clear SuccessMessages
'Sub ClearSuccessMessages(C As VueComponent)
'C.SetData(sSuccessMessages, C.NewList)
'End Sub
'Update VModel
Sub SetValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub
Sub SetValueOnApp(C As VuetifyApp, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub
Sub UpdateValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub
Sub UpdateValueOnApp(C As VuetifyApp, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub
'get value
Sub GetValue(C As VueComponent) As Object
Dim res As Object = C.GetData(sVModel)
Return res
End Sub
'get value
Sub GetValueOnApp(C As VuetifyApp) As Object
Dim res As Object = C.GetData(sVModel)
Return res
End Sub
Sub getVModel As String
Return sVModel
End Sub
'Returns the name of the component. This is what you typed on the name property in b4j
'Returns the name of the component. This is what you typed on the name property in b4j
Sub getID As String
Return mName
End Sub
'Returns the name of the component with # infront for use with BANano.LoadLayout
'Returns the name of the component with # infront for use with BANano.LoadLayout
Sub getHere As String
Return $"#${mName}"$
End Sub
'refresh the select
Sub Refresh(C As VueComponent)
C.SetData(sItems, xitems)
End Sub
'refresh the select
Sub RefreshOnApp(C As VuetifyApp)
C.SetData(sItems, xitems)
End Sub
'set the item-text attribute
Sub setItemText(vItemText As String)
sItemText = vItemText
VElement.AddAttr("item-text", sItemText)
End Sub
'get the item-text attribute
Sub getItemText As String
Return sItemText
End Sub
'get the item value attribute
Sub getItemValue As String
Return sItemValue
End Sub
'set the item-value attribute
Sub setItemValue(vItemValue As String)
sItemValue = vItemValue
VElement.AddAttr("item-value", sItemValue)
End Sub
'get the item disabled attribute
Sub getItemDisabled As String
Return sItemDisabled
End Sub
'get the items
Sub getItems As String
Return sItems
End Sub
'set the item-disabled attribute
Sub setItemDisabled(vItemDisabled As String)
sItemDisabled = vItemDisabled
VElement.AddAttr("item-disabled", sItemDisabled)
End Sub
'set the items attribute
Sub setItems(vItems As String)
sItems = vItems
VElement.AddAttr(":item", sItems)
End Sub
'add items
Sub AddItem(value As String, text As String)
Dim nm As Map = CreateMap()
nm.Put(sItemValue, value)
nm.Put(sItemText, text)
xitems.Add(nm)
End Sub
'add person
Sub AddPerson(value As String, text As String, avatar As String)
Dim nm As Map = CreateMap()
nm.Put(sItemValue, value)
nm.Put(sItemText, text)
nm.Put(sItemAvatar, avatar)
xitems.Add(nm)
End Sub
'add object
Sub AddObject(nm As Map)
xitems.Add(nm)
End Sub
'convert a normal list to key value pairs
Sub UpdateItems1(C As VueComponent, lst As List)
Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
C.SetData(sItems, nl)
End Sub
'convert a normal list to key value pairs
Sub UpdateItems1OnApp(C As VuetifyApp, lst As List)
Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
C.SetData(sItems, nl)
End Sub
Sub BindState(C As VueComponent)
VC = c
Dim mbindings As Map = VElement.bindings
Dim mmethods As Map = VElement.methods
'apply the binding for the control
For Each k As String In mbindings.Keys
Dim v As Object = mbindings.Get(k)
Select Case k
Case "key"
Case Else
C.SetData(k, v)
End Select
Next
'apply the events
For Each k As String In mmethods.Keys
Dim cb As BANanoObject = mmethods.Get(k)
C.SetCallBack(k, cb)
Next
End Sub
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
Sub BindStateOnApp(c As VuetifyApp)
Dim mbindings As Map = VElement.bindings
Dim mmethods As Map = VElement.methods
'apply the binding for the control
For Each k As String In mbindings.Keys
Dim v As Object = mbindings.Get(k)
Select Case k
Case "key"
Case Else
C.SetData(k, v)
End Select
Next
'apply the events
For Each k As String In mmethods.Keys
Dim cb As BANanoObject = mmethods.Get(k)
C.SetCallBack(k, cb)
Next
End Sub
Sub OnChange(args As String)
VElement.SetOnEventOwn(mCallBack, $"${mName}_change"$, "change", args)
End Sub
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXSOnly
AddClass("hidden-xs-only")
End Sub
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMOnly
AddClass("d-sm-none d-md-flex")
End Sub
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDOnly
AddClass("d-md-none d-lg-flex")
End Sub
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGOnly
AddClass("d-lg-none d-xl-flex")
End Sub
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXLOnly
AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
'End Sub
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndDown
AddClass("hidden-sm-and-down")
End Sub
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndDown
AddClass("hidden-md-and-down")
End Sub
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndDown
AddClass("hidden-lg-and-down")
End Sub
'Sub HiddenXLAndDown
'End Sub
'
'Sub HiddenXSAndUp
'End Sub
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndUp
AddClass("hidden-sm-and-up")
End Sub
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndUp
AddClass("hidden-md-and-up")
End Sub
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndUp
AddClass("hidden-lg-and-up")
End Sub
'Sub HiddenXLAndUp
'End Sub
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenOnAll
AddClass("d-none")
End Sub
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXS
AddClass("hidden-xs-only")
End Sub
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnSM
AddClass("d-sm-none d-md-flex")
End Sub
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnMD
AddClass("d-md-none d-lg-flex")
End Sub
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnLG
AddClass("d-lg-none d-xl-flex")
End Sub
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXL
AddClass("d-xl-none")
End Sub
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnAll
AddClass("d-flex")
End Sub
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXS
AddClass("d-flex d-sm-none")
End Sub
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnSM
AddClass("d-none d-sm-flex d-md-none")
End Sub
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnMD
AddClass("d-none d-md-flex d-lg-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnLG
AddClass("d-none d-lg-flex d-xl-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXL
AddClass("d-none d-xl-flex")
End Sub
Sub Enable
UpdateDisabled(VC, False)
End Sub
Sub Disable
UpdateDisabled(VC, True)
End Sub
Sub UpdateTextDecoration(s As String)
VElement.UpdateTextDecoration(VC, s)
End Sub
Sub UpdateTextDecorationOnApp(A As VuetifyApp, s As String)
VElement.UpdateTextDecorationOnApp(A, s)
End Sub
Sub UpdateTruncate(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTruncateOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThrough(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThroughOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThin(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThinOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLight(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLightOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLine(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLineOnApp(A As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
a.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverline(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverlineOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBold(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBoldOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlack(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlackOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalic(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalicOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTextColor(xColor As String, xIntensity As String)
VElement.UpdateTextColor(VC, xColor, xIntensity)
End Sub
Sub UpdateTextColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateTextColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateColor(xColor As String, xIntensity As String)
VElement.UpdateColor(VC, xColor, xIntensity)
End Sub
Sub UpdateColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub
'Toggle a class at runtime, needs BindState
Sub ToggleClass(sClass As String)
VElement.ToggleClassRuntime(VC, sClass)
End Sub
'Toggle a clas at runtime, neeeds BindState
Sub ToggleClassOnApp(A As VuetifyApp, sClass As String)
VElement.ToggleClassOnApp(A, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassRT(sClass As String)
VElement.AddClassRuntime(VC, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassOnApp(A As VuetifyApp, sClass As String)
VElement.AddClassRuntimeOnAPp(A, sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassRT(sClass As String)
VElement.RemoveClassRuntime(VC, sClass)
End Sub
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub RemoveClass(sClass As String)
VElement.RemoveClass(sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassOnApp(A As VuetifyApp, sClass As String)
VElement.RemoveClassRuntimeOnApp(A, sClass)
End Sub
'Add style at runtime, needs BindState
Sub AddStyleRT(prop As String, value As String)
VElement.AddStyleRunTime(VC , prop, value)
End Sub
'Removes a style at runtime, needs BindState
Sub RemoveStyleRT(prop As String)
VElement.RemoveStyleRunTime(VC , prop)
End Sub
'Add a style at runtime. Use CamelCase, needs BindState
Sub AddStyleOnApp(A As VuetifyApp, prop As String, value As String)
VElement.AddStyleOnAPp(A , prop, value)
End Sub
'Removes a style at runtime. Use CamelCase, needs BindState
Sub RemoveStyleOnApp(A As VuetifyApp, prop As String)
VElement.RemoveStyleOnApp(A , prop)
End Sub
'Bind this attribute to this state name and specify a default value, needs BindState
Sub BindDefault(prop As String, varName As String, def As Object)
VElement.Bind(prop, varName)
VElement.SetData(varName, def)
End Sub
'Bind this attribute to this state name, needs BindState
Sub Bind(prop As String, varName As String)
VElement.Bind(prop, varName)
VElement.SetData(varName, Null)
End Sub
Sub getHTML As String
If mElement <> Null Then
Return mElement.GetHTML
Else
Return ""
End If
End Sub