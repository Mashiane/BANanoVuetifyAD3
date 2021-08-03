﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.1
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Blur (e As BANanoEvent)
#Event: Focus (e As BANanoEvent)
#Event: ImageAdded (file As Object, Editor As Object, cursorLocation As Object)
#Event: ImageRemoved (file As Object, Editor As Object, cursorLocation As Object)
#Event: SelectionChange (range As Object, oldRange As Object, source As Object)
#Event: TextChange (delta As Object, oldDelta As Object, source As Object)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: false, Description: Hidden
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: false, Description: Disabled
#DesignerProperty: Key: useCustomImageHandler, DisplayName: Use Custom Image Handler, FieldType: Boolean, DefaultValue: false, Description: Use Custom Image Handler
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue: , Description: Placeholder
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
	Private bHidden As Boolean
	Private sVShow As String
	Private sVIf As String
	Private sVModel As String
	Private VC As VueComponent	'ignore
	Private sDisabled As String
	Private bDisabled As Boolean
	Private sPlaceholder As String
	Private buseCustomImageHandler As Boolean
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
	sDisabled = $"${mName}disabled"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.GetDefault("Classes","")
		mStyles = Props.GetDefault("Styles","")
		mAttributes = Props.GetDefault("Attributes","")
		bHidden = Props.GetDefault("Hidden",False)
		sVIf = Props.GetDefault("VIf","")
		sVModel = Props.GetDefault("VModel","")
		bDisabled = Props.getdefault("Disabled", False)
		bDisabled = BANanoShared.parseBool(bDisabled)
		sPlaceholder = Props.GetDefault("Placeholder", "")
		buseCustomImageHandler = Props.GetDefault("useCustomImageHandler", False)
	End If
	'
	bHidden = BANanoShared.parseBool(bHidden)
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<vue-editor ref="${mName}" id="${mName}"></vue-editor>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "vue-editor"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVModel, "")
	VElement.SetData(sVShow, Not(bHidden))
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)
	VElement.AddAttr("placeholder", sPlaceholder)
	VElement.AddAttr(":use-custom-image-handler", buseCustomImageHandler)
	'
	VElement.SetOnEvent(mCallBack, "blur", Null)
	VElement.SetOnEvent(mCallBack, "focus", Null)
	Dim delta As Object, oldDelta As Object, source As Object
	VElement.SetOnEventCallBack(mCallBack, "text-change", Array(delta, oldDelta, source))
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

Sub AddClass(s As String)
	VElement.AddClass(s)
End Sub

Sub AddAttr(p As String, v As Object)
	VElement.SetAttr(p, v)
End Sub

Sub AddStyle(p As String, v As String)
	VElement.AddStyle(p, v)
End Sub

Sub RemoveAttr(p As String)
	VElement.RemoveAttr(p)
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(sVIf, b)
	C.SetData(sVModel, b)
End Sub

Sub SetValue(C As VueComponent, s As String) 
	C.SetData(sVModel, s)
End Sub

Sub GetValue(C As VueComponent) As String 
	Dim s As String = C.GetData(sVModel)
	Return s
End Sub

'get VModel
Sub getVModel As String
	Return sVModel
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

'refresh refs first
Sub Focus(C As VueComponent)
	Try
		Dim refs As BANanoObject = C.refs
		Dim q As BANanoObject = refs.GetField(mName).GetField("quill")
		q.RunMethod("focus", Null)
	Catch
		Log(LastException)
	End Try	
End Sub