B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Input (b As Boolean)
#Event: TransitionEnd(obj As Map)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: True, Description: App
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: Boolean, DefaultValue: false, Description: Bottom
#DesignerProperty: Key: Clipped, DisplayName: Clipped, FieldType: Boolean, DefaultValue: false, Description: Clipped
#DesignerProperty: Key: UsesAuthentication, DisplayName: UsesAuthentication, FieldType: Boolean, DefaultValue: false, Description: UsesAuthentication
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: DisableResizeWatcher, DisplayName: DisableResizeWatcher, FieldType: Boolean, DefaultValue: false, Description: DisableResizeWatcher
#DesignerProperty: Key: DisableRouteWatcher, DisplayName: DisableRouteWatcher, FieldType: Boolean, DefaultValue: false, Description: DisableRouteWatcher
#DesignerProperty: Key: ExpandOnHover, DisplayName: ExpandOnHover, FieldType: Boolean, DefaultValue: false, Description: ExpandOnHover
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: false, Description: Fixed
#DesignerProperty: Key: Floating, DisplayName: Floating, FieldType: Boolean, DefaultValue: false, Description: Floating
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideOverlay, DisplayName: HideOverlay, FieldType: Boolean, DefaultValue: false, Description: HideOverlay
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MiniVariant, DisplayName: MiniVariant, FieldType: Boolean, DefaultValue: false, Description: MiniVariant
#DesignerProperty: Key: MiniVariantWidth, DisplayName: MiniVariantWidth, FieldType: String, DefaultValue: , Description: MiniVariantWidth
#DesignerProperty: Key: MobileBreakpoint, DisplayName: MobileBreakpoint, FieldType: String, DefaultValue: , Description: MobileBreakpoint
#DesignerProperty: Key: OverlayColor, DisplayName: OverlayColor, FieldType: String, DefaultValue: , Description: OverlayColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: OverlayColorIntensity, DisplayName: OverlayColorIntensity, FieldType: String, DefaultValue: , Description: OverlayColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: OverlayOpacity, DisplayName: OverlayOpacity, FieldType: String, DefaultValue: , Description: OverlayOpacity
#DesignerProperty: Key: Permanent, DisplayName: Permanent, FieldType: Boolean, DefaultValue: false, Description: Permanent
#DesignerProperty: Key: PermanentOnMdUp, DisplayName: PermanentOnMdUp, FieldType: Boolean, DefaultValue: false, Description: Permanent On Medium and Up
#DesignerProperty: Key: Right, DisplayName: Right, FieldType: Boolean, DefaultValue: false, Description: Right
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: Stateles, DisplayName: Stateles, FieldType: Boolean, DefaultValue: false, Description: Stateles
#DesignerProperty: Key: Temporary, DisplayName: Temporary, FieldType: Boolean, DefaultValue: false, Description: Temporary
#DesignerProperty: Key: Touchless, DisplayName: Touchless, FieldType: Boolean, DefaultValue: false, Description: Touchless
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
	Private bAbsolute As Boolean
Private bApp As Boolean
Private bBottom As Boolean
Private bClipped As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDisableResizeWatcher As Boolean
Private bDisableRouteWatcher As Boolean
Private bExpandOnHover As Boolean
Private bFixed As Boolean
Private bFloating As Boolean
Private sHeight As String
Private bHideOverlay As Boolean
Private bLight As Boolean
Private bMiniVariant As Boolean
Private sMiniVariantWidth As String
Private sMobileBreakpoint As String
Private sOverlayColor As String
Private sOverlayColorIntensity As String
Private sOverlayOpacity As String
Private bPermanent As Boolean
Private bRight As Boolean
Private sSrc As String
Private bStateles As Boolean
Private bTemporary As Boolean
Private bTouchless As Boolean
Private sVIf As String
Private sVModel As String
Private sWidth As String
'Private sVShow As String
Private bHidden As Boolean
Private xMiniVariant As String
Private bUsesAuthentication As Boolean
Private sRounded As String
Private bPermanentOnMdUp As Boolean
	Private VC As VueComponent			'ignore
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
	xMiniVariant = $"${mName}mini"$
	sVModel = $"${mName}show"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAbsolute = Props.Get("Absolute")
		bApp = Props.Get("App")
		bBottom = Props.Get("Bottom")
		bClipped = Props.Get("Clipped")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bDisableResizeWatcher = Props.Get("DisableResizeWatcher")
		bDisableRouteWatcher = Props.Get("DisableRouteWatcher")
		bExpandOnHover = Props.Get("ExpandOnHover")
		bFixed = Props.Get("Fixed")
		bFloating = Props.Get("Floating")
		sHeight = Props.Get("Height")
		bHideOverlay = Props.Get("HideOverlay")
		bLight = Props.Get("Light")
		bMiniVariant = Props.Get("MiniVariant")
		sMiniVariantWidth = Props.Get("MiniVariantWidth")
		sMobileBreakpoint = Props.Get("MobileBreakpoint")
		sOverlayColor = Props.Get("OverlayColor")
		sOverlayColorIntensity = Props.Get("OverlayColorIntensity")
		sOverlayOpacity = Props.Get("OverlayOpacity")
		bPermanent = Props.Get("Permanent")
		bRight = Props.Get("Right")
		sSrc = Props.Get("Src")
		bStateles = Props.Get("Stateles")
		bTemporary = Props.Get("Temporary")
		bTouchless = Props.Get("Touchless")
		sVIf = Props.Get("VIf")
		sWidth = Props.Get("Width")
		bHidden = Props.GetDefault("Hidden", False)
		bUsesAuthentication = Props.GetDefault("UsesAuthentication", False)
		sRounded = Props.GetDefault("Rounded", "")
		bPermanentOnMdUp = Props.GetDefault("PermanentOnMdUp", False)
		bPermanentOnMdUp = BANanoShared.parseBool(bPermanentOnMdUp)
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-navigation-drawer ref="${mName}" id="${mName}"></v-navigation-drawer>"$).Get("#" & mName)
	End If
	'
	bAbsolute = BANanoShared.parseBool(bAbsolute)
bApp = BANanoShared.parseBool(bApp)
bBottom = BANanoShared.parseBool(bBottom)
bClipped = BANanoShared.parseBool(bClipped)
bDark = BANanoShared.parseBool(bDark)
bDisableResizeWatcher = BANanoShared.parseBool(bDisableResizeWatcher)
bDisableRouteWatcher = BANanoShared.parseBool(bDisableRouteWatcher)
bExpandOnHover = BANanoShared.parseBool(bExpandOnHover)
bFixed = BANanoShared.parseBool(bFixed)
bFloating = BANanoShared.parseBool(bFloating)
bHideOverlay = BANanoShared.parseBool(bHideOverlay)
bLight = BANanoShared.parseBool(bLight)
bMiniVariant = BANanoShared.parseBool(bMiniVariant)
bPermanent = BANanoShared.parseBool(bPermanent)
bRight = BANanoShared.parseBool(bRight)
bStateles = BANanoShared.parseBool(bStateles)
bTemporary = BANanoShared.parseBool(bTemporary)
bTouchless = BANanoShared.parseBool(bTouchless)
bHidden = BANanoShared.parseBool(bHidden)
bUsesAuthentication = BANanoShared.parseBool(bUsesAuthentication)

	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-navigation-drawer"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
	VElement.AddClass(sRounded)
	VElement.AddAttr(":app", bApp)
	VElement.AddAttr(":bottom", bBottom)
	VElement.AddAttr(":clipped", bClipped)
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":disable-resize-watcher", bDisableResizeWatcher)
	VElement.AddAttr(":disable-route-watcher", bDisableRouteWatcher)
	VElement.AddAttr(":expand-on-hover", bExpandOnHover)
	VElement.AddAttr(":fixed", bFixed)
	VElement.AddAttr(":floating", bFloating)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":hide-overlay", bHideOverlay)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":mini-variant.sync", xMiniVariant)
	VElement.SetData(xMiniVariant, bMiniVariant)
	VElement.AddAttr("mini-variant-width", sMiniVariantWidth)
	VElement.AddAttr("mobile-breakpoint", sMobileBreakpoint)
	VElement.OverlayColor = VElement.BuildColor(sOverlayColor, sOverlayColorIntensity)
	VElement.AddAttr("overlay-opacity", sOverlayOpacity)
	VElement.AddAttr(":permanent", bPermanent)
	VElement.AddAttr(":right", bRight)
	VElement.AddAttr("src", sSrc)
	VElement.AddAttr(":stateles", bStateles)
	VElement.AddAttr(":temporary", bTemporary)
	VElement.AddAttr(":touchless", bTouchless)
	
	If bPermanentOnMdUp Then
		VElement.Bind("permanent", "$vuetify.breakpoint.mdAndUp")
	End If
	If bUsesAuthentication Then
		sVIf = "authenticated"
	End If
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("width", sWidth)
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, Not(bHidden))
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

Sub AddClass(s As String) As VNavigationDrawer
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VNavigationDrawer
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VNavigationDrawer
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VNavigationDrawer
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VNavigationDrawer
	C.SetData(sVIf, b)
	'C.SetData(sVShow, b)
	C.SetData(sVModel, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VNavigationDrawer
	C.SetData(sVIf, b)
	'C.SetData(sVShow, b)
	C.SetData(sVModel, b)
	Return Me
End Sub

Sub Open(C As VueComponent)
	C.SetData(sVModel, True)
End Sub

Sub Close(C As VueComponent)
	C.SetData(sVModel, False)
End Sub

Sub OpenOnApp(V As VuetifyApp)
	V.SetData(sVModel, True)
End Sub

Sub CloseOnApp(V As VuetifyApp)
	V.SetData(sVModel, False)
End Sub

'toggle the drawer on app
Sub ToggleOnApp(v As VuetifyApp)
	v.Toggle(sVModel)
End Sub

'toggle the drawer visibility
Sub Toggle(C As VueComponent)
	C.Toggle(sVModel)
End Sub

Sub getVModel As String
	Return sVModel
End Sub

Sub getVShow As String
	Return sVModel
End Sub

Sub getID As String
	Return mName
End Sub

'check if the drawer is open
Sub IsOpen(C As VueComponent) As Boolean
	Dim res As Boolean = C.GetData(sVModel)
	Return res
End Sub

'check if the drawer is open
Sub IsOpenOnApp(V As VuetifyApp) As Boolean
	Dim res As Boolean = V.GetData(sVModel)
	Return res
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

Sub BindStateOnApp(C As VuetifyApp)
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