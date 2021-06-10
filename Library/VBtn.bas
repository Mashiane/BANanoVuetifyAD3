B4J=true
Group=Default Group\Buttons
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)

' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Text, DisplayName: Caption, FieldType: String, DefaultValue: Button , Description: Text
#DesignerProperty: Key: Raised, DisplayName: Raised/Text, FieldType: Boolean, DefaultValue: True, Description: Transparent Background Off
#DesignerProperty: Key: Block, DisplayName: Block, FieldType: Boolean, DefaultValue: False, Description: Block
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: Boolean, DefaultValue: False, Description: Icon
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: normal, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: FAB, DisplayName: FAB, FieldType: Boolean, DefaultValue: False, Description: FAB
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: IconAlignment, DisplayName: Icon Alignment, FieldType: String, DefaultValue: normal, Description: Icon Alignment, List: normal|left|right
#DesignerProperty: Key: IconDark, DisplayName: Icon Dark, FieldType: Boolean, DefaultValue: False, Description: Icon Dark
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
#DesignerProperty: Key: HREF, DisplayName: HREF, FieldType: String, DefaultValue: , Description: HREF
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded, 
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description: 
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
	Private mColor As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	Private mColorIntensity As String = ""
	Private mText As String = ""
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
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
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
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mColor = Props.Get("Color")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mColorIntensity = Props.Get("ColorIntensity")
		mTextColor = Props.Get("TextColor")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		mVShow = Props.Get("VShow")
		mVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		mText = Props.Get("Text")
		bBlock = Props.Get("Block")
		bDark = Props.Get("Dark")
		bDepressed = Props.Get("Depressed")
		bDisabled = Props.GetDefault("Disabled",false)
		bFAB = Props.Get("FAB")
		sHREF = Props.Get("HREF")
		bIcon = Props.Get("Icon")
		sIconAlignment = Props.Get("IconAlignment")
		bIconDark = Props.Get("IconDark")
		sIconName = Props.Get("IconName")
		bLoading = Props.GetDefault("Loading", False)
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
	End If
	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-btn id="${mName}"></v-btn>"$).Get("#" & mName)
	End If
	
	If BANano.IsNull(bLoading) Or BANano.IsUndefined(bLoading) Then
		bLoading = False 
	End If
	If BANano.IsNull(bDisabled) Or BANano.IsUndefined(bDisabled) Then
		bDisabled = False 
	End If
	If BANano.IsNull(bHidden) Or BANano.IsUndefined(bHidden) Then
		bHidden = False 
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
		Case "left"
			VElement.Caption = ""
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Left = True
			VElement.Append($"<span id="${mName}text">${VElement.InMoustache1(mText, xCaption)}</span>"$)
		Case "right"
			VElement.Caption = ""
			VElement.Append($"<span id="${mName}text">${VElement.InMoustache1(mText, xCaption)}</span>"$)
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Right = True
		End Select
	End If
	
	VElement.Classes = mClasses
	mColor = VElement.BuildColor(mColor, mColorIntensity)
	VElement.Bind("color", xColor)
	VElement.SetData(xColor, mColor)
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.TextColor = VElement.BuildColor(mTextColor, mTextColorIntensity)
	VElement.VIf = mVIf
	VElement.VShow = mVShow
	VElement.SetData(mVShow, Not(bHidden))
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
	VElement.BindAllEvents
End Sub

'update the label of the button
Sub UpdateLabel(VC As VueComponent, s As String)
	VC.SetData(xCaption, S)
End Sub

'update the color of the button
Sub UpdateColor(VC As VueComponent, s As String)
	VC.SetData(xColor, S)
End Sub

'update the loading state of the button
Sub UpdateLoading(VC As VueComponent, b As Boolean)
	VC.SetData(xLoading, b)
End Sub

'update the disabled state of the button
Sub UpdateDisabled(VC As VueComponent, b As Boolean)
	VC.SetData(xDisabled, b)
End Sub

'add to parent
public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

'remove the element
public Sub Remove()
	mTarget.Empty
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
Sub UpdateVisible(VC As VueComponent, b As Boolean)
	VC.SetData(mVIf, b)
	VC.SetData(mVShow, b)
End Sub

'get the id of the button
Sub getID As String
	Return mName
End Sub

'get the element name
Sub getHere As String
	Return $"#${mName}"$
End Sub