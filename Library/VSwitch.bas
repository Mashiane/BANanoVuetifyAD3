B4J=true
Group=Default Group\Forms
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Change(item As Object)
#Event: Click(e As BANanoEvent)
#Event: ClickAppend(e As BANanoEvent)
#Event: ClickPrepend(e As BANanoEvent)
#Event: MouseDown(e As BANanoEvent)
#Event: MouseUp(e As BANanoEvent)
#Event: UpdateError(B As Boolean)

#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Switch1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: Switch1, Description: VModel
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: TrueValue, DisplayName: TrueValue, FieldType: String, DefaultValue: True, Description: TrueValue
#DesignerProperty: Key: FalseValue, DisplayName: FalseValue, FieldType: String, DefaultValue: False, Description: FalseValue
#DesignerProperty: Key: InputValue, DisplayName: InputValue, FieldType: String, DefaultValue: , Description: InputValue
#DesignerProperty: Key: Inset, DisplayName: Inset, FieldType: Boolean, DefaultValue: false, Description: Inset
#DesignerProperty: Key: SetRef, DisplayName: SetRef, FieldType: Boolean, DefaultValue: false, Description: SetRef
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required 


#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: false, Description: ValidateOnBlur

#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: false, Description: Filled
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: false, Description: Flat
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: false, Description: HideDetails
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: false, Description: Multiple
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: false, Description: PersistentHint
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
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
	Private sAppendIcon As String
Private sBackgroundColor As String
Private sBackgroundColorIntensity As String
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDense As Boolean
Private sDisabled As String
Private sError As String
Private sErrorCount As String
Private sErrorMessages As String
Private sFalseValue As String
Private bFilled As Boolean
Private bFlat As Boolean
Private bHideDetails As Boolean
Private sHint As String
Private sInputValue As String
Private bInset As Boolean
Private sKey As String
Private sLabel As String
Private bLight As Boolean
Private sLoading As String
Private sMessages As String
Private bMultiple As Boolean
Private bPersistentHint As Boolean
Private sPrependIcon As String
Private sReadonly As String
Private bRipple As Boolean
Private sRules As String
Private bSetRef As Boolean
Private sSuccess As String
Private sSuccessMessages As String
Private sTrueValue As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private bValidateOnBlur As Boolean
Private sRequired As String
'
Private bDisabled As Boolean
Private bHidden As Boolean
Private bLoading As Boolean
Private bReadonly As Boolean
Private bRequired As Boolean
private bChecked as boolean
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
	sMessages = $"${mName}messages"$
	sRules = $"${mName}rules"$
	sError = $"${mName}error"$
	sErrorMessages = $"${mName}errormessages"$
	sSuccess = $"${mName}success"$
	sSuccessMessages = $"${mName}successmessages"$
	sReadonly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	sLoading = $"${mName}loading"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDefault("Hidden",False)
bLoading = Props.GetDefault("Loading",False)
bReadonly = Props.GetDefault("Readonly",False)
bRequired = Props.GetDefault("Required",False)
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sAppendIcon = Props.Get("AppendIcon")
sBackgroundColor = Props.Get("BackgroundColor")
sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
bDark = Props.Get("Dark")
bDense = Props.Get("Dense")
sErrorCount = Props.Get("ErrorCount")
sFalseValue = Props.Get("FalseValue")
bFilled = Props.Get("Filled")
bFlat = Props.Get("Flat")
bHideDetails = Props.Get("HideDetails")
sHint = Props.Get("Hint")
sInputValue = Props.Get("InputValue")
bInset = Props.Get("Inset")
sKey = Props.Get("Key")
sLabel = Props.Get("Label")
bLight = Props.Get("Light")
bMultiple = Props.Get("Multiple")
bPersistentHint = Props.Get("PersistentHint")
sPrependIcon = Props.Get("PrependIcon")
sReadonly = Props.Get("Readonly")
bRipple = Props.Get("Ripple")
bSetRef = Props.Get("SetRef")
sTrueValue = Props.Get("TrueValue")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bValidateOnBlur = Props.Get("ValidateOnBlur")
bChecked = Props.GetDefault("Checked", False)
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-switch id="${mName}"></v-switch>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-switch"
	'
	If BANano.IsNull(bSetRef) Or BANano.IsUndefined(bSetRef) Then
		bSetRef = False
	End If
	If bSetRef Then
		VElement.Ref = mName
	End If
	
	If BANano.IsNull(bDisabled) Or BANano.IsUndefined(bDisabled) Then
		bDisabled = False 
	End If
	If BANano.IsNull(bRequired) Or BANano.IsUndefined(bRequired) Then
		bRequired = False 
	End If
	If BANano.IsNull(bLoading) Or BANano.IsUndefined(bLoading) Then
		bLoading = False 
	End If
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("append-icon", sAppendIcon)
VElement.BackgroundColor = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":error", sError)
VElement.SetData(sError, False)
VElement.AddAttr("error-count", sErrorCount)
VElement.AddAttr(":error-messages", sErrorMessages)
VElement.SetData(sErrorMessages, VElement.NewList)
VElement.AddAttr("false-value", sFalseValue)
VElement.AddAttr(":filled", bFilled)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr("hint", sHint)
VElement.AddAttr("input-value", sInputValue)
VElement.AddAttr(":inset", bInset)
VElement.AddAttr("key", sKey)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":loading", sLoading)
VElement.SetData(sLoading, bLoading)
VElement.AddAttr(":messages", sMessages)
VElement.SetData(sMessages, VElement.newlist)
VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr(":readonly", sReadonly)
VElement.SetData(sReadonly, bReadonly)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.NewList)
VElement.AddAttr(":success", sSuccess)
VElement.SetData(sSuccess, False)
VElement.AddAttr(":success-messages", sSuccessMessages)
VElement.SetData(sSuccessMessages, VElement.NewList)
VElement.AddAttr("true-value", sTrueValue)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, bChecked)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
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

Sub AddClass(s As String) As VSwitch
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VSwitch
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VSwitch
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VSwitch
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VSwitch
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateRequired(VC As VueComponent, b As Boolean)
	VC.SetData(sRequired, b)
End Sub

Sub ClearSuccessMessages(VC As VueComponent)
	VC.SetData(sSuccessMessages, VC.NewList)
End Sub

Sub ClearRules(VC As VueComponent)
	VC.SetData(sRules, VC.NewList)
End Sub

Sub UpdateReadOnly(VC As VueComponent, b As Boolean)
	VC.SetData(sReadonly, b)
End Sub

Sub ClearMessages(VC As VueComponent)
	VC.SetData(sMessages, VC.NewList)
End Sub

Sub UpdateDisabled(VC As VueComponent, b As Boolean)
	bDisabled = b
	VC.SetData(sDisabled, b)
End Sub

Sub UpdateError(VC As VueComponent, b As Boolean)
	VC.SetData(sError, b)
End Sub

Sub UpdateSuccess(VC As VueComponent, b As Boolean)
	VC.SetData(sSuccess, b)
End Sub

Sub ClearErrorMessages(VC As VueComponent)
	VC.SetData(sErrorMessages, VC.NewList)
End Sub

Sub UpdateLoading(VC As VueComponent, b As Boolean)
	VC.SetData(sLoading, b)
End Sub

Sub GetValue(VC As VueComponent) As Object
	Dim res As String = VC.GetData(sVModel)
	Return res
End Sub

Sub SetValue(VC As VueComponent, txt As Object)
	VC.SetData(sVModel, txt)
End Sub

'add a rule
'<code>
'Me.AddRule("methodName")
'Sub Rule(v As String) As Object	'ignoredeadcode
'If v = "" Then
'return "This is required!"
'Else
'Return True
'End If
'End Sub
'</code>
Sub AddRule(methodName As String)
	VElement.AddRule(methodName)
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub


Sub getVModel As String
	Return sVModel
End Sub

