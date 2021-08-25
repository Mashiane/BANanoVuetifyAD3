B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Input (num As Double)
#Event: Change (num As Double)

#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: rating1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required 
#DesignerProperty: Key: Length, DisplayName: Length, FieldType: String, DefaultValue: 5, Description: Length
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: , Description: Size
#DesignerProperty: Key: Size1, DisplayName: Own Size, FieldType: String, DefaultValue: , Description: Size1, List: none|large|small|x-large|x-small|regular

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
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
Private sValue As String
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
	sRequired = $"${mName}required"$
	sDisabled = $"${mName}disabled"$
	sReadonly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDeFault("Hidden",False)
bReadonly = Props.GetDeFault("Readonly",False)
bRequired = Props.GetDeFault("Required",False)
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
bReadonly = Props.GetDefault("Readonly",False)
bRipple = Props.Get("Ripple")
sSize = Props.Get("Size")
sSize1 = Props.Get("Size1")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
		sValue = Props.GetDefault("Value", 0)
	End If
	'
	bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bReadonly = BANanoShared.parseBool(bReadonly)
bRequired = BANanoShared.parseBool(bRequired)
bClearable = BANanoShared.parseBool(bClearable)
bDark = BANanoShared.parseBool(bDark)
bDense = BANanoShared.parseBool(bDense)
bHalfIncrements = BANanoShared.parseBool(bHalfIncrements)
bHover = BANanoShared.parseBool(bHover)
bLight = BANanoShared.parseBool(bLight)
bReadonly = BANanoShared.parseBool(bReadonly)
bRipple = BANanoShared.parseBool(bRipple)
bDisabled = BANanoShared.parseBool(bDisabled)
bRequired = BANanoShared.parseBool(bRequired)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-rating ref="${mName}" id="${mName}"></v-rating>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-rating"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.BackgroundColorAttr = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
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
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
VElement.BindAllEvents
VElement.SetOnEventOwn(mCallBack, $"${mName}_change"$, "input", Null)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
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

Sub UpdateVisible(C As VueComponent, b As Boolean) As VRating
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VRating
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub SetValue(C As VueComponent, newRating As Double)
	C.SetData(sVModel, newRating)
End Sub

Sub UpdateValue(C As VueComponent, newRating As Double)
	C.SetData(sVModel, newRating)
End Sub

Sub GetValue(C As VueComponent) As Int
	Dim res As Int = C.GetData(sVModel)
	Return res
End Sub

Sub SetValueOnApp(C As VuetifyApp, newRating As Double)
	C.SetData(sVModel, newRating)
End Sub

Sub UpdateValueOnApp(C As VuetifyApp, newRating As Double)
	C.SetData(sVModel, newRating)
End Sub

Sub GetValueOnApp(C As VuetifyApp) As Int
	Dim res As Int = C.GetData(sVModel)
	Return res
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

Sub OnInput(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_input"$, "input", args)
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