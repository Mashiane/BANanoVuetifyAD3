B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (e As BANanoEvent)
#Event: ClickClose (e As BANanoEvent)

' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Text, DisplayName: Caption, FieldType: String, DefaultValue: Chip , Description: Text
#DesignerProperty: Key: Avatar, DisplayName: Avatar, FieldType: String, DefaultValue: , Description: Avatar
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Close, DisplayName: Close, FieldType: Boolean, DefaultValue: False, Description: Close
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: HREF, DisplayName: HREF, FieldType: String, DefaultValue: , Description: HREF
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: Boolean, DefaultValue: False, Description: Label
#DesignerProperty: Key: Pointer, DisplayName: Pointer, FieldType: Boolean, DefaultValue: False, Description: Pointer
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Pill, DisplayName: Pill, FieldType: Boolean, DefaultValue: False, Description: Pill
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: normal, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: IconAlignment, DisplayName: Icon Alignment, FieldType: String, DefaultValue: normal, Description: Icon Alignment, List: normal|left|right
#DesignerProperty: Key: IconDark, DisplayName: Icon Dark, FieldType: Boolean, DefaultValue: False, Description: Icon Dark
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
	Private mColor As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mVIf As String = ""
	Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	Private mColorIntensity As String = ""
	Private mText As String = ""
	Private bDark As Boolean
	Private bDisabled As Boolean
	Private sHREF As String
	Private sIconAlignment As String
	Private bIconDark As Boolean
	Private sIconName As String
	Private bOutlined As Boolean
	Private sSize As String
	Private sTarget As String
	Private sTo As String
	Private bClose As Boolean
	Private bLabel As Boolean
	Private sValue As String
	Private bPill As Boolean
	Private sAvatar As String
	Private sActive As String
	Private bPointer As Boolean
	Private sVBind As String
	Private sVOn As String
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
	sActive = $"${mName}show"$
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
		mVIf = Props.Get("VIf")
		mText = Props.Get("Text")
		bLabel = Props.Get("Label")
		sValue = Props.Get("Value")
		bDark = Props.Get("Dark")
		bDisabled = Props.GetDefault("Disabled",False)
		bDisabled = BANanoShared.parseBool(bDisabled)
		sHREF = Props.Get("HREF")
		sIconAlignment = Props.Get("IconAlignment")
		bIconDark = Props.Get("IconDark")
		sIconName = Props.Get("IconName")
		bOutlined = Props.Get("Outlined")
		sSize = Props.Get("Size")
		sTarget = Props.Get("Target")
		sTo = Props.Get("To")
		bClose = Props.Get("Close")
		bPill = Props.Get("Pill")
		sAvatar = Props.Get("Avatar")
		bPointer = Props.Get("Pointer")
		sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	bLabel = BANanoShared.parseBool(bLabel)
bDark = BANanoShared.parseBool(bDark)
bIconDark = BANanoShared.parseBool(bIconDark)
bOutlined = BANanoShared.parseBool(bOutlined)
bClose = BANanoShared.parseBool(bClose)
bPill = BANanoShared.parseBool(bPill)
bPointer = BANanoShared.parseBool(bPointer)

	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		mElement = mTarget.Append($"<v-chip ref="${mName}" id="${mName}"></v-chip>"$).Get("#" & mName)
	End If
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-chip"
	VElement.Classes = mClasses
	VElement.ColorAttr = VElement.BuildColor(mColor, mColorIntensity)
	VElement.TextColor = mTextColor
	VElement.TextColorIntensity = mTextColorIntensity
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.VIf = mVIf
	VElement.Close = bClose
	VElement.ChipLabel = bLabel
	VElement.Dark = bDark
	VElement.Disabled = $"${mName}disabled"$
	VElement.SetData($"${mName}disabled"$, bDisabled)
	VElement.HREF = sHREF
	VElement.Outlined = bOutlined
	VElement.Target = sTarget
	VElement.To = sTo
	VElement.Pill = bPill
	VElement.Value = sValue
	VElement.bind("active", sActive)
	VElement.SetData(sActive, Not(bHidden))
	VElement.SetData(mVIf, False)
	If bPointer Then
		VElement.CursorPointer
	End If
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
	'
	Dim iHasAvatar As Int = 0
	Dim iHasicon As Int = 0
	'
	If BANano.IsNull(sAvatar) Then sAvatar = ""
	If sAvatar <> "" Then 
		iHasAvatar = iHasAvatar + 1
	End If
	'
	If BANano.IsNull(sIconName) Then sIconName = ""
	If sIconName <> "" Then 
		iHasicon = iHasicon + 1
	End If
	'
	If iHasAvatar >= 1 Then
		'add the avatar
		Dim xAvatar As String = $"${mName}avatar"$
		Dim xImage As String = $"${mName}image"$
		VElement.Append($"<v-avatar id="${xAvatar}"><v-img id="${xImage}" alt=""></v-img></v-avatar>"$)
		VElement.GetAvatar.Left = True
		VElement.GetImage.Src = sAvatar	
		VElement.Append($"<span id="${mName}text">${mText}</span>"$)	
	else If iHasicon >= 1 Then
		Dim siconID As String = $"${mName}icon"$
		Select Case sIconAlignment
		Case "normal"
			'VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			'VElement.GetIcon.Dark = bIconDark
		Case "left"
			VElement.Caption = ""
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Left = True
			VElement.Append($"<span id="${mName}text">${mText}</span>"$)
		Case "right"
			VElement.Caption = ""
			VElement.Append($"<span id="${mName}text">${mText}</span>"$)
			VElement.Append($"<v-icon id="${siconID}">${sIconName}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Right = True
		End Select
	Else
		VElement.Caption = mText
	End If
	VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
	VElement.BindAllEvents
End Sub

Sub UpdateDisabled(VC As VueComponent, b As Boolean)
	VC.SetData($"${mName}disabled"$, b)
End Sub


Sub UpdateVisible(VC As VueComponent, b As Boolean)
	VC.SetData(mVIf, b)
	VC.SetData(sActive, b)
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VChip
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VChip
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VChip
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VChip
	VElement.RemoveAttr(p)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub


Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		VC.SetCallBack(k, cb)
	Next
End Sub


Sub OnClick(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", args)
End Sub