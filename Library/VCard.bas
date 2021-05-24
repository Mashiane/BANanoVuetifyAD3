B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Img, DisplayName: Image, FieldType: String, DefaultValue: , Description: Image
#DesignerProperty: Key: ImgHeight, DisplayName: Image Height, FieldType: String, DefaultValue: , Description: Image Height
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: , Description: Title
#DesignerProperty: Key: TitleOnImage, DisplayName: Title On Image, FieldType: Boolean, DefaultValue: False, Description: Title On Image
#DesignerProperty: Key: SubTitle, DisplayName: Sub Title, FieldType: String, DefaultValue: , Description: Sub Title
#DesignerProperty: Key: SubTitleOnImage, DisplayName: Sub Title On Image, FieldType: Boolean, DefaultValue: False, Description: Sub Title On Image
#DesignerProperty: Key: CardText, DisplayName: Card Text, FieldType: Boolean, DefaultValue: True , Description: Card Text
#DesignerProperty: Key: CardTextContent, DisplayName: Card Text Content, FieldType: String, DefaultValue: , Description: Card Text Content
#DesignerProperty: Key: Divider, DisplayName: Divider, FieldType: Boolean, DefaultValue: True, Description: Divider
#DesignerProperty: Key: Actions, DisplayName: Actions, FieldType: Boolean, DefaultValue: True, Description: Actions
#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: Colorintensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue: , Description: Disabled
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: false, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: LoaderHeight, DisplayName: LoaderHeight, FieldType: String, DefaultValue: 4, Description: LoaderHeight
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: String, DefaultValue: , Description: Loading
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Raised, DisplayName: Raised, FieldType: Boolean, DefaultValue: false, Description: Raised
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Textcolor, DisplayName: Textcolor, FieldType: String, DefaultValue: , Description: Textcolor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: Textcolorintensity, DisplayName: Textcolorintensity, FieldType: String, DefaultValue: , Description: Textcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind
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
	Private sActiveClass As String
Private sColor As String
Private sColorintensity As String
Private bDark As Boolean
Private sDisabled As String
Private sElevation As String
Private bFlat As Boolean
Private sHeight As String
Private bHover As Boolean
Private sHref As String
Private sImg As String
Private sLoaderHeight As String
Private sLoading As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bOutlined As Boolean
Private bRaised As Boolean
Private sRounded As String
Private bShaped As Boolean
Private sTarget As String
Private sTextcolor As String
Private sTextcolorintensity As String
Private bTile As Boolean
Private sTo As String
Private sWidth As String
Private sImgHeight As String
Private sTitle As String
Private sSubTitle As String
Private bCardText As Boolean
Private bDivider As Boolean
Private bTitleOnImage As Boolean
Private bSubTitleOnImage As Boolean
Private bActions As Boolean
Private sCardTextContent As String
Private sVOn As String
private sVBind as string
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
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVShow = Props.Get("VShow")
		mVIf = Props.Get("VIf")
		sActiveClass = Props.Get("ActiveClass")
sColor = Props.Get("Color")
sColorintensity = Props.Get("Colorintensity")
bDark = Props.Get("Dark")
sDisabled = Props.Get("Disabled")
sElevation = Props.Get("Elevation")
bFlat = Props.Get("Flat")
sHeight = Props.Get("Height")
bHover = Props.Get("Hover")
sHref = Props.Get("Href")
sImg = Props.Get("Img")
sLoaderHeight = Props.Get("LoaderHeight")
sLoading = Props.Get("Loading")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
bOutlined = Props.Get("Outlined")
bRaised = Props.Get("Raised")
sRounded = Props.Get("Rounded")
bShaped = Props.Get("Shaped")
sTarget = Props.Get("Target")
sTextcolor = Props.Get("Textcolor")
sTextcolorintensity = Props.Get("Textcolorintensity")
bTile = Props.Get("Tile")
sTo = Props.Get("To")
sWidth = Props.Get("Width")
sImgHeight = Props.Get("ImgHeight")
sTitle = Props.Get("Title")
sSubTitle = Props.Get("SubTitle")
bCardText = Props.Get("CardText")
bDivider = Props.Get("Divider")
bTitleOnImage = Props.Get("TitleOnImage")
bSubTitleOnImage = Props.Get("SubTitleOnImage")
bActions = Props.Get("Actions")
sCardTextContent = Props.Get("CardTextContent")
sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
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
	'
	If BANano.IsNull(sImg) Or BANano.IsUndefined(sImg) Then
		sImg = ""
	End If
	If sImg <> "" Then
		VElement.Append($"<v-img id="${mName}image"></v-img>"$)
		VElement.GetImage.Src = sImg
		If BANano.IsNull(sImgHeight) Or BANano.IsUndefined(sImgHeight) Then
			sImgHeight = ""
		End If
		If sImgHeight <> "" Then
			VElement.GetImage.Height = sImgHeight
		End If
	End If
	'
	If BANano.IsNull(sTitle) Or BANano.IsUndefined(sTitle) Then
		sTitle = ""
	End If
	If BANano.IsNull(sSubTitle) Or BANano.IsUndefined(sSubTitle) Then
		sSubTitle = "" 
	End If
	If BANano.IsNull(bCardText) Or BANano.IsUndefined(bCardText) Then
		bCardText = False
	End If
	If BANano.IsNull(bDivider) Or BANano.IsUndefined(bDivider) Then
		bDivider = False 
	End If
	If BANano.IsNull(bTitleOnImage) Or BANano.IsUndefined(bTitleOnImage) Then
		bTitleOnImage = False
	End If
	If BANano.IsNull(bSubTitleOnImage) Or BANano.IsUndefined(bSubTitleOnImage) Then
		bSubTitleOnImage = False
	End If
	If BANano.IsNull(bActions) Or BANano.IsUndefined(bActions) Then
		bActions = False
	End If
	If BANano.IsNull(sCardTextContent) Or BANano.IsUndefined(sCardTextContent) Then
		sCardTextContent = ""
	End If
	'
	'do we have a title
	If sTitle <> "" Then
		If bTitleOnImage Then
			'add on image
			VElement.GetImage.Append($"<v-card-title id="${mName}cardtitle"></v-card-title>"$)
		Else
			VElement.Append($"<v-card-title id="${mName}cardtitle"></v-card-title>"$)
		End If
		VElement.GetCardTitle.Caption = sTitle
	End If
	
	'do we have a sub title
	If sSubTitle <> "" Then
		If bSubTitleOnImage Then
			'add on image
			VElement.GetImage.Append($"<v-card-subtitle id="${mName}cardsubtitle"></v-card-subtitle>"$)
		Else
			VElement.Append($"<v-card-subtitle id="${mName}cardsubtitle"></v-card-subtitle>"$)
		End If
		VElement.GetCardSubTitle.Caption = sSubTitle
	End If
	'
	'we have card text
	If bCardText <> False Then
		VElement.Append($"<v-card-text id="${mName}cardtext"></v-card-text>"$)
		VElement.GetCardText.Caption = sCardTextContent
	End If
	'
	If bDivider Then
		VElement.Append($"<v-divider id="${mName}divider"></v-divider>"$)
	End If
	'
	If bActions Then
		VElement.Append($"<v-card-actions id="${mName}cardactions"></v-card-actions>"$)
	End If
	'
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.VShow = mVShow
	VElement.VIf = mVIf
	VElement.ActiveClass = sActiveClass
VElement.Color = VElement.BuildColor(sColor, sColorintensity)
VElement.Dark = bDark
VElement.Disabled = sDisabled
VElement.Elevation = sElevation
VElement.Flat = bFlat
VElement.Height = sHeight
VElement.Hover = bHover
VElement.Href = sHref
VElement.LoaderHeight = sLoaderHeight
VElement.Loading = sLoading
VElement.MaxHeight = sMaxHeight
VElement.MaxWidth = sMaxWidth
VElement.MinHeight = sMinHeight
VElement.MinWidth = sMinWidth
VElement.Outlined = bOutlined
VElement.Raised = bRaised
VElement.AddClass(sRounded)
VElement.Shaped = bShaped
VElement.Target = sTarget
VElement.TextColor = VElement.BuildColor(sTextcolor, sTextcolorintensity)
VElement.Tile = bTile
VElement.To = sTo
VElement.Width = sWidth
VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

Sub AddClass(s As String) As VCard
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VCard
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VCard
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VCard
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Visible(VC As VueComponent, b As Boolean) As VCard
	VC.SetData(mVIf, b)
	VC.SetData(mVShow, b)
	Return Me
End Sub


Sub Loading(VC As VueComponent, b As Boolean) As VCard
	VC.SetData(sLoading, b)
	Return Me
End Sub

Sub UploadElevation(VC As VueComponent, b As Boolean) As VCard
	VC.SetData(sElevation, b)
	Return Me
End Sub

Sub CardTitle As VueElement
	Return VElement.GetCardTitle
End Sub

Sub CardText As VueElement
	Return VElement.GetCardText
End Sub

Sub CardActions As VueElement
	Return VElement.getCardActions
End Sub

Sub CardSubTitle As VueElement
	Return VElement.GetCardSubTitle
End Sub

Sub CardImage As VueElement
	Return VElement.GetImage
End Sub