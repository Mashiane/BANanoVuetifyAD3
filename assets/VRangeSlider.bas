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


#Event: Change (nums As List)
#Event: Click (e As BANanoEVent)
#Event: ClickAppend (e As BANanoEVent)
#Event: ClickPrepend (e As BANanoEVent)
#Event: End (nums As List)
#Event: Input (nums As List)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: Start (nums As List)
#Event: UpdateError (b As Boolean)

#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Range Slider, Description: Label
#DesignerProperty: Key: MinValue, DisplayName: MinValue, FieldType: String, DefaultValue: 0, Description: MinValue
#DesignerProperty: Key: MaxValue, DisplayName: MaxValue, FieldType: String, DefaultValue: 100 , Description: MaxValue
#DesignerProperty: Key: StepValue, DisplayName: StepValue, FieldType: String, DefaultValue: 1, Description: StepValue
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: rangeslider1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Values (;), FieldType: String, DefaultValue: 10; 20, Description: Values
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required 

#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
'#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
'#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: InverseLabel, DisplayName: InverseLabel, FieldType: Boolean, DefaultValue: False, Description: InverseLabel
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: , Description: LoaderHeight
'#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue:  , Description: Messages
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
'#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
'#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
#DesignerProperty: Key: ThumbColor, DisplayName: ThumbColor, FieldType: String, DefaultValue: , Description: ThumbColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ThumbColorIntensity, DisplayName: Thumbcolorintensity, FieldType: String, DefaultValue: , Description: Thumbcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ThumbLabel, DisplayName: ThumbLabel, FieldType: String, DefaultValue: none, Description: ThumbLabel, List: always|none
#DesignerProperty: Key: ThumbSize, DisplayName: ThumbSize, FieldType: String, DefaultValue: , Description: ThumbSize
#DesignerProperty: Key: TickLabels, DisplayName: TickLabels, FieldType: String, DefaultValue: , Description: TickLabels
#DesignerProperty: Key: TickSize, DisplayName: TickSize, FieldType: String, DefaultValue: , Description: TickSize
#DesignerProperty: Key: Ticks, DisplayName: Ticks, FieldType: String, DefaultValue: none, Description: Ticks, List: always|none
#DesignerProperty: Key: TrackColor, DisplayName: TrackColor, FieldType: String, DefaultValue: , Description: TrackColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TrackColorIntensity, DisplayName: Trackcolorintensity, FieldType: String, DefaultValue: , Description: Trackcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TrackFillColor, DisplayName: TrackFillColor, FieldType: String, DefaultValue: , Description: TrackFillColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TrackFillColorIntensity, DisplayName: Trackfillcolorintensity, FieldType: String, DefaultValue: , Description: Trackfillcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: False, Description: ValidateOnBlur
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: False, Description: Vertical
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
'Private sError As String
'Private sErrorCount As String
'Private sErrorMessages As String
Private sHeight As String
Private bHideDetails As Boolean
Private sHint As String
Private bInverseLabel As Boolean
Private sKey As String
Private sLabel As String
Private bLight As Boolean
Private sLoaderHeight As String
Private sLoading As String
Private sMaxValue As String
'Private sMessages As String
Private sMinValue As String
Private bPersistentHint As Boolean
Private sPrependIcon As String
Private sReadonly As String
Private sRules As String
Private sStepValue As String
'Private sSuccess As String
'Private sSuccessMessages As String
Private sThumbColor As String
Private sThumbColorIntensity As String
Private sThumbLabel As String
Private sThumbSize As String
Private sTickLabels As String
Private sTickSize As String
Private sTicks As String
Private sTrackColor As String
Private sTrackColorIntensity As String
Private sTrackFillColor As String
Private sTrackFillColorIntensity As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private bValidateOnBlur As Boolean
Private bVertical As Boolean
 '
 Private bDisabled As Boolean
Private bHidden As Boolean
Private bLoading As Boolean
Private bReadonly As Boolean
Private bRequired As Boolean
Private sRequired As String
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
	sLoading = $"${mName}loading"$
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDefault("Hidden", False)
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
'sError = Props.Get("Error")
'sErrorCount = Props.Get("ErrorCount")
'sErrorMessages = Props.Get("ErrorMessages")
sHeight = Props.Get("Height")
bHideDetails = Props.Get("HideDetails")
sHint = Props.Get("Hint")
bInverseLabel = Props.Get("InverseLabel")
sKey = Props.Get("Key")
sLabel = Props.Get("Label")
bLight = Props.Get("Light")
sLoaderHeight = Props.Get("LoaderHeight")
sLoading = Props.Get("Loading")
sMaxValue = Props.Get("MaxValue")
'sMessages = Props.Get("Messages")
sMinValue = Props.Get("MinValue")
bPersistentHint = Props.Get("PersistentHint")
sPrependIcon = Props.Get("PrependIcon")
sRules = Props.Get("Rules")
sStepValue = Props.Get("StepValue")
'sSuccess = Props.Get("Success")
'sSuccessMessages = Props.Get("SuccessMessages")
sThumbColor = Props.Get("ThumbColor")
sThumbColorIntensity = Props.Get("ThumbColorIntensity")
sThumbLabel = Props.Get("ThumbLabel")
sThumbSize = Props.Get("ThumbSize")
sTickLabels = Props.Get("TickLabels")
sTickSize = Props.Get("TickSize")
sTicks = Props.Get("Ticks")
sTrackColor = Props.Get("TrackColor")
sTrackColorIntensity = Props.Get("TrackColorIntensity")
sTrackFillColor = Props.Get("TrackFillColor")
sTrackFillColorIntensity = Props.Get("TrackFillColorIntensity")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
bValidateOnBlur = Props.Get("ValidateOnBlur")
bVertical = Props.Get("Vertical")
 sValue = Props.GetDefault("Value","10;20")
	End If 
	'
	bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bLoading = BANanoShared.parseBool(bLoading)
bReadonly = BANanoShared.parseBool(bReadonly)
bRequired = BANanoShared.parseBool(bRequired)
bDark = BANanoShared.parseBool(bDark)
bDense = BANanoShared.parseBool(bDense)
bHideDetails = BANanoShared.parseBool(bHideDetails)
bInverseLabel = BANanoShared.parseBool(bInverseLabel)
bLight = BANanoShared.parseBool(bLight)
bPersistentHint = BANanoShared.parseBool(bPersistentHint)
bValidateOnBlur = BANanoShared.parseBool(bValidateOnBlur)
bVertical = BANanoShared.parseBool(bVertical)
bDisabled = BANanoShared.parseBool(bDisabled)
bRequired = BANanoShared.parseBool(bRequired)
bLoading = BANanoShared.parseBool(bLoading)
	
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-range-slider ref="${mName}" id="${mName}"></v-range-slider>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-range-slider" 
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

'VElement.AddAttr(":error", sError)
'VElement.SetData(sError, False)

'VElement.AddAttr("error-count", sErrorCount)
'VElement.AddAttr(":error-messages", sErrorMessages)
'VElement.SetData(sErrorMessages, VElement.NewList)

VElement.AddAttr("height", sHeight)
VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr("hint", sHint)
VElement.AddAttr(":inverse-label", bInverseLabel)
VElement.AddAttr("key", sKey)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("loader-height", sLoaderHeight)
VElement.AddAttr(":loading", sLoading)
VElement.SetData(sLoading, bLoading)

VElement.AddAttr("max", sMaxValue)
'VElement.AddAttr(":messages", sMessages)
'VElement.SetData(sMessages, VElement.NewList)

VElement.AddAttr("min", sMinValue)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr(":readonly", sReadonly)
VElement.SetData(sReadonly, bReadonly)

VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.NewList)

VElement.AddAttr("step", sStepValue)
'VElement.AddAttr(":success", sSuccess)
'VElement.SetData(sSuccess, False)

'VElement.AddAttr(":success-messages", sSuccessMessages)
'VElement.SetData(sSuccessMessages, VElement.NewList)

VElement.AddAttr("thumb-color", VElement.BuildColor(sThumbColor, sThumbColorIntensity))
VElement.AddAttr("thumb-label", sThumbLabel)
VElement.AddAttr("thumb-size", sThumbSize)
VElement.AddAttr(":tick-labels", sTickLabels)
VElement.SetData(sTickLabels, VElement.NewList)

VElement.AddAttr("tick-size", sTickSize)
VElement.AddAttr("ticks", sTicks)
VElement.AddAttr("track-color", VElement.BuildColor(sTrackColor, sTrackColorIntensity))
VElement.AddAttr("track-fill-color", VElement.BuildColor(sTrackFillColor, sTrackFillColorIntensity))
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)

Dim sval1 As String = "10"
Dim sval2 As String = "50"
'
If sValue.Contains(";") Then
	sval1 = BANanoShared.MvField(sValue, 1, ";")
	sval1 = sval1.trim
	sval1 = BANano.parseInt(sval1)
	'
	sval2 = BANanoShared.MvField(sValue, 2, ";")
	sval2 = sval2.trim
	sval2 = BANano.parseInt(sval2)
End If

Dim vals As List
vals.Initialize 
vals.Add(sval1)
vals.Add(sval2)
VElement.SetData(sVModel, vals)

VElement.AddAttr("v-on", sVOn)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
VElement.AddAttr(":vertical", bVertical)

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

Sub AddClass(s As String) As VRangeSlider 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VRangeSlider 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VRangeSlider 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VRangeSlider 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VRangeSlider 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VRangeSlider 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub


Sub UpdateDisabledOnApp(C As VuetifyApp, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub

''Update Error
'Sub UpdateError(C As VueComponent, vError As Object)
'C.SetData(sError, vError)
'End Sub
'
''Update ErrorMessages
'Sub UpdateErrorMessages(C As VueComponent, vErrorMessages As Object)
'C.SetData(sErrorMessages, vErrorMessages)
'End Sub
'
''Clear ErrorMessages
'Sub ClearErrorMessages(C As VueComponent)
'C.SetData(sErrorMessages, C.NewList)
'End Sub

'Update Loading
Sub UpdateLoading(C As VueComponent, vLoading As Object)
C.SetData(sLoading, vLoading)
End Sub

Sub UpdateLoadingOnApp(C As VuetifyApp, vLoading As Object)
C.SetData(sLoading, vLoading)
End Sub

'Update Messages
'Sub UpdateMessages(C As VueComponent, vMessages As Object)
'C.SetData(sMessages, vMessages)
'End Sub
'
''Clear Messages
'Sub ClearMessages(C As VueComponent)
'C.SetData(sMessages, C.NewList)
'End Sub

'Update Readonly
Sub UpdateReadonly(C As VueComponent, vReadonly As Object)
C.SetData(sReadonly, vReadonly)
End Sub

Sub UpdateReadonlyOnApp(C As VuetifyApp, vReadonly As Object)
C.SetData(sReadonly, vReadonly)
End Sub

'add a rule
'<code>
'Sub AddRule(v As String) As Object	'ignoredeadcode
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
	bRequired = True
End Sub

'Clear Rules
'Sub ClearRules(C As VueComponent)
'C.SetData(sRules, C.NewList)
'End Sub

''Update Success
'Sub UpdateSuccess(C As VueComponent, vSuccess As Object)
'C.SetData(sSuccess, vSuccess)
'End Sub
'
''Update SuccessMessages
'Sub UpdateSuccessMessages(C As VueComponent, vSuccessMessages As Object)
'C.SetData(sSuccessMessages, vSuccessMessages)
'End Sub
'
''Clear SuccessMessages
'Sub ClearSuccessMessages(C As VueComponent)
'C.SetData(sSuccessMessages, C.NewList)
'End Sub

'Update TickLabels
Sub UpdateTickLabels(C As VueComponent, vTickLabels As Object)
C.SetData(sTickLabels, vTickLabels)
End Sub

Sub UpdateTickLabelsOnApp(C As VuetifyApp, vTickLabels As Object)
C.SetData(sTickLabels, vTickLabels)
End Sub


'Clear TickLabels
Sub ClearTickLabels(C As VueComponent)
C.SetData(sTickLabels, C.NewList)
End Sub

Sub ClearTickLabelsOnApp(C As VuetifyApp)
C.SetData(sTickLabels, C.NewList)
End Sub

'get values
Sub GetValue(C As VueComponent) As List
	Dim res As List = C.GetData(sVModel)
	Return res
End Sub

Sub GetValueOnApp(C As VuetifyApp) As List
	Dim res As List = C.GetData(sVModel)
	Return res
End Sub

'Update value
Sub SetValue(C As VueComponent, iStart As Int, iEnd As Int)
	Dim res As List
	res.Initialize 
	res.Add(iStart)
	res.Add(iEnd)
	C.SetData(sVModel, res)
End Sub

Sub UpdateValue(C As VueComponent, iStart As Int, iEnd As Int)
	Dim res As List
	res.Initialize 
	res.Add(iStart)
	res.Add(iEnd)
	C.SetData(sVModel, res)
End Sub

Sub SetValueOnApp(C As VuetifyApp, iStart As Int, iEnd As Int)
	Dim res As List
	res.Initialize 
	res.Add(iStart)
	res.Add(iEnd)
	C.SetData(sVModel, res)
End Sub

Sub UpdateValueOnApp(C As VuetifyApp, iStart As Int, iEnd As Int)
	Dim res As List
	res.Initialize 
	res.Add(iStart)
	res.Add(iEnd)
	C.SetData(sVModel, res)
End Sub


Sub getVModel As String
	Return sVModel
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

Sub OnChange(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_change"$, "change", args)
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