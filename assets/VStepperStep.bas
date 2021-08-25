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
#Event: Change (e As BANanoEvent)

#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: Required
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Complete, DisplayName: Complete, FieldType: Boolean, DefaultValue: False, Description: Complete
#DesignerProperty: Key: CompleteIcon, DisplayName: CompleteIcon, FieldType: String, DefaultValue: , Description: CompleteIcon
#DesignerProperty: Key: EditIcon, DisplayName: EditIcon, FieldType: String, DefaultValue: , Description: EditIcon
#DesignerProperty: Key: Editable, DisplayName: Editable, FieldType: Boolean, DefaultValue: False, Description: Editable
#DesignerProperty: Key: ErrorIcon, DisplayName: ErrorIcon, FieldType: String, DefaultValue: , Description: ErrorIcon
#DesignerProperty: Key: StepValue, DisplayName: StepValue, FieldType: String, DefaultValue: , Description: StepValue
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
Private bComplete As Boolean
Private sCompleteIcon As String
Private sEditIcon As String
Private bEditable As Boolean
Private sErrorIcon As String
Private sRules As String
Private sStepValue As String
 Private xComplete As String
  Private xEditable As String
  Private bRequired As Boolean
  Private sRequired As String
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
	xComplete = $"${mName}complete"$
	xEditable = $"${mName}editable"$
	sRules = $"${mName}rules"$
	sRequired = $"${mName}required"$
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bComplete = Props.GetDefault("Complete", False)
		sCompleteIcon = Props.GetDefault("CompleteIcon", "")
		sEditIcon = Props.GetDefault("EditIcon", "")
		bEditable = Props.GetDefault("Editable", False)
		sErrorIcon = Props.GetDefault("ErrorIcon", "")
		sRules = Props.GetDefault("Rules", "")
		sStepValue = Props.GetDefault("StepValue", "")
		bRequired = Props.GetDefault("Required", False)
	End If 
	'
	bComplete = BANanoShared.parseBool(bComplete)
bEditable = BANanoShared.parseBool(bEditable)
bRequired = BANanoShared.parseBool(bRequired)
 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-stepper-step ref="${mName}" id="${mName}"></v-stepper-step>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-stepper-step" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":complete", xComplete)
	VElement.SetData(xComplete, bComplete)
	VElement.AddAttr("complete-icon", sCompleteIcon)
	VElement.AddAttr("edit-icon", sEditIcon)
	VElement.AddAttr(":editable", xEditable)
	VElement.SetData(xEditable, bEditable)
	VElement.AddAttr("error-icon", sErrorIcon)
	VElement.AddAttr(":rules", sRules)
	VElement.SetData(sRules, VElement.NewList)
	VElement.AddAttr("step", sStepValue)
	VElement.AddAttr(":required", sRequired)
	VElement.SetData(sRequired, bRequired)
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

Sub AddClass(s As String) As VStepperStep 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VStepperStep 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VStepperStep 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VStepperStep 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateEditable(C As VueComponent, b As Boolean) As VStepperStep 
	C.SetData(xEditable, b) 
	Return Me 
End Sub

Sub UpdateComplete(C As VueComponent, b As Boolean) As VStepperStep 
	C.SetData(xComplete, b) 
	Return Me 
End Sub

'add a rule
'<code>
'Sub AddRule(v As String) As Object	'ignoredeadcode
'If v = "" Then
'return "This is required!"
'Else
'Return True
'End If
'End Sub
'</code>
Sub AddRule(methodName As String)
	VElement.AddRule(methodName)
		VElement.SetData(sRequired, True)
	bRequired = True
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