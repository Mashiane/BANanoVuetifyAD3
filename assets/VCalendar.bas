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
#Event: Next (e As BANanoEvent)
#Event: Previous (e As BANanoEvent)
#Event: Today (e As BANanoEvent)
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
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
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VCalendar component.
'Definition of variables used in this VCalendar component.
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
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bDisabled As Boolean
Private sDisabled As String
Private bAbsolute As Boolean
Private bHover As Boolean
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private sTransition As String
Private sElevation As String
Private sMinHeight As String
Private sMaxHeight As String
Private sWidth As String
Private sMinWidth As String
Private sMaxWidth As String
Private sRounded As String
Private bTile As Boolean
Private bShrink As Boolean
Private bGrow As Boolean
Private bFlat As Boolean
Private bDense As Boolean
End Sub
'Initializes the VCalendar component.
'Initializes the VCalendar component.
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
'sDisabled = $"${mName}disabled"$
End Sub
'This builds the HTML tree based on defined properties for VCalendar
'This builds the HTML tree based on defined properties for VCalendar
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
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = Props.GetDefault("Disabled",False)
bDisabled = BANanoShared.parseBool(bDisabled)
bAbsolute = Props.GetDefault("Absolute", False)
bHover = Props.GetDefault("Hover", False)
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
mAttributes = Props.GetDefault("Attributes", "")
sTransition = Props.GetDefault("Transition", "")
sElevation = Props.GetDefault("Elevation", "")
sHeight = Props.GetDefault("Height", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMaxHeight = Props.GetDefault("MaxHeight", "")
sWidth = Props.GetDefault("Width", "")
sMinWidth = Props.GetDefault("MinWidth", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sRounded = Props.GetDefault("Rounded", "")
bTile = Props.GetDefault("Tile", False)
bTile = BANanoShared.parseBool(bTile)
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
End If
'
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
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
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.SetData(sDisabled, bDisabled)
VElement.Absolute = bAbsolute
VElement.Hover = bHover
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
VElement.Transition = sTransition
VElement.Elevation = sElevation
VElement.Height = sHeight
VElement.MinHeight = sMinHeight
VElement.MaxHeight = sMaxHeight
VElement.Width = sWidth
VElement.MinWidth = sMinWidth
VElement.MaxWidth = sMaxWidth
VElement.AddClass(sRounded)
VElement.Tile = bTile
VElement.AddClassOnCondition("shrink", bShrink, True)
VElement.AddAttr(":grow", bGrow)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":dense", bDense)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End If
VElement.BindAllEvents
End Sub
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
Sub AddToParent(targetID As String)
mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
DesignerCreateView(mTarget, Null)
End Sub
'Remove the component, this is a design time call on Initialize
'Remove the component, this is a design time call on Initialize
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
'Hide the component at runtime, needs BindState
'Hide the component at runtime, needs BindState
Sub Hide
VC.SetData(sVIf, False)
VC.SetData(sVShow, False)
End Sub
'Show the component at runtime, needs BindState
'Show the component at runtime, needs BindState
Sub Show
VC.SetData(sVIf, True)
VC.SetData(sVShow, True)
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
'Returns the name of the component. This is what you typed on the name property in b4j
'Returns the name of the component. This is what you typed on the name property in b4j
Sub getID As String
Return mName
End Sub
'Returns the name of the component with # infront for use with BANano.LoadLayout
'Returns the name of the component with # infront for use with BANano.LoadLayout
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
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
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
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXSOnly
AddClass("hidden-xs-only")
End Sub
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMOnly
AddClass("d-sm-none d-md-flex")
End Sub
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDOnly
AddClass("d-md-none d-lg-flex")
End Sub
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGOnly
AddClass("d-lg-none d-xl-flex")
End Sub
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXLOnly
AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
'End Sub
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndDown
AddClass("hidden-sm-and-down")
End Sub
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndDown
AddClass("hidden-md-and-down")
End Sub
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndDown
AddClass("hidden-lg-and-down")
End Sub
'Sub HiddenXLAndDown
'End Sub
'
'Sub HiddenXSAndUp
'End Sub
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndUp
AddClass("hidden-sm-and-up")
End Sub
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndUp
AddClass("hidden-md-and-up")
End Sub
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndUp
AddClass("hidden-lg-and-up")
End Sub
'Sub HiddenXLAndUp
'End Sub
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenOnAll
AddClass("d-none")
End Sub
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXS
AddClass("hidden-xs-only")
End Sub
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnSM
AddClass("d-sm-none d-md-flex")
End Sub
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnMD
AddClass("d-md-none d-lg-flex")
End Sub
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnLG
AddClass("d-lg-none d-xl-flex")
End Sub
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXL
AddClass("d-xl-none")
End Sub
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnAll
AddClass("d-flex")
End Sub
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXS
AddClass("d-flex d-sm-none")
End Sub
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnSM
AddClass("d-none d-sm-flex d-md-none")
End Sub
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnMD
AddClass("d-none d-md-flex d-lg-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnLG
AddClass("d-none d-lg-flex d-xl-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXL
AddClass("d-none d-xl-flex")
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
Sub UpdateTextDecoration(s As String)
VElement.UpdateTextDecoration(VC, s)
End Sub
Sub UpdateTextDecorationOnApp(A As VuetifyApp, s As String)
VElement.UpdateTextDecorationOnApp(A, s)
End Sub
Sub UpdateTruncate(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTruncateOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThrough(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThroughOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThin(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThinOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLight(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLightOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLine(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLineOnApp(A As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
a.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverline(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverlineOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBold(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBoldOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlack(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlackOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalic(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalicOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTextColor(xColor As String, xIntensity As String)
VElement.UpdateTextColor(VC, xColor, xIntensity)
End Sub
Sub UpdateTextColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateTextColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateColor(xColor As String, xIntensity As String)
VElement.UpdateColor(VC, xColor, xIntensity)
End Sub
Sub UpdateColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub
'Toggle a class at runtime, needs BindState
Sub ToggleClass(sClass As String)
VElement.ToggleClassRuntime(VC, sClass)
End Sub
'Toggle a clas at runtime, neeeds BindState
Sub ToggleClassOnApp(A As VuetifyApp, sClass As String)
VElement.ToggleClassOnApp(A, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassRT(sClass As String)
VElement.AddClassRuntime(VC, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassOnApp(A As VuetifyApp, sClass As String)
VElement.AddClassRuntimeOnAPp(A, sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassRT(sClass As String)
VElement.RemoveClassRuntime(VC, sClass)
End Sub
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub RemoveClass(sClass As String)
VElement.RemoveClass(sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassOnApp(A As VuetifyApp, sClass As String)
VElement.RemoveClassRuntimeOnApp(A, sClass)
End Sub
'Add style at runtime, needs BindState
Sub AddStyleRT(prop As String, value As String)
VElement.AddStyleRunTime(VC , prop, value)
End Sub
'Removes a style at runtime, needs BindState
Sub RemoveStyleRT(prop As String)
VElement.RemoveStyleRunTime(VC , prop)
End Sub
'Add a style at runtime. Use CamelCase, needs BindState
Sub AddStyleOnApp(A As VuetifyApp, prop As String, value As String)
VElement.AddStyleOnAPp(A , prop, value)
End Sub
'Removes a style at runtime. Use CamelCase, needs BindState
Sub RemoveStyleOnApp(A As VuetifyApp, prop As String)
VElement.RemoveStyleOnApp(A , prop)
End Sub
'Bind this attribute to this state name and specify a default value, needs BindState
Sub BindDefault(prop As String, varName As String, def As Object)
VElement.Bind(prop, varName)
VElement.SetData(varName, def)
End Sub
'Bind this attribute to this state name, needs BindState
Sub Bind(prop As String, varName As String)
VElement.Bind(prop, varName)
VElement.SetData(varName, Null)
End Sub
Sub getHTML As String
If mElement <> Null Then
Return mElement.GetHTML
Else
Return ""
End If
End Sub