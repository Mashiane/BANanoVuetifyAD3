B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: InfoType, DisplayName: Type, FieldType: String, DefaultValue: info-box, Description: Info Type, List: info-box|info-box-2|info-box-3|info-box-4
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: , Description: Icon
#DesignerProperty: Key: IconColor, DisplayName: Icon Color, FieldType: String, DefaultValue:  , Description: Icon Color , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: IconBackgroundColor, DisplayName: IconBackgroundColor, FieldType: String, DefaultValue:  , Description: Icon Color , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: Color , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HoverZoomEffect, DisplayName: Hover Zoom Effect, FieldType: Boolean, DefaultValue: False, Description: HoverZoomEffect
#DesignerProperty: Key: HoverExpandEffect, DisplayName: Hover Expand Effect, FieldType: Boolean, DefaultValue: False, Description: HoverExpandEffect
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
#DesignerProperty: Key: OnClick, DisplayName: On Click, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
Sub Class_Globals
	Private mCallBack As Object
	Private mEvent As String    'ignore
	Public methods As Map
	Private BANano As BANano  'ignore
	Private mName As String
	Public bindings As Map
	Private mElement As BANanoElement
	Private mTarget As BANanoElement 'ignore
	Private mCaption As String
	Private iconID As String
	Private textID As String
	Private contentID As String
	Private iconDiv As String
	Private mIcon As String
	Private mIconColor As String
	Private mHoverZoomEffect As Boolean
	Private mStartValue As String
	Private mEndValue As String
	Private numberID As String
	Private mHoverExpandEffect As Boolean
	Private mColor As String
	Private mInfoType As String
	Private mIconBackgroundColor As String
	Private mOnClick As String
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
	Private VC As VueComponent					'ignore
	Private sVShow As String
	Private bHidden As Boolean
End Sub


'initialize to the component you want to load to
Sub Initialize(Module As Object, Name As String, eventName As String)
	mCallBack = Module
	mName = Name.tolowercase
	mEvent = eventName.tolowercase
	methods.Initialize 
	bindings.Initialize
	'
	iconID = $"${mName}icon"$	
	contentID = $"${mName}content"$
	textID = $"${mName}text"$
	iconDiv = $"${mName}icondiv"$
	numberID = $"${mName}number"$
	startID = $"${mName}start"$
	endID = $"${mName}end"$
	SetData(startID, 0)
	SetData(endID, 1973)
	sVShow = $"${mName}show"$
	'
	If mName <> "" Then
		Dim fKey As String = $"#${mName}"$
		If BANano.Exists(fKey) Then 
			mElement = BANano.GetElement(fKey)
		End If
	End If
End Sub

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mCaption = Props.Get("Caption")
		mIcon = Props.Get("Icon")
		mIconColor = Props.Get("IconColor")
		mHoverZoomEffect = Props.Get("HoverZoomEffect")
		mEndValue = Props.Get("Value")
		mHoverExpandEffect = Props.Get("HoverExpandEffect")
		mColor = Props.Get("Color")
		mInfoType = Props.Get("InfoType")
		mIconBackgroundColor = Props.Get("IconBackgroundColor")
		mOnClick = Props.Get("OnClick")
		mStartValue = Props.Get("StartValue")
		mDuration = Props.Get("Duration")
		mAutoPlay = Props.Get("AutoPlay")
		mUseEasing = Props.Get("UseEasing")
		mDecimals = Props.Get("Decimals")
		mDecimal = Props.Get("Decimal")
		mSeparator = Props.Get("Separator")
		mPrefix = Props.Get("Prefix")
		mSuffix = Props.Get("Suffix")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	mHoverZoomEffect = BANanoShared.parseBool(mHoverZoomEffect)
mHoverExpandEffect = BANanoShared.parseBool(mHoverExpandEffect)
mAutoPlay = BANanoShared.parseBool(mAutoPlay)
mUseEasing = BANanoShared.parseBool(mUseEasing)

	
	'build and get the element
	Dim strHTML As String = $"<div ref="${mName}" id="${mName}">
<div id="${iconDiv}" class="icon">
<i id="${iconID}" class="material-icons mdi"></i>
</div>
<div id="${contentID}" class="content">
<div id="${textID}" class="text"></div>
<count-to id="${numberID}" ref="${numberID}" class="number"></count-to>
</div>
</div>"$
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	setInfoType(mInfoType)
	setCaption(mCaption)
	setIcon(mIcon)
	setIconColor(mIconColor)
	setHoverZoomEffect(mHoverZoomEffect)
	setEndValue(mEndValue)
	setHoverExpandEffect(mHoverExpandEffect)
	setColor(mColor)
	setIconBackgroundColor(mIconBackgroundColor)
	setOnClick(mOnClick)
	setStartValue(mStartValue)
	setDuration(mDuration)
	setAutoPlay(mAutoPlay)
	setUseEasing(mUseEasing)
	setDecimals(mDecimals)
	setDecimal(mDecimal)
	setSeparator(mSeparator)
	setPrefix(mPrefix)
	setSuffix(mSuffix)
	If bHidden Then
		mElement.SetAttr("v-show", sVShow)
		SetData(sVShow, Not(bHidden))
	End If
End Sub

'set the suffix
Sub setSuffix(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("suffix", s)
	mSuffix = s
End Sub

'set the prefix
Sub setPrefix(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("prefix", s)
	mPrefix = s
End Sub

'set the separator
Sub setSeparator(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("separator", s)
	mSeparator = s
End Sub

'set decimal
Sub setDecimal(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("decimal", s)
	mDecimal = s
End Sub

'set decimals
Sub setDecimals(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("decimals", s)
	mDecimals = s
End Sub

'set easing
Sub setUseEasing(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr(":use-easing", s)
	mUseEasing = s
End Sub

'set auto play
Sub setAutoPlay(s As Boolean)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr(":autoplay", s)
	mAutoPlay = s
End Sub

'set duration
Sub setDuration(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr("duration", s)
	mDuration = s
End Sub

'set start value
Sub setStartValue(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then 
		s = "0"
		Return
	End If
	mStartValue = s
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr(":start-val", startID)
	mStartValue = BANano.parseFloat(mStartValue)
	SetData(startID, mStartValue)
End Sub

'set end value
Sub setEndValue(v As String)
	If BANano.IsUndefined(v) Or BANano.IsNull(v) Then 
		v = "0"
	End If
	mEndValue = v
	Dim elx As BANanoElement
	elx.Initialize($"#${numberID}"$)
	elx.SetAttr(":end-val", endID)
	mEndValue = BANano.parseFloat(mEndValue)
	SetData(endID, mEndValue)
End Sub

'set on click
Sub setOnClick(s As String)
	Dim methodName As String = $"${mName}_click"$
	If SubExists(mCallBack, methodName) = False Then Return
	If BANano.IsUndefined(s) Or BANano.IsNull(s) Then s = ""
	Dim scode As String
	If s = "" Then
		scode = methodName
	Else	
		scode = $"${methodName}(${s})"$
	End If
	mElement.SetAttr($"v-on:click"$, scode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e))
	methods.Put(methodName, cb)'
	AddStyle("cursor", "pointer")
End Sub

'add a style
Sub AddStyle(varProp As String, varStyle As String)
	If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return
	If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle)
	If mElement <> Null Then
		Dim aStyle As Map = CreateMap()
		aStyle.put(varProp, varStyle)
		Dim sStyle As String = BANano.ToJSON(aStyle)
		mElement.SetStyle(sStyle)
	End If
End Sub

'set info type
Sub setInfoType(s As String)
	mInfoType = s
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then 
		mInfoType = "info-box"
	End If
	Dim elx As BANanoElement
	elx.Initialize($"#${mName}"$)
	elx.AddClass(mInfoType)
End Sub

'set hover expand
Sub setHoverExpandEffect(b As Boolean)
	mHoverExpandEffect = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If mHoverExpandEffect = False Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${mName}"$)
	elx.AddClass("hover-expand-effect")
End Sub

'set hover zoom
Sub setHoverZoomEffect(b As Boolean)
	mHoverZoomEffect = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If mHoverZoomEffect = False Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${mName}"$)
	elx.AddClass("hover-zoom-effect")
End Sub

'set caption
Sub setCaption(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${textID}"$)
	elx.SetText(s)
	mCaption = s
End Sub

'set icon
Sub setIcon(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "" Then Return
	Dim elx As BANanoElement
	elx.Initialize($"#${iconID}"$)
	elx.AddClass(s)
	mIcon = s
End Sub

'set icon background
Sub setIconBackgroundColor(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "none" Or s = "" Then Return
	Dim iconKey As String = $"bg-${s}"$
	Dim elx As BANanoElement
	elx.Initialize($"#${iconDiv}"$)
	elx.AddClass(iconKey)
	mIconBackgroundColor = s
End Sub

'set icon color
Sub setIconColor(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "none" Or s = "" Then Return
	Dim iconKey As String = $"col-${s}"$
	Dim elx As BANanoElement
	elx.Initialize($"#${iconID}"$)
	elx.AddClass(iconKey)
	mIconColor = s
End Sub

'set background color
Sub setColor(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then Return
	If s = "none" Or s = "" Then Return
	Dim iconKey As String = $"bg-${s}"$
	Dim elx As BANanoElement
	elx.Initialize($"#${mName}"$)
	elx.AddClass(iconKey)
	mColor = s
End Sub

'returns the BANanoElement
Sub getElement() As BANanoElement
	Return mElement
End Sub

'sets the BANanoElement
Sub setElement(varElement As BANanoElement)
	mElement = varElement
End Sub

'returns the tag id
Sub getID() As String
	Return mName
End Sub

'add the element to the parent
Sub AddToParent(targetID As String)
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

'update start value at run time
Sub UpdateStartValue(C As VueComponent, s As String)
	C.SetData(startID, s)
End Sub

Sub UpdateStartValueOnApp(C As VuetifyApp, s As String)
	C.SetData(startID, s)
End Sub

'update end value at run time
Sub UpdateEndValue(C As VueComponent, s As String)
	C.SetData(endID, s)
End Sub

Sub UpdateEndValueOnApp(C As VuetifyApp, s As String)
	C.SetData(endID, s)
End Sub

'start the count
Sub start(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("start", Null)
End Sub

Sub startOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("start", Null)
End Sub

'pause the count
Sub pause(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pause", Null)
End Sub

Sub pauseOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pause", Null)
End Sub

'pause the count
Sub pauseResume(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pauseResume", Null)
End Sub

Sub pauseResumeOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("pauseResume", Null)
End Sub

'reset the count
Sub reset(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("reset", Null)
End Sub

Sub resetOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(numberID).RunMethod("reset", Null)
End Sub

'remove component
Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
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

'add a class
Sub AddClass(varClass As String) 
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then 
		mElement.AddClass(varClass)
	End If
End Sub

private Sub CStr(o As Object) As String
	Return "" & o
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
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

Sub RemoveCodeBindings(b As List)
	For Each k As String In b
		If k <> "" Then
			bindings.Remove(k)
		End If
	Next
End Sub


Sub BindState(c As VueComponent)
	VC = c
	Dim mbindings As Map = bindings
	Dim mmethods As Map = methods
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
	Dim mbindings As Map = bindings
	Dim mmethods As Map = methods
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