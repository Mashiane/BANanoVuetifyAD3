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

#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue: , Description: Disabled
#DesignerProperty: Key: LazyValidation, DisplayName: LazyValidation, FieldType: String, DefaultValue: , Description: LazyValidation
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: String, DefaultValue: , Description: Readonly
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
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
Private sLazyValidation As String
Private sReadonly As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
 
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
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		sDisabled = Props.Get("Disabled")
sLazyValidation = Props.Get("LazyValidation")
sReadonly = Props.Get("Readonly")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVModel = Props.Get("VModel")
sVOn = Props.Get("VOn")
 
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
	VElement.SetData(sDisabled, False)

	VElement.AddAttr(":lazy-validation", sLazyValidation)
	VElement.SetData(sLazyValidation, False)

	VElement.AddAttr(":readonly", sReadonly)
	VElement.SetData(sReadonly, False)

	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("v-on", sVOn)	
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, False)
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

'Update LazyValidation
Sub UpdateLazyValidation(VC As VueComponent, vLazyValidation As Object)
VC.SetData(sLazyValidation, vLazyValidation)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(sReadonly, vReadonly)
End Sub

'Update VModel
Sub UpdateVModel(VC As VueComponent, vVModel As Object)
VC.SetData(sVModel, vVModel)
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

'reset validation
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

