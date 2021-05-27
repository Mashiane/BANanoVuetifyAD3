B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (i As Int)
#DesignerProperty: Key: ImagesSource, DisplayName: Images Source, FieldType: String, DefaultValue: , Description: ImageSource
#DesignerProperty: Key: ImagesLink, DisplayName: Images Link, FieldType: Boolean, DefaultValue: false, Description: Images Link
#DesignerProperty: Key: ImagesReverseTransition, DisplayName: Images ReverseTransition, FieldType: String, DefaultValue: , Description: Images ReverseTransition
#DesignerProperty: Key: ImagesRipple, DisplayName: Images Ripple, FieldType: Boolean, DefaultValue: false, Description: Images Ripple
#DesignerProperty: Key: ImagesTarget, DisplayName: Images Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: ImagesTransition, DisplayName: Images Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Continuos, DisplayName: Continuos, FieldType: Boolean, DefaultValue: false, Description: Continuos
#DesignerProperty: Key: Cycle, DisplayName: Cycle, FieldType: Boolean, DefaultValue: false, Description: Cycle
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: DelimiterIcon, DisplayName: DelimiterIcon, FieldType: String, DefaultValue: , Description: DelimiterIcon
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideDelimiterBackground, DisplayName: HideDelimiterBackground, FieldType: Boolean, DefaultValue: false, Description: HideDelimiterBackground
#DesignerProperty: Key: HideDelimiters, DisplayName: HideDelimiters, FieldType: Boolean, DefaultValue: false, Description: HideDelimiters
#DesignerProperty: Key: Interval, DisplayName: Interval, FieldType: String, DefaultValue: , Description: Interval
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: false, Description: Mandatory
#DesignerProperty: Key: Maxvalue, DisplayName: Maxvalue, FieldType: String, DefaultValue: , Description: Maxvalue
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: false, Description: Multiple
#DesignerProperty: Key: NextIcon, DisplayName: NextIcon, FieldType: String, DefaultValue: , Description: NextIcon
#DesignerProperty: Key: PrevIcon, DisplayName: PrevIcon, FieldType: String, DefaultValue: , Description: PrevIcon
#DesignerProperty: Key: Progress, DisplayName: Progress, FieldType: Boolean, DefaultValue: false, Description: Progress
#DesignerProperty: Key: ProgressColor, DisplayName: ProgressColor, FieldType: String, DefaultValue: , Description: ProgressColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ProgressColorIntensity, DisplayName: ProgressColorIntensity, FieldType: String, DefaultValue: , Description: ProgressColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Reverse, DisplayName: Reverse, FieldType: Boolean, DefaultValue: false, Description: Reverse
#DesignerProperty: Key: ShowArrows, DisplayName: ShowArrows, FieldType: Boolean, DefaultValue: false, Description: ShowArrows
#DesignerProperty: Key: ShowArrowsOnHover, DisplayName: ShowArrowsOnHover, FieldType: Boolean, DefaultValue: false, Description: ShowArrowsOnHover
#DesignerProperty: Key: Touchless, DisplayName: Touchless, FieldType: Boolean, DefaultValue: false, Description: Touchless
'
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
#DesignerProperty: Key: VerticalDelimiters, DisplayName: VerticalDelimiters, FieldType: String, DefaultValue: , Description: VerticalDelimiters
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
	Private mImagesSource As String
	Private mClasses As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private sActiveClass As String
Private bContinuos As Boolean
Private bCycle As Boolean
Private bDark As Boolean
Private sDelimiterIcon As String
Private sHeight As String
Private bHideDelimiterBackground As Boolean
Private bHideDelimiters As Boolean
Private sInterval As String
Private bLight As Boolean
Private bMandatory As Boolean
Private sMaxvalue As String
Private bMultiple As Boolean
Private sNextIcon As String
Private sPrevIcon As String
Private bProgress As Boolean
Private sProgressColor As String
Private sProgressColorIntensity As String
Private bReverse As Boolean
Private bShowArrows As Boolean
Private bShowArrowsOnHover As Boolean
Private bTouchless As Boolean
Private sVIf As String
Private sVShow As String
Private bVertical As Boolean
Private sVerticalDelimiters As String
Private sImagesLink As String
Private sImagesReverseTransition As String
Private sImagesRipple As String
Private sImagesTarget As String
Private sImagesTransition As String
Private xItems As List
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
	xItems.Initialize 
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
bContinuos = Props.Get("Continuos")
bCycle = Props.Get("Cycle")
bDark = Props.Get("Dark")
sDelimiterIcon = Props.Get("DelimiterIcon")
sHeight = Props.Get("Height")
bHideDelimiterBackground = Props.Get("HideDelimiterBackground")
bHideDelimiters = Props.Get("HideDelimiters")
sInterval = Props.Get("Interval")
bLight = Props.Get("Light")
bMandatory = Props.Get("Mandatory")
sMaxvalue = Props.Get("Maxvalue")
bMultiple = Props.Get("Multiple")
sNextIcon = Props.Get("NextIcon")
sPrevIcon = Props.Get("PrevIcon")
bProgress = Props.Get("Progress")
sProgressColor = Props.Get("ProgressColor")
sProgressColorIntensity = Props.Get("ProgressColorIntensity")
bReverse = Props.Get("Reverse")
bShowArrows = Props.Get("ShowArrows")
bShowArrowsOnHover = Props.Get("ShowArrowsOnHover")
bTouchless = Props.Get("Touchless")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
bVertical = Props.Get("Vertical")
sVerticalDelimiters = Props.Get("VerticalDelimiters")
mImagesSource = Props.Get("ImagesSource")
sImagesLink = Props.Get("ImagesLink")
sImagesReverseTransition = Props.Get("ImagesReverseTransition")
sImagesRipple = Props.Get("ImagesRipple")
sImagesTarget = Props.Get("ImagesTarget")
sImagesTransition = Props.Get("ImagesTransition")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-carousel id="${mName}"></v-carousel>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-carousel"
	'do we have images
	If BANano.IsNull(mImagesSource) Or BANano.IsUndefined(mImagesSource) Then
		mImagesSource = ""
	End If
	If mImagesSource <> "" Then
		mImagesSource = mImagesSource.tolowercase
		VElement.SetData(mImagesSource, VElement.NewList)
		'add the image slides
		VElement.Append($"<v-carousel-item id="${mName}item"></v-carousel-item>"$)
		VElement.GetItem.VFor = $"(item, i) in ${mImagesSource}"$
		VElement.GetItem.Bind("key", "i")
		VElement.GetItem.Bind("src", $"item.src"$)
		VElement.GetItem.Bind("disabled", $"item.disabled"$)
		VElement.GetItem.Bind("href", $"item.href"$)
		VElement.GetItem.Bind("to", $"item.to"$)
		VElement.GetItem.Bind("value", $"item.value"$)
		'
		VElement.GetItem.Bind("link", sImagesLink)
		VElement.GetItem.AddAttr("reverse-transition", sImagesReverseTransition)
		VElement.GetItem.Bind("ripple", sImagesRipple)
		VElement.GetItem.AddAttr("target", sImagesTarget)
		VElement.GetItem.AddAttr("transition", sImagesTransition)
	End If
	
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.ActiveClass = sActiveClass
VElement.AddAttr(":continuos", bContinuos)
VElement.AddAttr(":cycle", bCycle)
VElement.Dark = bDark
VElement.AddAttr("delimiter-icon", sDelimiterIcon)
VElement.Height = sHeight
VElement.AddAttr(":hide-delimiter-background", bHideDelimiterBackground)
VElement.AddAttr(":hide-delimiters", bHideDelimiters)
VElement.AddAttr("interval", sInterval)
VElement.Light = bLight
VElement.AddAttr(":mandatory", bMandatory)
VElement.AddAttr("max", sMaxvalue)
VElement.Multiple = bMultiple
VElement.NextIcon = sNextIcon
VElement.PrevIcon = sPrevIcon
VElement.AddAttr(":progress", bProgress)
VElement.ProgressColor = VElement.BuildColor(sProgressColor, sProgressColorIntensity)
VElement.Reverse = bReverse
VElement.ShowArrows = bShowArrows
VElement.AddAttr(":show-arrows-on-hover", bShowArrowsOnHover)
VElement.AddAttr(":touchless", bTouchless)
VElement.VIf = sVIf
VElement.VShow = sVShow
VElement.Vertical = bVertical
VElement.AddAttr("vertical-delimiters", sVerticalDelimiters)
VElement.BindAllEvents
End Sub

Sub Clear(VC As VueComponent)
	xItems.Initialize 
	VC.SetData(mImagesSource, xItems)
End Sub

Sub AddItem(sID As String, sSrc As String, sHref As String, sTo As String, bDisabled As Boolean)
	Dim nm As Map = CreateMap()
	nm.Put("disabled", bDisabled)
	nm.Put("href", sHref)
	nm.Put("to", sTo)
	nm.Put("value", sID)
	nm.Put("src", sSrc)
	xItems.Add(nm)
End Sub

Sub Refresh(VC As VueComponent)
	VC.SetData(mImagesSource, xItems)
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
Sub AddClass(s As String) As VCarousel
	VElement.AddClass(s)
	Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VCarousel
	VElement.SetAttr(p, v)
	Return Me
End Sub
Sub AddStyle(p As String, v As String) As VCarousel
	VElement.AddStyle(p, v)
	Return Me
End Sub
Sub RemoveAttr(p As String) As VCarousel
	VElement.RemoveAttr(p)
	Return Me
End Sub
Sub Visible(VC As VueComponent, b As Boolean) As VCarousel
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub