B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

'#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: Badge, DisplayName: Badge, FieldType: String, DefaultValue: , Description: Badge
#DesignerProperty: Key: BadgeColor, DisplayName: BadgeColor, FieldType: String, DefaultValue: , Description: BadgeColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BadgeColorIntensity, DisplayName: BadgeColorIntensity, FieldType: String, DefaultValue: , Description: BadgeColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Append, DisplayName: Append, FieldType: Boolean, DefaultValue: false, Description: Append
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Exact, DisplayName: Exact, FieldType: Boolean, DefaultValue: false, Description: Exact
#DesignerProperty: Key: ExactActiveClass, DisplayName: ExactActiveClass, FieldType: String, DefaultValue: , Description: ExactActiveClass
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconColor, DisplayName: IconColor, FieldType: String, DefaultValue: , Description: IconColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: IconColorIntensity, DisplayName: IconColorIntensity, FieldType: String, DefaultValue: , Description: IconColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Link, DisplayName: Link, FieldType: Boolean, DefaultValue: false, Description: Link
#DesignerProperty: Key: Nuxt, DisplayName: Nuxt, FieldType: Boolean, DefaultValue: false, Description: Nuxt
#DesignerProperty: Key: Replace, DisplayName: Replace, FieldType: Boolean, DefaultValue: false, Description: Replace
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
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
	Private sBadge As String = ""           'ignore
	Private sBadgeColor As String = ""      'ignore
	Private sBadgeColorIntensity As String = ""      'ignore
Private bAppend As Boolean
Private sCaption As String    'ignore
Private bDark As Boolean
Private sDisabled As String
Private bExact As Boolean
Private sExactActiveClass As String
Private sHref As String
Private sIcon As String
Private sIconColor As String
Private sIconColorIntensity As String
Private sKey As String
Private bLight As Boolean
Private bLink As Boolean
Private bNuxt As Boolean
Private bReplace As Boolean
Private bRipple As Boolean
Private sTarget As String
Private sTo As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVOn As String
'Private sVShow As String
Private bDisabled As Boolean
Private bHidden As Boolean
	Private VC As VueComponent					'ignore
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
	sDisabled = $"${mName}disabled"$
	'sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
bAppend = Props.Get("Append")
sCaption = Props.Get("Caption")
bDark = Props.Get("Dark")
bExact = Props.Get("Exact")
sExactActiveClass = Props.Get("ExactActiveClass")
sHref = Props.Get("Href")
sIcon = Props.Get("Icon")
sIconColor = Props.Get("IconColor")
sIconColorIntensity = Props.Get("IconColorIntensity")
sKey = Props.Get("Key")
bLight = Props.Get("Light")
bLink = Props.Get("Link")
bNuxt = Props.Get("Nuxt")
bReplace = Props.Get("Replace")
bRipple = Props.Get("Ripple")
sTarget = Props.Get("Target")
sTo = Props.Get("To")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
bHidden = Props.GetDefault("Hidden", False)
sBadge = Props.Get("Badge")
sBadgeColor = Props.Get("BadgeColor")
sBadgeColorIntensity = Props.Get("BadgeColorIntensity")
bDisabled = Props.GetDefault("Disabled",False)
End If
	'
	bAppend = BANanoShared.parseBool(bAppend)
bDark = BANanoShared.parseBool(bDark)
bExact = BANanoShared.parseBool(bExact)
bLight = BANanoShared.parseBool(bLight)
bLink = BANanoShared.parseBool(bLink)
bNuxt = BANanoShared.parseBool(bNuxt)
bReplace = BANanoShared.parseBool(bReplace)
bRipple = BANanoShared.parseBool(bRipple)
bHidden = BANanoShared.parseBool(bHidden)
bDisabled = BANanoShared.parseBool(bDisabled)
bDisabled = BANanoShared.parseBool(bDisabled)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-tab ref="${mName}" id="${mName}"></v-tab>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-tab"
	'
	If BANano.IsNull(sIcon) Or BANano.IsUndefined(sIcon) Then
		sIcon = ""
	End If
	'
	If sIcon <> "" Then
		VElement.Append($"<v-icon id="${mName}icon">${sIcon}</v-icon>"$)
		VElement.GetIcon.Color = VElement.BuildColor(sIconColor, sIconColorIntensity)
	End If
			
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
VElement.AddAttr(":append", bAppend)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr(":exact", bExact)
VElement.AddAttr("exact-active-class", sExactActiveClass)
VElement.AddAttr("href", sHref)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr(":link", bLink)
VElement.AddAttr(":nuxt", bNuxt)
VElement.AddAttr(":replace", bReplace)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr("target", sTarget)
VElement.AddAttr("to", sTo)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
'VElement.AddAttr("v-show", sVShow)
'VElement.SetData(sVShow, Not(bHidden))
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

Sub AddClass(s As String) As VTab
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VTab
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VTab
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VTab
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VTab
	C.SetData(sVIf, b)
	'C.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

Sub UpdateDisabled(C As VueComponent, b As Boolean)
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