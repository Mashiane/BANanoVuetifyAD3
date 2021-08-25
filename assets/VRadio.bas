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

#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: Radio1, Description: Label
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: radio1, Description: VModel
#DesignerProperty: Key: Checked, DisplayName: Checked, FieldType: Boolean, DefaultValue: False, Description: Checked
#DesignerProperty: Key: Value, DisplayName: Value (Multiple)*, FieldType: String, DefaultValue: radio1, Description: Value
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
'
'#DesignerProperty: Key: ItemValue, DisplayName: ItemValue*, FieldType: String, DefaultValue: value, Description: ItemValue
'#DesignerProperty: Key: ItemText, DisplayName: ItemText*, FieldType: String, DefaultValue: text, Description: ItemText
'#DesignerProperty: Key: ItemColor, DisplayName: ItemColor*, FieldType: String, DefaultValue: color, Description: ItemColor
'#DesignerProperty: Key: ItemDisabled, DisplayName: ItemDisabled*, FieldType: String, DefaultValue: disabled, Description: ItemDisabled
''
'#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
'#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (;), FieldType: String, DefaultValue:  , Description: Item Values
'#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
'#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  , Description: Item Colors

#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: OffIcon, DisplayName: OffIcon, FieldType: String, DefaultValue: , Description: OffIcon
#DesignerProperty: Key: OnIcon, DisplayName: OnIcon, FieldType: String, DefaultValue: , Description: OnIcon
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: String, DefaultValue: , Description: Readonly
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: False, Description: Ripple
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
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
	Private sActiveClass As String
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private sDisabled As String
	Private sKey As String
	Private sLabel As String
	Private bLight As Boolean
	Private sOffIcon As String
	Private sOnIcon As String
	Private sReadonly As String
	Private bRipple As Boolean
	Private sVBind As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	Private sVShow As String
	Private sValue As String
	 Private bDisabled As Boolean
	 Private bReadOnly As Boolean
	 Private bHidden As Boolean
	 Private bChecked As Boolean
	 Private bRequired As Boolean
	Private sRequired As String
'	Private sItemKeys As String
'	Private sItemTitles As String
'	Private sItemColors As String
'	Private sItemColor As String
'	Private sItems As String
'	Private xitems As List
'	Private sValue As String
'	Private sItemDisabled As String
'	Private sItemText As String
'	Private sItemValue As String
'	Private bMultiple As Boolean
	Private VC As VueComponent				'ignore
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
	sReadonly = $"${mName}readonly"$
	sVShow = $"${mName}show"$
	sRequired = $"${mName}required"$
	'sItems = $"${mName}items"$
	'xitems.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		sActiveClass = Props.GetDefault("ActiveClass", "")
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bDark = Props.GetDefault("Dark", False)
		bDisabled = Props.GetDefault("Disabled", False)
		sKey = Props.GetDefault("Key", "")
		sLabel = Props.GetDefault("Label", "Radio1")
		bLight = Props.GetDefault("Light", False)
		sOffIcon = Props.GetDefault("OffIcon", "")
		sOnIcon = Props.GetDefault("OnIcon", "")
		bReadOnly = Props.GetDefault("Readonly", False)
		bRipple = Props.GetDefault("Ripple", False)
		sVBind = Props.GetDefault("VBind", "")
		sVIf = Props.GetDefault("VIf", "")
		sVModel = Props.GetDefault("VModel", "radio1")
		sVOn = Props.GetDefault("VOn", "")
		sValue = Props.GetDefault("Value", "")
		bHidden = Props.GetDefault("Hidden", False)
		bChecked = Props.GetDefault("Checked", False)
		bRequired = Props.GetDefault("Required", False)
'		sItemDisabled = Props.GetDefault("ItemDisabled", "disabled")
'		sItemText = Props.GetDefault("ItemText","text")
'		sItemValue = Props.GetDefault("ItemValue","value")
'		sValue = Props.GetDefault("Value", "")
'		sItemKeys = Props.GetDefault("ItemKeys", "")
'		sItemTitles = Props.GetDefault("ItemTitles", "")
'		sItemColors = Props.getdefault("ItemColors", "")
'		sItemColor = Props.GetDefault("ItemColor", "color")
'		bMultiple = Props.GetDefault("Multiple", False)
	End If 
	' 
	bDark = BANanoShared.parseBool(bDark)
	bDisabled = BANanoShared.parseBool(bDisabled)
	bLight = BANanoShared.parseBool(bLight)
	bReadOnly = BANanoShared.parseBool(bReadOnly)
	bRipple = BANanoShared.parseBool(bRipple)
	bHidden = BANanoShared.parseBool(bHidden)
	bChecked = BANanoShared.parseBool(bChecked)
	bRequired = BANanoShared.parseBool(bRequired)
	'
	'we have multiple items
'	If bMultiple Then
'		sItemKeys = sItemKeys.Replace(",", ";")
'		sItemTitles = sItemTitles.Replace(",", ";")
'		sItemColors = sItemColors.Replace(",", ";")
'	
'		Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
'		Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
'		Dim xcolors As List = BANanoShared.StrParse(";", sItemColors)
'		'
'		xkeys = BANanoShared.ListTrimItems(xkeys)
'		xtitles = BANanoShared.ListTrimItems(xtitles)
'		xcolors = BANanoShared.ListTrimItems(xcolors)
'		'
'		xitems.Initialize
'		Dim tItems As Int = xkeys.Size - 1
'		For itemCnt = 0 To tItems
'			Dim iKey As String = xkeys.Get(itemCnt)
'			Dim iTit As String = xtitles.Get(itemCnt)
'			Dim iCol As String = xcolors.Get(itemCnt)
'			AddItemColor(iKey, iTit, iCol)
'		Next
'	End If

	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		'If bMultiple = False Then
			mElement = mTarget.Append($"<v-radio ref="${mName}" id="${mName}"></v-radio>"$).Get("#" & mName)
		'Else
		'	mElement = mTarget.Append($"<v-radio ref="${mName} "id="${mName}" v-for="item in ${sItems}" :disabled="item.${sItemDisabled}" :key="item.${sItemValue}" :label="item.${sItemText}" :value="item.${sItemValue}" :color="item.${sItemColor}"></v-radio>"$).Get("#" & mName)
		'End If
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-radio" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("active-class", sActiveClass)
	'If bMultiple = False Then
		VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
		VElement.AddAttr(":disabled", sDisabled)
		VElement.SetData(sDisabled, bDisabled)
		VElement.AddAttr("key", sKey)
		VElement.AddAttr("label", sLabel)
		VElement.AddAttr("value", sValue)		
		VElement.AddAttr(":required", sRequired)
		VElement.SetData(sRequired, bRequired)
	'End If
		
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr("off-icon", sOffIcon)
	VElement.AddAttr("on-icon", sOnIcon)
	VElement.AddAttr(":readonly", sReadonly)
	VElement.SetData(sReadonly, bReadOnly)

	VElement.AddAttr(":ripple", bRipple)
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, bChecked)
	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
		VElement.AddAttr("v-show", sVShow)
		VElement.SetData(sVShow, Not(bHidden))
	End If
	'
	'If bMultiple = False Then
		VElement.SetData(sVModel, sValue)
	'Else
	'	VElement.SetData(sVModel, VElement.NewList)
	'	VElement.SetData(sItems, xitems)
	'End If
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

Sub AddClass(s As String) As VRadio 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VRadio 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VRadio 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VRadio 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VRadio 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VRadio 
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
C.SetData(sReadonly, vReadonly)
End Sub

Sub UpdateReadonlyOnApp(C As VuetifyApp, vReadonly As Object)
C.SetData(sReadonly, vReadonly)
End Sub

'Update Value
'Sub UpdateValue(C As VueComponent, vValue As Object)
'C.SetData(sValue, vValue)
'End Sub


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


'Update VModel
Sub SetValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

Sub UpdateValue(C As VueComponent, vVModel As Object)
C.SetData(sVModel, vVModel)
End Sub

'get value
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

'get value
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


'
''Clear Items
'Sub Clear(C As VueComponent)
'	xitems.Initialize
'	C.SetData(sItems, C.NewList)
'End Sub
'
''add items
'Sub AddItem(value As String, text As String)
'	Dim nm As Map = CreateMap()
'	nm.Put(sItemValue, value)
'	nm.Put(sItemText, text)
'	nm.Put(sItemDisabled, False)
'	nm.Put(sItemColor, "")
'	xitems.Add(nm)
'End Sub
'
''add item with color
'Sub AddItemColor(value As String, text As String, color As String)
'	Dim nm As Map = CreateMap()
'	nm.Put(sItemValue, value)
'	nm.Put(sItemText, text)
'	nm.Put(sItemDisabled, False)
'	nm.Put(sItemColor, color)
'	xitems.Add(nm)
'End Sub
'
''add object
'Sub AddObject(nm As Map)
'	xitems.Add(nm)
'End Sub
'
''Update Items backward compatibility
'Sub Reload(C As VueComponent, vItems As Object)
'	C.SetData(sItems, vItems)
'End Sub
'
''Update Items
'Sub UpdateItems(C As VueComponent, vItems As Object)
'	C.SetData(sItems, vItems)
'End Sub
'
''convert a normal list to key value pairs for switches
'Sub UpdateItems1(C As VueComponent, lst As List)
'	Dim nl As List = BANanoShared.ListToDataSource(sItemValue, sItemText, lst)
'	C.SetData(sItems, nl)
'End Sub
'
''set checked items
'Sub SetChecked(C As VueComponent, vItems As List)
'	C.SetData(sVModel, vItems)
'End Sub
'
''get checked items
'Sub GetChecked(C As VueComponent) As List
'	Dim selitems As List = C.GetData(sVModel)
'	Return selitems
'End Sub
'
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