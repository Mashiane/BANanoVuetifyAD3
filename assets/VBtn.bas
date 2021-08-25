B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)
#Event: ClickStop (e As BANanoEvent)


' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: ParentID
#DesignerProperty: Key: Text, DisplayName: Caption, FieldType: String, DefaultValue: Button , Description: Text
#DesignerProperty: Key: Raised, DisplayName: Raised/Text, FieldType: Boolean, DefaultValue: True, Description: Transparent Background Off
#DesignerProperty: Key: Block, DisplayName: Block, FieldType: Boolean, DefaultValue: False, Description: Block
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: normal, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: FAB, DisplayName: FAB, FieldType: Boolean, DefaultValue: False, Description: FAB
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: Boolean, DefaultValue: False, Description: Icon
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: IconAlignment, DisplayName: Icon Alignment, FieldType: String, DefaultValue: normal, Description: Icon Alignment, List: normal|left|right
#DesignerProperty: Key: IconDark, DisplayName: Icon Dark, FieldType: Boolean, DefaultValue: False, Description: Icon Dark
#DesignerProperty: Key: IconSize, DisplayName: Icon Size, FieldType: String, DefaultValue: , Description: Icon Size
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue: , Description: Icon Color

#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
'
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: , Description: Position, List: normal|top-left|top-right|bottom-left|bottom-right
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Depressed, DisplayName: Depressed, FieldType: Boolean, DefaultValue: False, Description: Depressed
#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: HREF, DisplayName: HREF, FieldType: String, DefaultValue: , Description: HREF
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded, 
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind
#DesignerProperty: Key: MA, DisplayName: MA, FieldType: String, DefaultValue: , Description: MA
#DesignerProperty: Key: MB, DisplayName: MB, FieldType: String, DefaultValue: , Description: MB
#DesignerProperty: Key: ML, DisplayName: ML, FieldType: String, DefaultValue: , Description: ML
#DesignerProperty: Key: MR, DisplayName: MR, FieldType: String, DefaultValue: , Description: MR
#DesignerProperty: Key: MT, DisplayName: MT, FieldType: String, DefaultValue: , Description: MT
#DesignerProperty: Key: MX, DisplayName: MX, FieldType: String, DefaultValue: , Description: MX
#DesignerProperty: Key: MY, DisplayName: MY, FieldType: String, DefaultValue: , Description: MY
#DesignerProperty: Key: PA, DisplayName: PA, FieldType: String, DefaultValue: , Description: PA
#DesignerProperty: Key: PB, DisplayName: PB, FieldType: String, DefaultValue: , Description: PB
#DesignerProperty: Key: PL, DisplayName: PL, FieldType: String, DefaultValue: , Description: PL
#DesignerProperty: Key: PR, DisplayName: PR, FieldType: String, DefaultValue: , Description: PR
#DesignerProperty: Key: PT, DisplayName: PT, FieldType: String, DefaultValue: , Description: PT
#DesignerProperty: Key: PX, DisplayName: PX, FieldType: String, DefaultValue: , Description: PX
#DesignerProperty: Key: PY, DisplayName: PY, FieldType: String, DefaultValue: , Description: PY

Sub Class_Globals
    Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String
	Private mColor As String
	Private mStyles As String
	Private mAttributes As String
	Public VElement As VueElement
	Private mVShow As String
	Private mVIf As String
	Private mTextColor As String
	Private mTextColorIntensity As String
	Private mColorIntensity As String
	Private mText As String
	Private bBlock As Boolean
	Private bDark As Boolean
	Private bDepressed As Boolean
	Private bDisabled As Boolean
	Private bFAB As Boolean
	Private sHREF As String
	Private bIcon As Boolean
	Private sIconAlignment As String
	Private bIconDark As Boolean
	Private sIconName As String
	Private bLoading As Boolean
	Private bOutlined As Boolean
	Private bRaised As Boolean
	Private bRounded As Boolean
	Private bShaped As Boolean
	Private sSize As String
	Private sTarget As String
	Private bTile As Boolean
	Private sTo As String
	Private bAbsolute As Boolean
	Private sPosition As String
	Private sVFor As String
	Private sKey As String
	Private sVOn As String
	Private sVBind As String
	Private xColor As String
	Private xCaption As String
	Private xLoading As String
	Private xDisabled As String
	Private bHidden As Boolean
	Private sMA As String
Private sMB As String
Private sML As String
Private sMR As String
Private sMT As String
Private sMX As String
Private sMY As String
Private sPA As String
Private sPB As String
Private sPL As String
Private sPR As String
Private sPT As String
Private sPX As String
Private sPY As String
Private sIconSize As String
Private sIconColor As String
Private VC As VueComponent
Private sParentID As String
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
	xColor = $"${mName}color"$
	xCaption = $"${mName}caption"$
	xLoading = $"${mName}loading"$
	xDisabled  = $"${mName}disabled"$
	mVShow = $"${mName}show"$
End Sub

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mColor = Props.Get("Color")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mColorIntensity = Props.Get("ColorIntensity")
		mTextColor = Props.Get("TextColor")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		mVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		mText = Props.Get("Text")
		bBlock = Props.Get("Block")
		bDark = Props.Get("Dark")
		bDepressed = Props.Get("Depressed")
		bDisabled = Props.GetDefault("Disabled",False)
		bDisabled = BANanoShared.parseBool(bDisabled)
		bFAB = Props.Get("FAB")
		sHREF = Props.Get("HREF")
		bIcon = Props.Get("Icon")
		sIconAlignment = Props.Get("IconAlignment")
		bIconDark = Props.Get("IconDark")
		sIconName = Props.Get("IconName")
		bLoading = Props.GetDefault("Loading", False)
		bLoading = BANanoShared.parseBool(bLoading)
		bOutlined = Props.Get("Outlined")
		bRaised = Props.Get("Raised")
		bRounded = Props.Get("Rounded")
		bShaped = Props.Get("Shaped")
		sSize = Props.Get("Size")
		sTarget = Props.Get("Target")
		bTile = Props.Get("Tile")
		sTo = Props.Get("To")
		bAbsolute = Props.Get("Absolute")
		sPosition = Props.Get("Position")
		sVFor = Props.Get("VFor")
		sKey = Props.Get("Key")
		sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
		sMA = Props.Get("MA")
		sMB = Props.GetDefault("MB","")
		sML = Props.GetDefault("ML","")
		sMR = Props.GetDefault("MR","")
		sMT = Props.GetDefault("MT","")
		sMX = Props.GetDefault("MX","")
		sMY = Props.GetDefault("MY","")
		sPA = Props.GetDefault("PA","")
		sPB = Props.GetDefault("PB","")
		sPL = Props.GetDefault("PL","")
		sPR = Props.GetDefault("PR","")
		sPT = Props.GetDefault("PT","")
		sPX = Props.GetDefault("PX","")
		sPY = Props.GetDefault("PY","")
		sIconSize = Props.GetDefault("IconSize", "")
		sIconColor = Props.GetDefault("IconColor", "")
		sParentID = Props.GetDefault("ParentID", "")
		sParentID = BANanoShared.parseNull(sParentID)
	End If
	'
	bBlock = BANanoShared.parseBool(bBlock)
bDark = BANanoShared.parseBool(bDark)
bDepressed = BANanoShared.parseBool(bDepressed)
bFAB = BANanoShared.parseBool(bFAB)
bIcon = BANanoShared.parseBool(bIcon)
bIconDark = BANanoShared.parseBool(bIconDark)
bOutlined = BANanoShared.parseBool(bOutlined)
bRaised = BANanoShared.parseBool(bRaised)
bRounded = BANanoShared.parseBool(bRounded)
bShaped = BANanoShared.parseBool(bShaped)
bTile = BANanoShared.parseBool(bTile)
bAbsolute = BANanoShared.parseBool(bAbsolute)

	If sParentID <> "" Then
		sParentID = sParentID.ToLowerCase
		mTarget.Initialize($"#${sParentID}"$)
	End If

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-btn ref="${mName}" id="${mName}"></v-btn>"$).Get("#" & mName)
	End If
		
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-btn"
	If mText.StartsWith("{{") Then
	Else	
		VElement.SetData(xCaption, mText)
	End If
	
	If BANano.IsNull(sIconName) Or sIconName = "" Then
		'set the text
		VElement.Caption = VElement.InMoustache1(mText, xCaption)
	Else	
		Dim siconID As String = $"${mName}icon"$
		Select Case sIconAlignment
		Case "normal"
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Size = sIconSize
			VElement.GetIcon.Color = sIconColor
		Case "left"
			VElement.Caption = ""
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Left = True
			VElement.GetIcon.Size = sIconSize
			VElement.GetIcon.Color = sIconColor
			VElement.Append($"<span id="${mName}text">${VElement.InMoustache1(mText, xCaption)}</span>"$)
		Case "right"
			VElement.Caption = ""
			VElement.Append($"<span id="${mName}text">${VElement.InMoustache1(mText, xCaption)}</span>"$)
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Right = True
			VElement.GetIcon.Size = sIconSize
			VElement.GetIcon.Color = sIconColor
		End Select
	End If
	
	'If bFAB Then bIcon = False
	
	VElement.Classes = mClasses
	mColor = VElement.BuildColor(mColor, mColorIntensity)
	VElement.Bind("color", xColor)
	VElement.SetData(xColor, mColor)
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.TextColor = mTextColor
	VElement.TextColorIntensity  = mTextColorIntensity
	VElement.VIf = mVIf
	If bHidden Then
		VElement.VShow = mVShow
		VElement.SetData(mVShow, Not(bHidden))
	End If
	VElement.Block = bBlock
	VElement.Dark = bDark
	VElement.Depressed = bDepressed
	VElement.Disabled = xDisabled
	VElement.SetData(xDisabled, bDisabled)
	VElement.FAB = bFAB
	VElement.HREF = sHREF
	VElement.ButtonIcon = bIcon
	VElement.Loading = xLoading
	VElement.SetData(xLoading, bLoading)
	VElement.Outlined = bOutlined
	VElement.Raised = bRaised
	VElement.AddAttr(":rounded", bRounded)
	VElement.Shaped = bShaped
	VElement.Target = sTarget
	VElement.Tile = bTile
	VElement.To = sTo
	VElement.Absolute = bAbsolute
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("key", sKey)
	VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
	Select Case sPosition
	Case "normal"
	Case "top-left"
		VElement.Top = True
		VElement.Left = True
	Case "top-right"
		VElement.Top = True
		VElement.Right = True
	Case "bottom-left"
		VElement.Bottom = True
		VElement.Left = True
	Case "bottom-right"
		VElement.Bottom = True
		VElement.Right = True
	End Select
	'
	Select Case sSize
	Case "x-small"
		VElement.XSmall = True
	Case "small"
		VElement.Small = True
	Case "large"
		VElement.Large = True
	Case "x-large"	
		VElement.XLarge = True
	End Select
	VElement.MA = sMA
	VElement.MB = sMB
	VElement.ML = sML
	VElement.MR = sMR
	VElement.MT = sMT
	VElement.MX = sMX
	VElement.MY = sMY
	VElement.PA = sPA
	VElement.PB = sPB
	VElement.PL = sPL
	VElement.PR = sPR
	VElement.PT = sPT
	VElement.PX = sPX
	VElement.PY = sPY
	VElement.BindAllEvents
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub

'update the label of the button
Sub UpdateLabel(C As VueComponent, s As String)
	C.SetData(xCaption, S)
End Sub

Sub UpdateLabelOnApp(C As VuetifyApp, s As String)
	C.SetData(xCaption, S)
End Sub

'update the color of the button
Sub UpdateColor(C As VueComponent, s As String)
	C.SetData(xColor, S)
End Sub

Sub UpdateColorOnApp(C As VuetifyApp, s As String)
	C.SetData(xColor, S)
End Sub

'update the loading state of the button
Sub UpdateLoading(C As VueComponent, b As Boolean)
	C.SetData(xLoading, b)
End Sub

Sub UpdateLoadingOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(xLoading, b)
End Sub

'update the disabled state of the button
Sub UpdateDisabled(C As VueComponent, b As Boolean)
	C.SetData(xDisabled, b)
End Sub

Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(xDisabled, b)
End Sub

'add to parent
Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

'remove the element
Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'add a class
Sub AddClass(s As String) As VBtn
	VElement.AddClass(s)
	Return Me
End Sub

'add an attribute
Sub AddAttr(p As String, v As Object) As VBtn
	VElement.SetAttr(p, v)
	Return Me
End Sub

'add a style
Sub AddStyle(p As String, v As String) As VBtn
	VElement.AddStyle(p, v)
	Return Me
End Sub

'remove an attribute
Sub RemoveAttr(p As String) As VBtn
	VElement.RemoveAttr(p)
	Return Me
End Sub

'change visibility of the button
Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
End Sub

'get the id of the button
Sub getID As String
	Return mName
End Sub

'get the element name
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


Sub OnClick(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", args)
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