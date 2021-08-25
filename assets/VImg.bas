B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: false, Description: Hidden
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: ./assets/bvad31.png, Description: Src
#DesignerProperty: Key: LazySrc, DisplayName: LazySrc, FieldType: String, DefaultValue: , Description: LazySrc
#DesignerProperty: Key: SrcBind, DisplayName: Src Binding, FieldType: String, DefaultValue: , Description: SrcBind Binding
#DesignerProperty: Key: LazySrcBind, DisplayName: LazySrcBind, FieldType: String, DefaultValue: , Description: LazySrcBind
#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: , Description: Alt
#DesignerProperty: Key: AspectRatio, DisplayName: AspectRatio, FieldType: String, DefaultValue: , Description: AspectRatio
#DesignerProperty: Key: Contain, DisplayName: Contain, FieldType: Boolean, DefaultValue: false, Description: Contain
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: false, Description: Shrink
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: 200 , Description: MaxHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: 200 , Description: MaxWidth
#DesignerProperty: Key: Sizes, DisplayName: Sizes, FieldType: String, DefaultValue: , Description: Sizes
#DesignerProperty: Key: Srcset, DisplayName: Srcset, FieldType: String, DefaultValue: , Description: Srcset
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind
'#DesignerProperty: Key: AnimeAlternate, DisplayName: AnimeAlternate, FieldType: Boolean, DefaultValue: false, Description: AnimeAlternate
'#DesignerProperty: Key: AnimeDirection, DisplayName: AnimeDirection, FieldType: String, DefaultValue: , Description: AnimeDirection
'#DesignerProperty: Key: AnimeDuration, DisplayName: AnimeDuration, FieldType: String, DefaultValue: , Description: AnimeDuration
'#DesignerProperty: Key: AnimeEasing, DisplayName: AnimeEasing, FieldType: String, DefaultValue: , Description: AnimeEasing
'#DesignerProperty: Key: AnimeLoop, DisplayName: AnimeLoop, FieldType: Boolean, DefaultValue: false, Description: AnimeLoop
'#DesignerProperty: Key: AnimeTranslateX, DisplayName: AnimeTranslateX, FieldType: String, DefaultValue: , Description: AnimeTranslateX
'#DesignerProperty: Key: AnimeTranslateY, DisplayName: AnimeTranslateY, FieldType: String, DefaultValue: , Description: AnimeTranslateY
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
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private sAlt As String
Private sAspectRatio As String
Private bContain As Boolean
Private bDark As Boolean
Private sHeight As String
Private sLazySrc As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sSizes As String
Private sSrc As String
Private sSrcset As String
Private sTransition As String
Private sWidth As String
Private sVOn As String
Private sVBind As String
'Private bAnimeAlternate As Boolean
'Private sAnimeDirection As String
'Private sAnimeDuration As String
'Private sAnimeEasing As String
'Private bAnimeLoop As Boolean
'Private sAnimeTranslateX As String
'Private sAnimeTranslateY As String
'Public Animate As BANanoAnimeJS
Private bShrink As Boolean
Private sSrcBind As String
Private sLazySrcBind As String
Private VC As VueComponent			'ignore
Private bHidden As Boolean
Private bAbsolute As Boolean
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
	mVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.Get("VIf")
		sAlt = Props.Get("Alt")
sAspectRatio = Props.Get("AspectRatio")
bContain = Props.Get("Contain")
bDark = Props.Get("Dark")
sHeight = Props.Get("Height")
sLazySrc = Props.Get("LazySrc")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sSizes = Props.Get("Sizes")
sSrc = Props.Get("Src")
sSrcset = Props.Get("Srcset")
sTransition = Props.Get("Transition")
sWidth = Props.Get("Width")
sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
'		bAnimeAlternate = Props.Get("AnimeAlternate")
'sAnimeDirection = Props.Get("AnimeDirection")
'sAnimeDuration = Props.Get("AnimeDuration")
'sAnimeEasing = Props.Get("AnimeEasing")
'bAnimeLoop = Props.Get("AnimeLoop")
'sAnimeTranslateX = Props.Get("AnimeTranslateX")
'sAnimeTranslateY = Props.Get("AnimeTranslateY")
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
sSrcBind = Props.GetDefault("SrcBind", "")
sLazySrcBind = Props.GetDefault("LazySrcBind", "")
bHidden = Props.GetDefault("Hidden", False)
bHidden = BANanoShared.parseBool(bHidden)
bAbsolute = Props.GetDefault("Absolute", False)
bAbsolute = BANanoShared.parseBool(bAbsolute)
End If
	'
	bContain = BANanoShared.parseBool(bContain)
bDark = BANanoShared.parseBool(bDark)
'bAnimeAlternate = BANanoShared.parseBool(bAnimeAlternate)
'bAnimeLoop = BANanoShared.parseBool(bAnimeLoop)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-img ref="${mName}" id="${mName}"></v-img>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-img"
	VElement.Absolute = bAbsolute
	If bHidden Then
	VElement.VShow = mVShow
	VElement.Setdata(mVShow, Not(bHidden))
	End If
	VElement.VIf = mVIf
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Alt = sAlt
VElement.AspectRatio = sAspectRatio
VElement.Contain = bContain
VElement.Dark = bDark
VElement.Height = sHeight
VElement.LazySrc = sLazySrc
VElement.MaxHeight = sMaxHeight
VElement.MaxWidth = sMaxWidth
VElement.MinHeight = sMinHeight
VElement.MinWidth = sMinWidth
VElement.Shrink1(bShrink)
VElement.Sizes = sSizes
VElement.Src = sSrc
VElement.Srcset = sSrcset
If sSrcBind <> "" Then
	VElement.Bind("src", sSrcBind)
	VElement.SetData(sSrcBind, sSrc)
End If
If sLazySrcBind <> "" Then
	VElement.Bind("lazy-src", sLazySrcBind)
	VElement.SetData(sLazySrcBind, sLazySrc)
End If
VElement.Transition = sTransition
VElement.Width = sWidth
VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
VElement.BindAllEvents

'its clickable
If SubExists(mCallBack, $"${mName}_click"$) Then
	VElement.CursorPointer	
End If
'

'	Animate.Initialize(mCallBack, $"#${mName}"$)
'	Animate.anime.translateX(sAnimeTranslateX)
'	Animate.anime.translateY(sAnimeTranslateY)
	
'	Animate.anime.alternate(bAnimeAlternate)
'	If bAnimeAlternate = False Then
'		Animate.anime.direction(sAnimeDirection)
'	End If
'	Animate.anime.loopIT(bAnimeLoop)
'	Animate.anime.duration(sAnimeDuration)
'	Animate.anime.easing(sAnimeEasing)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VImg
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VImg
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VImg
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VImg
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VImg
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
	Return Me
End Sub

Sub UpdateSrc(C As VueComponent, s As String)
	C.SetData(sSrcBind, S)
End Sub

Sub UpdatesLazySrcBind(C As VueComponent, s As String)
	C.SetData(sLazySrcBind, S)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VImg
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
	Return Me
End Sub

Sub UpdateSrcOnApp(C As VuetifyApp, s As String)
	C.SetData(sSrcBind, S)
End Sub

Sub UpdatesLazySrcBindOnApp(C As VuetifyApp, s As String)
	C.SetData(sLazySrcBind, S)
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
