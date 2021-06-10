B4J=true
Group=Default Group\Dashboard
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: {{ progress1 }}%, Description: Caption
#DesignerProperty: Key: Rotate, DisplayName: Rotate, FieldType: String, DefaultValue: , Description: Rotate
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 32, Description: Size
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 4, Description: Width
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: progress1 , Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10 , Description: Value
#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: Boolean, DefaultValue: true, Description: Indeterminate
#DesignerProperty: Key: Avatar, DisplayName: Avatar Image, FieldType: String, DefaultValue: , Description: Avatar Image
#DesignerProperty: Key: Button, DisplayName: Button, FieldType: Boolean, DefaultValue: false, Description: Button
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
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
	Private bButton As Boolean
Private sCaption As String
Private sColor As String
Private sColorIntensity As String
Private bIndeterminate As Boolean
Private sKey As String
Private sRotate As String
Private sSize As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sWidth As String
Private sAvatar As String
Private bHidden As Boolean
Private sValue As String
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
		bButton = Props.Get("Button")
		sCaption = Props.Get("Caption")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bIndeterminate = Props.Get("Indeterminate")
		sKey = Props.Get("Key")
		sRotate = Props.Get("Rotate")
		sSize = Props.Get("Size")
		sVBind = Props.Get("VBind")
		sVFor = Props.Get("VFor")
		sVIf = Props.Get("VIf")
		sVShow = Props.Get("VShow")
		sVModel = Props.Get("VModel")
		sVOn = Props.Get("VOn")
		bHidden = Props.GetDefault("Hidden", False)
		sWidth = Props.Get("Width")
		sAvatar = Props.Get("Avatar")
		sValue = Props.GetDefault("Value", 10)
	End If
	'
	If BANano.IsNull(sAvatar) Or BANano.IsUndefined(sAvatar) Then
		sAvatar = ""
	End If
	If sAvatar <> "" Then
		sCaption = ""
		sVModel = ""
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-progress-circular id="${mName}">${sCaption}</v-progress-circular>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-progress-circular"
	
	If sAvatar <> "" Then
		VElement.Append($"<v-avatar id="${mName}avatar"><img id="${mName}image" src="${sAvatar}" alt=""></img></v-avatar>"$)
		VElement.GetAvatar.Size = BANano.parseInt(sSize) - 10
	End If
	
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":button", bButton)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":indeterminate", bIndeterminate)
VElement.AddAttr("key", sKey)
VElement.AddAttr("rotate", sRotate)
VElement.AddAttr("size", sSize)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr("width", sWidth)
VElement.SetData(sVModel, sValue)
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

Sub AddClass(s As String) As VProgressCircular
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VProgressCircular
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VProgressCircular
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VProgressCircular
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VProgressCircular
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub SetValue(VC As VueComponent, num As Int)
	VC.SetData(sVModel, num)
End Sub

Sub GetValue(VC As VueComponent) As Int
	Dim num As Int = VC.GetData(sVModel)
	Return num
End Sub

Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

