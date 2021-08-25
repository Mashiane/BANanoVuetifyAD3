B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Change (item As String)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: ActiveTab, DisplayName: Active Tab, FieldType: String, DefaultValue: tab1item, Description: Active Tab
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: IconsAndText, DisplayName: IconsAndText, FieldType: Boolean, DefaultValue: false, Description: IconsAndText
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
#DesignerProperty: Key: IsExtension, DisplayName: IsExtension, FieldType: Boolean, DefaultValue: false, Description: IsExtension
#DesignerProperty: Key: AlignWithTitle, DisplayName: AlignWithTitle, FieldType: Boolean, DefaultValue: false, Description: AlignWithTitle
#DesignerProperty: Key: UsesCard, DisplayName: UsesCard, FieldType: Boolean, DefaultValue: True, Description: UsesCard
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: 1, Description: Elevation

#DesignerProperty: Key: HideSlider, DisplayName: HideSlider, FieldType: Boolean, DefaultValue: False, Description: HideSlider
#DesignerProperty: Key: SliderColor, DisplayName: SliderColor, FieldType: String, DefaultValue: , Description: SliderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: SliderColorIntensity, DisplayName: SliderColorIntensity, FieldType: String, DefaultValue: , Description: SliderColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: SliderSize, DisplayName: SliderSize, FieldType: String, DefaultValue: , Description: SliderSize

#DesignerProperty: Key: ItemKeys, DisplayName: Tab Keys (;)*, FieldType: String, DefaultValue:  , Description: Tab Keys
#DesignerProperty: Key: ItemTitles, DisplayName: Tab Titles (;)*, FieldType: String, DefaultValue:  , Description: Tab Titles
#DesignerProperty: Key: ItemIcons, DisplayName: Tab Icons (;)*, FieldType: String, DefaultValue:  , Description: Tab Icons
#DesignerProperty: Key: ItemBadges, DisplayName: Tab With Badges (";"), FieldType: String, DefaultValue:  , Description: Tab ItemBadges

#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass

#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CenterActive, DisplayName: CenterActive, FieldType: Boolean, DefaultValue: false, Description: CenterActive
#DesignerProperty: Key: Centered, DisplayName: Centered, FieldType: Boolean, DefaultValue: false, Description: Centered
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: FixedTabs, DisplayName: FixedTabs, FieldType: Boolean, DefaultValue: false, Description: FixedTabs
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height


#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MobileBreakpoint, DisplayName: MobileBreakpoint, FieldType: String, DefaultValue: , Description: MobileBreakpoint
#DesignerProperty: Key: NextIcon, DisplayName: NextIcon, FieldType: String, DefaultValue: , Description: NextIcon
#DesignerProperty: Key: Optional, DisplayName: Optional, FieldType: Boolean, DefaultValue: false, Description: Optional
#DesignerProperty: Key: PrevIcon, DisplayName: PrevIcon, FieldType: String, DefaultValue: , Description: PrevIcon
#DesignerProperty: Key: Right, DisplayName: Right, FieldType: Boolean, DefaultValue: false, Description: Right
#DesignerProperty: Key: ShowArrows, DisplayName: ShowArrows, FieldType: Boolean, DefaultValue: false, Description: ShowArrows


#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
	Private sActiveTab As String
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
	Private sActiveClass As String
	Private bAlignWithTitle As Boolean
	Private sBackgroundColor As String
	Private sBackgroundColorIntensity As String
	Private bCenterActive As Boolean
	Private bCentered As Boolean
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bFixedTabs As Boolean
	Private bGrow As Boolean
	Private sHeight As String
	Private bHideSlider As Boolean
	Private bIconsAndText As Boolean
	Private sKey As String
	Private bLight As Boolean
	Private sMobileBreakpoint As String
	Private sNextIcon As String
	Private bOptional As Boolean
	Private sPrevIcon As String
	Private bRight As Boolean
	Private bShowArrows As Boolean
	Private sSliderColor As String
	Private sSliderSize As String
	Private sVBind As String
	Private sVFor As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	Private sVShow As String
	Private bVertical As Boolean
	Private sSliderColorIntensity As String
	Private bHidden As Boolean
	Private xTabs As Int
	Private sItemKeys As String
	Private sItemTitles As String
	Private sItemIcons As String
	Private sItemBadges As String
	Private bIsExtension As Boolean
	'
	Private lstItemKeys As List
	Private lstItemTitles As List
	Private lstItemIcons As List
	Private lstItemBadges As List
	Private vlist1 As List
	Private sElevation As String
	Private bUsesCard As Boolean
	Private VC As VueComponent						'ignore
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
	sVShow = $"${mName}show"$
	sVModel = $"${mName}value"$
	xTabs = 0
	vlist1.Initialize 
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		sActiveTab = Props.GetDefault("ActiveTab", "")
		bIsExtension = Props.GetDefault("IsExtension", False)
		bIsExtension = BANanoShared.parseBool(bIsExtension)
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
		bAlignWithTitle = Props.Get("AlignWithTitle")
		sBackgroundColor = Props.Get("BackgroundColor")
		sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
		bCenterActive = Props.Get("CenterActive")
		bCentered = Props.Get("Centered")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bFixedTabs = Props.Get("FixedTabs")
		bGrow = Props.Get("Grow")
		sHeight = Props.Get("Height")
		bHideSlider = Props.Get("HideSlider")
		bIconsAndText = Props.Get("IconsAndText")
		sKey = Props.Get("Key")
		bLight = Props.Get("Light")
		sMobileBreakpoint = Props.Get("MobileBreakpoint")
		sNextIcon = Props.Get("NextIcon")
		bOptional = Props.Get("Optional")
		sPrevIcon = Props.Get("PrevIcon")
		bRight = Props.Get("Right")
		bShowArrows = Props.Get("ShowArrows")
		sSliderColor = Props.Get("SliderColor")
		sSliderSize = Props.Get("SliderSize")
		sVBind = Props.Get("VBind")
		sVFor = Props.Get("VFor")
		sVIf = Props.Get("VIf")
		sVOn = Props.Get("VOn")
		bHidden = Props.GetDefault("Hidden", False)
		bVertical = Props.GetDefault("Vertical",False)
		sSliderColorIntensity= Props.Get("SliderColorIntensity")
		'
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemTitles = Props.GetDefault("ItemTitles", "")
		sItemIcons = Props.GetDefault("ItemIcons", "")
		sItemBadges = Props.GetDefault("ItemBadges", "")
		sElevation = Props.GetDefault("Elevation", "1")
		bUsesCard = Props.GetDefault("UsesCard", False)
		bUsesCard = BANanoShared.parseBool(bUsesCard)
	End If
	'
	bAlignWithTitle = BANanoShared.parseBool(bAlignWithTitle)
	bCenterActive = BANanoShared.parseBool(bCenterActive)
	bCentered = BANanoShared.parseBool(bCentered)
	bDark = BANanoShared.parseBool(bDark)
	bFixedTabs = BANanoShared.parseBool(bFixedTabs)
	bGrow = BANanoShared.parseBool(bGrow)
	bHideSlider = BANanoShared.parseBool(bHideSlider)
	bIconsAndText = BANanoShared.parseBool(bIconsAndText)
	bLight = BANanoShared.parseBool(bLight)
	bOptional = BANanoShared.parseBool(bOptional)
	bRight = BANanoShared.parseBool(bRight)
	bShowArrows = BANanoShared.parseBool(bShowArrows)
	bHidden = BANanoShared.parseBool(bHidden)
	bVertical = BANanoShared.parseBool(bVertical)
	'
	sItemKeys = sItemKeys.ToLowerCase
	sItemBadges = sItemBadges.ToLowerCase
	
	lstItemKeys = BANanoShared.StrParseComma(";", sItemKeys)
	lstItemKeys = BANanoShared.ListTrimItems(lstItemKeys)
	lstItemTitles = BANanoShared.StrParseComma(";", sItemTitles)
	lstItemTitles = BANanoShared.ListTrimItems(lstItemTitles)
	lstItemIcons = BANanoShared.ListTrimItems(lstItemIcons)
	lstItemBadges = BANanoShared.StrParseComma(";", sItemBadges)
	lstItemBadges = BANanoShared.ListTrimItems(lstItemBadges)
	'
	'fix just in case
	If bVertical Then
		bIconsAndText = False
	End If
	
	Dim cardTag As String = "v-card"
	If bUsesCard = False Then
		cardTag = "span"
	End If
	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		If bIsExtension Then
			mElement = mTarget.Append($"<v-template id="${mName}template" v-slot:extension>
			<${cardTag} id="${mName}card">
			<v-tabs ref="${mName}" id="${mName}"></v-tabs>
			<v-tabs-items id="${mName}tabitems">
			</v-tabs-items>
			</${cardTag}>
			</v-template>"$).Get("#" & mName)
		Else		
			mElement = mTarget.Append($"<${cardTag} id="${mName}card">
			<v-tabs ref="${mName}" id="${mName}"></v-tabs>
			<v-tabs-items id="${mName}tabitems"></v-tabs-items>
			</${cardTag}>"$).Get("#" & mName)
		End If
	End If
	
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-tabs"
	VElement.GetCard.Elevation = sElevation
	
	'set the vmodel for the children
	VElement.GetVueElement($"${mName}tabitems"$).VModel = sVModel
	
	Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParseComma(";", sItemTitles)
	Dim xbadges As List = BANanoShared.StrParseComma(";", sItemBadges)
	Dim xicons As List = BANanoShared.StrParseComma(";", sItemIcons)
	'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	xbadges = BANanoShared.ListTrimItems(xbadges)
	xicons = BANanoShared.ListTrimItems(xicons)
	'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = ""
		Dim iTit As String = ""
		Dim iCon As String = ""
		Dim iBdg As String = ""
		'
		iKey = BANanoShared.GetListItem(xkeys, itemCnt)
		iTit = BANanoShared.GetListItem(xtitles, itemCnt)
		iCon = BANanoShared.GetListItem(xicons, itemCnt)
		iBdg = BANanoShared.GetListItem(xbadges, itemCnt)
		
		'	
		AddItem2(iKey, iTit, iCon, iBdg)
	Next
	Build
		
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":align-with-title", bAlignWithTitle)
	VElement.BackgroundColorAttr = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
	VElement.AddAttr(":center-active", bCenterActive)
	VElement.AddAttr(":centered", bCentered)
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":fixed-tabs", bFixedTabs)
	VElement.AddAttr(":grow", bGrow)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":hide-slider", bHideSlider)
	VElement.AddAttr(":icons-and-text", bIconsAndText)
	VElement.AddAttr("key", sKey)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr("mobile-breakpoint", sMobileBreakpoint)
	VElement.AddAttr("next-icon", sNextIcon)
	VElement.AddAttr(":optional", bOptional)
	VElement.AddAttr("prev-icon", sPrevIcon)
	VElement.AddAttr(":right", bRight)
	VElement.AddAttr(":show-arrows", bShowArrows)
	VElement.SliderColor = VElement.BuildColor(sSliderColor, sSliderColorIntensity)
	VElement.AddAttr("slider-size", sSliderSize)
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, sActiveTab)
	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddAttr(":vertical", bVertical)
	VElement.BindAllEvents
End Sub

'use on initialize
Sub Clear
	VElement.Empty
	xTabs = 0
	vlist1.Initialize
	GetTabItems.Empty
End Sub

'use on initialize
Sub Refresh
	Build
End Sub

'update the active item
Sub UpdateActive(C As VueComponent, itm As String)
	Dim tabID As String = $"${mName}${itm}"$
	Dim tabItem As String = $"${tabID}item"$
	C.SetData(sVModel, tabItem)
End Sub

'update the active item
Sub UpdateActiveOnApp(V As VuetifyApp, itm As String)
	Dim tabID As String = $"${mName}${itm}"$
	Dim tabItem As String = $"${tabID}item"$
	V.SetData(sVModel, tabItem)
End Sub

'add item using own key
Sub AddItem1(iKey As String, sTitle As String, sIcon As String)
	AddItem2(iKey, sTitle, sIcon, "")
End Sub

'add item using own key with badge
Sub AddItem2(iKey As String, sTitle As String, sIcon As String, sBadge As String)
	Dim tabID As String = $"${mName}${iKey}"$
	Dim tabItem As String = $"${tabID}item"$
	Dim tabBadge As String = $"${tabID}badge"$
	Dim tabBadgeContent As String = $"${tabID}badgecontent"$
	Dim tabBadgeColor As String = $"${tabID}badgecolor"$
	'
	If BANano.IsNull(sTitle) Or BANano.IsUndefined(sTitle) Then sTitle = ""
	If BANano.IsNull(sIcon) Or BANano.IsUndefined(sIcon) Then sIcon = ""
		
	'add a tab
	VElement.Append($"<v-tab href="#${tabItem}" id="${tabID}"></v-tab>"$)
	'we dont have a badge
	If sBadge = "" Then
		Dim vTabx As VueElement
		vTabx.Initialize(mCallBack, tabID, tabID)
		If bVertical Then
			If sIcon <> "" Then
				vTabx.Append($"<v-icon left id="${tabID}icon">${sIcon}</v-icon>"$)
			End	If
			If sTitle <> "" Then
				vTabx.Append($"<span id="${tabID}title">${sTitle}</span>"$)
			End If
		Else
			If sTitle <> "" Then
				vTabx.Append($"<span id="${tabID}title">${sTitle}</span>"$)
			End If
			If sIcon <> "" Then
				vTabx.Append($"<v-icon id="${tabID}icon">${sIcon}</v-icon>"$)
			End If
		End If
	Else
		Dim vTabx As VueElement
		vTabx.Initialize(mCallBack, tabID, tabID)
		vTabx.Append($"<v-badge id="${tabBadge}"></v-badge>"$)
		vTabx.GetBadge.Bind("content", tabBadgeContent)
		vTabx.GetBadge.Bind("color", tabBadgeColor)
		VElement.SetData(tabBadgeContent, sBadge)
		VElement.SetData(tabBadgeColor, "primary")
		'
		If bVertical Then
			If sIcon <> "" Then
				vTabx.GetBadge.Append($"<v-icon left id="${tabID}icon">${sIcon}</v-icon>"$)
			End	If
			If sTitle <> "" Then
				vTabx.GetBadge.Append($"<span id="${tabID}title">${sTitle}</span>"$)
			End If
		Else
			If sTitle <> "" Then
				vTabx.GetBadge.Append($"<span id="${tabID}title">${sTitle}</span>"$)
			End If
			If sIcon <> "" Then
				vTabx.GetBadge.Append($"<v-icon id="${tabID}icon">${sIcon}</v-icon>"$)
			End If
		End If
	End If
	vlist1.Add(iKey)
End Sub

'get the tab item to put content
Sub GetBadge(sID As String) As VueElement
	Dim sitem As String = $"${mName}${sID}badge"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sitem, sitem)
	Return elx
End Sub

'get the tab item to put content
Sub GetIcon(sID As String) As VueElement
	Dim sitem As String = $"${mName}${sID}icon"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, sitem, sitem)
	Return elx
End Sub

Sub UpdateBadge(C As VueComponent, key As String, value As Int)
	Dim sitem As String = $"${mName}${key}badgecontent"$
	C.SetData(sitem, value)
End Sub

Sub UpdateBadgeOnApp(V As VuetifyApp, key As String, value As Int)
	Dim sitem As String = $"${mName}${key}badgecontent"$
	V.SetData(sitem, value)
End Sub

Sub UpdateBadgeColor(C As VueComponent, key As String, value As Int)
	Dim sitem As String = $"${mName}${key}badgecolor"$
	C.SetData(sitem, value)
End Sub

Sub UpdateBadgeColorOnApp(V As VuetifyApp, key As String, value As Int)
	Dim sitem As String = $"${mName}${key}badgecolor"$
	V.SetData(sitem, value)
End Sub

'build the tab Items, automatically done by BindState
private Sub Build
	'get the tab items
	Dim tabs As VueElement = VElement.GetVueElement($"${mName}tabitems"$)
	For Each sItem As String In vlist1
		Dim tabID As String = $"${mName}${sItem}"$
		Dim tabItem As String = $"${tabID}item"$
		Dim tabcontent As String = $"${tabID}content"$
		tabs.Append($"<v-tab-item id="${tabItem}" value="${tabItem}"><span id="${tabcontent}"></span></v-tab-item>"$)	
	Next
End Sub

Sub GetTabItems As VueElement
	Dim tabs As VueElement = VElement.GetVueElement($"${mName}tabitems"$)
	Return tabs
End Sub

'add items using internal increment
Sub AddItem(sTitle As String, sIcon As String)
	xTabs = xTabs + 1
	AddItem1(xTabs, sTitle, sIcon)
End Sub

'get the tab item to put content
Sub Item(sID As String) As String
	Dim sitem As String = $"#${mName}${sID}content"$
	Return sitem
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VTabs
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VTabs
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VTabs
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VTabs
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VTabs
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(V As VuetifyApp, b As Boolean) As VTabs
	V.SetData(sVIf, b)
	V.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
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