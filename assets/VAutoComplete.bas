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


#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: autocomplete1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: autocomplete1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: ItemValue, DisplayName: Item Value, FieldType: String, DefaultValue: value, Description: Item Value
#DesignerProperty: Key: ItemText, DisplayName: Item Text, FieldType: String, DefaultValue: text, Description: Item Text
#DesignerProperty: Key: ItemDisabled, DisplayName: Item Disabled, FieldType: String, DefaultValue: disabled, Description: Item Disabled
#DesignerProperty: Key: ItemAvatar, DisplayName: Item Avatar, FieldType: String, DefaultValue: avatar, Description: Item Avatar
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (;), FieldType: String, DefaultValue:  , Description: Item Values
#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
'
#DesignerProperty: Key: ColorList, DisplayName: ColorList, FieldType: Boolean, DefaultValue: False, Description: Show Colors
#DesignerProperty: Key: PersonList, DisplayName: PersonList, FieldType: Boolean, DefaultValue: False, Description: Show Persons
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
	xitems.Initialize 
	xReturnObject = $"${mName}returnobject"$
	sRequired = $"${mName}required"$
	sDisabled = $"${mName}disabled"$
	sReadonly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	sLoading = $"${mName}loading"$
	sItems = $"${mName}items"$
End Sub

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

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

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

Sub getID As String
	Return mName
End Sub


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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub

Sub Enable
	UpdateDisabled(VC, False)
End Sub

Sub Disable
	UpdateDisabled(VC, True)
End Sub