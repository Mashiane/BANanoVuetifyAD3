B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class
' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FillHeight, DisplayName: FillHeight, FieldType: Boolean, DefaultValue: False, Description: Fill Height
#DesignerProperty: Key: TextCenter, DisplayName: TextCenter, FieldType: Boolean, DefaultValue: false, Description: TextCenter
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Align, DisplayName: Vertical Align, FieldType: String, DefaultValue: normal, Description: Align, List: normal|start|center|end|baseline|stretch
#DesignerProperty: Key: Justify, DisplayName: Horizontal Align, FieldType: String, DefaultValue: normal, Description: Justify, List: normal|start|center|end|space-between|space-around
#DesignerProperty: Key: NoGutters, DisplayName: NoGutters, FieldType: Boolean, DefaultValue: False, Description: No Gutters
#DesignerProperty: Key: DebugBorder, DisplayName: DebugBorder, FieldType: Boolean, DefaultValue: False , Description: DebugBorder
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderColor, DisplayName: BorderColor, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderStyle, DisplayName: Border Style, FieldType: String, DefaultValue:  , Description: , List: none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset|initial|inherit|remove
#DesignerProperty: Key: BorderWidth, DisplayName: Border Width, FieldType: String, DefaultValue:  , Description: 

#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
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
	Private mAlign As String = ""
	Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	Private mJustify As String = ""
	Private mColorIntensity As String = ""
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private bFillHeight As Boolean
	Private bNoGutters As Boolean
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
Private sVFor As String
Private sKey As String
	Private sBorder As String
Private sBorderColor As String
Private sBorderRadius As String
Private sBorderStyle As String
Private sBorderWidth As String
Private bDebugBorder As Boolean
	Private bTextCenter As Boolean
	Private bHidden As Boolean
	Private VC As VueComponent		'ignore
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

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mColor = Props.Get("Color")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mTextColor = Props.Get("TextColor")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		mAlign = Props.Get("Align")
		mJustify = Props.Get("Justify")
		mColorIntensity = Props.Get("ColorIntensity")
		mVIf = Props.Get("VIf")
		bFillHeight = Props.Get("FillHeight")
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
sKey = Props.Get("Key")
sVFor = Props.Get("VFor")
bNoGutters = Props.GetDefault("NoGutters",False)
bDebugBorder = Props.GetDefault("DebugBorder",False)
		sBorder = Props.Get("Border")
sBorderColor = Props.Get("BorderColor")
sBorderRadius = Props.Get("BorderRadius")
sBorderStyle = Props.Get("BorderStyle")
		sBorderWidth = Props.Get("BorderWidth")
		bTextCenter = Props.GetDefault("TextCenter", False)
		bTextCenter = BANanoShared.parseBool(bTextCenter)
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	bFillHeight = BANanoShared.parseBool(bFillHeight)
bNoGutters = BANanoShared.parseBool(bNoGutters)
bDebugBorder = BANanoShared.parseBool(bDebugBorder)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		mElement = mTarget.Append($"<v-row ref="${mName}" id="${mName}"></v-row>"$).Get("#" & mName)
	End If
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-row"
	VElement.Classes = mClasses
	VElement.TextColor = mTextColor
	VElement.TextColorIntensity = mTextColorIntensity
	VElement.Color = VElement.BuildColor(mColor, mColorIntensity)
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.setAlign(mAlign)	
	VElement.setJustify(mJustify)
	VElement.VIf = mVIf
	If bHidden Then
		VElement.VShow = mVShow
		VElement.SetData(mVShow, Not(bHidden))
	End If
	VElement.FillHeight = bFillHeight
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
	VElement.AddClassOnCondition("text-center", bTextCenter, True)
VElement.SetAttrOnTrue(":no-gutters", bNoGutters, True)
VElement.VFor = sVFor
VElement.BindKey(sKey)
	VElement.Border = sBorder
VElement.BorderColor = sBorderColor
VElement.BorderRadius = sBorderRadius
VElement.BorderStyle = sBorderStyle
VElement.BorderWidth = sBorderWidth
If bDebugBorder Then
	VElement.Border = ""
	VElement.BorderColor = "red"
	VElement.BorderRadius = ""
	VElement.BorderStyle = "solid"
	VElement.BorderWidth = "1px"
End If
VElement.bindallevents
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VRow
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VRow
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VRow
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VRow
	VElement.RemoveAttr(p)
	Return Me
End Sub

'Sub UpdateVisible(C As VueComponent, b As Boolean)
'	C.SetData(mVShow, b)
'	C.SetData(mVIf, b)
'End Sub


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