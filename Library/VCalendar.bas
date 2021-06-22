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
#Event: Change (item As Map)
#Event: ClickDate (item As Map)
#Event: ClickDay (item As Map)
#Event: ClickDayCategory (item As Map)
#Event: ClickEvent (item As Map)
#Event: ClickInterval (item As Map)
#Event: ClickMore (item As Map)
#Event: ClickTime (item As Map)
#Event: ClickTimeCategory (item As Map)
#Event: ContextMenuDate (item As Map)
#Event: ContextMenuDay (item As Map)
#Event: ContextMenuDayCategory (item As Map)
#Event: ContextMenuEvent (item As Map)
#Event: ContextMenuInterval (item As Map)
#Event: ContextMenuTime (item As Map)
#Event: ContextMenuTimeCategory (item As Map)
#Event: Moved (item As Map)


#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: calendar1, Description: VModel
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: CalendarType, DisplayName: CalendarType, FieldType: String, DefaultValue: month, Description: Type, List: 4day|category|custom-daily|custom-weekly|day|month|week
#DesignerProperty: Key: EventOverlapMode, DisplayName: EventOverlapMode, FieldType: String, DefaultValue: stack, Description: EventOverlapMode, List: column|stack

#DesignerProperty: Key: CategoryDays, DisplayName: CategoryDays, FieldType: String, DefaultValue: , Description: CategoryDays
#DesignerProperty: Key: CategoryForValid, DisplayName: CategoryForValid, FieldType: String, DefaultValue: , Description: CategoryForValid
#DesignerProperty: Key: CategoryHideDynamic, DisplayName: CategoryHideDynamic, FieldType: Boolean, DefaultValue: False, Description: CategoryHideDynamic
#DesignerProperty: Key: CategoryShowAll, DisplayName: CategoryShowAll, FieldType: Boolean, DefaultValue: False, Description: CategoryShowAll
#DesignerProperty: Key: CategoryText, DisplayName: CategoryText, FieldType: String, DefaultValue: , Description: CategoryText
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: EndValue, DisplayName: EndValue, FieldType: String, DefaultValue: , Description: EndValue

#DesignerProperty: Key: EventCategory, DisplayName: EventCategory, FieldType: String, DefaultValue: category, Description: EventCategory
#DesignerProperty: Key: EventColor, DisplayName: EventColor, FieldType: String, DefaultValue: color, Description: EventColor
#DesignerProperty: Key: EventStart, DisplayName: EventStart, FieldType: String, DefaultValue: start, Description: EventStart
#DesignerProperty: Key: EventEnd, DisplayName: EventEnd, FieldType: String, DefaultValue: end, Description: EventEnd
#DesignerProperty: Key: EventName, DisplayName: EventName, FieldType: String, DefaultValue: name, Description: EventName
#DesignerProperty: Key: EventTimed, DisplayName: EventTimed, FieldType: String, DefaultValue: timed, Description: EventTimed

#DesignerProperty: Key: EventHeight, DisplayName: EventHeight, FieldType: String, DefaultValue: , Description: EventHeight
#DesignerProperty: Key: EventMarginBottom, DisplayName: EventMarginBottom, FieldType: String, DefaultValue: , Description: EventMarginBottom
#DesignerProperty: Key: EventMore, DisplayName: EventMore, FieldType: Boolean, DefaultValue: False, Description: EventMore
#DesignerProperty: Key: EventMoreText, DisplayName: EventMoreText, FieldType: String, DefaultValue: , Description: EventMoreText
#DesignerProperty: Key: EventOverlapThreshold, DisplayName: EventOverlapThreshold, FieldType: String, DefaultValue: , Description: EventOverlapThreshold
#DesignerProperty: Key: EventRipple, DisplayName: EventRipple, FieldType: Boolean, DefaultValue: False, Description: EventRipple
#DesignerProperty: Key: EventTextColor, DisplayName: EventTextColor, FieldType: String, DefaultValue: white, Description: EventTextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: EventTextColorIntensity, DisplayName: Eventtextcolorintensity, FieldType: String, DefaultValue: , Description: Eventtextcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: FirstInterval, DisplayName: FirstInterval, FieldType: String, DefaultValue: , Description: FirstInterval
#DesignerProperty: Key: FirstTime, DisplayName: FirstTime, FieldType: String, DefaultValue: , Description: FirstTime
#DesignerProperty: Key: HideHeader, DisplayName: HideHeader, FieldType: Boolean, DefaultValue: False, Description: HideHeader
#DesignerProperty: Key: IntervalCount, DisplayName: IntervalCount, FieldType: String, DefaultValue: , Description: IntervalCount
#DesignerProperty: Key: IntervalHeight, DisplayName: IntervalHeight, FieldType: String, DefaultValue: , Description: IntervalHeight
#DesignerProperty: Key: IntervalMinutes, DisplayName: IntervalMinutes, FieldType: String, DefaultValue: , Description: IntervalMinutes
#DesignerProperty: Key: IntervalWidth, DisplayName: IntervalWidth, FieldType: String, DefaultValue: , Description: IntervalWidth
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: False, Description: Light
#DesignerProperty: Key: Locale, DisplayName: Locale, FieldType: String, DefaultValue: , Description: Locale
#DesignerProperty: Key: LocaleFirstDayOfYear, DisplayName: LocaleFirstDayOfYear, FieldType: String, DefaultValue: , Description: LocaleFirstDayOfYear
#DesignerProperty: Key: MaxDays, DisplayName: MaxDays, FieldType: String, DefaultValue: , Description: MaxDays
#DesignerProperty: Key: MinWeeks, DisplayName: MinWeeks, FieldType: String, DefaultValue: , Description: MinWeeks
#DesignerProperty: Key: Now, DisplayName: Now, FieldType: String, DefaultValue: , Description: Now
#DesignerProperty: Key: ShortIntervals, DisplayName: ShortIntervals, FieldType: Boolean, DefaultValue: False, Description: ShortIntervals
#DesignerProperty: Key: ShortMonths, DisplayName: ShortMonths, FieldType: Boolean, DefaultValue: False, Description: ShortMonths
#DesignerProperty: Key: ShortWeekdays, DisplayName: ShortWeekdays, FieldType: Boolean, DefaultValue: False, Description: ShortWeekdays
#DesignerProperty: Key: ShowMonthOnFirst, DisplayName: ShowMonthOnFirst, FieldType: Boolean, DefaultValue: False, Description: ShowMonthOnFirst
#DesignerProperty: Key: ShowWeek, DisplayName: ShowWeek, FieldType: Boolean, DefaultValue: False, Description: ShowWeek
#DesignerProperty: Key: Start, DisplayName: Start, FieldType: String, DefaultValue: , Description: Start
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
	Private sCategories As String
Private sCategoryDays As String
Private sCategoryForValid As String
Private bCategoryHideDynamic As Boolean
Private bCategoryShowAll As Boolean
Private sCategoryText As String
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private sEndValue As String
Private sEventCategory As String
Private sEventColor As String
Private sEventColorIntensity As String
Private sEventEnd As String
Private sEventHeight As String
Private sEventMarginBottom As String
Private bEventMore As Boolean
Private sEventMoreText As String
Private sEventName As String
Private sEventOverlapMode As String
Private sEventOverlapThreshold As String
Private bEventRipple As Boolean
Private sEventStart As String
Private sEventTextColor As String
Private sEventTextColorIntensity As String
Private sEventTimed As String
Private sEvents As String
Private sFirstInterval As String
Private sFirstTime As String
Private bHidden As Boolean
Private bHideHeader As Boolean
Private sIntervalCount As String
Private sIntervalHeight As String
Private sIntervalMinutes As String
Private sIntervalWidth As String
Private bLight As Boolean
Private sLocale As String
Private sLocaleFirstDayOfYear As String
Private sMaxDays As String
Private sMinWeeks As String
Private sNow As String
Private bShortIntervals As Boolean
Private bShortMonths As Boolean
Private bShortWeekdays As Boolean
Private bShowMonthOnFirst As Boolean
Private bShowWeek As Boolean
Private sStart As String
Private sType As String
Private sVBind As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sVShow As String
Private sValue As String
Private sWeekdays As String
Private xType As String 
Private mEvents As List
Private mCategories As List
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
	xType = $"${mName}type"$
	sCategories = $"${mName}categories"$
	sEvents = $"${mName}events"$
	sWeekdays = $"${mName}weekdays"$
	mEvents.Initialize 
	mCategories.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
sCategoryDays = Props.GetDefault("CategoryDays", "")
sCategoryForValid = Props.GetDefault("CategoryForValid", "")
bCategoryHideDynamic = Props.GetDefault("CategoryHideDynamic", False)
bCategoryShowAll = Props.GetDefault("CategoryShowAll", False)
sCategoryText = Props.GetDefault("CategoryText", "")
sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDark = Props.GetDefault("Dark", False)
sEndValue = Props.GetDefault("EndValue", "")
sEventCategory = Props.GetDefault("EventCategory", "category")
sEventColor = Props.GetDefault("EventColor", "")
sEventColorIntensity = Props.GetDefault("EventColorIntensity", "")
sEventEnd = Props.GetDefault("EventEnd", "end")
sEventHeight = Props.GetDefault("EventHeight", "")
sEventMarginBottom = Props.GetDefault("EventMarginBottom", "")
bEventMore = Props.GetDefault("EventMore", False)
sEventMoreText = Props.GetDefault("EventMoreText", "")
sEventName = Props.GetDefault("EventName", "name")
sEventOverlapMode = Props.GetDefault("EventOverlapMode", "")
sEventOverlapThreshold = Props.GetDefault("EventOverlapThreshold", "")
bEventRipple = Props.GetDefault("EventRipple", False)
sEventStart = Props.GetDefault("EventStart", "start")
sEventTextColor = Props.GetDefault("EventTextColor", "")
sEventTextColorIntensity = Props.GetDefault("EventTextColorIntensity", "")
sEventTimed = Props.GetDefault("EventTimed", "")
sFirstInterval = Props.GetDefault("FirstInterval", "")
sFirstTime = Props.GetDefault("FirstTime", "")
bHidden = Props.GetDefault("Hidden", False)
bHideHeader = Props.GetDefault("HideHeader", False)
sIntervalCount = Props.GetDefault("IntervalCount", "")
sIntervalHeight = Props.GetDefault("IntervalHeight", "")
sIntervalMinutes = Props.GetDefault("IntervalMinutes", "")
sIntervalWidth = Props.GetDefault("IntervalWidth", "")
bLight = Props.GetDefault("Light", False)
sLocale = Props.GetDefault("Locale", "")
sLocaleFirstDayOfYear = Props.GetDefault("LocaleFirstDayOfYear", "")
sMaxDays = Props.GetDefault("MaxDays", "")
sMinWeeks = Props.GetDefault("MinWeeks", "")
sNow = Props.GetDefault("Now", "")
bShortIntervals = Props.GetDefault("ShortIntervals", False)
bShortMonths = Props.GetDefault("ShortMonths", False)
bShortWeekdays = Props.GetDefault("ShortWeekdays", False)
bShowMonthOnFirst = Props.GetDefault("ShowMonthOnFirst", False)
bShowWeek = Props.GetDefault("ShowWeek", False)
sStart = Props.GetDefault("Start", "")
sType = Props.GetDefault("CalendarType", "month")
sVBind = Props.GetDefault("VBind", "")
sVIf = Props.GetDefault("VIf", "")
sVModel = Props.GetDefault("VModel", "")
sVOn = Props.GetDefault("VOn", "")
sVShow = Props.GetDefault("VShow", "")
sValue = Props.GetDefault("Value", "")
bHidden = Props.GetDefault("Hidden", False)
 
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-calendar ref="${mName}" id="${mName}"></v-calendar>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-calendar" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":categories", sCategories)
VElement.SetData(sCategories, VElement.newlist)

VElement.AddAttr("category-days", sCategoryDays)
VElement.AddAttr("category-for-valid", sCategoryForValid)
VElement.AddAttr(":category-hide-dynamic", bCategoryHideDynamic)
VElement.AddAttr(":category-show-all", bCategoryShowAll)
VElement.AddAttr("category-text", sCategoryText)
VElement.AddAttr("color", VElement.BuildColor(sColor, sColorIntensity))
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("end-value", sEndValue)
VElement.AddAttr("event-category", sEventCategory)
VElement.AddAttr("event-color", VElement.BuildColor(sEventColor, sEventColorIntensity))
VElement.AddAttr("event-end", sEventEnd)
VElement.AddAttr("event-height", sEventHeight)
VElement.AddAttr("event-margin-bottom", sEventMarginBottom)
VElement.AddAttr(":event-more", bEventMore)
VElement.AddAttr("event-more-text", sEventMoreText)
VElement.AddAttr("event-name", sEventName)
VElement.AddAttr("event-overlap-mode", sEventOverlapMode)
VElement.AddAttr("event-overlap-threshold", sEventOverlapThreshold)
VElement.AddAttr(":event-ripple", bEventRipple)
VElement.AddAttr("event-start", sEventStart)
VElement.AddAttr("event-text-color", VElement.BuildColor(sEventTextColor, sEventTextColorIntensity))
VElement.AddAttr("event-timed", sEventTimed)
VElement.AddAttr(":events", sEvents)
VElement.SetData(sEvents, VElement.newlist)

VElement.AddAttr("first-interval", sFirstInterval)
VElement.AddAttr("first-time", sFirstTime)
VElement.AddAttr(":hide-header", bHideHeader)
VElement.AddAttr("interval-count", sIntervalCount)
VElement.AddAttr("interval-height", sIntervalHeight)
VElement.AddAttr("interval-minutes", sIntervalMinutes)
VElement.AddAttr("interval-width", sIntervalWidth)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("locale", sLocale)
VElement.AddAttr("locale-first-day-of-year", sLocaleFirstDayOfYear)
VElement.AddAttr("max-days", sMaxDays)
VElement.AddAttr("min-weeks", sMinWeeks)
VElement.AddAttr("now", sNow)
VElement.AddAttr(":short-intervals", bShortIntervals)
VElement.AddAttr(":short-months", bShortMonths)
VElement.AddAttr(":short-weekdays", bShortWeekdays)
VElement.AddAttr(":show-month-on-first", bShowMonthOnFirst)
VElement.AddAttr(":show-week", bShowWeek)
VElement.AddAttr("start", sStart)
VElement.AddAttr(":type", xType)
VElement.SetData(xType, sType)

VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("v-show", sVShow)
VElement.setdata(sVShow, Not(bHidden))
VElement.AddAttr(":weekdays", sWeekdays)
Dim wd As List
wd.Initialize 
wd.Add(0)
wd.Add(1)
wd.Add(2)
wd.Add(3)
wd.Add(4)
wd.Add(5)
wd.Add(6)
VElement.SetData(sWeekdays, wd)
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

Sub AddClass(s As String) As VCalendar 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VCalendar 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VCalendar 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VCalendar 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VCalendar 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'set the date of the calendar
Sub SetDate(VC As VueComponent, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub

'set the date of the calendar
Sub SetToday(VC As VueComponent) 
	VC.SetData(sVModel, "") 
End Sub

Sub GetDate(VC As VueComponent) As Object 
	Dim res As Object = VC.GetData(sVModel) 
	Return res 
End Sub

Sub UpdateCategories(VC As VueComponent, vCategories As List)
	If BANano.IsNull(vCategories) Or BANano.IsUndefined(vCategories) Then Return
	VC.SetData(sCategories, vCategories)
End Sub

Sub UpdateEvents(VC As VueComponent, vEvents As List)
	If BANano.IsNull(vEvents) Or BANano.IsUndefined(vEvents) Then Return
	VC.SetData(sEvents, vEvents)
End Sub

'Update Type
Sub UpdateType(VC As VueComponent, vType As Object)
	VC.SetData(sType, vType)
End Sub

'Update Week Days
Sub UpdateWeekDays(VC As VueComponent, vWeekDays As List)
	VC.SetData(sWeekdays, vWeekDays)
End Sub

Sub Clear(VC As VueComponent)
	VC.SetData(sEvents, VC.NewList)
End Sub


Sub Refresh(VC As VueComponent)
	VC.SetData(sEvents, mEvents)
End Sub

Sub AddItem(eID As String, eCategory As String, eName As String, eStart As String, eEnd As String, eColor As String, eAllDay As Boolean)
	Dim ne As Map = CreateMap()
	ne.Put("id", eID)
	ne.Put("name", eName)
	ne.Put("start", eStart)
	ne.Put("end", eEnd)
	ne.Put("color", eColor)
	ne.Put("timed", eAllDay)
	ne.Put("category", eCategory)
	mEvents.Add(ne)
End Sub

Sub checkChange(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("checkChange", Null)
End Sub

Sub prevDate(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("prev", Null)
End Sub

Sub nextDate(VC As VueComponent)
	Dim refs As BANanoObject = VC.refs
	refs.GetField(mName).runmethod("next", Null)
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