B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: Activator, DisplayName: Activator, FieldType: String, DefaultValue: , Description: Activator
#DesignerProperty: Key: AllowOverflow, DisplayName: AllowOverflow, FieldType: Boolean, DefaultValue: false, Description: AllowOverflow
#DesignerProperty: Key: Attach, DisplayName: Attach, FieldType: String, DefaultValue: , Description: Attach
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ContentClass, DisplayName: ContentClass, FieldType: String, DefaultValue: , Description: ContentClass
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: false, Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: false, Description: Eager
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: false, Description: Fixed
#DesignerProperty: Key: InternalActivator, DisplayName: InternalActivator, FieldType: Boolean, DefaultValue: false, Description: InternalActivator
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: NudgeBottom, DisplayName: NudgeBottom, FieldType: String, DefaultValue: , Description: NudgeBottom
#DesignerProperty: Key: NudgeLeft, DisplayName: NudgeLeft, FieldType: String, DefaultValue: , Description: NudgeLeft
#DesignerProperty: Key: NudgeRight, DisplayName: NudgeRight, FieldType: String, DefaultValue: , Description: NudgeRight
#DesignerProperty: Key: NudgeTop, DisplayName: NudgeTop, FieldType: String, DefaultValue: , Description: NudgeTop
#DesignerProperty: Key: OffsetOverflow, DisplayName: OffsetOverflow, FieldType: Boolean, DefaultValue: false, Description: OffsetOverflow
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: OpenOnClick, DisplayName: OpenOnClick, FieldType: Boolean, DefaultValue: false, Description: OpenOnClick
#DesignerProperty: Key: OpenOnFocus, DisplayName: OpenOnFocus, FieldType: Boolean, DefaultValue: false, Description: OpenOnFocus
#DesignerProperty: Key: OpenOnHover, DisplayName: OpenOnHover, FieldType: Boolean, DefaultValue: false, Description: OpenOnHover
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: bottom, Description: Position, List: bottom|left|right|top
#DesignerProperty: Key: PositionX, DisplayName: PositionX, FieldType: String, DefaultValue: , Description: PositionX
#DesignerProperty: Key: PositionY, DisplayName: PositionY, FieldType: String, DefaultValue: , Description: PositionY
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
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
Private sActivator As String
Private bAllowOverflow As Boolean
Private sAttach As String
Private sCloseDelay As String
Private sColor As String
Private sColorIntensity As String
Private sContentClass As String
Private bDisabled As Boolean
Private bEager As Boolean
Private bFixed As Boolean
Private bInternalActivator As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sNudgeBottom As String
Private sNudgeLeft As String
Private sNudgeRight As String
Private sNudgeTop As String
Private bOffsetOverflow As Boolean
Private sOpenDelay As String
Private bOpenOnClick As Boolean
Private bOpenOnFocus As Boolean
Private bOpenOnHover As Boolean
Private sPosition As String
Private sPositionX As String
Private sPositionY As String
Private sTextColor As String
Private sTextColorIntensity As String
Private sTransition As String
'Private sVModel As String
Private sZIndex As String
Private sCaption As String
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
	'sVModel = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAbsolute = Props.Get("Absolute")
sActivator = Props.Get("Activator")
bAllowOverflow = Props.Get("AllowOverflow")
sAttach = Props.Get("Attach")
sCloseDelay = Props.Get("CloseDelay")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sContentClass = Props.Get("ContentClass")
bDisabled = Props.GetDefault("Disabled",False)
bEager = Props.Get("Eager")
bFixed = Props.Get("Fixed")
bInternalActivator = Props.Get("InternalActivator")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sNudgeBottom = Props.Get("NudgeBottom")
sNudgeLeft = Props.Get("NudgeLeft")
sNudgeRight = Props.Get("NudgeRight")
sNudgeTop = Props.Get("NudgeTop")
bOffsetOverflow = Props.Get("OffsetOverflow")
sOpenDelay = Props.Get("OpenDelay")
bOpenOnClick = Props.Get("OpenOnClick")
bOpenOnFocus = Props.Get("OpenOnFocus")
bOpenOnHover = Props.Get("OpenOnHover")
sPosition = Props.Get("Position")
sPositionX = Props.Get("PositionX")
sPositionY = Props.Get("PositionY")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sTransition = Props.Get("Transition")
sZIndex = Props.Get("ZIndex")
sCaption = Props.Get("Caption")
	End If
	'
	bAbsolute = BANanoShared.parseBool(bAbsolute)
bAllowOverflow = BANanoShared.parseBool(bAllowOverflow)
bDisabled = BANanoShared.parseBool(bDisabled)
bEager = BANanoShared.parseBool(bEager)
bFixed = BANanoShared.parseBool(bFixed)
bInternalActivator = BANanoShared.parseBool(bInternalActivator)
bOffsetOverflow = BANanoShared.parseBool(bOffsetOverflow)
bOpenOnClick = BANanoShared.parseBool(bOpenOnClick)
bOpenOnFocus = BANanoShared.parseBool(bOpenOnFocus)
bOpenOnHover = BANanoShared.parseBool(bOpenOnHover)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-tooltip ref="${mName}" id="${mName}"></v-tooltip>"$).Get("#" & mName)
		mElement.Append($"<v-template id="${mName}template" v-slot:activator="{ on, attrs }"></v-template>"$)
		'add the span for the tooltip
		mElement.Append($"<span id="${mName}span">${sCaption}</span>"$)
	End If
		'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-tooltip"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
VElement.AddAttr("activator", sActivator)
VElement.AddAttr(":allow-overflow", bAllowOverflow)
VElement.AddAttr("attach", sAttach)
VElement.AddAttr("close-delay", sCloseDelay)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr("content-class", sContentClass)
VElement.AddAttr(":disabled", bDisabled)
VElement.AddAttr(":eager", bEager)
VElement.AddAttr(":fixed", bFixed)
VElement.AddAttr(":internal-activator", bInternalActivator)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr("nudge-bottom", sNudgeBottom)
VElement.AddAttr("nudge-left", sNudgeLeft)
VElement.AddAttr("nudge-right", sNudgeRight)
VElement.AddAttr("nudge-top", sNudgeTop)
VElement.AddAttr(":offset-overflow", bOffsetOverflow)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr(":open-on-click", bOpenOnClick)
VElement.AddAttr(":open-on-focus", bOpenOnFocus)
VElement.AddAttr(":open-on-hover", bOpenOnHover)
Select Case sPosition
Case "left"
VElement.AddAttr(":left", True)
Case "right"
VElement.AddAttr(":right", True)
Case "bottom"
VElement.AddAttr(":bottom", True)
Case "top"			
VElement.AddAttr(":top", True)
End Select
VElement.AddAttr("position-x", sPositionX)
VElement.AddAttr("position-y", sPositionY)
VElement.TextColor = sTextColor
VElement.TextColorIntensity = sTextColorIntensity
VElement.AddAttr("transition", sTransition)
'VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("z-index", sZIndex)
'VElement.SetData(sVModel, True)
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

Sub AddClass(s As String) As VToolTip
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VToolTip
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VToolTip
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VToolTip
	VElement.RemoveAttr(p)
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