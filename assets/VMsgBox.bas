B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: ok_click (e As BANanoEvent)
#Event: cancel_click (e As BANanoEvent)
#Event: clickoutside (e as bananoevent)
#Event: Visible

#DesignerProperty: Key: DialogType, DisplayName: Dialog Type, FieldType: String, DefaultValue: message, Description: Dialog Type whether to show a message or expect input, List: message|input
#DesignerProperty: Key: ToolbarCaption, DisplayName: Title, FieldType: String, DefaultValue: Title, Description: Title of the msgbox 
#DesignerProperty: Key: ToolBarColor, DisplayName: Tool Bar Color, FieldType: String, DefaultValue: none, Description: Tool Bar Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ToolBarColorIntensity, DisplayName: Tool Bar Color Intensity, FieldType: String, DefaultValue: normal, Description: ToolBarColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: ToolbarDark, DisplayName: Toolbar Dark, FieldType: Boolean, DefaultValue: False, Description: The toolbar should be dark
#DesignerProperty: Key: CardTextCaption, DisplayName: Message, FieldType: String, DefaultValue: Message, Description: Message to show
#DesignerProperty: Key: CustomActions, DisplayName: Custom Actions, FieldType: Boolean, DefaultValue: False, Description: Use custom actions
'
#DesignerProperty: Key: OkCaption, DisplayName: Ok Label, FieldType: String, DefaultValue: Ok, Description: The label of the Ok button
#DesignerProperty: Key: OkVisible, DisplayName: Ok Visible, FieldType: Boolean, DefaultValue: True, Description: The Ok button is visible
#DesignerProperty: Key: OkLoading, DisplayName: Ok Loading, FieldType: Boolean, DefaultValue: False, Description: The Ok button is loading
#DesignerProperty: Key: OkDisabled, DisplayName: Ok Disabled, FieldType: Boolean, DefaultValue: False, Description: The Ok button is disabled
#DesignerProperty: Key: OkColor, DisplayName: Ok Color, FieldType: String, DefaultValue: green, Description: The color of the Ok button, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: OkColorIntensity, DisplayName: Ok Color Intensity, FieldType: String, DefaultValue: , Description: The color intensity of the Ok button, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: OkOutlined, DisplayName: Ok Outlined, FieldType: Boolean, DefaultValue: False, Description: The Ok button is outlined
#DesignerProperty: Key: OkRounded, DisplayName: Ok Rounded, FieldType: Boolean, DefaultValue: False, Description: The Ok button is rounded rounded

'
#DesignerProperty: Key: CancelCaption, DisplayName: Cancel Label, FieldType: String, DefaultValue: Cancel, Description: The label of the Cancel button
#DesignerProperty: Key: CancelVisible, DisplayName: Cancel Visible, FieldType: Boolean, DefaultValue: True, Description: The Cancel button is visible
#DesignerProperty: Key: CancelLoading, DisplayName: Cancel Loading, FieldType: Boolean, DefaultValue: False, Description: The Cancel button is loading
#DesignerProperty: Key: CancelDisabled, DisplayName: Cancel Disabled, FieldType: Boolean, DefaultValue: False, Description: The Cancel button is disabled
#DesignerProperty: Key: CancelColor, DisplayName: Cancel Color, FieldType: String, DefaultValue: red, Description: The color of the Cancel button, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: CancelColorIntensity, DisplayName: Cancel Color Intensity, FieldType: String, DefaultValue: , Description: The color intensity of the Cancel button, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: CancelOutlined, DisplayName: Cancel Outlined, FieldType: Boolean, DefaultValue: False, Description: The Cancel button is outlined
#DesignerProperty: Key: CancelRounded, DisplayName: Cancel Rounded, FieldType: Boolean, DefaultValue: False, Description: The Cancel button is rounded

#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: The MsgBox is Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 700, Description: The width of the MsgBox
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: The min width of the MsgBox
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: The max width of the MsgBox
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: The height of the MsgBox
#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: , Description: The min height of the MsgBox
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: The max height of the MsgBox
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: True, Description: The MsgBox is not visible
'
#DesignerProperty: Key: CloseDelay, DisplayName: Close Delay, FieldType: String, DefaultValue: , Description: Close Delay
#DesignerProperty: Key: ContentClass, DisplayName: Content Class, FieldType: String, DefaultValue: , Description: Content Class
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: false, Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: True, Description: Eager
#DesignerProperty: Key: Fullscreen, DisplayName: Full Screen, FieldType: Boolean, DefaultValue: false, Description: Show the MsgBox in Fullscreen
#DesignerProperty: Key: FullscreenOnMobile, DisplayName: FullscreenOnMobile, FieldType: Boolean, DefaultValue: false, Description: The MsgBox should be Full screen On Mobile
#DesignerProperty: Key: OverlayColor, DisplayName: Overlay Color, FieldType: String, DefaultValue: , Description: Overlay Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: OverlayColorIntensity, DisplayName: Overlay Color Intensity, FieldType: String, DefaultValue: , Description: Overlay Color Intensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: OverlayOpacity, DisplayName: Overlay Opacity, FieldType: String, DefaultValue: , Description: Overlay Opacity
#DesignerProperty: Key: HideOverlay, DisplayName: Hide Overlay, FieldType: Boolean, DefaultValue: false, Description: Hide Overlay

#DesignerProperty: Key: NoClickAnimation, DisplayName: No Click Animation, FieldType: Boolean, DefaultValue: false, Description: No Click Animation
#DesignerProperty: Key: OpenDelay, DisplayName: Open Delay, FieldType: String, DefaultValue: , Description: Open Delay
#DesignerProperty: Key: Origin, DisplayName: Origin, FieldType: String, DefaultValue: , Description: Origin
#DesignerProperty: Key: Persistent, DisplayName: Persistent, FieldType: Boolean, DefaultValue: True, Description: Persistent
#DesignerProperty: Key: RetainFocus, DisplayName: Retain Focus, FieldType: Boolean, DefaultValue: false, Description: Retain Focus
#DesignerProperty: Key: Scrollable, DisplayName: Scrollable, FieldType: Boolean, DefaultValue: false, Description: Scrollable
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: fab-transition, Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private sCancelCaption As String
	Private sCancelColor As String
	Private sCancelColorIntensity As String
	Private sCardTextCaption As String
	Private sCloseDelay As String
	Private sContentClass As String
	Private bDark As Boolean
	Private bDisabled As Boolean
	Private bEager As Boolean
	Private bFullscreen As Boolean
	Private bHideOverlay As Boolean
	Private sMaxWidth As String
	Private bNoClickAnimation As Boolean
	Private sOkCaption As String
	Private sOkColor As String
	Private sOkColorIntensity As String
	Private sOpenDelay As String
	Private sOrigin As String
	Private sOverlayColor As String
	Private sOverlayColorIntensity As String
	Private sOverlayOpacity As String
	Private bPersistent As Boolean
	Private bRetainFocus As Boolean
	Private bScrollable As Boolean
	Private sTransition As String
	Private sVIf As String
	Private sVModel As String
	Private sWidth As String
	Private bFullscreenOnMobile As Boolean
	'
	Private xToolbarCaption As String
	Private sToolBarColor As String
	Private sToolBarColorIntensity As String
	Private bToolbarDark As Boolean
	Private xToolBarDark As String
	Private xToolBarColor As String
	Private xCardTextCaption As String
	Private xCancelColor As String
	Private xOkColor As String
	Private xOkCaption As String
	Private xCancelCaption As String
	Private xOkVisible As String
	Private xOkLoading As String
	Private xOkDisabled As String
	Private xCancelVisible As String
	Private xCancelLoading As String
	Private xCancelDisabled As String
	'
	Private bOkVisible As Boolean
	Private bOkLoading As Boolean
	Private bOkDisabled As Boolean
	Private bCancelVisible As Boolean
	Private bCancelLoading As Boolean
	Private bCancelDisabled As Boolean
	Private sDisabled As String
	Private bHidden As Boolean
	Private sToolbarCaption As String
	Private sRounded As String
	Private sDialogType As String
	Private bCustomActions As Boolean
	Private sShowActions As String
	Private sScrollable As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sHeight As String
	Private bOkOutlined As Boolean
	Private bCancelOutlined As Boolean
	Private bOkRounded As Boolean
	Private bCancelRounded As Boolean
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
	xToolbarCaption = $"${mName}toolbarcaption"$
	xToolBarColor = $"${mName}toolbarcolor"$
	xToolBarDark = $"${mName}toolbardark"$
	xCardTextCaption = $"${mName}cardtextcaption"$
	xCancelColor = $"${mName}cancelcolor"$
	xOkColor = $"${mName}okcolor"$
	xOkCaption = $"${mName}okcaption"$
	xCancelCaption = $"${mName}cancelcaption"$
	xOkVisible = $"${mName}okshow"$
	xOkLoading = $"${mName}okloading"$
	xOkDisabled  = $"${mName}okdisabled"$
	xCancelVisible = $"${mName}cancelshow"$
	xCancelLoading = $"${mName}cancelloading"$
	xCancelDisabled = $"${mName}canceldisabled"$
	sDisabled = $"${mName}disabled"$
	sVModel = $"${mName}show"$
	sShowActions = $"${mName}actionsshow"$
	sScrollable = $"${mName}scrollable"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		sRounded = Props.GetDefault("Rounded", "")
		sToolbarCaption = Props.GetDefault("ToolbarCaption","")
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bOkVisible = Props.GetDefault("OkVisible",True)
		bOkOutlined = Props.GetDefault("OkOutlined", False)
		bCancelOutlined = Props.getdefault("CancelOutlined", False)
		bCancelRounded = Props.GetDefault("CancelRounded", False)
		bOkRounded = Props.GetDefault("OkRounded", False)
		bOkLoading = Props.GetDefault("OkLoading",False)
		bOkDisabled = Props.GetDefault("OkDisabled",False)
		bCancelVisible = Props.GetDefault("CancelVisible",True)
		bCancelLoading = Props.GetDefault("CancelLoading",False)
		bCancelDisabled = Props.GetDefault("CancelDisabled",False)
		sCancelCaption = Props.Get("CancelCaption")
		sCancelColor = Props.Get("CancelColor")
		sCancelColorIntensity = Props.Get("CancelColorIntensity")
		sCardTextCaption = Props.Get("CardTextCaption")
		sCloseDelay = Props.Get("CloseDelay")
		sContentClass = Props.Get("ContentClass")
		bDark = Props.GetDefault("Dark",False)
		bDisabled = Props.GetDefault("Disabled",False)
		bEager = Props.GetDefault("Eager",False)
		bFullscreen = Props.GetDefault("Fullscreen",False)
		bHideOverlay = Props.GetDefault("HideOverlay",False)
		sMaxWidth = Props.Get("MaxWidth")
		bNoClickAnimation = Props.GetDefault("NoClickAnimation",False)
		sOkCaption = Props.Get("OkCaption")
		sOkColor = Props.Get("OkColor")
		sOkColorIntensity = Props.Get("OkColorIntensity")
		sOpenDelay = Props.Get("OpenDelay")
		sOrigin = Props.Get("Origin")
		sOverlayColor = Props.Get("OverlayColor")
		sOverlayColorIntensity = Props.Get("OverlayColorIntensity")
		sOverlayOpacity = Props.Get("OverlayOpacity")
		bPersistent = Props.GetDefault("Persistent",False)
		bRetainFocus = Props.GetDefault("RetainFocus",False)
		bScrollable = Props.GetDefault("Scrollable",False)
		sTransition = Props.Get("Transition")
		sVIf = Props.Get("VIf")
		sWidth = Props.Get("Width")
		bFullscreenOnMobile = Props.GetDefault("FullscreenOnMobile",True)
		sToolBarColor = Props.Get("ToolBarColor")
		sToolBarColorIntensity = Props.Get("ToolBarColorIntensity")
		bToolbarDark = Props.GetDefault("ToolBarDark",False)
		bHidden = Props.GetDefault("Hidden", True)
		sDialogType = Props.GetDefault("DialogType", "message")
		bCustomActions = Props.GetDefault("CustomActions", False)
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sHeight = Props.GetDefault("Height", "")
	End If
	'
	bOkRounded = BANanoShared.parseBool(bOkRounded)
	bOkOutlined = BANanoShared.parseBool(bOkOutlined)
	bCancelRounded = BANanoShared.parseBool(bCancelRounded)
	bCancelOutlined = BANanoShared.parseBool(bCancelOutlined)
	bOkVisible = BANanoShared.parseBool(bOkVisible)
	bOkLoading = BANanoShared.parseBool(bOkLoading)
	bOkDisabled = BANanoShared.parseBool(bOkDisabled)
	bCancelVisible = BANanoShared.parseBool(bCancelVisible)
	bCancelLoading = BANanoShared.parseBool(bCancelLoading)
	bCancelDisabled = BANanoShared.parseBool(bCancelDisabled)
	bDark = BANanoShared.parseBool(bDark)
	bDisabled = BANanoShared.parseBool(bDisabled)
	bEager = BANanoShared.parseBool(bEager)
	bFullscreen = BANanoShared.parseBool(bFullscreen)
	bHideOverlay = BANanoShared.parseBool(bHideOverlay)
	bNoClickAnimation = BANanoShared.parseBool(bNoClickAnimation)
	bPersistent = BANanoShared.parseBool(bPersistent)
	bRetainFocus = BANanoShared.parseBool(bRetainFocus)
	bScrollable = BANanoShared.parseBool(bScrollable)
	bFullscreenOnMobile = BANanoShared.parseBool(bFullscreenOnMobile)
	bToolbarDark = BANanoShared.parseBool(bToolbarDark)
	bHidden = BANanoShared.parseBool(bHidden)
	bCustomActions = BANanoShared.parseBool(bCustomActions)
	bDisabled = BANanoShared.parseBool(bDisabled)
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-dialog ref="${mName}" id="${mName}"></v-dialog>"$).Get("#" & mName)
	End If
	
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-dialog"
	VElement.SetData(xToolbarCaption, sToolbarCaption)
	sToolBarColor = VElement.BuildColor(sToolBarColor, sToolBarColorIntensity)
	VElement.SetData(xToolBarColor, sToolBarColor)
	VElement.SetData(xToolBarDark, bToolbarDark)
	VElement.SetData(xCardTextCaption, sCardTextCaption)
	sCancelColor = VElement.BuildColor(sCancelColor, sCancelColorIntensity)
	sOkColor = VElement.BuildColor(sOkColor, sOkColorIntensity)
	VElement.SetData(xOkColor, sOkColor)
	VElement.SetData(xCancelColor, sCancelColor)
	VElement.SetData(xOkCaption, sOkCaption)
	VElement.SetData(xCancelCaption, sCancelCaption)
	'
	VElement.SetData(xOkVisible, bOkVisible)
	VElement.SetData(xOkLoading, bOkLoading)
	VElement.SetData(xOkDisabled, bOkDisabled)
	'
	VElement.SetData(xCancelVisible, bCancelVisible)
	VElement.SetData(xCancelLoading, bCancelLoading)
	VElement.SetData(xCancelDisabled, bCancelDisabled)
	VElement.ContentClass = sContentClass & " " & sRounded
	'
	If bCustomActions Then
		'hide actions
		VElement.SetData(sShowActions, False)
		VElement.SetData(xOkVisible, False)
		VElement.SetData(xCancelVisible, False)
	Else
		'show actions
		VElement.SetData(sShowActions, True)	
	End If
	
	'add the card
	VElement.Append($"<v-card id="${mName}card"></v-card>"$)
	'
	VElement.GetCard.Append($"<v-card-title id="${mName}cardtitle"></v-card-title>"$)
	VElement.GetCardTitle.AddClass("headline")
	VElement.GetCardTitle.VHtml = xToolbarCaption
	VElement.GetCardTitle.Bind("color", xToolBarColor)
	VElement.GetCardTitle.Bind("dark", xToolBarDark)		
	VElement.BindVueElement(VElement.GetCardTitle)
	VElement.GetCard.Append($"<v-divider class="mx-2 mb-2"></v-divider>"$)
	'
	VElement.GetCard.Append($"<v-card-text ref="${mName}cardtext" id="${mName}cardtext"></v-card-text>"$)
	Select Case sDialogType
	Case "message"	
		'we will not append anything to it
		VElement.GetCardText.VHtml = xCardTextCaption
	End Select
	VElement.BindVueElement(VElement.GetCardText)
	'
	VElement.GetCard.Append($"<v-divider id="${mName}divider2" v-show="${sShowActions}" class="mx-2"></v-divider>"$)
	'
	VElement.GetCard.Append($"<v-card-actions v-show="${sShowActions}" id="${mName}cardactions"></v-card-actions>"$)
	VElement.GetCardActions.Append($"<v-btn id="${mName}_cancel" class="mr-2 white--text">{{${xCancelCaption} }}</v-btn>"$)
	VElement.GetCancel1.Bind("color", xCancelColor)
	VElement.GetCancel1.Disabled = xCancelDisabled
	VElement.GetCancel1.Vshow = xCancelVisible
	VElement.GetCancel1.Loading = xCancelLoading
	VElement.GetCancel1.Rounded = bCancelRounded
	VElement.GetCancel1.Outlined = bCancelOutlined
	'
	VElement.GetCardActions.Append($"<v-spacer></v-spacer>"$)
	'
	VElement.GetCardActions.Append($"<v-btn id="${mName}_ok" class="white--text">{{ ${xOkCaption} }}</v-btn>"$)
	VElement.GetOK1.Bind("color", xOkColor)
	VElement.GetOK1.Disabled = xOkDisabled
	VElement.GetOK1.Vshow = xOkVisible
	VElement.GetOK1.Loading = xOkLoading
	VElement.GetOK1.Rounded = bOkRounded
	VElement.GetOK1.Outlined = bOkOutlined
	'
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	'
	VElement.AddAttr("close-delay", sCloseDelay)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":disabled", sDisabled)
	VElement.SetData(sDisabled, bDisabled)
	VElement.AddAttr(":eager", bEager)
	VElement.AddAttr(":fullscreen", bFullscreen)
	VElement.AddAttr(":hide-overlay", bHideOverlay)
	VElement.AddAttr(":no-click-animation", bNoClickAnimation)
	VElement.AddAttr("open-delay", sOpenDelay)
	VElement.AddAttr("origin", sOrigin)
	VElement.OverlayColor = VElement.BuildColor(sOverlayColor, sOverlayColorIntensity)
	VElement.AddAttr("overlay-opacity", sOverlayOpacity)
	VElement.AddAttr(":persistent", bPersistent)
	VElement.AddAttr(":retain-focus", bRetainFocus)
	VElement.AddAttr(":scrollable", sScrollable)
	VElement.SetData(sScrollable, bScrollable)
	VElement.AddAttr("transition", sTransition)
	VElement.AddAttr("v-if", sVIf)
	VElement.FullScreenOnMobile = bFullscreenOnMobile
	VElement.AddAttr("v-model", sVModel)
	VElement.SetData(sVModel, Not(bHidden))
	'
	VElement.GetCard.MinHeight = sMinHeight
	VElement.GetCard.MaxHeight = sMaxHeight
	VElement.GetCard.Height = sHeight
	
	VElement.Width = sWidth
	VElement.MaxWidth =	sMaxWidth
	VElement.MinWidth = sMinWidth
	
	VElement.BindAllEvents
	'
	Dim okb As VueElement = VElement.GetOK1
	okb.BindAllEvents
	VElement.BindVueElement(okb)

	Dim ccb As VueElement = VElement.GetCancel1
	ccb.BindAllEvents
	VElement.BindVueElement(ccb)
End Sub

private Sub WatchVisibility(C As VueComponent)
	C.SetWatch(sVModel, True, True, mCallBack, $"${mName}_visible"$, Null)
End Sub

private Sub WatchVisibilityOnApp(C As VuetifyApp)
	C.SetWatch(sVModel, True, True, $"${mName}_visible"$, Null)
End Sub


'get the process
Sub Process(C As VueComponent) As String
	Dim sprocess As String = C.GetData("confirmkey")
	Return sprocess
End Sub

'get the process
Sub ProcessOnApp(V As VuetifyApp) As String
	Dim sprocess As String = V.GetData("confirmkey")
	Return sprocess
End Sub

'show confirm dialog
Sub Confirm(C As VueComponent, sProcess As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	sProcess = sProcess.tolowercase
	UpdateTitle(C, Title)
	UpdateMessage(C, Message)
	UpdateOkLabel(C, ConfirmText)
	UpdateCancelLabel(C, CancelText)
	UpdateOkVisible(C, True)
	UpdateCancelVisible(C, True)
	UpdateOkLoading(C, False)
	UpdateCancelLoading(C, False)
	UpdateScrollable(C, False)
	C.SetData("confirmkey", sProcess)
	UpdateVisible(C, True)
End Sub

'show confirm on app
Sub ConfirmOnApp(V As VuetifyApp, sProcess As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	sProcess = sProcess.tolowercase
	UpdateTitleOnApp(V, Title)
	UpdateMessageOnApp(V, Message)
	UpdateOkLabelOnApp(V, ConfirmText)
	UpdateCancelLabelOnApp(V, CancelText)
	UpdateOkVisibleOnApp(V, True)
	UpdateCancelVisibleOnApp(V, True)
	UpdateOkLoadingOnApp(V, False)
	UpdateCancelLoadingOnApp(V, False)
	UpdateScrollableOnApp(V, False)
	V.SetData("confirmkey", sProcess)
	UpdateVisibleOnApp(V, True)
End Sub

'show confirm dialog
Sub Alert(C As VueComponent, sProcess As String, Title As String, Message As String, ConfirmText As String)
	sProcess = sProcess.tolowercase
	UpdateTitle(C, Title)
	UpdateMessage(C, Message)
	UpdateOkLabel(C, ConfirmText)
	UpdateOkVisible(C, True)
	UpdateScrollable(C, False)
	UpdateCancelVisible(C, False)
	C.SetData("confirmkey", sProcess)
	UpdateVisible(C, True)
End Sub

'show alert on app
Sub AlertOnApp(V As VuetifyApp, sProcess As String, Title As String, Message As String, ConfirmText As String)
	sProcess = sProcess.tolowercase
	UpdateTitleOnApp(V, Title)
	UpdateMessageOnApp(V, Message)
	UpdateOkLabelOnApp(V, ConfirmText)
	UpdateOkVisibleOnApp(V, True)
	UpdateScrollableOnApp(V, False)
	UpdateCancelVisibleOnApp(V, False)
	V.SetData("confirmkey", sProcess)
	UpdateVisibleOnApp(V, True)
End Sub

'update the card text
Sub UpdateScrollable(C As VueComponent, b As Boolean)
	C.SetData(sScrollable, b)
End Sub

'update scrollable on app
Sub UpdateScrollableOnApp(C As VuetifyApp, b As Boolean)
	C.SetData(sScrollable, b)
End Sub

'update the card text
Sub UpdateMessage(C As VueComponent, vCardTextx As String)
	sCardTextCaption = vCardTextx
	C.SetData(xCardTextCaption, vCardTextx)
End Sub

'update message on app
Sub UpdateMessageOnApp(C As VuetifyApp, vCardTextx As String)
	sCardTextCaption = vCardTextx
	C.SetData(xCardTextCaption, vCardTextx)
End Sub

'update the toolbar dark status
Sub UpdateTitleDark(C As VueComponent, vDark As Boolean)
	bToolbarDark = vDark
	C.SetData(xToolBarDark, vDark)
End Sub

'update title on app
Sub UpdateTitleDarkOnApp(C As VuetifyApp, vDark As Boolean)
	bToolbarDark = vDark
	C.SetData(xToolBarDark, vDark)
End Sub

'update the toolbar color
Sub UpdateTitleColor(C As VueComponent, vColor As String, vIntensity As String)
	sToolBarColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xToolBarColor, sToolBarColor)
End Sub

'update title color on app
Sub UpdateTitleColorOnApp(C As VuetifyApp, vColor As String, vIntensity As String)
	sToolBarColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xToolBarColor, sToolBarColor)
End Sub

'update the ok color
Sub UpdateOkColor(C As VueComponent, vColor As String, vIntensity As String)
	sOkColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xOkColor, sOkColor)
End Sub

'update ok color on app
Sub UpdateOkColorOnApp(C As VuetifyApp, vColor As String, vIntensity As String)
	sOkColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xOkColor, sOkColor)
End Sub

'update the cancel color
Sub UpdateCancelColor(C As VueComponent, vColor As String, vIntensity As String)
	sCancelColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xCancelColor, sCancelColor)
End Sub

'update cancel color n app
Sub UpdateCancelColorOnApp(C As VuetifyApp, vColor As String, vIntensity As String)
	sCancelColor = VElement.BuildColor(vColor, vIntensity)
	C.SetData(xCancelColor, sCancelColor)
End Sub

'update the toolbar title
Sub UpdateTitle(C As VueComponent, vToolbarCaption As String)
	sToolbarCaption = vToolbarCaption
	C.SetData(xToolbarCaption, vToolbarCaption)
End Sub

'update title on app
Sub UpdateTitleOnApp(C As VuetifyApp, vToolbarCaption As String)
	sToolbarCaption = vToolbarCaption
	C.SetData(xToolbarCaption, vToolbarCaption)
End Sub

'add a class
Sub AddClass(s As String)
	VElement.AddClass(s)
End Sub

'add an attribute
Sub AddAttr(p As String, v As Object) 
	VElement.SetAttr(p, v)
End Sub

'add a style
Sub AddStyle(p As String, v As String)
	VElement.AddStyle(p, v)
End Sub

'remove an attribute
Sub RemoveAttr(p As String)
	VElement.RemoveAttr(p)
End Sub

'turn visibility on and off
Sub UpdateVisible(C As VueComponent, b As Boolean)
	C.SetData(sVIf, b)
	C.SetData(sVModel, b)
End Sub

'turn visibility on and off on app
Sub UpdateVisibleOnApp(vappx As VuetifyApp, b As Boolean)
	vappx.SetData(sVModel, b)
	vappx.SetData(sVIf, b)
End Sub

''get the card inside the dialog
'Sub Card As VCard
'	Dim scard As String = $"${mName}card"$
'	Dim elx As VCard
'	elx.Initialize(mCallBack, scard, scard)
'	Return elx
'End Sub

''get the toolbar
'Sub ToolBar As VToolBar
'	Dim scard As String = $"${mName}toolbar"$
'	Dim elx As VToolBar
'	elx.Initialize(mCallBack, scard, scard)
'	Return elx
'End Sub

''get the card title
'Sub CardTitle As VCardTitle
'	Dim scard As String = $"${mName}cardtitle"$
'	Dim elx As VCardTitle
'	elx.Initialize(mCallBack, scard, scard)
'	Return elx
'End Sub

'get the cancel button
Sub CancelButton As VBtn
	Dim scard As String = $"${mName}_cancel"$
	Dim elx As VBtn
	elx.Initialize(mCallBack, scard, scard)
	Return elx
End Sub

'get the ok button
Sub OkButton As VBtn
	Dim scard As String = $"${mName}_cancel"$
	Dim elx As VBtn
	elx.Initialize(mCallBack, scard, scard)
	Return elx
End Sub

'get the card text
Sub CardText As VCardText
	Dim scard As String = $"${mName}cardtext"$
	Dim elx As VCardText
	elx.Initialize(mCallBack, scard, scard)
	Return elx
End Sub

'get the card text
Sub Container As VCardText
	Dim scard As String = $"${mName}cardtext"$
	Dim elx As VCardText
	elx.Initialize(mCallBack, scard, scard)
	Return elx
End Sub

''get the card actions
'Sub CardActions As VCardActions
'	Dim scard As String = $"${mName}cardactions"$
'	Dim elx As VCardActions
'	elx.Initialize(mCallBack, scard, scard)
'	Return elx
'End Sub

'update the label of the ok button
Sub UpdateOkLabel(C As VueComponent, s As String)
	sOkCaption = s
	C.SetData(xOkCaption, sOkCaption)
End Sub

'update the label of the ok button on app
Sub UpdateOkLabelOnApp(C As VuetifyApp, s As String)
	sOkCaption = s
	C.SetData(xOkCaption, sOkCaption)
End Sub

'update the label of the cancel button
Sub UpdateCancelLabel(C As VueComponent, s As String)
	sCancelCaption = s
	C.SetData(xCancelCaption, sCancelCaption)
End Sub

'update the cancel button label on app
Sub UpdateCancelLabelOnApp(C As VuetifyApp, s As String)
	sCancelCaption = s
	C.SetData(xCancelCaption, sCancelCaption)
End Sub

'update the visibility of the ok button
Sub UpdateOkVisible(C As VueComponent, b As Boolean)
	bOkVisible = b
	C.SetData(xOkVisible, bOkVisible)
End Sub

'update the ok button visibility on app
Sub UpdateOkVisibleOnApp(C As VuetifyApp, b As Boolean)
	bOkVisible = b
	C.SetData(xOkVisible, bOkVisible)
End Sub
	
'update the loading of the ok button
Sub UpdateOkLoading(C As VueComponent, b As Boolean)
	bOkLoading = b
	C.SetData(xOkLoading, bOkLoading)
End Sub

'update ok button loading on app
Sub UpdateOkLoadingOnApp(C As VuetifyApp, b As Boolean)
	bOkLoading = b
	C.SetData(xOkLoading, bOkLoading)
End Sub	

'update the disanled of the ok button
Sub UpdateOkDisabled(C As VueComponent, b As Boolean)
	bOkDisabled = b
	C.SetData(xOkDisabled, bOkDisabled)
End Sub

'update ok button disabled on app
Sub UpdateOkDisabledOnApp(C As VuetifyApp, b As Boolean)
	bOkDisabled = b
	C.SetData(xOkDisabled, bOkDisabled)
End Sub		

'update the visibility of the cancel button
Sub UpdateCancelVisible(C As VueComponent, b As Boolean)
	bCancelVisible = b
	C.SetData(xCancelVisible, bCancelVisible)
End Sub

'update cancel button visibility on app
Sub UpdateCancelVisibleOnApp(C As VuetifyApp, b As Boolean)
	bCancelVisible = b
	C.SetData(xCancelVisible, bCancelVisible)
End Sub
	
'update the loading of the cancel button
Sub UpdateCancelLoading(C As VueComponent, b As Boolean)
	bCancelLoading = b
	C.SetData(xCancelLoading, bCancelLoading)
End Sub

'update cancel button loading on app
Sub UpdateCancelLoadingOnApp(C As VuetifyApp, b As Boolean)
	bCancelLoading = b
	C.SetData(xCancelLoading, bCancelLoading)
End Sub	

'update the disanled of the cancel button
Sub UpdateCancelDisabled(C As VueComponent, b As Boolean)
	bCancelDisabled = b
	C.SetData(xCancelDisabled, bCancelDisabled)
End Sub

'update cancel button disabled on app
Sub UpdateCancelDisabledOnApp(C As VuetifyApp, b As Boolean)
	bCancelDisabled = b
	C.SetData(xCancelDisabled, bCancelDisabled)
End Sub

'get the vmodel
Sub getVModel As String
	Return sVModel
End Sub

'get the id
Sub getID As String
	Return mName
End Sub

'get element name
Sub getHere As String
	Return $"#${mName}"$
End Sub

'bind the state
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
	'watch visibility
	WatchVisibility(VC)
End Sub

'bind the state on app
Sub BindStateOnApp(C As VuetifyApp)
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
	'watch visibility
	WatchVisibilityOnApp(C)
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
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

'is the msgbox visible
Sub IsVisible(C As VueComponent) As Boolean
	Dim res As Boolean = C.GetData(sVModel)
	Return res
End Sub

'is the msgbox visible on app
Sub IsVisibleOnApp(V As VuetifyApp) As Boolean
	Dim res As Boolean = V.GetData(sVModel)
	Return res
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

'<code>
'Dim bVisible As Boolean = inputdialog.IsVisible(component)
'If bVisible Then 
'component.refs = vuetify.GetRefs
'form.ResetValidation(component)
'End If
'</code>	
Sub Visible
	
End Sub