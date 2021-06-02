B4J=true
Group=Default Group\Forms
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Input (num As Double)

#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: rating1, Description: VModel
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required 


#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: false, Description: Clearable
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: EmptyIcon, DisplayName: EmptyIcon, FieldType: String, DefaultValue: , Description: EmptyIcon
#DesignerProperty: Key: FullIcon, DisplayName: FullIcon, FieldType: String, DefaultValue: , Description: FullIcon
#DesignerProperty: Key: HalfIcon, DisplayName: HalfIcon, FieldType: String, DefaultValue: , Description: HalfIcon
#DesignerProperty: Key: HalfIncrements, DisplayName: HalfIncrements, FieldType: Boolean, DefaultValue: false, Description: HalfIncrements
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: IconLabel, DisplayName: IconLabel, FieldType: String, DefaultValue: , Description: IconLabel
#DesignerProperty: Key: Length, DisplayName: Length, FieldType: String, DefaultValue: 5, Description: Length
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: , Description: Size
#DesignerProperty: Key: Size1, DisplayName: Own Size, FieldType: String, DefaultValue: , Description: Size1, List: none|large|small|x-large|x-small
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind

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
	Private sBackgroundColor As String
Private sBackgroundColorIntensity As String
Private bClearable As Boolean
Private sCloseDelay As String
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDense As Boolean
Private sEmptyIcon As String
Private sFullIcon As String
Private sHalfIcon As String
Private bHalfIncrements As Boolean
Private bHover As Boolean
Private sIconLabel As String
Private sLength As String
Private bLight As Boolean
Private sOpenDelay As String
Private bReadonly As Boolean
Private bRipple As Boolean
Private sSize As String
Private sSize1 As String
Private sVIf As String
Private sVModel As String
Private sVShow As String
Private sVOn As String
Private sVBind As String
'
Private bDisabled As Boolean
Private bHidden As Boolean
Private bReadonly As Boolean
Private bRequired As Boolean
Private sRequired As String
Private sDisabled As String
Private sReadonly As String
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
	sRequired = $"${mName}required"$
	sDisabled = $"${mName}disabled"$
	sReadonly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	End Sub
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		bDisabled = Props.Get("Disabled")
bHidden = Props.Get("Hidden")
bReadonly = Props.Get("Readonly")
bRequired = Props.Get("Required")
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sBackgroundColor = Props.Get("BackgroundColor")
sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
bClearable = Props.Get("Clearable")
sCloseDelay = Props.Get("CloseDelay")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
bDark = Props.Get("Dark")
bDense = Props.Get("Dense")
sEmptyIcon = Props.Get("EmptyIcon")
sFullIcon = Props.Get("FullIcon")
sHalfIcon = Props.Get("HalfIcon")
bHalfIncrements = Props.Get("HalfIncrements")
bHover = Props.Get("Hover")
sIconLabel = Props.Get("IconLabel")
sLength = Props.Get("Length")
bLight = Props.Get("Light")
sOpenDelay = Props.Get("OpenDelay")
bReadonly = Props.Get("Readonly")
bRipple = Props.Get("Ripple")
sSize = Props.Get("Size")
sSize1 = Props.Get("Size1")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-rating id="${mName}"></v-rating>"$).Get("#" & mName)
	End If
	'
	If BANano.IsNull(bDisabled) Or BANano.IsUndefined(bDisabled) Then
		bDisabled = False 
	End If
	If BANano.IsNull(bRequired) Or BANano.IsUndefined(bRequired) Then
		bRequired = False 
	End If
	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-rating"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.BackgroundColor = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
VElement.AddAttr(":clearable", bClearable)
VElement.AddAttr("close-delay", sCloseDelay)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr("empty-icon", sEmptyIcon)
VElement.AddAttr("full-icon", sFullIcon)
VElement.AddAttr("half-icon", sHalfIcon)
VElement.AddAttr(":half-increments", bHalfIncrements)
VElement.AddAttr(":hover", bHover)
VElement.AddAttr("icon-label", sIconLabel)
VElement.AddAttr("length", sLength)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr(":readonly", bReadonly)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr("size", sSize)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)
VElement.AddAttr(":readonly", sReadonly)
VElement.SetData(sReadonly, bReadonly)
Select Case sSize1
Case "large"
VElement.AddAttr(":large", True)
Case "small"
VElement.AddAttr(":small", True)
Case "x-large"
VElement.AddAttr(":x-large", True)
Case "x-small"
VElement.AddAttr(":x-small", True)
End Select
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.SetData(sVModel, 2)
VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
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

Sub AddClass(s As String) As VRating
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VRating
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VRating
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VRating
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VRating
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub SetValue(VC As VueComponent, newRating As Double)
	VC.SetData(sVModel, newRating)
End Sub

Sub GetValue(VC As VueComponent) As Int
	Dim res As Int = VC.GetData(sVModel)
	Return res
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub