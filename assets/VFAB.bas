B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class
#Event: Click (e As BANanoEvent)

' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Settings, DisplayName: Settings, FieldType: Boolean, DefaultValue: False, Description: Settings.
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: Raised, DisplayName: Raised/Text, FieldType: Boolean, DefaultValue: True, Description: Transparent Background Off
#DesignerProperty: Key: IconDark, DisplayName: Icon Dark, FieldType: Boolean, DefaultValue: False, Description: Icon Dark
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: large, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: true, Description: Dark
#DesignerProperty: Key: IsExtension, DisplayName: IsExtension, FieldType: Boolean, DefaultValue: False, Description: IsExtension
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: False, Description: Fixed
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: normal, Description: Position, List: normal|top-left|top-right|bottom-left|bottom-right
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Depressed, DisplayName: Depressed, FieldType: Boolean, DefaultValue: False, Description: Depressed
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: HREF, DisplayName: HREF, FieldType: String, DefaultValue: , Description: HREF
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 

Sub Class_Globals
    Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mColor As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	Private mColorIntensity As String = ""
	Private bDark As Boolean
	Private bDepressed As Boolean
	Private bDisabled As Boolean
	Private sHREF As String
	Private bIconDark As Boolean
	Private sIconName As String
	Private bLoading As Boolean
	Private bOutlined As Boolean
	Private sSize As String
	Private sTarget As String
	Private sTo As String
	Private bAbsolute As Boolean
	Private sPosition As String
	Private bIsExtension As Boolean
	Private sColor As String
	Private bHidden As Boolean
	Private bFixed As Boolean
	Private bSettings As Boolean
	Private bFlat As Boolean
	Private VC As VueComponent
	Private bRaised As Boolean
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
	sColor = $"${mName}color"$
	'mVShow = $"${mName}show"$
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
		bDark = Props.Get("Dark")
		bDepressed = Props.Get("Depressed")
		bDisabled = Props.GetDefault("Disabled",False)
		sHREF = Props.Get("HREF")
		bIconDark = Props.Get("IconDark")
		sIconName = Props.Get("IconName")
		bLoading = Props.GetDefault("Loading",False)
		bOutlined = Props.Get("Outlined")
		sSize = Props.Get("Size")
		sTarget = Props.Get("Target")
		sTo = Props.Get("To")
		bAbsolute = Props.Get("Absolute")
		sPosition = Props.Get("Position")
		bIsExtension = Props.GetDefault("IsExtension", False)
		bHidden = Props.GetDefault("Hidden", False)
		bFixed = Props.GetDefault("Fixed", False)
		bSettings = Props.GetDefault("Settings", False)
		bFlat = Props.GetDefault("Flat", False)
		bRaised = Props.GetDefault("Raised", True)
		bRaised = BANanoShared.parsebool(bRaised)
	End If
	'
	bFlat = BANanoShared.parseBool(bFlat)
	bSettings = BANanoShared.parseBool(bSettings)
	bFixed = BANanoShared.parseBool(bFixed)
	bDark = BANanoShared.parseBool(bDark)
bDepressed = BANanoShared.parseBool(bDepressed)
bDisabled = BANanoShared.parseBool(bDisabled)
bIconDark = BANanoShared.parseBool(bIconDark)
bLoading = BANanoShared.parseBool(bLoading)
bOutlined = BANanoShared.parseBool(bOutlined)
bAbsolute = BANanoShared.parseBool(bAbsolute)
bIsExtension = BANanoShared.parseBool(bIsExtension)
bHidden = BANanoShared.parseBool(bHidden)
bLoading = BANanoShared.parseBool(bLoading)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		If bIsExtension Then
			'put inside a slot extension
			mElement = mTarget.Append($"<v-template v-slot:extension><v-btn ref="${mName}" id="${mName}"></v-btn></v-template>"$).Get("#" & mName)
		Else	
			mElement = mTarget.Append($"<v-btn ref="${mName}" id="${mName}"></v-btn>"$).Get("#" & mName)
		End If
	End If
		
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-btn"
	'
	If bSettings Then
		sIconName = "mdi-cog-outline"
		sSize = "small"
		bFlat = True
		bFixed = True
		bAbsolute = True
		If sPosition = "" Then
			sPosition = "top-right"
		End If
		'
		VElement.AddStyle("margin-top", "4px")
		VElement.AddStyle("top", "50%")
		VElement.AddStyle("right", "0")
		VElement.AddStyle("border-radius", "0")
	End If
	
	Dim siconID As String = $"${mName}icon"$
	VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
	'
	VElement.GetIcon.Dark = bIconDark
	VElement.Classes = mClasses
	VElement.Bind("color", sColor)
	Dim dColor As String = VElement.BuildColor(mColor, mColorIntensity)
	VElement.SetData(sColor, dColor)
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.TextColor = mTextColor
	VElement.TextColorIntensity = mTextColorIntensity
	VElement.VIf = mVIf
	If bHidden Then
	VElement.VShow = mVShow
	VElement.SetData(mVShow, Not(bHidden))
	End If
	VElement.Fixed = bFixed
	VElement.Dark = bDark
	VElement.Bind(":text", bFlat)
	VElement.Depressed = bDepressed
	VElement.Disabled = $"${mName}disabled"$
	VElement.SetData($"${mName}disabled"$, bDisabled)
	VElement.FAB = True
	VElement.HREF = sHREF
	VElement.Loading = $"${mName}loading"$
	VElement.SetData($"${mName}loading"$, bLoading)
	VElement.Outlined = bOutlined
	VElement.Target = sTarget
	VElement.To = sTo
	VElement.Absolute = bAbsolute
	VElement.Raised = bRaised
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

Sub UpdateColor(C As VueComponent, s As String)
	C.SetData(sColor, s)
End Sub

Sub UpdateColorOnApp(C As VuetifyApp, s As String)
	C.SetData(sColor, s)
End Sub

Sub UpdateLoading(C As VueComponent, b As Boolean)
	C.SetData($"${mName}loading"$, b)
End Sub

Sub UpdateLoadingOnApp(C As VuetifyApp, b As Boolean)
	C.SetData($"${mName}loading"$, b)
End Sub

Sub UpdateDisabled(C As VueComponent, b As Boolean)
	C.SetData($"${mName}disabled"$, b)
End Sub

Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
	C.SetData($"${mName}disabled"$, b)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VFAB
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VFAB
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VFAB
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VFAB
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
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