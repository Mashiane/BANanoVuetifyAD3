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


#Event: Change (item As Object)
#Event: Click (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: UpdateError (B As Boolean)
#Event: UpdateIndeterminate (B As Boolean)

#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: CheckBox1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: checkbox1, Description: VModel
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: TrueValue, DisplayName: TrueValue*, FieldType: String, DefaultValue: True, Description: TrueValue
#DesignerProperty: Key: FalseValue, DisplayName: FalseValue*, FieldType: String, DefaultValue: False, Description: FalseValue
#DesignerProperty: Key: OffIcon, DisplayName: OffIcon, FieldType: String, DefaultValue: , Description: OffIcon
#DesignerProperty: Key: OnIcon, DisplayName: OnIcon, FieldType: String, DefaultValue: , Description: OnIcon
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required 
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: True, Description: HideDetails
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages

#DesignerProperty: Key: Indeterminate, DisplayName: Indeterminate, FieldType: String, DefaultValue: , Description: Indeterminate
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue: , Description: Messages
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple

#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: False, Description: Ripple
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: False, Description: ValidateOnBlur
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: MA, DisplayName: MA, FieldType: String, DefaultValue: , Description: MA
#DesignerProperty: Key: MB, DisplayName: MB, FieldType: String, DefaultValue: , Description: MB
#DesignerProperty: Key: ML, DisplayName: ML, FieldType: String, DefaultValue: , Description: ML
#DesignerProperty: Key: MR, DisplayName: MR, FieldType: String, DefaultValue: , Description: MR
#DesignerProperty: Key: MT, DisplayName: MT, FieldType: String, DefaultValue: 0, Description: MT
#DesignerProperty: Key: MX, DisplayName: MX, FieldType: String, DefaultValue: , Description: MX
#DesignerProperty: Key: MY, DisplayName: MY, FieldType: String, DefaultValue: , Description: MY
#DesignerProperty: Key: PA, DisplayName: PA, FieldType: String, DefaultValue: , Description: PA
#DesignerProperty: Key: PB, DisplayName: PB, FieldType: String, DefaultValue: , Description: PB
#DesignerProperty: Key: PL, DisplayName: PL, FieldType: String, DefaultValue: , Description: PL
#DesignerProperty: Key: PR, DisplayName: PR, FieldType: String, DefaultValue: , Description: PR
#DesignerProperty: Key: PT, DisplayName: PT, FieldType: String, DefaultValue: , Description: PT
#DesignerProperty: Key: PX, DisplayName: PX, FieldType: String, DefaultValue: , Description: PX
#DesignerProperty: Key: PY, DisplayName: PY, FieldType: String, DefaultValue: , Description: PY

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
Private bHideDetails As Boolean
Private sHint As String
Private sIndeterminate As String
'Private sInputValue As String
Private sLabel As String
Private bLight As Boolean
Private sMessages As String
Private bMultiple As Boolean
Private sOffIcon As String
Private sOnIcon As String
Private bPersistentHint As Boolean
Private sPrependIcon As String
Private sReadonly As String
Private bRipple As Boolean
Private sRules As String
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
 Private bDisabled As Boolean
Private bHidden As Boolean
Private bReadonly As Boolean
Private bRequired As Boolean
Private sRequired As String
Private bChecked As Boolean
Private sMB As String
Private sML As String
Private sMR As String
Private sMT As String
Private sMX As String
Private sMY As String
Private sPA As String
Private sPB As String
Private sPL As String
Private sPR As String
Private sPT As String
Private sPX As String
Private sPY As String
Private sMA As String
Private sValue As Object
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
bHidden = Props.GetDefault("Hidden", False)
bReadonly = Props.Get("Readonly")
bRequired = Props.Get("Required")
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
sError = Props.Get("Error")
sErrorCount = Props.Get("ErrorCount")
sErrorMessages = Props.Get("ErrorMessages")
sFalseValue = Props.GetDefault("FalseValue",False)
bHideDetails = Props.Get("HideDetails")
sHint = Props.Get("Hint")
sIndeterminate = Props.Get("Indeterminate")
'sInputValue = Props.Get("InputValue")
sLabel = Props.Get("Label")
bLight = Props.Get("Light")
sMessages = Props.Get("Messages")
bMultiple = Props.Get("Multiple")
sOffIcon = Props.Get("OffIcon")
sOnIcon = Props.Get("OnIcon")
bPersistentHint = Props.Get("PersistentHint")
sPrependIcon = Props.Get("PrependIcon")
sReadonly = Props.Get("Readonly")
bRipple = Props.Get("Ripple")
sRules = Props.Get("Rules")
sSuccess = Props.Get("Success")
sSuccessMessages = Props.Get("SuccessMessages")
sTrueValue = Props.GetDefault("TrueValue", True)
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bValidateOnBlur = Props.Get("ValidateOnBlur")
 bChecked = Props.GetDefault("Checked", False)
 sMB = Props.Get("MB")
sML = Props.Get("ML")
sMR = Props.Get("MR")
sMT = Props.Get("MT")
sMX = Props.Get("MX")
sMY = Props.Get("MY")
sPA = Props.Get("PA")
sPB = Props.Get("PB")
sPL = Props.Get("PL")
sPR = Props.Get("PR")
sPT = Props.Get("PT")
sPX = Props.Get("PX")
sPY = Props.Get("PY")
sMA = Props.Get("MA")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-checkbox ref="${mName}" id="${mName}"></v-checkbox>"$).Get("#" & mName) 
	End If 
	'
	If BANano.IsNull(bDisabled) Or BANano.IsUndefined(bDisabled) Then
		bDisabled = False 
	End If
	If BANano.IsNull(bRequired) Or BANano.IsUndefined(bRequired) Then
		bRequired = False 
	End If
	
If BANano.IsNull(bMultiple) Or BANano.IsUndefined(bMultiple) Then
	bMultiple = False
End If

	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-checkbox" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("append-icon", sAppendIcon)
VElement.AddAttr("background-color", VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity))
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)

VElement.AddAttr(":error", sError)
VElement.SetData(sError, False)

VElement.AddAttr("error-count", sErrorCount)
VElement.AddAttr(":error-messages", sErrorMessages)
VElement.SetData(sErrorMessages, VElement.Newlist)

VElement.AddAttr("false-value", sFalseValue)
VElement.SetData(sFalseValue, False)

VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr("hint", sHint)
VElement.AddAttr(":indeterminate", sIndeterminate)
VElement.SetData(sIndeterminate, False)

'VElement.AddAttr(":input-value", sInputValue)
'VElement.SetData(sInputValue, Null)

VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":messages", sMessages)
VElement.SetData(sMessages, VElement.Newlist)

VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr("off-icon", sOffIcon)
VElement.AddAttr("on-icon", sOnIcon)
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
'
If BANano.IsNull(sTrueValue) Then 
	sTrueValue = True
End If
'
If BANano.IsNull(sFalseValue) Then 
	sFalseValue = False
End If
'
VElement.AddAttr("value", sTrueValue)


If bChecked Then
	sValue = sTrueValue
Else
	sValue = sFalseValue	
End If

If bMultiple = False Then
	VElement.SetData(sVModel, sValue)
Else
	VElement.SetData(sVModel, VElement.NewList)
End If

VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
VElement.MA = sMA
VElement.MB = sMB
VElement.ML = sML
VElement.MR = sMR
VElement.MT = sMT
VElement.MX = sMX
VElement.MY = sMY
VElement.PA = sPA
VElement.PB = sPB
VElement.PL = sPL
VElement.PR = sPR
VElement.PT = sPT
VElement.PX = sPX
VElement.PY = sPY
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

Sub AddClass(s As String) As VCheckBox 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VCheckBox 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VCheckBox 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VCheckBox 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VCheckBox 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update Error
Sub UpdateError(VC As VueComponent, vError As Object)
VC.SetData(sError, vError)
End Sub

'Update ErrorMessages
Sub UpdateErrorMessages(VC As VueComponent, vErrorMessages As Object)
VC.SetData(sErrorMessages, vErrorMessages)
End Sub

'Clear ErrorMessages
Sub ClearErrorMessages(VC As VueComponent)
VC.SetData(sErrorMessages, VC.NewList)
End Sub


'Update Indeterminate
Sub UpdateIndeterminate(VC As VueComponent, vIndeterminate As Object)
VC.SetData(sIndeterminate, vIndeterminate)
End Sub

'Update InputValue
'Sub UpdateInputValue(VC As VueComponent, vInputValue As Object)
'VC.SetData(sInputValue, vInputValue)
'End Sub

'Update Messages
Sub UpdateMessages(VC As VueComponent, vMessages As Object)
VC.SetData(sMessages, vMessages)
End Sub

'Clear Messages
Sub ClearMessages(VC As VueComponent)
VC.SetData(sMessages, VC.NewList)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadonly, vReadonly)
End Sub

'Clear Rules
Sub ClearRules(VC As VueComponent)
VC.SetData(sRules, VC.NewList)
End Sub

'Update Success
Sub UpdateSuccess(VC As VueComponent, vSuccess As Object)
VC.SetData(sSuccess, vSuccess)
End Sub

'Update SuccessMessages
Sub UpdateSuccessMessages(VC As VueComponent, vSuccessMessages As Object)
VC.SetData(sSuccessMessages, vSuccessMessages)
End Sub

'Clear SuccessMessages
Sub ClearSuccessMessages(VC As VueComponent)
VC.SetData(sSuccessMessages, VC.NewList)
End Sub

'Update VModel
Sub SetValue(VC As VueComponent, b As Boolean)
	If b Then
		VC.SetData(sVModel, sTrueValue)
	Else
		VC.SetData(sVModel, sFalseValue)
	End If
End Sub

'get value
Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
	Return res
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
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
		VElement.SetData(sRequired, True)
	bRequired = true
End Sub

Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		VC.SetCallBack(k, cb)
	Next
End Sub