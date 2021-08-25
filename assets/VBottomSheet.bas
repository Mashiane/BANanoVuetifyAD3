B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Activator, DisplayName: Activator, FieldType: String, DefaultValue: , Description: Activator
#DesignerProperty: Key: Attach, DisplayName: Attach, FieldType: Boolean, DefaultValue: false, Description: Attach
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: ContentClass, DisplayName: ContentClass, FieldType: String, DefaultValue: , Description: ContentClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: false, Description: Eager
#DesignerProperty: Key: Fullscreen, DisplayName: Fullscreen, FieldType: Boolean, DefaultValue: false, Description: Fullscreen
#DesignerProperty: Key: HideOverlay, DisplayName: HideOverlay, FieldType: Boolean, DefaultValue: false, Description: HideOverlay
#DesignerProperty: Key: Inset, DisplayName: Inset, FieldType: Boolean, DefaultValue: false, Description: Inset
#DesignerProperty: Key: InternalActivator, DisplayName: InternalActivator, FieldType: Boolean, DefaultValue: false, Description: InternalActivator
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: NoClickAnimation, DisplayName: NoClickAnimation, FieldType: Boolean, DefaultValue: false, Description: NoClickAnimation
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: OpenOnFocus, DisplayName: OpenOnFocus, FieldType: Boolean, DefaultValue: false, Description: OpenOnFocus
#DesignerProperty: Key: OpenOnHover, DisplayName: OpenOnHover, FieldType: Boolean, DefaultValue: false, Description: OpenOnHover
#DesignerProperty: Key: Origin, DisplayName: Origin, FieldType: String, DefaultValue: , Description: Origin
#DesignerProperty: Key: OverlayColor, DisplayName: OverlayColor, FieldType: String, DefaultValue: , Description: OverlayColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: OverlayColorIntensity, DisplayName: OverlayColorIntensity, FieldType: String, DefaultValue: , Description: OverlayColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: OverlayOpacity, DisplayName: OverlayOpacity, FieldType: String, DefaultValue: , Description: OverlayOpacity
#DesignerProperty: Key: Persistent, DisplayName: Persistent, FieldType: Boolean, DefaultValue: false, Description: Persistent
#DesignerProperty: Key: RetainFocus, DisplayName: RetainFocus, FieldType: Boolean, DefaultValue: false, Description: RetainFocus
#DesignerProperty: Key: ReturnValue, DisplayName: ReturnValue, FieldType: String, DefaultValue: , Description: ReturnValue
#DesignerProperty: Key: Scrollable, DisplayName: Scrollable, FieldType: Boolean, DefaultValue: false, Description: Scrollable
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private sActivator As String
Private bAttach As Boolean
Private sCloseDelay As String
Private sContentClass As String
Private bDark As Boolean
Private sDisabled As String
Private bEager As Boolean
Private bFullscreen As Boolean
Private bHideOverlay As Boolean
Private bInset As Boolean
Private bInternalActivator As Boolean
Private bLight As Boolean
Private sMaxWidth As String
Private bNoClickAnimation As Boolean
Private sOpenDelay As String
Private bOpenOnFocus As Boolean
Private bOpenOnHover As Boolean
Private sOrigin As String
Private sOverlayColor As String
Private sOverlayColorIntensity As String
Private sOverlayOpacity As String
Private bPersistent As Boolean
Private bRetainFocus As Boolean
Private sReturnValue As String
Private bScrollable As Boolean
Private sTransition As String
Private sVIf As String
Private sVShow As String
Private sWidth As String
Private bDisabled As Boolean
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
	sDisabled = $"${mName}disabled"$
	sVShow = $"${mName}show"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActivator = Props.Get("Activator")
bAttach = Props.Get("Attach")
sCloseDelay = Props.Get("CloseDelay")
sContentClass = Props.Get("ContentClass")
bDark = Props.Get("Dark")
bEager = Props.Get("Eager")
bFullscreen = Props.Get("Fullscreen")
bHideOverlay = Props.Get("HideOverlay")
bInset = Props.Get("Inset")
bInternalActivator = Props.Get("InternalActivator")
bLight = Props.Get("Light")
sMaxWidth = Props.Get("MaxWidth")
bNoClickAnimation = Props.Get("NoClickAnimation")
sOpenDelay = Props.Get("OpenDelay")
bOpenOnFocus = Props.Get("OpenOnFocus")
bOpenOnHover = Props.Get("OpenOnHover")
sOrigin = Props.Get("Origin")
sOverlayColor = Props.Get("OverlayColor")
sOverlayColorIntensity = Props.Get("OverlayColorIntensity")
sOverlayOpacity = Props.Get("OverlayOpacity")
bPersistent = Props.Get("Persistent")
bRetainFocus = Props.Get("RetainFocus")
sReturnValue = Props.Get("ReturnValue")
bScrollable = Props.Get("Scrollable")
sTransition = Props.Get("Transition")
sVIf = Props.Get("VIf")
sWidth = Props.Get("Width")
bDisabled = Props.GetDefault("Disabled",False)
	End If
	'
	bAttach = BANanoShared.parseBool(bAttach)
bDark = BANanoShared.parseBool(bDark)
bEager = BANanoShared.parseBool(bEager)
bFullscreen = BANanoShared.parseBool(bFullscreen)
bHideOverlay = BANanoShared.parseBool(bHideOverlay)
bInset = BANanoShared.parseBool(bInset)
bInternalActivator = BANanoShared.parseBool(bInternalActivator)
bLight = BANanoShared.parseBool(bLight)
bNoClickAnimation = BANanoShared.parseBool(bNoClickAnimation)
bOpenOnFocus = BANanoShared.parseBool(bOpenOnFocus)
bOpenOnHover = BANanoShared.parseBool(bOpenOnHover)
bPersistent = BANanoShared.parseBool(bPersistent)
bRetainFocus = BANanoShared.parseBool(bRetainFocus)
bScrollable = BANanoShared.parseBool(bScrollable)
bDisabled = BANanoShared.parseBool(bDisabled)
bDisabled = BANanoShared.parseBool(bDisabled)

	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-bottom-sheet ref="${mName}" id="${mName}"></v-bottom-sheet>"$).Get("#" & mName)
	End If	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-bottom-sheet"	
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("activator", sActivator)
VElement.AddAttr(":attach", bAttach)
VElement.AddAttr("close-delay", sCloseDelay)
VElement.AddAttr("content-class", sContentClass)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":eager", bEager)
VElement.AddAttr(":fullscreen", bFullscreen)
VElement.AddAttr(":hide-overlay", bHideOverlay)
VElement.AddAttr(":inset", bInset)
VElement.AddAttr(":internal-activator", bInternalActivator)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr(":no-click-animation", bNoClickAnimation)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr(":open-on-focus", bOpenOnFocus)
VElement.AddAttr(":open-on-hover", bOpenOnHover)
VElement.AddAttr("origin", sOrigin)
VElement.OverlayColor = VElement.BuildColor(sOverlayColor, sOverlayColorIntensity)
VElement.AddAttr("overlay-color-intensity", sOverlayColorIntensity)
VElement.AddAttr("overlay-opacity", sOverlayOpacity)
VElement.AddAttr(":persistent", bPersistent)
VElement.AddAttr(":retain-focus", bRetainFocus)
VElement.AddAttr("return-value", sReturnValue)
VElement.AddAttr(":scrollable", bScrollable)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr(":value", sVShow)
VElement.AddAttr("width", sWidth)
VElement.SetData(sVShow, False)
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

Sub AddClass(s As String) As VBottomSheet
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VBottomSheet
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VBottomSheet
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VBottomSheet
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VBottomSheet
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub


Sub UpdateDisabled(C As VueComponent, b As Boolean) As VBottomSheet
	bDisabled = b
	C.SetData(sDisabled, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VBottomSheet
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub


Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean) As VBottomSheet
	bDisabled = b
	C.SetData(sDisabled, b)
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