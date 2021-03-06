﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: Bottom, DisplayName: Bottom, FieldType: Boolean, DefaultValue: false, Description: Bottom
#DesignerProperty: Key: Collapse, DisplayName: Collapse, FieldType: Boolean, DefaultValue: false, Description: Collapse
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Extended, DisplayName: Extended, FieldType: Boolean, DefaultValue: false, Description: Extended
#DesignerProperty: Key: ExtensionHeight, DisplayName: ExtensionHeight, FieldType: String, DefaultValue: , Description: ExtensionHeight
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: false, Description: Flat
#DesignerProperty: Key: Floating, DisplayName: Floating, FieldType: Boolean, DefaultValue: false, Description: Floating
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Prominent, DisplayName: Prominent, FieldType: Boolean, DefaultValue: false, Description: Prominent
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Short, DisplayName: Short, FieldType: Boolean, DefaultValue: false, Description: Short
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private bAbsolute As Boolean
Private bBottom As Boolean
Private bCollapse As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private bDense As Boolean
Private sElevation As String
Private bExtended As Boolean
Private sExtensionHeight As String
Private bFlat As Boolean
Private bFloating As Boolean
Private sHeight As String
Private bLight As Boolean
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private bOutlined As Boolean
Private bProminent As Boolean
Private sRounded As String
Private bShaped As Boolean
Private bShort As Boolean
Private sSrc As String
Private sTextColor As String
Private sTextColorIntensity As String
Private bTile As Boolean
Private sVIf As String
Private sVShow As String
Private sWidth As String
Private xColor As String
Private bHidden As Boolean
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
	xColor = $"${mName}color"$
	sVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAbsolute = Props.Get("Absolute")
bBottom = Props.Get("Bottom")
bCollapse = Props.Get("Collapse")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
bDark = Props.Get("Dark")
bDense = Props.Get("Dense")
sElevation = Props.Get("Elevation")
bExtended = Props.Get("Extended")
sExtensionHeight = Props.Get("ExtensionHeight")
bFlat = Props.Get("Flat")
bFloating = Props.Get("Floating")
sHeight = Props.Get("Height")
bLight = Props.Get("Light")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
bOutlined = Props.Get("Outlined")
bProminent = Props.Get("Prominent")
sRounded = Props.Get("Rounded")
bShaped = Props.Get("Shaped")
bShort = Props.Get("Short")
sSrc = Props.Get("Src")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
bTile = Props.Get("Tile")
sVIf = Props.Get("VIf")
bHidden = Props.GetDefault("Hidden", False)
sWidth = Props.Get("Width")
	End If
	'
	bAbsolute = BANanoShared.parseBool(bAbsolute)
bBottom = BANanoShared.parseBool(bBottom)
bCollapse = BANanoShared.parseBool(bCollapse)
bDark = BANanoShared.parseBool(bDark)
bDense = BANanoShared.parseBool(bDense)
bExtended = BANanoShared.parseBool(bExtended)
bFlat = BANanoShared.parseBool(bFlat)
bFloating = BANanoShared.parseBool(bFloating)
bLight = BANanoShared.parseBool(bLight)
bOutlined = BANanoShared.parseBool(bOutlined)
bProminent = BANanoShared.parseBool(bProminent)
bShaped = BANanoShared.parseBool(bShaped)
bShort = BANanoShared.parseBool(bShort)
bTile = BANanoShared.parseBool(bTile)
bHidden = BANanoShared.parseBool(bHidden)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-toolbar ref="${mName}" id="${mName}"></v-toolbar>"$).Get("#" & mName)
	End If
	
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-toolbar"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Absolute = bAbsolute
VElement.Bottom = bBottom
VElement.AddAttr(":collapse", bCollapse)
VElement.Bind("color", xColor)
VElement.SetData(xColor, VElement.BuildColor(sColor, sColorIntensity))
VElement.Dark = bDark
VElement.Dense = bDense
VElement.Elevation = sElevation
VElement.Extended = bExtended
VElement.AddAttr("extension-height", sExtensionHeight)
VElement.Flat = bFlat
VElement.Floating = bFloating
VElement.Height = sHeight
VElement.Light = bLight
VElement.MaxHeight = sMaxHeight
VElement.MaxWidth = sMaxWidth
VElement.MinHeight = sMinHeight
VElement.MinWidth = sMinWidth
VElement.Outlined = bOutlined
VElement.Prominent = bProminent
VElement.AddClass(sRounded)
VElement.Shaped = bShaped
VElement.AddAttr(":short", bShort)
VElement.Src = sSrc
VElement.TextColor = sTextColor
VElement.TextColorIntensity = sTextColorIntensity
VElement.Tile = bTile
VElement.VIf = sVIf
VElement.VShow = sVShow
VElement.SetData(sVShow, True)
VElement.Width = sWidth
VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VToolBar
	VElement.AddClass(s)
	Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VToolBar
	VElement.SetAttr(p, v)
	Return Me
End Sub
Sub AddStyle(p As String, v As String) As VToolBar
	VElement.AddStyle(p, v)
	Return Me
End Sub
Sub RemoveAttr(p As String) As VToolBar
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VToolBar
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateColor(VC As VueComponent, vColor As String, vIntensity As String)
	sColor = VElement.BuildColor(vColor, vIntensity)
	VC.SetData(xColor, sColor)
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