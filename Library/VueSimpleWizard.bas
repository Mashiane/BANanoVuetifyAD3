B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#Event: nextClicked (currentPage As Map)
#Event: backClicked (currentPage As Map)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: scrollToTopOnStepChange, DisplayName: Scroll To Top On Step Change, FieldType: Boolean, DefaultValue: True  , Description: Scroll To Top On Step Change


Sub Class_Globals
	Public bindings As Map
	Public methods As Map
	Private mCallBack As Object
	Private mName As String
	Private mEventName As String
	Private BANano As BANano 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Public VC As VueComponent	
	Private steps As List
	Private stepsName As String
	Private mscrollToTopOnStepChange As Boolean = True
End Sub

'initialize to the component you want to load to
Public Sub Initialize(CallBack As Object, Name As String , EventName As String)
	mCallBack = CallBack
	methods.Initialize 
	bindings.Initialize
	mName = Name.Replace("#","")
	mName = mName.tolowercase
	mEventName = EventName.Replace("#","") 
	mEventName = mEventName.tolowercase
	'
	Dim fKey As String = $"#${mName}"$
	If BANano.Exists(fKey) Then 
		mElement = BANano.GetElement(fKey)
	End If
	stepsName = $"${mName}steps"$
	steps.Initialize 
	SetData(stepsName, steps)
End Sub

' this is the place where you create the view in html and run initialize javascript
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mscrollToTopOnStepChange = Props.Get("scrollToTopOnStepChange")
	End If
	
	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	mElement.SetAttr(":steps", stepsName)
	'initialize the list of steps
	Dim snextClicked As String = $"${mName}_nextclicked"$
	Dim sbackClicked As String = $"${mName}_backclicked"$
	'
	steps.Initialize 
	SetData(stepsName, steps)
	setonNext(snextClicked)
	setonBack(sbackClicked)
	setscrollToTopOnStepChange(mscrollToTopOnStepChange)
	'
	If SubExists(mCallBack, snextClicked) Then
		Dim cp As Map
		Dim cbnextClicked As BANanoObject = BANano.CallBack(mCallBack, snextClicked, Array(cp))
		methods.Put(snextClicked, cbnextClicked)
	End If
	'
	If SubExists(mCallBack, sbackClicked) Then
		Dim cpb As Map
		Dim cbbackClicked As BANanoObject = BANano.CallBack(mCallBack, sbackClicked, Array(cpb))
		methods.Put(sbackClicked, cbbackClicked)
	End If
End Sub


Sub ClearSteps
	steps.Initialize 
	SetData(stepsName, steps)
End Sub

Sub AddStep(slotName As String, label As String, previousStepLabel As String, nextStepLabel As String, hidePrevious As Boolean, nonLinear As Boolean, validate As Boolean)
	slotName = slotName.tolowercase
	
	Dim options As Map = CreateMap()
	Dim thisStep As Map = CreateMap()
	'
	If previousStepLabel <> "" Then
		options.Put("previousStepLabel", previousStepLabel)
	End If
	If nextStepLabel <> "" Then
		options.Put("nextStepLabel", nextStepLabel)
	End If
	options.Put("hidePrevious", hidePrevious)
	'
	thisStep.Put("label", label)
	thisStep.Put("slot", slotName)
	thisStep.Put("nonLinear", nonLinear)
	'
	If validate Then
		Dim mKey As String = $"${mName}_validate_${slotName}"$
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, mKey, Null)
		methods.Put(mKey, cb)
		thisStep.Put("validate", mKey)
	End If
	thisStep.Put("options", options)
	'
	steps.Add(thisStep)
	'
	'create the html part
	mElement.Append($"<div id="${slotName}" slot="${slotName}"></div>"$)
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

Sub GetSlot(elID As String) As VueElement
	elID = CleanID(elID)
	If BANano.Exists(elID) Then
		Dim ve As VueElement
		ve.Initialize(mCallBack, elID, elID)
		Return ve
	Else
		Return Null
	End If
End Sub

'return the generated html
Sub ToString As String
	'build the 'class' attribute
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"<vuetify-simple-wizard ref="${mName}" id="${mName}"></vuetify-simple-wizard>"$)
	Return sb.tostring
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
		prop = ""
	End If
	If prop = "" Then Return
	prop = prop.tolowercase
	bindings.put(prop, value)
End Sub

'returns the BANanoElement
public Sub getElement() As BANanoElement
	Return mElement
End Sub

'sets the BANanoElement
Sub setElement(varElement As BANanoElement)
	mElement = varElement
End Sub

'returns the tag id
public Sub getID() As String
	Return mName
End Sub

'add the element to the parent
public Sub AddToParent(targetID As String)
	targetID = targetID.tolowercase
	targetID = targetID.Replace("#","")
	mTarget = BANano.GetElement($"#${targetID}"$)
	DesignerCreateView(mTarget, Null)
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub

'remove component
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

private Sub setonNext(sonNext As String)
	mElement.SetAttr(":onNext", sonNext)
End Sub

private Sub setonBack(sonBack As String)
	mElement.SetAttr(":onBack", sonBack)
End Sub

Sub setscrollToTopOnStepChange(b As Boolean)
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	mElement.SetAttr("scrollToTopOnStepChange", b)
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
End Sub

'add a class
public Sub AddClass(varClass As String) 
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then 
		mElement.AddClass(varClass)
	End If
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