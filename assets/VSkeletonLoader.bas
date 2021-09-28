B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: SkeletonType, DisplayName: Types, FieldType: String, DefaultValue: card, Description: Types(s)
#DesignerProperty: Key: OwnTypes, DisplayName: Choose Type, FieldType: String, DefaultValue: none, Description: Types(s), List: actions|article|avatar|button|card|card-avatar|card-heading|chip|date-picker|date-picker-options|date-picker-days|heading|image|list-item|list-item-avatar|list-item-two-line|list-item-avatar-two-line|list-item-three-line|list-item-avatar-three-line|paragraph|sentences|table|table-heading|table-thead|table-tbody|table-row-divider|table-row|table-cell|table-tfoot|text|none
#DesignerProperty: Key: Boilerplate, DisplayName: Boilerplate, FieldType: Boolean, DefaultValue: false, Description: Boilerplate
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: 300, Description: MaxWidth
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VSkeletonLoader component.
'Definition of variables used in this VSkeletonLoader component.
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
Private bBoilerplate As Boolean
Private bDark As Boolean
Private sElevation As String
Private sHeight As String
Private bLight As Boolean
Private sLoading As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sSkeletonType As String
Private bTile As Boolean
Private sTransition As String
Private sVIf As String
Private sVShow As String
Private sWidth As String
Private xitems As List
Private bHidden As Boolean
Private bLoading As Boolean
Private xSkeletonType As String
Private sOwnTypes As String
Private VC As VueComponent			'ignore
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
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private sRounded As String
Private bShrink As Boolean
Private bGrow As Boolean
Private bFlat As Boolean
Private bDense As Boolean
End Sub
'Initializes the VSkeletonLoader component.
'Initializes the VSkeletonLoader component.
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
xitems.Initialize
sVShow = $"${mName}show"$
sLoading = $"${mName}loading"$
xSkeletonType = $"${mName}type"$
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VSkeletonLoader
'This builds the HTML tree based on defined properties for VSkeletonLoader
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
mClasses = Props.Get("Classes")
mStyles = Props.Get("Styles")
mAttributes = Props.Get("Attributes")
bBoilerplate = Props.Get("Boilerplate")
bDark = Props.Get("Dark")
sElevation = Props.Get("Elevation")
sHeight = Props.Get("Height")
bLight = Props.Get("Light")
bLoading = Props.GetDefault("Loading", False)
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sSkeletonType = Props.GetDefault("SkeletonType", "none")
bTile = Props.Get("Tile")
sTransition = Props.Get("Transition")
sVIf = Props.Get("VIf")
bHidden = Props.GetDefault("Hidden", False)
sWidth = Props.Get("Width")
sOwnTypes = Props.GetDefault("OwnTypes", "")
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
bBoilerplate = BANanoShared.parseBool(bBoilerplate)
bDark = BANanoShared.parseBool(bDark)
bLight = BANanoShared.parseBool(bLight)
bLoading = BANanoShared.parseBool(bLoading)
bTile = BANanoShared.parseBool(bTile)
bHidden = BANanoShared.parseBool(bHidden)
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
mElement = mTarget.Append($"<v-skeleton-loader ref="${mName}" id="${mName}"></v-skeleton-loader>"$).Get("#" & mName)
End If
'
sSkeletonType = sSkeletonType.Replace("none", "")
If sOwnTypes <> "" Then
sSkeletonType = sOwnTypes
End If
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "v-skeleton-loader"
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Attributes = mAttributes
VElement.AddAttr(":boilerplate", bBoilerplate)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":loading", sLoading)
VElement.SetData(sLoading, bLoading)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":type", xSkeletonType)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("v-if", sVIf)
If bHidden Then
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("width", sWidth)
VElement.SetData(xSkeletonType, sSkeletonType)
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.SetData(sDisabled, bDisabled)
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
End if
VElement.BindAllEvents
End Sub
Sub Actions As VSkeletonLoader
xitems.Add("actions")
Return Me
End Sub
Sub Article As VSkeletonLoader
xitems.Add("article")
Return Me
End Sub
Sub Avatar As VSkeletonLoader
xitems.Add("avatar")
Return Me
End Sub
Sub Button As VSkeletonLoader
xitems.Add("button")
Return Me
End Sub
Sub Card As VSkeletonLoader
xitems.Add("card")
Return Me
End Sub
Sub CardAvatar As VSkeletonLoader
xitems.Add("card-avatar")
Return Me
End Sub
Sub CardHeading As VSkeletonLoader
xitems.Add("card-heading")
Return Me
End Sub
Sub Chip As VSkeletonLoader
xitems.Add("chip")
Return Me
End Sub
Sub DatePicker As VSkeletonLoader
xitems.Add("date-picker")
Return Me
End Sub
Sub DatePickerOptions As VSkeletonLoader
xitems.Add("date-picker-options")
Return Me
End Sub
Sub DatePickerDays As VSkeletonLoader
xitems.Add("date-picker-days")
Return Me
End Sub
Sub Heading As VSkeletonLoader
xitems.Add("heading")
Return Me
End Sub
Sub Clear(C As VueComponent)
xitems.Initialize
Dim sItems As String = BANanoShared.Join(", ", xitems)
C.SetData(xSkeletonType, sItems)
End Sub
Sub ClearOnApp(C As VuetifyApp)
xitems.Initialize
Dim sItems As String = BANanoShared.Join(", ", xitems)
C.SetData(xSkeletonType, sItems)
End Sub
Sub Refresh(C As VueComponent)
Dim sItems As String = BANanoShared.Join(", ", xitems)
C.SetData(xSkeletonType, sItems)
End Sub
Sub RefreshOnApp(C As VuetifyApp)
Dim sItems As String = BANanoShared.Join(", ", xitems)
C.SetData(xSkeletonType, sItems)
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
Sub AddClass(s As String) As VSkeletonLoader
VElement.AddClass(s)
Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VSkeletonLoader
VElement.SetAttr(p, v)
Return Me
End Sub
Sub AddStyle(p As String, v As String) As VSkeletonLoader
VElement.AddStyle(p, v)
Return Me
End Sub
Sub RemoveAttr(p As String) As VSkeletonLoader
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
Sub UpdateVisible(C As VueComponent, b As Boolean) As VSkeletonLoader
C.SetData(sVIf, b)
C.SetData(sVShow, b)
Return Me
End Sub
Sub UpdateVisibleOnApp(V As VuetifyApp, b As Boolean) As VSkeletonLoader
V.SetData(sVIf, b)
V.SetData(sVShow, b)
Return Me
End Sub
Sub UpdateLoading(C As VueComponent, b As Boolean) As VSkeletonLoader
C.SetData(sLoading, b)
Return Me
End Sub
Sub UpdateLoadingOnApp(V As VuetifyApp, b As Boolean) As VSkeletonLoader
V.SetData(sLoading, b)
Return Me
End Sub
'get the vmodel to update
Sub getVModel As String
Return sLoading
End Sub
Sub Image As VSkeletonLoader
xitems.Add("image")
Return Me
End Sub
Sub ListItem As VSkeletonLoader
xitems.Add("list-item")
Return Me
End Sub
Sub ListItemAvatar As VSkeletonLoader
xitems.Add("list-item-avatar")
Return Me
End Sub
Sub ListItemTwoLine As VSkeletonLoader
xitems.Add("list-item-two-line")
Return Me
End Sub
Sub ListItemAvatarTwoLine As VSkeletonLoader
xitems.Add("list-item-avatar-two-line")
Return Me
End Sub
Sub ListItemThreeLine As VSkeletonLoader
xitems.Add("list-item-three-line")
Return Me
End Sub
Sub ListItemAvatarThreeLine As VSkeletonLoader
xitems.Add("list-item-avatar-three-line")
Return Me
End Sub
Sub Paragraph As VSkeletonLoader
xitems.Add("paragraph")
Return Me
End Sub
Sub Sentences As VSkeletonLoader
xitems.Add("sentences")
Return Me
End Sub
Sub Table As VSkeletonLoader
xitems.Add("table")
Return Me
End Sub
Sub TableHeading As VSkeletonLoader
xitems.Add("table-heading")
Return Me
End Sub
Sub TableThead As VSkeletonLoader
xitems.Add("table-thead")
Return Me
End Sub
Sub TableTbody As VSkeletonLoader
xitems.Add("table-tbody")
Return Me
End Sub
Sub TableRowDivider As VSkeletonLoader
xitems.Add("table-row-divider")
Return Me
End Sub
Sub TableRow As VSkeletonLoader
xitems.Add("table-row")
Return Me
End Sub
Sub TableCell As VSkeletonLoader
xitems.Add("table-cell")
Return Me
End Sub
Sub TableTfoot As VSkeletonLoader
xitems.Add("table-tfoot")
Return Me
End Sub
Sub Text As VSkeletonLoader
xitems.Add("text")
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