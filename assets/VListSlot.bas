B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: Size, DisplayName: Slot, FieldType: String, DefaultValue: , Description: Slot, List: v-list-item-action|v-list-item-title|v-list-item-subtitle|v-list-item-icon|v-list-item-content|v-list-item-action-text
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
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
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
Private sCaption As String
Private sColor As String
Private sColorIntensity As String
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
Private sSize As String
Private sTextColor As String
Private sTextColorIntensity As String
Private sVIf As String
'Private sVShow As String
Private bHidden As Boolean
Private VC As VueComponent			'ignore
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
	'sVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
sCaption = Props.Get("Caption")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
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
sSize = Props.Get("Size")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sVIf = Props.Get("VIf")
bHidden = Props.GetDefault("Hidden", False)
	End If
	'
	bHidden = BANanoShared.parseBool(bHidden)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<${sSize} ref="${mName}" id="${mName}"></${sSize}>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = sSize
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
VElement.Caption = sCaption
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
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
VElement.TextColor = sTextColor
VElement.TextColorIntensity = sTextColorIntensity
VElement.VIf = sVIf
'VElement.VShow = sVShow
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

Sub AddClass(s As String) As VListSlot
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VListSlot
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VListSlot
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VListSlot
	VElement.RemoveAttr(p)
	Return Me
End Sub

'Sub UpdateVisible(C As VueComponent, b As Boolean) As VListSlot
'	C.SetData(sVIf, b)
	'C.SetData(sVShow, b)
'	Return Me
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

'Sub Hide
'	UpdateVisible(VC, False)
'End Sub

'Sub Show
'	UpdateVisible(VC, True)
'End Sub