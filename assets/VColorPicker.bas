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

#Event: Input (color As String)
#Event: UpdateColor (color As Map)
#Event: UpdateMode (mode As String)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: color1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: #FF00FFFF, Description: Value
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: hexa, Description: Mode, List: hexa|hsla|rgba
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled

#DesignerProperty: Key: CanvasHeight, DisplayName: CanvasHeight, FieldType: String, DefaultValue: , Description: CanvasHeight
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: DotSize, DisplayName: DotSize, FieldType: String, DefaultValue: , Description: DotSize
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: HideCanvas, DisplayName: HideCanvas, FieldType: Boolean, DefaultValue: False, Description: HideCanvas
#DesignerProperty: Key: HideInputs, DisplayName: HideInputs, FieldType: Boolean, DefaultValue: False, Description: HideInputs
#DesignerProperty: Key: HideModeSwitch, DisplayName: HideModeSwitch, FieldType: Boolean, DefaultValue: False, Description: HideModeSwitch
#DesignerProperty: Key: HideSliders, DisplayName: HideSliders, FieldType: Boolean, DefaultValue: False, Description: HideSliders
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: ShowSwatches, DisplayName: ShowSwatches, FieldType: Boolean, DefaultValue: False, Description: ShowSwatches
#DesignerProperty: Key: Swatches, DisplayName: Swatches, FieldType: String, DefaultValue: , Description: Swatches
#DesignerProperty: Key: SwatchesMaxHeight, DisplayName: SwatchesMaxHeight, FieldType: String, DefaultValue: , Description: SwatchesMaxHeight
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private bHidden As Boolean
Private sCanvasHeight As String
Private bDark As Boolean
Private bDisabled As Boolean
Private sDotSize As String
Private sElevation As String
Private bFlat As Boolean
Private bHideCanvas As Boolean
Private bHideInputs As Boolean
Private bHideModeSwitch As Boolean
Private bHideSliders As Boolean
Private sKey As String
Private bLight As Boolean
Private sMode As String
Private bShowSwatches As Boolean
Private sSwatches As String
Private sSwatchesMaxHeight As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private sWidth As String
 Private sDisabled As String
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
	sDisabled = $"${mName}disabled"$
	sVShow = $"${mName}show"$
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bHidden = Props.GetDefault("Hidden", False)
sCanvasHeight = Props.GetDefault("CanvasHeight", "")
bDark = Props.GetDefault("Dark", False)
bDisabled = Props.GetDefault("Disabled", False)
sDotSize = Props.GetDefault("DotSize", "")
sElevation = Props.GetDefault("Elevation", "")
bFlat = Props.GetDefault("Flat", False)
bHideCanvas = Props.GetDefault("HideCanvas", False)
bHideInputs = Props.GetDefault("HideInputs", False)
bHideModeSwitch = Props.GetDefault("HideModeSwitch", False)
bHideSliders = Props.GetDefault("HideSliders", False)
sKey = Props.GetDefault("Key", "")
bLight = Props.GetDefault("Light", False)
sMode = Props.GetDefault("Mode", "")
bShowSwatches = Props.GetDefault("ShowSwatches", False)
sSwatches = Props.GetDefault("Swatches", "")
sSwatchesMaxHeight = Props.GetDefault("SwatchesMaxHeight", "")
sVBind = Props.GetDefault("VBind", "")
sVFor = Props.GetDefault("VFor", "")
sVIf = Props.GetDefault("VIf", "")
sVModel = Props.GetDefault("VModel", "")
sVOn = Props.GetDefault("VOn", "")
sValue = Props.GetDefault("Value", "")
sWidth = Props.GetDefault("Width", "")
 
	End If 
	'
	bHidden = BANanoShared.parseBool(bHidden)
bDark = BANanoShared.parseBool(bDark)
bDisabled = BANanoShared.parseBool(bDisabled)
bFlat = BANanoShared.parseBool(bFlat)
bHideCanvas = BANanoShared.parseBool(bHideCanvas)
bHideInputs = BANanoShared.parseBool(bHideInputs)
bHideModeSwitch = BANanoShared.parseBool(bHideModeSwitch)
bHideSliders = BANanoShared.parseBool(bHideSliders)
bLight = BANanoShared.parseBool(bLight)
bShowSwatches = BANanoShared.parseBool(bShowSwatches)

	
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-color-picker ref="${mName}" id="${mName}"></v-color-picker>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-color-picker" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
VElement.AddAttr("canvas-height", sCanvasHeight)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)

VElement.AddAttr("dot-size", sDotSize)
VElement.AddAttr("elevation", sElevation)

VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":hide-canvas", bHideCanvas)
VElement.AddAttr(":hide-inputs", bHideInputs)
VElement.AddAttr(":hide-mode-switch", bHideModeSwitch)
VElement.AddAttr(":hide-sliders", bHideSliders)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("mode", sMode)
VElement.AddAttr(":show-swatches", bShowSwatches)
VElement.AddAttr(":swatches", sSwatches)
VElement.SetData(sSwatches, VElement.NewList)

VElement.AddAttr("swatches-max-height", sSwatchesMaxHeight)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, sValue)

VElement.AddAttr("v-on", sVOn)
If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("width", sWidth)


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

Sub AddClass(s As String) As VColorPicker 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VColorPicker 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VColorPicker 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VColorPicker 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VColorPicker 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VColorPicker 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub

'Update Value
Sub UpdateValue(C As VueComponent, vValue As Object)
C.SetData(sVModel, vValue)
End Sub


Sub GetValue(C As VueComponent) As String
	Dim res As String = C.GetData(sVModel)
	Return res
End Sub

'Update Disabled
Sub UpdateDisabledOnApp(C As VuetifyApp, vDisabled As Object)
C.SetData(sDisabled, vDisabled)
End Sub

'Update Value
Sub UpdateValueOnApp(C As VuetifyApp, vValue As Object)
C.SetData(sVModel, vValue)
End Sub

'Update Value
Sub SetValueOnApp(C As VuetifyApp, vValue As Object)
C.SetData(sVModel, vValue)
End Sub

'Update Value
Sub SetValue(C As VueComponent, vValue As Object)
	C.SetData(sVModel, vValue)
End Sub

Sub GetValueOnApp(C As VuetifyApp) As String
	Dim res As String = C.GetData(sVModel)
	Return res
End Sub

Sub getID As String
	Return mName
End Sub

Sub getVModel As String
	Return sVModel
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