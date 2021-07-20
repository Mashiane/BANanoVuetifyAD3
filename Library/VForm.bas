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

#Event: Input (B As Boolean)
#Event: Submit (e As BANanoEvent)
#Event: SubmitPrevent (e As BANanoEvent)


#DesignerProperty: Key: RecordSource, DisplayName: RecordSource, FieldType: String, DefaultValue: , Description: RecordSource
#DesignerProperty: Key: LazyValidation, DisplayName: LazyValidation, FieldType: Boolean, DefaultValue: True, Description: LazyValidation
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
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
	Private sDisabled As String
	Private bLazyValidation As Boolean
	Private sReadonly As String
	Private sVBind As String
	Private sVFor As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	'Private sVShow As String
 	Private bDisabled As Boolean
	Private bReadonly As Boolean
	Private sRecordSource As String
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
	sReadonly = $"${mName}readonly"$
	sVModel = $"${mName}vmodel"$
	'sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bDisabled = Props.GetDefault("Disabled",False)
		bReadonly = Props.Get("Readonly")
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		bLazyValidation = Props.GetDefault("LazyValidation", False)
		sVBind = Props.Get("VBind")
		sVFor = Props.Get("VFor")
		sVIf = Props.Get("VIf")
		sVOn = Props.Get("VOn") 
		sRecordSource = Props.GetDefault("RecordSource", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-form ref="${mName}" id="${mName}"></v-form>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-form" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)

	VElement.AddAttr(":lazy-validation", bLazyValidation)
	
	VElement.AddAttr(":readonly", sReadonly)
	VElement.SetData(sReadonly, bReadonly)

	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("v-on", sVOn)	
	VElement.AddAttr("v-model", sVModel)
	VElement.AddAttr("v-if", sVIf)
	'VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVModel, False)
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

Sub AddClass(s As String) As VForm 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VForm 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VForm 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VForm 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
VC.SetData(sDisabled, vDisabled)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadonly, vReadonly)
End Sub

'Update VModel
Sub SetValue(VC As VueComponent, vVModel As Object)
VC.SetData(sVModel, vVModel)
End Sub

'get value
Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
	Return res
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

'reset the form
Sub Reset(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("reset", Null)
End Sub

'reset validation not state
Sub ResetValidation(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("resetValidation", Null)
End Sub

'validate the form
Sub Validate(VC As VueComponent) As Boolean
	Dim refs As BANanoObject = VC.refs
	Dim res As Boolean = refs.GetField(mName).runmethod("validate", Null).Result
	Return res
End Sub

'get the data of the form
Sub GetData(VC As VueComponent) As Map
	Dim m As Map = CreateMap()
	If sRecordSource = "" Then
		BANano.Throw($"VForm.${mName} - the RecordSource has not been specified!"$)
		Return m
	End If
	m = VC.GetData(sRecordSource)
	Return m
End Sub

'set the data of the form
Sub SetData(VC As VueComponent, rec As Map)
	If sRecordSource = "" Then
		BANano.Throw($"VForm.${mName} - the RecordSource has not been specified!"$)
		Return
	End If
	VC.SetData(sRecordSource, rec)
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

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("hidden-sm-only")
End Sub
	
Sub HiddenMDOnly
	AddClass("hidden-md-only")
End Sub
	
Sub HiddenLGOnly
	AddClass("hidden-lg-only")
End Sub
	
Sub HiddenXLOnly
	AddClass("hidden-xl-only")
End Sub
'
Sub HiddenXSAndDown
	AddClass("hidden-xs-and-down")
End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
Sub HiddenXLAndDown
	AddClass("hidden-xl-and-down")
End Sub
'
Sub HiddenXSAndUp
	AddClass("hidden-xs-and-up")
End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
Sub HiddenXLAndUp
	AddClass("hidden-xl-and-up")
End Sub	

Sub HideOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("d-none d-sm-flex")
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