B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue: , Description: Disabled
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Expand, DisplayName: Expand, FieldType: Boolean, DefaultValue: false, Description: Expand
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: false, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Nav, DisplayName: Nav, FieldType: Boolean, DefaultValue: false, Description: Nav
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: false, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Subheader, DisplayName: Subheader, FieldType: Boolean, DefaultValue: false, Description: Subheader
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ThreeLine, DisplayName: ThreeLine, FieldType: Boolean, DefaultValue: false, Description: ThreeLine
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: TwoLine, DisplayName: TwoLine, FieldType: Boolean, DefaultValue: false, Description: TwoLine
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
	Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDense As Boolean
Private sDisabled As String
Private sElevation As String
Private bExpand As Boolean
Private bFlat As Boolean
Private sHeight As String
Private sKey As String
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bNav As Boolean
Private bOutlined As Boolean
Private bRounded As Boolean
Private bShaped As Boolean
Private bSubheader As Boolean
Private sTextColor As String
Private sTextColorIntensity As String
Private bThreeLine As Boolean
Private bTile As Boolean
Private bTwoLine As Boolean
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVOn As String
Private sVShow As String
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
		sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
bDark = Props.Get("Dark")
bDense = Props.Get("Dense")
sDisabled = Props.Get("Disabled")
sElevation = Props.Get("Elevation")
bExpand = Props.Get("Expand")
bFlat = Props.Get("Flat")
sHeight = Props.Get("Height")
sKey = Props.Get("Key")
bLight = Props.Get("Light")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
bNav = Props.Get("Nav")
bOutlined = Props.Get("Outlined")
bRounded = Props.Get("Rounded")
bShaped = Props.Get("Shaped")
bSubheader = Props.Get("Subheader")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
bThreeLine = Props.Get("ThreeLine")
bTile = Props.Get("Tile")
bTwoLine = Props.Get("TwoLine")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
sVShow = Props.Get("VShow")
sWidth = Props.Get("Width")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-list id="${mName}"></v-list>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-list"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr("disabled", sDisabled)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr(":expand", bExpand)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr("height", sHeight)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":nav", bNav)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr(":rounded", bRounded)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr(":subheader", bSubheader)
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.AddAttr(":three-line", bThreeLine)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr(":two-line", bTwoLine)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.AddAttr("width", sWidth)
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

Sub AddClass(s As String) As VList
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VList
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VList
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VList
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Visible(VC As VueComponent, b As Boolean) As VList
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub
