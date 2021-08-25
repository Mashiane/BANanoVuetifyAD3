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
#Event: Add (e As BANanoEvent)
#Event: Today (e As BANanoEvent)
#Event: Previous (e As BANanoEvent)
#Event: Next (e As BANanoEvent)
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

#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: Boolean, DefaultValue: False, Description: Loading
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: calendar1, Description: VModel
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 600, Description: Height
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
#DesignerProperty: Key: ShortIntervals, DisplayName: ShortIntervals, FieldType: Boolean, DefaultValue: False, Description: ShortIntervals
#DesignerProperty: Key: ShortMonths, DisplayName: ShortMonths, FieldType: Boolean, DefaultValue: False, Description: ShortMonths
#DesignerProperty: Key: ShortWeekdays, DisplayName: ShortWeekdays, FieldType: Boolean, DefaultValue: False, Description: ShortWeekdays
#DesignerProperty: Key: ShowMonthOnFirst, DisplayName: ShowMonthOnFirst, FieldType: Boolean, DefaultValue: False, Description: ShowMonthOnFirst
#DesignerProperty: Key: ShowWeek, DisplayName: ShowWeek, FieldType: Boolean, DefaultValue: False, Description: ShowWeek
#DesignerProperty: Key: Start, DisplayName: Start, FieldType: String, DefaultValue: , Description: Start
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
Private sHeight As String
Private sloading As String
Private bLoading As Boolean
Private sEventColor As String
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
	xType = $"${mName}type"$
	sCategories = $"${mName}categories"$
	sEvents = $"${mName}events"$
	sWeekdays = $"${mName}weekdays"$
	mEvents.Initialize 
	mCategories.Initialize
	sVShow = $"${mName}show"$ 
	sloading = $"${mName}loading"$
	sNow = $"${mName}now"$
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
bCategoryHideDynamic = BANanoShared.parseBool(bCategoryHideDynamic)

bCategoryShowAll = Props.GetDefault("CategoryShowAll", False)
bCategoryShowAll = BANanoShared.parseBool(bCategoryShowAll)

sCategoryText = Props.GetDefault("CategoryText", "")
sColor = Props.GetDefault("Color", "")
sColorIntensity = Props.GetDefault("ColorIntensity", "")
bDark = Props.GetDefault("Dark", False)
bDark = BANanoShared.parseBool(bDark)

sEndValue = Props.GetDefault("EndValue", "")
sEventCategory = Props.GetDefault("EventCategory", "category")
sEventColor = Props.GetDefault("EventColor", "")
sEventEnd = Props.GetDefault("EventEnd", "end")
sEventHeight = Props.GetDefault("EventHeight", "")
sEventMarginBottom = Props.GetDefault("EventMarginBottom", "")
bEventMore = Props.GetDefault("EventMore", False)
bEventMore = BANanoShared.parseBool(bEventMore)

sEventMoreText = Props.GetDefault("EventMoreText", "")
sEventName = Props.GetDefault("EventName", "name")
sEventOverlapMode = Props.GetDefault("EventOverlapMode", "")
sEventOverlapThreshold = Props.GetDefault("EventOverlapThreshold", "")
bEventRipple = Props.GetDefault("EventRipple", False)
bEventRipple = BANanoShared.parseBool(bEventRipple)

sEventStart = Props.GetDefault("EventStart", "start")
sEventTextColor = Props.GetDefault("EventTextColor", "")
sEventTextColorIntensity = Props.GetDefault("EventTextColorIntensity", "")
sEventTimed = Props.GetDefault("EventTimed", "")
sFirstInterval = Props.GetDefault("FirstInterval", "")
sFirstTime = Props.GetDefault("FirstTime", "")
bHidden = Props.GetDefault("Hidden", False)
bHidden = BANanoShared.parseBool(bHidden)

bHideHeader = Props.GetDefault("HideHeader", False)
bHideHeader = BANanoShared.parseBool(bHideHeader)

sIntervalCount = Props.GetDefault("IntervalCount", "")
sIntervalHeight = Props.GetDefault("IntervalHeight", "")
sIntervalMinutes = Props.GetDefault("IntervalMinutes", "")
sIntervalWidth = Props.GetDefault("IntervalWidth", "")
bLight = Props.GetDefault("Light", False)
bLight = BANanoShared.parseBool(bLight)

sLocale = Props.GetDefault("Locale", "")
sLocaleFirstDayOfYear = Props.GetDefault("LocaleFirstDayOfYear", "")
sMaxDays = Props.GetDefault("MaxDays", "")
sMinWeeks = Props.GetDefault("MinWeeks", "")
bShortIntervals = Props.GetDefault("ShortIntervals", False)
bShortIntervals = BANanoShared.parseBool(bShortIntervals)

bShortMonths = Props.GetDefault("ShortMonths", False)
bShortMonths = BANanoShared.parseBool(bShortMonths)

bShortWeekdays = Props.GetDefault("ShortWeekdays", False)
bShortWeekdays = BANanoShared.parseBool(bShortWeekdays)

bShowMonthOnFirst = Props.GetDefault("ShowMonthOnFirst", False)
bShowMonthOnFirst = BANanoShared.parseBool(bShowMonthOnFirst)

bShowWeek = Props.GetDefault("ShowWeek", False)
bShowWeek = BANanoShared.parseBool(bShowWeek)

sStart = Props.GetDefault("Start", "")
sType = Props.GetDefault("CalendarType", "month")
sVBind = Props.GetDefault("VBind", "")
sVIf = Props.GetDefault("VIf", "")
sVModel = Props.GetDefault("VModel", "")
sVOn = Props.GetDefault("VOn", "")
sValue = Props.GetDefault("Value", "")
sHeight = Props.GetDefault("Height", "600")
bLoading = Props.GetDefault("Loading", False)
bLoading = BANanoShared.parseBool(bLoading)

	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else
		Dim stemplate As String = $"<v-card id="${mName}card">
	<v-card-title id="${mName}cardtitle">
	<v-btn id="${mName}today" outlined class="mr-4" color="grey darken-2">Today</v-btn>
	<v-btn id="${mName}previous" fab text small color="grey darken-2"><v-icon small>mdi-chevron-left</v-icon></v-btn>
    <v-btn id="${mName}next" fab text small class="mr-4" color="grey darken-2"><v-icon small>mdi-chevron-right</v-icon></v-btn>
	<v-toolbar-title id="${mName}toolbartitle" v-if="~refs.${mName}">{{ ~refs.${mName}.title }}</v-toolbar-title>
    <v-spacer></v-spacer>
	<v-menu id="${mName}menu" bottom right>
    	<template v-slot:activator="{ on, attrs }">
    		<v-btn outlined color="grey darken-2" v-bind="attrs" v-on="on"><span>{{ typetolabel[${mName}type] }}</span><v-icon right>mdi-menu-down</v-icon></v-btn>
    	</template>
    	<v-list>
      		<v-list-item @click="${mName}type = 'day'">
  	    		<v-list-item-title>Day</v-list-item-title>
      		</v-list-item>
      		<v-list-item @click="${mName}type = 'week'">
        		<v-list-item-title>Week</v-list-item-title>
      		</v-list-item>
      		<v-list-item @click="${mName}type = 'month'">
        		<v-list-item-title>Month</v-list-item-title>
      		</v-list-item>
    	</v-list>
  	</v-menu>
	<v-btn id="${mName}add" fab text small class="mx-2" color="grey darken-2"><v-icon small>mdi-plus</v-icon></v-btn>
	</v-card-title>
	<v-card-text id="${mName}cardtext">
	</v-card-text>
	<v-divider></v-divider>
	<v-calendar id="${mName}" ref="${mName}" full-width offset-x></v-calendar>
	</v-card>"$	
	stemplate = stemplate.Replace("~","$") 
		mElement = mTarget.Append(stemplate).Get("#" & mName) 
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
VElement.AddAttr("event-color", sEventColor)
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
VElement.AddAttr(":now", sNow)
Dim mNow As String = BANanoShared.DateNow
VElement.SetData(sNow, mNow)
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
If sValue = "" Then
	sValue = mNow
End If
VElement.SetData(sVModel, sValue)
VElement.AddAttr("v-on", sVOn)
If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.setdata(sVShow, Not(bHidden))
End If
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
VElement.GetCard.Bind("loading", sloading)
VElement.GetCard.AddAttr("height",sHeight)
VElement.SetData(sloading, bLoading)
'
'VElement.SetMethod(Me, "GetEventColor", Null)
'
Dim typetolabel As Map = CreateMap()
typetolabel.Put("month", "Month")
typetolabel.Put("week", "Week")
typetolabel.Put("day", "Day")
VElement.SetData("typetolabel", typetolabel)

Dim btntoday As VueElement = VElement.GetVueElement($"${mName}today"$)
btntoday.SetOnEventOwn(mCallBack, $"${mName}_today"$, "click", Null)
btntoday.BindAllEvents
'
Dim btnprev As VueElement = VElement.GetVueElement($"${mName}previous"$)
btnprev.SetOnEventOwn(mCallBack, $"${mName}_previous"$, "click", Null)
btnprev.BindAllEvents
'
Dim btnnext As VueElement = VElement.GetVueElement($"${mName}next"$)
btnnext.SetOnEventOwn(mCallBack, $"${mName}_next"$, "click", Null)
btnnext.BindAllEvents
'
Dim btnAdd As VueElement = VElement.GetVueElement($"${mName}add"$)
btnAdd.SetOnEventOwn(mCallBack, $"${mName}_add"$, "click", Null)
btnAdd.BindAllEvents

VElement.BindVueElement(btntoday)
VElement.BindVueElement(btnprev)
VElement.BindVueElement(btnnext)
VElement.BindVueElement(btnAdd)
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

Sub UpdateVisible(C As VueComponent, b As Boolean) As VCalendar 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateLoading(C As VueComponent, b As Boolean) As VCalendar 
	C.SetData(sloading, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VCalendar 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateLoadingOnApp(C As VuetifyApp, b As Boolean) As VCalendar 
	C.SetData(sloading, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'show selected date
Sub OpenDate(C As VueComponent, item As Map)
	Dim tDate As String
	If item.ContainsKey("date") Then
		tDate = item.Get("date")
	Else
		tDate = item   'ignore
	End If	
	C.SetData(sVModel, tDate)
	C.SetData(xType, "day")
End Sub

'set the date of the calendar
Sub SetDate(C As VueComponent, vVModel As Object) 
	C.SetData(sVModel, vVModel)
End Sub

'set the date of the calendar
Sub SetToday(C As VueComponent)
	Dim mNow As String = BANanoShared.DateNow 
	C.SetData(sVModel, mNow)
End Sub

Sub GetDate(C As VueComponent) As Object 
	Dim res As Object = C.GetData(sVModel) 
	Return res 
End Sub

Sub UpdateCategories(C As VueComponent, vCategories As List)
	If BANano.IsNull(vCategories) Or BANano.IsUndefined(vCategories) Then Return
	C.SetData(sCategories, vCategories)
End Sub

Sub UpdateEvents(C As VueComponent, vEvents As List)
	If BANano.IsNull(vEvents) Or BANano.IsUndefined(vEvents) Then Return
	C.SetData(sEvents, vEvents)
End Sub

'Update Type
Sub UpdateType(C As VueComponent, vType As Object)
	C.SetData(sType, vType)
End Sub

'Update Week Days
Sub UpdateWeekDays(C As VueComponent, vWeekDays As List)
	C.SetData(sWeekdays, vWeekDays)
End Sub

'clear events
Sub Clear(C As VueComponent)
	C.SetData(sEvents, C.NewList)
End Sub

'refresh
Sub Refresh(C As VueComponent)
	C.SetData(sEvents, mEvents)
End Sub

'add an event
Sub AddItem(eID As String, eCategory As String, eName As String, eStart As String, eEnd As String, eColor As String, eAllDay As Boolean, eLocation As String, eNote As String)
	Dim ne As Map = CreateMap()
	ne.Put("id", eID)
	ne.Put("name", eName)
	ne.Put("start", eStart)
	ne.Put("end", eEnd)
	ne.Put("color", eColor)
	ne.Put("timed", eAllDay)
	ne.Put("category", eCategory)
	ne.Put("note", eNote)
	ne.Put("location", eLocation)
	mEvents.Add(ne)
End Sub

'check change
Sub checkChange(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("checkChange", Null)
End Sub

'set the previous dat
Sub prevDate(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("prev", Null)
End Sub

'set the next day
Sub nextDate(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("next", Null)
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

Sub ShowWeekView(C As VueComponent)
	C.SetData($"${mName}type"$, "week")
End Sub

Sub ShowDayView(C As VueComponent)
	C.SetData($"${mName}type"$, "day")
End Sub

Sub ShowMonthMonth(C As VueComponent)
	C.SetData($"${mName}type"$, "month")
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
'
'Sub Enable(C As VueComponent)
'	updatedisabled(VC, False)
'End Sub
'
'Sub Disable(C As VueComponent)
'	updateDisabled(VC, True)
'End Sub

'show selected date
Sub OpenDateOnApp(C As VuetifyApp, item As Map)
	Dim tDate As String
	If item.ContainsKey("date") Then
		tDate = item.Get("date")
	Else
		tDate = item   'ignore
	End If	
	C.SetData(sVModel, tDate)
	C.SetData(xType, "day")
End Sub

'set the date of the calendar
Sub SetDateOnApp(C As VuetifyApp, vVModel As Object) 
	C.SetData(sVModel, vVModel)
End Sub

'set the date of the calendar
Sub SetTodayOnApp(C As VuetifyApp)
	Dim mNow As String = BANanoShared.DateNow 
	C.SetData(sVModel, mNow)
End Sub

Sub GetDateOnApp(C As VuetifyApp) As Object 
	Dim res As Object = C.GetData(sVModel) 
	Return res 
End Sub

Sub UpdateCategoriesOnApp(C As VuetifyApp, vCategories As List)
	If BANano.IsNull(vCategories) Or BANano.IsUndefined(vCategories) Then Return
	C.SetData(sCategories, vCategories)
End Sub

Sub UpdateEventsOnApp(C As VuetifyApp, vEvents As List)
	If BANano.IsNull(vEvents) Or BANano.IsUndefined(vEvents) Then Return
	C.SetData(sEvents, vEvents)
End Sub

'Update Type
Sub UpdateTypeOnApp(C As VuetifyApp, vType As Object)
	C.SetData(sType, vType)
End Sub

'Update Week Days
Sub UpdateWeekDaysOnApp(C As VuetifyApp, vWeekDays As List)
	C.SetData(sWeekdays, vWeekDays)
End Sub

'clear events
Sub ClearOnApp(C As VuetifyApp)
	C.SetData(sEvents, C.NewList)
End Sub

'refresh
Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sEvents, mEvents)
End Sub

'check change
Sub checkChangeOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("checkChange", Null)
End Sub

'set the previous dat
Sub prevDateOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("prev", Null)
End Sub

'set the next day
Sub nextDateOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("next", Null)
End Sub

Sub ShowWeekViewOnApp(C As VuetifyApp)
	C.SetData($"${mName}type"$, "week")
End Sub

Sub ShowDayViewOnApp(C As VuetifyApp)
	C.SetData($"${mName}type"$, "day")
End Sub

Sub ShowMonthMonthOnApp(C As VuetifyApp)
	C.SetData($"${mName}type"$, "month")
End Sub