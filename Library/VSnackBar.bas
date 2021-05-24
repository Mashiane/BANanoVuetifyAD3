B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: false, Description: App
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: SnackBar , Description: Caption
#DesignerProperty: Key: Centered, DisplayName: Centered, FieldType: Boolean, DefaultValue: false, Description: Centered
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: blue , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ContentClass, DisplayName: ContentClass, FieldType: String, DefaultValue: , Description: ContentClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MultiLine, DisplayName: MultiLine, FieldType: Boolean, DefaultValue: false, Description: MultiLine
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: top-right, Description: Position, List: none|bottom-left|bottom-right|top-left|top-right
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Text, DisplayName: Text/BackGround, FieldType: Boolean, DefaultValue: false, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Timeout, DisplayName: Timeout, FieldType: String, DefaultValue: , Description: Timeout
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: expand-transition, Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: snackshow , Description: VModel
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
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
Private sCaption As String
Private bCentered As Boolean
Private sColor As String
Private sColorIntensity As String
Private sContentClass As String
Private bDark As Boolean
Private sElevation As String
Private sHeight As String
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bMultiLine As Boolean
Private bOutlined As Boolean
Private sPosition As String
Private sRounded As String
Private bShaped As Boolean
Private bText As Boolean
Private sTextColor As String
Private sTextColorIntensity As String
Private bTile As Boolean
Private sTimeout As String
Private sTransition As String
Private sVIf As String
Private sVModel As String
Private bVertical As Boolean
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
sCaption = Props.Get("Caption")
bCentered = Props.Get("Centered")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sContentClass = Props.Get("ContentClass")
bDark = Props.Get("Dark")
sElevation = Props.Get("Elevation")
sHeight = Props.Get("Height")
bLight = Props.Get("Light")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
bMultiLine = Props.Get("MultiLine")
bOutlined = Props.Get("Outlined")
sPosition = Props.Get("Position")
sRounded = Props.Get("Rounded")
bShaped = Props.Get("Shaped")
bText = Props.Get("Text")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
bTile = Props.Get("Tile")
sTimeout = Props.Get("Timeout")
sTransition = Props.Get("Transition")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
bVertical = Props.Get("Vertical")
sWidth = Props.Get("Width")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-snackbar id="${mName}">${sCaption}</v-snackbar>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-snackbar"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
VElement.AddAttr(":app", bApp)
VElement.AddAttr(":centered", bCentered)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr("content-class", sContentClass)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":multi-line", bMultiLine)
VElement.AddAttr(":outlined", bOutlined)
Select Case sPosition
Case "none"	
Case "bottom-left"
VElement.AddAttr(":bottom", True)
VElement.AddAttr(":left", True)
Case "bottom-right"
VElement.AddAttr(":bottom", True)
VElement.AddAttr(":right", True)
Case "top-left"
VElement.AddAttr(":top", True)
VElement.AddAttr(":left", True)
Case "top-right"
VElement.AddAttr(":top", True)
VElement.AddAttr(":right", True)
End Select

VElement.AddAttr("rounded", sRounded)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr(":text", bText)
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr("timeout", sTimeout)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr(":vertical", bVertical)
VElement.AddAttr("width", sWidth)
VElement.AddAttr(sVModel, False)
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

Sub AddClass(s As String) As VSnackBar
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VSnackBar
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VSnackBar
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VSnackBar
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Visible(VC As VueComponent, b As Boolean) As VSnackBar
	VC.SetData(sVIf, b)
	VC.SetData(sVModel, b)
	Return Me
End Sub
