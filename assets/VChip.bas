B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (item As Object)
#Event: ClickClose (item As Object)

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
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue:  , Description: Value in Chip Group
#DesignerProperty: Key: HREF, DisplayName: HREF, FieldType: String, DefaultValue: , Description: HREF
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: Boolean, DefaultValue: False, Description: Remove circle edges
#DesignerProperty: Key: Pointer, DisplayName: Pointer, FieldType: Boolean, DefaultValue: False, Description: Pointer
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Pill, DisplayName: Pill, FieldType: Boolean, DefaultValue: False, Description: Pill
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: normal, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: IconAlignment, DisplayName: Icon Alignment, FieldType: String, DefaultValue: normal, Description: Icon Alignment, List: normal|left|right
#DesignerProperty: Key: IconDark, DisplayName: Icon Dark, FieldType: Boolean, DefaultValue: False, Description: Icon Dark
'
#DesignerProperty: Key: ItemType, DisplayName: ItemType, FieldType: String, DefaultValue:  none, Description: Item Type, List: avatar-left|avatar-right|icon-right|icon-left|none|text
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (;), FieldType: String, DefaultValue:  add; edit; delete, Description: Item Keys
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  mdi-plus; mdi-pencil; mdi-delete, Description: Item Icons
#DesignerProperty: Key: ItemAvatars, DisplayName: Item Avatars (;), FieldType: String, DefaultValue:  , Description: Item Avatars
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  green; amber; red, Description: Item Colors
#DesignerProperty: Key: ItemTexts, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  Add; Edit; Delete, Description: Item Texts

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
	Private xitems As List
	Private sItemKeys As String
	Private sItemIcons As String
	Private itemname As String
	Private sItemType As String 
	Private sItemTexts As String
	Private sItemColors As String
	Private bHasButtons As Boolean
	Private sItemAvatars As String
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
	sActive = $"${mName}show"$
	itemname = $"${mName}items"$
	bHasButtons = False
	xitems.Initialize 
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
		sItemKeys = Props.GetDefault("ItemKeys","")
		sItemIcons = Props.GetDefault("ItemIcons","")
		sItemColors = Props.GetDefault("ItemColors","")
		sItemType = Props.GetDefault("ItemType", "none")
		sItemTexts = Props.GetDefault("ItemTexts", "")
		sItemAvatars = Props.GetDefault("ItemAvatars", "")
	End If
	'
	bLabel = BANanoShared.parseBool(bLabel)
	bDark = BANanoShared.parseBool(bDark)
	bIconDark = BANanoShared.parseBool(bIconDark)
	bOutlined = BANanoShared.parseBool(bOutlined)
	bClose = BANanoShared.parseBool(bClose)
	bPill = BANanoShared.parseBool(bPill)
	bPointer = BANanoShared.parseBool(bPointer)
	'
	Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim xicons As List = BANanoShared.StrParseComma(";", sItemIcons)
	Dim xcolors As List = BANanoShared.StrParseComma(";", sItemColors)
	Dim xtexts As List = BANanoShared.StrParseComma(";", sItemTexts)
	Dim xavatars As List = BANanoShared.StrParseComma(";", sItemAvatars)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xicons = BANanoShared.ListTrimItems(xicons)
	xcolors = BANanoShared.ListTrimItems(xcolors)
	xavatars = BANanoShared.ListTrimItems(xavatars)
		'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iIco As String = xicons.Get(itemCnt)
		Dim iCol As String = xcolors.Get(itemCnt)
		Dim iTxt As String = xtexts.Get(itemCnt)
		Dim iAva As String = xavatars.Get(itemCnt)
		
		If BANano.IsNull(iAva) Or BANano.IsUndefined(iAva) Then iAva = ""
		If BANano.IsNull(iIco) Or BANano.IsUndefined(iIco) Then iIco = ""
		If BANano.IsNull(iCol) Or BANano.IsUndefined(iCol) Then iCol = ""
		If BANano.IsNull(iTxt) Or BANano.IsUndefined(iTxt) Then iTxt = ""
		'
		Dim nm As Map = CreateMap()
		nm.Put("id", iKey)
		If iIco <> "" Then nm.Put("icon", iIco)
		If iCol <> "" Then nm.Put("color", iCol)
		If iTxt <> "" Then nm.Put("text", iTxt)
		If iAva <> "" Then nm.Put("avatar", iAva)
		xitems.Add(nm)
	Next
	bHasButtons = False
	If tItems >= 0 Then
		bHasButtons = True
	End If
	If sItemType = "none" Then
		bHasButtons = False	
	End If

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		If bHasButtons = False Then
			mElement = mTarget.Append($"<v-chip ref="${mName}" id="${mName}"></v-chip>"$).Get("#" & mName)
		Else
			mElement = mTarget.Append($"<v-chip ref="${mName}" id="${mName}" v-for="item in ${itemname}" :key="item.id" :color="item.color"></v-chip>"$).Get("#" & mName)
		End If
	End If
	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-chip"
	
	VElement.Classes = mClasses
	If bHasButtons = False Then
		VElement.ColorAttr = VElement.BuildColor(mColor, mColorIntensity)
		VElement.Value = sValue
	End If
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
	If bHidden Then
		VElement.bind("active", sActive)
		VElement.SetData(sActive, Not(bHidden))
	End If
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
	Dim siconID As String = $"${mName}icon"$
	Dim xAvatar As String = $"${mName}avatar"$
	Dim xImage As String = $"${mName}image"$
			
	If bHasButtons = False Then
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
			VElement.Append($"<v-avatar id="${xAvatar}"><v-img id="${xImage}" alt=""></v-img></v-avatar>"$)
			VElement.GetAvatar.Left = True
			VElement.GetImage.Src = sAvatar	
			VElement.Append($"<span id="${mName}text">${mText}</span>"$)	
		else If iHasicon >= 1 Then
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
	Else
		'we have buttons
		Select Case sItemType
		Case "avatar-left"
			VElement.Caption = ""
			VElement.Append($"<v-avatar v-if="item.avatar" id="${xAvatar}"><v-img id="${xImage}" :src="item.avatar" alt=""></v-img></v-avatar>"$)
			VElement.GetAvatar.Left = True
			VElement.Append($"<span v-if="item.text" id="${mName}text">{{ item.text }}</span>"$)	
		Case "avatar-right"
			VElement.Caption = ""
			VElement.Append($"<span v-if="item.text" id="${mName}text">{{ item.text }}</span>"$)
			VElement.Append($"<v-avatar v-if="item.avatar" id="${xAvatar}"><v-img id="${xImage}" :src="item.avatar" alt=""></v-img></v-avatar>"$)
			VElement.GetAvatar.Right = True
		Case "icon-right"
			VElement.Caption = ""
			VElement.Append($"<span v-if="item.text" id="${mName}text">{{ item.text }}</span>"$)
			VElement.Append($"<v-icon v-if="item.icon" id="${siconID}">{{ item.icon}}</v-icon>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Right = True
		Case "icon-left"
			VElement.Caption = ""
			VElement.Append($"<v-icon v-if="item.icon" id="${siconID}">{{ item.icon }}</v-icon>"$)
			VElement.Append($"<span v-if="item.text" id="${mName}text">{{ item.text }}</span>"$)
			VElement.GetIcon.Dark = bIconDark
			VElement.GetIcon.Left = True
		Case "none"
		End Select	
		VElement.SetData(itemname, xitems)
	End If
	
	VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
	VElement.BindAllEvents
	If bHasButtons Then
		VElement.SetOnEvent(mCallBack, "click", "item.id")
		VElement.SetOnEvent(mCallBack, "click:close", "item.id")
	End If
End Sub


'clear the items
Sub Clear(C As VueComponent)
	xitems.Initialize 
	C.SetData(itemname, xitems)
End Sub

'clear the items
Sub ClearOnApp(C As VuetifyApp)
	xitems.Initialize 
	C.SetData(itemname, xitems)
End Sub

'add an item
Sub AddItem(iID As String, iAvatar As String, iIcon As String, iColor As String, iText As String)
	Dim nm As Map = CreateMap()
	nm.Put("id", iID)
	If iAvatar <> "" Then nm.Put("avatar", iAvatar)
	If iIcon <> "" Then nm.Put("icon", iIcon)
	If iColor <> "" Then nm.Put("color", iColor)
	If iText <> "" Then nm.Put("text", iText)
	xitems.Add(nm)
End Sub

'refresh the items
Sub Refresh(C As VueComponent)
	C.SetData(itemname, xitems)
End Sub

'refresh the items
Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(itemname, xitems)
End Sub


Sub UpdateDisabled(C As VueComponent, b As Boolean)
	C.SetData($"${mName}disabled"$, b)
End Sub


Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(sActive, b)
End Sub

Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
	C.SetData($"${mName}disabled"$, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(sActive, b)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
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