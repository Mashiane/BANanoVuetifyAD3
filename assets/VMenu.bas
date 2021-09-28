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
#Event: Input (B As Boolean)
#Event: Click (item As Map)
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
#DesignerProperty: Key: ActivateUsing, DisplayName: ActivateUsing, FieldType: String, DefaultValue: button, Description: ActivateUsing, List: avatar-text|avatar-image|button|icon|none
#DesignerProperty: Key: ActivatorColor, DisplayName: ActivatorColor, FieldType: String, DefaultValue: primary, Description: ActivatorColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ActivatorColorIntensity, DisplayName: ActivatorColorIntensity, FieldType: String, DefaultValue: normal, Description: ActivatorColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: white, Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: normal, Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: AvatarImage, DisplayName: AvatarImage, FieldType: String, DefaultValue: ./assets/bvad31.png, Description: AvatarImage
#DesignerProperty: Key: AvatarSize, DisplayName: AvatarSize, FieldType: String, DefaultValue: 48, Description: AvatarSize
#DesignerProperty: Key: AvatarText, DisplayName: AvatarText, FieldType: String, DefaultValue: , Description: AvatarText
#DesignerProperty: Key: ButtonDark, DisplayName: ButtonDark, FieldType: Boolean, DefaultValue: True, Description: ButtonDark
#DesignerProperty: Key: ButtonRaised, DisplayName: ButtonRaised, FieldType: Boolean, DefaultValue: True, Description: ButtonRaised
#DesignerProperty: Key: ButtonText, DisplayName: ButtonText, FieldType: String, DefaultValue: Menu, Description: ButtonText
#DesignerProperty: Key: IconName, DisplayName: IconName, FieldType: String, DefaultValue: mdi-dots-vertical, Description: IconName
'
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Activator, DisplayName: Activator, FieldType: Boolean, DefaultValue: False, Description: Activator
#DesignerProperty: Key: AllowOverflow, DisplayName: AllowOverflow, FieldType: Boolean, DefaultValue: False, Description: AllowOverflow
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: True, Description: Dense
#DesignerProperty: Key: Attach, DisplayName: Attach, FieldType: String, DefaultValue: , Description: Attach
#DesignerProperty: Key: Auto, DisplayName: Auto, FieldType: Boolean, DefaultValue: False, Description: Auto
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: CloseOnClick, DisplayName: CloseOnClick, FieldType: String, DefaultValue: , Description: CloseOnClick
#DesignerProperty: Key: CloseOnContentClick, DisplayName: CloseOnContentClick, FieldType: String, DefaultValue: , Description: CloseOnContentClick
#DesignerProperty: Key: ContentClass, DisplayName: ContentClass, FieldType: String, DefaultValue: , Description: ContentClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: DisableKeys, DisplayName: DisableKeys, FieldType: Boolean, DefaultValue: False, Description: DisableKeys
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: False, Description: Eager
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: False, Description: Fixed
#DesignerProperty: Key: InternalActivator, DisplayName: InternalActivator, FieldType: Boolean, DefaultValue: False, Description: InternalActivator
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: 290px, Description: MinWidth
#DesignerProperty: Key: NudgeBottom, DisplayName: NudgeBottom, FieldType: String, DefaultValue: , Description: NudgeBottom
#DesignerProperty: Key: NudgeLeft, DisplayName: NudgeLeft, FieldType: String, DefaultValue: , Description: NudgeLeft
#DesignerProperty: Key: NudgeRight, DisplayName: NudgeRight, FieldType: String, DefaultValue: , Description: NudgeRight
#DesignerProperty: Key: NudgeTop, DisplayName: NudgeTop, FieldType: String, DefaultValue: , Description: NudgeTop
#DesignerProperty: Key: OffsetOverflow, DisplayName: OffsetOverflow, FieldType: Boolean, DefaultValue: False, Description: OffsetOverflow
#DesignerProperty: Key: OffsetX, DisplayName: OffsetX, FieldType: Boolean, DefaultValue: False, Description: OffsetX
#DesignerProperty: Key: OffsetY, DisplayName: OffsetY, FieldType: Boolean, DefaultValue: True, Description: OffsetY
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: FullWidth, DisplayName: Full Width, FieldType: Boolean, DefaultValue: False, Description: Full Width
#DesignerProperty: Key: OpenOnClick, DisplayName: OpenOnClick, FieldType: Boolean, DefaultValue: False, Description: OpenOnClick
#DesignerProperty: Key: OpenOnFocus, DisplayName: OpenOnFocus, FieldType: Boolean, DefaultValue: False, Description: OpenOnFocus
#DesignerProperty: Key: OpenOnHover, DisplayName: OpenOnHover, FieldType: Boolean, DefaultValue: False, Description: OpenOnHover
#DesignerProperty: Key: Origin, DisplayName: Origin, FieldType: String, DefaultValue: , Description: Origin
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: bottom, Description: Position, List: bottom|left|none|right|top
#DesignerProperty: Key: PositionX, DisplayName: PositionX, FieldType: String, DefaultValue: , Description: PositionX
#DesignerProperty: Key: PositionY, DisplayName: PositionY, FieldType: String, DefaultValue: , Description: PositionY
#DesignerProperty: Key: ReturnValueSync, DisplayName: ReturnValueSync, FieldType: String, DefaultValue: , Description: ReturnValueSync
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: String, DefaultValue: , Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: fade-transition, Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (Key)(;), FieldType: String, DefaultValue:  , Description: Item Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  , Description: Item Icons
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  , Description: Item Colors
#DesignerProperty: Key: ItemTexts, DisplayName: Item Texts (Value)(;), FieldType: String, DefaultValue:  , Description: Item Texts
#DesignerProperty: Key: ItemTo, DisplayName: Item To (;), FieldType: String, DefaultValue:  , Description: Item To
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: , Description: ZIndex
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
'Definition of variables used in this VMenu component.
'Definition of variables used in this VMenu component.
Sub Class_Globals
Private sItemKeys As String
Private sItemIcons As String
Private sItemColors As String
Private sItemTexts As String
Private sItemTo As String
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
Private bAbsolute As Boolean
Private bActivator As Boolean
Private bAllowOverflow As Boolean
Private sAttach As String
Private bAuto As Boolean
Private sCloseDelay As String
Private sCloseOnClick As String
Private sCloseOnContentClick As String
Private sContentClass As String
Private bDark As Boolean
Private bDisableKeys As Boolean
Private sDisabled As String
Private bEager As Boolean
Private bFixed As Boolean
Private bInternalActivator As Boolean
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sNudgeBottom As String
Private sNudgeLeft As String
Private sNudgeRight As String
Private sNudgeTop As String
Private bOffsetOverflow As Boolean
Private bOffsetX As Boolean
Private bOffsetY As Boolean
Private sOpenDelay As String
Private bOpenOnClick As Boolean
Private bOpenOnFocus As Boolean
Private bOpenOnHover As Boolean
Private sOrigin As String
Private sPosition As String
Private sPositionX As String
Private sPositionY As String
Private sReturnValueSync As String
Private bRounded As Boolean
Private sTile As String
Private sTransition As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sZIndex As String
Private sActivateUsing As String
Private sActivatorColor As String
Private sActivatorColorIntensity As String
Private sAvatarImage As String
Private sAvatarSize As String
Private sAvatarText As String
Private bButtonDark As Boolean
Private bButtonRaised As Boolean
Private sButtonText As String
Private sIconName As String
Private sTextColor As String
Private sTextColorIntensity As String
Public MenuItems As VList
Private bDisabled As Boolean
Private bDense As Boolean
Private VC As VueComponent
Private bFullWidth As Boolean
Private bHidden As Boolean
Private sVShow As String
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bHover As Boolean
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private sElevation As String
Private sHeight As String
Private sWidth As String
Private sRounded As String
Private bTile As Boolean
Private bShrink As Boolean
Private bGrow As Boolean
Private bFlat As Boolean
End Sub
'Initializes the VMenu component.
'Initializes the VMenu component.
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
sDisabled = $"${mName}disabled"$
sVShow = $"${mName}show"$
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VMenu
'This builds the HTML tree based on defined properties for VMenu
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
mClasses = Props.Get("Classes")
mStyles = Props.Get("Styles")
mAttributes = Props.Get("Attributes")
bAbsolute = Props.Get("Absolute")
bActivator = Props.Get("Activator")
bAllowOverflow = Props.Get("AllowOverflow")
sAttach = Props.Get("Attach")
bAuto = Props.Get("Auto")
sCloseDelay = Props.Get("CloseDelay")
sCloseOnClick = Props.Get("CloseOnClick")
sCloseOnContentClick = Props.Get("CloseOnContentClick")
sContentClass = Props.Get("ContentClass")
bDark = Props.Get("Dark")
bDisableKeys = Props.Get("DisableKeys")
bDisabled = Props.GetDefault("Disabled", False)
bEager = Props.Get("Eager")
bFixed = Props.Get("Fixed")
bInternalActivator = Props.Get("InternalActivator")
bLight = Props.Get("Light")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sNudgeBottom = Props.Get("NudgeBottom")
sNudgeLeft = Props.Get("NudgeLeft")
sNudgeRight = Props.Get("NudgeRight")
sNudgeTop = Props.Get("NudgeTop")
bOffsetOverflow = Props.Get("OffsetOverflow")
bOffsetX = Props.Get("OffsetX")
bOffsetY = Props.Get("OffsetY")
sOpenDelay = Props.Get("OpenDelay")
bOpenOnClick = Props.Get("OpenOnClick")
bOpenOnFocus = Props.Get("OpenOnFocus")
bOpenOnHover = Props.Get("OpenOnHover")
sOrigin = Props.Get("Origin")
sPosition = Props.Get("Position")
sPositionX = Props.Get("PositionX")
sPositionY = Props.Get("PositionY")
sReturnValueSync = Props.Get("ReturnValueSync")
bRounded = Props.Get("Rounded")
sTile = Props.Get("Tile")
sTransition = Props.Get("Transition")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
sZIndex = Props.Get("ZIndex")
sActivateUsing = Props.Get("ActivateUsing")
sActivatorColor = Props.Get("ActivatorColor")
sActivatorColorIntensity = Props.Get("ActivatorColorIntensity")
sAvatarImage = Props.Get("AvatarImage")
sAvatarSize = Props.Get("AvatarSize")
sAvatarText = Props.Get("AvatarText")
bButtonDark = Props.Get("ButtonDark")
bButtonRaised = Props.Get("ButtonRaised")
sButtonText = Props.Get("ButtonText")
sIconName = Props.Get("IconName")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
bDense = Props.GetDefault("Dense", True)
sItemKeys = Props.GetDefault("ItemKeys", "")
sItemIcons = Props.GetDefault("ItemIcons", "")
sItemColors = Props.GetDefault("ItemColors", "")
sItemTexts = Props.GetDefault("ItemTexts", "")
sItemTo = Props.GetDefault("ItemTo", "")
bFullWidth = Props.getdefault("FullWidth", False)
bFullWidth = BANanoShared.parseBool(bFullWidth)
bHidden = Props.GetDefault("Hidden", False)
bHidden = BANanoShared.parseBool(bHidden)
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = Props.GetDefault("Disabled",False)
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
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
End If
'
bAbsolute = BANanoShared.parseBool(bAbsolute)
bActivator = BANanoShared.parseBool(bActivator)
bAllowOverflow = BANanoShared.parseBool(bAllowOverflow)
bAuto = BANanoShared.parseBool(bAuto)
bDark = BANanoShared.parseBool(bDark)
bDisableKeys = BANanoShared.parseBool(bDisableKeys)
bDisabled = BANanoShared.parseBool(bDisabled)
bEager = BANanoShared.parseBool(bEager)
bFixed = BANanoShared.parseBool(bFixed)
bInternalActivator = BANanoShared.parseBool(bInternalActivator)
bLight = BANanoShared.parseBool(bLight)
bOffsetOverflow = BANanoShared.parseBool(bOffsetOverflow)
bOffsetX = BANanoShared.parseBool(bOffsetX)
bOffsetY = BANanoShared.parseBool(bOffsetY)
bOpenOnClick = BANanoShared.parseBool(bOpenOnClick)
bOpenOnFocus = BANanoShared.parseBool(bOpenOnFocus)
bOpenOnHover = BANanoShared.parseBool(bOpenOnHover)
bRounded = BANanoShared.parseBool(bRounded)
bButtonDark = BANanoShared.parseBool(bButtonDark)
bButtonRaised = BANanoShared.parseBool(bButtonRaised)
bDense = BANanoShared.parseBool(bDense)
'
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
mElement = mTarget.Append($"<v-menu ref="${mName}" id="${mName}"></v-menu>"$).Get("#" & mName)
End If
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "v-menu"
'add the activator
VElement.Append($"<v-template id="${mName}template" v-slot:activator="{ on, attrs }"></v-template>"$)
VElement.Append($"<v-list id="${mName}list"></v-list>"$)
'
Select Case sActivateUsing
Case "avatar-text"
VElement.GetTemplate.Append($"<v-avatar id="${mName}avatar" dark v-bind="attrs" v-on="on"><span id="${mName}span" text-h5></span></v-avatar>"$)
VElement.GetAvatar.Size = sAvatarSize
VElement.GetSpan.Caption = sAvatarText
VElement.GetAvatar.Color = VElement.BuildColor(sActivatorColor, sActivatorColorIntensity)
VElement.GetAvatar.TextColor = sTextColor
VElement.GetAvatar.TextColorIntensity = sTextColorIntensity
Case "avatar-image"
VElement.GetTemplate.Append($"<v-avatar id="${mName}avatar" dark v-bind="attrs" v-on="on"></v-avatar>"$)
VElement.GetAvatar.Append($"<img id="${mName}image" alt=""></img>"$)
Dim img As VueElement = VElement.GetImage
img.Src = sAvatarImage
VElement.GetAvatar.Size = sAvatarSize
VElement.GetAvatar.Color = VElement.BuildColor(sActivatorColor, sActivatorColorIntensity)
Case "button"
VElement.GetTemplate.Append($"<v-btn id="${mName}button" v-bind="attrs" v-on="on"></v-btn>"$)
Dim btn As VueElement = VElement.GetButton
btn.Dark = bButtonDark
btn.Raised = bButtonRaised
btn.Caption = sButtonText
btn.Color = VElement.BuildColor(sActivatorColor, sActivatorColorIntensity)
btn.TextColor = sTextColor
btn.TextColorIntensity = sTextColorIntensity
VElement.BindVueElement(btn)
Case "icon"
VElement.GetTemplate.Append($"<v-btn id="${mName}button" v-bind="attrs" v-on="on"></v-btn>"$)
Dim btn As VueElement = VElement.GetButton
btn.Dark = bButtonDark
btn.Raised = bButtonRaised
btn.Caption = sButtonText
btn.ButtonIcon = True
btn.Color = VElement.BuildColor(sActivatorColor, sActivatorColorIntensity)
btn.TextColor = sTextColor
btn.TextColorIntensity = sTextColorIntensity
'
btn.Append($"<v-icon id="${mName}icon"></v-icon>"$)
Dim iconx As VueElement = VElement.GetIcon
iconx.Caption = sIconName
VElement.BindVueElement(iconx)
End Select
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Attributes = mAttributes
VElement.AddAttr(":absolute", bAbsolute)
VElement.AddAttr(":activator", bActivator)
VElement.AddAttr(":allow-overflow", bAllowOverflow)
VElement.AddAttr("attach", sAttach)
VElement.AddAttr(":auto", bAuto)
VElement.AddAttr("close-delay", sCloseDelay)
VElement.AddAttr("close-on-click", sCloseOnClick)
VElement.AddAttr("close-on-content-click", sCloseOnContentClick)
VElement.AddAttr("content-class", sContentClass)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disable-keys", bDisableKeys)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.Addattr(":full-width", bFullWidth)
VElement.AddAttr(":eager", bEager)
VElement.AddAttr(":fixed", bFixed)
VElement.AddAttr(":internal-activator", bInternalActivator)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr("nudge-bottom", sNudgeBottom)
VElement.AddAttr("nudge-left", sNudgeLeft)
VElement.AddAttr("nudge-right", sNudgeRight)
VElement.AddAttr("nudge-top", sNudgeTop)
VElement.AddAttr(":offset-overflow", bOffsetOverflow)
VElement.AddAttr(":offset-x", bOffsetX)
VElement.AddAttr(":offset-y", bOffsetY)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr(":open-on-click", bOpenOnClick)
VElement.AddAttr(":open-on-focus", bOpenOnFocus)
VElement.AddAttr(":open-on-hover", bOpenOnHover)
VElement.AddAttr("origin", sOrigin)
Select Case sPosition
Case "bottom"
VElement.AddAttr(":bottom", True)
Case "left"
VElement.AddAttr(":left", True)
Case "right"
VElement.AddAttr(":right", True)
Case "top"
VElement.AddAttr(":top", True)
End Select
VElement.AddAttr("position-x", sPositionX)
VElement.AddAttr("position-y", sPositionY)
VElement.AddAttr("return-value.sync", sReturnValueSync)
VElement.AddAttr(":rounded", bRounded)
VElement.AddAttr("tile", sTile)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, Null)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("z-index", sZIndex)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
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
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":dense", bDense)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End if
VElement.BindAllEvents
'get the list inside the menu
Dim skey As String = $"${mName}list"$
MenuItems.Initialize(mCallBack, skey, skey)
End Sub
'get the icon
Sub Icon As VIcon
Dim skey As String = $"${mName}icon"$
Dim elx As VIcon
elx.Initialize(mCallBack, skey, skey)
Return elx
End Sub
'get the avatar text
Sub Text As VueElement
Dim skey As String = $"${mName}span"$
Dim elx As VueElement
elx.Initialize(mCallBack, skey, skey)
Return elx
End Sub
'get the image
Sub Image As VImg
Dim skey As String = $"${mName}image"$
Dim elx As VImg
elx.Initialize(mCallBack, skey, skey)
Return elx
End Sub
'get the avatar
Sub Avatar As VAvatar
Dim skey As String = $"${mName}avatar"$
Dim elx As VAvatar
elx.Initialize(mCallBack, skey, skey)
Return elx
End Sub
'get the button
Sub Button As VBtn
Dim skey As String = $"${mName}button"$
Dim elx As VBtn
elx.Initialize(mCallBack, skey, skey)
Return elx
End Sub
'get the template
Sub Template As VTemplate
Dim skey As String = $"${mName}template"$
Dim elx As VTemplate
elx.Initialize(mCallBack, skey, skey)
Return elx
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
Sub AddClass(s As String) As VMenu
VElement.AddClass(s)
Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VMenu
VElement.SetAttr(p, v)
Return Me
End Sub
Sub AddStyle(p As String, v As String) As VMenu
VElement.AddStyle(p, v)
Return Me
End Sub
Sub RemoveAttr(p As String) As VMenu
VElement.RemoveAttr(p)
Return Me
End Sub
'Hide the component at runtime, needs BindState
'Hide the component at runtime, needs BindState
Sub Hide
VC.SetData(sVIf, False)
VC.SetData(sVModel, False)
End Sub
'Show the component at runtime, needs BindState
'Show the component at runtime, needs BindState
Sub Show
VC.SetData(sVIf, True)
VC.SetData(sVModel, True)
End Sub
Sub UpdateVisible(C As VueComponent, b As Boolean) As VMenu
C.SetData(sVIf, b)
C.SetData(sVModel, b)
Return Me
End Sub
Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VMenu
C.SetData(sVIf, b)
C.SetData(sVModel, b)
Return Me
End Sub
'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub
'Update Disabled
Sub UpdateDisabledOnApp(C As VuetifyApp, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
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
'set options from definition
Sub SetOptions(opt As VListOptions)
Dim skey As String = $"${mName}list"$
MenuItems.Initialize(mCallBack, skey, skey)
MenuItems.AddAttr(":dense", bDense)
Select Case opt.template
Case "none"
Case "list"
MenuItems.SetOptions(opt)
Dim vlistitemx As VueElement = MenuItems.ListItem
vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
MenuItems.BindVueElement(vlistitemx)
Case "list-item-group"
MenuItems.SetOptions(opt)
Dim vlistitemx As VueElement = MenuItems.ListItem
vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
MenuItems.BindVueElement(vlistitemx)
Case "tree"
MenuItems.SetOptions(opt)
Dim vlistitemx As VueElement = MenuItems.ListItem
vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
MenuItems.BindVueElement(vlistitemx)
End Select
Dim items As VueElement = MenuItems.VElement
VElement.BindVueElement(items)
VElement.setdata(opt.dataSource, VElement.NewList)
End Sub
Sub BindState(C As VueComponent)
VC = c
MenuItems.BindState(C)
'if we have pre-fefined buttons, we add thense
'add items to the menu
Dim lstsItemKeys As List = BANanoShared.StrParseComma(";", sItemKeys)
Dim lstsItemIcons As List = BANanoShared.StrParseComma(";", sItemIcons)
Dim lstsItemColors As List = BANanoShared.StrParseComma(";", sItemColors)
Dim lstsItemTexts As List = BANanoShared.StrParseComma(";", sItemTexts)
Dim lstsItemTo As List = BANanoShared.StrParseComma(";", sItemTo)
'
lstsItemKeys = BANanoShared.ListTrimItems(lstsItemKeys)
lstsItemIcons = BANanoShared.ListTrimItems(lstsItemIcons)
lstsItemColors = BANanoShared.ListTrimItems(lstsItemColors)
lstsItemTexts = BANanoShared.ListTrimItems(lstsItemTexts)
lstsItemTo = BANanoShared.ListTrimItems(lstsItemTo)
Dim tItems As Int = lstsItemKeys.Size - 1
Dim cItems As Int
If tItems >= 0 Then
MenuItems.Clear(C)
For cItems = 0 To tItems
Dim iKey As String = BANanoShared.GetListItem(lstsItemKeys, cItems)
Dim iIcon As String = BANanoShared.getlistitem(lstsItemIcons, cItems)
Dim icolor As String = BANanoShared.GetListItem(lstsItemColors, cItems)
Dim itxt As String = BANanoShared.GetListItem(lstsItemTexts, cItems)
Dim ito As String = BANanoShared.GetListItem(lstsItemTo, cItems)
'
MenuItems.AddItem("", iKey, iIcon, icolor, itxt, ito)
Next
End If
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
Sub BindStateOnApp(C As VuetifyApp)
MenuItems.BindStateOnApp(C)
'if we have pre-fefined buttons, we add thense
'add items to the menu
Dim lstsItemKeys As List = BANanoShared.StrParseComma(";", sItemKeys)
Dim lstsItemIcons As List = BANanoShared.StrParseComma(";", sItemIcons)
Dim lstsItemColors As List = BANanoShared.StrParseComma(";", sItemColors)
Dim lstsItemTexts As List = BANanoShared.StrParseComma(";", sItemTexts)
Dim lstsItemTo As List = BANanoShared.StrParseComma(";", sItemTo)
'
lstsItemKeys = BANanoShared.ListTrimItems(lstsItemKeys)
lstsItemIcons = BANanoShared.ListTrimItems(lstsItemIcons)
lstsItemColors = BANanoShared.ListTrimItems(lstsItemColors)
lstsItemTexts = BANanoShared.ListTrimItems(lstsItemTexts)
lstsItemTo = BANanoShared.ListTrimItems(lstsItemTo)
Dim tItems As Int = lstsItemKeys.Size - 1
Dim cItems As Int
If tItems >= 0 Then
MenuItems.ClearOnAPp(C)
For cItems = 0 To tItems
Dim iKey As String = BANanoShared.GetListItem(lstsItemKeys, cItems)
Dim iIcon As String = BANanoShared.getlistitem(lstsItemIcons, cItems)
Dim icolor As String = BANanoShared.GetListItem(lstsItemColors, cItems)
Dim itxt As String = BANanoShared.GetListItem(lstsItemTexts, cItems)
Dim ito As String = BANanoShared.GetListItem(lstsItemTo, cItems)
'
MenuItems.AddItem("", iKey, iIcon, icolor, itxt, ito)
Next
End If
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