B4J=true
Group=Default Group\Layouts
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
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: NudgeBottom, DisplayName: NudgeBottom, FieldType: String, DefaultValue: , Description: NudgeBottom
#DesignerProperty: Key: NudgeLeft, DisplayName: NudgeLeft, FieldType: String, DefaultValue: , Description: NudgeLeft
#DesignerProperty: Key: NudgeRight, DisplayName: NudgeRight, FieldType: String, DefaultValue: , Description: NudgeRight
#DesignerProperty: Key: NudgeTop, DisplayName: NudgeTop, FieldType: String, DefaultValue: , Description: NudgeTop
#DesignerProperty: Key: OffsetOverflow, DisplayName: OffsetOverflow, FieldType: Boolean, DefaultValue: False, Description: OffsetOverflow
#DesignerProperty: Key: OffsetX, DisplayName: OffsetX, FieldType: Boolean, DefaultValue: False, Description: OffsetX
#DesignerProperty: Key: OffsetY, DisplayName: OffsetY, FieldType: Boolean, DefaultValue: False, Description: OffsetY
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: OpenOnClick, DisplayName: OpenOnClick, FieldType: Boolean, DefaultValue: False, Description: OpenOnClick
#DesignerProperty: Key: OpenOnFocus, DisplayName: OpenOnFocus, FieldType: Boolean, DefaultValue: False, Description: OpenOnFocus
#DesignerProperty: Key: OpenOnHover, DisplayName: OpenOnHover, FieldType: Boolean, DefaultValue: False, Description: OpenOnHover
#DesignerProperty: Key: Origin, DisplayName: Origin, FieldType: String, DefaultValue: , Description: Origin
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: , Description: Position, List: bottom|left|none|right|top
#DesignerProperty: Key: PositionX, DisplayName: PositionX, FieldType: String, DefaultValue: , Description: PositionX
#DesignerProperty: Key: PositionY, DisplayName: PositionY, FieldType: String, DefaultValue: , Description: PositionY
#DesignerProperty: Key: ReturnValueSync, DisplayName: ReturnValueSync, FieldType: String, DefaultValue: , Description: ReturnValueSync
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: String, DefaultValue: , Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: , Description: ZIndex
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
	sDisabled = $"${mName}disabled"$
	End Sub

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
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-menu id="${mName}"></v-menu>"$).Get("#" & mName) 
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
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("z-index", sZIndex)
'VElement.AddAttr("v-show", sVShow)
VElement.BindAllEvents
'	
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
Sub Image As VAvatar
	Dim skey As String = $"${mName}image"$
	Dim elx As VAvatar
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

public Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

public Sub Remove() 
	mTarget.Empty 
	BANano.SetMeToNull 
End Sub

public Sub Trigger(event As String, params() As String) 
	If mElement <> Null Then 
		mElement.Trigger(event, params) 
	End If 
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VMenu 
	VC.SetData(sVIf, b) 
	VC.SetData(sVModel, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update ReturnValueSync
Sub UpdateReturnValueSync(VC As VueComponent, vReturnValueSync As Object)
VC.SetData(sReturnValueSync, vReturnValueSync)
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


'set options from definition
Sub SetOptions(opt As VListOptions)
	Dim tmp As ListViewItemOptions = opt.Options
	Select Case opt.template
	Case "none"
	Case "list"
		MenuItems.AddListViewTemplate(tmp)
		Dim vlistitemx As VueElement = MenuItems.ListItem
		vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
		vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
		MenuItems.BindVueElement(vlistitemx)
	Case "list-item-group"
		MenuItems.AddListItemGroupTemplate(tmp)
		Dim vlistitemx As VueElement = MenuItems.ListItem
		vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
		vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
		MenuItems.BindVueElement(vlistitemx)
	Case "tree"
		MenuItems.AddListViewGroupTemplate(tmp)
		Dim vlistitemx As VueElement = MenuItems.ListItem
		vlistitemx.Initialize(mCallBack, vlistitemx.id, vlistitemx.id)
		vlistitemx.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item")
		MenuItems.BindVueElement(vlistitemx)
	End Select
	Dim items As VueElement = MenuItems.VElement
	VElement.BindVueElement(items)
	VElement.setdata(tmp.dataSource, VElement.NewList)
End Sub