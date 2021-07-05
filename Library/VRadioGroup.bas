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
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: rg1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: False, Description: Mandatory
#DesignerProperty: Key: ItemValue, DisplayName: ItemValue, FieldType: String, DefaultValue: value, Description: ItemValue
#DesignerProperty: Key: ItemText, DisplayName: ItemText, FieldType: String, DefaultValue: text, Description: ItemText
#DesignerProperty: Key: ItemDisabled, DisplayName: ItemDisabled, FieldType: String, DefaultValue: disabled, Description: ItemDisabled
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (;), FieldType: String, DefaultValue:  , Description: Item Values
#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
'
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Alignment, DisplayName: Alignment, FieldType: String, DefaultValue: row, Description: Alignment, List: column|none|row
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: , Description: Backgroundcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: Error, DisplayName: Error, FieldType: String, DefaultValue: , Description: Error
#DesignerProperty: Key: ErrorCount, DisplayName: ErrorCount, FieldType: String, DefaultValue: , Description: ErrorCount
#DesignerProperty: Key: ErrorMessages, DisplayName: ErrorMessages, FieldType: String, DefaultValue: , Description: ErrorMessages
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: MaxValue, DisplayName: Max, FieldType: String, DefaultValue: , Description: MaxValue
#DesignerProperty: Key: Messages, DisplayName: Messages, FieldType: String, DefaultValue: , Description: Messages
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: PersistentHint, DisplayName: PersistentHint, FieldType: Boolean, DefaultValue: False, Description: PersistentHint
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue: , Description: Rules
#DesignerProperty: Key: Success, DisplayName: Success, FieldType: String, DefaultValue: , Description: Success
#DesignerProperty: Key: SuccessMessages, DisplayName: SuccessMessages, FieldType: String, DefaultValue: , Description: SuccessMessages
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
Private sError As String
Private sErrorCount As String
Private sErrorMessages As String
Private bHidden As Boolean
Private bHideDetails As Boolean
Private sHint As String
Private sLabel As String
Private bLight As Boolean
Private bMandatory As Boolean
Private sMaxValue As String
Private sMessages As String
Private bMultiple As Boolean
Private bPersistentHint As Boolean
Private sPrependIcon As String
Private bReadonly As Boolean
Private sRules As String
Private sSuccess As String
Private sSuccessMessages As String
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
sError = Props.GetDefault("Error", "")
sErrorCount = Props.GetDefault("ErrorCount", "")
sErrorMessages = Props.GetDefault("ErrorMessages", "")
bHidden = Props.GetDefault("Hidden", False)
bHideDetails = Props.GetDefault("HideDetails", False)
sHint = Props.GetDefault("Hint", "")
sLabel = Props.GetDefault("Label", "")
bLight = Props.GetDefault("Light", False)
bMandatory = Props.GetDefault("Mandatory", False)
sMaxValue = Props.GetDefault("MaxValue", "")
sMessages = Props.GetDefault("Messages", "")
bMultiple = Props.GetDefault("Multiple", False)
bPersistentHint = Props.GetDefault("PersistentHint", False)
sPrependIcon = Props.GetDefault("PrependIcon", "")
bReadonly = Props.GetDefault("Readonly", False)
sRules = Props.GetDefault("Rules", "")
sSuccess = Props.GetDefault("Success", "")
sSuccessMessages = Props.GetDefault("SuccessMessages", "")
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
	Dim rs As List
	rs.Initialize 
	'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemTitles = sItemTitles.Replace(",", ";")
		
	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	'
	xitems.Initialize 
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		AddItem(iKey, iTit)
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
	:key="item.${sItemValue}" :label="item.${sItemText}" :value="item.${sItemValue}"></v-radio>"$)
	
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

VElement.AddAttr(":error", sError)
VElement.SetData(sError, False)

VElement.AddAttr("error-count", sErrorCount)
VElement.AddAttr(":error-messages", sErrorMessages)
VElement.SetData(sErrorMessages, VElement.NewList)

VElement.AddAttr(":hide-details", bHideDetails)
VElement.AddAttr("hint", sHint)
VElement.AddAttr("label", sLabel)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":mandatory", bMandatory)
VElement.AddAttr("max", sMaxValue)
VElement.AddAttr(":messages", sMessages)
VElement.SetData(sMessages, VElement.NewList)

VElement.AddAttr(":multiple", bMultiple)
VElement.AddAttr(":persistent-hint", bPersistentHint)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr(":readonly", sReadOnly)
VElement.SetData(sReadOnly, bReadonly)

VElement.AddAttr(":rules", sRules)
VElement.SetData(sRules, VElement.NewList)

VElement.AddAttr(":success", sSuccess)
VElement.SetData(sSuccess, False)

VElement.AddAttr(":success-messages", sSuccessMessages)
VElement.SetData(sSuccessMessages, VElement.NewList)

VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr(":validate-on-blur", bValidateOnBlur)
VElement.AddAttr(":required", sRequired)
VElement.SetData(sRequired, bRequired)
VElement.SetData(sItems, xitems)
VElement.BindAllEvents
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
	bRequired = True
End Sub


'Update VModel
Sub SetValue(VC As VueComponent, vVModel As Object)
VC.SetData(sVModel, vVModel)
End Sub

'get value
Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
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
Sub Refresh(VC As VueComponent)
	VC.SetData(sItems, xitems)
End Sub


'Clear Items
Sub Clear(VC As VueComponent)
xitems.Initialize 
VC.SetData(sItems, VC.NewList)
End Sub

public Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

public Sub Remove() 
	mTarget.Empty 
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VRadioGroup 
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
VC.SetData(sReadOnly, vReadonly)
End Sub

'Update Rules
Sub UpdateRules(VC As VueComponent, vRules As Object)
VC.SetData(sRules, vRules)
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

'Update Value
Sub UpdateValue(VC As VueComponent, vValue As Object)
VC.SetData(sVModel, vValue)
End Sub


'set the item-text attribute
Sub setItemText(vItemText As String)
	sItemText = vItemText
End Sub

'get the item-text attribute
Sub getItemText As String
	Return sItemText
End Sub

'get the item value attribute
Sub getItemValue As String
	Return sItemValue
End Sub

'set the item-value attribute
Sub setItemValue(vItemValue As String)
	sItemValue = vItemValue
End Sub

'get the item disabled attribute
Sub getItemDisabled As String
	Return sItemDisabled
End Sub

'get the items
Sub getItems As String
	Return sItems
End Sub

'set the item-disabled attribute
Sub setItemDisabled(vItemDisabled As String)
	sItemDisabled = vItemDisabled
End Sub

'set the items attribute
Sub setItems(vItems As String)
	sItems = vItems
End Sub

'add items
Sub AddItem(value As String, text As String)
	Dim nm As Map = CreateMap()
	nm.Put(sItemValue, value)
	nm.Put(sItemText, text)
	xitems.Add(nm)
End Sub


'add object
Sub AddObject(nm As Map)
	xitems.Add(nm)
End Sub

'Update Items
Sub Reload(VC As VueComponent, vItems As Object)
	VC.SetData(sItems, vItems)
End Sub

'Update Items
Sub UpdateItems(VC As VueComponent, vItems As Object)
	VC.SetData(sItems, vItems)
End Sub


'convert a normal list to key value pairs
Sub UpdateItems1(VC As VueComponent, lst As List)
	Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
	VC.SetData(sItems, nl)
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


Sub OnChange(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_change"$, "change", args)
End Sub