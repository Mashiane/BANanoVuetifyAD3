﻿B4J=true
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
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Accordion, DisplayName: Accordion, FieldType: Boolean, DefaultValue: False, Description: Accordion
#DesignerProperty: Key: Popout, DisplayName: Popout, FieldType: Boolean, DefaultValue: False, Description: Popout
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
'
#DesignerProperty: Key: Value, DisplayName: Active Panel*, FieldType: String, DefaultValue: 1, Description: Active Panel Number
#DesignerProperty: Key: ItemContents, DisplayName: ReadMe Items*, FieldType: String, DefaultValue:  Item contents IDs are [componentname][item]content. You can add containers with these item IDS or use BANano.LoadLayout with the 'Content' call here, Description: Item Contents
#DesignerProperty: Key: ItemKeys, DisplayName: Tab Keys (Key)(;)*, FieldType: String, DefaultValue:  , Description: Tab Keys
#DesignerProperty: Key: ItemTitles, DisplayName: Tab Titles (Value)(;)*, FieldType: String, DefaultValue:  , Description: Tab Titles
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Focusable, DisplayName: Focusable, FieldType: Boolean, DefaultValue: True, Description: Focusable
#DesignerProperty: Key: Inset, DisplayName: Inset, FieldType: Boolean, DefaultValue: False, Description: Inset
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: False, Description: Mandatory
#DesignerProperty: Key: MaxValue, DisplayName: MaxValue, FieldType: String, DefaultValue: , Description: MaxValue
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Tag, DisplayName: Tag, FieldType: String, DefaultValue: , Description: Tag
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VExpansionPanels component.
'Definition of variables used in this VExpansionPanels component.
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
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bAbsolute As Boolean
Private sTransition As String
Private sElevation As String
Private sHeight As String
Private sMinHeight As String
Private sMaxHeight As String
Private sWidth As String
Private sMinWidth As String
Private sMaxWidth As String
Private sRounded As String
Private bShrink As Boolean
Private bGrow As Boolean
Private bDense As Boolean
End Sub
'Initializes the VExpansionPanels component.
'Initializes the VExpansionPanels component.
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
sVModel = $"${mName}value"$
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VExpansionPanels
'This builds the HTML tree based on defined properties for VExpansionPanels
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
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
sVOn = Props.GetDefault("VOn", "")
sValue = Props.GetDefault("Value", "")
sItemKeys = Props.GetDefault("ItemKeys", "")
sItemTitles = Props.GetDefault("ItemTitles", "")
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = Props.GetDefault("Disabled",False)
bDisabled = BANanoShared.parseBool(bDisabled)
bAbsolute = Props.GetDefault("Absolute", False)
mAttributes = Props.GetDefault("Attributes", "")
sTransition = Props.GetDefault("Transition", "")
sElevation = Props.GetDefault("Elevation", "")
sHeight = Props.GetDefault("Height", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMaxHeight = Props.GetDefault("MaxHeight", "")
sWidth = Props.GetDefault("Width", "")
sMinWidth = Props.GetDefault("MinWidth", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sRounded = Props.GetDefault("Rounded", "")
bTile = BANanoShared.parseBool(bTile)
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
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
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
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
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.Absolute = bAbsolute
VElement.Hover = bHover
VElement.Transition = sTransition
VElement.Elevation = sElevation
VElement.Height = sHeight
VElement.MinHeight = sMinHeight
VElement.MaxHeight = sMaxHeight
VElement.Width = sWidth
VElement.MinWidth = sMinWidth
VElement.MaxWidth = sMaxWidth
VElement.AddClass(sRounded)
VElement.Tile = bTile
VElement.AddClassOnCondition("shrink", bShrink, True)
VElement.AddAttr(":grow", bGrow)
VElement.AddAttr(":dense", bDense)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End if
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
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
Sub AddToParent(targetID As String)
mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
DesignerCreateView(mTarget, Null)
End Sub
'Remove the component, this is a design time call on Initialize
'Remove the component, this is a design time call on Initialize
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
'Hide the component at runtime, needs BindState
'Hide the component at runtime, needs BindState
Sub Hide
VC.SetData(sVIf, False)
VC.SetData(sVShow, False)
End Sub
'Show the component at runtime, needs BindState
'Show the component at runtime, needs BindState
Sub Show
VC.SetData(sVIf, True)
VC.SetData(sVShow, True)
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
'Returns the name of the component. This is what you typed on the name property in b4j
'Returns the name of the component. This is what you typed on the name property in b4j
Sub getID As String
Return mName
End Sub
'Returns the name of the component with # infront for use with BANano.LoadLayout
'Returns the name of the component with # infront for use with BANano.LoadLayout
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
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
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
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXSOnly
AddClass("hidden-xs-only")
End Sub
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMOnly
AddClass("d-sm-none d-md-flex")
End Sub
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDOnly
AddClass("d-md-none d-lg-flex")
End Sub
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGOnly
AddClass("d-lg-none d-xl-flex")
End Sub
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXLOnly
AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
'End Sub
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndDown
AddClass("hidden-sm-and-down")
End Sub
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndDown
AddClass("hidden-md-and-down")
End Sub
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndDown
AddClass("hidden-lg-and-down")
End Sub
'Sub HiddenXLAndDown
'End Sub
'
'Sub HiddenXSAndUp
'End Sub
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndUp
AddClass("hidden-sm-and-up")
End Sub
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndUp
AddClass("hidden-md-and-up")
End Sub
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndUp
AddClass("hidden-lg-and-up")
End Sub
'Sub HiddenXLAndUp
'End Sub
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenOnAll
AddClass("d-none")
End Sub
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXS
AddClass("hidden-xs-only")
End Sub
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnSM
AddClass("d-sm-none d-md-flex")
End Sub
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnMD
AddClass("d-md-none d-lg-flex")
End Sub
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnLG
AddClass("d-lg-none d-xl-flex")
End Sub
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXL
AddClass("d-xl-none")
End Sub
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnAll
AddClass("d-flex")
End Sub
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXS
AddClass("d-flex d-sm-none")
End Sub
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnSM
AddClass("d-none d-sm-flex d-md-none")
End Sub
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnMD
AddClass("d-none d-md-flex d-lg-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnLG
AddClass("d-none d-lg-flex d-xl-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXL
AddClass("d-none d-xl-flex")
End Sub
Sub Enable
UpdateDisabled(VC, False)
End Sub
Sub Disable
UpdateDisabled(VC, True)
End Sub
'update text decoration none
Sub UpdateTextDecoration(s As String)
VElement.UpdateTextDecoration(VC, s)
End Sub
Sub UpdateTextDecorationOnApp(A As VuetifyApp, s As String)
VElement.UpdateTextDecorationOnApp(A, s)
End Sub
Sub UpdateTruncate(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTruncateOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
'update line through
Sub UpdateLineThrough(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThroughOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
'update font thin
Sub UpdateFontThin(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThinOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
'update font light
Sub UpdateFontLight(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLightOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
'update underline
Sub UpdateUnderLine(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLineOnApp(A As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
a.SetData(VElement.bindClass, eClass)
End Sub
'update overline
Sub UpdateOverline(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverlineOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
'update bold
Sub UpdateBold(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBoldOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
'update font weight black
Sub UpdateFontWeightBlack(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlackOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
'update italic
Sub UpdateItalic(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalicOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
'update text color
Sub UpdateTextColor(xColor As String, xIntensity As String)
VElement.UpdateTextColor(VC, xColor, xIntensity)
End Sub
Sub UpdateTextColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateTextColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateColor(xColor As String, xIntensity As String)
VElement.UpdateColor(VC, xColor, xIntensity)
End Sub
Sub UpdateColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateColorOnApp(c, xColor, xIntensity)
End Sub
'update text align
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub
'add a class at runtime
'Toggle a class at runtime, needs BindState
'Toggle a class at runtime, needs BindState
Sub ToggleClass(sClass As String)
VElement.ToggleClassRuntime(VC, sClass)
End Sub
'add a class at runtime
'Toggle a clas at runtime, neeeds BindState
'Toggle a clas at runtime, neeeds BindState
Sub ToggleClassOnApp(A As VuetifyApp, sClass As String)
VElement.ToggleClassOnApp(A, sClass)
End Sub
'add a class at runtime
'Add a class at runtime, needs BindState
'Add a class at runtime, needs BindState
Sub AddClassRT(sClass As String)
VElement.AddClassRuntime(VC, sClass)
End Sub
'Add a class at runtime, needs BindState
'Add a class at runtime, needs BindState
Sub AddClassOnApp(A As VuetifyApp, sClass As String)
VElement.AddClassRuntimeOnAPp(A, sClass)
End Sub
'remove a class at runtime
'Removes a class at runtime, needs BindState
'Removes a class at runtime, needs BindState
Sub RemoveClassRT(sClass As String)
VElement.RemoveClassRuntime(VC, sClass)
End Sub
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub RemoveClass(sClass As String)
VElement.RemoveClass(sClass)
End Sub
'Removes a class at runtime, needs BindState
'Removes a class at runtime, needs BindState
Sub RemoveClassOnApp(A As VuetifyApp, sClass As String)
VElement.RemoveClassRuntimeOnApp(A, sClass)
End Sub
'Add style at runtime, needs BindState
'Add style at runtime, needs BindState
Sub AddStyleRT(prop As String, value As String)
VElement.AddStyleRunTime(VC , prop, value)
End Sub
'Removes a style at runtime, needs BindState
'Removes a style at runtime, needs BindState
Sub RemoveStyleRT(prop As String)
VElement.RemoveStyleRunTime(VC , prop)
End Sub
'Add a style at runtime. Use CamelCase, needs BindState
'Add a style at runtime. Use CamelCase, needs BindState
Sub AddStyleOnApp(A As VuetifyApp, prop As String, value As String)
VElement.AddStyleOnAPp(A , prop, value)
End Sub
'Removes a style at runtime. Use CamelCase, needs BindState
'Removes a style at runtime. Use CamelCase, needs BindState
Sub RemoveStyleOnApp(A As VuetifyApp, prop As String)
VElement.RemoveStyleOnApp(A , prop)
End Sub
'bind an attribute and set its default
'Bind this attribute to this state name and specify a default value, needs BindState
'Bind this attribute to this state name and specify a default value, needs BindState
Sub BindDefault(prop As String, varName As String, def As Object)
VElement.Bind(prop, varName)
VElement.SetData(varName, def)
End Sub
'bind an attribute default is set as null
'Bind this attribute to this state name, needs BindState
'Bind this attribute to this state name, needs BindState
Sub Bind(prop As String, varName As String)
VElement.Bind(prop, varName)
VElement.SetData(varName, Null)
End Sub
Sub getHTML As String
If mElement <> Null Then
Return mElement.GetHTML
Else
Return ""
End If
End Sub
Sub UpdateActivePanel(ai As Int)
VC.SetData(sVModel, ai)
End Sub
Sub UpdateActivePanelOnApp(A As VuetifyApp, ai As Int)
A.SetData(sVModel, ai)
End Sub
Sub UpdateValue(ai As Int)
VC.SetData(sVModel, ai)
End Sub
Sub UpdateValuePanelOnApp(A As VuetifyApp, ai As Int)
A.SetData(sVModel, ai)
End Sub