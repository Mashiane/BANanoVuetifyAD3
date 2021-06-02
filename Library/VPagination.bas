﻿B4J=true
Group=Default Group\DataTable
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Input (num As Integer)
#Event: Next (e As BANanoEvent)
#Event: Previous (e As BANanoEvent)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Circle, DisplayName: Circle, FieldType: Boolean, DefaultValue: false, Description: Circle
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CurrentPageAriaLabel, DisplayName: CurrentPageAriaLabel, FieldType: String, DefaultValue: , Description: CurrentPageAriaLabel
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: false, Description: Disabled
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Length, DisplayName: Length, FieldType: String, DefaultValue: , Description: Length
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: NextAriaLabel, DisplayName: NextAriaLabel, FieldType: String, DefaultValue: , Description: NextAriaLabel
#DesignerProperty: Key: NextIcon, DisplayName: NextIcon, FieldType: String, DefaultValue: , Description: NextIcon
#DesignerProperty: Key: PageAriaLabel, DisplayName: PageAriaLabel, FieldType: String, DefaultValue: , Description: PageAriaLabel
#DesignerProperty: Key: PrevIcon, DisplayName: PrevIcon, FieldType: String, DefaultValue: , Description: PrevIcon
#DesignerProperty: Key: PreviousAriaLabel, DisplayName: PreviousAriaLabel, FieldType: String, DefaultValue: , Description: PreviousAriaLabel
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TotalVisible, DisplayName: TotalVisible, FieldType: String, DefaultValue: , Description: TotalVisible
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: WrapperAriaLabel, DisplayName: WrapperAriaLabel, FieldType: String, DefaultValue: , Description: WrapperAriaLabel
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
	Private bCircle As Boolean
Private sColor As String
Private sColorIntensity As String
Private sCurrentPageAriaLabel As String
Private bDark As Boolean
Private bDisabled As Boolean
Private sKey As String
Private sLength As String
Private bLight As Boolean
Private sNextAriaLabel As String
Private sNextIcon As String
Private sPageAriaLabel As String
Private sPrevIcon As String
Private sPreviousAriaLabel As String
Private sTextColor As String
Private sTextColorIntensity As String
Private sTotalVisible As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sWrapperAriaLabel As String
private bHidden as boolean
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
		bCircle = Props.Get("Circle")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sCurrentPageAriaLabel = Props.Get("CurrentPageAriaLabel")
bDark = Props.Get("Dark")
bDisabled = Props.Get("Disabled")
sKey = Props.Get("Key")
sLength = Props.Get("Length")
bLight = Props.Get("Light")
sNextAriaLabel = Props.Get("NextAriaLabel")
sNextIcon = Props.Get("NextIcon")
sPageAriaLabel = Props.Get("PageAriaLabel")
sPrevIcon = Props.Get("PrevIcon")
sPreviousAriaLabel = Props.Get("PreviousAriaLabel")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sTotalVisible = Props.Get("TotalVisible")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bHidden = Props.Get("Hidden")
sWrapperAriaLabel = Props.Get("WrapperAriaLabel")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-pagination id="${mName}"></v-pagination>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-pagination"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":circle", bCircle)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr("current-page-aria-label", sCurrentPageAriaLabel)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", bDisabled)
VElement.AddAttr("key", sKey)
VElement.AddAttr("length", sLength)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("next-aria-label", sNextAriaLabel)
VElement.AddAttr("next-icon", sNextIcon)
VElement.AddAttr("page-aria-label", sPageAriaLabel)
VElement.AddAttr("prev-icon", sPrevIcon)
VElement.AddAttr("previous-aria-label", sPreviousAriaLabel)
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.AddAttr("total-visible", sTotalVisible)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr("wrapper-aria-label", sWrapperAriaLabel)
VElement.SetData(sVModel, 1)
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

Sub AddClass(s As String) As VPagination
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VPagination
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VPagination
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VPagination
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VPagination
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub GetValue(VC As VueComponent) As Int
	Dim res As String = VC.GetData(sVModel)
	Return res
End Sub

Sub SetValue(VC As VueComponent, p As Int)
	VC.SetData(sVModel, p)
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

