B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Append, DisplayName: Append, FieldType: Boolean, DefaultValue: false, Description: Append
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: false, Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: false, Description: Eager
#DesignerProperty: Key: Exact, DisplayName: Exact, FieldType: Boolean, DefaultValue: false, Description: Exact
#DesignerProperty: Key: ExactActiveClass, DisplayName: ExactActiveClass, FieldType: String, DefaultValue: , Description: ExactActiveClass
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Link, DisplayName: Link, FieldType: Boolean, DefaultValue: false, Description: Link
#DesignerProperty: Key: Replace, DisplayName: Replace, FieldType: Boolean, DefaultValue: false, Description: Replace
#DesignerProperty: Key: ReverseTransition, DisplayName: ReverseTransition, FieldType: String, DefaultValue: , Description: ReverseTransition
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
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
Private bDisabled As Boolean
Private bEager As Boolean
Private bExact As Boolean
Private sExactActiveClass As String
Private sHref As String
Private sKey As String
Private bLink As Boolean
Private bReplace As Boolean
Private sReverseTransition As String
Private bRipple As Boolean
Private sSrc As String
Private sTarget As String
Private sTo As String
Private sTransition As String
Private sVFor As String
Private sVIf As String
Private sVShow As String
Private sValue As String
Private bHidden As Boolean
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
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
bAppend = Props.Get("Append")
bDisabled = Props.GetDefault("Disabled",False)
bEager = Props.Get("Eager")
bExact = Props.Get("Exact")
sExactActiveClass = Props.Get("ExactActiveClass")
sHref = Props.Get("Href")
sKey = Props.Get("Key")
bLink = Props.Get("Link")
bReplace = Props.Get("Replace")
sReverseTransition = Props.Get("ReverseTransition")
bRipple = Props.Get("Ripple")
sSrc = Props.Get("Src")
sTarget = Props.Get("Target")
sTo = Props.Get("To")
sTransition = Props.Get("Transition")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
bHidden = Props.GetDefault("Hidden", False)
sValue = Props.Get("Value")
	End If
	'
	bAppend = BANanoShared.parseBool(bAppend)
bDisabled = BANanoShared.parseBool(bDisabled)
bEager = BANanoShared.parseBool(bEager)
bExact = BANanoShared.parseBool(bExact)
bLink = BANanoShared.parseBool(bLink)
bReplace = BANanoShared.parseBool(bReplace)
bRipple = BANanoShared.parseBool(bRipple)
bHidden = BANanoShared.parseBool(bHidden)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-carousel-item ref="${mName}" id="${mName}"></v-carousel-item>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-carousel-item"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
VElement.AddAttr(":append", bAppend)
VElement.AddAttr(":disabled", bDisabled)
VElement.AddAttr(":eager", bEager)
VElement.AddAttr(":exact", bExact)
VElement.AddAttr("exact-active-class", sExactActiveClass)
VElement.AddAttr("href", sHref)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":link", bLink)
VElement.AddAttr(":replace", bReplace)
VElement.AddAttr("reverse-transition", sReverseTransition)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr("src", sSrc)
VElement.AddAttr("target", sTarget)
VElement.AddAttr("to", sTo)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("value", sValue)
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
Sub AddClass(s As String) As VCarouselItem
	VElement.AddClass(s)
	Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VCarouselItem
	VElement.SetAttr(p, v)
	Return Me
End Sub
Sub AddStyle(p As String, v As String) As VCarouselItem
	VElement.AddStyle(p, v)
	Return Me
End Sub
Sub RemoveAttr(p As String) As VCarouselItem
	VElement.RemoveAttr(p)
	Return Me
End Sub
Sub UpdateVisible(C As VueComponent, b As Boolean) As VCarouselItem
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VCarouselItem
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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub