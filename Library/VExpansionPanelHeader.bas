﻿B4J=true
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
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: DisableIconRotate, DisplayName: DisableIconRotate, FieldType: Boolean, DefaultValue: False, Description: DisableIconRotate
#DesignerProperty: Key: ExpandIcon, DisplayName: ExpandIcon, FieldType: String, DefaultValue: , Description: ExpandIcon
#DesignerProperty: Key: HideActions, DisplayName: HideActions, FieldType: Boolean, DefaultValue: False, Description: HideActions
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: False, Description: Ripple
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
	Private sColor As String
Private sColorIntensity As String
Private bDisableIconRotate As Boolean
Private sExpandIcon As String
Private bHideActions As Boolean
Private bRipple As Boolean
 
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
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDisableIconRotate = Props.GetDefault("DisableIconRotate", False)
sExpandIcon = Props.GetDefault("ExpandIcon", "")
bHideActions = Props.GetDefault("HideActions", False)
bRipple = Props.GetDefault("Ripple", False)
 
	End If 
	bDisableIconRotate = BANanoShared.parseBool(bDisableIconRotate)
bHideActions = BANanoShared.parseBool(bHideActions)
bRipple = BANanoShared.parseBool(bRipple)

	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-expansion-panel-header ref="${mName}" id="${mName}"></v-expansion-panel-header>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-expansion-panel-header" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":disable-icon-rotate", bDisableIconRotate)
VElement.AddAttr("expand-icon", sExpandIcon)
VElement.AddAttr(":hide-actions", bHideActions)
VElement.AddAttr(":ripple", bRipple)


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

Sub AddClass(s As String) As VExpansionPanelHeader 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VExpansionPanelHeader 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VExpansionPanelHeader 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VExpansionPanelHeader 
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