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

'Custom BANano View class
#Event: HeaderClick (item As Int)
#Event: PanelChange (e As BANanoEvent)
#Event: PanelClick (item As Int)

#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: expansionpanel1, Description: VModel
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Value, DisplayName: Open Panel, FieldType: String, DefaultValue: 1, Description: Open Panel
#DesignerProperty: Key: Accordion, DisplayName: Accordion, FieldType: Boolean, DefaultValue: False, Description: Accordion
'
#DesignerProperty: Key: ItemKeys, DisplayName: Tab Keys (;)*, FieldType: String, DefaultValue:  , Description: Tab Keys
#DesignerProperty: Key: ItemTitles, DisplayName: Tab Titles (;)*, FieldType: String, DefaultValue:  , Description: Tab Titles
'
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Focusable, DisplayName: Focusable, FieldType: Boolean, DefaultValue: False, Description: Focusable
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
#DesignerProperty: Key: Inset, DisplayName: Inset, FieldType: Boolean, DefaultValue: False, Description: Inset
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: False, Description: Mandatory
#DesignerProperty: Key: MaxValue, DisplayName: MaxValue, FieldType: String, DefaultValue: , Description: MaxValue
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: Popout, DisplayName: Popout, FieldType: Boolean, DefaultValue: False, Description: Popout
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Tag, DisplayName: Tag, FieldType: String, DefaultValue: , Description: Tag
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
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
	Private bAccordion As Boolean
Private sActiveClass As String
Private bDark As Boolean
Private bDisabled As Boolean
Private bFlat As Boolean
Private bFocusable As Boolean
Private bHidden As Boolean
Private bHover As Boolean
Private bInset As Boolean
Private bLight As Boolean
Private bMandatory As Boolean
Private sMaxValue As String
Private bMultiple As Boolean
Private bPopout As Boolean
Private bReadonly As Boolean
Private sTag As String
Private bTile As Boolean
Private sVBind As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private sDisabled As String
Private sReadOnly As String 
Private xpanel As Int
Private sItemKeys As String
	Private sItemTitles As String
	Private VC As VueComponent
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
	xpanel = 0
	sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bAccordion = Props.GetDefault("Accordion", False)
		sActiveClass = Props.GetDefault("ActiveClass", "")
		bDark = Props.GetDefault("Dark", False)
		bDisabled = Props.GetDefault("Disabled", False)
		bFlat = Props.GetDefault("Flat", False)
		bFocusable = Props.GetDefault("Focusable", False)
		bHidden = Props.GetDefault("Hidden", False)
		bHover = Props.GetDefault("Hover", False)
		bInset = Props.GetDefault("Inset", False)
		bLight = Props.GetDefault("Light", False)
		bMandatory = Props.GetDefault("Mandatory", False)
		sMaxValue = Props.GetDefault("MaxValue", "")
		bMultiple = Props.GetDefault("Multiple", False)
		bPopout = Props.GetDefault("Popout", False)
		bReadonly = Props.GetDefault("Readonly", False)
		sTag = Props.GetDefault("Tag", "")
		bTile = Props.GetDefault("Tile", False)
		sVBind = Props.GetDefault("VBind", "")
		sVIf = Props.GetDefault("VIf", "")
		sVModel = Props.GetDefault("VModel", "")
		sVOn = Props.GetDefault("VOn", "")
		sValue = Props.GetDefault("Value", "") 
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemTitles = Props.GetDefault("ItemTitles", "")
	End If 
	'
	bAccordion = BANanoShared.parseBool(bAccordion)
bDark = BANanoShared.parseBool(bDark)
bDisabled = BANanoShared.parseBool(bDisabled)
bFlat = BANanoShared.parseBool(bFlat)
bFocusable = BANanoShared.parseBool(bFocusable)
bHidden = BANanoShared.parseBool(bHidden)
bHover = BANanoShared.parseBool(bHover)
bInset = BANanoShared.parseBool(bInset)
bLight = BANanoShared.parseBool(bLight)
bMandatory = BANanoShared.parseBool(bMandatory)
bMultiple = BANanoShared.parseBool(bMultiple)
bPopout = BANanoShared.parseBool(bPopout)
bReadonly = BANanoShared.parseBool(bReadonly)
bTile = BANanoShared.parseBool(bTile)

	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-expansion-panels ref="${mName}" id="${mName}"></v-expansion-panels>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-expansion-panels" 
	'
	Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim xtitles As List = BANanoShared.StrParseComma(";", sItemTitles)
	'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		'	
		AddItem1(iKey, iTit)
	Next
	
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":accordion", bAccordion)
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)
	VElement.AddAttr(":flat", bFlat)
	VElement.AddAttr(":focusable", bFocusable)
	VElement.AddAttr(":hover", bHover)
	VElement.AddAttr(":inset", bInset)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":mandatory", bMandatory)
	VElement.AddAttr("max", sMaxValue)
	VElement.AddAttr(":multiple", bMultiple)
	VElement.AddAttr(":popout", bPopout)
	VElement.AddAttr(":readonly", sReadOnly)
	VElement.SetData(sReadOnly, bReadonly)
	VElement.AddAttr("tag", sTag)
	VElement.AddAttr(":tile", bTile)
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, sValue)
	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
End Sub

'add the next item
Sub AddItem1(sKey As String, sTitle As String)
	Dim panelID As String = $"${mName}${sKey}panel"$
	Dim headerID As String = $"${mName}${sKey}header"$
	Dim contentID As String = $"${mName}${sKey}content"$
	Dim disabledID As String = $"${mName}${sKey}disabled"$
	Dim readonlyID As String = $"${mName}${sKey}readonly"$
	
	'add a panel
	VElement.Append($"<v-expansion-panel :disabled="${disabledID}" :readonly="${readonlyID}" id="${panelID}"></v-expansion-panel>"$)
	VElement.GetPanel(sKey).Append($"<v-expansion-panel-header id="${headerID}">${sTitle}</v-expansion-panel-header>"$)
	VElement.GetPanel(sKey).Append($"<v-expansion-panel-content id="${contentID}"></v-expansion-panel-content>"$)
	'
	VElement.SetData(disabledID, False)
	VElement.SetData(readonlyID, False)
	'
	Dim hdr As VueElement = VElement.GetPanelHeader(sKey)
	hdr.SetOnEventOwn(mCallBack, $"${mName}_headerclick"$, "click", sKey)
	VElement.BindVueElement(hdr)
	'
	Dim pnl As VueElement = VElement.GetPanel(sKey)
	pnl.SetOnEventOwn(mCallBack, $"${mName}_panelclick"$, "click", sKey)
	pnl.SetOnEventOwn(mCallBack, $"${mName}_panelchange"$, "change", "")
	VElement.BindVueElement(pnl)
End Sub

'add the next item
Sub AddItem(sTitle As String)
	xpanel = xpanel + 1
	AddItem1(xpanel, sTitle)
End Sub

'disable item at position
Sub UpdateItemDisabled(C As VueComponent, pos As String, b As Boolean) As VExpansionPanels 
	Dim disabledID As String = $"${mName}${pos}disabled"$
	C.SetData(disabledID, b) 
	Return Me 
End Sub

'disable item at position
Sub UpdateItemDisabledOnApp(C As VuetifyApp, pos As String, b As Boolean) As VExpansionPanels 
	Dim disabledID As String = $"${mName}${pos}disabled"$
	C.SetData(disabledID, b) 
	Return Me 
End Sub

'update readonly item at position
Sub UpdateItemReadOnly(C As VueComponent, pos As String, b As Boolean) As VExpansionPanels 
	Dim readonlyID As String = $"${mName}${pos}readonly"$
	C.SetData(readonlyID, b)
	Return Me 
End Sub

'update readonly item at position
Sub UpdateItemReadOnlyOnApp(C As VuetifyApp, pos As String, b As Boolean) As VExpansionPanels 
	Dim readonlyID As String = $"${mName}${pos}readonly"$
	C.SetData(readonlyID, b)
	Return Me 
End Sub

'content string for loadlayout
Sub Content(sID As String) As String
	Dim contentID As String = $"${mName}${sID}content"$
	Dim sitem As String = $"#${contentID}"$
	Return sitem
End Sub

'content string for loadlayout
Sub Item(sID As String) As String
	Dim contentID As String = $"${mName}${sID}content"$
	Dim sitem As String = $"#${contentID}"$
	Return sitem
End Sub

'header string for loadlayout
Sub Header(sID As String) As String
	Dim contentID As String = $"${mName}${sID}header"$
	Dim sitem As String = $"#${contentID}"$
	Return sitem
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VExpansionPanels 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VExpansionPanels 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VExpansionPanels 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VExpansionPanels 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VExpansionPanels 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateDisabled(C As VueComponent, b As Boolean) As VExpansionPanels 
	C.SetData(sDisabled, b) 
	Return Me 
End Sub

Sub UpdateReadOnly(C As VueComponent, b As Boolean) As VExpansionPanels 
	C.SetData(sReadOnly, b)
	Return Me 
End Sub

Sub UpdateOpen(C As VueComponent, i As Int) As VExpansionPanels 
	C.SetData(sVModel, i)
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VExpansionPanels 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean) As VExpansionPanels 
	C.SetData(sDisabled, b) 
	Return Me 
End Sub

Sub UpdateReadOnlyOnApp(C As VuetifyApp, b As Boolean) As VExpansionPanels 
	C.SetData(sReadOnly, b)
	Return Me 
End Sub

Sub UpdateOpenOnApp(C As VuetifyApp, i As Int) As VExpansionPanels 
	C.SetData(sVModel, i)
	Return Me 
End Sub


Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'get open active panel
Sub GetOpen(C As VueComponent) As Int
	Dim res As String = C.GetData(sVModel)
	Return res
End Sub


'get open active panel
Sub GetOpenOnApp(C As VuetifyApp) As Int
	Dim res As String = C.GetData(sVModel)
	Return res
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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub

Sub Enable
	UpdateDisabled(VC, False)
End Sub

Sub Disable
	UpdateDisabled(VC, True)
End Sub