﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel/Visible, FieldType: String, DefaultValue: hover1, Description: VModel
#DesignerProperty: Key: HoverSlot, DisplayName: HoverSlot, FieldType: Boolean, DefaultValue: False, Description: HoverSlot
#DesignerProperty: Key: CloseDelay, DisplayName: CloseDelay, FieldType: String, DefaultValue: , Description: CloseDelay
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: OpenDelay, DisplayName: OpenDelay, FieldType: String, DefaultValue: , Description: OpenDelay
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
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
	Private sCloseDelay As String
Private sDisabled As String
Private sKey As String
Private sOpenDelay As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVOn As String
Private sVModel As String
Private bHoverSlot As Boolean
Private bDisabled As Boolean
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
	sDisabled = $"${mName}disabled"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sCloseDelay = Props.Get("CloseDelay")
sKey = Props.Get("Key")
sOpenDelay = Props.Get("OpenDelay")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
sVModel = Props.Get("VModel")
bHoverSlot = Props.Get("HoverSlot")
bDisabled = Props.GetDefault("Disabled",False)
bHidden = Props.GetDefault("Hidden", False)
	End If
	'
	bHoverSlot = BANanoShared.parseBool(bHoverSlot)
bDisabled = BANanoShared.parseBool(bDisabled)
bHidden = BANanoShared.parseBool(bHidden)
bDisabled = BANanoShared.parseBool(bDisabled)

	Dim sbHover As String = ""
	If bHoverSlot Then
		sbHover = $"v-slot="{ hover }""$
	End If
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-hover ref="${mName}" ${sbHover} id="${mName}"></v-hover>"$).Get("#" & mName)
	End If
	
	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-hover"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("close-delay", sCloseDelay)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr("key", sKey)
VElement.AddAttr("open-delay", sOpenDelay)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, Not(bHidden))
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

Sub AddClass(s As String) As VHover
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VHover
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VHover
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VHover
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VHover
	VC.SetData(sVIf, b)
	VC.SetData(sVModel, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

Sub UpdateDisabled(VC As VueComponent, b As Boolean)
	bDisabled = b
	VC.SetData(sDisabled, b)
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