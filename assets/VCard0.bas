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
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Append, DisplayName: Append, FieldType: Boolean, DefaultValue: False, Description: Append
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Exact, DisplayName: Exact, FieldType: Boolean, DefaultValue: False, Description: Exact
#DesignerProperty: Key: ExactActiveClass, DisplayName: ExactActiveClass, FieldType: String, DefaultValue: , Description: ExactActiveClass
#DesignerProperty: Key: ExactPath, DisplayName: ExactPath, FieldType: Boolean, DefaultValue: False, Description: ExactPath
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue:  , Description: , List: left|center|right|justify|none
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: False, Description: Hover
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Img, DisplayName: Img, FieldType: String, DefaultValue: , Description: Img
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Link, DisplayName: Link, FieldType: Boolean, DefaultValue: False, Description: Link
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: , Description: LoaderHeight
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Nuxt, DisplayName: Nuxt, FieldType: Boolean, DefaultValue: False, Description: Nuxt
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Raised, DisplayName: Raised, FieldType: Boolean, DefaultValue: False, Description: Raised
#DesignerProperty: Key: Replace, DisplayName: Replace, FieldType: Boolean, DefaultValue: False, Description: Replace
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: False, Description: Ripple
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: Tag, DisplayName: Tag, FieldType: String, DefaultValue: , Description: Tag
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private sActiveClass As String
Private bAppend As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDisabled As Boolean
Private sElevation As String
Private bExact As Boolean
Private sExactActiveClass As String
Private bExactPath As Boolean
Private bFlat As Boolean
Private sHeight As String
Private bHidden As Boolean
Private bHover As Boolean
Private sHref As String
Private sImg As String
Private bLight As Boolean
Private bLink As Boolean
Private sLoaderHeight As String
Private bLoading As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bNuxt As Boolean
Private bOutlined As Boolean
Private bRaised As Boolean
Private bReplace As Boolean
Private bRipple As Boolean
Private sRounded As String
Private bShaped As Boolean
Private sTag As String
Private sTarget As String
Private bTile As Boolean
Private sTo As String
Private sVBind As String
Private sVIf As String
Private sVShow As String
Private sWidth As String
Private sDisabled As String
Private xHover As String
Private xElevation As String 
Private xLoading As String
Private sTextAlign As String
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
	sVShow = $"${mName}show"$
	sDisabled = $"${mName}disabled"$
	xElevation = $"${mName}elevation"$
	xHover = $"${mName}hover"$
	xLoading = $"${mName}loading"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sActiveClass = Props.GetDefault("ActiveClass", "")
		sTextAlign = Props.GetDefault("TextAlign", "")
		sTarget = Props.GetDefault("Target", "")
bAppend = Props.GetDefault("Append", False)
bAppend = BANanoShared.parseBool(bAppend)
sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDark = Props.GetDefault("Dark", False)
bDark = BANanoShared.parseBool(bDark)
bDisabled = Props.GetDefault("Disabled", False)
bDisabled = BANanoShared.parseBool(bDisabled)
sElevation = Props.GetDefault("Elevation", "")
bExact = Props.GetDefault("Exact", False)
bExact = BANanoShared.parseBool(bExact)
sExactActiveClass = Props.GetDefault("ExactActiveClass", "")
bExactPath = Props.GetDefault("ExactPath", False)
bExactPath = BANanoShared.parseBool(bExactPath)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
sHeight = Props.GetDefault("Height", "")
bHidden = Props.GetDefault("Hidden", False)
bHidden = BANanoShared.parseBool(bHidden)
bHover = Props.GetDefault("Hover", False)
bHover = BANanoShared.parseBool(bHover)
sHref = Props.GetDefault("Href", "")
sImg = Props.GetDefault("Img", "")
bLight = Props.GetDefault("Light", False)
bLight = BANanoShared.parseBool(bLight)
bLink = Props.GetDefault("Link", False)
bLink = BANanoShared.parseBool(bLink)
sLoaderHeight = Props.GetDefault("LoaderHeight", "")
bLoading = Props.GetDefault("Loading", False)
bLoading = BANanoShared.parseBool(bLoading)
sMaxHeight = Props.GetDefault("MaxHeight", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMinWidth = Props.GetDefault("MinWidth", "")
bNuxt = Props.GetDefault("Nuxt", False)
bNuxt = BANanoShared.parseBool(bNuxt)
bOutlined = Props.GetDefault("Outlined", False)
bOutlined = BANanoShared.parseBool(bOutlined)
bRaised = Props.GetDefault("Raised", False)
bRaised = BANanoShared.parseBool(bRaised)
bReplace = Props.GetDefault("Replace", False)
bReplace = BANanoShared.parseBool(bReplace)
bRipple = Props.GetDefault("Ripple", False)
bRipple = BANanoShared.parseBool(bRipple)
sRounded = Props.GetDefault("Rounded", "")
bShaped = Props.GetDefault("Shaped", False)
bShaped = BANanoShared.parseBool(bShaped)
sTag = Props.GetDefault("Tag", "")
bTile = Props.GetDefault("Tile", False)
bTile = BANanoShared.parseBool(bTile)
sTo = Props.GetDefault("To", "")
sVBind = Props.GetDefault("VBind", "")
sVIf = Props.GetDefault("VIf", "")
sWidth = Props.GetDefault("Width", "")
End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-card id="${mName}"></v-card>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-card" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("active-class", sActiveClass)
VElement.AddAttr(":append", bAppend)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(bDisabled, False)

VElement.AddAttr(":elevation", xElevation)
VElement.SetData(xElevation, sElevation)

VElement.AddAttr(":exact", bExact)
VElement.AddAttr("exact-active-class", sExactActiveClass)
VElement.AddAttr(":exact-path", bExactPath)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":hover", xHover)
VElement.SetData(xHover, bHover)
VElement.AddAttr("href", sHref)
VElement.AddAttr("img", sImg)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":link", bLink)
VElement.AddAttr("loader-height", sLoaderHeight)
VElement.AddAttr(":loading", xLoading)
VElement.SetData(xLoading, bLoading)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":nuxt", bNuxt)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr(":raised", bRaised)
VElement.AddAttr(":replace", bReplace)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr("rounded", sRounded)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr("tag", sTag)
VElement.AddAttr("target", sTarget)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr("to", sTo)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-if", sVIf)
If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("width", sWidth)
VElement.AddStyle("text-align", sTextAlign)
VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VCard0 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VCard0 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VCard0 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VCard0 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VCard0 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VCard0 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub

'Update Elevation
Sub UpdateElevation(C As VueComponent, vElevation As Object)
C.SetData(xElevation, vElevation)
End Sub

'Update Loading
Sub UpdateLoading(C As VueComponent, vLoading As Object)
C.SetData(xLoading, vLoading)
End Sub


'Update Disabled
Sub UpdateDisabledOnApp(C As VuetifyApp, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub

'Update Elevation
Sub UpdateElevationOnApp(C As VuetifyApp, vElevation As Object)
C.SetData(xElevation, vElevation)
End Sub

'Update Loading
Sub UpdateLoadingOnApp(C As VuetifyApp, vLoading As Object)
C.SetData(xLoading, vLoading)
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