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
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: tabs1, Description: VModel
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: IconsAndText, DisplayName: IconsAndText, FieldType: Boolean, DefaultValue: false, Description: IconsAndText
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
#DesignerProperty: Key: IsExtension, DisplayName: IsExtension, FieldType: Boolean, DefaultValue: false, Description: IsExtension
#DesignerProperty: Key: AlignWithTitle, DisplayName: AlignWithTitle, FieldType: Boolean, DefaultValue: false, Description: AlignWithTitle

#DesignerProperty: Key: HideSlider, DisplayName: HideSlider, FieldType: Boolean, DefaultValue: False, Description: HideSlider
#DesignerProperty: Key: SliderColor, DisplayName: SliderColor, FieldType: String, DefaultValue: , Description: SliderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: SliderColorIntensity, DisplayName: SliderColorIntensity, FieldType: String, DefaultValue: , Description: SliderColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: SliderSize, DisplayName: SliderSize, FieldType: String, DefaultValue: , Description: SliderSize

#DesignerProperty: Key: ItemKeys, DisplayName: Tab Keys (;)*, FieldType: String, DefaultValue:  , Description: Tab Keys
#DesignerProperty: Key: ItemTitles, DisplayName: Tab Titles (;)*, FieldType: String, DefaultValue:  , Description: Tab Titles
#DesignerProperty: Key: ItemIcons, DisplayName: Tab Icons (;)*, FieldType: String, DefaultValue:  , Description: Tab Icons
#DesignerProperty: Key: ItemBadges, DisplayName: Tab With Badges (;), FieldType: String, DefaultValue:  , Description: Tab ItemBadges

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
	'Private sVShow As String
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
	'sVShow = $"${mName}show"$
	xTabs = 0
	vlist1.Initialize 
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
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
		sVModel = Props.Get("VModel")
		sVOn = Props.Get("VOn")
		bHidden = Props.GetDefault("Hidden", False)
		bVertical = Props.GetDefault("Vertical",False)
		sSliderColorIntensity= Props.Get("SliderColorIntensity")
		'
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemTitles = Props.GetDefault("ItemTitles", "")
		sItemIcons = Props.GetDefault("ItemIcons", "")
		sItemBadges = Props.GetDefault("ItemBadges", "")
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
	
	lstItemKeys = BANanoShared.StrParse(";", sItemKeys)
	lstItemKeys = BANanoShared.ListTrimItems(lstItemKeys)
	lstItemTitles = BANanoShared.StrParse(";", sItemTitles)
	lstItemTitles = BANanoShared.ListTrimItems(lstItemTitles)
	lstItemIcons = BANanoShared.ListTrimItems(lstItemIcons)
	lstItemBadges = BANanoShared.ListTrimItems(lstItemBadges)
	'
	'fix just in case
	If bVertical Then
		bIconsAndText = False
	End If
	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		If bIsExtension Then
			mElement = mTarget.Append($"<v-template id="${mName}template" v-slot:extension><v-tabs ref="${mName}" id="${mName}"></v-tabs></v-template>"$).Get("#" & mName)
		Else		
			mElement = mTarget.Append($"<v-tabs ref="${mName}" id="${mName}"></v-tabs>"$).Get("#" & mName)
		End If
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-tabs"
	
	'we have multiple items
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemTitles = sItemTitles.Replace(",", ";")
	sItemBadges = sItemBadges.Replace(",", ";")
	sItemIcons = sItemIcons.Replace(",", ";")

	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
	Dim xbadges As List = BANanoShared.StrParse(";", sItemBadges)
	Dim xicons As List = BANanoShared.StrParse(";", sItemIcons)
	'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	xbadges = BANanoShared.ListTrimItems(xbadges)
	xicons = BANanoShared.ListTrimItems(xicons)
	'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		Dim iCon As String = xicons.Get(itemCnt)
		'	
		AddItem1(iKey, iTit, iCon)
	Next
	Build
		
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":align-with-title", bAlignWithTitle)
	VElement.BackgroundColor = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
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
	VElement.SetData(sVModel, Null)
	VElement.AddAttr("v-on", sVOn)
	'VElement.AddAttr("v-show", sVShow)
	'VElement.SetData(sVShow, Not(bHidden))
	VElement.AddAttr(":vertical", bVertical)
	VElement.BindAllEvents
End Sub

'add item using own key
Sub AddItem1(iKey As String, sTitle As String, sIcon As String)
	Dim tabID As String = $"${mName}${iKey}"$
	Dim tabItem As String = $"${tabID}item"$
	'
	If BANano.IsNull(sTitle) Or BANano.IsUndefined(sTitle) Then sTitle = ""
	If BANano.IsNull(sIcon) Or BANano.IsUndefined(sIcon) Then sIcon = ""
		
	'add a tab
	VElement.Initialize(mCallBack, mName, mName)
	VElement.Append($"<v-tab href="#${tabItem}" id="${tabID}"></v-tab>"$)
		'
	Dim vTabx As VueElement
	vTabx.Initialize(mCallBack, tabID, tabID)
	If bVertical Then
		If sIcon <> "" Then
			vTabx.Append($"<v-icon left id="${tabID}icon">${sIcon}</v-icon>"$)
		End If
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
	vlist1.Add(iKey)
End Sub

'build the tab Items, automatically done by BindState
private Sub Build
	VElement.Initialize(mCallBack, mName, mName)
	For Each sItem As String In vlist1
		Dim tabID As String = $"${mName}${sItem}"$
		Dim tabItem As String = $"${tabID}item"$
		Dim tabcontent As String = $"${tabID}content"$
		VElement.Append($"<v-tab-item id="${tabItem}" value="${tabItem}"><span id="${tabcontent}"></span></v-tab-item>"$)	
	Next
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

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VTabs
	VC.SetData(sVIf, b)
	'VC.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
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