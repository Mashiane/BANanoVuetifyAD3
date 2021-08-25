B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (item As Object)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: True, Description: App
#DesignerProperty: Key: Value, DisplayName: Default Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: false, Description: Fixed
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 56 , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: HideOnScroll, DisplayName: HideOnScroll, FieldType: Boolean, DefaultValue: false, Description: HideOnScroll
#DesignerProperty: Key: Horizontal, DisplayName: Horizontal, FieldType: Boolean, DefaultValue: false, Description: Horizontal
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: false, Description: Mandatory
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: ScrollTarget, DisplayName: ScrollTarget, FieldType: String, DefaultValue: , Description: ScrollTarget
#DesignerProperty: Key: ScrollThreshold, DisplayName: ScrollThreshold, FieldType: String, DefaultValue: , Description: ScrollThreshold
#DesignerProperty: Key: Shift, DisplayName: Shift, FieldType: Boolean, DefaultValue: false, Description: Shift
'
#DesignerProperty: Key: ItemType, DisplayName: ItemType, FieldType: String, DefaultValue:  none, Description: Item Type, List: normal|badge|none
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (;), FieldType: String, DefaultValue:  , Description: Item Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  , Description: Item Icons
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  , Description: Item Colors
#DesignerProperty: Key: ItemTo, DisplayName: Item To (;), FieldType: String, DefaultValue:  , Description: Item To
#DesignerProperty: Key: ItemTexts, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
#DesignerProperty: Key: ItemBadges, DisplayName: Item Badges (;), FieldType: String, DefaultValue:  , Description: Item Badges
#DesignerProperty: Key: ItemBadgeColors, DisplayName: Item Badge Colors (;), FieldType: String, DefaultValue:  , Description: Item Badge Colors
'
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf


#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
	Private sItemType As String
	Private sItemKeys As String
	Private sItemIcons As String
	Private sItemColors As String
	Private sItemTexts As String
	Private sItemBadges As String
	Private sItemBadgeColors As String
	'
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
	Private bApp As Boolean
	Private sBackgroundColor As String
	Private sBackgroundColorIntensity As String
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bFixed As Boolean
	Private bGrow As Boolean
	Private sHeight As String
	Private bHideOnScroll As Boolean
	Private bHorizontal As Boolean
	Private bLight As Boolean
	Private bMandatory As Boolean
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private sScrollTarget As String
	Private sScrollThreshold As String
	Private bShift As Boolean
	Private sVIf As String
	Private sVShow As String
	Private sValue As String
	Private sWidth As String
	Private xitems As List
	Private itemsName As String
	Private bHidden As Boolean
	Private svmodel As String
	Private sItemTo As String
	Private VC As VueComponent
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
	itemsName = $"${mName}items"$
	sVShow = $"${mName}show"$
	svmodel = $"${mName}vmodel"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
		bApp = Props.Get("App")
		sBackgroundColor = Props.Get("BackgroundColor")
		sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bFixed = Props.Get("Fixed")
		bGrow = Props.Get("Grow")
		sHeight = Props.Get("Height")
		bHideOnScroll = Props.Get("HideOnScroll")
		bHorizontal = Props.Get("Horizontal")
		bLight = Props.Get("Light")
		bMandatory = Props.Get("Mandatory")
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		sScrollTarget = Props.Get("ScrollTarget")
		sScrollThreshold = Props.Get("ScrollThreshold")
		bShift = Props.Get("Shift")
		sVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sValue = Props.Get("Value")
		sWidth = Props.Get("Width")
		sItemType = Props.GetDefault("ItemType", "")
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemIcons = Props.GetDefault("ItemIcons", "")
		sItemColors = Props.GetDefault("ItemColors", "")
		sItemTexts = Props.GetDefault("ItemTexts", "")
		sItemBadges = Props.GetDefault("ItemBadges", "")
		sItemBadgeColors = Props.GetDefault("ItemBadgeColors", "")
		sItemTo = Props.GetDefault("ItemTo", "")
	End If
	'
	bApp = BANanoShared.parseBool(bApp)
	bDark = BANanoShared.parseBool(bDark)
	bFixed = BANanoShared.parseBool(bFixed)
	bGrow = BANanoShared.parseBool(bGrow)
	bHideOnScroll = BANanoShared.parseBool(bHideOnScroll)
	bHorizontal = BANanoShared.parseBool(bHorizontal)
	bLight = BANanoShared.parseBool(bLight)
	bMandatory = BANanoShared.parseBool(bMandatory)
	bShift = BANanoShared.parseBool(bShift)
	'
	Dim lstsItemKeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim lstsItemIcons As List = BANanoShared.StrParseComma(";", sItemIcons)
	Dim lstsItemColors As List = BANanoShared.StrParseComma(";", sItemColors)
	Dim lstsItemTexts As List = BANanoShared.StrParseComma(";", sItemTexts)
	Dim lstsItemBadges As List = BANanoShared.StrParseComma(";", sItemBadges)
	Dim lstsItemBadgeColors As List = BANanoShared.StrParseComma(";", sItemBadgeColors)
	Dim lstsItemTo As List = BANanoShared.StrParseComma(";", sItemTo)
	'
	lstsItemKeys = BANanoShared.ListTrimItems(lstsItemKeys)
	lstsItemIcons = BANanoShared.ListTrimItems(lstsItemIcons)
	lstsItemColors = BANanoShared.ListTrimItems(lstsItemColors)
	lstsItemTexts = BANanoShared.ListTrimItems(lstsItemTexts)
	lstsItemBadges = BANanoShared.ListTrimItems(lstsItemBadges)
	lstsItemBadgeColors = BANanoShared.ListTrimItems(lstsItemBadgeColors)
	lstsItemTo = BANanoShared.ListTrimItems(lstsItemTo)
		
	Dim tItems As Int = lstsItemKeys.Size - 1
	Dim cItems As Int
	'
	xitems.Initialize 
	For cItems = 0 To tItems
		Dim iKey As String = BANanoShared.GetListItem(lstsItemKeys, cItems)
		Dim icon As String = BANanoShared.getlistitem(lstsItemIcons, cItems)
		Dim color As String = BANanoShared.GetListItem(lstsItemColors, cItems)
		Dim txt As String = BANanoShared.GetListItem(lstsItemTexts, cItems)
		Dim bdg As String = BANanoShared.GetListItem(lstsItemBadges, cItems)
		Dim bdgcolor As String = BANanoShared.GetListItem(lstsItemBadgeColors, cItems)
		Dim ito As String = BANanoShared.GetListItem(lstsItemTo, cItems)
		
		Select Case sItemType
		Case "normal"
			AddItem(iKey, txt, color, icon, ito)
		Case "badge"	
			AddItem1(iKey, txt, color, icon, bdg, bdgcolor, ito)
		End Select
	Next
		
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-bottom-navigation ref="${mName}" id="${mName}"></v-bottom-navigation>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-bottom-navigation"
	'
	'add buttons for navigation
	'VElement.Append($"<v-btn :key="item.id" :value="item.value" :to="item.to" :color="item.color" id="${mName}button" v-for="(item, i) in ${itemsName}">
	'<span id="${mName}text">{{ item.caption }}</span><v-icon id="${mName}icon">{{ item.icon }}</v-icon></v-btn>"$)
	
	VElement.Append($"<v-template v-for="(item, i) in ${itemsName}">
	<v-btn :key="item.id" v-if="item.badge == 0" :value="item.value" :to="item.to" :color="item.color" id="${mName}button">
	<span id="${mName}text">{{ item.caption }}</span><v-icon id="${mName}icon">{{ item.icon }}</v-icon></v-btn>
	
	<v-btn :key="item.id" v-if="item.badge > 0" :value="item.value" :to="item.to" :color="item.color" id="${mName}button">
    <span id="${mName}text">{{ item.caption }}</span>
	<v-badge id="${mName}badge" right :color="item.badgecolor">
    <span slot="badge">{{ item.badge }}</span><v-icon id="${mName}icon">{{ item.icon }}</v-icon>
    </v-badge>
    </v-btn>
	</v-template>"$)
		
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":app", bApp)
	VElement.BackgroundColorAttr = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":fixed", bFixed)
	VElement.AddAttr(":grow", bGrow)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":hide-on-scroll", bHideOnScroll)
	VElement.AddAttr(":horizontal", bHorizontal)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":mandatory", bMandatory)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr("scroll-target", sScrollTarget)
	VElement.AddAttr("scroll-threshold", sScrollThreshold)
	VElement.AddAttr(":shift", bShift)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
		VElement.AddAttr(":input-value.sync", sVShow)
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddAttr(":value", svmodel)
	VElement.SetData(svmodel, sValue)
	VElement.AddAttr("width", sWidth)
	VElement.SetData(itemsName, xitems)
	VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VBottomNavigation
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VBottomNavigation
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VBottomNavigation
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VBottomNavigation
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VBottomNavigation
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VBottomNavigation
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub Clear(C As VueComponent)
	C.SetData(itemsName, C.NewList)
	xitems.Initialize 
End Sub


Sub ClearOnApp(C As VuetifyApp)
	C.SetData(itemsName, C.NewList)
	xitems.Initialize 
End Sub

Sub AddItem(elID As String, caption As String, color As String, iconName As String, goTo As String) As VBottomNavigation
	Dim nm As Map = CreateMap()
	nm.Put("id", elID)
	nm.Put("value", elID)
	If color <> "" Then nm.Put("color", color)
	If goTo <> "" Then nm.Put("to", goTo)
	If iconName <> "" Then nm.Put("icon", iconName)
	nm.Put("caption", caption)
	nm.Put("badge", 0)
	xitems.Add(nm)
	Return Me
End Sub

Sub AddItem1(elID As String, caption As String, color As String, iconName As String, badge As String, badgeColor As String, goTo As String) As VBottomNavigation
	Dim nm As Map = CreateMap()
	nm.Put("id", elID)
	nm.Put("value", elID)
	If color <> "" Then nm.Put("color", color)
	If goTo <> "" Then nm.Put("to", goTo)
	If iconName <> "" Then nm.Put("icon", iconName)
	nm.Put("caption", caption)
	nm.Put("badge", badge)
	nm.Put("badgecolor", badgeColor)
	xitems.Add(nm)
	Return Me
End Sub

Sub UpdateBadge(C As VueComponent, key As String, badge As Int)
	Dim ni As Map = CreateMap()
	ni.Put("badge", badge)
	C.RealTimeUpdateItem(itemsName, "id", key, ni)
End Sub

Sub UpdateBadgeOnApp(C As VuetifyApp, key As String, badge As Int)
	Dim ni As Map = CreateMap()
	ni.Put("badge", badge)
	C.RealTimeUpdateItem(itemsName, "id", key, ni)
End Sub

Sub Refresh(C As VueComponent)
	C.SetData(itemsName, xitems)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(itemsName, xitems)
End Sub

'set active button
Sub SetValue(C As VueComponent, xvalue As String)
	C.SetData(svmodel, xvalue)
End Sub

'set active button
Sub SetValueOnApp(C As VuetifyApp, xvalue As String)
	C.SetData(svmodel, xvalue)
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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub
