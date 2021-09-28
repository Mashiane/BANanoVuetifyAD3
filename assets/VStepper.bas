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
#Event: Change (item As Int)
'stp1content
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: AltLabels, DisplayName: AltLabels, FieldType: Boolean, DefaultValue: False, Description: Place labels beneath step
#DesignerProperty: Key: NonLinear, DisplayName: NonLinear, FieldType: Boolean, DefaultValue: False, Description: Allow user to jump to any step
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: False, Description: Vertical
'
#DesignerProperty: Key: ItemContents, DisplayName: ReadMe Items*, FieldType: String, DefaultValue:  Item contents IDs are [componentname][step]content. You can add containers with these item IDS or use BANano.LoadLayout with the 'Content' call here passing it the step number. This uses step numbers no keys, Description: Item Contents
#DesignerProperty: Key: Value, DisplayName: Active Step*, FieldType: String, DefaultValue: 1, Description: Value
#DesignerProperty: Key: ItemSteps, DisplayName: Item Steps ReadMe*, FieldType: String, DefaultValue:  1; 2; 3, Description: Item Steps examples
#DesignerProperty: Key: ItemTitles, DisplayName: Item Titles (;), FieldType: String, DefaultValue:  , Description: Item Titles
#DesignerProperty: Key: ItemDescriptions, DisplayName: Item Descriptions (;), FieldType: String, DefaultValue: , Description: Item Descriptions
#DesignerProperty: Key: ItemEditable, DisplayName: Item Editable (Y/N;), FieldType: String, DefaultValue:  , Description: Item Colors
#DesignerProperty: Key: ItemComplete, DisplayName: Item Complete (Y/N;), FieldType: String, DefaultValue:  , Description: Item Texts
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: Tag, DisplayName: Tag, FieldType: String, DefaultValue: , Description: Tag
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
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VStepper component.
'Definition of variables used in this VStepper component.
Sub Class_Globals
Private sItemTitles As String
Private sItemDescriptions As String
Private sItemComplete As String
Private sItemEditable As String
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
Private bAltLabels As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private sElevation As String
Private bFlat As Boolean
Private sHeight As String
Private bHidden As Boolean   'ignore
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bNonLinear As Boolean
Private bOutlined As Boolean
Private sRounded As String
Private bShaped As Boolean
Private sTag As String
Private bTile As Boolean
Private sVBind As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private bVertical As Boolean
Private sWidth As String
Private xSteps As Int
Private VC As VueComponent						'ignore
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bDisabled As Boolean
Private sDisabled As String
Private bAbsolute As Boolean
Private bHover As Boolean
Private sTransition As String
Private bShrink As Boolean
Private bGrow As Boolean
Private bDense As Boolean
End Sub
'Initializes the VStepper component.
'Initializes the VStepper component.
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
xSteps = 0
sVModel = $"${mName}value"$
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VStepper
'This builds the HTML tree based on defined properties for VStepper
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
mClasses = Props.GetDefault("Classes", "")
mStyles = Props.GetDefault("Styles", "")
mAttributes = Props.GetDefault("Attributes","")
bAltLabels = Props.GetDefault("AltLabels", False)
sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDark = Props.GetDefault("Dark", False)
sElevation = Props.GetDefault("Elevation", "")
bFlat = Props.GetDefault("Flat", False)
sHeight = Props.GetDefault("Height", "")
bHidden = Props.GetDefault("Hidden", False)
bLight = Props.GetDefault("Light", False)
sMaxHeight = Props.GetDefault("MaxHeight", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMinWidth = Props.GetDefault("MinWidth", "")
bNonLinear = Props.GetDefault("NonLinear", False)
bOutlined = Props.GetDefault("Outlined", False)
sRounded = Props.GetDefault("Rounded", "")
bShaped = Props.GetDefault("Shaped", False)
sTag = Props.GetDefault("Tag", "")
bTile = Props.GetDefault("Tile", False)
sVBind = Props.GetDefault("VBind", "")
sVIf = Props.GetDefault("VIf", "")
sVOn = Props.GetDefault("VOn", "")
sValue = Props.GetDefault("Value", "")
bVertical = Props.GetDefault("Vertical", False)
sWidth = Props.GetDefault("Width", "")
sItemTitles = Props.GetDefault("ItemTitles", "")
sItemDescriptions = Props.GetDefault("ItemDescriptions", "")
sItemComplete = Props.GetDefault("ItemComplete", "")
sItemEditable = Props.GetDefault("ItemEditable", "")
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
bHover = Props.GetDefault("Hover", False)
mAttributes = Props.GetDefault("Attributes", "")
sTransition = Props.GetDefault("Transition", "")
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
bAltLabels = BANanoShared.parseBool(bAltLabels)
bDark = BANanoShared.parseBool(bDark)
bFlat = BANanoShared.parseBool(bFlat)
bLight = BANanoShared.parseBool(bLight)
bNonLinear = BANanoShared.parseBool(bNonLinear)
bOutlined = BANanoShared.parseBool(bOutlined)
bShaped = BANanoShared.parseBool(bShaped)
bTile = BANanoShared.parseBool(bTile)
bVertical = BANanoShared.parseBool(bVertical)
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
mElement = mTarget.Append($"<v-stepper ref="${mName}" id="${mName}"></v-stepper>"$).Get("#" & mName)
End If
'
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "v-stepper"
'
If bVertical = False Then
'add header
VElement.Append($"<v-stepper-header id="${mName}stepperheader"></v-stepper-header>"$)
'add contents
VElement.Append($"<v-stepper-items id="${mName}stepperitems"></v-stepper-items>"$)
End If
'
sItemTitles = sItemTitles.Replace(",", ";")
sItemDescriptions = sItemDescriptions.Replace(",", ";")
sItemComplete = sItemComplete.Replace(",", ";")
sItemEditable = sItemEditable.Replace(",", ";")
'
Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
Dim xdescriptions As List = BANanoShared.StrParse(";", sItemDescriptions)
Dim xcomplete As List = BANanoShared.StrParse(";", sItemComplete)
Dim xeditable As List = BANanoShared.StrParse(";", sItemEditable)
'
xtitles = BANanoShared.ListTrimItems(xtitles)
xdescriptions = BANanoShared.ListTrimItems(xdescriptions)
xcomplete = BANanoShared.ListTrimItems(xcomplete)
xeditable = BANanoShared.ListTrimItems(xeditable)
'
xSteps = 0
Dim tItems As Int = xtitles.Size - 1
Dim cItems As Int
For cItems = 0 To tItems
Dim t As String = BANanoShared.GetListItem(xtitles, cItems)
Dim d As String = BANanoShared.GetListItem(xdescriptions, cItems)
Dim c As String = BANanoShared.GetListItem(xcomplete, cItems)
Dim e As String = BANanoShared.GetListItem(xeditable, cItems)
'
c = c.ToLowerCase
e = e.tolowercase
Dim bc As Boolean = BANano.IIf(c = "y", True, False)
Dim be As Boolean = BANano.IIf(e = "y", True, False)
Dim bd As Boolean = BANano.IIf(cItems = tItems, False, True)
'
AddItem(t, d, bc, be, bd)
Next
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Attributes = mAttributes
VElement.AddAttr(":alt-labels", bAltLabels)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":non-linear", bNonLinear)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr("rounded", sRounded)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr("tag", sTag)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.SetData(sVModel, sValue)
VElement.AddAttr(":vertical", bVertical)
VElement.AddAttr("width", sWidth)
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.SetData(sDisabled, bDisabled)
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
Sub Item(iStep As Int) As String
Dim sitem As String = $"#${mName}${iStep}content"$
Return sitem
End Sub
'add items and then bind element
Sub AddItem(sTitle As String, sDescription As String, bComplete As Boolean, bEditable As Boolean, bDivider As Boolean)
If sTitle = "" Then Return
xSteps = xSteps + 1
Dim tabID As String = $"${mName}${xSteps}"$
'add a tab
If bVertical = False Then
VElement.GetStepperHeader.Append($"<v-stepper-step id="${tabID}step" :rules="${tabID}rules" :editable="${tabID}editable" :complete="${tabID}complete" step="${xSteps}">${sTitle}</v-stepper-step>"$)
If bDivider Then
VElement.GetStepperHeader.Append($"<v-divider></v-divider>"$)
End If
'
VElement.GetStepperItems.Append($"<v-stepper-content id="${tabID}content" step="${xSteps}"></v-stepper-content>"$)
Else
VElement.Append($"<v-stepper-step id="${tabID}step" :rules="${tabID}rules" :editable="${tabID}editable" :complete="${tabID}complete" step="${xSteps}">${sTitle}</v-stepper-step>"$)
VElement.Append($"<v-stepper-content id="${tabID}content" step="${xSteps}"></v-stepper-content>"$)
End If
'
If sDescription <> "" Then
VElement.GetStep(xSteps).Append($"<small>${sDescription}</small>"$)
End If
VElement.SetData($"${tabID}complete"$, bComplete)
VElement.SetData($"${tabID}editable"$, bEditable)
VElement.SetData($"${tabID}rules"$, VElement.NewList)
End Sub
'content string for loadlayout
Sub Content(iStep As Int) As String
Dim contentID As String = $"${mName}${iStep}content"$
Dim sitem As String = $"#${contentID}"$
Return sitem
End Sub
Sub UpdateItemComplete(C As VueComponent, stepN As Int, bComplete As Boolean)
Dim s As String = $"${mName}${stepN}complete"$
C.SetData(s, bComplete)
End Sub
Sub UpdateItemEditable(C As VueComponent, stepN As Int, bEditable As Boolean)
Dim s As String = $"${mName}${stepN}editable"$
C.SetData(s, bEditable)
End Sub
Sub UpdateItemCompleteOnApp(C As VuetifyApp, stepN As Int, bComplete As Boolean)
Dim s As String = $"${mName}${stepN}complete"$
C.SetData(s, bComplete)
End Sub
Sub UpdateItemEditableOnApp(C As VuetifyApp, stepN As Int, bEditable As Boolean)
Dim s As String = $"${mName}${stepN}editable"$
C.SetData(s, bEditable)
End Sub
Sub AddItemRule(stepN As Int, MethodName As String)
Dim s As String = $"${mName}${stepN}step"$
Dim itemx As VueElement
itemx.Initialize(mCallBack, s, s)
itemx.AddRule(MethodName)
VElement.BindVueElement(itemx)
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
Sub AddClass(s As String) As VStepper
VElement.AddClass(s)
Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VStepper
VElement.SetAttr(p, v)
Return Me
End Sub
Sub AddStyle(p As String, v As String) As VStepper
VElement.AddStyle(p, v)
Return Me
End Sub
Sub RemoveAttr(p As String) As VStepper
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
Sub UpdateVisible(C As VueComponent, b As Boolean) As VStepper
C.SetData(sVIf, b)
C.SetData(sVShow, b)
Return Me
End Sub
'Update Value
Sub UpdateValue(C As VueComponent, vValue As Object)
C.SetData(sVModel, vValue)
End Sub
'get Value
Sub GetValue(C As VueComponent) As String
Dim res As Object = C.GetData(sVModel)
Return res
End Sub
Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VStepper
C.SetData(sVIf, b)
C.SetData(sVShow, b)
Return Me
End Sub
'Update Value
Sub UpdateValueOnApp(C As VuetifyApp, vValue As Object)
C.SetData(sVModel, vValue)
End Sub
'get Value
Sub GetValueOnApp(C As VuetifyApp) As String
Dim res As Object = C.GetData(sVModel)
Return res
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
Sub UpdateActiveStep(ai As Int)
VC.SetData(sVModel, ai)
End Sub
Sub UpdateActiveStepOnApp(A As VuetifyApp, ai As Int)
A.SetData(sVModel, ai)
End Sub
'update text decoration none
Sub UpdateTextDecoration(s As String)
VElement.UpdateTextDecoration(VC, s)
End Sub
'update text color
Sub UpdateTextColor(aColor As String, xIntensity As String)
VElement.UpdateTextColor(VC, aColor, xIntensity)
End Sub
Sub UpdateTextColorOnApp(C As VuetifyApp, aColor As String, xIntensity As String)
VElement.UpdateTextColorOnApp(c, aColor, xIntensity)
End Sub
Sub UpdateColor(aColor As String, xIntensity As String)
VElement.UpdateColor(VC, aColor, xIntensity)
End Sub
Sub UpdateColorOnApp(C As VuetifyApp, aColor As String, xIntensity As String)
VElement.UpdateColorOnApp(c, aColor, xIntensity)
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
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub