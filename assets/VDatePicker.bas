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

#Event: Change (item As Object)
#Event: UpdatePickerDate (item As Object)
#Event: UpdateActivePicker (item As Object)
#Event: DblClickDate (val As Object)

#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: dp1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: UseAllowedDates, DisplayName: UseAllowedDates, FieldType: Boolean, DefaultValue: False, Description: UseAllowedDates
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue: False, Description: FullWidth
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Today, DisplayName: Today, FieldType: Boolean, DefaultValue: True, Description: Today
#DesignerProperty: Key: DateType, DisplayName: DateType, FieldType: String, DefaultValue: date, Description: DateType, List: date|month
#DesignerProperty: Key: ActivePicker, DisplayName: ActivePicker, FieldType: String, DefaultValue: DATE, Description: ActivePicker, List: DATE|MONTH|NONE|YEAR
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: FirstDayOfWeek, DisplayName: FirstDayOfWeek, FieldType: String, DefaultValue: , Description: FirstDayOfWeek
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: HeaderColor, DisplayName: HeaderColor, FieldType: String, DefaultValue: , Description: HeaderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: HeaderColorIntensity, DisplayName: Headercolorintensity, FieldType: String, DefaultValue: , Description: Headercolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Landscape, DisplayName: Landscape, FieldType: Boolean, DefaultValue: False, Description: Landscape
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: , Description: Locale
#DesignerProperty: Key: LocaleFirstDayOfYear, DisplayName: LocaleFirstDayOfYear, FieldType: String, DefaultValue: , Description: LocaleFirstDayOfYear
#DesignerProperty: Key: MaxValue, DisplayName: Max, FieldType: String, DefaultValue: , Description: MaxValue
#DesignerProperty: Key: MinValue, DisplayName: Min, FieldType: String, DefaultValue: , Description: MinValue
#DesignerProperty: Key: Multiple, DisplayName: Multiple, FieldType: Boolean, DefaultValue: False, Description: Multiple
#DesignerProperty: Key: NextIcon, DisplayName: NextIcon, FieldType: String, DefaultValue: , Description: NextIcon
#DesignerProperty: Key: NextMonthAriaLabel, DisplayName: NextMonthAriaLabel, FieldType: String, DefaultValue: , Description: NextMonthAriaLabel
#DesignerProperty: Key: NextYearAriaLabel, DisplayName: NextYearAriaLabel, FieldType: String, DefaultValue: , Description: NextYearAriaLabel
#DesignerProperty: Key: NoTitle, DisplayName: NoTitle, FieldType: Boolean, DefaultValue: False, Description: NoTitle
#DesignerProperty: Key: PrevIcon, DisplayName: PrevIcon, FieldType: String, DefaultValue: , Description: PrevIcon
#DesignerProperty: Key: PrevMonthAriaLabel, DisplayName: PrevMonthAriaLabel, FieldType: String, DefaultValue: , Description: PrevMonthAriaLabel
#DesignerProperty: Key: PrevYearAriaLabel, DisplayName: PrevYearAriaLabel, FieldType: String, DefaultValue: , Description: PrevYearAriaLabel
#DesignerProperty: Key: Range, DisplayName: Range, FieldType: Boolean, DefaultValue: False, Description: Range
#DesignerProperty: Key: Reactive, DisplayName: Reactive, FieldType: Boolean, DefaultValue: False, Description: Reactive
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: Boolean, DefaultValue: False, Description: Readonly
#DesignerProperty: Key: Scrollable, DisplayName: Scrollable, FieldType: String, DefaultValue: , Description: Scrollable
#DesignerProperty: Key: SelectedItemsText, DisplayName: SelectedItemsText, FieldType: String, DefaultValue: , Description: SelectedItemsText
#DesignerProperty: Key: ShowAdjacentMonths, DisplayName: ShowAdjacentMonths, FieldType: Boolean, DefaultValue: True, Description: ShowAdjacentMonths
#DesignerProperty: Key: ShowCurrent, DisplayName: ShowCurrent, FieldType: Boolean, DefaultValue: True, Description: ShowCurrent
#DesignerProperty: Key: ShowWeek, DisplayName: ShowWeek, FieldType: Boolean, DefaultValue: False, Description: ShowWeek
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf

#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: YearIcon, DisplayName: YearIcon, FieldType: String, DefaultValue: , Description: YearIcon
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
	Private sActivePicker As String
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bDisabled As Boolean
	Private sElevation As String
	Private sEvents As String
	Private sFirstDayOfWeek As String
	Private bFlat As Boolean
	Private sHeaderColor As String
	Private sHeaderColorIntensity As String
	Private bLandscape As Boolean
	Private sLocale As String
	Private sLocaleFirstDayOfYear As String
	Private sMaxValue As String
	Private sMinValue As String
	Private bMultiple As Boolean
	Private sNextIcon As String
	Private sNextMonthAriaLabel As String
	Private sNextYearAriaLabel As String
	Private bNoTitle As Boolean
	Private sPickerDate As String		'ignore
	Private sPrevIcon As String
	Private sPrevMonthAriaLabel As String
	Private sPrevYearAriaLabel As String
	Private bRange As Boolean
	Private bReactive As Boolean
	Private bReadonly As Boolean
	Private sScrollable As String
	Private sSelectedItemsText As String
	Private bShowAdjacentMonths As Boolean
	Private bShowCurrent As Boolean
	Private bShowWeek As Boolean
	Private sVBind As String
	Private sVFor As String
	Private sVIf As String
	Private sVModel As String
	Private sVOn As String
	Private sVShow As String
	Private sValue As String
	Private sWidth As String
	Private sYearIcon As String
	Private sDisabled As String
	Private xLocale As String
	Private xLocaleFirstDayOfYear As String
	Private xMaxValue As String
	Private xMinValue As String
	Private xReadOnly As String
	Private xEvents As Map
	Private bHidden As Boolean
	Private bToday As Boolean
	Private sAllowedDates As String
	Private bFullWidth As Boolean
	Private sDateType As String
	Private bUseAllowedDates As Boolean
	Private xAllowedDates As List
	Private bShrink As Boolean
	Private VC As VueComponent
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
	xLocale = $"${mName}locale"$
	xLocaleFirstDayOfYear = $"${mName}localefirstdayofyear"$
	xMaxValue = $"${mName}maxvalue"$
	xMinValue = $"${mName}minvalue"$
	xReadOnly = $"${mName}readonly"$
	sVShow = $"${mName}vshow"$
	sEvents = $"${mName}events"$
	xEvents.Initialize 
	xAllowedDates.Initialize 
	sAllowedDates = $"${mName}alloweddates"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bToday = Props.GetDefault("Today", True)
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sActivePicker = Props.GetDefault("ActivePicker", "DATE")
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		bHidden = Props.GetDefault("Hidden", False)
		bDark = Props.GetDefault("Dark", False)
		bDisabled = Props.GetDefault("Disabled", False)
		sElevation = Props.GetDefault("Elevation", "")
		sFirstDayOfWeek = Props.GetDefault("FirstDayOfWeek", "")
		bFlat = Props.GetDefault("Flat", False)
		sHeaderColor = Props.GetDefault("HeaderColor", "")
		sHeaderColorIntensity = Props.GetDefault("HeaderColorIntensity", "")
		bLandscape = Props.GetDefault("Landscape", False)
		sLocale = Props.GetDefault("Locale", "")
		sLocaleFirstDayOfYear = Props.GetDefault("LocaleFirstDayOfYear", "")
		sMaxValue = Props.GetDefault("MaxValue", "")
		sMinValue = Props.GetDefault("MinValue", "")
		bMultiple = Props.GetDefault("Multiple", False)
		sNextIcon = Props.GetDefault("NextIcon", "")
		sNextMonthAriaLabel = Props.GetDefault("NextMonthAriaLabel", "")
		sNextYearAriaLabel = Props.GetDefault("NextYearAriaLabel", "")
		bNoTitle = Props.GetDefault("NoTitle", False)
		sPrevIcon = Props.GetDefault("PrevIcon", "")
		sPrevMonthAriaLabel = Props.GetDefault("PrevMonthAriaLabel", "")
		sPrevYearAriaLabel = Props.GetDefault("PrevYearAriaLabel", "")
		bRange = Props.GetDefault("Range", False)
		bReactive = Props.GetDefault("Reactive", False)
		bReadonly = Props.GetDefault("Readonly", False)
		sScrollable = Props.GetDefault("Scrollable", "")
		sSelectedItemsText = Props.GetDefault("SelectedItemsText", "")
		bShowAdjacentMonths = Props.GetDefault("ShowAdjacentMonths", True)
		bShowCurrent = Props.GetDefault("ShowCurrent", True)
		bShowWeek = Props.GetDefault("ShowWeek", False)
		sVBind = Props.GetDefault("VBind", "")
		sVFor = Props.GetDefault("VFor", "")
		sVIf = Props.GetDefault("VIf", "")
		sVModel = Props.GetDefault("VModel", "")
		sVOn = Props.GetDefault("VOn", "")
		sValue = Props.GetDefault("Value", "")
		sWidth = Props.GetDefault("Width", "")
		sYearIcon = Props.GetDefault("YearIcon", "")
		bFullWidth = Props.GetDefault("FullWidth", False)
		sDateType = Props.GetDefault("DateType", "date")
		bUseAllowedDates = Props.GetDefault("UseAllowedDates", False)
		bShrink = Props.GetDefault("Shrink", False)
 bShrink = BANanoShared.parseBool(bShrink)
 	End If 
	' 
	bToday = BANanoShared.parseBool(bToday)
bHidden = BANanoShared.parseBool(bHidden)
bDark = BANanoShared.parseBool(bDark)
bDisabled = BANanoShared.parseBool(bDisabled)
bFlat = BANanoShared.parseBool(bFlat)
bLandscape = BANanoShared.parseBool(bLandscape)
bMultiple = BANanoShared.parseBool(bMultiple)
bNoTitle = BANanoShared.parseBool(bNoTitle)
bRange = BANanoShared.parseBool(bRange)
bReactive = BANanoShared.parseBool(bReactive)
bReadonly = BANanoShared.parseBool(bReadonly)
bShowAdjacentMonths = BANanoShared.parseBool(bShowAdjacentMonths)
bShowCurrent = BANanoShared.parseBool(bShowCurrent)
bShowWeek = BANanoShared.parseBool(bShowWeek)
bFullWidth = BANanoShared.parseBool(bFullWidth)
bUseAllowedDates = BANanoShared.parseBool(bUseAllowedDates)

	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-date-picker ref="${mName}" id="${mName}"></v-date-picker>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-date-picker" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)
	VElement.AddAttr("active-picker", sActivePicker)

	VElement.AddClass(sElevation)

	VElement.AddAttr(":events", sEvents)
	VElement.AddAttr("event-color", "green")

	VElement.SetData(sEvents, VElement.NewMap)
	
	'
	If bUseAllowedDates Then
		VElement.AddAttr(":allowed-dates", sAllowedDates)
		VElement.SetData(sAllowedDates, xAllowedDates)
	End If

	VElement.AddAttr("first-day-of-week", sFirstDayOfWeek)
	VElement.AddAttr(":flat", bFlat)
	VElement.AddAttr("header-color", VElement.BuildColor(sHeaderColor, sHeaderColorIntensity))
	
	VElement.AddAttr(":landscape", bLandscape)
	VElement.AddAttr(":full-width", bFullWidth)
	VElement.AddAttr("type", sDateType)
	
	VElement.AddAttr(":locale", xLocale)
	VElement.SetData(xLocale, sLocale)

	VElement.AddAttr(":locale-first-day-of-year", xLocaleFirstDayOfYear)
	VElement.SetData(xLocaleFirstDayOfYear, sLocaleFirstDayOfYear)

	VElement.AddAttr(":max", xMaxValue)
	VElement.SetData(xMaxValue, sMaxValue)

	VElement.AddAttr(":min", xMinValue)
	VElement.SetData(xMinValue, sMinValue )

	VElement.AddAttr(":multiple", bMultiple)
	VElement.AddAttr("next-icon", sNextIcon)
	VElement.AddAttr("next-month-aria-label", sNextMonthAriaLabel)
	VElement.AddAttr("next-year-aria-label", sNextYearAriaLabel)
	VElement.AddAttr(":no-title", bNoTitle)
	
	VElement.AddAttr("prev-icon", sPrevIcon)
	VElement.AddAttr("prev-month-aria-label", sPrevMonthAriaLabel)
	VElement.AddAttr("prev-year-aria-label", sPrevYearAriaLabel)
	VElement.AddAttr(":range", bRange)
	
	VElement.AddAttr(":reactive", bReactive)
	VElement.AddAttr(":readonly", xReadOnly)
	'VElement.AddAttr("event-color", "color")
	
	VElement.SetData(xReadOnly, bReadonly)

	VElement.AddAttr("scrollable", sScrollable)
	VElement.AddAttr("selected-items-text", sSelectedItemsText)
	VElement.AddAttr(":show-adjacent-months", bShowAdjacentMonths)
	VElement.AddAttr(":show-current", bShowCurrent)
	VElement.AddAttr(":show-week", bShowWeek)
	
	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-model", sVModel)
	If bToday Then
		Dim sToday As String = BANanoShared.DateNow
		VElement.SetData(sVModel, sToday)
	Else
		VElement.SetData(sVModel, sValue)
	End If

	VElement.AddAttr("v-on", sVOn)
	If bHidden Then
		VElement.AddAttr("v-show", sVShow)
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddAttr("width", sWidth)
	VElement.AddAttr("year-icon", sYearIcon)
	'
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


Sub AddClass(s As String) As VDatePicker 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VDatePicker 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VDatePicker 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VDatePicker 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VDatePicker 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
	C.SetData(sDisabled, vDisabled)
End Sub

Sub ClearAllowedDates(C As VueComponent)
	xAllowedDates.Initialize 
	C.SetData(sAllowedDates, xAllowedDates)
End Sub

Sub AddAllowedDate(dt As String)
	xAllowedDates.Add(dt)
End Sub

Sub RefreshAllowedDates(C As VueComponent)
	C.SetData(sAllowedDates, xAllowedDates)
End Sub

'clear events
Sub Clear(C As VueComponent)
	xEvents.clear
	C.SetData(sEvents, C.NewList)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VDatePicker 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabledOnApp(C As VuetifyApp, vDisabled As Object)
	C.SetData(sDisabled, vDisabled)
End Sub

Sub ClearAllowedDatesOnApp(C As VuetifyApp)
	xAllowedDates.Initialize 
	C.SetData(sAllowedDates, xAllowedDates)
End Sub

Sub RefreshAllowedDatesOnApp(C As VuetifyApp)
	C.SetData(sAllowedDates, xAllowedDates)
End Sub

'clear events
Sub ClearOnApp(C As VuetifyApp)
	xEvents.clear
	C.SetData(sEvents, C.NewList)
End Sub

'add an event
Sub AddItem(eDate As String, eColor As String)
	xEvents.put(eDate, eColor)
End Sub

'Update Events
Sub Refresh(C As VueComponent)
	C.SetData(sEvents, xEvents)
End Sub

'Update Events
Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sEvents, xEvents)
End Sub

'Update MaxValue
Sub UpdateMax(C As VueComponent, vMaxValue As Object)
C.SetData(xMaxValue, vMaxValue)
End Sub

'Update MinValue
Sub UpdateMin(C As VueComponent, vMinValue As Object)
C.SetData(xMinValue, vMinValue)
End Sub

'Update Range
Sub UpdateRange(C As VueComponent, vRange As Object)
C.SetData(bRange, vRange)
End Sub

'Update Readonly
Sub UpdateReadonly(C As VueComponent, vReadonly As Object)
C.SetData(xReadOnly, vReadonly)
End Sub

'Update VModel
Sub SetValue(C As VueComponent, vVModel As Object)	
	C.SetData(sVModel, vVModel)
End Sub

Sub GetValue(C As VueComponent) As Object
	Dim res As Object = C.GetData(sVModel)
	Return res
End Sub

'Update Value
Sub UpdateValue(C As VueComponent, vValue As Object)
C.SetData(sValue, vValue)
End Sub

'Update MaxValue
Sub UpdateMaxOnApp(C As VuetifyApp, vMaxValue As Object)
C.SetData(xMaxValue, vMaxValue)
End Sub

'Update MinValue
Sub UpdateMinOnApp(C As VuetifyApp, vMinValue As Object)
C.SetData(xMinValue, vMinValue)
End Sub

'Update Range
Sub UpdateRangeOnApp(C As VuetifyApp, vRange As Object)
C.SetData(bRange, vRange)
End Sub

'Update Readonly
Sub UpdateReadonlyOnApp(C As VuetifyApp, vReadonly As Object)
C.SetData(xReadOnly, vReadonly)
End Sub

'Update VModel
Sub SetValueOnApp(C As VuetifyApp, vVModel As Object)	
	C.SetData(sVModel, vVModel)
End Sub

Sub GetValueOnApp(C As VuetifyApp) As Object
	Dim res As Object = C.GetData(sVModel)
	Return res
End Sub

'Update Value
Sub UpdateValueOnApp(C As VuetifyApp, vValue As Object)
C.SetData(sValue, vValue)
End Sub

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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub

Sub Enable
	UpdateDisabled(VC, False)
End Sub

Sub Disable
	UpdateDisabled(VC, True)
End Sub