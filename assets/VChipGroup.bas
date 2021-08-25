B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (changed As Object)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (;), FieldType: String, DefaultValue:  , Description: Item Values
#DesignerProperty: Key: ItemTitles, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  , Description: Item Texts
'
#DesignerProperty: Key: Filter, DisplayName: Filter, FieldType: Boolean, DefaultValue: True, Description: Filter
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: normal, Description: Size, List: x-small|small|normal|large|x-large

#DesignerProperty: Key: ActiveClass, DisplayName: Active Class, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: CenterActive, DisplayName: Center Active, FieldType: Boolean, DefaultValue: False, Description: CenterActive
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Column, DisplayName: Column, FieldType: Boolean, DefaultValue: False, Description: Column
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: False, Description: Mandatory
#DesignerProperty: Key: MaxValue, DisplayName: Max Selections, FieldType: String, DefaultValue: , Description: Max Selections
#DesignerProperty: Key: MobileBreakpoint, DisplayName: Mobile Breakpoint, FieldType: String, DefaultValue: , Description: MobileBreakpoint
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: ShowArrows, DisplayName: Show Arrows, FieldType: Boolean, DefaultValue: False, Description: ShowArrows
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
	Private bFilter As Boolean
	Private bOutlined As Boolean
	Private sSize As String
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
	Private bCenterActive As Boolean
	Private sColor As String
	Private sColorIntensity As String
	Private bColumn As Boolean
	Private bDark As Boolean
	Private bHidden As Boolean
	Private bLight As Boolean
	Private bMandatory As Boolean
	Private sMaxvalue As String
	Private sMobileBreakpoint As String
	Private bMultiple As Boolean
	Private bShowArrows As Boolean
	Private sVIf As String
	Private sVShow As String
	Private sValue As String
 	Private sVModel As String
	Private items As List
	Private sitems As String
	Private sItemKeys As String
	Private sItemTitles As String
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
	sitems = $"${mName}items"$
	items.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sActiveClass = Props.GetDefault("ActiveClass", "")
		bCenterActive = Props.GetDefault("CenterActive", False)
		bCenterActive = BANanoShared.parseBool(bCenterActive)
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bColumn = Props.GetDefault("Column", False)
		bColumn = BANanoShared.parseBool(bColumn)
		bDark = Props.GetDefault("Dark", False)
		bDark = BANanoShared.parseBool(bDark)
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		bLight = Props.GetDefault("Light", False)
		bLight = BANanoShared.parseBool(bLight)
		bMandatory = Props.GetDefault("Mandatory", False)
		bMandatory = BANanoShared.parseBool(bMandatory)
		sMaxvalue = Props.GetDefault("Maxvalue", "")
		sMobileBreakpoint = Props.GetDefault("MobileBreakpoint", "")
		bMultiple = Props.GetDefault("Multiple", False)
		bMultiple = BANanoShared.parseBool(bMultiple)
		bShowArrows = Props.GetDefault("ShowArrows", False)
		bShowArrows = BANanoShared.parseBool(bShowArrows)
		sVIf = Props.GetDefault("VIf", "")
		sValue = Props.GetDefault("Value", "")
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemTitles = Props.GetDefault("ItemTitles", "")
		sVModel = Props.GetDefault("VModel", "")
		bOutlined = Props.GetDefault("Outlined", False)
		bOutlined = BANanoShared.parseBool(bOutlined)
		sSize = Props.GetDefault("Size","normal")
		bFilter = Props.GetDefault("Filter", False)
		bFilter = BANanoShared.parseBool(bFilter)
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-chip-group ref="${mName}" id="${mName}"></v-chip-group>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-chip-group"
	'add the chip
	VElement.Append($"<v-chip id="${mName}chip" v-for="item in ${sitems}" :value="item.id" :key="item.id">{{ item.text }}</v-chip>"$)
	'
	Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParseComma(";", sItemTitles)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	'
	items.Initialize 
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		AddItem(iKey, iTit)
	Next
	VElement.SetData(sitems, items)
	 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":center-active", bCenterActive)
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":column", bColumn)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":mandatory", bMandatory)
	VElement.AddAttr("max", sMaxvalue)
	VElement.AddAttr("mobile-breakpoint", sMobileBreakpoint)
	VElement.AddAttr(":multiple", bMultiple)
	VElement.AddAttr(":show-arrows", bShowArrows)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
		VElement.AddAttr("v-show", sVShow)
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddAttr("value", sValue)
	VElement.AddAttr("v-model", sVModel)
	'
	VElement.GetChip.AddAttr(":filter", bFilter)
	VElement.GetChip.AddAttr(":outlined", bOutlined)
	
	Select Case sSize
	Case "x-small"
		VElement.GetChip.XSmall = True
	Case "small"
		VElement.GetChip.Small = True
	Case "large"
		VElement.GetChip.Large = True
	Case "x-large"	
		VElement.GetChip.XLarge = True
	End Select
	'
	If bMultiple Then
		Dim sel As List
		sel.Initialize 
		If sValue <> "" Then
			sel.Add(sValue)
		End If
		VElement.SetData(sVModel, sel)
	Else
		VElement.SetData(sVModel, sValue)	
	End If
	VElement.BindAllEvents
End Sub

'add items
Sub AddItem(value As String, text As String)
	Dim nm As Map = CreateMap()
	nm.Put("id", value)
	nm.Put("text", text)
	items.Add(nm)
End Sub


Sub UpdateItems(C As VueComponent, vItems As Object)
	C.SetData(sitems, vItems)
End Sub


Sub UpdateItemsOnApp(C As VuetifyApp, vItems As Object)
	C.SetData(sitems, vItems)
End Sub

Sub Refresh(C As VueComponent)
	C.SetData(sitems, items)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sitems, items)
End Sub


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

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
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

Sub BindState(c As VueComponent)
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

'get the chip
Sub GetChip As VChip
	Dim skey As String = $"${mName}chip"$
	Dim iChip As VChip
	iChip.Initialize(mCallBack, skey, skey)	
	Return iChip
End Sub

'Clear the items
Sub Clear(C As VueComponent)
	items.Initialize 
	C.SetData(sitems, items)
End Sub

'Clear the items
Sub ClearOnApp(C As VuetifyApp)
	items.Initialize 
	C.SetData(sitems, items)
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mTarget.Empty 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VChipGroup 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VChipGroup 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VChipGroup 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VChipGroup 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VChipGroup 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(VC As VuetifyApp, b As Boolean) As VChipGroup 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'update selected item
Sub SetValue(VC As VueComponent, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub

Sub UpdateValue(VC As VueComponent, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub

'get selected item
Sub GetValue(VC As VueComponent) As Object 
	Dim res As Object = VC.GetData(sVModel) 
	Return res 
End Sub


'update selected item
Sub SetSelected(VC As VueComponent, xitems As List) 
	VC.SetData(sVModel, xitems) 
End Sub

'get selected item
Sub GetSelected(VC As VueComponent) As List 
	Dim res As List = VC.GetData(sVModel) 
	Return res 
End Sub

'update selected item
Sub SetValueOnApp(VC As VuetifyApp, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub

Sub UpdateValueOnApp(VC As VuetifyApp, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub

'get selected item
Sub GetValueOnApp(VC As VuetifyApp) As Object 
	Dim res As Object = VC.GetData(sVModel) 
	Return res 
End Sub

'update selected item
Sub SetSelectedOnApp(VC As VuetifyApp, xitems As List) 
	VC.SetData(sVModel, xitems) 
End Sub

'get selected item
Sub GetSelectedOnApp(VC As VuetifyApp) As List 
	Dim res As List = VC.GetData(sVModel) 
	Return res 
End Sub
