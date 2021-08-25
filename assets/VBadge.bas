B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: BadgeType, DisplayName: Badge Type, FieldType: String, DefaultValue: icon, Description: The badge shows an icon, or counter, List: icon|avatar|button
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Value, DisplayName: Badge Value, FieldType: String, DefaultValue: 10, Description: The badge shows this value
#DesignerProperty: Key: Icon, DisplayName: Badge Icon, FieldType: String, DefaultValue: , Description: The badge is this icon
#DesignerProperty: Key: Bordered, DisplayName: Bordered, FieldType: Boolean, DefaultValue: false, Description: Bordered
#DesignerProperty: Key: Color, DisplayName: Badge Color*, FieldType: String, DefaultValue:  blue, Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Badge Color Intensity*, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Left, DisplayName: Left, FieldType: Boolean, DefaultValue: False, Description: Left
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: Boolean, DefaultValue: False, Description: Bottom
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dot, DisplayName: Dot, FieldType: Boolean, DefaultValue: false, Description: Dot
#DesignerProperty: Key: Inline, DisplayName: Inline, FieldType: Boolean, DefaultValue: false, Description: Inline
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: , Description: Mode
#DesignerProperty: Key: OffsetX, DisplayName: OffsetX, FieldType: String, DefaultValue: , Description: OffsetX
#DesignerProperty: Key: OffsetY, DisplayName: OffsetY, FieldType: String, DefaultValue: , Description: OffsetY
#DesignerProperty: Key: Overlap, DisplayName: Overlap, FieldType: Boolean, DefaultValue: false, Description: Overlap
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition 

#DesignerProperty: Key: IconName, DisplayName: IconName, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: IconSize, DisplayName: IconSize, FieldType: String, DefaultValue: , Description: Icon Size, List: none|large|small|x-large|x-small

#DesignerProperty: Key: AvatarImg, DisplayName: AvatarImg, FieldType: String, DefaultValue: , Description: AvatarImg
#DesignerProperty: Key: AvatarSize, DisplayName: AvatarSize, FieldType: String, DefaultValue: 48, Description: AvatarSize
'
#DesignerProperty: Key: ButtonText, DisplayName: Button Text, FieldType: String, DefaultValue: , Description: Button Text
#DesignerProperty: Key: ButtonRaised, DisplayName: Button Raised/Text, FieldType: Boolean, DefaultValue: True, Description: Button Transparent Background Off
#DesignerProperty: Key: ButtonBlock, DisplayName: Button Block, FieldType: Boolean, DefaultValue: False, Description: Button Block
#DesignerProperty: Key: ButtonSize, DisplayName: Button Size, FieldType: String, DefaultValue: normal, Description: Button Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: ButtonDepressed, DisplayName: Button Depressed, FieldType: Boolean, DefaultValue: False, Description: Button Depressed
#DesignerProperty: Key: ButtonOutlined, DisplayName: Button Outlined, FieldType: Boolean, DefaultValue: False, Description: Button Outlined
#DesignerProperty: Key: ButtonRounded, DisplayName: Button Rounded, FieldType: Boolean, DefaultValue: False, Description: Button Rounded, 
#DesignerProperty: Key: ButtonFab, DisplayName: Button Fab, FieldType: Boolean, DefaultValue: False, Description: Button Fab

#DesignerProperty: Key: HostColor, DisplayName: Host Color, FieldType: String, DefaultValue:  none, Description: The color of the badge nost, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HostColorIntensity, DisplayName: Host Color Intensity, FieldType: String, DefaultValue:  normal, Description: The color intensity of the badge host, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: HostTextColor, DisplayName: Host Text Color, FieldType: String, DefaultValue:  none, Description: The text color of the badge host, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HostTextColorIntensity, DisplayName: Host Text Color Intensity, FieldType: String, DefaultValue:  normal, Description:The text color intensity of the badge host, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4

#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: VIf
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =


'Badges allow one to show badges on icons, buttons and avatars.
'One needs to select the badge type e.g. icon, button or avatar and then set up the respective properties
'The host colors are the colors of the hosting icon/avatar/button icon
'An avatar has a click event

Sub Class_Globals
	Private sButtonText As String
Private bButtonRaised As Boolean
Private bButtonBlock As Boolean
Private sButtonSize As String
Private bButtonDepressed As Boolean
Private bButtonOutlined As Boolean
Private bButtonRounded As Boolean
Private bButtonFab As Boolean
Private sHostColor As String
Private sHostColorIntensity As String
Private sHostTextColor As String
Private sHostTextColorIntensity As String
	
	Private BANano As BANano 'ignore
	Private bAvatar As Boolean		'ignore
	Private bBordered As Boolean
	Private sColor As String
	Private sColorintensity As String
	Private bDark As Boolean
	Private bDot As Boolean
	Private sIcon As String
	Private bInline As Boolean
	Private sMode As String
	Private sOffsetX As String
	Private sOffsetY As String
	Private bOverlap As Boolean
	Private bTile As Boolean
	Private sTransition As String
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mVIf As String = ""
	Private bLeft As Boolean
	Private bBottom As Boolean
	Private mVIf As String = ""
	Private sAvatarImg As String = ""
	Private sAvatarSize As String = ""   'ignore
	Private bHidden As Boolean
	Private svModel As String = ""
	Private sValue As String
	Private xHidden As String 
	Private sAvatarIcon As String    'ignore
	Private sIconName As String
	Private sIconSize As String
	Private sIconSize As String
	Private xiconcolor As String
	Private xbadgecolor As String
	Private sBadgeType As String
	Private VC As VueComponent		'ignore
	Private mColor As String
	Private mTextColor As String		'ignore
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
	xHidden = $"${mName}show"$
	svModel = $"${mName}value"$
	xiconcolor = $"${mName}iconcolor"$
	xbadgecolor = $"${mName}badgecolor"$
End Sub

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		sIconName = Props.GetDefault("IconName", "")
		sIconSize = Props.GetDefault("IconSize", "")
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.Get("VIf")
		bBordered = Props.Get("Bordered")
		sColor = Props.Get("Color")
		sColorintensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bDot = Props.Get("Dot")
		sIcon = Props.Get("Icon")
		bInline = Props.Get("Inline")
		sMode = Props.Get("Mode")
		sOffsetX = Props.Get("OffsetX")
		sOffsetY = Props.Get("OffsetY")
		bOverlap = Props.Get("Overlap")
		bTile = Props.Get("Tile")
		sTransition = Props.Get("Transition")
		sValue = Props.GetDefault("Value","10")
		bBottom = Props.Get("Bottom")
		bLeft = Props.Get("Left")
		sAvatarImg = Props.Get("AvatarImg")
		sAvatarSize = Props.Get("AvatarSize")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sAvatarIcon = Props.GetDefault("AvatarIcon", "")
		sIconSize = Props.GetDefault("IconSize", "")
		sBadgeType = Props.GetDefault("BadgeType", "counter")
		'
		sButtonText = Props.GetDefault("ButtonText", "Button")
		bButtonRaised = Props.GetDefault("ButtonRaised", True)
		bButtonRaised = BANanoShared.parseBool(bButtonRaised)
		bButtonBlock = Props.GetDefault("ButtonBlock", False)
		bButtonBlock = BANanoShared.parseBool(bButtonBlock)
		sButtonSize = Props.GetDefault("ButtonSize", "normal")
		bButtonDepressed = Props.GetDefault("ButtonDepressed", False)
		bButtonDepressed = BANanoShared.parseBool(bButtonDepressed)
		bButtonOutlined = Props.GetDefault("ButtonOutlined", False)
		bButtonOutlined = BANanoShared.parseBool(bButtonOutlined)
		bButtonRounded = Props.GetDefault("ButtonRounded", False)
		bButtonRounded = BANanoShared.parseBool(bButtonRounded)
		bButtonFab = Props.GetDefault("ButtonFab", False)
		bButtonFab = BANanoShared.parseBool(bButtonFab)
		sHostColor = Props.GetDefault("HostColor", "blue")
		sHostColorIntensity = Props.GetDefault("HostColorIntensity", "normal")
		sHostTextColor = Props.GetDefault("HostTextColor", "blue")
		sHostTextColorIntensity = Props.GetDefault("HostTextColorIntensity", "normal")
	End If
	'
	bBordered = BANanoShared.parseBool(bBordered)
	bDark = BANanoShared.parseBool(bDark)
	bDot = BANanoShared.parseBool(bDot)
	bInline = BANanoShared.parseBool(bInline)
	bOverlap = BANanoShared.parseBool(bOverlap)
	bTile = BANanoShared.parseBool(bTile)
	bLeft = BANanoShared.parseBool(bLeft)
	bBottom = BANanoShared.parseBool(bBottom)
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-badge ref="${mName}" id="${mName}"></v-badge>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-badge"
	'
	mColor = VElement.BuildColor(sHostColor, sHostColorIntensity)
		
	Select Case sBadgeType
	Case "icon"
		VElement.Append($"<v-icon id="${mName}icon">${sIconName}</v-icon>"$)
		Dim icn As VueElement = VElement.GetIcon
		icn.Bind("color", xiconcolor)
		icn.SetData(xiconcolor, mColor)
		icn.TextColor = sHostTextColor
		icn.TextColorintensity = sHostTextColorIntensity
		Select Case sIconSize
		Case "none"	
		Case "large"
			icn.AddAttr(":large", True)
		Case "small"
			icn.AddAttr(":small", True)
		Case "x-large"
			icn.AddAttr(":x-large", True)
		Case "x-small"
			icn.AddAttr(":x-small", True)
		End Select
		icn.bindallevents
		icn.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", Null)
		VElement.BindVueElement(icn)
	Case "avatar"
		VElement.Append($"<v-avatar id="${mName}avatar"><v-img id="${mName}image" alt=""></v-img></v-avatar>"$)
		Dim avt As VueElement = VElement.GetAvatar
		avt.Size = sAvatarSize
		avt.Bind("color", xiconcolor)
		avt.SetData(xiconcolor, mColor)
		avt.TextColor = sHostTextColor
		avt.TextColorintensity = sHostTextColorIntensity
		VElement.GetImage.Src = sAvatarImg 
				
		avt.bindallevents
		avt.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", Null)
		
		VElement.BindVueElement(avt)
	Case "button"
		VElement.Append($"<v-btn id="${mName}button">${sButtonText}</v-btn>"$)
		Dim btn As VueElement = VElement.GetButton
		btn.Raised = bButtonRaised
		btn.Block = bButtonBlock
		btn.Size = sButtonSize
		btn.Depressed = bButtonDepressed
		btn.Outlined = bButtonOutlined
		btn.Rounded = bButtonRounded
		btn.Fab = bButtonFab
		btn.Bind("color", xiconcolor)
		btn.SetData(xiconcolor, mColor)
		btn.TextColor = sHostTextColor
		btn.TextColorintensity = sHostTextColorIntensity
		btn.BindAllEvents
		btn.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", Null)
		VElement.BindVueElement(btn)		
	End Select
	'update value of the badge	
	VElement.SetData(svModel, sValue)
	
	VElement.setAvatar(bAvatar)
	VElement.Bordered = bBordered
	VElement.Bind("color", xbadgecolor)
	sColor = VElement.BuildColor(sColor, sColorintensity)
	VElement.SetData(xbadgecolor, sColor)
	VElement.Dark = bDark
	VElement.Dot = bDot
	If sIcon <> "" Then
		VElement.SetAttr("icon", sIcon)
	Else
		VElement.Bind("content", svModel)
		VElement.Bind("value", svModel)
	End If
	VElement.SetAttr(":inline", bInline)
	VElement.Mode = sMode
	VElement.OffsetX = sOffsetX
	VElement.OffsetY = sOffsetY
	VElement.Overlap = bOverlap
	VElement.Tile = bTile
	VElement.Transition = sTransition
	VElement.SetData(svModel, sValue)
	VElement.VIf = mVIf
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.Left = bLeft
	VElement.Bottom = bBottom
	'hidden / visible
	If bHidden Then
		VElement.VShow = xHidden
		VElement.SetData(xHidden, Not(bHidden))
	End If
	VElement.AddPointerOnClick
	If bDot Then
		VElement.RemoveAttr(":value")
		VElement.RemoveAttr(":content")
		VElement.RemoveAttr("icon")
		VElement.RemoveAttr(":icon")
	End If
	VElement.BindAllEvents
End Sub	

'update the color of the badge
Sub UpdateColor(C As VueComponent, color As String, intensity As String)
	sColor = VElement.BuildColor(color, intensity)
	C.SetData(xbadgecolor, sColor)
End Sub

'update the color of the badge on pgIndex
Sub UpdateColorOnApp(C As VuetifyApp, color As String, intensity As String)
	sColor = VElement.BuildColor(color, intensity)
	C.SetData(xbadgecolor, sColor)
End Sub

'update the host color 
Sub UpdateHostColor(C As VueComponent, color As String, intensity As String)
	mColor = VElement.BuildColor(color, intensity)
	C.SetData(xiconcolor, mColor)
End Sub

'update the host color on pgIndex
Sub UpdateHostColorOnApp(C As VuetifyApp, color As String, intensity As String)
	mColor = VElement.BuildColor(color, intensity)
	C.SetData(xiconcolor, mColor)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'update visibility of the badge
Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(xHidden, b)
	C.SetData(mVIf, b)
End Sub

'update visibility on pgIndex
Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(xHidden, b)
	C.SetData(mVIf, b)
End Sub

'update the badge value
Sub UpdateValue(C As VueComponent, sv As String)
	C.SetData(svModel, sv)
End Sub

'update the value of the badge on pgIndex
Sub UpdateValueOnApp(C As VuetifyApp, sv As String)
	C.SetData(svModel, sv)
End Sub

'increment the badge value
Sub Increment(C As VueComponent)
	C.Increment(svModel)
End Sub

'incremenent badge value on pgindex
Sub IncrementOnApp(C As VuetifyApp)
	C.Increment(svModel, 1)
End Sub

'decrement the badge value
Sub Decrement(C As VueComponent)
	C.Decrement(svModel)
End Sub

'decrement the badge value on app
Sub DecrementOnApp(C As VuetifyApp)
	C.Decrement(svModel, 1)
End Sub

'get the element name of the badge
Sub getID As String
	Return mName
End Sub

'get the element id with #
Sub getHere As String
	Return $"#${mName}"$
End Sub

'bind the state of the badge
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

'bind the state of the badge on pgIndex
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


Sub AddClass(s As String)
	VElement.AddClass(s)
End Sub

Sub AddAttr(p As String, v As Object)
	VElement.SetAttr(p, v)
End Sub

Sub AddStyle(p As String, v As String)
	VElement.AddStyle(p, v)
End Sub
