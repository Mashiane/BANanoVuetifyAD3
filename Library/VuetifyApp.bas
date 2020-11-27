B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.3
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public VueRouter As BANanoObject
	Public Emit As BANanoObject
	Private Modules As Map
	Private BANano As BANano   'ignore
	Private methods As Map
	Private computed As Map
	Private watches As Map
	Private filters As Map
	Private opt As Map
	Public refs As BANanoObject
	Public Path As String
	Public Name As String
	Public Query As Map
	Public EventHandler As Object   'ignore
	Private routes As List
	Private components As Map
	Private Options As Map
	Public Vue As BANanoObject
	Public Themes As Map
	Private ColorMap As Map
	Public Errors As Map
	Public Vuetify As BANanoObject
	Private data As Map
	'
	Public const ALERT_BORDER_LEFT As String = "left"
	Public const ALERT_BORDER_RIGHT As String = "right"
	Public const ALERT_BORDER_BOTTOM As String = "bottom"
	Public const ALERT_BORDER_TOP As String = "top"
	'
	Public const ALERT_TYPE_SUCCESS As String = "success"
	Public const ALERT_TYPE_INFO As String = "info"
	Public const ALERT_TYPE_WARNING As String = "warning"
	Public const ALERT_TYPE_ERROR As String = "error"
	'
	Public const BORDER_DEFAULT As String = ""
	Public const BORDER_DASHED As String = "dashed"
	Public const BORDER_DOTTED As String = "dotted"
	Public const BORDER_DOUBLE As String = "double"
	Public const BORDER_GROOVE As String = "groove"
	Public const BORDER_HIDDEN As String = "hidden"
	Public const BORDER_INSET As String = "inset"
	Public const BORDER_NONE As String = "none"
	Public const BORDER_OUTSET As String = "outset"
	Public const BORDER_RIDGE As String = "ridge"
	Public const BORDER_SOLID As String = "solid"
	'
	Public const COLOR_AMBER As String = "amber"
	Public const COLOR_BLACK As String = "black"
	Public const COLOR_BLUE As String = "blue"
	Public const COLOR_BLUEGREY As String = "blue-grey"
	Public const COLOR_BROWN As String = "brown"
	Public const COLOR_CYAN As String = "cyan"
	Public const COLOR_DEEPORANGE As String = "deep-orange"
	Public const COLOR_DEEPPURPLE As String = "deep-purple"
	Public const COLOR_GREEN As String = "green"
	Public const COLOR_GREY As String = "grey"
	Public const COLOR_INDIGO As String = "indigo"
	Public const COLOR_LIGHTBLUE As String = "light-blue"
	Public const COLOR_LIGHTGREEN As String = "light-green"
	Public const COLOR_LIME As String = "lime"
	Public const COLOR_ORANGE As String = "orange"
	Public const COLOR_PINK As String = "pink"
	Public const COLOR_PURPLE As String = "purple"
	Public const COLOR_RED As String = "red"
	Public const COLOR_TEAL As String = "teal"
	Public const COLOR_TRANSPARENT As String = "transparent"
	Public const COLOR_WHITE As String = "white"
	Public const COLOR_YELLOW As String = "yellow"
	Public const COLOR_NONE As String = ""
	'
	Public const COLOR_AMBER_TEXT As String = "amber--text"
	Public const COLOR_BLACK_TEXT As String = "black--text"
	Public const COLOR_BLUE_TEXT As String = "blue--text"
	Public const COLOR_BLUEGREY_TEXT As String = "blue-grey--text"
	Public const COLOR_BROWN_TEXT As String = "brown--text"
	Public const COLOR_CYAN_TEXT As String = "cyan--text"
	Public const COLOR_DEEPORANGE_TEXT As String = "deep-orange--text"
	Public const COLOR_DEEPPURPLE_TEXT As String = "deep-purple--text"
	Public const COLOR_GREEN_TEXT As String = "green--text"
	Public const COLOR_GREY_TEXT As String = "grey--text"
	Public const COLOR_INDIGO_TEXT As String = "indigo--text"
	Public const COLOR_LIGHTBLUE_TEXT As String = "light-blue--text"
	Public const COLOR_LIGHTGREEN_TEXT As String = "light-green--text"
	Public const COLOR_LIME_TEXT As String = "lime--text"
	Public const COLOR_ORANGE_TEXT As String = "orange--text"
	Public const COLOR_PINK_TEXT As String = "pink--text"
	Public const COLOR_PURPLE_TEXT As String = "purple--text"
	Public const COLOR_RED_TEXT As String = "red--text"
	Public const COLOR_TEAL_TEXT As String = "teal--text"
	Public const COLOR_TRANSPARENT_TEXT As String = "transparent--text"
	Public const COLOR_WHITE_TEXT As String = "white--text"
	Public const COLOR_YELLOW_TEXT As String = "yellow--text"
	Public const COLOR_PRIMARY_TEXT As String = "primary--text"
	Public const COLOR_SECONDARY_TEXT As String = "secondary--text"
	Public const COLOR_ACCENT_TEXT As String = "accent--text"
	Public const COLOR_ERROR_TEXT As String = "error--text"
	Public const COLOR_INFO_TEXT As String = "info--text"
	Public const COLOR_SUCCESS_TEXT As String = "success--text"
	Public const COLOR_WARNING_TEXT As String = "warning--text"
	
	'
	Public CONST BREAKPOINT_XS As String = "xs"
	Public CONST BREAKPOINT_SM As String = "sm"
	Public CONST BREAKPOINT_MD As String = "md"
	Public CONST BREAKPOINT_LG As String = "lg"
	Public CONST BREAKPOINT_XL As String = "xl"
	
	Public CONST BREAKPOINT_xsOnly As String = "xsOnly"
	Public CONST BREAKPOINT_smOnly As String = "smOnly"
	Public CONST BREAKPOINT_smAndDown As String = "smAndDown"
	Public CONST BREAKPOINT_smAndUp As String = "smAndUp"
	Public CONST BREAKPOINT_mdOnly As String = "mdOnly"
	Public CONST BREAKPOINT_mdAndDown As String = "mdAndDown"
	Public CONST BREAKPOINT_mdAndUp As String = "mdAndUp"
	Public CONST BREAKPOINT_lgOnly As String = "lgOnly"
	Public CONST BREAKPOINT_lgAndDown As String = "lgAndDown"
	Public CONST BREAKPOINT_lgAndUp As String = "lgAndUp"
	Public CONST BREAKPOINT_xlOnly As String = "xlOnly"
	
	Public const INTENSITY_NORMAL As String = ""
	Public const INTENSITY_LIGHTEN5 As String = "lighten-5"
	Public const INTENSITY_LIGHTEN4 As String = "lighten-4"
	Public const INTENSITY_LIGHTEN3 As String = "lighten-3"
	Public const INTENSITY_LIGHTEN2 As String = "lighten-2"
	Public const INTENSITY_LIGHTEN1 As String = "lighten-1"
	Public const INTENSITY_DARKEN1 As String = "darken-1"
	Public const INTENSITY_DARKEN2 As String = "darken-2"
	Public const INTENSITY_DARKEN3 As String = "darken-3"
	Public const INTENSITY_DARKEN4 As String = "darken-4"
	Public const INTENSITY_ACCENT1 As String = "accent-1"
	Public const INTENSITY_ACCENT2 As String = "accent-2"
	Public const INTENSITY_ACCENT3 As String = "accent-3"
	Public const INTENSITY_ACCENT4 As String = "accent-4"
	'
	Public const JUSTIFY_CENTER As String = "center"
	Public const JUSTIFY_START As String = "start"
	Public const JUSTIFY_END As String = "end"
	'
	Public const ALIGN_CENTER As String = "center"
	Public const ALIGN_START As String = "start"
	Public const ALIGN_END As String = "end"
	Public const ALIGN_STRETCH As String = "stretch"
	'
	Public const ICONPOS_LEFT As String = "left"
	Public const ICONPOS_RIGHT As String = "right"
	'
	Public store As BANanoObject
	Public state As Map
	Private body As BANanoElement
	Public Template As String
	'
	Public const SIZE_H1 As String = "h1"
	Public const SIZE_H2 As String = "h2"
	Public const SIZE_H3 As String = "h3"
	Public const SIZE_H4 As String = "h4"
	Public const SIZE_H5 As String = "h5"
	Public const SIZE_H6 As String = "h6"
	Public const SIZE_P As String = "p"
	Public const SIZE_SPAN As String = "span"
	Public const SIZE_BLOCKQUOTE As String = "blockquote"
	Public const SIZE_DIV As String = "div"
	'
	Public const ICON_SMALL As String = "small"
	Public const ICON_LARGE As String = "large"
	Public const ICON_XSMALL As String = "x-small"
	Public const ICON_XLARGE As String = "x-large"
	'
	Public const BUTTON_SMALL As String = "small"
	Public const BUTTON_LARGE As String = "large"
	Public const BUTTON_XSMALL As String = "x-small"
	Public const BUTTON_XLARGE As String = "x-large"
	
	Public const TRANSITION_SLIDE_X As String = "slide-x-transition"
	Public const TRANSITION_SLIDE_X_REVERSE As String = "slide-x-reverse-transition"
	Public const TRANSITION_SLIDE_Y As String = "slide-y-transition"
	Public const TRANSITION_SLIDE_Y_REVERSE As String = "slide-y-reverse-transition"
	Public const TRANSITION_SCROLL_X As String = "scroll-x-transition"
	Public const TRANSITION_SCROLL_X_REVERSE As String = "scroll-x-reverse-transition"
	Public const TRANSITION_SCROLL_Y As String = "scroll-y-transition"
	Public const TRANSITION_SCROLL_Y_REVERSE As String = "scroll-y-reverse-transition"
	Public const TRANSITION_SCALE As String = "scale-transition"
	Public const TRANSITION_FADE As String = "fade-transition"
	Public const TRANSITION_FAB As String = "fab-transition"
	'
	Public const JUSTIFY_CENTER As String = "center"
	Public const JUSTIFY_START As String = "start"
	Public const JUSTIFY_END As String = "end"
	'
	Public const ALIGN_CENTER As String = "center"
	Public const ALIGN_START As String = "start"
	Public const ALIGN_END As String = "end"
	Public const ALIGN_STRETCH As String = "stretch"
	'
	Public const FLEX_GROW_0 As String = "flex-grow-0"
	Public const FLEX_GROW_1 As String = "flex-grow-1"
	Public const FLEX_SHRINK_0 As String = "flex-shrink-0"
	Public const FLEX_SHRINK_1 As String = "flex-shrink-1"
	'
	Public const TEXT_LEFT As String = "text-left"
	Public const TEXT_CENTER As String = "text-center"
	Public const TEXT_RIGHT As String = "text-right"
	Public const TEXT_NO_WRAP As String = "text-no-wrap"
	Public const TEXT_TRUNCATE As String = "text-truncate"
	Public const TEXT_LOWERCASE As String = "text-lowercase"
	Public const TEXT_UPPERCASE As String = "text-uppercase"
	Public const TEXT_CAPITALIZE As String = "text-capitalize"
	'
	Public const LOCALE_Afrikaans As String = "af"
	Public const LOCALE_Arabic As String = "ar"
	Public const LOCALE_Catalan As String = "ca"
	Public const LOCALE_Czech As String = "cs"
	Public const LOCALE_German As String = "de"
	Public const LOCALE_Greek As String = "el"
	Public const LOCALE_English	As String = "en"
	Public const LOCALE_Spanish As String = "es"
	Public const LOCALE_Estonian As String = "et"
	Public const LOCALE_Persian As String = "fa"
	Public const LOCALE_Finnish	As String = "fi"
	Public const LOCALE_French 	As String = "fr"
	Public const LOCALE_Hebrew 	As String = "he"
	Public const LOCALE_Croatian As String = "hr"
	Public const LOCALE_Hungarian As String = "hu"
	Public const LOCALE_Indonesian As String = "id"
	Public const LOCALE_Italian As String = "it"
	Public const LOCALE_Japanese As String = "ja"
	Public const LOCALE_Korean As String = "ko"
	Public const LOCALE_Lithuanian As String = "lt"
	Public const LOCALE_Latvian As String = "lv"
	Public const LOCALE_Dutch As String = "nl"
	Public const LOCALE_Norwegian As String = "no"
	Public const LOCALE_Polish As String = "pl"
	Public const LOCALE_Portuguese As String = "pt"
	Public const LOCALE_Romanian As String = "ro"
	Public const LOCALE_Russian As String = "ru"
	Public const LOCALE_Slovak As String = "sk"
	Public const LOCALE_Slovene As String = "sl"
	Public const LOCALE_Serbian As String = "srCyrl"
	Public const LOCALE_Swedish As String = "sv"
	Public const LOCALE_Thai As String = "th"
	Public const LOCALE_Turkish As String = "tr"
	Public const LOCALE_Ukrainian As String = "uk"
	Public const LOCALE_Chinese As String = "zhHans"
	Public const LOCALE_Chinese1 As String = "zhHant"
	'
	Public const VISIBILITY_PrintOnly As String = "print-only"
	Public const VISIBILITY_ScreenOnly As String = "screen-only"
	Public const VISIBILITY_XsOnly As String = "xs-only"
	Public const VISIBILITY_SmOnly As String = "sm-only"
	Public const VISIBILITY_SmAndDown As String = "sm-and-down"
	Public const VISIBILITY_SmAndUp As String = "sm-and-up"
	Public const VISIBILITY_MdOnly As String = "md-only"
	Public const VISIBILITY_MdAndDown As String = "md-and-down"
	Public const VISIBILITY_MdAndUp As String = "md-and-up"
	Public const VISIBILITY_LgOnly As String = "lg-only"
	Public const VISIBILITY_LgAndDown As String = "lg-and-down"
	Public const VISIBILITY_LgAndUp As String = "lg-and-up"
	Public const VISIBILITY_XlOnly As String = "xl-only"
	Public const VISIBILITY_ALL As String = ""
		
	Public Breakpoint As Object
	Public BreakpointName As String
	
	Public const VISIBILITY_HIDDEN_MD_AND_UP As String = "hidden-md-and-up"
	Public const VISIBILITY_HIDDEN_SM_AND_DOWN As String = "hidden-sm-and-down"
	Public const VISIBILITY_HIDDEN_MD_AND_DOWN As String = "hidden-md-and-down"
	Public const VISIBILITY_HIDDEN_XL_AND_DOWN As String = "hidden-xl-and-down"
	Public const VISIBILITY_HIDDEN_SM_AND_UP As String = "hidden-sm-and-up"
	Public const VISIBILITY_HIDDEN_XL_AND_UP As String = "hidden-xl-and-up"
	Public const VISIBILITY_HIDDEN_XS_ONLY As String = "hidden-xs-only"
	Public const VISIBILITY_HIDDEN_XL_ONLY As String = "hidden-xl-only"
	
	Public const ALERT_BORDER_LEFT As String = "left"
	Public const ALERT_BORDER_RIGHT As String = "right"
	Public const ALERT_BORDER_BOTTOM As String = "bottom"
	Public const ALERT_BORDER_TOP As String = "top"
	'
	Public const ALERT_TYPE_SUCCESS As String = "success"
	Public const ALERT_TYPE_INFO As String = "info"
	Public const ALERT_TYPE_WARNING As String = "warning"
	Public const ALERT_TYPE_ERROR As String = "error"
	
	Public const EVENT_Click As String = "click"
	Public const EVENT_Change As String = "change"
	Public const EVENT_ClickStop As String = "click.stop"
	Public const EVENT_DblClick As String = "dblclick"
	Public const EVENT_MouseMove As String = "MouseMove"
	Public const EVENT_MouseOut As String = "MouseOut"
	Public const EVENT_KeyUp As String = "KeyUp"
	Public const EVENT_KeyPress As String = "KeyPress"
	Public const EVENT_ClickAlt As String = "Click.Alt"
	Public const EVENT_ClickShift As String = "Click.Shift"
	Public const EVENT_ClickPrevent As String = "Click.Prevent"
		
	Public RTL As Boolean
	Public Dark As Boolean
	Private VuetifyOptions As Map
	Private lang As String
	Public BasePath As String = "/"
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
End Sub

'import a component, the module should have the Initilize method without parameters
Sub Import(comp As VueComponent)
	Dim compname As String = comp.mName
	compname = compname.tolowercase
	If components.ContainsKey(compname) = True Then Return
	Dim compx As Map = comp.Component
	components.Put(compname, compx)
End Sub

'add anything from the appendholder
Sub AppendHolderTo(target As String)
	target = target.ToLowerCase
	target = target.Replace("#","")
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement
	elx.Initialize($"#${target}"$)
	elx.append(stemplate)
End Sub

'initialize the snackbar
Sub SnackBarInitialize
	SetData("appsnackmessage", "")
	SetData("appsnackshow", False)
	SetData("appsnackright", True)
	SetData("appsnacktop", True)
	SetData("appsnackcolor","")
	SetData("appsnackbottom", False)
	SetData("appsnackcentered", False)
	SetData("appsnackoutlined", False)
	SetData("appsnackleft", False)
	SetData("appsnackshaped", True)
	SetData("appsnackrounded", False)
End Sub

Sub SnackBarColor(s As String) As VuetifyApp
	SetData("appsnackcolor",s)
	Return Me
End Sub

Sub SnackBarRounded(b As Boolean) As VuetifyApp
	SetData("appsnackrounded",b)
	Return Me
End Sub

Sub SnackBarShaped(b As Boolean) As VuetifyApp
	SetData("appsnackshaped",b)
	Return Me
End Sub

Sub SnackBarOutlined(b As Boolean) As VuetifyApp
	SetData("appsnackoutlined",b)
	Return Me
End Sub

Sub SnackBarTopLeft As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", True)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarTopCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",True)
	Return Me
End Sub


Sub SnackBarBottomCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",True)
	Return Me
End Sub

Sub SnackBarTopRight As VuetifyApp
	SetData("appsnackright", True)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarBottomLeft As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", True)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarBottomRight As VuetifyApp
	SetData("appsnackright", True)
	SetData("appsnackleft", False)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",True)
	Return Me
End Sub

Sub ShowDialog(b As Boolean)
	SetData("dialogshow", b)
End Sub


Sub ShowDialog1
	SetData("dialogshow", True)
End Sub


Sub HideDialog
	SetData("dialogshow", False)
End Sub

'initialize the dialog
Sub DialogInitialize
	SetData("dialogwidth", "400")
	SetData("dialogshow", False)
	SetData("dialogtitle", "")
	SetData("dialogmessage", "")
	SetData("dialogokshow", True)
	SetData("dialogoktitle", "Ok")
	SetData("dialogcanceltitle", "Cancel")
	SetData("dialogcancelshow", False)
	SetData("apppromptlabel", "Text")
	SetData("apppromptplaceholder", "")
	SetData("appprompthint", "")
	SetData("apppromptvalue", "")
	SetData("apppromptshow", False)
End Sub

'get prompt value
Sub GetPromptValue As String
	Dim sapppromptvalue As String = GetData("apppromptvalue")
	sapppromptvalue = sapppromptvalue.trim
	Return sapppromptvalue
End Sub

'show confirm dialog
Sub ShowConfirm(process As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	process = process.tolowercase
	SetData("apppromptshow", False)
	SetData("confirmkey", process)
	SetData("dialogtitle", Title)
	SetData("dialogmessage", Message)
	SetData("dialogoktitle", ConfirmText)
	SetData("dialogokshow", True)
	SetData("dialogcanceltitle", CancelText)
	SetData("dialogcancelshow", True)
	SetData("dialogshow", True)
End Sub

'show confirm dialog
Sub ShowPrompt(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData("dialogtitle", Title)
	SetData("dialogmessage", "")
	SetData("dialogoktitle", OkText)
	SetData("dialogokshow", True)
	SetData("dialogcanceltitle", CancelText)
	SetData("dialogcancelshow", True)
	SetData("dialogshow", True)
	SetData("apppromptlabel", Label)
	SetData("apppromptplaceholder", Placeholder)
	SetData("appprompthint", Hint)
	SetData("apppromptvalue", DefaultValue)
	SetData("apppromptshow", True)
End Sub


'show alert dialog
Sub ShowAlert(Title As String, Message As String, OkText As String)
	SetData("apppromptshow", False)
	SetData("confirmkey", "alert")
	SetData("dialogtitle", Title)
	SetData("dialogmessage", Message)
	SetData("dialogoktitle", OkText)
	SetData("dialogokshow", True)
	SetData("dialogcanceltitle", "Cancel")
	SetData("dialogcancelshow", False)
	SetData("dialogshow", True)
End Sub

'get the confirm key
Sub getConfirm As String
	Dim s As String = GetData("confirmkey")
	Return s
End Sub

Sub ShowSnackBarError(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "error")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarSuccess(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "success")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarPrimary(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "primary")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarSecondary(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "secondary")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarInfo(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "info")
	SetData("appsnackshow", True)
	Return Me
End Sub


Sub ShowSnackBarWarning(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "warning")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBar(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub HideSnackBar As VuetifyApp
	SetData("appsnackshow", False)
	Return Me
End Sub


'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	target = target.ToLowerCase
	target = target.Replace("#","")
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Dim elx As BANanoElement
	elx.Initialize($"#${target}"$)
	elx.append(stemplate)
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTMLAsIs(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub


'add html of component to app and this binds events and states
Sub BindVueElement(elx As VueElement)
	Dim mbindings As Map = elx.bindings
	Dim mmethods As Map = elx.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case ":rules", ":items"
			SetData(v, NewList)
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'get the name of the breakpoint
Sub GetBreakPointName As String
	Dim bp As BANanoObject = Vuetify.GetField("breakpoint")
	Dim res As String = bp.GetField("name").Result
	Return res
End Sub

'initialize the app with where to render and where to .GetHTML
Public Sub Initialize(Module As Object) 
	'get the body of the page
	body = BANano.GetElement("#body")
	body.Append($"<div id="app"><div id="placeholder" v-if="placeholder"></div><div id="appendholder" v-if="appendholder"></div><v-template id="apptemplate" v-if="apptemplate"></v-template></div>"$)
	
	'
	SetData("placeholder", False)
	SetData("appendholder", False)
	SetData("apptemplate", False)
	'
	Vue.Initialize("Vue")
	'
	'***use a global prototype
	state.Initialize
	Errors.Initialize
	Modules.Initialize
	methods.Initialize
	computed.Initialize
	watches.Initialize
	filters.Initialize
	opt.Initialize
	Query.Initialize
	EventHandler = Module
	routes.Initialize
	components.Initialize
	Options.Initialize
	Modules.Initialize
	Themes.Initialize 
	data.Initialize 
	InitColors
	
	RTL = False
	Dark = False
	lang = "en"
	VuetifyOptions.Initialize
End Sub

private Sub InitColors
	ColorMap.Initialize
	ColorMap.put("red lighten-5", "#ffebee")
	ColorMap.put("red lighten-4", "#ffcdd2")
	ColorMap.put("red lighten-3", "#ef9a9a")
	ColorMap.put("red lighten-2", "#e57373")
	ColorMap.put("red lighten-1", "#ef5350")
	ColorMap.put("red", "#f44336")
	ColorMap.put("red darken-1", "#e53935")
	ColorMap.put("red darken-2", "#d32f2f")
	ColorMap.put("red darken-3", "#c62828")
	ColorMap.put("red darken-4", "#b71c1c")
	ColorMap.put("red accent-1", "#ff8a80")
	ColorMap.put("red accent-2", "#ff5252")
	ColorMap.put("red accent-3", "#ff1744")
	ColorMap.put("red accent-4", "#d50000")
	ColorMap.put("pink lighten-5", "#fce4ec")
	ColorMap.put("pink lighten-4", "#f8bbd0")
	ColorMap.put("pink lighten-3", "#f48fb1")
	ColorMap.put("pink lighten-2", "#f06292")
	ColorMap.put("pink lighten-1", "#ec407a")
	ColorMap.put("pink", "#e91e63")
	ColorMap.put("pink darken-1", "#d81b60")
	ColorMap.put("pink darken-2", "#c2185b")
	ColorMap.put("pink darken-3", "#ad1457")
	ColorMap.put("pink darken-4", "#880e4f")
	ColorMap.put("pink accent-1", "#ff80ab")
	ColorMap.put("pink accent-2", "#ff4081")
	ColorMap.put("pink accent-3", "#f50057")
	ColorMap.put("pink accent-4", "#c51162")
	ColorMap.put("purple lighten-5", "#f3e5f5")
	ColorMap.put("purple lighten-4", "#e1bee7")
	ColorMap.put("purple lighten-3", "#ce93d8")
	ColorMap.put("purple lighten-2", "#ba68c8")
	ColorMap.put("purple lighten-1", "#ab47bc")
	ColorMap.put("purple", "#9c27b0")
	ColorMap.put("purple darken-1", "#8e24aa")
	ColorMap.put("purple darken-2", "#7b1fa2")
	ColorMap.put("purple darken-3", "#6a1b9a")
	ColorMap.put("purple darken-4", "#4a148c")
	ColorMap.put("purple accent-1", "#ea80fc")
	ColorMap.put("purple accent-2", "#e040fb")
	ColorMap.put("purple accent-3", "#d500f9")
	ColorMap.put("purple accent-4", "#aa00ff")
	ColorMap.put("deep-purple lighten-5", "#ede7f6")
	ColorMap.put("deep-purple lighten-4", "#d1c4e9")
	ColorMap.put("deep-purple lighten-3", "#b39ddb")
	ColorMap.put("deep-purple lighten-2", "#9575cd")
	ColorMap.put("deep-purple lighten-1", "#7e57c2")
	ColorMap.put("deep-purple", "#673ab7")
	ColorMap.put("deep-purple darken-1", "#5e35b1")
	ColorMap.put("deep-purple darken-2", "#512da8")
	ColorMap.put("deep-purple darken-3", "#4527a0")
	ColorMap.put("deep-purple darken-4", "#311b92")
	ColorMap.put("deep-purple accent-1", "#b388ff")
	ColorMap.put("deep-purple accent-2", "#7c4dff")
	ColorMap.put("deep-purple accent-3", "#651fff")
	ColorMap.put("deep-purple accent-4", "#6200ea")
	ColorMap.put("indigo lighten-5", "#e8eaf6")
	ColorMap.put("indigo lighten-4", "#c5cae9")
	ColorMap.put("indigo lighten-3", "#9fa8da")
	ColorMap.put("indigo lighten-2", "#7986cb")
	ColorMap.put("indigo lighten-1", "#5c6bc0")
	ColorMap.put("indigo", "#3f51b5")
	ColorMap.put("indigo darken-1", "#3949ab")
	ColorMap.put("indigo darken-2", "#303f9f")
	ColorMap.put("indigo darken-3", "#283593")
	ColorMap.put("indigo darken-4", "#1a237e")
	ColorMap.put("indigo accent-1", "#8c9eff")
	ColorMap.put("indigo accent-2", "#536dfe")
	ColorMap.put("indigo accent-3", "#3d5afe")
	ColorMap.put("indigo accent-4", "#304ffe")
	ColorMap.put("blue lighten-5", "#e3f2fd")
	ColorMap.put("blue lighten-4", "#bbdefb")
	ColorMap.put("blue lighten-3", "#90caf9")
	ColorMap.put("blue lighten-2", "#64b5f6")
	ColorMap.put("blue lighten-1", "#42a5f5")
	ColorMap.put("blue", "#2196f3")
	ColorMap.put("blue darken-1", "#1e88e5")
	ColorMap.put("blue darken-2", "#1976d2")
	ColorMap.put("blue darken-3", "#1565c0")
	ColorMap.put("blue darken-4", "#0d47a1")
	ColorMap.put("blue accent-1", "#82b1ff")
	ColorMap.put("blue accent-2", "#448aff")
	ColorMap.put("blue accent-3", "#2979ff")
	ColorMap.put("blue accent-4", "#2962ff")
	ColorMap.put("light-blue lighten-5", "#e1f5fe")
	ColorMap.put("light-blue lighten-4", "#b3e5fc")
	ColorMap.put("light-blue lighten-3", "#81d4fa")
	ColorMap.put("light-blue lighten-2", "#4fc3f7")
	ColorMap.put("light-blue lighten-1", "#29b6f6")
	ColorMap.put("light-blue", "#03a9f4")
	ColorMap.put("light-blue darken-1", "#039be5")
	ColorMap.put("light-blue darken-2", "#0288d1")
	ColorMap.put("light-blue darken-3", "#0277bd")
	ColorMap.put("light-blue darken-4", "#01579b")
	ColorMap.put("light-blue accent-1", "#80d8ff")
	ColorMap.put("light-blue accent-2", "#40c4ff")
	ColorMap.put("light-blue accent-3", "#00b0ff")
	ColorMap.put("light-blue accent-4", "#0091ea")
	ColorMap.put("cyan lighten-5", "#e0f7fa")
	ColorMap.put("cyan lighten-4", "#b2ebf2")
	ColorMap.put("cyan lighten-3", "#80deea")
	ColorMap.put("cyan lighten-2", "#4dd0e1")
	ColorMap.put("cyan lighten-1", "#26c6da")
	ColorMap.put("cyan", "#00bcd4")
	ColorMap.put("cyan darken-1", "#00acc1")
	ColorMap.put("cyan darken-2", "#0097a7")
	ColorMap.put("cyan darken-3", "#00838f")
	ColorMap.put("cyan darken-4", "#006064")
	ColorMap.put("cyan accent-1", "#84ffff")
	ColorMap.put("cyan accent-2", "#18ffff")
	ColorMap.put("cyan accent-3", "#00e5ff")
	ColorMap.put("cyan accent-4", "#00b8d4")
	ColorMap.put("teal lighten-5", "#e0f2f1")
	ColorMap.put("teal lighten-4", "#b2dfdb")
	ColorMap.put("teal lighten-3", "#80cbc4")
	ColorMap.put("teal lighten-2", "#4db6ac")
	ColorMap.put("teal lighten-1", "#26a69a")
	ColorMap.put("teal", "#009688")
	ColorMap.put("teal darken-1", "#00897b")
	ColorMap.put("teal darken-2", "#00796b")
	ColorMap.put("teal darken-3", "#00695c")
	ColorMap.put("teal darken-4", "#004d40")
	ColorMap.put("teal accent-1", "#a7ffeb")
	ColorMap.put("teal accent-2", "#64ffda")
	ColorMap.put("teal accent-3", "#1de9b6")
	ColorMap.put("teal accent-4", "#00bfa5")
	ColorMap.put("green lighten-5", "#e8f5e9")
	ColorMap.put("green lighten-4", "#c8e6c9")
	ColorMap.put("green lighten-3", "#a5d6a7")
	ColorMap.put("green lighten-2", "#81c784")
	ColorMap.put("green lighten-1", "#66bb6a")
	ColorMap.put("green", "#4caf50")
	ColorMap.put("green darken-1", "#43a047")
	ColorMap.put("green darken-2", "#388e3c")
	ColorMap.put("green darken-3", "#2e7d32")
	ColorMap.put("green darken-4", "#1b5e20")
	ColorMap.put("green accent-1", "#b9f6ca")
	ColorMap.put("green accent-2", "#69f0ae")
	ColorMap.put("green accent-3", "#00e676")
	ColorMap.put("green accent-4", "#00c853")
	ColorMap.put("light-green lighten-5", "#f1f8e9")
	ColorMap.put("light-green lighten-4", "#dcedc8")
	ColorMap.put("light-green lighten-3", "#c5e1a5")
	ColorMap.put("light-green lighten-2", "#aed581")
	ColorMap.put("light-green lighten-1", "#9ccc65")
	ColorMap.put("light-green", "#8bc34a")
	ColorMap.put("light-green darken-1", "#7cb342")
	ColorMap.put("light-green darken-2", "#689f38")
	ColorMap.put("light-green darken-3", "#558b2f")
	ColorMap.put("light-green darken-4", "#33691e")
	ColorMap.put("light-green accent-1", "#ccff90")
	ColorMap.put("light-green accent-2", "#b2ff59")
	ColorMap.put("light-green accent-3", "#76ff03")
	ColorMap.put("light-green accent-4", "#64dd17")
	ColorMap.put("lime lighten-5", "#f9fbe7")
	ColorMap.put("lime lighten-4", "#f0f4c3")
	ColorMap.put("lime lighten-3", "#e6ee9c")
	ColorMap.put("lime lighten-2", "#dce775")
	ColorMap.put("lime lighten-1", "#d4e157")
	ColorMap.put("lime", "#cddc39")
	ColorMap.put("lime darken-1", "#c0ca33")
	ColorMap.put("lime darken-2", "#afb42b")
	ColorMap.put("lime darken-3", "#9e9d24")
	ColorMap.put("lime darken-4", "#827717")
	ColorMap.put("lime accent-1", "#f4ff81")
	ColorMap.put("lime accent-2", "#eeff41")
	ColorMap.put("lime accent-3", "#c6ff00")
	ColorMap.put("lime accent-4", "#aeea00")
	ColorMap.put("yellow lighten-5", "#fffde7")
	ColorMap.put("yellow lighten-4", "#fff9c4")
	ColorMap.put("yellow lighten-3", "#fff59d")
	ColorMap.put("yellow lighten-2", "#fff176")
	ColorMap.put("yellow lighten-1", "#ffee58")
	ColorMap.put("yellow", "#ffeb3b")
	ColorMap.put("yellow darken-1", "#fdd835")
	ColorMap.put("yellow darken-2", "#fbc02d")
	ColorMap.put("yellow darken-3", "#f9a825")
	ColorMap.put("yellow darken-4", "#f57f17")
	ColorMap.put("yellow accent-1", "#ffff8d")
	ColorMap.put("yellow accent-2", "#ffff00")
	ColorMap.put("yellow accent-3", "#ffea00")
	ColorMap.put("yellow accent-4", "#ffd600")
	ColorMap.put("amber lighten-5", "#fff8e1")
	ColorMap.put("amber lighten-4", "#ffecb3")
	ColorMap.put("amber lighten-3", "#ffe082")
	ColorMap.put("amber lighten-2", "#ffd54f")
	ColorMap.put("amber lighten-1", "#ffca28")
	ColorMap.put("amber", "#ffc107")
	ColorMap.put("amber darken-1", "#ffb300")
	ColorMap.put("amber darken-2", "#ffa000")
	ColorMap.put("amber darken-3", "#ff8f00")
	ColorMap.put("amber darken-4", "#ff6f00")
	ColorMap.put("amber accent-1", "#ffe57f")
	ColorMap.put("amber accent-2", "#ffd740")
	ColorMap.put("amber accent-3", "#ffc400")
	ColorMap.put("amber accent-4", "#ffab00")
	ColorMap.put("orange lighten-5", "#fff3e0")
	ColorMap.put("orange lighten-4", "#ffe0b2")
	ColorMap.put("orange lighten-3", "#ffcc80")
	ColorMap.put("orange lighten-2", "#ffb74d")
	ColorMap.put("orange lighten-1", "#ffa726")
	ColorMap.put("orange", "#ff9800")
	ColorMap.put("orange darken-1", "#fb8c00")
	ColorMap.put("orange darken-2", "#f57c00")
	ColorMap.put("orange darken-3", "#ef6c00")
	ColorMap.put("orange darken-4", "#e65100")
	ColorMap.put("orange accent-1", "#ffd180")
	ColorMap.put("orange accent-2", "#ffab40")
	ColorMap.put("orange accent-3", "#ff9100")
	ColorMap.put("orange accent-4", "#ff6d00")
	ColorMap.put("deep-orange lighten-5", "#fbe9e7")
	ColorMap.put("deep-orange lighten-4", "#ffccbc")
	ColorMap.put("deep-orange lighten-3", "#ffab91")
	ColorMap.put("deep-orange lighten-2", "#ff8a65")
	ColorMap.put("deep-orange lighten-1", "#ff7043")
	ColorMap.put("deep-orange", "#ff5722")
	ColorMap.put("deep-orange darken-1", "#f4511e")
	ColorMap.put("deep-orange darken-2", "#e64a19")
	ColorMap.put("deep-orange darken-3", "#d84315")
	ColorMap.put("deep-orange darken-4", "#bf360c")
	ColorMap.put("deep-orange accent-1", "#ff9e80")
	ColorMap.put("deep-orange accent-2", "#ff6e40")
	ColorMap.put("deep-orange accent-3", "#ff3d00")
	ColorMap.put("deep-orange accent-4", "#dd2c00")
	ColorMap.put("brown lighten-5", "#efebe9")
	ColorMap.put("brown lighten-4", "#d7ccc8")
	ColorMap.put("brown lighten-3", "#bcaaa4")
	ColorMap.put("brown lighten-2", "#a1887f")
	ColorMap.put("brown lighten-1", "#8d6e63")
	ColorMap.put("brown", "#795548")
	ColorMap.put("brown darken-1", "#6d4c41")
	ColorMap.put("brown darken-2", "#5d4037")
	ColorMap.put("brown darken-3", "#4e342e")
	ColorMap.put("brown darken-4", "#3e2723")
	ColorMap.put("grey lighten-5", "#fafafa")
	ColorMap.put("grey lighten-4", "#f5f5f5")
	ColorMap.put("grey lighten-3", "#eeeeee")
	ColorMap.put("grey lighten-2", "#e0e0e0")
	ColorMap.put("grey lighten-1", "#bdbdbd")
	ColorMap.put("grey", "#9e9e9e")
	ColorMap.put("grey darken-1", "#757575")
	ColorMap.put("grey darken-2", "#616161")
	ColorMap.put("grey darken-3", "#424242")
	ColorMap.put("grey darken-4", "#212121")
	ColorMap.put("blue-grey lighten-5", "#eceff1")
	ColorMap.put("blue-grey lighten-4", "#cfd8dc")
	ColorMap.put("blue-grey lighten-3", "#b0bec5")
	ColorMap.put("blue-grey lighten-2", "#90a4ae")
	ColorMap.put("blue-grey lighten-1", "#78909c")
	ColorMap.put("blue-grey", "#607d8b")
	ColorMap.put("blue-grey darken-1", "#546e7a")
	ColorMap.put("blue-grey darken-2", "#455a64")
	ColorMap.put("blue-grey darken-3", "#37474f")
	ColorMap.put("blue-grey darken-4", "#263238")
	ColorMap.put("black", "#000000")
	ColorMap.put("white", "#ffffff")
	ColorMap.put("transparent", "transparent")
End Sub

'add a theme to use in the app
Sub AddTheme(themeName As String, ForeColor As String, ForeColorIntensity As String, BackColor As String, BackColorIntensity As String) 
	themeName = themeName.ToLowerCase
	'
	Dim fc As String = $"${ForeColor}--text"$
	Dim fci As String = $"text--${ForeColorIntensity}"$
	Dim bc As String = $"${BackColor} ${BackColorIntensity}"$
	'
	fc = fc.trim
	fci = fci.Trim
	'
	If fc = "--text" Then fc = ""
	If fci = "text--" Then fci = ""
	'
	Dim classLine As String = $"${fc} ${fci} ${bc}"$
	classLine = classLine.Trim
	classLine = classLine.Replace("  "," ")
	classLine = classLine.Trim
	Themes.Put(themeName, classLine)
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

'create an element with a 'component' tag
Sub CreateOwnComponent(id As String, compName As String) As VueElement
	Dim elx As VueElement
	elx.Initialize(Me, id, compName)
	Return elx
End Sub

'create a dynamic component
Sub CreateDynamicComponent(id As String, viewID As String, compID As String) As VueElement
	Dim elx As VueElement
	elx.Initialize(Me, id, "component")
	elx.BindDynamicComponent(viewID, compID)
	Return elx
End Sub

Sub GetHexColor(Color As String, Intensity As String) As String
	Dim sCode As String = $"${Color} ${Intensity}"$
	sCode = sCode.Trim
	'
	Dim hexColor As String = ""
	If ColorMap.ContainsKey(sCode) Then
		hexColor = ColorMap.Get(sCode)
	End If
	Return hexColor	
End Sub

'get a hex color from provided colors
Sub GetColorHex(sColor As String) As String
	sColor = sColor.tolowercase
	If ColorMap.ContainsKey(sColor) Then
		Dim xColor As String = ColorMap.Get(sColor)
		Return xColor
	End If
	Return ""
End Sub

Sub ModuleExist(tagName As String) As Boolean
	tagName = tagName.tolowercase
	Dim b As Boolean = Modules.ContainsKey(tagName)
	Return b
End Sub

'add a module from external parties
Sub AddModule(tagName As String)
	tagName = tagName.tolowercase
	Modules.Put(tagName, tagName)
End Sub

'add a component from 3rd party
Sub ImportComponentBO(compName As String, comp As BANanoObject)
	If components.ContainsKey(compName) = True Then Return
	components.Put(compName, comp)
End Sub

Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'add a router page
Sub AddRoute(comp As VueComponent) 
	If comp.mname = "" Then
		Log("AddRoute: Please specify the name of the Route!")
	End If
	'
	Dim eachroute As Map = CreateMap()
	eachroute.Put("path", comp.path)
	eachroute.Put("name", comp.mname)
	Dim compx As Map = comp.Component
	eachroute.Put("component", compx)
	'eachroute.Put("props", True)
	routes.Add(eachroute)
End Sub


'register a component with options
Sub RegisterComponent(compName As String, compOptions As Map) 
	compName = compName.tolowercase
	Vue.RunMethod("component", Array(compName, compOptions))
	
End Sub

'empty the banano element
Sub Empty(elID As String) 
	elID = elID.tolowercase
	Dim ph As BANanoElement
	ph.Initialize(elID)
	ph.empty	
End Sub

''force the update of the ux
'Sub ForceUpdate
'	Dim fu As String = "$forceUpdate"
'	vap.RunMethod(fu, Null)
'	'get the state
'	Dim dKey As String = "$data"
'	data = vap.GetField(dKey).Result
'	'get the refs
'	Dim rKey As String = "$refs"
'	refs = vap.GetField(rKey)
'End Sub

'set mounted
Sub SetMounted(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim mounted As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("mounted", mounted)
	SetMethod(module, methodName, args)
End Sub

'set destroyed
Sub SetDestroyed(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim destroyed As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("destroyed", destroyed)
	SetMethod(module, methodName, args)
End Sub


'set activated
Sub SetActivated(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim activated As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("activated", activated)
	SetMethod(module, methodName, args)
End Sub


'set deactivated
Sub SetDeActivated(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim deactivated As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("deactivated", deactivated)
	SetMethod(module, methodName, args)
End Sub


'set updated
Sub SetUpdated(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim updated As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("updated", updated)
	SetMethod(module, methodName, args)
End Sub

'set beforemount
Sub SetBeforeMount(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim beforeMount As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("beforeMount", beforeMount)
	SetMethod(module, methodName, args)
End Sub

'set beforeupdate
Sub SetBeforeUpdate(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim beforeUpdate As Boolean = BANano.CallBack(module, methodName, args)
	Options.Put("beforeUpdate", beforeUpdate)
	SetMethod(module, methodName, args)
End Sub

'set before destroy
Sub SetBeforeDestroy(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim beforeDestroy As Boolean = BANano.CallBack(module, methodName, args)
	Options.Put("beforeDestroy", beforeDestroy)
	SetMethod(module, methodName, args)
End Sub


'set before created
Sub SetBeforeCreate(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim beforeCreate As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("beforeCreate", beforeCreate)
	SetMethod(module, methodName, args)
End Sub


'set created
Sub SetCreated(module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return
	Dim created As BANanoObject = BANano.CallBack(module, methodName, args)
	Options.Put("created", created)
	SetMethod(module, methodName, args)
End Sub

'copy a state from one to another
Sub State2Another(source As String, target As String, defaultValue As Object) 
	Dim readObj As Object = GetData(source)
	If readObj = Null Then readObj = defaultValue
	SetStateSingle(target, readObj)
End Sub

'focus on a ref
Sub SetFocus(refID As String) 
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("focus", Null)
End Sub

'nullify the file select
Sub NullifyFileSelect(refID As String)
	RefNull(refID)
End Sub

Sub RefNull(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).SetField("value", Null)
End Sub


'click a reference
Sub RefClick(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'show the file select
Sub ShowFileSelect(fsName As String)
	RefClick(fsName)
End Sub

'refresh an element using the key
Sub RefreshKey(keyName As String) 
	keyName = keyName.ToLowerCase
	SetData(keyName, DateTime.now)
End Sub

'set data to the global store
Sub SetStore(prop As String, value As Object)
	SetDataGlobal(prop, value)
End Sub

'set global state data
private Sub SetDataGlobal(prop As String, value As Object) 
	prop = prop.ToLowerCase
	state.Put(prop, value)
	'
	Try
		Dim bo As BANanoObject = store.GetField(prop)
		If BANano.IsNull(bo) Then Return
		If BANano.IsUndefined(bo) Then Return
		'update the store
		store.GetField(prop).SetField(prop, value)
	Catch
		
	End Try  'ignore
	'
	'computed is not set
	If computed.ContainsKey(prop) = False Then
		Dim cb As BANanoObject = BANano.CallBackExtra(Me, "getglobalstate", Null, Array(prop))
		computed.Put(prop, cb.Result)
	End If
	
End Sub

'read the value of the prop we need
private Sub getglobalstate(prop As String) As Object   'IgnoreDeadCode
	prop = prop.tolowercase
	Dim rslt As Object = GetDataGlobal(prop)
	Return rslt
End Sub

'remove list last item
Sub ListPopGlobal(lstname As String)
	lstname = lstname.tolowercase
	store.GetField(lstname).RunMethod("pop", Null)
End Sub

Sub ListFirstItemGlobal(lstName As String) As Object
	lstName = lstName.tolowercase
	Dim lst As List = store.GetField(lstName).result
	Dim obj As Object = lst.Get(0)
	Return obj
End Sub

'add item at end of the list
Sub ListPushGlobal(listName As String, item As Object)
	listName = listName.ToLowerCase
	store.GetField(listName).RunMethod("push", item)
End Sub

'add item at beginning of list
Sub ListUnshiftGlobal(lstname As String, obj As Object)
	lstname = lstname.tolowercase
	store.GetField(lstname).RunMethod("unshift", obj)
End Sub

'get a value from the gloval store
Sub GetStore(prop As String) As Object
	Return GetDataGlobal(prop)
End Sub

'get global state data
private Sub GetDataGlobal(prop As String) As Object    'IgnoreDeadCode
	prop = prop.tolowercase
	Dim rslt As Object
	rslt = state.GetDefault(prop, Null)
	Try
		Dim bo As BANanoObject = store.GetField(prop)
		If BANano.IsNull(bo) Then Return ""
		If BANano.IsUndefined(bo) Then Return ""
		rslt = store.GetField(prop).Result
	Catch
		
	End Try  'ignore
	Return rslt
End Sub

'increment state
Sub Increment(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'increment by 1
	cc = cc + addVal
	'save back to state
	SetData(prop, cc)
End Sub

'decremenent state
Sub Decrement(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'decrement by 1
	cc = cc - addVal
	'save back to state
	SetData(prop, cc)
End Sub

'set direct method
Sub SetFilter(Module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		filters.Put(methodName, cb)
	Else
		'Log($"SetFilter.${methodName} could not be found!"$)
	End If   'ignore
End Sub

'change the locale
Sub SetLocale(slang As String)
	lang = slang
	Try
		Vuetify.GetField("lang").SetField("current", slang)
	Catch
		Log(LastException)
	End Try
End Sub

'set computed
Sub SetComputed(k As String, module As Object, methodName As String, args As List) 
	k = k.tolowercase
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(module, methodName, args)
		computed.Put(k, cb.Result)
	End If
End Sub

'set watches 
Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, Module As Object, methodName As String, args As List) 
	methodName = methodName.tolowercase
	k = k.tolowercase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		Dim deepit As Map = CreateMap()
		deepit.Put("handler", methodName)
		deepit.Put("deep", bDeep)
		deepit.Put("immediate", bImmediate)
		watches.Put(k, deepit)
		methods.Put(methodName, cb)
	End If
End Sub

Sub RunMethod(methodName As String, params As Object) As BANanoObject
	methodName = methodName.tolowercase
	Return Vue.RunMethod(methodName, params)
End Sub

Sub CallMethod(methodName As String)
	methodName = methodName.tolowercase
	Vue.RunMethod(methodName, Null)
End Sub


'set direct method
Sub SetMethod(Module As Object, methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		methods.Put(methodName, cb)
	End If
End Sub


Sub SetCallBack(methodName As String, cb As BANanoObject) 
	methodName = methodName.tolowercase
	methods.Put(methodName, cb)
End Sub

'set the state
Sub SetState(m As Map) 
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		SetData(k, v)
	Next
End Sub

'return if state exists
Sub HasState(k As String) As Boolean
	k = k.tolowercase
	Return data.ContainsKey(k)
End Sub

'toggle the visibility of an item using vshow
Sub ToggleItem(elID As String) 
	elID = elID.ToLowerCase
	Dim sstate As String = $"${elID}show"$
	ToggleState(sstate)
	
End Sub

Sub Toggle(stateID As String) 
	ToggleState(stateID)
	
End Sub

'toggle the state value
Sub ToggleState(stateName As String) 
	Dim bcurrent As Boolean = GetState(stateName)
	bcurrent = Not(bcurrent)
	Dim optx As Map = CreateMap()
	optx.Put(stateName, bcurrent)
	SetState(optx)
	
End Sub

'check if we have state
Sub StateExists(stateName As String) As Boolean
	Return HasState(stateName)
End Sub

'set state object
Sub SetStateMap(mapKey As String, mapValues As Map) 
	mapKey = mapKey.tolowercase
	Dim opt As Map = CreateMap()
	opt.Put(mapKey, mapValues)
	SetState(opt)
	
End Sub

'set state list
Sub SetStateList(mapKey As String, mapValues As List) 
	mapKey = mapKey.tolowercase
	Dim opt As Map = CreateMap()
	opt.Put(mapKey, mapValues)
	SetState(opt)
	
End Sub

Sub SetStateListValues(mapValues As List)  
	For Each lstValue As String In mapValues
		lstValue = lstValue.tolowercase
		Dim opt As Map = CreateMap()
		opt.Put(lstValue, "")
		SetState(opt)
	Next
End Sub

Sub GetStates(lst As List) As Map
	Dim smm As Map = CreateMap()
	For Each lstrec As String In lst
		lstrec = lstrec.tolowercase
		Dim ostate As Object = GetData(lstrec)
		smm.Put(lstrec, ostate)
	Next
	Return smm
End Sub

Sub SetStateTrue(k As String) 
	SetStateSingle(k,True)
End Sub

Sub SetStateFalse(k As String) 
	SetStateSingle(k,False)
End Sub

Sub CStr(o As Object) As String
	If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'a single state change
Sub SetStateSingle(k As String, v As Object) 
	k = k.tolowercase
	Dim optx As Map = CreateMap()
	optx.Put(k, v)
	SetState(optx)
End Sub

'get an element
Sub GetElementByID(elID As String) As BANanoElement
	elID = elID.ToLowerCase
	elID = elID.Replace("#","")
	Dim elx As BANanoElement
	elx.Initialize($"#${elID}"$)
	Return elx 
End Sub

'render the ux, load from layout
Sub Serve
	'get the content in the template
	Template = BANanoGetHTML("apptemplate")
	'
	Dim mlang As Map = CreateMap()
	mlang.Put("current", lang)
	'
	Dim theme As Map = CreateMap()
	theme.Put("dark", Dark)
	VuetifyOptions.Put("rtl", RTL)
	VuetifyOptions.Put("theme", theme)
	VuetifyOptions.Put("lang", mlang)
	VuetifyOptions.Put("breakpoint", CreateMap("scrollBarWidth": 6))
	
	'add the app div
	store = Vue.RunMethod("observable", Array(state))
	Vue.GetField("prototype").SetField("$store", store)
	'set where we should render the app to
	Options.Put("el", "#app")
	Options.Put("store", store)
	'
	If routes.Size > 0 Then
		Dim ropt As Map = CreateMap()
		'ropt.Put("mode", "history")
		ropt.Put("routes", routes)
		ropt.Put("base", BasePath)
		ropt.Put("path", "*")
		ropt.Put("redirect", BasePath)
		'Dim vrouter As BANanoObject
		VueRouter.Initialize2("VueRouter", Array(ropt))
		Options.Put("router", VueRouter)
	End If
	'set vuetify
	Vuetify.Initialize2("Vuetify", VuetifyOptions)
	Options.Put("vuetify", Vuetify)
	'
	
	Options.Put("components", components)
	Options.put("data", data)
	Options.Put("methods", methods)
	Options.Put("filters", filters)
	Options.Put("computed", computed)
	Options.Put("watch", watches)
	Options.Put("template", Template)
	Vue.Initialize2("Vue", Array(Options))
	'get the refs
	Dim rKey As String = "$refs"
	refs = Vue.GetField(rKey)
	Dim sstore As String = "$store"
	store = Vue.GetField(sstore)
	Dim emitKey As String = "$emit"
	Emit = Vue.GetField(emitKey)
	Dim srouter As String = "$router"
	VueRouter = Vue.GetField(srouter)
End Sub

'Use router To navigate
Sub NavigateTo(sPath As String) 
	sPath = sPath.tolowercase
	Dim namem As Map = CreateMap()
	namem.put("path", sPath)
	VueRouter.RunMethod("push", Array(namem))
	
End Sub

'use a component module
Sub Use(bo As BANanoObject) 
	Vue.RunMethod("use", bo)
	
End Sub

'use a component module
Sub Use1(bo As BANanoObject, uopt As Map) 
	Vue.RunMethod("use", Array(bo, uopt))
	
End Sub

Sub NotState(stateName As String) As Boolean
	Dim bcurrent As Boolean = GetData(stateName)
	If bcurrent = Null Then bcurrent = True
	bcurrent = Not(bcurrent)
	Return bcurrent
End Sub

Sub SetRequired(elID As String, b As Boolean) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}required"$, b)
End Sub

Sub Enable(elID As String) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, False)
End Sub

Sub Disable(elID As String) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, True)
End Sub

Sub SetEnabled(elID As String, b As Boolean) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, b)
End Sub

'hide an item using vshow
Sub Hide(elID As String)  
	elID = elID.tolowercase
	SetStateSingle($"${elID}show"$, False)
End Sub

'show an item using vshow
Sub Show(elID As String) 
	SetStateSingle($"${elID}show"$, True)
End Sub

'get the html part of a bananoelement
Sub GetPlaceholderHTML As String
	Dim be As BANanoElement
	be.Initialize("#placeholder")
	Dim xTemplate As String = be.GetHTML
	be.Empty
	xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub

'get the html part of a bananoelement
Sub GetPlaceholder As String
	Dim be As BANanoElement
	be.Initialize("#placeholder")
	Dim xTemplate As String = be.GetHTML
	Return xTemplate
End Sub

'set on click method
Sub SetOnClick(Module As Object, methodName As String)
	methodName = methodName.tolowercase
	If SubExists(Module, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(e))
	'add to methods
	SetCallBack(methodName, cb)
End Sub


'set right to left
Sub SetRTL(b As Boolean)
	Vuetify.SetField("rtl", b)
End Sub

'scroll to, 300, 0, easeInOutCubic
Sub ScrollTo(elID As String, duration As Int, offset As Int, easing As String)
	Try
		elID = elID.tolowercase
		Dim el As BANanoObject = refs.GetField(elID)
		If duration = Null Then duration = 300
		If offset = Null Then offset = 0
		If easing = "" Then easing = "easeInOutCubic"
		Dim opt As Map = CreateMap()
		opt.Put("duration", duration)
		opt.Put("offset", offset)
		opt.Put("easing", easing)
		Vuetify.RunMethod("goTo", Array(el, opt))
	Catch
		Log("ScrollTo Error")
	End Try
End Sub


'scroll to a particular item
Sub Goto(elID As String)
	elID = elID.tolowercase
	Vuetify.RunMethod("goTo", Array(elID))
End Sub


'add a rule
Sub AddRule(ruleName As String, Module As Object,  MethodName As String)
	If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = ""
	ruleName = ruleName.ToLowerCase
	If ruleName = "" Then Return
	MethodName = MethodName.ToLowerCase
	Dim rules As List
	If data.ContainsKey(ruleName) Then
		rules = data.Get(ruleName)
	Else
		rules = NewList
	End If
	'
	Dim v As Object
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(v))
	If SubExists(Module, MethodName) Then
		rules.Add(cb.Result)
	End If
	data.put(ruleName, rules)
End Sub


'get document ready state
Sub GetReadyState As String
	Dim rs As String = BANano.Window.GetField("document").GetField("readyState").Result
	Return rs
End Sub

'set ready change event
Sub SetOnReadyChange(Module As Object)
	If SubExists(Module, "ReadyChange") = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.callback(Module, "ReadyChange", Array(e))
	BANano.Window.GetField("document").AddEventListener("readystatechange", cb, True)
End Sub
'
private Sub HideBody 
	Dim stylem As Map = CreateMap("visibility":"hidden")
	body.SetStyle(BANano.ToJson(stylem))
End Sub

private Sub ShowBody
	Dim stylem As Map = CreateMap("visibility":"visible")
	body.SetStyle(BANano.ToJson(stylem))
End Sub


Sub DateDiff(currentDate As String, otherDate As String) As Int
	If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
	If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
	
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
	Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
	'
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "day")).Result
	Return rslt
End Sub

Sub RemoveDataItems(items As List)
	For Each k As String In items
		RemoveData(k)
	Next
End Sub

Sub RemoveData(key As String)
	key = key.ToLowerCase
	data.Remove(key)
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	data.put(prop, value)
End Sub

Sub GetData(prop As String) As Object
	Dim obj As Object = data.GetDefault(prop, "")
	If BANano.IsNull(obj) Then Return ""
	If BANano.IsUndefined(obj) Then Return ""
	Return obj
End Sub

private Sub GetState(prop As String) As Object
	Dim obj As Object = data.GetDefault(prop, "")
	Return obj
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub


Sub FormatFileSize(Bytes As Float) As String
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub

'add html of component to app and this binds events and states
Sub BindVueTable(el As VueTable)
	el.refresh
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case ":rules", ":items"
			SetData(v, NewList)
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'update button created on abstract designer
Sub UpdateButton(Module As Object, elID As String, sLabel As String, eColor As String, bOutlined As Boolean,  props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	'
	Dim mbutton As VueElement
	mbutton.Initialize(Module, elID, elID)
	mbutton.Caption = sLabel
	mbutton.AddAttr("id", elID)
	If bOutlined Then mbutton.Outlined = True
	mbutton.color = eColor
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			mbutton.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	mbutton.SetOnEvent(Module, clickEvent, "click", "")
	'
	Dim clickEventStop As String = $"${elID}_clickstop"$
	mbutton.SetOnEvent(Module, clickEventStop, "click.stop", "")
	'
	Dim clickEventPrevent As String = $"${elID}_clickprevent"$
	mbutton.SetOnEvent(Module, clickEventPrevent, "click.prevent", "")
	
	Return mbutton
End Sub


'update a selects created on abstract designer
Sub UpdateSelects(Module As Object, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	'this will use an existing item if available
	Dim vselect As VueElement
	vselect.Initialize(Module, elID, elID)
	
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	'
	If bMultiple Then
		Dim lst As List = NewList
		SetData(vmodel, lst)
	Else
		SetData(vmodel, Null)
	End If
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vselect.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_change"$
	vselect.SetOnEvent(Module, clickEvent, "change", "")
	'
	SetData(sourceTable, NewList)
	Return vselect
End Sub

'update a password custom element
Sub UpdatePassword(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	
	Dim bshowPassword As String = $"${elID}ShowPassword"$
	bshowPassword = bshowPassword.tolowercase
	SetData(bshowPassword, False)
	'
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr(":type", $"${bshowPassword} ? 'text' : 'password'"$)
	vtextfield.AddAttr(":append-icon", $"${bshowPassword} ? 'mdi-eye' : 'mdi-eye-off'"$)
	vtextfield.AddAttr("v-on:click:append", $"${bshowPassword} = !${bshowPassword}"$)
	vtextfield.AddAttr("autocomplete", "off")
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	Return vtextfield
End Sub


'update an existing text field
Sub UpdateTextField(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	If SubExists(Module, $"${elID}_clickappend"$) Then vtextfield.AddAttr("v-on:click:append", $"${elID}_clickappend"$)
	If SubExists(Module, $"${elID}_clickprepend"$) Then vtextfield.AddAttr("v-on:click:prepend", $"${elID}_clickprepend"$)
	If SubExists(Module, $"${elID}_clickappendouter"$) Then vtextfield.AddAttr("v-on:click:append-outer", $"${elID}_clickappendouter"$)
	If SubExists(Module, $"${elID}_clickprependinner"$) Then vtextfield.AddAttr("v-on:click:prepend-inner", $"${elID}_clickprependinner"$)
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	Return vtextfield
End Sub


'update an existing text field
Sub UpdateTextArea(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.Ref = vmodel
	If SubExists(Module, $"${elID}_clickappend"$) Then vtextfield.AddAttr("v-on:click:append", $"${elID}_clickappend"$)
	If SubExists(Module, $"${elID}_clickprepend"$) Then vtextfield.AddAttr("v-on:click:prepend", $"${elID}_clickprepend"$)
	If SubExists(Module, $"${elID}_clickappendouter"$) Then vtextfield.AddAttr("v-on:click:append-outer", $"${elID}_clickappendouter"$)
	If SubExists(Module, $"${elID}_clickprependinner"$) Then vtextfield.AddAttr("v-on:click:prepend-inner", $"${elID}_clickprependinner"$)

	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	Return vtextfield
End Sub

