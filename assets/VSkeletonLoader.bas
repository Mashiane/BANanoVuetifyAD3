B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

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
	xitems.Initialize 
	sVShow = $"${mName}show"$
	sLoading = $"${mName}loading"$
	xSkeletonType = $"${mName}type"$
End Sub
	
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
	End If
	'
	bBoilerplate = BANanoShared.parseBool(bBoilerplate)
bDark = BANanoShared.parseBool(bDark)
bLight = BANanoShared.parseBool(bLight)
bLoading = BANanoShared.parseBool(bLoading)
bTile = BANanoShared.parseBool(bTile)
bHidden = BANanoShared.parseBool(bHidden)

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


Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

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