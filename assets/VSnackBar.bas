B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: True, Description: App
#DesignerProperty: Key: AppSnackBar, DisplayName: AppSnackBar, FieldType: Boolean, DefaultValue: False, Description: This is the App Snack Bar
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: SnackBar , Description: Caption
#DesignerProperty: Key: Centered, DisplayName: Centered, FieldType: Boolean, DefaultValue: false, Description: Centered
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: blue , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ContentClass, DisplayName: ContentClass, FieldType: String, DefaultValue: , Description: ContentClass
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MultiLine, DisplayName: MultiLine, FieldType: Boolean, DefaultValue: false, Description: MultiLine
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: top-right, Description: Position, List: none|bottom-left|bottom-right|top-left|top-right
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Text, DisplayName: Text/BackGround, FieldType: Boolean, DefaultValue: false, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Timeout, DisplayName: Timeout, FieldType: String, DefaultValue: 5000, Description: Timeout
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: expand-transition, Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private bAbsolute As Boolean
Private bApp As Boolean
Private sCaption As String
Private bCentered As Boolean
Private sColor As String
Private sColorIntensity As String
Private sContentClass As String
Private bDark As Boolean
Private sElevation As String
Private sHeight As String
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bMultiLine As Boolean
Private bOutlined As Boolean
Private sPosition As String
Private sRounded As String
Private bShaped As Boolean
Private bText As Boolean
Private sTextColor As String
Private sTextColorIntensity As String
Private bTile As Boolean
Private sTimeout As String
Private sTransition As String
Private sVIf As String
Private sVModel As String
Private bVertical As Boolean
Private sWidth As String
Private xCaption As String
Private xColor As String
Private xtimeout As String
Private bAppSnackBar As Boolean
Private xright As String
Private xtop As String
Private xbottom As String
Private xcentered As String
Private xoutlined As String
Private xleft As String
Private xshaped As String
Private forapp As String
	Private VC As VueComponent				'ignore
	Private bHidden As Boolean
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
	forapp = mName
	xCaption = $"${mName}message"$
	xColor = $"${mName}color"$
	sVModel = $"${mName}show"$
	xtimeout = $"${mName}timeout"$
	xright = $"${mName}right"$
	xtop = $"${mName}top"$
	xbottom = $"${mName}bottom"$
	xcentered = $"${mName}centered"$
	xoutlined = $"${mName}outlined"$
	xleft = $"${mName}left"$
	xshaped = $"${mName}shaped"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAbsolute = Props.Get("Absolute")
		bApp = Props.Get("App")
		sCaption = Props.Get("Caption")
		bCentered = Props.Get("Centered")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		sContentClass = Props.Get("ContentClass")
		bDark = Props.Get("Dark")
		sElevation = Props.Get("Elevation")
		sHeight = Props.Get("Height")
		bLight = Props.Get("Light")
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		bMultiLine = Props.Get("MultiLine")
		bOutlined = Props.Get("Outlined")
		sPosition = Props.Get("Position")
		sRounded = Props.Get("Rounded")
		bShaped = Props.Get("Shaped")
		bText = Props.Get("Text")
		sTextColor = Props.Get("TextColor")
		sTextColorIntensity = Props.Get("TextColorIntensity")
		bTile = Props.Get("Tile")
		sTimeout = Props.GetDefault("Timeout", 5000)
		sTransition = Props.Get("Transition")
		sVIf = Props.Get("VIf")
		bVertical = Props.Get("Vertical")
		sWidth = Props.Get("Width")
		bAppSnackBar = Props.GetDefault("AppSnackBar", False)
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	bAbsolute = BANanoShared.parseBool(bAbsolute)
	bApp = BANanoShared.parseBool(bApp)
	bCentered = BANanoShared.parseBool(bCentered)
	bDark = BANanoShared.parseBool(bDark)
	bLight = BANanoShared.parseBool(bLight)
	bMultiLine = BANanoShared.parseBool(bMultiLine)
	bOutlined = BANanoShared.parseBool(bOutlined)
	bShaped = BANanoShared.parseBool(bShaped)
	bText = BANanoShared.parseBool(bText)
	bTile = BANanoShared.parseBool(bTile)
	bVertical = BANanoShared.parseBool(bVertical)
	bAppSnackBar = BANanoShared.parseBool(bAppSnackBar)
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-snackbar ref="${mName}" id="${mName}"></v-snackbar>"$).Get("#" & mName)
	End If
	'
	If bAppSnackBar Then
		forapp = "appsnack"
		xCaption = $"${forapp}message"$
		xColor = $"${forapp}color"$
		sVModel = $"${forapp}show"$
		xtimeout = $"${forapp}timeout"$
		xright = $"${forapp}right"$
		xtop = $"${forapp}top"$
		xbottom = $"${forapp}bottom"$
		xcentered = $"${forapp}centered"$
		xoutlined = $"${forapp}outlined"$
		xleft = $"${forapp}left"$
		xshaped = $"${forapp}shaped"$
	End If
	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-snackbar"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.caption = VElement.InMoustache1(sCaption, xCaption)
	VElement.SetData(xCaption, sCaption)
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
	VElement.AddAttr(":app", bApp)
	VElement.AddAttr(":centered", xcentered)	
	sColor = VElement.BuildColor(sColor, sColorIntensity)
	VElement.Bind("color", xColor)
	VElement.SetData(xColor, sColor)
	VElement.AddAttr("content-class", sContentClass)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr("elevation", sElevation)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr(":multi-line", bMultiLine)
	VElement.AddAttr(":outlined", xoutlined)
	VElement.AddAttr(":bottom", xbottom)
	VElement.AddAttr(":left", xleft)
	VElement.AddAttr(":right", xright)
	VElement.AddAttr(":top", xtop)
	VElement.AddClass(sRounded)
	VElement.AddAttr(":shaped", xshaped)
	VElement.AddAttr(":text", bText)
	VElement.TextColor = sTextColor
	VElement.TextColorIntensity =  sTextColorIntensity
	VElement.AddAttr(":tile", bTile)
	VElement.AddAttr(":timeout", xtimeout)
	VElement.AddAttr("transition", sTransition)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr(":vertical", bVertical)
	VElement.AddAttr("width", sWidth)
	
	VElement.SetData(xoutlined, bOutlined)
	VElement.SetData(xshaped, bShaped)
	VElement.SetData(xtimeout, sTimeout)
	VElement.SetData(xleft, Null)

	Select Case sPosition
	Case "none"	
	Case "bottom-left"
		VElement.SetData(xbottom, True)
		VElement.SetData(xleft, True)
		VElement.SetData(xtop, False)
		VElement.SetData(xright, False)
		VElement.SetData(xcentered, False)
	Case "bottom-right"
		VElement.SetData(xbottom, True)
		VElement.SetData(xright, True)
		VElement.SetData(xleft, False)
		VElement.SetData(xtop, False)
		VElement.SetData(xcentered, False)
	Case "top-left"
		VElement.SetData(xtop, True)
		VElement.SetData(xleft, True)
		VElement.SetData(xright, False)
		VElement.SetData(xbottom, False)
		VElement.SetData(xcentered, False)
	Case "top-right"
		VElement.SetData(xtop, True)
		VElement.SetData(xright, True)
		VElement.SetData(xleft, False)
		VElement.SetData(xbottom, False)
		VElement.SetData(xcentered, False)
	End Select
	If bHidden Then
	VElement.SetData(sVModel, Not(bHidden))
	End If
	VElement.BindAllEvents
End Sub

'update the label of the button
Sub UpdateLabel(C As VueComponent, s As String)
	C.SetData(xCaption, S)
End Sub

Sub UpdateLabelOnApp(C As VuetifyApp, s As String)
	C.SetData(xCaption, S)
End Sub

Sub UpdateColor(C As VueComponent, vColor As String, vIntensity As String)
	sColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xColor, sColor)
End Sub

Sub UpdateColorOnApp(C As VuetifyApp, vColor As String, vIntensity As String)
	sColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xColor, sColor)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VSnackBar
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VSnackBar
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VSnackBar
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VSnackBar
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VSnackBar
	C.SetData(sVIf, b)
	C.SetData(sVModel, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VSnackBar
	C.SetData(sVIf, b)
	C.SetData(sVModel, b)
	Return Me
End Sub

Sub UpdateTimeOut(C As VueComponent, s As String) As VSnackBar
	C.SetData(xtimeout, s)
	Return Me
End Sub

Sub UpdateTimeOutOnApp(C As VuetifyApp, s As String) As VSnackBar
	C.SetData(xtimeout, s)
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


Sub ShowError(C As VueComponent, Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "error")
	C.SetData(sVModel, True)
End Sub

Sub ShowErrorOnApp(C As VuetifyApp, Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "error")
	C.SetData(sVModel, True)
End Sub

Sub ShowSuccess(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "success")
	C.SetData(sVModel, True)
End Sub

Sub ShowSuccessOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "success")
	C.SetData(sVModel, True)
End Sub

Sub ShowPrimary(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "primary")
	C.SetData(sVModel, True)
End Sub

Sub ShowPrimaryOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "primary")
	C.SetData(sVModel, True)
End Sub

Sub ShowSecondary(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "secondary")
	C.SetData(sVModel, True)
End Sub

Sub ShowSecondaryOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "secondary")
	C.SetData(sVModel, True)
End Sub

Sub ShowInfo(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "info")
	C.SetData(sVModel, True)
End Sub

Sub ShowInfoOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "info")
	C.SetData(sVModel, True)
End Sub

Sub ShowWarning(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "warning")
	C.SetData(sVModel, True)
End Sub

Sub ShowWarningOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "warning")
	C.SetData(sVModel, True)
End Sub

Sub Show(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "")
	C.SetData(sVModel, True)
End Sub

Sub ShowOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xCaption, Message)
	C.SetData(xColor, "")
	C.SetData(sVModel, True)
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