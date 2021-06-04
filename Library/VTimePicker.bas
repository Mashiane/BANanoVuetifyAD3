B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class

#Event: Change (item As String)
#Event: ClickHour (item As String)
#Event: ClickMinute (item As String)
#Event: ClickSecond (item As String)
#Event: Input (item As String)
#Event: UpdatePeriod (item As String)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: time1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10:00, Description: Value
#DesignerProperty: Key: Now, DisplayName: Now, FieldType: Boolean, DefaultValue: False, Description: Now
#DesignerProperty: Key: Format, DisplayName: Format, FieldType: String, DefaultValue: ampm, Description: Format, List: ampm|24hr
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: MinValue, DisplayName: Min, FieldType: String, DefaultValue: , Description: MinValue
#DesignerProperty: Key: MaxValue, DisplayName: Max, FieldType: String, DefaultValue: , Description: MaxValue
#DesignerProperty: Key: UseSeconds, DisplayName: UseSeconds, FieldType: Boolean, DefaultValue: False, Description: UseSeconds

#DesignerProperty: Key: AmpmInTitle, DisplayName: AmpmInTitle, FieldType: Boolean, DefaultValue: False, Description: AmpmInTitle
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue: False, Description: FullWidth
#DesignerProperty: Key: HeaderColor, DisplayName: HeaderColor, FieldType: String, DefaultValue: , Description: HeaderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HeaderColorIntensity, DisplayName: Headercolorintensity, FieldType: String, DefaultValue: , Description: Headercolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Landscape, DisplayName: Landscape, FieldType: Boolean, DefaultValue: False, Description: Landscape
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: NoTitle, DisplayName: NoTitle, FieldType: Boolean, DefaultValue: False, Description: NoTitle
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Scrollable, DisplayName: Scrollable, FieldType: Boolean, DefaultValue: False, Description: Scrollable
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
	Private bHidden As Boolean
Private bAmpmInTitle As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDisabled As Boolean
Private sElevation As String
Private bFlat As Boolean
Private sFormat As String
Private bFullWidth As Boolean
Private sHeaderColor As String
Private sHeaderColorIntensity As String
Private bLandscape As Boolean
Private bLight As Boolean
Private sMaxValue As String
Private sMinValue As String
Private bNoTitle As Boolean
Private bReadonly As Boolean
Private bScrollable As Boolean
Private bUseSeconds As Boolean
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private sWidth As String
 Private bNow As Boolean
 Private xmin As String
 Private xmax As String
 Private sReadOnly As String
 Private sDisabled As String
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
	xmax = $"${mName}max"$
	xmin = $"${mName}min"$
	sReadOnly = $"${mName}readonly"$
	sDisabled = $"${mName}disabled"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bHidden = Props.GetDefault("Hidden", False)
bAmpmInTitle = Props.GetDefault("AmpmInTitle", False)
sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDark = Props.GetDefault("Dark", False)
bDisabled = Props.GetDefault("Disabled", False)
sElevation = Props.GetDefault("Elevation", "")
bFlat = Props.GetDefault("Flat", False)
sFormat = Props.GetDefault("Format", "")
bFullWidth = Props.GetDefault("FullWidth", False)
sHeaderColor = Props.GetDefault("HeaderColor", "")
sHeaderColorIntensity = Props.GetDefault("HeaderColorIntensity", "")
bLandscape = Props.GetDefault("Landscape", False)
bLight = Props.GetDefault("Light", False)
sMaxValue = Props.GetDefault("MaxValue", "")
sMinValue = Props.GetDefault("MinValue", "")
bNoTitle = Props.GetDefault("NoTitle", False)
bReadonly = Props.GetDefault("Readonly", False)
bScrollable = Props.GetDefault("Scrollable", False)
bUseSeconds = Props.GetDefault("UseSeconds", False)
sVBind = Props.GetDefault("VBind", "")
sVFor = Props.GetDefault("VFor", "")
sVIf = Props.GetDefault("VIf", "")
sVModel = Props.GetDefault("VModel", "")
sVOn = Props.GetDefault("VOn", "")
sVShow = Props.GetDefault("VShow", "")
sValue = Props.GetDefault("Value", "")
sWidth = Props.GetDefault("Width", "")
 bNow = Props.GetDefault("Now", False)
 
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-time-picker id="${mName}"></v-time-picker>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-time-picker" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
VElement.AddAttr(":ampm-in-title", bAmpmInTitle)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr("elevation", sElevation)

VElement.AddAttr(":flat", bFlat)
VElement.AddAttr("format", sFormat)
VElement.AddAttr(":full-width", bFullWidth)
VElement.AddAttr("header-color", VElement.BuildColor(sHeaderColor, sHeaderColorIntensity))
VElement.AddAttr(":landscape", bLandscape)

VElement.AddAttr(":light", bLight)
VElement.AddAttr(":max", xmax)
VElement.AddAttr(":min", xmin)
VElement.SetData(xmax, sMaxValue)
VElement.SetData(xmin, sMinValue)

VElement.AddAttr(":no-title", bNoTitle)
VElement.AddAttr(":readonly", sReadOnly)
VElement.SetData(sReadOnly, bReadonly)

VElement.AddAttr(":scrollable", bScrollable)
VElement.AddAttr(":use-seconds", bUseSeconds)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
If bNow Then
	sValue = BANanoShared.TimeNow
End If
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
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

Sub AddClass(s As String) As VTimePicker 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VTimePicker 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VTimePicker 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VTimePicker 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VTimePicker 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub


'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update MaxValue
Sub UpdateMax(VC As VueComponent, vMaxValue As Object)
VC.SetData(xmax, vMaxValue)
End Sub

'Update MinValue
Sub UpdateMin(VC As VueComponent, vMinValue As Object)
VC.SetData(xmin, vMinValue)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadOnly, vReadonly)
End Sub

'Update Value
Sub UpdateValue(VC As VueComponent, vValue As Object)
	VC.SetData(sVModel, vValue)
End Sub

Sub GetValue(VC As VueComponent) As String
	Dim res As String = VC.GetData(sVModel)
	Return res
End Sub

Sub getID As String
	Return mName
End Sub

Sub getVModel As String
	Return sVModel
End Sub

Sub getHere As String
	Return $"#${mName}"$
End Sub