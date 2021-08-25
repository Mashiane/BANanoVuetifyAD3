B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: progress1 , Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: 10 , Description: Value, MinRange: 0, MaxRange: 100
#DesignerProperty: Key: Caption, DisplayName: Caption VModel*, FieldType: String, DefaultValue: {{ progress1 }}%, Description: Caption
#DesignerProperty: Key: Rotate, DisplayName: Rotate, FieldType: Int, DefaultValue: 0, Description: Rotate, MinRange: 0, MaxRange: 360
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: Int, DefaultValue: 32, Description: Size, MinRange: 0, MaxRange: 500
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: Int, DefaultValue: 4, Description: Width, MinRange: 0, MaxRange: 500

#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: Boolean, DefaultValue: true, Description: Indeterminate
#DesignerProperty: Key: Avatar, DisplayName: Avatar Image, FieldType: String, DefaultValue: , Description: Avatar Image
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private VC As VueComponent					''ignore
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
		sCaption = Props.GetDefault("Caption", "{{ value }}%")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bIndeterminate = Props.Get("Indeterminate")
		sKey = Props.Get("Key")
		sRotate = Props.Get("Rotate")
		sSize = Props.Get("Size")
		sVBind = Props.Get("VBind")
		sVFor = Props.Get("VFor")
		sVIf = Props.Get("VIf")
		sVModel = Props.Get("VModel")
		sVOn = Props.Get("VOn")
		bHidden = Props.GetDefault("Hidden", False)
		sWidth = Props.Get("Width")
		sAvatar = Props.Get("Avatar")
		sValue = Props.GetDefault("Value", 10)
	End If
	'
	bButton = BANanoShared.parseBool(bButton)
bIndeterminate = BANanoShared.parseBool(bIndeterminate)
bHidden = BANanoShared.parseBool(bHidden)
	
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
		mElement = mTarget.Append($"<v-progress-circular ref="${mName}" id="${mName}">${sCaption}</v-progress-circular>"$).Get("#" & mName)
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
VElement.AddAttr("value", sValue)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("width", sWidth)
VElement.SetData(sVModel, sValue)
VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
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

Sub UpdateVisible(C As VueComponent, b As Boolean) As VProgressCircular
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VProgressCircular
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub SetValue(C As VueComponent, num As Int)
	C.SetData(sVModel, num)
End Sub

Sub UpdateValue(C As VueComponent, num As Int)
	C.SetData(sVModel, num)
End Sub

Sub GetValue(C As VueComponent) As Int
	Dim num As Int = C.GetData(sVModel)
	Return num
End Sub


Sub SetValueOnApp(C As VuetifyApp, num As Int)
	C.SetData(sVModel, num)
End Sub

Sub UpdateValueOnApp(C As VuetifyApp, num As Int)
	C.SetData(sVModel, num)
End Sub


Sub GetValueOnApp(C As VuetifyApp) As Int
	Dim num As Int = C.GetData(sVModel)
	Return num
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