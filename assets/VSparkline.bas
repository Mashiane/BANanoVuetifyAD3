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
#DesignerProperty: Key: Type, DisplayName: Type, FieldType: String, DefaultValue: trend, Description: Type, List: bars|trend
#DesignerProperty: Key: XY, DisplayName: XY (JSON), FieldType: String, DefaultValue: , Description: XY Values
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: AutoDraw, DisplayName: AutoDraw, FieldType: Boolean, DefaultValue: False, Description: AutoDraw
#DesignerProperty: Key: AutoDrawDuration, DisplayName: AutoDrawDuration, FieldType: String, DefaultValue: , Description: AutoDrawDuration
#DesignerProperty: Key: AutoDrawEasing, DisplayName: AutoDrawEasing, FieldType: String, DefaultValue: , Description: AutoDrawEasing
#DesignerProperty: Key: AutoLineWidth, DisplayName: AutoLineWidth, FieldType: Boolean, DefaultValue: False, Description: AutoLineWidth
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Fill, DisplayName: Fill, FieldType: Boolean, DefaultValue: False, Description: Fill
#DesignerProperty: Key: GradientDirection, DisplayName: GradientDirection, FieldType: String, DefaultValue: , Description: GradientDirection
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: LabelSize, DisplayName: LabelSize, FieldType: String, DefaultValue: , Description: LabelSize
#DesignerProperty: Key: LineWidth, DisplayName: LineWidth, FieldType: String, DefaultValue: , Description: LineWidth
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: String, DefaultValue: , Description: Padding
#DesignerProperty: Key: ShowLabels, DisplayName: ShowLabels, FieldType: Boolean, DefaultValue: False, Description: ShowLabels
#DesignerProperty: Key: Smooth, DisplayName: Smooth, FieldType: String, DefaultValue: , Description: Smooth
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals 
	Private sXY As String
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
	Private bAutoDraw As Boolean
	Private sAutoDrawDuration As String
	Private sAutoDrawEasing As String
	Private bAutoLineWidth As Boolean
	Private sColor As String
	Private sColorIntensity As String
	Private bFill As Boolean
	Private sGradient As String
	Private sGradientDirection As String
	Private sHeight As String
	Private bHidden As Boolean
	Private sLabelSize As String
	Private sLabels As String
	Private sLineWidth As String
	Private sPadding As String
	Private bShowLabels As Boolean
	Private sSmooth As String
	Private sType As String
	Private sVBind As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	Private sVShow As String
	Private sValue As String   'ignore
	Private sWidth As String
	Private xValues As List
	Private xLabels As List
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
	sLabels = $"${mName}labels"$
	sValue = $"${mName}value"$
	sGradient = $"${mName}gradient"$
	sVModel = $"${mName}vmodel"$
	xValues.Initialize 
	xLabels.Initialize 
	sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bAutoDraw = Props.GetDefault("AutoDraw", False)
		sAutoDrawDuration = Props.GetDefault("AutoDrawDuration", "")
		sAutoDrawEasing = Props.GetDefault("AutoDrawEasing", "")
		bAutoLineWidth = Props.GetDefault("AutoLineWidth", False)
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bFill = Props.GetDefault("Fill", False)
		sGradientDirection = Props.GetDefault("GradientDirection", "")
		sHeight = Props.GetDefault("Height", "")
		bHidden = Props.GetDefault("Hidden", False)
		sLabelSize = Props.GetDefault("LabelSize", "")
		sLineWidth = Props.GetDefault("LineWidth", "")
		sPadding = Props.GetDefault("Padding", "")
		bShowLabels = Props.GetDefault("ShowLabels", False)
		sSmooth = Props.GetDefault("Smooth", "")
		sType = Props.GetDefault("Type", "trend")
		sVBind = Props.GetDefault("VBind", "")
		sVIf = Props.GetDefault("VIf", "")
		sVOn = Props.GetDefault("VOn", "")
		sWidth = Props.GetDefault("Width", "")
		sXY = Props.GetDefault("XY", "")
	End If 
	' 
	bAutoDraw = BANanoShared.parseBool(bAutoDraw)
	bAutoLineWidth = BANanoShared.parseBool(bAutoLineWidth)
	bFill = BANanoShared.parseBool(bFill)	
	bHidden = BANanoShared.parseBool(bHidden)
	bShowLabels = BANanoShared.parseBool(bShowLabels)

	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-sparkline ref="${mName}" id="${mName}"></v-sparkline>"$).Get("#" & mName) 
	End If 
	'
	xValues.Initialize 
	xLabels.Initialize 
	Dim xylist As List = BANanoShared.StrParseComma(";", sXY)
	xylist = BANanoShared.ListTrimItems(xylist)
	For Each spoint As String In xylist
		Dim x As String = BANanoShared.MvField(spoint, 1, ":")
		Dim y As String = BANanoShared.MvField(spoint, 2, ":")
		AddXY(x, y)
	Next
	
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-sparkline" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":auto-draw", bAutoDraw)
	VElement.AddAttr("auto-draw-duration", sAutoDrawDuration)
	VElement.AddAttr("auto-draw-easing", sAutoDrawEasing)
	VElement.AddAttr(":auto-line-width", bAutoLineWidth)
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":fill", bFill)
	VElement.AddAttr(":gradient", sGradient)
	VElement.SetData(sGradient, VElement.NewList)
	VElement.AddAttr("gradient-direction", sGradientDirection)
	
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr("label-size", sLabelSize)
	VElement.AddAttr(":labels", sLabels)
	
	VElement.AddAttr("line-width", sLineWidth)
	VElement.AddAttr("padding", sPadding)
	VElement.AddAttr(":show-labels", bShowLabels)
	VElement.AddAttr("smooth", sSmooth)
	VElement.AddAttr("type", sType)
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddAttr("width", sWidth)
	VElement.SetData(sVModel, xValues)
	VElement.SetData(sLabels, xLabels)
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

Sub AddClass(s As String) As VSparkline 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VSparkline 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VSparkline 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VSparkline 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VSparkline 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VSparkline 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

Sub UpdateValues(C As VueComponent, lst As List) As VSparkline 
	C.SetData(sVModel, lst) 
	Return Me 
End Sub

Sub UpdateLabels(C As VueComponent, lst As List) As VSparkline 
	C.SetData(sLabels, lst) 
	Return Me 
End Sub

Sub UpdateGradient(C As VueComponent, lst As List) As VSparkline 
	C.SetData(sGradient, lst) 
	Return Me 
End Sub

Sub UpdateValuesOnApp(C As VuetifyApp, lst As List) As VSparkline 
	C.SetData(sVModel, lst) 
	Return Me 
End Sub

Sub UpdateLabelsOnApp(C As VuetifyApp, lst As List) As VSparkline 
	C.SetData(sLabels, lst) 
	Return Me 
End Sub

Sub UpdateGradientOnApp(C As VuetifyApp, lst As List) As VSparkline 
	C.SetData(sGradient, lst) 
	Return Me 
End Sub

Sub Clear(C As VueComponent)
	xValues.Initialize 
	xLabels.Initialize
	'
	C.SetData(sVModel, xValues)
	C.SetData(sLabels, xValues)
End Sub

Sub ClearOnApp(C As VuetifyApp)
	xValues.Initialize 
	xLabels.Initialize
	'
	C.SetData(sVModel, xValues)
	C.SetData(sLabels, xValues)
End Sub

Sub AddXY(x As String, y As String)
	xLabels.Add(x)
	xValues.Add(y)
End Sub

Sub Refresh(C As VueComponent)
	C.SetData(sVModel, xValues)
	C.SetData(sLabels, xLabels)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sVModel, xValues)
	C.SetData(sLabels, xLabels)
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