B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Input (b As Boolean)
#Event: TransitionEnd(obj As Map)

#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: false, Description: App
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: Boolean, DefaultValue: false, Description: Bottom
#DesignerProperty: Key: Clipped, DisplayName: Clipped, FieldType: Boolean, DefaultValue: false, Description: Clipped
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
#DesignerProperty: Key: Right, DisplayName: Right, FieldType: Boolean, DefaultValue: false, Description: Right
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: Stateles, DisplayName: Stateles, FieldType: Boolean, DefaultValue: false, Description: Stateles
#DesignerProperty: Key: Temporary, DisplayName: Temporary, FieldType: Boolean, DefaultValue: false, Description: Temporary
#DesignerProperty: Key: Touchless, DisplayName: Touchless, FieldType: Boolean, DefaultValue: false, Description: Touchless
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: drawer1, Description: VModel
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
sVModel = Props.Get("VModel")
sWidth = Props.Get("Width")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-navigation-drawer id="${mName}"></v-navigation-drawer>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-navigation-drawer"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
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
VElement.AddAttr(":mini-variant.sync", bMiniVariant)
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
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("width", sWidth)
VElement.SetData(sVModel, False)
VElement.BindAllEvents
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

Sub Visible(VC As VueComponent, b As Boolean) As VNavigationDrawer
	VC.SetData(sVIf, b)
	VC.SetData(sVModel, b)
	Return Me
End Sub
