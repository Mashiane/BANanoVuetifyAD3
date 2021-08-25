B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: false, Description: Hidden
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: Color , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: StartValue, DisplayName: Start Value, FieldType: String, DefaultValue: 0, Description: Start Value
#DesignerProperty: Key: Value, DisplayName: End Value, FieldType: String, DefaultValue: 1973, Description: End Value
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: String, DefaultValue: 3000, Description: Duration
#DesignerProperty: Key: AutoPlay, DisplayName: AutoPlay, FieldType: Boolean, DefaultValue: True, Description: AutoPlay
#DesignerProperty: Key: UseEasing, DisplayName: UseEasing, FieldType: Boolean, DefaultValue: True, Description: UseEasing
#DesignerProperty: Key: Decimals, DisplayName: Decimals, FieldType: String, DefaultValue: 0, Description: Decimals
#DesignerProperty: Key: Decimal, DisplayName: Decimal, FieldType: String, DefaultValue: ., Description: Decimal
#DesignerProperty: Key: Separator, DisplayName: Separator, FieldType: String, DefaultValue: , Description: Separator
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Separator
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix

Sub Class_Globals
	Private mCallBack As Object
	Private mEvent As String  'ignore
	Private BANano As BANano  'ignore
	Private mName As String
	Private mElement As BANanoElement
	Private mTarget As BANanoElement 'ignore
	Private mCaption As String
	Private mStartValue As String
	Private mEndValue As String
	Private mColor As String
	Private mOnClick As String  'ignore
	Private mDuration As String
	Private mAutoPlay As Boolean
	Private mUseEasing As Boolean
	Private mDecimals As String
	Private mDecimal As String
	Private mSeparator As String
	Private mPrefix As String
	Private mSuffix As String
	Private startID As String
	Private endID As String
	Private mIcon As String
	Private numberID As String
	Public VElement As VueElement
	Private VC As VueComponent					'ignore
	Private mVShow As String
	Private bHidden As Boolean
End Sub

'initialize to the component you want to load to
Sub Initialize(Module As Object, Name As String, eventName As String)
	BANano.DependsOnAsset("vue-count-to.min.js") 
	mCallBack = Module
	mName = Name.tolowercase
	mEvent = eventName.tolowercase
	
	numberID = $"${mName}number"$
	startID = $"${mName}start"$
	endID = $"${mName}end"$
	'
	If mName <> "" Then
		Dim fKey As String = $"#${mName}"$
		If BANano.Exists(fKey) Then 
			mElement = BANano.GetElement(fKey)
		End If
	End If
	mVShow = $"${mName}show"$
End Sub

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mCaption = Props.Get("Caption")
		mIcon = Props.Get("Icon")
		mEndValue = Props.GetDefault("Value", 1973)
		mColor = Props.Get("Color")
		mOnClick = Props.Get("OnClick")
		mStartValue = Props.GetDefault("StartValue", 0)
		mDuration = Props.Get("Duration")
		mAutoPlay = Props.Get("AutoPlay")
		mUseEasing = Props.Get("UseEasing")
		mDecimals = Props.Get("Decimals")
		mDecimal = Props.Get("Decimal")
		mSeparator = Props.Get("Separator")
		mPrefix = Props.Get("Prefix")
		mSuffix = Props.Get("Suffix")
		bHidden = Props.getdefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	mAutoPlay = BANanoShared.parseBool(mAutoPlay)
mUseEasing = BANanoShared.parseBool(mUseEasing)

	'
	Dim strHTML As String
	strHTML = $"<v-card ref="${mName}" id="${mName}" class="ma-3 rounded-lg" max-width="344">
	<v-list-item id="${mName}listitem">
	<v-list-item-avatar id="${mName}listitemavatar" class="mt-n7 rounded-lg elevation-10" size="80" elevation="10">
	<v-sheet id="${mName}sheet" color="${mColor}" elevation="10" height="80px" width="80px">
	<v-icon id="${mName}icon" :dark="true" :x-large="true">${mIcon}</v-icon>
	</v-sheet>
	</v-list-item-avatar>
	<v-list-item-content id="${mName}listitemcontent">
	<div id="${mName}caption" class="overline text-right">${mCaption}</div>
	<v-list-item-title id="${mName}listitemtitle" class="headline mb-1 text-right">
	<count-to id="${numberID}" ref="${numberID}" class="number"></count-to>
	</v-list-item-title>
	</v-list-item-content>
	</v-list-item>
	</v-card>"$

	mElement = mTarget.Append(strHTML).Get("#" & mName)
	VElement.Initialize(mCallBack, mName, mName)
	'
	Dim countTo As VueElement
	countTo.Initialize(mCallBack, numberID, numberID)
	countTo.AddAttr("suffix", mSuffix)
	countTo.AddAttr("prefix", mPrefix)
	countTo.AddAttr("separator", mSeparator)
	countTo.AddAttr("decimal", mDecimal)
	countTo.AddAttr("decimals", mDecimals)
	countTo.AddAttr(":use-easing", mUseEasing)
	countTo.AddAttr(":autoplay", mAutoPlay)
	countTo.AddAttr("duration", mDuration)
	countTo.SetAttr(":end-val", endID)
	countTo.SetAttr(":start-val", startID)

	mEndValue = BANano.parseFloat(mEndValue)
	mStartValue = BANano.parseFloat(mStartValue)
	'
	VElement.SetData(endID, mEndValue)
	VElement.SetData(startID, mStartValue)
	If bHidden Then
	VElement.VShow = mVShow
	VElement.Setdata(mVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
End Sub

'returns the tag id
Sub getID() As String
	Return mName
End Sub

'update start value at run time
Sub UpdateStartValue(C As VueComponent, s As String)
	C.SetData(startID, s)
End Sub

'update end value at run time
Sub UpdateEndValue(C As VueComponent, s As String)
	C.SetData(endID, s)
End Sub

'start the count
Sub start(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("start", Null)
End Sub

'pause the count
Sub pause(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pause", Null)
End Sub

'pause the count
Sub pauseResume(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pauseResume", Null)
End Sub

'reset the count
Sub reset(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("reset", Null)
End Sub

'remove component
Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
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


Sub OnClick(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", args)
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


Sub AddClass(s As String)
	VElement.AddClass(s)
End Sub

Sub AddAttr(p As String, v As Object)
	VElement.SetAttr(p, v)
End Sub

Sub AddStyle(p As String, v As String)
	VElement.AddStyle(p, v)
End Sub

'update start value at run time
Sub UpdateStartValueOnApp(C As VuetifyApp, s As String)
	C.SetData(startID, s)
End Sub

'update end value at run time
Sub UpdateEndValueOnApp(C As VuetifyApp, s As String)
	C.SetData(endID, s)
End Sub

'start the count
Sub startOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("start", Null)
End Sub

'pause the count
Sub pauseOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pause", Null)
End Sub

'pause the count
Sub pauseResumeOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pauseResume", Null)
End Sub

'reset the count
Sub resetOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("reset", Null)
End Sub