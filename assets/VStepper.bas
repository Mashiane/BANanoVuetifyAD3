B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class

'Custom BANano View class
#Event: Change (item As Int)


#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: stepper1 , Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: AltLabels, DisplayName: AltLabels, FieldType: Boolean, DefaultValue: False, Description: Place labels beneath step
#DesignerProperty: Key: NonLinear, DisplayName: NonLinear, FieldType: Boolean, DefaultValue: False, Description: Allow user to jump to any step
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: False, Description: Vertical
'
#DesignerProperty: Key: ItemTitles, DisplayName: Item Titles (;), FieldType: String, DefaultValue:  , Description: Item Titles
#DesignerProperty: Key: ItemDescriptions, DisplayName: Item Descriptions (;), FieldType: String, DefaultValue: , Description: Item Descriptions
#DesignerProperty: Key: ItemEditable, DisplayName: Item Editable (Y/N;), FieldType: String, DefaultValue:  , Description: Item Colors
#DesignerProperty: Key: ItemComplete, DisplayName: Item Complete (Y/N;), FieldType: String, DefaultValue:  , Description: Item Texts

#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: , Description: Rounded, List: none|true|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: Tag, DisplayName: Tag, FieldType: String, DefaultValue: , Description: Tag
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn

#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
	Private sItemTitles As String
	Private sItemDescriptions As String
	Private sItemComplete As String
	Private sItemEditable As String
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
	Private bAltLabels As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private sElevation As String
Private bFlat As Boolean
Private sHeight As String
Private bHidden As String   'ignore
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bNonLinear As Boolean
Private bOutlined As Boolean
Private sRounded As String
Private bShaped As Boolean
Private sTag As String
Private bTile As Boolean
Private sVBind As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private bVertical As Boolean
Private sWidth As String
Private xSteps As Int
	Private VC As VueComponent						'ignore
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
	xSteps = 0
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bAltLabels = Props.GetDefault("AltLabels", False)
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bDark = Props.GetDefault("Dark", False)
		sElevation = Props.GetDefault("Elevation", "")
		bFlat = Props.GetDefault("Flat", False)
		sHeight = Props.GetDefault("Height", "")
		bHidden = Props.GetDefault("Hidden", False)
		bLight = Props.GetDefault("Light", False)
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinWidth = Props.GetDefault("MinWidth", "")
		bNonLinear = Props.GetDefault("NonLinear", False)
		bOutlined = Props.GetDefault("Outlined", False)
		sRounded = Props.GetDefault("Rounded", "")
		bShaped = Props.GetDefault("Shaped", False)
		sTag = Props.GetDefault("Tag", "")
		bTile = Props.GetDefault("Tile", False)
		sVBind = Props.GetDefault("VBind", "")
		sVIf = Props.GetDefault("VIf", "")
		sVModel = Props.GetDefault("VModel", "")
		sVOn = Props.GetDefault("VOn", "")
		sValue = Props.GetDefault("Value", "")
		bVertical = Props.GetDefault("Vertical", False)
		sWidth = Props.GetDefault("Width", "")
		sItemTitles = Props.GetDefault("ItemTitles", "")
		sItemDescriptions = Props.GetDefault("ItemDescriptions", "")
		sItemComplete = Props.GetDefault("ItemComplete", "")
		sItemEditable = Props.GetDefault("ItemEditable", "")
	End If 
	'
	bAltLabels = BANanoShared.parseBool(bAltLabels)
	bDark = BANanoShared.parseBool(bDark)
	bFlat = BANanoShared.parseBool(bFlat)
	bLight = BANanoShared.parseBool(bLight)
	bNonLinear = BANanoShared.parseBool(bNonLinear)
	bOutlined = BANanoShared.parseBool(bOutlined)
	bShaped = BANanoShared.parseBool(bShaped)
	bTile = BANanoShared.parseBool(bTile)
	bVertical = BANanoShared.parseBool(bVertical)
 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-stepper ref="${mName}" id="${mName}"></v-stepper>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-stepper" 
	'
	If bVertical = False Then
		'add header
		VElement.Append($"<v-stepper-header id="${mName}stepperheader"></v-stepper-header>"$)
		'add contents
		VElement.Append($"<v-stepper-items id="${mName}stepperitems"></v-stepper-items>"$)
	End If
	'
	sItemTitles = sItemTitles.Replace(",", ";")
	sItemDescriptions = sItemDescriptions.Replace(",", ";")
	sItemComplete = sItemComplete.Replace(",", ";")
	sItemEditable = sItemEditable.Replace(",", ";")
	'
	Dim xtitles As List = BANanoShared.StrParse(";", sItemTitles)
	Dim xdescriptions As List = BANanoShared.StrParse(";", sItemDescriptions)
	Dim xcomplete As List = BANanoShared.StrParse(";", sItemComplete)
	Dim xeditable As List = BANanoShared.StrParse(";", sItemEditable)
		'
	xtitles = BANanoShared.ListTrimItems(xtitles)
	xdescriptions = BANanoShared.ListTrimItems(xdescriptions)
	xcomplete = BANanoShared.ListTrimItems(xcomplete)
	xeditable = BANanoShared.ListTrimItems(xeditable)
	'
	xSteps = 0
	Dim tItems As Int = xtitles.Size - 1
	Dim cItems As Int
	For cItems = 0 To tItems
		Dim t As String = BANanoShared.GetListItem(xtitles, cItems)
		Dim d As String = BANanoShared.GetListItem(xdescriptions, cItems)
		Dim c As String = BANanoShared.GetListItem(xcomplete, cItems)
		Dim e As String = BANanoShared.GetListItem(xeditable, cItems)
		'
		c = c.ToLowerCase
		e = e.tolowercase
		Dim bc As Boolean = BANano.IIf(c = "y", True, False)
		Dim be As Boolean = BANano.IIf(e = "y", True, False)
		Dim bd As Boolean = BANano.IIf(cItems = tItems, False, True)
		'
		AddItem(t, d, bc, be, bd)
	Next
			
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":alt-labels", bAltLabels)
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr("elevation", sElevation)
	VElement.AddAttr(":flat", bFlat)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr(":non-linear", bNonLinear)
	VElement.AddAttr(":outlined", bOutlined)
	VElement.AddAttr("rounded", sRounded)
	VElement.AddAttr(":shaped", bShaped)
	VElement.AddAttr("tag", sTag)
	VElement.AddAttr(":tile", bTile)
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.SetData(sVModel, sValue)

	VElement.AddAttr(":vertical", bVertical)
	VElement.AddAttr("width", sWidth)

	VElement.BindAllEvents
End Sub

Sub Item(iStep As Int) As String
	Dim sitem As String = $"#${mName}${iStep}content"$
	Return sitem
End Sub

'add items and then bind element
Sub AddItem(sTitle As String, sDescription As String, bComplete As Boolean, bEditable As Boolean, bDivider As Boolean)
	If sTitle = "" Then Return
	
	xSteps = xSteps + 1
	Dim tabID As String = $"${mName}${xSteps}"$
	'add a tab
	If bVertical = False Then
		VElement.GetStepperHeader.Append($"<v-stepper-step id="${tabID}step" :rules="${tabID}rules" :editable="${tabID}editable" :complete="${tabID}complete" step="${xSteps}">${sTitle}</v-stepper-step>"$)
		If bDivider Then
			VElement.GetStepperHeader.Append($"<v-divider></v-divider>"$)
		End If
	'
		VElement.GetStepperItems.Append($"<v-stepper-content id="${tabID}content" step="${xSteps}"></v-stepper-content>"$)
	Else
		VElement.Append($"<v-stepper-step id="${tabID}step" :rules="${tabID}rules" :editable="${tabID}editable" :complete="${tabID}complete" step="${xSteps}">${sTitle}</v-stepper-step>"$)
		VElement.Append($"<v-stepper-content id="${tabID}content" step="${xSteps}"></v-stepper-content>"$)
	End If
	'
	If sDescription <> "" Then
		VElement.GetStep(xSteps).Append($"<small>${sDescription}</small>"$)
	End If
			
	VElement.SetData($"${tabID}complete"$, bComplete)
	VElement.SetData($"${tabID}editable"$, bEditable)
	VElement.SetData($"${tabID}rules"$, VElement.NewList)
End Sub


'content string for loadlayout
Sub Content(iStep As Int) As String
	Dim contentID As String = $"${mName}${iStep}content"$
	Dim sitem As String = $"#${contentID}"$
	Return sitem
End Sub


Sub UpdateItemComplete(C As VueComponent, stepN As Int, bComplete As Boolean)
	Dim s As String = $"${mName}${stepN}complete"$
	C.SetData(s, bComplete)
End Sub


Sub UpdateItemEditable(C As VueComponent, stepN As Int, bEditable As Boolean)
	Dim s As String = $"${mName}${stepN}editable"$
	C.SetData(s, bEditable)
End Sub

Sub UpdateItemCompleteOnApp(C As VuetifyApp, stepN As Int, bComplete As Boolean)
	Dim s As String = $"${mName}${stepN}complete"$
	C.SetData(s, bComplete)
End Sub

Sub UpdateItemEditableOnApp(C As VuetifyApp, stepN As Int, bEditable As Boolean)
	Dim s As String = $"${mName}${stepN}editable"$
	C.SetData(s, bEditable)
End Sub

Sub AddItemRule(stepN As Int, MethodName As String)
	Dim s As String = $"${mName}${stepN}step"$
	Dim itemx As VueElement
	itemx.Initialize(mCallBack, s, s)
	itemx.AddRule(MethodName)
	VElement.BindVueElement(itemx)
End Sub


Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VStepper 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VStepper 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VStepper 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VStepper 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VStepper 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Value
Sub UpdateValue(C As VueComponent, vValue As Object)
	C.SetData(sVModel, vValue)
End Sub

'get Value
Sub GetValue(C As VueComponent) As String
	Dim res As Object = C.GetData(sVModel)
	Return res
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VStepper 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Value
Sub UpdateValueOnApp(C As VuetifyApp, vValue As Object)
	C.SetData(sVModel, vValue)
End Sub

'get Value
Sub GetValueOnApp(C As VuetifyApp) As String
	Dim res As Object = C.GetData(sVModel)
	Return res
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