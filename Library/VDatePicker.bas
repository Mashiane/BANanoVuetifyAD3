B4J=true
Group=Default Group\Forms
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
#Event: Allowed (val As Object)
#Event: PickerDate (val As Object)
#Event: DblClickDate (val As Object)

#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: dp1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue: False, Description: FullWidth
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
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
	Private sPickerDate As String
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
	Private xEvents As List
	Private bHidden As Boolean
	Private bToday As Boolean
	Private sAllowedDates As String
	Private sPickerDate As String
	Private bFullWidth As Boolean
	Private sDateType As String
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
	sAllowedDates = $"${mName}_allowed"$
	sPickerDate = $"${mName}_pickerdate"$
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
		sEvents = Props.GetDefault("Events", "")
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
		sPickerDate = Props.GetDefault("PickerDate", "")
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
		sVShow = Props.GetDefault("VShow", "")
		sValue = Props.GetDefault("Value", "")
		sWidth = Props.GetDefault("Width", "")
		sYearIcon = Props.GetDefault("YearIcon", "")
		bFullWidth = Props.GetDefault("FullWidth", False)
		sDateType = Props.GetDefault("DateType", "date")
 	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-date-picker id="${mName}"></v-date-picker>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-date-picker" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("active-picker", sActivePicker)
	VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)

	VElement.AddAttr("elevation", sElevation)

	VElement.AddAttr(":events", sEvents)
	VElement.SetData(sEvents, VElement.NewList)

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
	VElement.AddAttr("picker-date", sPickerDate)

	VElement.AddAttr("prev-icon", sPrevIcon)
	VElement.AddAttr("prev-month-aria-label", sPrevMonthAriaLabel)
	VElement.AddAttr("prev-year-aria-label", sPrevYearAriaLabel)
	VElement.AddAttr(":range", bRange)
	
	VElement.AddAttr(":reactive", bReactive)
	VElement.AddAttr(":readonly", xReadOnly)
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
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))

	VElement.AddAttr("width", sWidth)
	VElement.AddAttr("year-icon", sYearIcon)
	'
	setAllowedDates(sAllowedDates)
	'watch the picker date
	setPickerDate(sPickerDate)
	'
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VDatePicker 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

'Update Disabled
Sub UpdateDisabled(VC As VueComponent, vDisabled As Object)
	VC.SetData(sDisabled, vDisabled)
End Sub

'clear events
Sub Clear(VC As VueComponent)
	xEvents.clear
	VC.SetData(sEvents, VC.NewList)
End Sub

'Update Events
Sub Refresh(VC As VueComponent)
	VC.SetData(sEvents, xEvents)
End Sub

'Update Locale
Sub UpdateLocale(VC As VueComponent, vLocale As Object)
VC.SetData(xLocale, vLocale)
End Sub

'Update LocaleFirstDayOfYear
Sub UpdateLocaleFirstDayOfYear(VC As VueComponent, vLocaleFirstDayOfYear As Object)
VC.SetData(xLocaleFirstDayOfYear, vLocaleFirstDayOfYear)
End Sub

'Update MaxValue
Sub UpdateMax(VC As VueComponent, vMaxValue As Object)
VC.SetData(xMaxValue, vMaxValue)
End Sub

'Update MinValue
Sub UpdateMin(VC As VueComponent, vMinValue As Object)
VC.SetData(xMinValue, vMinValue)
End Sub

'Update Range
Sub UpdateRange(VC As VueComponent, vRange As Object)
VC.SetData(bRange, vRange)
End Sub

'Update Allowed Date
private Sub setAllowedDates(MethodName As String)
	MethodName = MethodName.tolowercase
	Dim valx As Object
	If SubExists(mCallBack, MethodName) Then
		VElement.AddAttr(":allowed-dates", MethodName)
		VElement.SetMethod(mCallBack, MethodName, Array(valx))
	End If
End Sub

private Sub setPickerDate(MethodName As String)
	MethodName = MethodName.ToLowerCase
	Dim valx As Object
	If SubExists(mCallBack, MethodName) Then
		VElement.AddAttr(":picker-date.sync", MethodName)
		VElement.SetData(MethodName, Null)
		VElement.SetWatch(MethodName, True, True, MethodName, Array(valx))
	End If
End Sub

'Update Reactive
Sub UpdateReactive(VC As VueComponent, vReactive As Object)
VC.SetData(bReactive, vReactive)
End Sub

'Update Readonly
Sub UpdateReadonly(VC As VueComponent, vReadonly As Object)
VC.SetData(xReadOnly, vReadonly)
End Sub

'Update VModel
Sub SetValue(VC As VueComponent, vVModel As Object)	
	VC.SetData(sVModel, vVModel)
End Sub

Sub GetValue(VC As VueComponent) As Object
	Dim res As Object = VC.GetData(sVModel)
	Return res
End Sub

'Update Value
Sub UpdateValue(VC As VueComponent, vValue As Object)
VC.SetData(sValue, vValue)
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
