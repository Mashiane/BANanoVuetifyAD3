B4J=true
Group=Default Group\Tabs
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Change (num As Integer)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: AlignWithTitle, DisplayName: AlignWithTitle, FieldType: Boolean, DefaultValue: false, Description: AlignWithTitle
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CenterActive, DisplayName: CenterActive, FieldType: Boolean, DefaultValue: false, Description: CenterActive
#DesignerProperty: Key: Centered, DisplayName: Centered, FieldType: Boolean, DefaultValue: false, Description: Centered
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: FixedTabs, DisplayName: FixedTabs, FieldType: Boolean, DefaultValue: false, Description: FixedTabs
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideSlider, DisplayName: HideSlider, FieldType: Boolean, DefaultValue: false, Description: HideSlider
#DesignerProperty: Key: IconsAndText, DisplayName: IconsAndText, FieldType: Boolean, DefaultValue: false, Description: IconsAndText
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MobileBreakpoint, DisplayName: MobileBreakpoint, FieldType: String, DefaultValue: , Description: MobileBreakpoint
#DesignerProperty: Key: NextIcon, DisplayName: NextIcon, FieldType: String, DefaultValue: , Description: NextIcon
#DesignerProperty: Key: Optional, DisplayName: Optional, FieldType: Boolean, DefaultValue: false, Description: Optional
#DesignerProperty: Key: PrevIcon, DisplayName: PrevIcon, FieldType: String, DefaultValue: , Description: PrevIcon
#DesignerProperty: Key: Right, DisplayName: Right, FieldType: Boolean, DefaultValue: false, Description: Right
#DesignerProperty: Key: ShowArrows, DisplayName: ShowArrows, FieldType: Boolean, DefaultValue: false, Description: ShowArrows
#DesignerProperty: Key: SliderColor, DisplayName: SliderColor, FieldType: String, DefaultValue: , Description: SliderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: SliderColorIntensity, DisplayName: SliderColorIntensity, FieldType: String, DefaultValue: , Description: SliderColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: SliderSize, DisplayName: SliderSize, FieldType: String, DefaultValue: , Description: SliderSize
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
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
Private sVShow As String
Private bVertical As Boolean
Private sSliderColorIntensity As String
Private bHidden As Boolean
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
	sVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
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
svshow = Props.Get("VShow")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bHidden = Props.Get("Hidden")
bVertical = Props.Get("Vertical")
sSliderColorIntensity= Props.Get("SliderColorIntensity")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-tabs id="${mName}"></v-tabs>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-tabs"
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
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr(":vertical", bVertical)
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
	VC.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

