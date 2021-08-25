B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (id As String)
#Event: Main_Click(e As BananoEvent)

' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: OpenIcon, DisplayName: Open Icon, FieldType: String, DefaultValue: mdi-account-circle, Description: Open Icon
#DesignerProperty: Key: CloseIcon, DisplayName: Close Icon, FieldType: String, DefaultValue: mdi-close, Description: Close Icon
#DesignerProperty: Key: Direction, DisplayName: Direction, FieldType: String, DefaultValue: top, Description: Direction, List: top|right|bottom|left
#DesignerProperty: Key: OpenOnHover, DisplayName: OpenOnHover, FieldType: Boolean, DefaultValue: True, Description: OpenOnHover
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: x-large, Description: Size, List: x-small|small|normal|large|x-large
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: True, Description: Absolute
#DesignerProperty: Key: Position, DisplayName: Position, FieldType: String, DefaultValue: bottom-right, Description: Position, List: normal|top-left|top-right|bottom-left|bottom-right
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  blue, Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: True, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (;), FieldType: String, DefaultValue:  add; edit; delete, Description: Item Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  mdi-plus; mdi-pencil; mdi-delete, Description: Item Icons
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  green; amber; red, Description: Item Colors

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
	Private bDark As Boolean
	Private bDisabled As Boolean
	Private bOutlined As Boolean
	Private sSize As String
	Private bAbsolute As Boolean
	Private sPosition As String
	Private sOpenIcon As String
	Private sCloseIcon As String
	Private sDirection As String
	Private bOpenOnHover As Boolean
	Private sTransition As String
	Private sItemKeys As String
	Private sItemIcons As String
	Private sItemColors As String
	Private sVModel As String
	Private sOnHover As String
	Private VC As VueComponent							'ignore
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
	sVModel = $"${mName}vmodel"$
	sOnHover = $"${mName}hover"$
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
		bDisabled = Props.GetDefault("Disabled",False)
		bOutlined = Props.Get("Outlined")
		sSize = Props.Get("Size")
		bAbsolute = Props.Get("Absolute")
		sPosition = Props.Get("Position")
		sOpenIcon = Props.Get("OpenIcon")
		sCloseIcon = Props.Get("CloseIcon")
		sDirection = Props.Get("Direction")
		bOpenOnHover = Props.Get("OpenOnHover")
		sTransition = Props.Get("Transition")
		sItemKeys = Props.Get("ItemKeys")
		sItemIcons = Props.Get("ItemIcons")
		sItemColors = Props.Get("ItemColors")
		sVModel = Props.Get("VModel")
	End If
	'
	bDark = BANanoShared.parseBool(bDark)
bDisabled = BANanoShared.parseBool(bDisabled)
bOutlined = BANanoShared.parseBool(bOutlined)
bAbsolute = BANanoShared.parseBool(bAbsolute)
bOpenOnHover = BANanoShared.parseBool(bOpenOnHover)

	'
	'build the data source
	Dim ds As String = $"${mName}ds"$
	Dim rs As List
	rs.Initialize 
	'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemIcons = sItemIcons.Replace(",", ";")
	sItemColors = sItemColors.Replace(",", ";")
	
	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xicons As List = BANanoShared.StrParse(";", sItemIcons)
	Dim xcolors As List = BANanoShared.StrParse(";", sItemColors)
	'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xicons = BANanoShared.ListTrimItems(xicons)
	xcolors = BANanoShared.ListTrimItems(xcolors)
	'
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iIco As String = xicons.Get(itemCnt)
		Dim iCol As String = xcolors.Get(itemCnt)
		'
		Dim nm As Map = CreateMap()
		nm.Put("id", iKey)
		nm.Put("icon", iIco)
		nm.Put("color", iCol)
		rs.Add(nm)
	Next
		
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-speed-dial ref="${mName}" id="${mName}"></v-speed-dial>"$).Get("#" & mName)
	End If
	
	'add the open and close icons
	mElement.Append($"<v-template v-slot:activator>
    <v-btn id="${mName}main" v-model="${sVModel}" fab>
      <v-icon v-if="${sVModel}">${sCloseIcon}</v-icon>
          <v-icon v-else>${sOpenIcon}</v-icon>
        </v-btn>
      </v-template>
	  <v-btn id="${mName}child" v-for="item in ${ds}" :key="item.id" fab dark small :color="item.color">
        <v-icon v-html=item.icon></v-icon>
      </v-btn>"$)
	
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-speed-dial"
	'save the data source
	VElement.SetData(ds, rs)
	'
	VElement.GetMain.Dark = bDark
	VElement.GetMain.Color = VElement.BuildColor(mColor, mColorIntensity)
	VElement.GetMain.TextColor = mTextColor
	VElement.GetMain.TextColorIntensity = mTextColorIntensity
	VElement.GetMain.Outlined = bOutlined
	'
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes	
	VElement.VIf = mVIf
	VElement.vmodel = sVModel
	VElement.SetData(sVModel, False)
	VElement.OpenOnHover = sOnHover
	VElement.SetData(sOnHover, bOpenOnHover)
	VElement.Direction = sDirection
	VElement.Transition = sTransition
	VElement.Disabled = $"${mName}disabled"$
	VElement.SetData($"${mName}disabled"$, bDisabled)
	
	VElement.Absolute = bAbsolute
	'
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
	VElement.GetChild.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", "item.id")
	VElement.BindVueElement(VElement.GetChild)
End Sub

Sub Button As VueElement
	Return VElement.GetButton
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VSpeedDial
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VSpeedDial
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VSpeedDial
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VSpeedDial
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(sVModel, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(mVIf, b)
	C.SetData(sVModel, b)
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