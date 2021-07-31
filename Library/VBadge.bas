B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: BadgeType, DisplayName: Badge Type, FieldType: String, DefaultValue: icon, Description: BadgeType, List: icon|avatar
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Value, DisplayName: Badge Value, FieldType: String, DefaultValue: 10, Description: Value
#DesignerProperty: Key: Icon, DisplayName: Badge Icon, FieldType: String, DefaultValue: , Description: The badge shows this icon 

#DesignerProperty: Key: IconName, DisplayName: IconName, FieldType: String, DefaultValue: , Description: IconName
#DesignerProperty: Key: IconColor, DisplayName: IconColor, FieldType: String, DefaultValue: , Description: IconColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: IconColorIntensity, DisplayName: IconColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: IconSize, DisplayName: IconSize, FieldType: String, DefaultValue: , Description: IconSize, List: none|large|small|x-large|x-small

#DesignerProperty: Key: AvatarImg, DisplayName: AvatarImg, FieldType: String, DefaultValue: , Description: AvatarImg
#DesignerProperty: Key: AvatarIcon, DisplayName: AvatarIcon, FieldType: String, DefaultValue: , Description: AvatarIcon
#DesignerProperty: Key: AvatarSize, DisplayName: AvatarSize, FieldType: String, DefaultValue: 48, Description: AvatarSize
'
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
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private bAvatar As Boolean
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
	Private bUseIcon As Boolean
	Private sIconName As String
	Private sIconColor As String
	Private sIconSize As String
	Private sIconColorIntensity As String
	Private sIconSize As String
	Private xiconcolor As String
	Private xbadgecolor As String
	Private sBadgeType As String
	Private VC As VueComponent
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
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
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		sIconName = Props.GetDefault("IconName", "")
		sIconColor = Props.GetDefault("IconColor", "")
		sIconSize = Props.GetDefault("IconSize", "")
		sIconColorIntensity = Props.GetDefault("IconColorIntensity", "")
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
		sBadgeType = Props.GetDefault("BadgeType", "icon")
	End If
	'
	Select Case sBadgeType
	Case "icon"
		bUseIcon = True
		bAvatar = False
	Case "avatar"
		bUseIcon  = False
		bAvatar = True
	End Select
	
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
	'add the badge slot
	VElement.Append($"<v-template id="${mName}tmp" v-slot:badge></v-template>"$)
	'
	Dim tmp As VueElement = VElement.GetVueElement($"#${mName}tmp"$)
	'add the badge icon
	If sIcon <> "" Then
		tmp.Append($"<v-icon id="${mName}icon">${sIcon}</v-icon>"$)
		VElement.GetIcon.Dark = True
		VElement.GetIcon.Small = True
	Else
		'add the badge value
		If sValue <> "" Then
			tmp.Append($"<span id="${mName}span">{{ ${svModel} }}</span>"$)
		End If
	End If
		
	VElement.SetData(svModel, sValue)
	'
	'we are using an icon
	If bUseIcon Then
		If sIconName = "" Then
			BANano.Throw($"VBadge.${mName} icon has not been specified!"$)
		End If
		VElement.Append($"<v-icon id="${mName}icon1">${sIconName}</v-icon>"$)
		VElement.GetIcon1.Bind("color", xiconcolor)
		sIconColor = VElement.BuildColor(sIconColor, sIconColorIntensity)
		VElement.SetData(xiconcolor, sIconColor)
		Select Case sIconSize
		Case "none"	
		Case "large"
			VElement.GetIcon1.AddAttr(":large", True)
		Case "small"
			VElement.GetIcon1.AddAttr(":small", True)
		Case "x-large"
			VElement.GetIcon1.AddAttr(":x-large", True)
		Case "x-small"
			VElement.GetIcon1.AddAttr(":x-small", True)
		End Select
	End If
	
	If BANano.IsNull(sAvatarImg) Or BANano.IsUndefined(sAvatarImg) Then
		sAvatarImg = ""
	End If
	
'	If sAvatarImg <> "" Then
'		'add slot
'		VElement.Append($"<v-avatar id="${mName}avatar"><img id="${mName}image" alt=""></img></v-avatar>"$)
'		VElement.GetAvatar.Size = sAvatarSize
'		VElement.GetImage.Src = sAvatarImg
'	End If
'	If sAvatarIcon <> "" Then
'		'add slot
'		VElement.Append($"<v-avatar id="${mName}avatar"><v-icon id="${mName}icon"></v-icon></v-avatar>"$)
'		VElement.GetAvatar.Size = sAvatarSize
'		VElement.GetImage.Src = sAvatarImg
'	End If
	
	
	VElement.TagName = "v-badge"
	VElement.setAvatar(bAvatar)
	VElement.Bordered = bBordered
	VElement.Bind("color", xbadgecolor)
	sColor = VElement.BuildColor(sColor, sColorintensity)
	VElement.SetData(xbadgecolor, sColor)
	VElement.Dark = bDark
	VElement.Dot = bDot
	VElement.SetAttr("icon", sIcon)
	VElement.SetAttr(":inline", bInline)
	VElement.Mode = sMode
	VElement.OffsetX = sOffsetX
	VElement.OffsetY = sOffsetY
	VElement.Overlap = bOverlap
	VElement.Tile = bTile
	VElement.Transition = sTransition
	'VElement.Bind("content", svModel)
	'VElement.SetData(svModel, sValue)
	VElement.VIf = mVIf
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.Left = bLeft
	VElement.Bottom = bBottom
	'hidden / visible
	VElement.VShow = xHidden
	VElement.SetData(xHidden, Not(bHidden))
	VElement.BindAllEvents
End Sub	

Sub UpdateIconColor(C As VueComponent, color As String, intensity As String)
	sIconColor = VElement.BuildColor(color, intensity)
	C.SetData(xiconcolor, sIconColor)
End Sub

Sub UpdateIconColorOnApp(C As VuetifyApp, color As String, intensity As String)
	sIconColor = VElement.BuildColor(color, intensity)
	C.SetData(xiconcolor, sIconColor)
End Sub

Sub UpdateColor(C As VueComponent, color As String, intensity As String)
	sIconColor = VElement.BuildColor(color, intensity)
	C.SetData(xbadgecolor, sIconColor)
End Sub

Sub UpdateColorOnApp(C As VuetifyApp, color As String, intensity As String)
	sIconColor = VElement.BuildColor(color, intensity)
	C.SetData(xbadgecolor, sIconColor)
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(xHidden, b)
	C.SetData(mVIf, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(xHidden, b)
	C.SetData(mVIf, b)
End Sub

Sub UpdateValue(C As VueComponent, sv As String)
	C.SetData(svModel, sv)
End Sub

Sub UpdateValueOnApp(C As VuetifyApp, sv As String)
	C.SetData(svModel, sv)
End Sub

Sub Increment(C As VueComponent)
	C.Increment(svModel)
End Sub

Sub IncrementOnApp(C As VuetifyApp)
	C.Increment(svModel, 1)
End Sub

Sub Decrement(C As VueComponent)
	C.Decrement(svModel)
End Sub

Sub DecrementOnApp(C As VuetifyApp)
	C.Decrement(svModel, 1)
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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub
