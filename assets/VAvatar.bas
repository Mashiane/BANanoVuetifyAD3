B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: AvatarType, DisplayName: Avatar Type, FieldType: String, DefaultValue: none, Description: AvatarType, List: text|icon|image|none
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Text, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: HeadLine, DisplayName: HeadLine, FieldType: Boolean, DefaultValue: false, Description: HeadLine
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconDark, DisplayName: IconDark, FieldType: Boolean, DefaultValue: True, Description: IconDark
#DesignerProperty: Key: Image, DisplayName: Src, FieldType: String, DefaultValue: ./assets/bvad31.png, Description: Src
#DesignerProperty: Key: SrcBind, DisplayName: SrcBind, FieldType: String, DefaultValue: , Description: SrcBind
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue: white , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: normal, Description: Position, List: normal|left|right
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 48, Description: Size
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
'
Sub Class_Globals
	Private sAvatarType As String
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
	Private sColor As String
Private sHeight As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sPosition As String
Private sRounded As String
Private sSize As String
Private bTile As Boolean
Private sWidth As String
Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	Private mColorIntensity As String = ""
	Private mText As String = ""
	Private bHeadLine As Boolean
	Private mIcon As String = ""
	Private mImage As String = ""
	Private bIconDark As String = ""
	Private sVOn As String
	Private sVBind As String
	Private sElevation As String
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
Private sAvatarType As String
'Private xText As String
'Private xIcon As String
'Private xImage As String
Private xColor As String
Private sSrcBind As String
Private VC As VueComponent
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
	mVShow = $"${mName}show"$
	'xText = $"${mName}textvalue"$
	'xIcon = $"${mName}iconvalue"$
	'xImage = $"${mName}imagevalue"$
	xColor = $"${mName}colorvalue"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.GetDefault("VIf","")
		sColor = Props.GetDefault("Color","")
		mColorIntensity = Props.GetDefault("ColorIntensity","")
		mTextColor = Props.GetDefault("TextColor","")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		sHeight = Props.GetDefault("Height","")
		sMaxHeight = Props.GetDefault("MaxHeight","")
		sMaxWidth = Props.GetDefault("MaxWidth","")
		sMinHeight = Props.GetDefault("MinHeight","")
		sMinWidth = Props.GetDefault("MinWidth","")
		sPosition = Props.GetDefault("Position","")
		sRounded = Props.GetDefault("Rounded","")
		sSize = Props.GetDefault("Size","")
		bTile = Props.GetDefault("Tile",False)
		sWidth = Props.GetDefault("Width","")
		mText = Props.GetDefault("Text","")
		bHeadLine = Props.GetDefault("HeadLine",False)
		mIcon = Props.GetDefault("Icon","")
		mImage = Props.GetDefault("Image","")
		bIconDark = Props.GetDefault("IconDark",False)
		sVOn = Props.GetDefault("VOn","")
		sVBind = Props.GetDefault("VBind","")
		sElevation = Props.GetDefault("Elevation","")
		sMA = Props.Get("MA")
		sMB = Props.Get("MB")
		sML = Props.Get("ML")
		sMR = Props.Get("MR")
		sMT = Props.Get("MT")
		sMX = Props.Get("MX")
		sMY = Props.Get("MY")
		sPA = Props.Get("PA")
		sPB = Props.Get("PB")
		sPL = Props.Get("PL")
		sPR = Props.Get("PR")
		sPT = Props.Get("PT")
		sPX = Props.Get("PX")
		sPY = Props.Get("PY")
		sAvatarType = Props.GetDefault("AvatarType","none")
		sSrcBind = Props.GetDefault("SrcBind", "")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	bTile = BANanoShared.parseBool(bTile)
	bHeadLine = BANanoShared.parseBool(bHeadLine)
	'
	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-avatar ref="${mName}" id="${mName}"></v-avatar>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-avatar"
	
	If BANano.IsNull(mText) Or BANano.IsUndefined(mText) Then 
		mText = ""
	End If
	'
	If BANano.IsNull(mIcon) Or BANano.IsUndefined(mIcon) Then
		mIcon = ""
	End If
	'
	If BANano.IsNull(mImage) Or BANano.IsUndefined(mImage) Then
		mImage = ""
	End If
	'
	Select Case sAvatarType
		Case "text"
			VElement.Append($"<span id="${mName}text">${mText}</span>"$)
			VElement.GetText.TextColor = mTextColor
			VElement.GetText.TextColorIntensity=  mTextColorIntensity
			If bHeadLine = True Then
				VElement.GetText.AddClass("headline")
			End If
			'VElement.SetData(xText, mText)
		Case "icon"
			VElement.Append($"<v-icon id="${mName}icon">${mIcon}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			'VElement.SetData(xIcon, mIcon)
		Case "image"
			VElement.Append($"<v-img id="${mName}image" alt=""></v-img>"$)
			VElement.GetImage.AddAttr("src", mImage)
			If sSrcBind <> "" Then
				VElement.GetImage.AddAttr(":src", sSrcBind)
				VElement.SetData(sSrcBind, mImage)
			End If
			'VElement.SetData(xImage, mImage)
		Case Else
			If mText <> "" Then
				VElement.Append($"<span id="${mName}text">${mText}</span>"$)
				VElement.GetText.TextColor = mTextColor
				VElement.GetText.TextColorIntensity=  mTextColorIntensity
				If bHeadLine = True Then
					VElement.GetText.AddClass("headline")
				End If
				'VElement.SetData(xText, mText)
			End If 
			
			If mIcon <> "" Then
				VElement.Append($"<v-icon id="${mName}icon">${mIcon}</v-icon>"$)
				'VElement.SetData(xIcon, mIcon)
				VElement.GetIcon.Dark = bIconDark
			End If
			
			If mImage <> "" Then
				VElement.Append($"<v-img id="${mName}image" alt=""></v-img>"$)
				VElement.GetImage.AddAttr("src", mImage)
				'VElement.SetData(xImage, mImage)
				If sSrcBind <> "" Then
					VElement.GetImage.AddAttr(":src", sSrcBind)
					VElement.SetData(sSrcBind, mImage)
				End If
			End If
	End Select	
	
	'
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Bind("color", xColor)
	sColor = VElement.BuildColor(sColor, mColorIntensity)
	VElement.SetData(xColor, sColor)
	If bHidden Then
		VElement.VShow = mVShow
		VElement.SetData(mVShow, Not(bHidden))
	End If
	VElement.VIf = mVIf

	VElement.Height = sHeight
	VElement.MaxHeight = sMaxHeight
	VElement.MaxWidth = sMaxWidth
	VElement.MinHeight = sMinHeight
	VElement.MinWidth = sMinWidth
	VElement.Elevation = sElevation
	Select Case sPosition
	Case "normal"	
	Case "left"
	VElement.Left = True
	Case "right"
	VElement.Right = True
	End Select
	VElement.AddClass(sRounded)
	VElement.Size = sSize
	VElement.Tile = bTile
	VElement.Width = sWidth
	VElement.AddAttr("v-on", sVOn)
		VElement.AddAttr("v-bind", sVBind)
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
	'its clickable
	If SubExists(mCallBack, $"${mName}_click"$) Then
		VElement.CursorPointer	
	End If
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VAvatar
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VAvatar
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VAvatar
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VAvatar
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
End Sub

Sub UpdateSrc(C As VueComponent, s As String)
	C.SetData(sSrcBind, S)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(mVShow, b)
End Sub

Sub UpdateSrcOnApp(C As VuetifyApp, s As String)
	C.SetData(sSrcBind, S)
End Sub

'Sub UpdateText(C As VueComponent, s As String)
'	'C.SetData(xText, S)
'End Sub
'
'Sub UpdateImage(C As VueComponent, s As String)
'	'C.SetData(xImage, S)
'End Sub
'
'Sub UpdateIcon(C As VueComponent, s As String)
'	'C.SetData(xIcon, S)
'End Sub

Sub UpdateColor(C As VueComponent, s As String)
	C.SetData(xColor, S)
End Sub

Sub UpdateColorOnApp(C As VuetifyApp, s As String)
	C.SetData(xColor, S)
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
