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
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
sVShow = Props.GetDefault("VShow", "")
sValue = Props.GetDefault("Value", "")
sWidth = Props.GetDefault("Width", "")
 
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-color-picker id="${mName}"></v-color-picker>"$).Get("#" & mName) 
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
VElement.AddAttr("v-show", sVShow)
VElement.SetData(sVShow, Not(bHidden))
VElement.AddAttr("width", sWidth)


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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VColorPicker 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update Swatches
Sub UpdateSwatches(VC As VueComponent, vSwatches As Object)
VC.SetData(sSwatches, vSwatches)
End Sub

'Update Value
Sub UpdateValue(VC As VueComponent, vValue As Object)
VC.SetData(sVModel, vValue)
End Sub


Sub GetValue(VC As VueComponent) As String
	Dim res As String = VC.GetData(sVModel)
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