B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel/Visible, FieldType: String, DefaultValue: hover1, Description: VModel
#DesignerProperty: Key: HoverSlot, DisplayName: HoverSlot, FieldType: Boolean, DefaultValue: False, Description: HoverSlot
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VHover component.
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
Private sCloseDelay As String
Private sDisabled As String
Private sKey As String
Private sOpenDelay As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVOn As String
Private sVModel As String
Private bHoverSlot As Boolean
Private bDisabled As Boolean
Private bHidden As Boolean
Private VC As VueComponent
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bAbsolute As Boolean
Private bHover As Boolean
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private sTransition As String
Private sElevation As String
Private sHeight As String
Private sMinHeight As String
Private sMaxHeight As String
Private sWidth As String
Private sMinWidth As String
Private sMaxWidth As String
Private sRounded As String
Private bTile As Boolean
Private bShrink As Boolean
Private bGrow As Boolean
Private bFlat As Boolean
Private bDense As Boolean
End Sub
'Initializes the VHover component.
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
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VHover
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
mClasses = Props.Get("Classes")
mStyles = Props.Get("Styles")
mAttributes = Props.Get("Attributes")
sCloseDelay = Props.Get("CloseDelay")
sKey = Props.Get("Key")
sOpenDelay = Props.Get("OpenDelay")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
sVModel = Props.Get("VModel")
bHoverSlot = Props.Get("HoverSlot")
bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDefault("Hidden", False)
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = BANanoShared.parseBool(bDisabled)
bAbsolute = Props.GetDefault("Absolute", False)
bHover = Props.GetDefault("Hover", False)
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
mAttributes = Props.GetDefault("Attributes", "")
mClasses = Props.GetDefault("Classes", "")
mStyles = Props.GetDefault("Styles", "")
sTransition = Props.GetDefault("Transition", "")
sElevation = Props.GetDefault("Elevation", "")
sHeight = Props.GetDefault("Height", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMaxHeight = Props.GetDefault("MaxHeight", "")
sWidth = Props.GetDefault("Width", "")
sMinWidth = Props.GetDefault("MinWidth", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sRounded = Props.GetDefault("Rounded", "")
bTile = Props.GetDefault("Tile", False)
bTile = BANanoShared.parseBool(bTile)
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
End If
'
bHoverSlot = BANanoShared.parseBool(bHoverSlot)
bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bDisabled = BANanoShared.parseBool(bDisabled)
Dim sbHover As String = ""
If bHoverSlot Then
sbHover = $"v-slot="{ hover }""$
End If
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
mElement = mTarget.Append($"<v-hover ref="${mName}" ${sbHover} id="${mName}"></v-hover>"$).Get("#" & mName)
End If
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "v-hover"
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Attributes = mAttributes
VElement.AddAttr("close-delay", sCloseDelay)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr("key", sKey)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
If bHidden Then
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, Not(bHidden))
End If
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.Absolute = bAbsolute
VElement.Hover = bHover
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
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
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":dense", bDense)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End If
VElement.BindAllEvents
End Sub
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
Sub AddToParent(targetID As String)
mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
DesignerCreateView(mTarget, Null)
End Sub
'Remove the component, this is a design time call on Initialize
Sub Remove()
mElement.Remove
BANano.SetMeToNull
End Sub
Sub AddClass(s As String) As VHover
VElement.AddClass(s)
Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VHover
VElement.SetAttr(p, v)
Return Me
End Sub
Sub AddStyle(p As String, v As String) As VHover
VElement.AddStyle(p, v)
Return Me
End Sub
Sub RemoveAttr(p As String) As VHover
VElement.RemoveAttr(p)
Return Me
End Sub
Sub UpdateVisible(C As VueComponent, b As Boolean) As VHover
C.SetData(sVIf, b)
C.SetData(sVModel, b)
Return Me
End Sub
'Hide the component at runtime, needs BindState
Sub Hide
VC.SetData(sVIf, False)
VC.SetData(sVModel, False)
End Sub
'Show the component at runtime, needs BindState
Sub Show
VC.SetData(sVIf, True)
VC.SetData(sVModel, True)
End Sub
Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VHover
C.SetData(sVIf, b)
C.SetData(sVModel, b)
Return Me
End Sub
'Returns the name of the component. This is what you typed on the name property in b4j
Sub getID As String
Return mName
End Sub
'Returns the name of the component with # infront for use with BANano.LoadLayout
Sub getHere As String
Return $"#${mName}"$
End Sub
Sub UpdateDisabled(C As VueComponent, b As Boolean)
bDisabled = b
C.SetData(sDisabled, b)
End Sub
Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
bDisabled = b
C.SetData(sDisabled, b)
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
Sub HiddenXSOnly
AddClass("hidden-xs-only")
End Sub
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMOnly
AddClass("d-sm-none d-md-flex")
End Sub
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDOnly
AddClass("d-md-none d-lg-flex")
End Sub
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGOnly
AddClass("d-lg-none d-xl-flex")
End Sub
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXLOnly
AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
'End Sub
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndDown
AddClass("hidden-sm-and-down")
End Sub
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndDown
AddClass("hidden-md-and-down")
End Sub
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
Sub HiddenSMAndUp
AddClass("hidden-sm-and-up")
End Sub
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndUp
AddClass("hidden-md-and-up")
End Sub
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndUp
AddClass("hidden-lg-and-up")
End Sub
'Sub HiddenXLAndUp
'End Sub
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenOnAll
AddClass("d-none")
End Sub
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXS
AddClass("hidden-xs-only")
End Sub
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnSM
AddClass("d-sm-none d-md-flex")
End Sub
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnMD
AddClass("d-md-none d-lg-flex")
End Sub
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnLG
AddClass("d-lg-none d-xl-flex")
End Sub
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXL
AddClass("d-xl-none")
End Sub
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnAll
AddClass("d-flex")
End Sub
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXS
AddClass("d-flex d-sm-none")
End Sub
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnSM
AddClass("d-none d-sm-flex d-md-none")
End Sub
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnMD
AddClass("d-none d-md-flex d-lg-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnLG
AddClass("d-none d-lg-flex d-xl-none")
End Sub
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
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub
'Toggle a class at runtime, needs BindState
Sub ToggleClass(sClass As String)
VElement.ToggleClassRuntime(VC, sClass)
End Sub
'Toggle a clas at runtime, neeeds BindState
Sub ToggleClassOnApp(A As VuetifyApp, sClass As String)
VElement.ToggleClassOnApp(A, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassRT(sClass As String)
VElement.AddClassRuntime(VC, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassOnApp(A As VuetifyApp, sClass As String)
VElement.AddClassRuntimeOnAPp(A, sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassRT(sClass As String)
VElement.RemoveClassRuntime(VC, sClass)
End Sub
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub RemoveClass(sClass As String)
VElement.RemoveClass(sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassOnApp(A As VuetifyApp, sClass As String)
VElement.RemoveClassRuntimeOnApp(A, sClass)
End Sub
'Add style at runtime, needs BindState
Sub AddStyleRT(prop As String, value As String)
VElement.AddStyleRunTime(VC , prop, value)
End Sub
'Removes a style at runtime, needs BindState
Sub RemoveStyleRT(prop As String)
VElement.RemoveStyleRunTime(VC , prop)
End Sub
'Add a style at runtime. Use CamelCase, needs BindState
Sub AddStyleOnApp(A As VuetifyApp, prop As String, value As String)
VElement.AddStyleOnAPp(A , prop, value)
End Sub
'Removes a style at runtime. Use CamelCase, needs BindState
Sub RemoveStyleOnApp(A As VuetifyApp, prop As String)
VElement.RemoveStyleOnApp(A , prop)
End Sub
'Bind this attribute to this state name and specify a default value, needs BindState
Sub BindDefault(prop As String, varName As String, def As Object)
VElement.Bind(prop, varName)
VElement.SetData(varName, def)
End Sub
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