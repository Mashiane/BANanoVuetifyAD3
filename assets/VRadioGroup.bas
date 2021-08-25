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

#Event: Change(item As Object)
#Event: Click(e As BANanoEvent)
#Event: ClickAppend(e As BANanoEvent)
#Event: ClickPrepend(e As BANanoEvent)
#Event: MouseDown(e As BANanoEvent)
#Event: MouseUp(e As BANanoEvent)
#Event: UpdateError(B As Boolean)


#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: RadioGroup1, Description: Label
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: VModel, DisplayName: VModel*, FieldType: String, DefaultValue: rg1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Default Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: False, Description: Mandatory
#DesignerProperty: Key: ItemValue, DisplayName: ItemValue*, FieldType: String, DefaultValue: value, Description: ItemValue
#DesignerProperty: Key: ItemText, DisplayName: ItemText*, FieldType: String, DefaultValue: text, Description: ItemText
#DesignerProperty: Key: ItemColor, DisplayName: ItemColor*, FieldType: String, DefaultValue: color, Description: ItemColor
#DesignerProperty: Key: ItemDisabled, DisplayName: ItemDisabled*, FieldType: String, DefaultValue: disabled, Description: ItemDisabled
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (;), FieldType: String, DefaultValue:  , Description: Item Values
#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  , Description: Item Colors
'
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Alignment, DisplayName: Alignment, FieldType: String, DefaultValue: column, Description: Alignment, List: column|none|row
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
'#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
'#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: MaxValue, DisplayName: Max, FieldType: String, DefaultValue: , Description: MaxValue
'#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue: , Description: Messages
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
'#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
'#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ValidateOnBlur, DisplayName: ValidateOnBlur, FieldType: Boolean, DefaultValue: False, Description: ValidateOnBlur
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
	Private sItemKeys As String
	Private sItemTitles As String
	Private sItemColors As String
	Private sItemColor As String
	
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
	Private sActiveClass As String
Private sAlignment As String
Private sAppendIcon As String
Private sBackgroundColor As String
Private sBackgroundColorIntensity As String
Private bDense As Boolean
Private bDisabled As Boolean
'Private sError As String
'Private sErrorCount As String
'Private sErrorMessages As String
Private bHidden As Boolean
Private bHideDetails As Boolean
Private sHint As String
Private sLabel As String
Private bLight As Boolean
Private bMandatory As Boolean
Private sMaxValue As String
'Private sMessages As String
Private bMultiple As Boolean
Private bPersistentHint As Boolean
Private sPrependIcon As String
Private bReadonly As Boolean
Private sRules As String
'Private sSuccess As String
'Private sSuccessMessages As String
Private sVBind As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private bValidateOnBlur As Boolean
 Private sDisabled As String
 Private sReadOnly As String
 Private xitems As List
  Private sItems As String
 Private sItemText As String
 Private sItemValue As String
 Private sItemDisabled As String
 Private sValue As String
 Private sRequired As String
 Private bRequired As Boolean
	Private VC As VueComponent				''ignore
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
	sDisabled = $"${mName}disabled"$
	sReadOnly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	sRequired = $"${mName}required"$
	sItems = $"${mName}items"$
	xitems.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sActiveClass = Props.GetDefault("ActiveClass", "")
sAlignment = Props.GetDefault("Alignment", "row")
sAppendIcon = Props.GetDefault("AppendIcon", "")
sBackgroundColor = Props.GetDefault("BackgroundColor", "")
sBackgroundColorIntensity = Props.GetDefault("BackgroundColorIntensity", "")
bDense = Props.GetDefault("Dense", False)
bDisabled = Props.GetDefault("Disabled", False)
'sError = Props.GetDefault("Error", "")
'sErrorCount = Props.GetDefault("ErrorCount", "")
'sErrorMessages = Props.GetDefault("ErrorMessages", "")
bHidden = Props.GetDefault("Hidden", False)
bHideDetails = Props.GetDefault("HideDetails", False)
sHint = Props.GetDefault("Hint", "")
sLabel = Props.GetDefault("Label", "")
bLight = Props.GetDefault("Light", False)
bMandatory = Props.GetDefault("Mandatory", False)
sMaxValue = Props.GetDefault("MaxValue", "")
'sMessages = Props.GetDefault("Messages", "")
bMultiple = Props.GetDefault("Multiple", False)
bPersistentHint = Props.GetDefault("PersistentHint", False)
sPrependIcon = Props.GetDefault("PrependIcon", "")
bReadonly = Props.GetDefault("Readonly", False)
sRules = Props.GetDefault("Rules", "")
'sSuccess = Props.GetDefault("Success", "")
'sSuccessMessages = Props.GetDefault("SuccessMessages", "")
sVBind = Props.GetDefault("VBind", "")
sVIf = Props.GetDefault("VIf", "")
sVModel = Props.GetDefault("VModel", "")
sVOn = Props.GetDefault("VOn", "")
bValidateOnBlur = Props.GetDefault("ValidateOnBlur", False)
sItemDisabled = Props.GetDefault("ItemDisabled", "disabled")
sItemText = Props.GetDefault("ItemText","text")
sItemValue = Props.GetDefault("ItemValue","value")
sValue = Props.GetDefault("Value", "")
bRequired = Props.GetDefault("Required", False)
sItemKeys = Props.GetDefault("ItemKeys", "")
sItemTitles = Props.GetDefault("ItemTitles", "")
sItemColors = Props.getdefault("ItemColors", "")
sItemColor = Props.GetDefault("ItemColor", "color")
End If 
'
bDense = BANanoShared.parseBool(bDense)
bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bHideDetails = BANanoShared.parseBool(bHideDetails)
bLight = BANanoShared.parseBool(bLight)
bMandatory = BANanoShared.parseBool(bMandatory)
bMultiple = BANanoShared.parseBool(bMultiple)
bPersistentHint = BANanoShared.parseBool(bPersistentHint)
bReadonly = BANanoShared.parseBool(bReadonly)
bValidateOnBlur = BANanoShared.parseBool(bValidateOnBlur)
bRequired = BANanoShared.parseBool(bRequired)
'
'add the additional actions
	'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemTitles = sItemTitles.Replace(",", ";")
	sItemColors = sItemColors.Replace(",", ";")
	
	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
	Dim xcolors As List = BANanoShared.StrParse(";", sItemColors)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	xcolors = BANanoShared.ListTrimItems(xcolors)
	'
	xitems.Initialize 
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		Dim iCol As String = xcolors.Get(itemCnt)
		AddItemColor(iKey, iTit, iCol)
	Next
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-radio-group ref="${mName}" id="${mName}"></v-radio-group>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-radio-group" 
	
	VElement.Append($"<v-radio id="${mName}radio" v-for="(item, i) in ${sItems}" :disabled="item.${sItemDisabled}" _
	:key="item.${sItemValue}" :label="item.${sItemText}" :value="item.${sItemValue}" :color="item.${sItemColor}"></v-radio>"$)
	
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("active-class", sActiveClass)
Select Case sAlignment
Case "column"
VElement.AddAttr(":column", True)
Case "row"
VElement.AddAttr(":row", True)
End Select
VElement.AddAttr("append-icon", sAppendIcon)
VElement.AddAttr("background-color", VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity))
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)

'VElement.AddAttr(":error", sError)
'VElement.SetData(sError, False)

'VElement.AddAttr("error-count", sErrorCount)
'VElement.AddAttr(":error-messages", sErrorMessages)
'VElement.SetData(sErrorMessages, VElement.NewList)

VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr("hint", sHint)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":mandatory", bMandatory)
VElement.AddAttr("max", sMaxValue)
'VElement.AddAttr(":messages", sMessages)
'VElement.SetData(sMessages, VElement.NewList)

VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr(":readonly", sReadOnly)
VElement.SetData(sReadOnly, bReadonly)

VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.NewList)

'VElement.AddAttr(":success", sSuccess)
'VElement.SetData(sSuccess, False)

'VElement.AddAttr(":success-messages", sSuccessMessages)
'VElement.SetData(sSuccessMessages, VElement.NewList)

VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)
VElement.SetData(sItems, xitems)
VElement.BindAllEvents
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


'Update selected value
Sub SetValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

Sub UpdateValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

'get select value
Sub GetValue(C As VueComponent) As Object
	Dim res As Object = C.GetData(sVModel)
	Return res
End Sub

Sub SetValueOnApp(C As VuetifyApp, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

Sub UpdateValueOnApp(C As VuetifyApp, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

'get select value
Sub GetValueOnApp(C As VuetifyApp) As Object
	Dim res As Object = C.GetData(sVModel)
	Return res
End Sub

Sub getVModel As String
	Return sVModel
End Sub

Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub


'refresh the select
Sub Refresh(C As VueComponent)
	C.SetData(sItems, xitems)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sItems, xitems)
End Sub


'Clear Items
Sub Clear(C As VueComponent)
xitems.Initialize 
C.SetData(sItems, C.NewList)
End Sub

Sub ClearOnApp(C As VuetifyApp)
xitems.Initialize 
C.SetData(sItems, C.NewList)
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VRadioGroup 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VRadioGroup 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VRadioGroup 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VRadioGroup 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VRadioGroup 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VRadioGroup 
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

'Update Readonly
Sub UpdateReadonly(C As VueComponent, vReadonly As Object)
C.SetData(sReadOnly, vReadonly)
End Sub

Sub UpdateReadonlyOnApp(C As VuetifyApp, vReadonly As Object)
C.SetData(sReadOnly, vReadonly)
End Sub

'add items
Sub AddItem(value As String, text As String)
	Dim nm As Map = CreateMap()
	nm.Put(sItemValue, value)
	nm.Put(sItemText, text)
	nm.Put(sItemDisabled, False)
	nm.Put(sItemColor, "")
	xitems.Add(nm)
End Sub

'add item with color
Sub AddItemColor(value As String, text As String, color As String)
	Dim nm As Map = CreateMap()
	nm.Put(sItemValue, value)
	nm.Put(sItemText, text)
	nm.Put(sItemDisabled, False)
	nm.Put(sItemColor, color)
	xitems.Add(nm)
End Sub

'add object
Sub AddObject(nm As Map)
	xitems.Add(nm)
End Sub

'Update Items
Sub Reload(C As VueComponent, vItems As Object)
	C.SetData(sItems, vItems)
End Sub

Sub ReloadOnApp(C As VuetifyApp, vItems As Object)
	C.SetData(sItems, vItems)
End Sub

'Update Items
Sub UpdateItems(C As VueComponent, vItems As Object)
	C.SetData(sItems, vItems)
End Sub

Sub UpdateItemsOnApp(C As VuetifyApp, vItems As Object)
	C.SetData(sItems, vItems)
End Sub

'convert a normal list to key value pairs
Sub UpdateItems1(C As VueComponent, lst As List)
	Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
	C.SetData(sItems, nl)
End Sub

Sub UpdateItems1OnApp(C As VuetifyApp, lst As List)
	Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
	C.SetData(sItems, nl)
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