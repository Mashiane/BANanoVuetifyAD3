B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: AlertType, DisplayName: AlertType, FieldType: String, DefaultValue: none, Description: AlertType, List: none|success|info|warning|error
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue: none, Description: Border, List: none|top|right|bottom|left
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: Alert, Description: Caption
#DesignerProperty: Key: Loremipsum, DisplayName: Lorem Ipsum, FieldType: Boolean, DefaultValue: false, Description: Lorem Ipsum
#DesignerProperty: Key: CloseIcon, DisplayName: CloseIcon, FieldType: String, DefaultValue: , Description: CloseIcon
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ColoredBorder, DisplayName: ColoredBorder, FieldType: Boolean, DefaultValue: false, Description: ColoredBorder
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: True, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: Dismissible, DisplayName: Dismissible, FieldType: Boolean, DefaultValue: false, Description: Dismissible
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: , Description: Mode
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Prominent, DisplayName: Prominent, FieldType: Boolean, DefaultValue: false, Description: Prominent
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: Boolean, DefaultValue: false, Description: Text
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
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
	Private mVIf As String = ""
	Private sAlertType As String
Private sBorder As String
Private sCaption As String
Private sCloseIcon As String
Private sColor As String
Private sColorIntensity As String
Private bColoredBorder As Boolean
Private bDark As Boolean
Private bDense As Boolean
Private bDismissible As Boolean
Private sElevation As String
Private sHeight As String
Private sIcon As String
Private bLoremipsum As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sMode As String
Private bOutlined As Boolean
Private bProminent As Boolean
Private sRounded As String
Private bShaped As Boolean
Private bText As Boolean
Private sTextColor As String
Private sTextColorIntensity As String
Private bTile As Boolean
Private sTransition As String
Private sValue As String
Private sWidth As String
Private VC As VueComponent			'ignore
Private xcaption As String
Private xcolor As String
Private xalertType As String
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
	sValue = $"${mName}show"$
	xcaption = $"${mName}message"$
	xcolor = $"${mName}color"$
	xalertType = $"${mName}alerttype"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.Get("VIf")
		sAlertType = Props.Get("AlertType")
		sBorder = Props.Get("Border")
		sCaption = Props.Get("Caption")
		sCloseIcon = Props.Get("CloseIcon")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bColoredBorder = Props.Get("ColoredBorder")
		bColoredBorder = BANanoShared.parseBool(bColoredBorder)
		bDark = Props.Get("Dark")
		bDark = BANanoShared.parseBool(bDark)
		bDense = Props.Get("Dense")
		bDense = BANanoShared.parseBool(bDense)
		bDismissible = Props.Get("Dismissible")
		bDismissible = BANanoShared.parseBool(bDismissible)
		sElevation = Props.Get("Elevation")
		sHeight = Props.Get("Height")
		sIcon = Props.Get("Icon")
		bLoremipsum = Props.Get("Loremipsum")
		bLoremipsum = BANanoShared.parseBool(bLoremipsum)
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		sMode = Props.Get("Mode")
		bOutlined = Props.Get("Outlined")
		bOutlined = BANanoShared.parseBool(bOutlined)
		bProminent = Props.Get("Prominent")
		bProminent = BANanoShared.parseBool(bProminent)
		sRounded = Props.Get("Rounded")
		bShaped = Props.Get("Shaped")
		bShaped = BANanoShared.parseBool(bShaped)
		bText = Props.Get("Text")
		bText = BANanoShared.parseBool(bText)
		sTextColor = Props.Get("TextColor")
		sTextColorIntensity = Props.Get("TextColorIntensity")
		bTile = Props.Get("Tile")
		bTile = BANanoShared.parseBool(bTile)
		sTransition = Props.Get("Transition")
		sWidth = Props.Get("Width")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-alert ref="${mName}" id="${mName}">{{ ${xcaption} }}</v-alert>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-alert"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.VIf = mVIf
	VElement.AddAttr(":type", xalertType)
	VElement.SetData(xalertType, sAlertType)	
	VElement.AddAttr("border", sBorder)
	VElement.SetCloseIcon(sCloseIcon)
	Dim mcolor As String = VElement.BuildColor(sColor, sColorIntensity)
	VElement.Bind("color", xcolor)
	VElement.SetData(xcolor, mcolor)
	VElement.ColoredBorder = bColoredBorder
	VElement.Dark = bDark
	VElement.Dense = bDense
	VElement.Dismissible = bDismissible
	VElement.Elevation = sElevation
	VElement.Height = sHeight
	VElement.AddAttr("icon", sIcon)
	VElement.Loremipsum = bLoremipsum
	VElement.MaxHeight = sMaxHeight
	VElement.MaxWidth = sMaxWidth
	VElement.MinHeight = sMinHeight
	VElement.MinWidth = sMinWidth
	VElement.Mode = sMode
	VElement.Outlined = bOutlined
	VElement.Prominent = bProminent
	VElement.AddClass(sRounded)
	VElement.Shaped = bShaped
	VElement.AddAttr(":text", bText)
	VElement.TextColor = sTextColor
	VElement.TextColorintensity = sTextColorIntensity
	VElement.Tile = bTile
	VElement.Transition = sTransition
	VElement.Width = sWidth
	VElement.AddAttr(":value", sValue)
	VElement.SetData(sValue, Not(bHidden))
	If bLoremipsum Then
		sCaption = BANanoShared.LoremIpsum(1)
	End If	
	VElement.SetData(xcaption, sCaption)	
	VElement.BindAllEvents
End Sub

Sub ShowError(C As VueComponent, Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "error")
	C.SetData(sValue, True)
End Sub

Sub ShowSuccess(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "success")
	C.SetData(sValue, True)
End Sub

Sub ShowInfo(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "info")
	C.SetData(sValue, True)
End Sub

Sub ShowWarning(C As VueComponent,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "warning")
	C.SetData(sValue, True)
End Sub

Sub ShowErrorOnApp(C As VuetifyApp, Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "error")
	C.SetData(sValue, True)
End Sub

Sub ShowSuccessOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "success")
	C.SetData(sValue, True)
End Sub

Sub ShowInfoOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "info")
	C.SetData(sValue, True)
End Sub

Sub ShowWarningOnApp(C As VuetifyApp,  Message As String)
	If BANano.IsNull(Message) Then Return
	C.SetData(xcaption, Message)
	C.SetData(xalertType, "warning")
	C.SetData(sValue, True)
End Sub

'update the color of the alert
Sub UpdateColor(c As VueComponent, color As String, intensity As String)
	Dim mcolor As String = VElement.BuildColor(color, intensity)
	c.SetData(xcolor, mcolor)
End Sub

'update the color of the alert on the app
Sub UpdateColorOnApp(c As VuetifyApp, color As String, intensity As String)
	Dim mcolor As String = VElement.BuildColor(color, intensity)
	c.SetData(xcolor, mcolor)
End Sub

'update alert type on component
Sub UpdateAlertType(C As VueComponent, alertType As String)
	sAlertType = alertType
	c.SetData(xalertType, sAlertType)
End Sub

'update alert type on app
Sub UpdateAlertTypeOnApp(C As VuetifyApp, alertType As String)
	sAlertType = alertType
	c.SetData(xalertType, sAlertType)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub


Sub AddClass(s As String) As VAlert
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VAlert
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VAlert
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VAlert
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(V As VueComponent, b As Boolean) As VAlert
	V.SetData(mVIf, b)
	V.SetData(sValue, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(V As VuetifyApp, b As Boolean) As VAlert
	V.SetData(mVIf, b)
	V.SetData(sValue, b)
	Return Me
End Sub

Sub getID As String
	Return mName
End Sub

Sub getHere As String
	Return $"#${mName}"$
End Sub

'update msg on component
Sub UpdateCaption(c As VueComponent, msg As String)
	c.SetData(xcaption, msg)	
End Sub

'update caption on app
Sub UpdateCaptionOnApp(c As VuetifyApp, msg As String)
	c.SetData(xcaption, msg)	
End Sub

Sub BindState(c As VueComponent)
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
