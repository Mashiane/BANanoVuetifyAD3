B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

#Event: Blur (e As BANanoEvent)
#Event: DblClick (e As BANanoEvent)
#Event: DblClickPrevent (e As BANanoEvent)
#Event: Click (e As BANanoEvent)
#Event: ClickStop (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)
#Event: ClickAlt (e As BANanoEvent)
#Event: ClickShift (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickAppendOuter (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: ClickPrependInner (e As BANanoEvent)
#Event: ClickClear (e As BANanoEvent)
#Event: ClickClose (e As BANanoEvent)
#Event: Focus (e As BANanoEvent)
#Event: Input (e As BANanoEvent)
#Event: RightClick (e As BANanoEvent)
#Event: TouchStartStop (e As BANanoEvent)
#Event: LeftClick (e As BANanoEvent)
#Event: Change (value As Object)
#Event: MouseMove (e As BANanoEvent)
#Event: MouseOut (e As BANanoEvent)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseDownStop (e As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: MouseOver (event As BANanoEvent)
#Event: MouseOut (event As BANanoEvent)
#Event: KeyUp (e As BANanoEvent)
#Event: KeyDown (e As BANanoEvent)
#Event: KeyPress (e As BANanoEvent)
#Event: Start (e As BANanoEvent)
#Event: End (e As BANanoEvent)
#Event: Submit (e As BANanoEvent)
#Event: KeydownEnterPrevent (e As BANanoEvent)
#Event: KeydownLeftPrevent (e As BANanoEvent)
#Event: KeydownRightPrevent (e As BANanoEvent)
#Event: KeydownSpacePrevent (e As BANanoEvent)
#Event: KeyupEnter (e As BANanoEvent)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: False, Description: 
#DesignerProperty: Key: Ref, DisplayName: Ref, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: TagName, DisplayName: Tag Name, FieldType: String, DefaultValue: div, Description: tag of the element
#DesignerProperty: Key: OverwriteTag, DisplayName: Overwrite Tag, FieldType: String, DefaultValue: , Description: over write tag of the element with
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: SetColorByAttribute, DisplayName: Set Color By Attribute, FieldType: Boolean, DefaultValue: True, Description:
#DesignerProperty: Key: LoremIpsum, DisplayName: Lorem Ipsum, FieldType: Boolean, DefaultValue: False, Description: Lorem ipsum.
#DesignerProperty: Key: ActiveClass, DisplayName: Active Class, FieldType: String, DefaultValue: , Description: ActiveClass.
#DesignerProperty: Key: Align, DisplayName: Align, FieldType: String, DefaultValue: , Description: Align, List: start|center|end|baseline|stretch|none
#DesignerProperty: Key: AlignCenter, DisplayName: Align Center, FieldType: Boolean, DefaultValue: False, Description: AlignCenter
#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: , Description: Alt
#DesignerProperty: Key: AppendIcon, DisplayName: Append Icon, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: AppendOuterIcon, DisplayName: Append Outer Icon, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Autofocus, DisplayName: Auto-focus, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: BackgroundImage, DisplayName: Background Image, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BackgroundRepeat, DisplayName: Background Repeat, FieldType: String, DefaultValue:  , Description: , List: repeat|repeat-x|repeat-y|no-repeat|initial|inherit|none
#DesignerProperty: Key: Bold, DisplayName: Bold, FieldType: Boolean, DefaultValue: False, Description: Bold
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderColor, DisplayName: BorderColor, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderStyle, DisplayName: Border Style, FieldType: String, DefaultValue:  , Description: , List: none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset|initial|inherit
#DesignerProperty: Key: BorderWidth, DisplayName: Border Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BuildGrid, DisplayName: Build Grid, FieldType: Boolean, DefaultValue: False, Description: BuildGrid
#DesignerProperty: Key: ShowGridDesign, DisplayName: Show Grid Design, FieldType: Boolean, DefaultValue: False, Description: ShowGridDesign
#DesignerProperty: Key: Rows, DisplayName: Rows, FieldType: String, DefaultValue: , Description: Rows
#DesignerProperty: Key: Columns, DisplayName: Columns, FieldType: String, DefaultValue: , Description: Columns
#DesignerProperty: Key: OffSets, DisplayName: OffSets XSMLX, FieldType: String, DefaultValue: xs=?; s=?; m=?; l=?; x=? , Description: OffSets SMLX
#DesignerProperty: Key: Sizes, DisplayName: Sizes XSMLX, FieldType: String, DefaultValue: xs=?; s=?; m=?; l=?; x=?, Description: Sizes SMLX
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margin AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins AXYSMLX
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Padding AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding AXYSMLX

#DesignerProperty: Key: Center, DisplayName: Center, FieldType: Boolean, DefaultValue: False, Description: Center
#DesignerProperty: Key: Circle, DisplayName: Circle, FieldType: Boolean, DefaultValue: False, Description: Circle
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Clipped, DisplayName: Clipped, FieldType: Boolean, DefaultValue: False, Description: Clipped 
#DesignerProperty: Key: ClippedLeft, DisplayName: ClippedLeft, FieldType: Boolean, DefaultValue: False, Description: Clipped Left
#DesignerProperty: Key: ClippedRight, DisplayName: ClippedRight, FieldType: Boolean, DefaultValue: False, Description: Clipped Right

#DesignerProperty: Key: Counter, DisplayName: Counter, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: CoverImage, DisplayName: Cover Image Src, FieldType: String, DefaultValue:  , Description: CoverImage
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
#DesignerProperty: Key: DataSource, DisplayName: Data Source, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FillHeight, DisplayName: Fill Height, FieldType: Boolean, DefaultValue: False, Description: FillHeight
#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: FitScreen, DisplayName: Fit Screen VH, FieldType: Boolean, DefaultValue: False, Description: FitScreen VH
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Float, DisplayName: Float, FieldType: String, DefaultValue:  , Description: , List: left|right|none
#DesignerProperty: Key: Fluid, DisplayName: Fluid, FieldType: Boolean, DefaultValue: False, Description: Fluid
#DesignerProperty: Key: FontFamily, DisplayName: Font Family, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FontStyle, DisplayName: Font Style, FieldType: String, DefaultValue:  , Description: , List: normal|italic|oblique|initial|inherit|none
#DesignerProperty: Key: FontWeight, DisplayName: Font Weight, FieldType: String, DefaultValue:  , Description: , List: normal|bold|bolder|lighter|initial|inherit|none
#DesignerProperty: Key: FullScreen, DisplayName: Full Screen On Mobile, FieldType: Boolean, DefaultValue: False, Description: FullScreen Mobile
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: HiddenMDAndUp, DisplayName: Hidden MD And Up, FieldType: Boolean, DefaultValue: False, Description: HiddenMDAndUp
#DesignerProperty: Key: HiddenSMAndDown, DisplayName: Hidden SM And Down, FieldType: Boolean, DefaultValue: False, Description: HiddenSMAndDown
#DesignerProperty: Key: HideDetails, DisplayName: Hide Details, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: , Description: Input type, List: text|email|password|file|tel|url|number|search|none|success|info|warning|error
#DesignerProperty: Key: Italic, DisplayName: Italic, FieldType: Boolean, DefaultValue: False, Description: Italic
#DesignerProperty: Key: ItemText, DisplayName: Item Text, FieldType: String, DefaultValue: , Description: 
#DesignerProperty: Key: ItemValue, DisplayName: Item Value, FieldType: String, DefaultValue: , Description: 
#DesignerProperty: Key: Items, DisplayName: Items, FieldType: String, DefaultValue: , Description: 
#DesignerProperty: Key: Justify, DisplayName: Justify, FieldType: String, DefaultValue: , Description: Justify, List: start|center|end|space-around|space-between|none
#DesignerProperty: Key: JustifyCenter, DisplayName: Justify Center, FieldType: Boolean, DefaultValue: False, Description: JustifyCenter
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label of the element

#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: NoGutter, DisplayName: No Gutters, FieldType: Boolean, DefaultValue: False, Description: NoGutter

#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False , Description: 

#DesignerProperty: Key: PersistentHint, DisplayName: Persistent Hint, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PrependIcon, DisplayName: Prepend Icon, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PrependInnerIcon, DisplayName: Prepend Inner Icon, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ReturnObject, DisplayName: Return Object, FieldType: Boolean, DefaultValue: False, Description: 
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False , Description: 

#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue:  , Description: Rules
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False , Description: 

#DesignerProperty: Key: SingleLine, DisplayName: Single Line, FieldType: Boolean, DefaultValue: False , Description: 

#DesignerProperty: Key: Slot, DisplayName: Slot, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Solo, DisplayName: Solo, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String, use =
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: StyleHeight, DisplayName: Style Height, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: StyleMaxHeight, DisplayName: Style Max Height, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: StyleMaxWidth, DisplayName: Style Max Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: StyleWidth, DisplayName: Style Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue:  , Description: , List: left|center|right|justify|none
#DesignerProperty: Key: TextDecoration, DisplayName: Text Decoration, FieldType: String, DefaultValue:  , Description: , List: none|underline|line-through|overline
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VBindClass, DisplayName: V-Bind-Class, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VBindStyle, DisplayName: V-Bind-Style, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElse, DisplayName: V-Else, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElseIf, DisplayName: V-Else-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VHtml, DisplayName: V-Html, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VModel, DisplayName: V-Model, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VSlotActivator, DisplayName: V-Slot-Activator, FieldType: String, DefaultValue: , Description: Slot activator
#DesignerProperty: Key: VSlotDefault, DisplayName: V-Slot-Default, FieldType: String, DefaultValue: , Description: Slot default
#DesignerProperty: Key: VText, DisplayName: V-Text, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value on the element
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue:  , Description: 

#DesignerProperty: Key: OnClick, DisplayName: On Click, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickStop, DisplayName: On Click Stop, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnChange, DisplayName: On Change, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnDblClick, DisplayName: On Dbl Click, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnMouseMove, DisplayName: On Mouse Move, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnMouseOut, DisplayName: On Mouse Out, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnKeyUp, DisplayName: On KeyUp, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnKeyPress, DisplayName: On KeyPress, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickAlt, DisplayName: On ClickAlt, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickShift, DisplayName: On ClickShift, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickPrevent, DisplayName: On ClickPrevent, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.


Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private stActiveClass As String = ""
	Private mStyle As String = ""
	Private mAttributes As String = ""
	Private mCaption As String = ""
	Private classList As Map
	Private styleList As Map
	Private attributeList As Map
	Private mTagName As String = "div"
	Private mOverwriteTag As String = ""
	Private sbText As StringBuilder
	Private mStates As String
	Public bindings As Map
	Public methods As Map
	Private eOnClick As String = ""
	Private eOnClickStop As String = ""
	Private eOnDblClick As String = ""
	Private eOnChange As String = ""
	Private eOnClickAlt As String = ""
	Private eOnClickShift As String = ""
	Private eOnClickPrevent As String = ""
	Private eOnKeyPress As String = ""
	Private eOnMouseMove As String = ""
	Private eOnKeyUp As String = ""
	Private eOnMouseOut As String = ""
	Private stKey As String = ""
	Private stRef As String = ""
	Private stSlot As String = ""
	Private stVBindClass As String = ""
	Private stVBind As String = ""
	Private stVBindStyle As String = ""
	Private stVElse As String = ""
	Private stVElseIf As String = ""
	Private stVFor As String = ""
	Private stDataSource As String = ""
	Private stVHtml As String = ""
	Private stValue As String = ""
	Private stVIf As String = ""
	Private stVModel As String = ""
	Private bSetColorByAttribute As Boolean = True
	Private stVShow As String = ""
	Private stVText As String = ""
	Private stBackgroundColor As String = ""
	Private stBackgroundImage As String = ""
	Private stBackgroundRepeat As String = ""
	Private stBorder As String = ""
	Private stBorderColor As String = ""
	Private stBorderRadius As String = ""
	Private stBorderStyle As String = ""
	Private stBorderWidth As String = ""
	Private stColor As String = ""
	Private stColorIntensity As String = "normal"
	Private stTextColor As String = ""
	Private stTextColorIntensity As String = "normal"
	Private stFontFamily As String = ""
	Private stFontSize As String = ""
	Private stFontStyle As String = ""
	Private stFontWeight As String = ""
	Private stHeight As String = ""
	Private stMaxHeight As String = ""
	Private stMaxWidth As String = ""
	Private stTextAlign As String = ""
	Private stTextDecoration As String = ""
	Private stLabel As String = ""
	Private stWidth As String = ""
	Private bLoremIpsum As Boolean = False
	Private bDark As Boolean = False
	Private stInputType As String = ""
	Private stHref As String = ""
	Private stVSlotActivator As String = ""
	Private stVSlotDefault As String = ""
	Private bHiddenMDAndUp As Boolean = False
	Private stTo As String = ""
	Private bHiddenSMAndDown As Boolean = False
	Private bJustifyCenter As Boolean = False
	Private bFitScreen As Boolean = False
	Private bFullScreen As Boolean = False
	Private bAlignCenter As Boolean = False
	Private bFillHeight As Boolean = False
	Private stJustify As String = ""
	Private stAlign As String = ""
	Private stRules As String = ""
	Private stCoverImage As String = ""
	Private stAppendIcon As String = ""
	Private stAppendOuterIcon As String = ""
	Private boAutofocus As Boolean = False
	Private boClearable As Boolean = False
	Private bNoGutter As Boolean = False
	Private stCounter As String = ""
	Private boDense As Boolean = False
	Private stDisabled As String = ""
	Private boFilled As Boolean = False
	Private boFlat As Boolean = False
	Private boHideDetails As Boolean = False
	Private stHint As String = ""
	Private boOutlined As Boolean = False
	Private boPersistentHint As Boolean = False
	Private stPlaceholder As String = ""
	Private stPrependIcon As String = ""
	Private stPrependInnerIcon As String = ""
	Private stReadonly As String = ""
	Private stRequired As String = ""
	Private boRounded As Boolean = False
	Private boShaped As Boolean = False
	Private boSingleLine As Boolean = False
	Private boSolo As Boolean = False
	Private stOffSets As String = "xs=?; s=?; m=?; l=?; x=?"
	Private stSizes As String = "xs=?; s=?; m=?; l=?; x=?"
	Private stPaddingAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private stMarginAXYTBLR As String = "a=?; x=?; y=?; t=?; b=?; l=?; r=?"
	Private bFluid As Boolean = False
	Private bBuildGrid As Boolean = False
	Private bShowGridDesign As Boolean = False
	Private stRows As String = ""
	Private stColumns As String = ""
	Private stStyleHeight As String = ""
	Private stStyleWidth As String = ""
	Private stStyleMaxHeight As String = ""
	Private stStyleMaxWidth As String = ""
	Private stSrc As String = ""
	Private stAlt As String = ""
	Private stVOn As String = ""
	Private stItemText As String = ""
	Private stItemValue As String
	Private stItems As String
	Private bReturnObject As Boolean = False
	Private bBold As Boolean = False
	Private bItalic As Boolean = False
	Private bCircle As Boolean = False
	Private bCenter As Boolean = False
	Private stFloat As String = ""
	Private stElevation As String = ""
	Private bApp As Boolean = False
	Private bClipped As Boolean = False
	Private bClippedLeft As Boolean = False
	Private bClippedRight As Boolean = False
	'
	Type VueGridRow(Rows As Int, Columns As List, _
	ma As String, mx As String, my As String, mt As String, mb As String, mr As String, ml As String, _
	pa As String, px As String, py As String, pt As String, pb As String, pr As String, pl As String)
	
	Type VueGridColumn(Columns As Int, xs As String, sm As String, md As String, lg As String, xl As String, _
	ofxs As String, ofsm As String, ofmd As String, oflg As String, ofxl As String, _
	ma As String, mx As String, my As String, mt As String, mb As String, mr As String, ml As String, _
	pa As String, px As String, py As String, pt As String, pb As String, pr As String, pl As String)
	'this will hold all our rows
	Private GridRows As Map
	'this will hold temporal columns
	Private GridColumns As Map
	'this will hold each row definition
	'hold our last row
	Private LastRow As Int
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	Public Records As List
	Public Steps As Int
	Private ntxRow As Int
	Private mRouterReplace As Boolean
	Private mRouterAppend As Boolean
	Public HasRules As Boolean
	Public Options As ListViewItemOptions
	Public Gradients As List
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.ToLowerCase
	mEventName = EventName.ToLowerCase
	mName = mName.Replace("#","")
	mEventName = mEventName.Replace("#","")
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	sbText.Initialize
	bindings.Initialize
	methods.Initialize
	Steps = 0
	HasRules = False
	Gradients.Initialize 
	'
	LastRow = 0
	GridRows.Initialize
	GridColumns.Initialize
	'
	If mName <> "" Then
		Dim fKey As String = $"#${mName}"$
		If BANano.Exists(fKey) Then 
			mElement = BANano.GetElement(fKey)
		End If
	End If
	Records.Initialize
	ntxRow = 0
	mRouterReplace = False
	mRouterAppend = False
End Sub

Sub AddGradient(lst As List)
	Gradients.Add(lst)
End Sub

Sub ClearGradients
	Gradients.Initialize 
End Sub

Sub NewListViewItemOptions
	Options.Initialize
	Options.datasource = ""
	Options.key = "id"
	Options.url  = "to"
	Options.lefticon  = "lefticon"
	Options.lefticoncolor  = "lefticoncolor"
	Options.lefticonclass  = ""
	'
	Options.avatar  = "avatar"
	Options.avatarclass  = ""
	
	Options.avataricon  = "avataricon"
	Options.avatariconcolor  = "avatariconcolor"
	Options.avatariconclass  = ""
	
	Options.icon  = "icon"
	Options.iconclass  = ""
	Options.iconcolor  = "iconcolor"
	
	Options.title  = "title"
	Options.subtitle  = "subtitle"
	Options.subtitle1  = "subtitle1"
	'
	Options.righticon  = "righticon"
	Options.righticonclass  = ""
	Options.righttext  = "righttext"
	Options.righticoncolor  = "righticoncolor"
	Options.activeclass = ""
	'
	Options.rightcheckbox = "rightcheckbox"
	Options.leftcheckbox = "leftcheckbox"
	Options.showleftcheckboxes = False
	Options.showrightcheckboxes = False
	'
	Options.rightrating = "rightrating"
	Options.rightratingcolor = "rightratingcolor"
	Options.showrightrating = False
	'
	Options.leftswitch = "leftswitch"
	Options.showleftswitches = False
	'
	Options.rightswitch = "rightswitch"
	Options.showrightswitches = False
	Options.switchinset = False
	Options.itemavatarclass = ""
	'
	Options.rightchip = "rightchip"
	Options.rightchipcolor = "rightchipcolor"
	
	Options.lefticonattr = ""
	Options.avatarattr = ""
	Options.avatariconattr = ""
	Options.righticonattr = ""
	Options.righttextattr = ""
	Options.rightcheckboxattr = ""
	Options.leftcheckboxattr = ""
	Options.rightratingattr = ""
	Options.leftswitchattr = ""
	Options.rightswitchattr = ""
	Options.rightchipattr = ""
	Options.iconattr = ""
	Options.hasdivider = False
	Options.insetdivider = False
	'
	Options.rightavatar = "rightavatar"
	Options.rightavatarclass = ""
	Options.rightavataricon = "rightavataricon"
	Options.rightavatariconcolor = "rightavatariconcolor"
	Options.rightavatariconclass = ""
	Options.rightavatarattr = ""
	Options.rightavatariconattr = ""
	Options.rightitemavatarclass = ""
	'
	Options.avatartext = "avatartext"
	Options.rightavatartext = "rightavatartext"
	Options.avatartextcolor = "avatartextcolor"
	Options.rightavatartextcolor = "rightavatartextcolor"
	Options.avatartextclass = ""
	Options.rightavatartextclass = ""
End Sub

'generate the next row
Sub NextRow As Int
	ntxRow = ntxRow + 1
	Return ntxRow
End Sub

'get the current row
Sub ThisRow As Int
	Return ntxRow
End Sub

'in lists replace routers
Sub setRouterReplace(b As Boolean)
	mRouterReplace = b
End Sub

'in lists append routers
Sub setRouterAppend(b As Boolean)
	mRouterAppend = b
End Sub

'add a list view item
Sub AddItemParentChild(parent As String, key As String, iconName As String, iconColor As String, title As String, url As String)
	parent = parent.ToLowerCase
	key = key.ToLowerCase
	'
	Dim nitem As Map = CreateMap()
	nitem.Put("id", key)
	nitem.Put("icon", iconName)
	nitem.Put("iconcolor", iconColor)
	nitem.Put("title", title)
	nitem.Put("to", url)
	nitem.Put("parentid", parent)
	'
	If mRouterReplace Then
		nitem.put("replace", True)
	End If
	'
	If mRouterAppend Then
		nitem.put("append", True)
	End If
	
	Records.Add(nitem)
End Sub

'the url should be replaced
Sub ListViewSetReplace(itemID As String)
	Dim m As Map = CreateMap()
	m.Put("replace", True)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
End Sub

'the url should be appended
Sub ListViewSetAppend(itemID As String)
	Dim m As Map = CreateMap()
	m.Put("append", True)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
End Sub


'update an icon in the list
Sub ListViewSetIcon(itemID As String, sIcon As String)
	Dim m As Map = CreateMap()
	m.Put("icon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
End Sub

'update an iconcolor in the list
Sub ListViewSetIconColor(itemID As String, sIcon As String)
	Dim m As Map = CreateMap()
	m.Put("iconcolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

'get an embedded avatar
Sub GetStepperHeaders As VueElement
	Dim avarID As String = $"${mName}headers"$
	Return GetVueElement(avarID)
End Sub

'get an embedded avatar
Sub GetStepperItems As VueElement
	Dim avarID As String = $"${mName}items"$
	Dim elx As VueElement = GetVueElement(avarID)
	Return elx
End Sub

'add step to a horizontal stepper
Sub AddStepHorizontal(stepID As String, stepLabel As String, stepComplete As String, stepEditable As String, bHasDivider As Boolean) As VueElement
	Steps = Steps + 1
	Dim parentID As String = mName
	stepID = stepID.ToLowerCase
	'
	Dim stepperHeader As String = $"${parentID}headers"$
	Dim stepperItems As String = $"${parentID}items"$
	'
	Dim childKey As String = $"${parentID}${stepID}"$
	'
	Dim childHeaderKey As String = $"${childKey}hdr"$
	Dim childContentKey As String = $"${childKey}cnt"$
	'the element we can add content to
	'
	stepperHeader = CleanID(stepperHeader)
	stepperItems = CleanID(stepperItems)
	
	'add child to header
	Dim vstepperstep As VueElement = AddVueElement2(stepperHeader, childHeaderKey, "v-stepper-step", Null)
	vstepperstep.AddAttr("step", Steps)
	If stepComplete <> "" Then 
		vstepperstep.AddAttr("complete", stepComplete)
	End If
	vstepperstep.Caption = stepLabel
	If stepEditable <> "" Then 
		vstepperstep.AddAttr("editable", stepEditable)
	End If
	'
	If bHasDivider Then
		GetVueElement(stepperHeader).AddDivider
	End If
		
	Dim vsteppercontent As VueElement = AddVueElement2(stepperItems, childContentKey, "v-stepper-content", Null)
	vsteppercontent.AddAttr("step", Steps)
	'
	vsteppercontent.BindVueElement(vstepperstep)
	Return vsteppercontent
End Sub

Sub GetVueElement(elID As String) As VueElement
	elID = CleanID(elID)
	If BANano.Exists(elID) Then
		Dim ve As VueElement
		ve.Initialize(mCallBack, elID, elID)
		Return ve
	Else
		Return Null
	End If
End Sub

'add step to a vertical stepper
Sub AddStep(stepID As String, stepLabel As String, stepComplete As String, stepEditable As String) As VueElement
	Steps = Steps + 1
	Dim parentID As String = mName
	stepID = stepID.ToLowerCase
	
	Dim childKey As String = $"${parentID}${stepID}"$
	'
	Dim childHeaderKey As String = $"${childKey}hdr"$
	Dim childContentKey As String = $"${childKey}cnt"$
	'the element we can add content to
	parentID = CleanID(parentID)
	
	'add child to header
	Dim vstepperstep As VueElement = AddVueElement2(parentID, childHeaderKey, "v-stepper-step", Null)
	vstepperstep.AddAttr("step", Steps)
	If stepComplete <> "" Then vstepperstep.AddAttr("complete", stepComplete)
	vstepperstep.Caption = stepLabel
	If stepEditable <> "" Then vstepperstep.AddAttr("editable", stepEditable)
		
	Dim vsteppercontent As VueElement = AddVueElement2(parentID, childContentKey, "v-stepper-content", Null)
	vsteppercontent.AddAttr("step", Steps)
	'
	vsteppercontent.BindVueElement(vstepperstep)
	Return vsteppercontent
End Sub

Sub AddTab(tabID As String, Caption As String, Icon As String, IconOnLeft As Boolean) As VueElement
	tabID = tabID.ToLowerCase
	Dim tabE As VueElement
	Dim vIcon As VueElement
	'add the tab 
	tabE = AddVueElement(tabID, "v-tab", Null)
	tabE.Href = "#tab" & tabID
	tabE.Key = tabID
	tabE.Value = tabID
	If Icon <> "" Then
		If IconOnLeft Then
			vIcon = tabE.AddVueElement($"${tabID}icon"$, "v-icon",Null)
			vIcon.left = True
			vIcon.SetText(Icon)
			tabE.Append(Caption)
		Else
			tabE.Append(Caption)
			vIcon = tabE.AddVueElement($"${tabID}icon"$, "v-icon",Null)
			vIcon.SetText(Icon)
		End If
	Else	
		tabE.SetText(Caption)
	End If
	'add the tab item
	Dim ti As VueElement = AddVueElement($"tab${tabID}"$, "v-tab-item", Null)
	ti.Key = "tab" & tabID
	Return tabE
End Sub


'get a tab item
Sub GetTabItem() As VueElement
	Dim tabID As String = $"tab${mName}"$
	Return GetVueElement(tabID)
End Sub

'get a tab icon
Sub GetTabIcon() As VueElement
	Dim tabID As String = $"${mName}icon"$
	Return GetVueElement(tabID)
End Sub

'<code>
'Dim panel1 As VueElement = Vuetify.AddExpansionPanel("panel1", "Panel 1")
'vuetify.BindVueElement(panel1)
'
''trap panel change event
'Sub panel1_change(e As BANanoEvent)
'End Sub
'
''trap panel click event
'Sub panel1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddExpansionPanel(elID As String, HeaderCaption As String) As VueElement
	elID = elID.Replace("#","")
	elID = elID.ToLowerCase
	'
	Dim panelHdr As String = $"${elID}header"$
	Dim panelCnt As String = $"${elID}content"$
	'
	Dim pnl As VueElement = AddVueElement2(mName, elID, "v-expansion-panel", Null)
	pnl.BindAllEvents
	'
	Dim hdr As VueElement = AddVueElement2(elID, panelHdr, "v-expansion-panel-header", Null)
	hdr.caption = HeaderCaption
	'
	Dim cnt As VueElement = AddVueElement2(elID, panelCnt, "v-expansion-panel-content", Null)
	'
	BindVueElement(pnl)
	BindVueElement(hdr)
	BindVueElement(cnt)
	Return cnt
End Sub

Sub GetExpansionPanel As VueElement
	Dim elx As VueElement = GetVueElement(mName)
	Return elx
End Sub

Sub GetExpansionPanelHeader As VueElement
	Dim hdr As String = $"${mName}header"$
	Dim elx As VueElement = GetVueElement(hdr)
	Return elx
End Sub

Sub GetExpansionPanelContent As VueElement
	Dim hdr As String = $"${mName}content"$
	Dim elx As VueElement = GetVueElement(hdr)
	Return elx
End Sub


Sub setTextCenter(b As Boolean)
	AddClass("text-center")
End Sub

Sub setDisplay2(b As Boolean)
	AddClass("display-2")
End Sub

Sub setDisplay1(b As Boolean)
	AddClass("display-1")
End Sub

Sub setDisplay3(b As Boolean)
	AddClass("display-3")
End Sub

Sub setDisplay4(b As Boolean)
	AddClass("display-4")
End Sub

Sub setHeading(b As Boolean)
	AddClass("heading")
End Sub

Sub setSubHeading(b As Boolean)
	AddClass("subheading")
End Sub

Sub setHeadLine(b As Boolean)
	AddClass("headline")
End Sub

Sub setTitle(b As Boolean)
	AddClass("title")
End Sub


Sub setBody1(b As Boolean)
	AddClass("body-1")
End Sub

Sub setBody2(b As Boolean)
	AddClass("body-2")
End Sub

Sub setSubTitle1(b As Boolean)
	AddClass("subtitle-1")
End Sub

Sub setSubTitle2(b As Boolean)
	AddClass("subtitle-2")
End Sub

Sub setCaptionClass(b As Boolean)
	AddClass("caption")
End Sub

Sub setGrow(b As Boolean)
	AddAttr(":grow", b)
End Sub

Sub setHideSlider(b As Object)
	AddAttr(":hide-slider", b)
End Sub

Sub setCentered(b As Boolean)
	AddAttr(":centered", b)
End Sub

Sub setAlignWithTitle(b As Boolean)
	AddAttr(":align-with-title", b)
End Sub

Sub setIconsAndText(b As Boolean)
	AddAttr(":icons-and-text",b)
End Sub


Sub setAccordion(b As Boolean)
	AddAttr(":accordion",b)
End Sub

Sub setButtonIcon(b As Boolean)
	AddAttr(":icon", b)
End Sub

Sub setFocusable(b As Boolean)
	AddAttr(":focusable",b)
End Sub

Sub setHover(b As Boolean)
	AddAttr(":hover",b)
End Sub

Sub setInset(b As Boolean)
	AddAttr(":inset",b)
End Sub


Sub setPopOut(b As Boolean)
	AddAttr(":popout",b)
End Sub


Sub setTile(b As Boolean)
	AddAttr(":tile",b)
End Sub


Sub setShowArrows(b As Boolean)
	AddAttr(":show-arrows", b)
End Sub

Sub setSliderColor(s As String)
	AddAttr("slider-color", s)
End Sub

Sub setSliderSize(s As String)
	AddAttr("slider-size", s)
End Sub

Sub setFixedTabs(b As Boolean)
	AddAttr(":fixed-tabs", b)
End Sub

Sub setItalic(b As Boolean)
	AddStyleOnConditionTrue("font-style",  "italic", b)
	bItalic = b
End Sub

Sub getItalic As Boolean
	Return bItalic
End Sub

Sub setBold(b As Boolean)
	AddStyleOnConditionTrue("font-weight", "bold", b)
	bBold = b
End Sub

Sub getBold As Boolean
	Return bBold
End Sub

Sub setFloat(varValue As String)
	If BANano.IsNull(varValue) Then varValue = ""
	stFloat = varValue
	AddStyleOnCondition("float", "left", stFloat)
	AddStyleOnCondition("float", "right", stFloat)
End Sub

Sub getFloat As String
	Return stFloat
End Sub

Sub setCircle(b As Boolean)
	AddStyleOnConditionTrue("border-radius", "50%", b)
	bCircle = b
End Sub

Sub getCircle As Boolean
	Return bCircle
End Sub

Sub setCenter(b As Boolean)
	bCenter = b
	AddStyleOnConditionTrue("text-align", "center", bCenter)
End Sub

Sub getCenter As Boolean
	Return bCenter
End Sub

Sub Shrink
	AddClass("shrink")
End Sub


'add an attr on condition
public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object)
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe <> varCondition Then Return
	AddStyle(varClass, varCondition)
End Sub

public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe Then AddStyle(varClass, varCondition)
End Sub

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		bApp = Props.Get("App")
		bLoremIpsum = Props.Get("LoremIpsum")
		bDark = Props.Get("Dark")
		mClasses = Props.Get("Classes")
		stActiveClass = Props.Get("ActiveClass")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mTagName = Props.Get("TagName")
		mOverwriteTag = Props.get("OverwriteTag")
		mCaption = Props.Get("Caption")
		mStates = Props.Get("States")
		eOnClick = Props.Get("OnClick")
		eOnClickStop = Props.Get("OnClickStop")
		eOnChange = Props.Get("OnChange")
		eOnDblClick = Props.Get("OnDblClick")
		eOnClickAlt = Props.Get("OnClickAlt")
		eOnClickShift = Props.Get("OnClickShift")
		eOnClickPrevent = Props.Get("OnClickPrevent")
		eOnKeyPress = Props.Get("OnKeyPress")
		eOnMouseMove = Props.Get("OnMouseMove")
		eOnKeyUp = Props.Get("OnKeyUp")
		eOnMouseOut = Props.Get("OnMouseOut")
		stKey = Props.Get("Key")
		stRef = Props.Get("Ref")
		stSlot = Props.Get("Slot")
		stVBindClass = Props.Get("VBindClass")
		stVBind = Props.Get("VBind")
		stVBindStyle = Props.Get("VBindStyle")
		stVElse = Props.Get("VElse")
		stVElseIf = Props.Get("VElseIf")
		stVFor = Props.Get("VFor")
		stDataSource = Props.Get("DataSource")
		stVHtml = Props.Get("VHtml")
		stVIf = Props.Get("VIf")
		stVModel = Props.Get("VModel")
		stVShow = Props.Get("VShow")
		stVText = Props.Get("VText")
		stValue = Props.get("Value")
		stBackgroundColor = Props.Get("BackgroundColor")
		stBackgroundImage = Props.Get("BackgroundImage")
		stBackgroundRepeat = Props.Get("BackgroundRepeat")
		stBorder = Props.Get("Border")
		stBorderColor = Props.Get("BorderColor")
		stBorderRadius = Props.Get("BorderRadius")
		stBorderStyle = Props.Get("BorderStyle")
		stBorderWidth = Props.Get("BorderWidth")
		stColor = Props.Get("Color")
		stColorIntensity = Props.Get("ColorIntensity")
		stTextColor = Props.Get("TextColor")
		stTextColorIntensity = Props.Get("TextColorIntensity")
		stFontFamily = Props.Get("FontFamily")
		stFontSize = Props.Get("FontSize")
		stFontStyle = Props.Get("FontStyle")
		stFontWeight = Props.Get("FontWeight")
		stHeight = Props.Get("Height")
		stMaxHeight = Props.Get("MaxHeight")
		stMaxWidth = Props.Get("MaxWidth")
		stTextAlign = Props.Get("TextAlign")
		stTextDecoration = Props.Get("TextDecoration")
		stLabel = Props.Get("Label")
		stWidth = Props.Get("Width")
		stInputType = Props.Get("InputType")
		stHref = Props.Get("Href")
		stVSlotActivator = Props.get("VSlotActivator")
		stVSlotDefault = Props.Get("VSlotDefault")
		bHiddenMDAndUp = Props.Get("HiddenMDAndUp")
		stTo = Props.get("To")
		bHiddenSMAndDown = Props.Get("HiddenSMAndDown")
		bJustifyCenter = Props.Get("JustifyCenter")
		bFitScreen = Props.Get("FitScreen")
		bFullScreen = Props.Get("FullScreen")
		stJustify = Props.get("Justify")
		stAlign = Props.get("Align")
		bAlignCenter = Props.Get("AlignCenter")
		bFillHeight = Props.Get("FillHeight")
		stRules = Props.Get("Rules")
		stCoverImage = Props.Get("CoverImage")
		stAppendIcon = Props.Get("AppendIcon")
		stAppendOuterIcon = Props.Get("AppendOuterIcon")
		boAutofocus = Props.Get("Autofocus")
		boClearable = Props.Get("Clearable")
		stCounter = Props.Get("Counter")
		boDense = Props.Get("Dense")
		stDisabled = Props.Get("Disabled")
		boFilled = Props.Get("Filled")
		boFlat = Props.Get("Flat")
		boHideDetails = Props.Get("HideDetails")
		stHint = Props.Get("Hint")
		boOutlined = Props.Get("Outlined")
		boPersistentHint = Props.Get("PersistentHint")
		stPlaceholder = Props.Get("Placeholder")
		stPrependIcon = Props.Get("PrependIcon")
		stPrependInnerIcon = Props.Get("PrependInnerIcon")
		stReadonly = Props.Get("Readonly")
		stRequired = Props.Get("Required")
		boRounded = Props.Get("Rounded")
		boShaped = Props.Get("Shaped")
		boSingleLine = Props.Get("SingleLine")
		boSolo = Props.Get("Solo")
		stSizes = Props.Get("Sizes")
		stPaddingAXYTBLR = Props.Get("PaddingTBLR")
		stMarginAXYTBLR = Props.Get("MarginAXYTBLR")
		stOffSets = Props.Get("OffSets")
		bFluid = Props.Get("Fluid")
		bBuildGrid = Props.get("BuildGrid")
		stRows = Props.Get("Rows")
		stColumns = Props.get("Columns")
		bShowGridDesign = Props.get("ShowGridDesign")
		stStyleHeight = Props.get("StyleHeight")
		stStyleWidth = Props.get("StyleWidth")
		stStyleMaxHeight = Props.get("StyleMaxHeight")
		stStyleMaxWidth = Props.get("StyleMaxWidth")
		stSrc = Props.get("Src")
		stAlt = Props.Get("Alt")
		stVOn = Props.Get("VOn")
		stItemText = Props.Get("ItemText")
		stItemValue = Props.Get("ItemValue")
		stItems = Props.Get("Items")
		bReturnObject = Props.Get("ReturnObject")
		bBold = Props.Get("Bold")
		bItalic = Props.Get("Italic")
		bCircle = Props.Get("Circle")
		bCenter = Props.Get("Center")
		stFloat = Props.Get("Float")
		bSetColorByAttribute = Props.get("SetColorByAttribute")
		stElevation = Props.Get("Elevation")
		bNoGutter = Props.Get("NoGutter")
		bClipped = Props.Get("Clipped")
		bClippedLeft = Props.Get("ClippedLeft")
		bClippedRight = Props.Get("ClippedRight")
	End If
	
	setClippedRight(bClippedRight)
	setClipped(bClipped)
	setClippedLeft(bClippedLeft)
	setElevation(stElevation)
	setApp(bApp)
	AddStyleOnConditionTrue("font-weight", "bold", bBold)
	AddStyleOnConditionTrue("font-style",  "italic", bItalic)
	AddStyleOnConditionTrue("border-radius", "50%", bCircle)
	AddStyleOnConditionTrue("text-align", "center", bCenter)
	AddStyleOnCondition("float", "left", stFloat)
	AddStyleOnCondition("float", "right", stFloat)
	'
	AddAttrOnConditionTrue(":no-gutters", bNoGutter, True)
	AddAttrOnCondition(":return-object", bReturnObject, True)
	AddAttr("item-text", stItemText)
	AddAttr("item-value", stItemValue)
	setItems(stItems)
	AddAttr("tag", mOverwriteTag)
	AddAttr("v-on", stVOn)
	AddAttr("src", stSrc)
	AddAttr("alt", stAlt)
	AddAttrOnCondition(":fluid", bFluid, True)
	setRules(stRules)
	AddAttr("to", stTo)
	AddAttrOnCondition(":dark", bDark, True)
	AddAttr("v-slot:activator", stVSlotActivator)
	AddAttr("v-slot:default", stVSlotDefault)
	AddAttr("href", stHref)
	AddAttr("key", stKey)
	AddAttr("ref", stRef)
	AddAttr("slot", stSlot)
	AddAttr("v-bind", stVBind)
	AddAttr("v-bind:class", stVBindClass)
	AddAttr("v-bind:style", stVBindStyle)
	AddAttr("value", stValue)
	AddAttr("v-else", stVElse)
	AddAttr("v-else-if", stVElseIf)
	AddAttr("v-for", stVFor)
	AddAttr("v-html", stVHtml)
	AddAttr("v-if", stVIf)
	AddAttr("label", stLabel)
	setVModel(stVModel)
	setVShow(stVShow)
	AddAttr("v-text", stVText)
	AddStyle("background-color", stBackgroundColor)
	AddStyle("background-image", stBackgroundImage)
	AddStyle("background-repeat", stBackgroundRepeat)
	AddStyle("border", stBorder)
	AddStyle("border-color", stBorderColor)
	AddStyle("border-radius", stBorderRadius)
	AddStyle("border-style", stBorderStyle)
	AddStyle("border-width", stBorderWidth)
	
	AddAttrOnConditionTrue("color", stColor, bSetColorByAttribute)
	
	setColor(stColor)
	setColorIntensity(stColorIntensity)
	setTextColor(stTextColor)
	setTextColorIntensity(stTextColorIntensity)
		
	AddStyle("font-family", stFontFamily)
	AddStyle("font-size", stFontSize)
	AddStyle("font-style", stFontStyle)
	AddStyle("font-weight", stFontWeight)
	'
	AddAttr("height", stHeight)
	AddAttr("max-height", stMaxHeight)
	AddAttr("width", stWidth)
	AddAttr("max-width", stMaxWidth)
	'
	AddStyle("height", stStyleHeight)
	AddStyle("max-height", stStyleMaxHeight)
	AddStyle("width", stStyleWidth)
	AddStyle("max-width", stStyleMaxWidth)
	'
	AddStyle("text-align", stTextAlign)
	AddStyle("text-decoration", stTextDecoration)
	AddAttr("type", stInputType)

	AddClassOnCondition("hidden-md-and-up", bHiddenMDAndUp, True)
	AddClassOnCondition("hidden-sm-and-down", bHiddenSMAndDown, True)
	AddAttrOnConditionTrue("justify", "center", bJustifyCenter)
	AddAttrOnConditionTrue("align", "center", bAlignCenter)
	AddClassOnCondition("fill-height", bFillHeight, True)
	'
	AddAttr("align", stAlign)
	AddAttr("justify", stJustify)
	'
	setCoverImage(stCoverImage)
	setFitScreen(bFitScreen)
	
	'
	If BANano.IsNull(bBuildGrid) Or BANano.IsUndefined(bBuildGrid) Then 
		bBuildGrid = False
	End If
	If bBuildGrid = False Then
		setOffsets(stOffSets)
		setSizes(stSizes)
		setPaddingAXYTBLR(stPaddingAXYTBLR)
		setMarginAXYTBLR(stMarginAXYTBLR)
	End If
	'
	setFullScreenOnMobile(bFullScreen)
	'
	AddAttr("append-icon", stAppendIcon)
	AddAttr("append-outer-icon", stAppendOuterIcon)
	AddAttrOnCondition(":autofocus", boAutofocus, True)
	AddAttrOnCondition(":clearable", boClearable, True)
	AddAttr("counter", stCounter)
	AddAttrOnCondition(":dense", boDense, True)
	AddAttr("disabled", stDisabled)
	AddAttrOnCondition(":filled", boFilled, True)
	AddAttrOnCondition(":flat", boFlat, True)
	AddAttrOnCondition(":hide-details", boHideDetails, True)
	AddAttr("hint", stHint)
	AddAttrOnCondition(":outlined", boOutlined, True)
	AddAttrOnCondition(":persistent-hint", boPersistentHint, True)
	AddAttr("placeholder", stPlaceholder)
	AddAttr("prepend-icon", stPrependIcon)
	AddAttr("prepend-inner-icon", stPrependInnerIcon)
	AddAttr("readonly", stReadonly)
	AddAttr("required", stRequired)
	AddAttrOnCondition(":rounded", boRounded, True)
	AddAttrOnCondition(":shaped", boShaped, True)
	AddAttrOnCondition(":single-line", boSingleLine, True)
	AddAttrOnCondition(":solo", boSolo, True)
	AddAttr("active-class", stActiveClass)
	'
	AddClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	'
	'link the events, if any
	'This activates Click the event exists on the module
	BindAllEvents
	
	SetOnEvent(mCallBack, "click", eOnClick)
	SetOnEvent(mCallBack, "click.stop", eOnClickStop)
	SetOnEvent(mCallBack, "click.prevent", eOnClickPrevent)
	SetOnEvent(mCallBack, "change", eOnChange)
	SetOnEvent(mCallBack, "dblclick", eOnDblClick)
	SetOnEvent(mCallBack, "MouseMove", eOnMouseMove)
	SetOnEvent(mCallBack, "MouseOut", eOnMouseOut)
	SetOnEvent(mCallBack, "KeyUp", eOnKeyUp)
	SetOnEvent(mCallBack, "KeyPress", eOnKeyPress)
	SetOnEvent(mCallBack,  "Click.Alt", eOnClickAlt)
	SetOnEvent(mCallBack,  "Click.Shift", eOnClickShift)
	
	'build and get the element
	Dim strHTML As String = ToString
	'does the element exist
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
		mElement.SetHTML(strHTML) 
	Else	
		mElement = mTarget.Append(strHTML).Get("#" & mName)
	End If
	setStates(mStates)
	'
	If bBuildGrid Then
		If BANano.IsUndefined(stRows) Or BANano.IsNull(stRows) Then
			stRows = "1"
		End If
		If BANano.IsUndefined(stColumns) Or BANano.IsNull(stColumns) Then
			stColumns = "1"
		End If
		If BANano.IsUndefined(stOffSets) Or BANano.IsNull(stOffSets) Then
			stOffSets = "0,0,0,0,0"
		End If
		If BANano.IsUndefined(stSizes) Or BANano.IsNull(stSizes) Then
			stSizes = "12,12,12,12,12"
		End If
		Dim offmap As Map = GetOffsetSizes(stOffSets)
		Dim sizmap As Map = GetOffsetSizes(stSizes)
		'
		Dim offxs As String = offmap.Get("xs")
		Dim offs As String = offmap.get("s")
		Dim offm As String = offmap.get("m")
		Dim offl As String = offmap.get("l")
		Dim offx As String = offmap.get("x")
		
		Dim xs As String = sizmap.Get("xs")
		Dim sm As String = sizmap.get("s")
		Dim md As String = sizmap.get("m")
		Dim lg As String = sizmap.get("l")
		Dim xl As String = sizmap.get("x")
		'
		AddRows(stRows)
		AddColumnsOS(stColumns, offxs, offs, offm, offl, offx, xs, sm, md, lg, xl)
		BuildGrid
	End If
End Sub

private Sub GetMarginPadding(varOffsets As String) As Map
	Dim m As Map = CreateMap("a":"", "x":"", "y":"", "t":"", "b":"", "l":"", "r":"")
	If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return m
	varOffsets = varOffsets.replace("-","|")
	varOffsets = varOffsets.replace(",","|")
	varOffsets = varOffsets.replace(";","|")
	varOffsets = varOffsets.replace("|",",")
	varOffsets = varOffsets.replace("?","")
	varOffsets = varOffsets.replace(" ","")
	varOffsets = varOffsets.trim
	
	'
	Dim ss As List = BANanoShared.StrParse(",", varOffsets)
	'ensure that everything is numeric
	Dim cpos As Int
	For cpos = 0 To ss.size - 1
		Dim ssize As String = ss.Get(cpos)
		ssize = BANanoShared.GetNumbers(ssize)
		Select Case cpos
		Case 0
			m.Put("a", ssize)
		Case 1
			m.Put("x", ssize)
		Case 2
			m.Put("y", ssize)
		Case 3
			m.Put("t", ssize)
		Case 4
			m.Put("b", ssize)
		Case 5
			m.Put("l", ssize)
		Case 6
			m.Put("r", ssize)
		End Select
	Next
	Return m
End Sub

Sub setMA(sma As String)
	AddClass($"ma-${sma}"$)
End Sub

Sub setMX(sma As String)
	AddClass($"mx-${sma}"$)
End Sub

Sub setMY(sma As String)
	AddClass($"my-${sma}"$)
End Sub

Sub setMT(sma As String)
	AddClass($"mt-${sma}"$)
End Sub

Sub setMB(sma As String)
	AddClass($"mb-${sma}"$)
End Sub

Sub setML(sma As String)
	AddClass($"ml-${sma}"$)
End Sub

Sub setMR(sma As String)
	AddClass($"mr-${sma}"$)
End Sub

Sub setPA(sma As String)
	AddClass($"pa-${sma}"$)
End Sub

Sub setPX(sma As String)
	AddClass($"px-${sma}"$)
End Sub

Sub setPY(sma As String)
	AddClass($"py-${sma}"$)
End Sub

Sub setPT(sma As String)
	AddClass($"pt-${sma}"$)
End Sub

Sub setPB(sma As String)
	AddClass($"pb-${sma}"$)
End Sub

Sub setPL(sma As String)
	AddClass($"pl-${sma}"$)
End Sub

Sub setPR(sma As String)
	AddClass($"pr-${sma}"$)
End Sub


private Sub GetOffsetSizes(varOffsets As String) As Map
	Dim m As Map = CreateMap("xs":"", "s":"", "m":"", "l":"", "x":"")
	If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return m
	varOffsets = varOffsets.replace("-","|")
	varOffsets = varOffsets.replace(",","|")
	varOffsets = varOffsets.replace(";","|")
	varOffsets = varOffsets.replace("|",",")
	varOffsets = varOffsets.replace("?","")
	varOffsets = varOffsets.replace(" ","")
	varOffsets = varOffsets.trim
	'
	Dim ss As List = BANanoShared.StrParse(",", varOffsets)
	'ensure that everything is numeric
	Dim cpos As Int
	For cpos = 0 To ss.size - 1 
		Dim ssize As String = ss.Get(cpos)
		ssize = BANanoShared.GetNumbers(ssize)
		Select Case cpos
		Case 0
			m.Put("xs", ssize)
		Case 1
			m.Put("s", ssize)
		Case 2
			m.Put("m", ssize)
		Case 3
			m.Put("l", ssize)
		Case 4				
			m.Put("x", ssize)
		End Select
	Next
	Return m
End Sub


public Sub AddAttrOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe Then AddAttr(varClass, varCondition)
End Sub

'set color intensity
Sub setColorIntensity(varIntensity As String)
	If BANano.IsNull(varIntensity) Or BANano.IsUndefined(varIntensity) Then varIntensity = ""
	If varIntensity = "normal" Or varIntensity = "" Then Return
	AddClass(varIntensity)
	stColorIntensity = varIntensity
End Sub

Sub getColorIntensity As String
	Return stColorIntensity
End Sub

'set color intensity
Sub setTextColorIntensity(varIntensity As String)
	If BANano.IsNull(varIntensity) Or BANano.IsUndefined(varIntensity) Then varIntensity = ""
	If varIntensity = "normal" Or varIntensity = "" Then Return
	Dim xintensity As String = $"text--${varIntensity}"$
	xintensity = xintensity.Trim
	If xintensity = "text--" Then Return
	AddClass(xintensity)
	stTextColorIntensity = varIntensity
End Sub

Sub getTextColorIntensity As String
	Return stTextColorIntensity
End Sub

Sub setTextColor(varColor As String)
	If BANano.IsNull(varColor) Or BANano.IsUndefined(varColor) Then varColor = ""
	If varColor = "none" Or varColor = "" Then Return
	Dim xcolor As String = $"${varColor}--text"$
	xcolor = xcolor.Trim
	If xcolor = "--text" Then Return
	AddClass(xcolor)
	stTextColor = varColor
End Sub

Sub getTextColor As String
	Return stTextColor
End Sub

'add anything from the appendholder
Sub AppendHolder
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	mElement = BANano.GetElement($"#${mName}"$)
	Append(stemplate)
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

'add anything from the appendholder
Sub AppendHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolder
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	mElement = BANano.GetElement($"#${mName}"$)
	Append(stemplate)
End Sub

'get the html part of a bananoelement
private Sub BANanoGetHTMLAsIs(id As String) As String
	id = id.tolowercase
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub

'get the html part of a bananoelement
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	'xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub

Sub setLoremIpsum(b As Boolean)
	bLoremIpsum = bLoremIpsum
	If b = True Then
		mCaption = BANanoShared.LoremIpsum(1)
		If mElement <> Null Then
			mElement.SetText(mCaption)
		End If
	End If
End Sub

Sub getLoremIpsum As Boolean
	Return bLoremIpsum
End Sub

'return the generated html
Sub ToString As String
	If bLoremIpsum Then
		mCaption = BANanoShared.LoremIpsum(1)
	End If
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	If className <> "" Then 
		AddAttr("class", className)
	End If
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	If styleName <> "" Then 
		AddAttr("style", styleName)
	End If
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	Dim stext As String = sbText.ToString
	'stext = stext.Replace("v-template", "template")
	Dim rslt As String = $"<${mTagName} id="${mName}" ${iStructure}>${mCaption}${stext}</${mTagName}>"$
	Return rslt
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub


'bind an attribute
Sub SetVBindAttribute(prop As String, value As String)
	prop = prop.ToLowerCase
	value = value.ToLowerCase
	prop = $"v-bind:${prop}"$
	AddAttr(prop,value)
	If value <> "" Then
		bindings.Put(value, Null)
	End If
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

'add a rule
Sub AddRule(MethodName As String)
	If stRules = "" Then 
		setRules($"${mName}rules"$)
	End If
	MethodName = MethodName.ToLowerCase
	Dim rules As List
	If bindings.ContainsKey(stRules) Then
		rules = bindings.Get(stRules)
	Else
		rules = NewList
	End If
	'
	Dim v As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, MethodName, Array(v))
	If SubExists(mCallBack, MethodName) Then
		rules.Add(cb.Result)
	Else
		Log("AddRule: " & MethodName & ", rule callback is missing.")
	End If
	bindings.put(stRules, rules)
End Sub


Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

'sets the state bindings
public Sub setStates(varBindings As String)
	If BANano.IsNull(varBindings) Or BANano.IsUndefined(varBindings) Then Return
	If varBindings = "" Then Return
	Dim mxItems As List = BANanoShared.StrParse(";", varBindings)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If v.EqualsIgnoreCase("false") Then
			If k <> "" Then
				bindings.Put(k, False)
			End If
		else if v.EqualsIgnoreCase("true") Then
			If k <> "" Then
				bindings.Put(k, True)
			End If
		else if v.EqualsIgnoreCase("array") Then
			If k <> "" Then
				Dim nl As List = NewList
				bindings.Put(k, nl)
			End If
		else if v.EqualsIgnoreCase("object") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				bindings.Put(k, nm)
			End If
		else if v.EqualsIgnoreCase("map") Then
			If k <> "" Then
				Dim nm As Map = CreateMap()
				bindings.Put(k, nm)
			End If
		else if v.EqualsIgnoreCase("string") Then
			If k <> "" Then
				bindings.Put(k, "")
			End If
		else if v.EqualsIgnoreCase("boolean") Then
			If k <> "" Then
				bindings.Put(k, False)
			End If
		else if v.EqualsIgnoreCase("int") Then
			If k <> "" Then
				bindings.Put(k, 0)
			End If		
		Else
			If k <> "" Then
				bindings.put(k, v)
			End If
		End If
	Next
End Sub

'add a break
Sub AddBR
	Append("<br>")
End Sub

'add a horizontal rule
Sub AddHR
	Append("<hr>")
End Sub

'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	Dim elIT As VueElement
	elIT.Initialize(mCallBack, elID, tag)
	elIT.Append(Text)
	If loose <> Null Then
		For Each k As String In loose
			elIT.SetAttr(k, True)
		Next
	End If
	If props <> Null Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If styleProps <> Null Then
		For Each k As String In styleProps.Keys
			Dim v As String = styleProps.Get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If classNames <> Null Then
		elIT.AddClasses(classNames)
	End If
	'convert to string
	Dim sElement As String = elIT.tostring
	Append(sElement)
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

'change the id of the element
public Sub setID(varID As String)
	varID = varID.tolowercase
	mName = varID
	mElement.SetAttr("id", mName)
End Sub

'add the element to the parent
public Sub AddToParent(targetID As String)
	targetID = targetID.tolowercase
	targetID = targetID.Replace("#","")
	mTarget = BANano.GetElement($"#${targetID}"$)
	DesignerCreateView(mTarget, Null)
End Sub

'remove the component
public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

'add a class
public Sub AddClass(varClass As String)
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then 
		mElement.AddClass(varClass)
	Else
		Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
		For Each mt As String In mxItems
			classList.put(mt, mt)
		Next
	End If
End Sub

Sub AddClasses(listOfClasses As List)
	Dim strClass As String = BANanoShared.Join(" ", listOfClasses)
	AddClass(strClass)
End Sub

'add a class on condition
public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	AddClass(varClass)
End Sub

'add an attr on condition
public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	AddAttr(varClass, varShouldBe)
End Sub

'add a style
public Sub AddStyle(varProp As String, varStyle As String)
	If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return
	If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle)
	If mElement <> Null Then
		Dim aStyle As Map = CreateMap()
		aStyle.put(varProp, varStyle)
		Dim sStyle As String = BANano.ToJSON(aStyle)
		mElement.SetStyle(sStyle)
	Else
		styleList.put(varProp, varStyle)
	End If
End Sub

Sub SetAttr(varProp As String, varValue As String)
	AddAttr(varProp, varValue)
End Sub

'bind dynamic component
Sub BindDynamicComponent(viewID As String, compID As String)
	viewID = viewID.ToLowerCase
	compID = compID.tolowercase
	SetVBindIs(viewID)
	If viewID <> "" Then
		bindings.Put(viewID, compID)
	End If
End Sub

Sub SetVBindIs(t As String) As VueElement
	t = t.tolowercase
	SetAttr("v-bind:is", t)
	Return Me
End Sub

Sub setVSlotNoData(b As Boolean)
	AddAttr("v-slot:no-data", b)
End Sub

Sub setVSlotAppend(b As Boolean)
	AddAttr("v-slot:append", b)
End Sub

Sub setVSlotExtension(b As Boolean)
	AddAttr("v-slot:extension", b)
End Sub

'change the text of the element
Sub Append(varText As String)
	If mElement <> Null Then
		mElement.Append(varText)
	Else	
		sbText.Append(varText)
	End If
End Sub

Sub BindEnabled(value As String)
	AddAttr(":disabled", value)
End Sub

Sub BindDisabled(value As String)
	AddAttr(":disabled", value)
End Sub

Sub BindValue(value As String)
	AddAttr(":value", value)
End Sub

Sub setValidateOnBlur(b As Boolean)
	Bind("validate-on-blur", b)
End Sub

'create a transition group
Sub setGroup(b As Boolean)
	AddAttr(":group", b)
End Sub

'hide leaving element on exit
Sub setHideOnLeave(b As Boolean)
	AddAttr(":hide-on-leave", b)
End Sub

'set transition mode
Sub setMode(s As Object)
	AddAttr("mode", s)
End Sub

'set transition origin
Sub setOrigin(s As Object)
	AddAttr("origin", s)
End Sub

'leave absolute
Sub setLeaveAbsolute(b As Boolean)
	Bind("leave-absolute", b)
End Sub

Sub Bind(attr As String, value As String)
	AddAttr($":${attr}"$, value)
End Sub

'bind to a dynamic attribute
Sub Bind2Dynamic(attr As String, value As String)
	Bind(attr, value)
	bindings.Remove(attr)
End Sub

Sub BindKey(value As String)
	AddAttr($":key"$, value)
End Sub

Sub BindTo(value As String)
	AddAttr($":to"$, value)
End Sub

'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
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

Sub RemoveAttr(attrName As String)
	If mElement <> Null Then
		mElement.RemoveAttr(attrName)
	Else
		attributeList.Remove(attrName)	
	End If
End Sub

Sub RemoveClass(clsName As String)
	If mElement <> Null Then
		mElement.RemoveClass(clsName)
	Else
		classList.Remove(clsName)
	End If
End Sub

'add an attribute
Public Sub AddAttr(varProp As String, varValue As String)
	If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return
	If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue)
	If varValue = "none" Then varValue = ""
	If varValue = "" Then Return
	If varProp = "align" And varValue.EqualsIgnoreCase("false") Then Return
	If varProp = "justify" And varValue.EqualsIgnoreCase("false") Then Return
	'we are adding a boolean
	If BANano.IsBoolean(varValue) Then
		If varValue = True Then
			If mElement <> Null Then 
				mElement.SetAttr(varProp, varValue)
			Else	
				attributeList.put(varProp, varValue)
			End If
		End If
	Else
		'varValue = varValue.Replace("~","=")
		'varValue = varValue.Replace("#","$")
		'we are adding a string
		If varValue.StartsWith(":") Then
			Dim rname As String = BANanoShared.MidS(varValue, 2)
			If rname.Contains(".") = False Or rname.Contains("(") = False Or varValue.Contains("||") = False Then
				bindings.Put(rname, Null)
			End If
			varProp = varProp.Replace(":", "")
			If mElement <> Null Then
				mElement.SetAttr($":${varProp}"$, rname)
			Else
				attributeList.put($":${varProp}"$, rname)
			End If
		Else
			'we have a binding on the property
			If varProp.StartsWith(":") Then
				If varValue.Contains(".") = False Or varValue.Contains("(") = False Or varValue.Contains("||") = False Then
					bindings.Put(varValue, Null)
				End If
			End If
			
			If mElement <> Null Then 
				mElement.SetAttr(varProp, varValue)
			Else
				attributeList.put(varProp, varValue)
			End If
		End If			
		'
'		Select Case varProp
'		Case "v-model", "v-show", "v-if", "v-else-if", "required", "disabled", "readonly"
'			If varValue <> "" Then
'				bindings.Put(varValue, Null)
'			End If
'		End Select
	End If
	Return
End Sub

Sub RemoveCodeBindings(b As List)
	For Each k As String In b
		If k <> "" Then
			bindings.Remove(k)
		End If
	Next
End Sub

'returns the class names
Public Sub getClasses() As String
	Dim sbClass As StringBuilder
	sbClass.Initialize
	For Each k As String In classList.Keys
		sbClass.Append(k).Append(" ")
	Next
	mClasses = sbClass.ToString
	Return mClasses
End Sub

Sub setClasses(varClasses As String)
	AddClass(varClasses)
End Sub

'set the style use a valid JSON string with {}
public Sub setStyle(varStyle As String)
	setStyles(varStyle)
End Sub

'returns the style as JSON
public Sub getStyle() As String
	Dim sbStyle As StringBuilder
	sbStyle.Initialize
	sbStyle.Append("{")
	For Each k As String In styleList.Keys
		Dim v As String = styleList.Get(k)
		sbStyle.Append(k).Append(":").Append(v).Append(",")
	Next
	sbStyle.Append("}")
	mStyle = sbStyle.ToString
	Return mStyle
End Sub

'sets the attributes
public Sub setAttributes(varAttributes As String)
	Dim mxItems As List = BANanoShared.StrParse(";", varAttributes)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If mElement <> Null Then 
			mElement.SetAttr(k, v)
		Else
			attributeList.put(k, v)
		End If
	Next
End Sub

'sets the styles from the designer
public Sub setStyles(varStyles As String)
	Dim mxItems As List = BANanoShared.StrParse(";", varStyles)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		AddStyle(k, v)
	Next
End Sub

'returns the attributes
public Sub getAttributes() As String
	Dim sbAttr As StringBuilder
	sbAttr.Initialize
	For Each k As String In attributeList.Keys
		Dim v As String = attributeList.Get(k)
		sbAttr.Append(k).Append("=").Append(v).Append(";")
	Next
	mAttributes = sbAttr.ToString
	Return mAttributes
End Sub

'sets the caption
public Sub setCaption(varCaption As String)
	If mElement <> Null Then
		mElement.SetText(varCaption)
	End If
	mCaption = varCaption
End Sub

'returns the caption
public Sub getCaption() As String
	Return mCaption
End Sub

public Sub setKey(varKey As String)
	AddAttr("key", varKey)
	stKey = varKey
End Sub

public Sub getKey() As String
	Return stKey
End Sub

public Sub setLazySrc(varSrc As String)
	AddAttr("lazy-src", varSrc)
End Sub


public Sub setSrc(varSrc As String)
	AddAttr("src", varSrc)
	stSrc = varSrc
End Sub

public Sub setAltLabels(b As Boolean)
	AddAttr(":alt-labels", b)
End Sub

Sub AddBreadCrumbItem(bcText As String, bcTo As String, bcLink As Boolean, bcHref As String, bcExact As Boolean, bcDisabled As Boolean)
	Dim bci As Map = CreateMap()
	bci.Put("text", bcText)
	If bcTo <> "" Then 
		bci.Put("to", bcTo)
	End If
	bci.Put("link", bcLink)
	If bcHref <> "" Then 
		bci.Put("href", bcHref)
	End If
	bci.put("exact", bcExact)
	bci.Put("disabled", bcDisabled)
	SetDataPush(stItems, bci)
End Sub

'add item at end of the list
Sub SetDataPush(listName As String, item As Object)
	listName = listName.ToLowerCase
	Dim dat As BANanoObject = bindings
	dat.GetField(listName).RunMethod("push", item)
End Sub

Sub GetData(propName As String) As Object
	propName = propName.tolowercase
	Dim dat As BANanoObject = bindings
	Dim res As Object = dat.getfield(propName).Result
	Return res
End Sub

public Sub setNonLinear(b As Boolean)
	AddAttr(":non-linear", b)
End Sub

public Sub setVertical(b As Boolean)
	AddAttr(":vertical", b)
End Sub


public Sub getSrc() As String
	Return stSrc
End Sub

public Sub setAlt(varAlt As String)
	AddAttr("alt", varAlt)
	stAlt = varAlt
End Sub

public Sub setHref(varAlt As String)
	AddAttr("href", varAlt)
End Sub

public Sub setTarget(varAlt As String)
	AddAttr("target", varAlt)
End Sub

public Sub getAlt() As String
	Return stAlt
End Sub

public Sub setVOn(varVOn As String)
	AddAttr("v-on", varVOn)
	stVOn = varVOn
End Sub


public Sub setNoTitle(b As Boolean)
	AddAttr(":no-title", b)
End Sub


public Sub setOpenOnClick(b As Boolean)
	AddAttr(":open-on-click", b)
End Sub


public Sub setOpenOnFocus(b As Boolean)
	AddAttr(":open-on-focus", b)
End Sub

public Sub setOpenOnHover(b As Boolean)
	AddAttr(":open-on-hover", b)
End Sub

public Sub getVOn() As String
	Return stVOn
End Sub

public Sub setRaised(b As Boolean)
	AddAttr(":text", Not(b))
	AddAttr(":raised", b)
End Sub

public Sub setVSlotItem(items As List)
	Dim sitems As String = BANanoShared.Join(", ", items)
	AddAttr("v-slot:item", $"{ ${sitems} }"$)
End Sub

public Sub setVSlotSelection(items As List)
	Dim sitems As String = BANanoShared.Join(", ", items)
	AddAttr("v-slot:selection", $"{ ${sitems} }"$)
End Sub


public Sub setVSlotActivator(varSlotActivator As String)
	AddAttr("v-slot:activator", varSlotActivator)
	stVSlotActivator = varSlotActivator
End Sub

public Sub getVSlotActivator() As String
	Return stVSlotActivator
End Sub

public Sub setVSlotDefault(varSlotDefault As String)
	AddAttr("v-slot:activator", varSlotDefault)
	stVSlotDefault = varSlotDefault
End Sub

public Sub getVSlotDefault() As String
	Return stVSlotDefault
End Sub



public Sub setRef(varRef As String)
	varRef = varRef.tolowercase
	AddAttr("ref", varRef)
	stRef = varRef
End Sub

public Sub getRef() As String
	Return stRef
End Sub


public Sub setLabel(varLabel As String)
	AddAttr("label", varLabel)
	stLabel = varLabel
End Sub

public Sub getLabel() As String
	Return stLabel
End Sub

public Sub setSlot(varSlot As String)
	AddAttr("slot", varSlot)
	stSlot = varSlot
End Sub

public Sub setComplete(c As String)
	AddAttr("complete", c)
End Sub

Sub setEditable(b As Boolean)
	AddAttr(":editable", b)
End Sub


public Sub getSlot() As String
	Return stSlot
End Sub

public Sub setVBindClass(varVBindClass As String)
	AddAttr("v-bind:class", varVBindClass)
	stVBindClass = varVBindClass
End Sub

public Sub getVBindClass() As String
	Return stVBindClass
End Sub

public Sub setVBind(varVBind As String)
	AddAttr("v-bind", varVBind)
	stVBind = varVBind
End Sub

public Sub getVBind() As String
	Return stVBind
End Sub


public Sub setVBindStyle(varVBindStyle As String)
	AddAttr("v-bind:style", varVBindStyle)
	stVBindStyle = varVBindStyle
End Sub

public Sub getVBindStyle() As String
	Return stVBindStyle
End Sub

public Sub setVElse(varVElse As String)
	AddAttr("v-else", varVElse)
	stVElse = varVElse
End Sub

public Sub getVElse() As String
	Return stVElse
End Sub

public Sub setVElseIf(varVElseIf As String)
	AddAttr("v-else-if", varVElseIf)
	stVElseIf = varVElseIf
End Sub

public Sub getVElseIf() As String
	Return stVElseIf
End Sub

public Sub setVFor(varVFor As String)
	AddAttr("v-for", varVFor)
	stVFor = varVFor
End Sub

public Sub getVFor() As String
	Return stVFor
End Sub

public Sub setDataSource(varVFor As String)
	varVFor = varVFor.tolowercase
	stDataSource = varVFor
	SetData(stDataSource, NewList)
End Sub

public Sub getDataSource() As String
	Return stDataSource
End Sub

public Sub setVHtml(varVHtml As String)
	AddAttr("v-html", varVHtml)
	stVHtml = varVHtml
End Sub


public Sub setBlock(b As Boolean)
	AddAttr(":block", b)
End Sub

public Sub getVHtml() As String
	Return stVHtml
End Sub

public Sub setVIf(varVIf As String)
	varVIf = varVIf.tolowercase
	AddAttr("v-if", varVIf)
	stVIf = varVIf
End Sub

public Sub getVIf() As String
	Return stVIf
End Sub

public Sub setVModel(varVModel As String)
	If BANano.IsNull(varVModel) Or BANano.IsUndefined(varVModel) Then
		varVModel = ""
	End If
	If varVModel = "" Then Return
	varVModel = varVModel.tolowercase
	AddAttr("v-model", varVModel)
	stVModel = varVModel
	If stVModel.StartsWith("!") = False Or stVModel.IndexOf(".") = -1 Then
		SetData(stVModel, Null)
	End If
End Sub

public Sub getVModel() As String
	Return stVModel
End Sub

Sub setRowHeight(rh As String)
	AddAttr("row-height", rh)
End Sub

public Sub setValue(varValue As String)
	AddAttr("value", varValue)
	stValue = varValue
End Sub

public Sub setInputValue(varValue As String)
	AddAttr("input-value", varValue)
End Sub

public Sub getValue() As String
	Return stValue
End Sub

public Sub setVShow(varVShow As String)
	If BANano.IsNull(varVShow) Or BANano.IsUndefined(varVShow) Then
		varVShow = ""
	End If
	varVShow = varVShow.tolowercase
	AddAttr("v-show", varVShow)
	stVShow = varVShow
	If stVShow.StartsWith("!") = False Or stVModel.IndexOf(".") = -1 Then 
		SetData(stVShow, Null)
	End If
End Sub

public Sub getVShow() As String
	Return stVShow
End Sub

public Sub setVText(varVText As String)
	AddAttr("v-text", varVText)
	stVText = varVText
End Sub

public Sub getVText() As String
	Return stVText
End Sub

public Sub setBackgroundColorAttr(varBackgroundColor As String)
	AddAttr("background-color", varBackgroundColor)
End Sub


public Sub setBackgroundColor(varBackgroundColor As String)
	AddStyle("background-color", varBackgroundColor)
	stBackgroundColor = varBackgroundColor
End Sub

public Sub getBackgroundColor() As String
	Return stBackgroundColor
End Sub

public Sub setBackgroundSize(varBackgroundRepeat As String)
	AddStyle("background-size", varBackgroundRepeat)
End Sub

public Sub setBackgroundRepeat(varBackgroundRepeat As String)
	AddStyle("background-repeat", varBackgroundRepeat)
	stBackgroundRepeat = varBackgroundRepeat
End Sub

public Sub setBackgroundClip(varBackgroundRepeat As String)
	AddStyle("background-clip", varBackgroundRepeat)
End Sub

public Sub setBackgroundOrigin(varBackgroundRepeat As String)
	AddStyle("background-origin", varBackgroundRepeat)
End Sub

public Sub setBackgroundPosition(varBackgroundPosition As String)
	AddStyle("background-position", varBackgroundPosition)
End Sub


public Sub setBackgroundAttachment(varBackgroundRepeat As String)
	AddStyle("background-attachment", varBackgroundRepeat)
End Sub

public Sub setBorderImageSource(s As String)
	AddStyle("border-image-source", $"url('${s}')"$)
End Sub

public Sub setBorderImageRepeat(s As String)
	AddStyle("border-image-repeat", s)
End Sub

public Sub setBorderImageSlice(s As String)
	AddStyle("border-image-slice", s)
End Sub

public Sub setBorderImageWidth(s As String)
	AddStyle("border-image-width", s)
End Sub

public Sub setBorderTopLeftRadius(varBorderRadius As String)
	AddStyle("border-top-left-radius", varBorderRadius)
End Sub

public Sub setBorderTopRightRadius(varBorderRadius As String)
	AddStyle("border-top-right-radius", varBorderRadius)
End Sub

public Sub setBorderBottomLeftRadius(varBorderRadius As String)
	AddStyle("border-bottom-left-radius", varBorderRadius)
End Sub

public Sub setBorderBottomRightRadius(varBorderRadius As String)
	AddStyle("border-bottom-right-radius", varBorderRadius)
End Sub

public Sub setFontSizeAdjust(varFontSize As String)
	AddStyle("font-size-adjust", varFontSize)
End Sub


public Sub setFontVariant(varFontVariant As String)
	AddStyle("font-variant", varFontVariant)
End Sub


public Sub setFontStretch(varFontVariant As String)
	AddStyle("font-stretch", varFontVariant)
End Sub

public Sub setBackgroundImage(varBackgroundImage As String)
	AddStyle("background-image", $"url('${varBackgroundImage}')"$)
	stBackgroundImage = varBackgroundImage
End Sub

public Sub getBackgroundImage() As String
	Return stBackgroundImage
End Sub

public Sub getBackgroundRepeat() As String
	Return stBackgroundRepeat
End Sub

public Sub setBorder(varBorder As String)
	AddStyle("border", varBorder)
	stBorder = varBorder
End Sub

public Sub getBorder() As String
	Return stBorder
End Sub

public Sub setBorderColor(varBorderColor As String)
	AddStyle("border-color", varBorderColor)
	stBorderColor = varBorderColor
End Sub

public Sub getBorderColor() As String
	Return stBorderColor
End Sub

public Sub setBorderRadius(varBorderRadius As String)
	AddStyle("border-radius", varBorderRadius)
	stBorderRadius = varBorderRadius
End Sub

public Sub getBorderRadius() As String
	Return stBorderRadius
End Sub

public Sub setBorderStyle(varBorderStyle As String)
	AddStyle("border-style", varBorderStyle)
	stBorderStyle = varBorderStyle
End Sub

public Sub getBorderStyle() As String
	Return stBorderStyle
End Sub

public Sub setBorderWidth(varBorderWidth As String)
	AddStyle("border-width", varBorderWidth)
	stBorderWidth = varBorderWidth
End Sub


public Sub setApp(b As Boolean)
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	Bind("app", b)
	bApp = b
End Sub

public Sub getBorderWidth() As String
	Return stBorderWidth
End Sub

public Sub setColor(varColor As String)
	If BANano.IsNull(varColor) Or BANano.IsUndefined(varColor) Then varColor = ""
	If varColor = "normal" Or varColor = "" Then Return
	AddAttr("color", varColor)
	stColor = varColor
End Sub

'set color by class
public Sub setColorClass(varColor As String)
	If BANano.IsNull(varColor) Or BANano.IsUndefined(varColor) Then varColor = ""
	If varColor = "normal" Or varColor = "" Then Return
	AddClass(varColor)
	stColor = varColor
End Sub

'set color by attribute
public Sub setColorAttr(varColor As String)
	If BANano.IsNull(varColor) Or BANano.IsUndefined(varColor) Then varColor = ""
	If varColor = "normal" Or varColor = "" Then Return
	AddAttr("color", varColor)
	stColor = varColor
End Sub

public Sub setHeaderColor(varColor As String)
	AddAttr("header-color", varColor)
End Sub

public Sub getColor() As String
	Return stColor
End Sub

public Sub setFontFamily(varFontFamily As String)
	AddStyle("font-family", varFontFamily)
	stFontFamily = varFontFamily
End Sub

public Sub getFontFamily() As String
	Return stFontFamily
End Sub


public Sub setDismissible(b As Boolean)
	AddAttr(":dismissible", b)
End Sub

Sub setFontWeightLight(b As Boolean)
	AddClass("font-weight-light")
End Sub

public Sub setFontSize(varFontSize As String)
	AddStyle("font-size", varFontSize)
	stFontSize = varFontSize
End Sub


public Sub setColoredBorder(b As Boolean)
	AddAttr(":colored-border", b)
End Sub

public Sub setProminent(b As Boolean)
	AddAttr(":prominent", b)
End Sub

public Sub getFontSize() As String
	Return stFontSize
End Sub

public Sub setFontStyle(varFontStyle As String)
	AddStyle("font-style", varFontStyle)
	stFontStyle = varFontStyle
End Sub

public Sub getFontStyle() As String
	Return stFontStyle
End Sub

public Sub setFontWeight(varFontWeight As String)
	AddStyle("font-weight", varFontWeight)
	stFontWeight = varFontWeight
End Sub

public Sub getFontWeight() As String
	Return stFontWeight
End Sub

public Sub setHeight(varHeight As String)
	AddAttr("height", varHeight)
	stHeight = varHeight
End Sub

public Sub getHeight() As String
	Return stHeight
End Sub

public Sub setStyleHeight(varHeight As String)
	AddStyle("height", varHeight)
	stStyleHeight = varHeight
End Sub

public Sub getStyleHeight() As String
	Return stStyleHeight
End Sub

public Sub setMaxHeight(varMargin As String)
	AddAttr("max-height", varMargin)
	stMaxHeight = varMargin
End Sub

public Sub getMaxHeight() As String
	Return stMaxHeight
End Sub

public Sub setStyleMaxHeight(varMargin As String)
	AddStyle("max-height", varMargin)
	stStyleMaxHeight = varMargin
End Sub

public Sub getStyleMaxHeight() As String
	Return stStyleMaxHeight
End Sub

public Sub setMaxWidth(varMarginBottom As String)
	AddAttr("max-width", varMarginBottom)
	stMaxWidth = varMarginBottom
End Sub

public Sub getMaxWidth() As String
	Return stMaxWidth
End Sub

public Sub setStyleMaxWidth(varMarginBottom As String)
	AddStyle("max-width", varMarginBottom)
	stStyleMaxWidth = varMarginBottom
End Sub

public Sub getStyleMaxWidth() As String
	Return stStyleMaxWidth
End Sub

public Sub setOverwriteTag(varTag As String)
	AddAttr("tag", varTag)
	mOverwriteTag = varTag
End Sub

Sub getOverwriteTag As String
	Return mOverwriteTag	
End Sub

public Sub setTagName(varTagName As String)
	mTagName = varTagName
End Sub

public Sub getTagName() As String
	Return mTagName
End Sub

public Sub setTextAlign(varTextAlign As String)
	AddStyle("text-align", varTextAlign)
	stTextAlign = varTextAlign
End Sub

public Sub getTextAlign() As String
	Return stTextAlign
End Sub

public Sub setDark(varDark As Boolean)
	AddAttr(":dark", varDark)
	bDark = varDark
End Sub


public Sub setElevation(s As String)
	If BANano.IsNull(s) Or BANano.IsUndefined(s) Then s = ""
	If s = "" Then Return
	AddAttr("elevation", S)
	AddClass("elevation-" & s)
End Sub

Sub setDisableResizeWatcher(b As Boolean)
	AddAttr(":disable-resize-watcher", b)
End Sub

Sub setAutoGrow(b As Boolean)
	AddAttr(":auto-grow", b)
End Sub

Sub setAutoComplete(s As Object)
	AddAttr("autocomplete", s)
End Sub


public Sub setTransition(s As String)
	AddAttr("transition", s)
End Sub

public Sub setOffsetY(b As Boolean)
	AddAttr(":offset-y", b)
End Sub

public Sub setClipped(b As Object)
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	AddAttr(":clipped", b)
	bClipped = b
End Sub

public Sub setClippedRight(b As Object)
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	AddAttr(":clipped-right", b)
	bClippedRight = b
End Sub

public Sub setClippedLeft(b As Object)
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	AddAttr(":clipped-left", b)
	bClippedLeft = b
End Sub

public Sub setOffsetX(b As Boolean)
	AddAttr(":offset-y", b)
End Sub

public Sub setReactive(b As Boolean)
	AddAttr(":reactive", b)
End Sub


public Sub setRotate(s As String)
	AddAttr("rotate", s)
End Sub


public Sub SetStyleTop(s As String)
	AddStyle("top", s)
End Sub

public Sub SetStyleBottom(s As String)
	AddStyle("bottom", s)
End Sub


public Sub SetStyleLeft(s As String)
	AddStyle("left", s)
End Sub


public Sub SetStyleRight(s As String)
	AddStyle("right", s)
End Sub

Sub setTimeOut(tout As Int)
	AddAttr(":timeout", tout)
End Sub

public Sub setTop(b As Boolean)
	AddAttr(":top", b)
End Sub
'
public Sub setBottom(b As Boolean)
	AddAttr(":bottom", b)
End Sub

public Sub setRight(b As Boolean)
	AddAttr(":right", b)
End Sub

public Sub setLeft(b As Boolean)
	AddAttr(":left", b)
End Sub

public Sub setXLarge(b As Boolean)
	AddAttr(":x-large", b)
End Sub

public Sub setFixed(b As Boolean)
	AddAttr(":fixed", b)
End Sub

public Sub setDirection(s As String)
	AddAttr("direction", s)
End Sub

'bind loading
public Sub setLoading(s As String)
	AddAttr(":loading", s)
End Sub

'bind loading height
public Sub setLoaderHeight(s As String)
	AddAttr("loader-height", s)
End Sub

public Sub setXSmall(b As Boolean)
	AddAttr(":x-small", b)
End Sub

public Sub setLarge(b As Boolean)
	AddAttr(":large", b)
End Sub

public Sub setSmall(b As Boolean)
	AddAttr(":small", b)
End Sub


public Sub setChips(b As Boolean)
	AddAttr(":chips", b)
End Sub


public Sub setSmallChips(b As Boolean)
	AddAttr(":small-chips", b)
End Sub


public Sub setTruncateLength(s As Int)
	AddAttr("truncate-length", s)
End Sub

public Sub setSuffix(b As Boolean)
	AddAttr("suffix", b)
End Sub

public Sub setMin(s As String)
	AddAttr("min", s)
End Sub


public Sub setMinWidth(s As String)
	AddAttr("min-width", s)
End Sub

public Sub setMinHeight(s As String)
	AddAttr("min-height", s)
End Sub

public Sub setStyleMinWidth(s As String)
	AddStyle("min-width", s)
End Sub

public Sub setStyleMinHeight(s As String)
	AddStyle("min-height", s)
End Sub

public Sub setMax(s As String)
	AddAttr("max", s)
End Sub

public Sub setColumn(b As Boolean)
	AddAttr(":column", b)
End Sub

public Sub setUseSeconds(b As Boolean)
	AddAttr(":use-seconds", b)
End Sub


public Sub setScrollable(b As Boolean)
	AddAttr(":scrollable", b)
End Sub


public Sub setLandScape(s As Boolean)
	AddAttr("landscape", s)
End Sub

public Sub setFullWidth(b As Boolean)
	AddAttr(":full-width", b)
End Sub

public Sub setFormat(s As String)
	AddAttr("format", S)
End Sub

public Sub setPosition(s As String)
	AddAttr("position", S)
End Sub

public Sub setStylePosition(s As String)
	AddStyle("position", S)
End Sub

public Sub setDepressed(b As Boolean)
	AddAttr(":depressed", b)
End Sub

public Sub setFab(b As Boolean)
	AddAttr(":fab", b)
End Sub

public Sub setExtended(b As Boolean)
	AddAttr(":extended", b)
End Sub

public Sub setLight(b As Boolean)
	AddAttr(":light", b)
End Sub

public Sub setHideInput(b As Boolean)
	AddAttr(":hide-input", b)
End Sub


public Sub setShowSize(b As Boolean)
	AddAttr(":show-size", b)
End Sub


public Sub setStriped(b As Boolean)
	AddAttr(":striped", b)
End Sub

public Sub setAccept(s As String)
	AddAttr("accept", s)
End Sub


public Sub setTabs(b As Boolean)
	AddAttr(":tabs", b)
End Sub


public Sub setIndeterminate(b As Boolean)
	AddAttr(":indeterminate", b)
End Sub


Sub setFalseValue(fv As Object)
	AddAttr("false-value", fv)
End Sub

Sub setTrueValue(tv As Object)
	AddAttr("true-value", tv)
End Sub

Sub setAbsolute(tv As Object)
	AddAttr(":absolute", tv)
End Sub

'auto-draw
Sub setAutoDraw(tv As Object)
	AddAttr(":auto-draw", tv)
End Sub

'auto-draw-duration
Sub setAutoDrawDuration(tv As Object)
	AddAttr("auto-draw-duration", tv)
End Sub

Sub setAutoLineWidth(tv As Object)
	AddAttr(":auto-line-width", tv)
End Sub

Sub setStrokeLineCap(tv As Object)
	AddAttr(":stroke-linecap", tv)
End Sub

Sub setFill(tv As Object)
	AddAttr(":fill", tv)
End Sub

Sub setSparkType(tv As Object)
	AddAttr(":type", tv)
End Sub

'bind the gradient
Sub setGradient(tv As Object)
	AddAttr(":gradient", tv)
End Sub

Sub setLabels(tv As Object)
	AddAttr(":labels", tv)
End Sub

'bind padding
Sub setPadding(tv As Object)
	AddAttr(":padding", tv)
End Sub

Sub setLabelSize(tv As Object)
	AddAttr(":label-size", tv)
End Sub

'bind line width
Sub setLineWidth(tv As Object)
	AddAttr(":line-width", tv)
End Sub

Sub setGradientDirection(tv As Object)
	AddAttr(":gradient-direction", tv)
End Sub

'bind smooth
Sub setSmooth(tv As Object)
	AddAttr(":smooth", tv)
End Sub

Sub setShowLabels(tv As Object)
	AddAttr(":show-labels", tv)
End Sub

public Sub setLength(s As String)
	AddAttr("length", s)
End Sub

public Sub setSize(s As String)
	AddAttr("size", s)
End Sub

public Sub getDark() As Boolean
	Return bDark
End Sub

public Sub setHiddenMDAndUp(varHiddenMDAndUp As Boolean)
	AddClassOnCondition("hidden-md-and-up", varHiddenMDAndUp, True)
	bHiddenMDAndUp = varHiddenMDAndUp
End Sub

public Sub getHiddenMDAndUp() As Boolean
	Return bHiddenMDAndUp
End Sub

public Sub setHiddenSMAndDown(varHiddenSMAndDown As Boolean)
	AddClassOnCondition("hidden-sm-and-down", varHiddenSMAndDown, True)
	bHiddenSMAndDown = varHiddenSMAndDown
End Sub

public Sub getHiddenSMAndDown() As Boolean
	Return bHiddenSMAndDown
End Sub

public Sub setJustifyCenter(varJustifyCenter As Boolean)
	AddAttrOnConditionTrue("justify", "center", varJustifyCenter)
	bJustifyCenter = varJustifyCenter
End Sub

public Sub getJustifyCenter() As Boolean
	Return bJustifyCenter
End Sub

public Sub setAlignCenter(varAlignCenter As Boolean)
	AddAttrOnConditionTrue("align", "center", varAlignCenter)
	bAlignCenter = varAlignCenter
End Sub

public Sub getAlignCenter() As Boolean
	Return bAlignCenter
End Sub

public Sub setFillHeight(varFillHeight As Boolean)
	AddClassOnCondition("fill-height", varFillHeight, True)
	bFillHeight = varFillHeight
End Sub

public Sub getFillHeight() As Boolean
	Return bFillHeight
End Sub


public Sub setTextDecoration(varTextDecoration As String)
	AddStyle("text-decoration", varTextDecoration)
	stTextDecoration = varTextDecoration
End Sub

public Sub getTextDecoration() As String
	Return stTextDecoration
End Sub

public Sub setWidth(varWidth As String)
	AddAttr("width", varWidth)
	stWidth = varWidth
End Sub

public Sub getWidth() As String
	Return stWidth
End Sub
'
public Sub setStyleWidth(varWidth As String)
	AddStyle("width", varWidth)
	stStyleWidth = varWidth
End Sub

public Sub getStyleWidth() As String
	Return stStyleWidth
End Sub

'set rules, needs binding
public Sub setRules(varRules As String)
	If BANano.IsNull(varRules) Or BANano.IsNull(varRules) Then 
		Return
	End If
	varRules = varRules.tolowercase
	varRules = varRules.Replace(":","")
	AddAttr(":rules", varRules)
	stRules = varRules
	SetData(varRules, NewList)
	HasRules = True
End Sub

public Sub getRules() As String
	Return stRules
End Sub

'
public Sub setTo(varTo As String)
	AddAttr("to", varTo)
	stTo = varTo
End Sub

public Sub getTo() As String
	Return stTo
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
End Sub

Sub SetOnEvent(eventHandler As Object, event As String, args As String)
	event = event.ToLowerCase
	'
	Dim attrName As String = event
	attrName = attrName.tolowercase
	attrName = attrName.Replace(":","")
	attrName = attrName.Replace(".","")
	attrName = attrName.Replace("-","")
	'
	Dim methodName As String = $"${mName}_${attrName}"$
	'
	If SubExists(eventHandler, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim scode As String
	If args = "" Then
		scode = methodName
	Else	
		scode = $"${methodName}(${args})"$
	End If
	AddAttr($"v-on:${event}"$, scode)
	'arguments for the event
	Dim e As BANanoEvent 'ignore
	Dim cb As BANanoObject = BANano.CallBack(eventHandler, methodName, Array(e))
	methods.Put(methodName, cb)
End Sub

Sub SetOnEventOwn(eventHandler As Object, methodName As String, event As String, args As String)
	event = event.ToLowerCase
	methodName = methodName.tolowercase
	'
	If SubExists(eventHandler, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim scode As String
	If args = "" Then
		scode = methodName
	Else
		scode = $"${methodName}(${args})"$
	End If
	AddAttr($"v-on:${event}"$, scode)
	'arguments for the event
	Dim e As BANanoEvent 'ignore
	Dim cb As BANanoObject = BANano.CallBack(eventHandler, methodName, Array(e))
	methods.Put(methodName, cb)
End Sub


'set direct method
Sub SetMethod(Module As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		methods.Put(methodName, cb)
	Else
		Log("SetMethod: " & methodName & ", callback is missing.")
	End If
End Sub

'set the conver image for the container
Sub setCoverImage(url As String)
	stCoverImage = url
	If BANano.IsUndefined(url) Or BANano.IsNull(url) Then Return
	url = url.trim
	If url = "" Then Return
	Dim sm As String = $"background-image=url('${url}');background-size=cover;width=100%;height=100%"$
	setStyles(sm)
End Sub

public Sub getCoverImage() As String
	Return stCoverImage
End Sub

Sub setOffsets(varOffSets As String)
	stOffSets = varOffSets
	If BANano.IsUndefined(varOffSets) Or BANano.IsNull(varOffSets) Then Return
	If varOffSets = "" Then Return
	Dim offmap As Map = GetOffsetSizes(stOffSets)
	'
	Dim offxs As String = offmap.get("xs")
	Dim offs As String = offmap.get("s")
	Dim offm As String = offmap.get("m")
	Dim offl As String = offmap.get("l")
	Dim offx As String = offmap.get("x")
	
	AddOffsets(offxs, offs, offm, offl, offx)
End Sub

Sub getOffSets() As String
	Return stOffSets
End Sub

Sub setSizes(varSizes As String)
	stSizes = varSizes
	If BANano.IsUndefined(varSizes) Or BANano.IsNull(varSizes) Then Return
	If varSizes = "" Then Return
	Dim sizmap As Map = GetOffsetSizes(stSizes)
	
	Dim xs As String = sizmap.Get("xs")
	Dim sm As String = sizmap.get("s")
	Dim md As String = sizmap.get("m")
	Dim lg As String = sizmap.get("l")
	Dim xl As String = sizmap.get("x")
	'
	AddSizes(xs, sm, md, lg, xl)
End Sub

Sub getSizes() As String
	Return stSizes
End Sub


Sub setPaddingAXYTBLR(varsetPaddingTBLR As String)
	stPaddingAXYTBLR = varsetPaddingTBLR
	If BANano.IsUndefined(varsetPaddingTBLR) Or BANano.IsNull(varsetPaddingTBLR) Then Return
	If varsetPaddingTBLR = "" Then Return
	Dim m As Map = GetMarginPadding(varsetPaddingTBLR)
	'
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		If v <> "" Then
			Dim classKey As String = $"p${k}-${v}"$
			AddClass(classKey)
		End If
	Next
End Sub

Sub getPaddingAXYTBLR() As String
	Return stPaddingAXYTBLR
End Sub

Sub setMarginAXYTBLR(varMarginAXYTBLR As String)
	stMarginAXYTBLR = varMarginAXYTBLR
	If BANano.IsUndefined(varMarginAXYTBLR) Or BANano.IsNull(varMarginAXYTBLR) Then Return
	If varMarginAXYTBLR = "" Then Return
	
	Dim m As Map = GetMarginPadding(varMarginAXYTBLR)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		If v <> "" Then
			Dim classKey As String = $"m${k}-${v}"$
			AddClass(classKey)
		End If
	Next
End Sub

'assign props
Sub AssignProps(props As Map)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			AddAttr(k, v)
		Next
	End If	
End Sub

Sub AddPadding(pa As String, px As String, py As String, pt As String, pb As String, pl As String, pr As String)
	Dim m As Map = CreateMap("a":pa, "x":px, "y":py, "t":pt, "b":pb, "l":pl, "r":pr)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		If v <> "" Then
			Dim classKey As String = $"p${k}-${v}"$
			AddClass(classKey)
		End If
	Next
End Sub

Sub AddMargin(ma As String, mx As String, my As String, mt As String, mb As String, ml As String, mr As String)
	Dim m As Map = CreateMap("a":ma, "x":mx, "y":my, "t":mt, "b":mb, "l":ml, "r":mr)
	For Each k As String In m.Keys
		Dim v As String = m.Get(k)
		If v <> "" Then
			Dim classKey As String = $"m${k}-${v}"$
			AddClass(classKey)
		End If
	Next
End Sub

Sub getMarginAXYTBLR() As String
	Return stMarginAXYTBLR
End Sub

'make element fit page
Sub SetFitPage
	setStyleHeight("100vh")
	setStyleWidth("100vw")
	setStyleMaxHeight("100vh")
	setStyleMaxWidth("100vw")
End Sub

Sub setFitScreen(varFitScreen As Boolean)
	bFitScreen = varFitScreen
	If BANano.IsUndefined(varFitScreen) Or BANano.IsNull(varFitScreen) Then Return
	If varFitScreen = False Then Return
	setStyleHeight("100vh")
	setStyleWidth("100vw")
	setStyleMaxHeight("100vh")
	setStyleMaxWidth("100vw")
End Sub

public Sub getFitScreen() As Boolean
	Return bFitScreen
End Sub

'set full screen on mobile
Sub setFullScreenOnMobile(varFullScreen As Boolean)
	bFullScreen = varFullScreen
	If BANano.IsUndefined(varFullScreen) Or BANano.IsNull(varFullScreen) Then Return
	If varFullScreen = False Then Return
	AddAttr(":fullscreen", "$vuetify.breakpoint.mobile")
End Sub

public Sub getFullScreen() As Boolean
	Return bFullScreen
End Sub

'return the dialog card container
Sub DialogForm As VueElement
	Dim dialogContainerID As String = $"${mName}form"$
	Return GetVueElement(dialogContainerID)
End Sub

'return the dialog card container
Sub DialogContainer As VueElement
	Dim dialogContainerID As String = $"${mName}container"$
	Return GetVueElement(dialogContainerID)
End Sub


'return the dialog card title
Sub DialogTitle As VueElement
	Dim dialogContainerID As String = $"${mName}title"$
	Return GetVueElement(dialogContainerID)
End Sub


'return the dialog card title
Sub DialogActions As VueElement
	Dim dialogContainerID As String = $"${mName}actions"$
	Return GetVueElement(dialogContainerID)
End Sub

Sub DialogOK As VueElement
	Dim dialogContainerID As String = $"${mName}ok"$
	Return GetVueElement(dialogContainerID)
End Sub

'return the dialog card title
Sub DialogCancel As VueElement
	Dim dialogContainerID As String = $"${mName}cancel"$
	Return GetVueElement(dialogContainerID)
End Sub

'set clear-icon
public Sub setClearIcon(varClearIcon As String)
	AddAttr("clear-icon", varClearIcon)
End Sub

'set append-icon
public Sub setAppendIcon(varAppendIcon As String)
	AddAttr("append-icon", varAppendIcon)
	stAppendIcon = varAppendIcon
End Sub

'set append-icon
public Sub setBindAppendIcon(varAppendIcon As String)
	AddAttr(":append-icon", varAppendIcon)
	stAppendIcon = varAppendIcon
End Sub

'get append-icon
public Sub getAppendIcon() As String
	Return stAppendIcon
End Sub

'set append-icon
public Sub setAppendOuterIcon(varAppendIcon As String)
	AddAttr("append-outer-icon", varAppendIcon)
	stAppendOuterIcon = varAppendIcon
End Sub

'bind append-icon
public Sub setBindAppendOuterIcon(varAppendIcon As String)
	AddAttr(":append-outer-icon", varAppendIcon)
	stAppendOuterIcon = varAppendIcon
End Sub

'get append-icon
public Sub getAppendOuterIcon() As String
	Return stAppendOuterIcon
End Sub


'set autofocus
public Sub setAutofocus(varAutofocus As Boolean)
	AddAttrOnCondition(":autofocus", varAutofocus, True)
	boAutofocus = varAutofocus
End Sub

'get autofocus
public Sub getAutofocus() As Boolean
	Return boAutofocus
End Sub

'set clearable
public Sub setClearable(varClearable As Boolean)
	AddAttrOnCondition(":clearable", varClearable, True)
	boClearable = varClearable
End Sub

'get clearable
public Sub getClearable() As Boolean
	Return boClearable
End Sub

'set no gutter
public Sub setNoGutters(b As Boolean)
	AddAttrOnCondition(":no-gutters", b, True)
	bNoGutter = b
End Sub

'get no gutter
public Sub getNoGutters() As Boolean
	Return bNoGutter
End Sub

Sub setNoResize(b As Boolean)
	AddAttr(":no-resize", b)
End Sub

'set rows for the text area
Sub setRows(r As Int)
	AddAttr("rows", r)
End Sub

'set counter
public Sub setCounter(varCounter As String)
	AddAttr("counter", varCounter)
	stCounter = varCounter
End Sub

'get counter
public Sub getCounter() As String
	Return stCounter
End Sub

'set dense
public Sub setDense(varDense As Boolean)
	AddAttrOnCondition(":dense", varDense, True)
	boDense = varDense
End Sub

'get dense
public Sub getDense() As Boolean
	Return boDense
End Sub

'set disabled
public Sub setDisabled(varDisabled As String)
	AddAttr("disabled", varDisabled)
	stDisabled = varDisabled
End Sub


'get disabled
public Sub getDisabled() As String
	Return stDisabled
End Sub

'set filled
public Sub setFilled(varFilled As Boolean)
	AddAttrOnCondition(":filled", varFilled, True)
	boFilled = varFilled
End Sub

'get filled
public Sub getFilled() As Boolean
	Return boFilled
End Sub

'set flat
public Sub setFlat(varFlat As Boolean)
	AddAttrOnCondition(":flat", varFlat, True)
	boFlat = varFlat
End Sub

'get flat
public Sub getFlat() As Boolean
	Return boFlat
End Sub

'set hide-selected
public Sub setHideSelected(b As Boolean)
	Bind("hide-selected", b)
End Sub

'set hide-details
public Sub setHideDetails(varHideDetails As Boolean)
	AddAttrOnCondition(":hide-details", varHideDetails, True)
	boHideDetails = varHideDetails
End Sub

'get hide-details
public Sub getHideDetails() As Boolean
	Return boHideDetails
End Sub

'set hint
public Sub setHint(varHint As String)
	AddAttr("hint", varHint)
	stHint = varHint
End Sub

'get hint
public Sub getHint() As String
	Return stHint
End Sub

'set outlined
public Sub setOutlined(varOutlined As Boolean)
	AddAttrOnCondition("outlined", varOutlined, True)
	boOutlined = varOutlined
End Sub

'set persistent
public Sub setPersistent(b As Boolean)
	Bind("persistent", b)
End Sub

'set hide overlay
public Sub setHideOverlay(b As Boolean)
	Bind("hide-overlay", b)
End Sub

public Sub setOverlayColor(s As String)
	SetAttr("overlay-color", s)
End Sub

public Sub setOverlayOpacity(d As Double)
	SetAttr("overlay-opacity", d)
End Sub

public Sub setReturnValue(rv As Object)
	SetAttr("return-value", rv)
End Sub


'get outlined
public Sub getOutlined() As Boolean
	Return boOutlined
End Sub

'set persistent-hint
public Sub setPersistentHint(varPersistentHint As Boolean)
	AddAttrOnCondition(":persistent-hint", varPersistentHint, True)
	boPersistentHint = varPersistentHint
End Sub

'get persistent-hint
public Sub getPersistentHint() As Boolean
	Return boPersistentHint
End Sub

'set placeholder
public Sub setPlaceholder(varPlaceholder As String)
	AddAttr("placeholder", varPlaceholder)
	stPlaceholder = varPlaceholder
End Sub

'get placeholder
public Sub getPlaceholder() As String
	Return stPlaceholder
End Sub

'set prepend-icon
public Sub setPrependIcon(varPrependIcon As String)
	AddAttr("prepend-icon", varPrependIcon)
	stPrependIcon = varPrependIcon
End Sub

'set prepend-icon
public Sub setBindPrependIcon(varPrependIcon As String)
	AddAttr(":prepend-icon", varPrependIcon)
	stPrependIcon = varPrependIcon
End Sub


'get prepend-icon
public Sub getPrependIcon() As String
	Return stPrependIcon
End Sub

'set prepend-icon
public Sub setPrependInnerIcon(varPrependIcon As String)
	AddAttr("prepend-inner-icon", varPrependIcon)
	stPrependInnerIcon = varPrependIcon
End Sub

'set prepend-icon
public Sub setBindPrependInnerIcon(varPrependIcon As String)
	AddAttr(":prepend-inner-icon", varPrependIcon)
	stPrependInnerIcon = varPrependIcon
End Sub


'get prepend-icon
public Sub getPrependInnerIcon() As String
	Return stPrependInnerIcon
End Sub

'set readonly
public Sub setReadonly(varReadonly As String)
	AddAttr("readonly", varReadonly)
	stReadonly = varReadonly
End Sub

'get readonly
public Sub getReadonly() As String
	Return stReadonly
End Sub

'set required
public Sub setRequired(varRequired As String)
	If BANano.IsNull(varRequired) Or BANano.IsNull(varRequired) Then varRequired = ""
	If varRequired = "" Then Return
	varRequired = CStr(varRequired)
	varRequired = varRequired.tolowercase
	AddAttr("required", varRequired)
	stRequired = varRequired
End Sub


'get required
public Sub getRequired() As String
	Return stRequired
End Sub


'set active class
public Sub setActiveClass(varActiveClass As String)
	AddAttr("active-class", varActiveClass)
	stActiveClass = varActiveClass
End Sub

'get active class
public Sub getActiveClass() As String
	Return stActiveClass
End Sub



'set rounded
public Sub setRounded(varRounded As Boolean)
	AddAttrOnCondition("rounded", varRounded, True)
	boRounded = varRounded
End Sub

'get rounded
public Sub getRounded() As Boolean
	Return boRounded
End Sub

public Sub setShowGridDesign(varRounded As Boolean)
	bShowGridDesign = varRounded
End Sub

'get rounded
public Sub getShowGridDesign() As Boolean
	Return bShowGridDesign
End Sub

'set shaped
public Sub setShaped(varShaped As Boolean)
	Bind("shaped", varShaped)
	boShaped = varShaped
End Sub

'get shaped
public Sub getShaped() As Boolean
	Return boShaped
End Sub

'set single-line
public Sub setSingleLine(varSingleLine As Boolean)
	AddAttrOnCondition(":single-line", varSingleLine, True)
	boSingleLine = varSingleLine
End Sub

'get single-line
public Sub getSingleLine() As Boolean
	Return boSingleLine
End Sub

public Sub setAlign(varAlign As String)
	AddAttr("align", varAlign)
	stAlign = varAlign
End Sub

public Sub getAlign() As Boolean
	Return stAlign
End Sub

public Sub setJustify(varJustify As String)
	AddAttr("justify", varJustify)
	stJustify = varJustify
End Sub

public Sub getJustify() As Boolean
	Return stJustify
End Sub

'set solo
public Sub setSolo(varSolo As Boolean)
	AddAttrOnCondition(":solo", varSolo, True)
	boSolo = varSolo
End Sub

'get solo
public Sub getSolo() As Boolean
	Return boSolo
End Sub

'build the grid
Sub BuildGrid
	LastRow = 0
	Dim sb As StringBuilder
	sb.Initialize
	'for each defined row, for each defined column
	Dim rowCnt As Int = 0
	Dim rowTot As Int = GridRows.Size - 1
	For rowCnt = 0 To rowTot
		'get this row
		Dim currentRow As VueGridRow = GridRows.GetValueAt(rowCnt)
		Dim strRow As String = BuildRow(currentRow)
		sb.Append(strRow)
	Next
	Dim sout As String = sb.tostring
	Append(sout)
End Sub

private Sub BuildRowClass(xrow As VueGridRow) As String
	Dim sb As StringBuilder
	sb.Initialize
	'add the margins
	sb.Append(BuildMargins(xrow.ma, xrow.mx, xrow.my, xrow.mt, xrow.mb, xrow.ml, xrow.mr))
	'add the padding
	sb.Append(BuildPadding(xrow.pa, xrow.px, xrow.py, xrow.pt, xrow.pb, xrow.pl, xrow.pr))
	Return sb.tostring.trim
End Sub

private Sub BuildMargins(ma As String, mx As String, my As String, mt As String, mb As String, ml As String, mr As String) As String
	mt = mt.Trim
	mb = mb.Trim
	ml = ml.Trim
	mr = mr.Trim
	ma = ma.Trim
	mx = mx.trim
	my = my.trim
	'
	Dim sb As StringBuilder
	sb.Initialize
	If ma <> "" Then sb.Append($"ma-${ma} "$)
	If mx <> "" Then sb.Append($"mx-${mx} "$)
	If my <> "" Then sb.Append($"my-${my} "$)
	If mt <> "" Then sb.Append($"mt-${mt} "$)
	If mb <> "" Then sb.Append($"mb-${mb} "$)
	If ml <> "" Then sb.Append($"ml-${ml} "$)
	If mr <> "" Then sb.Append($"mr-${mr} "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
End Sub

private Sub BuildPadding(pa As String, px As String, py As String, pt As String, pb As String, pl As String, pr As String) As String
	pt = pt.Trim
	pb = pb.Trim
	pl = pl.Trim
	pr = pr.Trim
	pa = pa.Trim
	px = px.trim
	py = py.trim
	'
	Dim sb As StringBuilder
	sb.Initialize
	If pa <> "" Then sb.Append($"pa-${pa} "$)
	If px <> "" Then sb.Append($"px-${px} "$)
	If py <> "" Then sb.Append($"py-${py} "$)
	If pt <> "" Then sb.Append($"pt-${pt} "$)
	If pb <> "" Then sb.Append($"pb-${pb} "$)
	If pl <> "" Then sb.Append($"pl-${pl} "$)
	If pr <> "" Then sb.Append($"pr-${pr} "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
End Sub

private Sub BuildSpans(col As VueGridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	If col.xs <> "" And col.xs <> "0" Then sb.Append($"cols="${col.xs}" "$)
	If col.sm <> "" And col.sm <> "0" Then sb.Append($"sm="${col.sm}" "$)
	If col.md <> "" And col.md <> "0" Then sb.Append($"md="${col.md}" "$)
	If col.lg <> "" And col.lg <> "0" Then sb.Append($"lg="${col.lg}" "$)
	If col.xl <> "" And col.xl <> "0" Then sb.Append($"xl="${col.xl}" "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
End Sub

Sub setCols(cols As String) 
	AddAttr("cols", cols)
End Sub

Sub setSM(sm As String)
	AddAttr("sm", sm)
End Sub

Sub setMD(md As String)
	AddAttr("md", md)
End Sub

Sub setLG(lg As String)
	AddAttr("lg", lg)
End Sub

Sub setXL(xl As String)
	AddAttr("xl", xl)
End Sub

Sub setXS(xs As String)
	AddAttr("xs", xs)
End Sub

Sub RemoveCols
	
End Sub

private Sub BuildOffsets(col As VueGridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	If col.ofxs <> "" Then sb.Append($"offset="${col.ofxs}" "$)
	If col.ofsm <> "" Then sb.Append($"offset-sm="${col.ofsm}" "$)
	If col.ofmd <> "" Then sb.Append($"offset-md="${col.ofmd}" "$)
	If col.oflg <> "" Then sb.Append($"offset-lg="${col.oflg}" "$)
	If col.ofxl <> "" Then sb.Append($"offset-xl="${col.ofxl}" "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
End Sub


Sub Cell(rowPos As Int, colPos As Int) As VueElement
	Return MatrixElement(rowPos, colPos)
End Sub

'return the vueelement at row pos
Sub MatrixElement(RowPos As Int, ColPos As Int) As VueElement
	Dim rcKey As String = ""
	If ColPos = 0 Then
		rcKey = $"${mName}R${RowPos}"$
	Else
		rcKey = $"${mName}R${RowPos}C${ColPos}"$
	End If
	rcKey = rcKey.tolowercase
	rcKey = CleanID(rcKey)
	If BANano.Exists(rcKey) Then
		Dim ve As VueElement
		ve.Initialize(mCallBack, rcKey, rcKey)
		Return ve
	Else
		Return Null
	End If
End Sub

'get a row
Sub Row(RowPos As Int) As BANanoElement
	Dim rcKey As String = $"${mName}R${RowPos}"$
	rcKey = rcKey.tolowercase
	Dim el As BANanoElement
	el.Initialize($"#${rcKey}"$)
	Return el
End Sub

'return element at row and column position
Sub Matrix(xRow As Int, column As Int) As BANanoElement
	Dim rcKey As String = $"${mName}R${xRow}C${column}"$
	rcKey = rcKey.tolowercase
	Dim el As BANanoElement
	el.Initialize($"#${rcKey}"$)
	Return el
End Sub

'return the matrix name
Sub MatrixID(xRow As Int, col As Int) As String
	Return Matrix(xRow, col).name
End Sub

'return the matrix name
Sub CellID(xRow As Int, col As Int) As String
	Return Matrix(xRow, col).name
End Sub

'build a single row
private Sub BuildRow(xRow As VueGridRow) As String
	'how many rows do we have to render
	Dim rowTot As Int = xRow.Rows
	Dim rowCnt As Int
	Dim sb As StringBuilder
	sb.Initialize
	'for each row
	For rowCnt = 1 To rowTot
		LastRow = LastRow + 1
		Dim rowKey As String = $"${mName}R${LastRow}"$
		rowKey = rowKey.tolowercase
		sb.Append($"<v-row class="${BuildRowClass(xRow)}" id="${rowKey}">"$)
		'get the columns to add
		Dim cols As List = xRow.Columns
		'how many columns to add here
		Dim colCnt As Int = 0
		Dim colTot As Int = cols.Size - 1
		'this will store the column count
		Dim LastColumn As Int = 0
		For colCnt = 0 To colTot
			'get this column
			Dim column As VueGridColumn = cols.Get(colCnt)
			Dim colCnt1 As Int = 0
			Dim colTot1 As Int = column.Columns
			For colCnt1 = 1 To colTot1
				'increment the column to add for this row
				LastColumn = LastColumn + 1
				Dim cellKey As String = $"${rowKey}C${LastColumn}"$
				cellKey = cellKey.tolowercase
				'if showid
				Dim strShow As String = ""
				Dim sbStyle As StringBuilder
				sbStyle.Initialize
				If bShowGridDesign Then
					strShow = cellKey
					sbStyle.append($"style="border-width:2px;border-style:dotted;border-color:grey;""$)
				End If
				'define the column structure
				Dim sbCol As StringBuilder
				sbCol.Initialize
				sbCol.Append($"<v-col id="${cellKey}" ${sbStyle.tostring}"$)
				sbCol.Append(BuildColumnClass(column))
				sbCol.Append(" ")
				sbCol.Append(BuildSpans(column))
				sbCol.append(" ")
				sbCol.Append(BuildOffsets(column))
				sbCol.Append($">${strShow}</v-col>"$)
				sb.Append(sbCol.tostring)
			Next
		Next
		sb.Append("</v-row>")
	Next
	Return sb.tostring
End Sub

'build the column class for current column
private Sub BuildColumnClass(col As VueGridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	'add the margins
	sb.Append(BuildMargins(col.ma, col.mx, col.my, col.mt, col.mb, col.ml, col.mr))
	'add the padding
	sb.Append(BuildPadding(col.pa, col.px, col.py, col.pt, col.pb, col.pl, col.pr))
	Dim sout As String = sb.ToString
	sout = sout.trim
	Dim sbout As StringBuilder
	sbout.Initialize
	If sout <> "" Then
		sbout.Append($"class="${sout}""$)
	End If
	Return sbout.tostring
End Sub

Sub AddRows1 As VueElement
	AddRows(1)
	Return Me
End Sub

Sub AddRows2 As VueElement
	AddRows(2)
	Return Me
End Sub

Sub AddRows3 As VueElement
	AddRows(3)
	Return Me
End Sub

Sub AddRows4 As VueElement
	AddRows(4)
	Return Me
End Sub

Sub AddRows5 As VueElement
	AddRows(5)
	Return Me
End Sub

Sub AddRows6 As VueElement
	AddRows(6)
	Return Me
End Sub

Sub AddRows7 As VueElement
	AddRows(7)
	Return Me
End Sub

Sub AddRows8 As VueElement
	AddRows(8)
	Return Me
End Sub

Sub AddRows9 As VueElement
	AddRows(9)
	Return Me
End Sub

Sub AddRows10 As VueElement
	AddRows(10)
	Return Me
End Sub

Sub AddRows11 As VueElement
	AddRows(11)
	Return Me
End Sub

Sub AddRows12 As VueElement
	AddRows(12)
	Return Me
End Sub


Sub AddRows(iRows As Int) As VueElement
	'if there is no existing row, then initialize the map
	If GridRows.IsInitialized = False Then GridRows.Initialize
	'lets store the last row
	LastRow = GridRows.size
	'create a new row
	Dim nRow As VueGridRow
	nRow.Initialize
	nRow.Rows = iRows
	nRow.Columns.Initialize
	nRow.mt = ""
	nRow.mb = ""
	nRow.mr = ""
	nRow.ml = ""
	nRow.pt = ""
	nRow.pb = ""
	nRow.pr = ""
	nRow.pl = ""
	'
	'lets store this new row in rows
	Dim rowKey As String = $"R${LastRow}"$
	rowKey = rowKey.tolowercase
	'lets save the row on the map
	GridRows.Put(rowKey, nRow)
	Return Me
End Sub

Sub AddColumns(iColumns As Int, xs As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement
	AddColumnsOS(iColumns, 0, 0, 0, 0, 0, xs, sm, md, lg, xl)
	Return Me
End Sub

'add columns - offsets and sizes
Sub AddColumnsOS(iColumns As Int, osxs As Int, osm As Int, omd As Int, olg As Int, oxl As Int, xs As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement
	Dim nCol As VueGridColumn
	nCol.Initialize
	nCol.Columns = iColumns
	nCol.lg = lg
	nCol.md = md
	nCol.sm = sm
	nCol.xl = xl
	nCol.xs = xs
	nCol.ofxs = osxs
	nCol.oflg = olg
	nCol.ofmd = omd
	nCol.ofsm = osm
	nCol.ofxl = oxl
	nCol.mt = ""
	nCol.mb = ""
	nCol.mr = ""
	nCol.ml = ""
	nCol.ma = ""
	nCol.mx = ""
	nCol.my = ""
	'
	nCol.pt = ""
	nCol.pb = ""
	nCol.pr = ""
	nCol.pl = ""
	nCol.pa = ""
	nCol.px = ""
	nCol.py = ""
	'
	'get the existing columns for this row
	Dim rowkey As String = $"R${LastRow}"$
	rowkey = rowkey.tolowercase
	'get the row from existing rows
	If GridRows.ContainsKey(rowkey) Then
		'get the row from existing rows
		Dim oldRow As VueGridRow = GridRows.Get(rowkey)
		'get the existing columns from the row
		oldRow.Columns.Add(nCol)
		'save it back
		GridRows.Put(rowkey,oldRow)
	End If
	Return Me
End Sub

'add columns - offsets and sizes
Sub AddColumnsOSMP(iColumns As Int, osm As Int, omd As Int, olg As Int, oxl As Int, sm As Int, md As Int, lg As Int, xl As Int, pa As Int, px As Int, py As Int, pt As Int, pb As Int, pl As Int, pr As Int, _
	ma As Int, mx As Int, my As Int, mt As Int, mb As Int, ml As Int, mr As Int) As VueElement
	Dim nCol As VueGridColumn
	nCol.Initialize
	nCol.Columns = iColumns
	nCol.lg = lg
	nCol.md = md
	nCol.sm = sm
	nCol.xl = xl
	nCol.oflg = olg
	nCol.ofmd = omd
	nCol.ofsm = osm
	nCol.ofxl = oxl
	'
	nCol.ma = ma
	nCol.mx = mx
	nCol.my = my
	nCol.mt = mt
	nCol.mb = mb
	nCol.mr = mr
	nCol.ml = ml
	'
	nCol.pa = pa
	nCol.px = px
	nCol.py = py
	nCol.pt = pt
	nCol.pb = pb
	nCol.pr = pr
	nCol.pl = pl
	'
	'get the existing columns for this row
	Dim rowkey As String = $"R${LastRow}"$
	rowkey = rowkey.tolowercase
	'get the row from existing rows
	If GridRows.ContainsKey(rowkey) Then
		'get the row from existing rows
		Dim oldRow As VueGridRow = GridRows.Get(rowkey)
		'get the existing columns from the row
		oldRow.Columns.Add(nCol)
		'save it back
		GridRows.Put(rowkey,oldRow)
	End If
	Return Me
End Sub

Sub AddColumns3x4 As VueElement
	AddColumns(3,"12","12","4","4","4")
	Return Me
End Sub

Sub AddColumns4x3 As VueElement
	AddColumns(4,"12", "12","3","3","3")
	Return Me
End Sub

Sub AddColumns2x6 As VueElement
	AddColumns(2,"12","12","6","6","6")
	Return Me
End Sub

Sub AddColumns6x2 As VueElement
	AddColumns(6,"12", "12","2","2","2")
	Return Me
End Sub

Sub AddColumns5x2 As VueElement
	AddColumns(5,"12", "12","2","2","2")
	Return Me
End Sub

Sub AddColumns3x2 As VueElement
	AddColumns(3,"12", "12","2","2","2")
	Return Me
End Sub


Sub AddColumns11x1 As VueElement
	AddColumns(11,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns10x1 As VueElement
	AddColumns(10,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns9x1 As VueElement
	AddColumns(9,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns8x1 As VueElement
	AddColumns(8,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns7x1 As VueElement
	AddColumns(7,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns12x1 As VueElement
	AddColumns(12,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns8p4 As VueElement
	AddColumns(1,"12", "12","8","8","8").AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub

Sub AddColumns4p8 As VueElement
	AddColumns(1,"12", "12","4","4","4").AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub

Sub AddColumns1p11 As VueElement
	AddColumns(1,"12", "12","1","1","1").AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub

Sub AddColumns11p1 As VueElement
	AddColumns(1,"12", "12","11","11","11").AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns2p10 As VueElement
	AddColumns(1,"12", "12","2","2","2").AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub

Sub AddColumns10p2 As VueElement
	AddColumns(1,"12", "12","10","10","10").AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub

Sub AddColumns3p9 As VueElement
	AddColumns(1,"12", "12","3","3","3").AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub

Sub AddColumns9p3 As VueElement
	AddColumns(1,"12", "12","9","9","9").AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub

Sub AddColumns7p5 As VueElement
	AddColumns(1,"12", "12","7","7","7").AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub

Sub AddColumns5p7 As VueElement
	AddColumns(1,"12", "12","5","5","5").AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub

Sub AddColumns12 As VueElement
	AddColumns(1,"12", "12","12","12","12")
	Return Me
End Sub

Sub AddColumns6 As VueElement
	AddColumns(1,"12", "12","6","6","6")
	Return Me
End Sub

Sub AddColumns2 As VueElement
	AddColumns(1,"12", "12","2","2","2")
	Return Me
End Sub

Sub AddColumns1 As VueElement
	AddColumns(1,"12", "12","1","1","1")
	Return Me
End Sub

Sub AddColumns3 As VueElement
	AddColumns(1,"12", "12","3","3","3")
	Return Me
End Sub

Sub AddColumns4 As VueElement
	AddColumns(1,"12", "12","4","4","4")
	Return Me
End Sub

Sub AddColumns5 As VueElement
	AddColumns(1,"12", "12","5","5","5")
	Return Me
End Sub

Sub AddColumns7 As VueElement
	AddColumns(1,"12", "12","7","7","7")
	Return Me
End Sub

Sub AddColumns8 As VueElement
	AddColumns(1,"12", "12","8","8","8")
	Return Me
End Sub

Sub AddColumns9 As VueElement
	AddColumns(1,"12", "12","9","9","9")
	Return Me
End Sub

Sub AddColumns10 As VueElement
	AddColumns(1,"12", "12","10","10","10")
	Return Me
End Sub

Sub AddColumns11 As VueElement
	AddColumns(1,"12", "12","11","11","11")
	Return Me
End Sub

Sub IsValidID(idName As String) As Boolean
	If idName = "" Then Return True
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			Return False
		End If
	Next
	Return True
End Sub

'set banano text value
Sub SetText(txt As String)
	If mElement <> Null Then
		mElement.SetText(txt)
	Else
		sbText.Append(txt)	
	End If
End Sub


Sub AddSizes(sSizeXS As String, sSizeSmall As String, sSizeMedium As String, sSizeLarge As String, sSizeXLarge As String) As VueElement
	sSizeXS = CStr(sSizeXS)
	sSizeSmall = CStr(sSizeSmall)
	sSizeXLarge = CStr(sSizeXLarge)
	sSizeMedium = CStr(sSizeMedium)
	sSizeLarge = CStr(sSizeLarge)
	'	
	sSizeXS = sSizeXS.trim
	sSizeSmall = sSizeSmall.Trim
	sSizeXLarge = sSizeXLarge.trim
	sSizeMedium = sSizeMedium.trim
	sSizeLarge = sSizeLarge.trim
	'
	If sSizeXS <> "" And sSizeXS <> "0" Then 
		AddAttr("cols", sSizeXS)
	End If
	If sSizeSmall <> "" And sSizeSmall <> "0" Then 
		AddAttr("sm", sSizeSmall)
	End If
	If sSizeXLarge <> "" And sSizeXLarge <> "0" Then 
		AddAttr("xl", sSizeXLarge)
	End If
	If sSizeMedium <> "" And sSizeMedium <> "0" Then 
		AddAttr("md", sSizeMedium)
	End If
	If sSizeLarge <> "" And sSizeLarge <> "0" Then
		 AddAttr("lg", sSizeLarge)
	End If
	Return Me
End Sub

Sub AddOffsets(sOffSetXS As String, sOffsetSmall As String, sOffsetMedium As String,sOffsetLarge As String,sOffsetXLarge As String) As VueElement
	sOffSetXS = sOffSetXS.Trim
	sOffsetSmall = sOffsetSmall.Trim
	sOffsetMedium = sOffsetMedium.Trim
	sOffsetLarge = sOffsetLarge.Trim
	sOffsetXLarge = sOffsetXLarge.Trim
	'
	If sOffSetXS <> "" Then AddAttr("offset", sOffSetXS)
	If sOffsetSmall <> "" Then AddAttr("offset-sm", sOffsetSmall)
	If sOffsetMedium <> "" Then AddAttr("offset-md", sOffsetMedium)
	If sOffsetLarge <> "" Then AddAttr("offset-lg", sOffsetLarge)
	If sOffsetXLarge <> "" Then AddAttr("offset-xl", sOffsetXLarge)
	Return Me
End Sub

Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement
	parent = parent.ToLowerCase
	parent = parent.Replace("#","")
	Dim item As String = $"<${tag} id="${id}"></${tag}>"$
	Dim el As BANanoElement = BANano.GetElement($"#${parent}"$).Append(item).Get($"#${id}"$)
	el.SetText(text)
	Return el
End Sub

'banano helper class
Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
	parentID = parentID.ToLowerCase
	parentID = parentID.Replace("#","")
	id = id.tolowercase
	Dim el As BANanoElement = BANano.GetElement($"#${parentID}"$).Append($"<${tag} id="${id}"></${tag}>"$).Get($"#${id}"$)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			el.SetAttr(k, v)
		Next
	End If
	'
	If BANano.IsNull(styles) = False Then
		Dim strStyle As String = BANano.ToJson(styles)
		el.SetStyle(strStyle)
	End If
	'
	If classes <> "" Then el.AddClass(classes)
	el.settext(text)
	Return el
End Sub


Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'convert a map to a list
Sub Map2List(moptions As Map, sourcefield As String, displayfield As String) As List
	sourcefield = sourcefield.ToLowerCase
	displayfield = displayfield.ToLowerCase
	Dim recs As List
	recs.Initialize
	For Each k As String In moptions.Keys
		Dim v As String = moptions.Get(k)
		k = CStr(k)
		v = CStr(v)
		Dim nrec As Map = CreateMap()
		nrec.Put(sourcefield, k)
		nrec.Put(displayfield, v)
		recs.Add(nrec)
	Next
	Return recs
End Sub


'generate a treeitem for v-tree
Sub NewTreeItem(parentID As String, key As String, text As String, mhref As String, mIcon As String, mDisabled As Boolean) As Map
	parentID = parentID.tolowercase
	key = key.tolowercase
	Dim mitem As Map = CreateMap()
	mitem.Put("id", key)
	mitem.Put("name", text)
	mitem.Put("href", mhref)
	mitem.Put("icon", mIcon)
	mitem.Put("disabled", mDisabled)
	mitem.Put("parentid", parentID)
	Return mitem
End Sub

'return the icon for the file
Sub FileIcon(ext As String) As String
	Dim extm As Map = CreateMap()
	extm.Put("html", "mdi-language-html5")
	extm.Put("js", "mdi-nodejs")
	extm.Put("json", "mdi-code-json")
	extm.Put("md", "mdi-markdown")
	extm.Put("pdf", "mdi-file-pdf")
	extm.Put("png", "mdi-file-image")
	extm.Put("txt", "mdi-file-document-outline")
	extm.Put("xls", "mdi-file-excel")
	extm.Put("csv", "mdi-file-delimited-outline")
	extm.Put("pre", "mdi-file-code-outline")
	extm.Put("code", "mdi-file-code-outline")
	extm.Put("doc", "mdi-file-word-box-outline")
	extm.Put("mp3", "mdi-file-music-outline")
	extm.Put("folder", "mdi-folder")
	extm.Put("woff", "marketweb-webfont.woff")
	extm.Put("css", "mdi-language-css3")
	'
	ext = ext.ToLowerCase
	If extm.ContainsKey(ext) Then
		Dim res As String = extm.Get(ext)
		Return res
	Else
		Return "mdi-file-document-outline"
	End If
End Sub

Sub setOverlap(b As Boolean)
	Bind("overlap", b)
End Sub

Sub setDot(b As Boolean)
	Bind("dot", b)
End Sub

Sub setItems(s As String)
	Try
		If BANano.IsNull(s) Or BANano.IsUndefined(s) Then
			Return
		End If
		s = s.ToLowerCase
		s = s.Replace(":","")
		stItems = s
		AddAttr(":items", stItems)
		SetData(stItems, NewList)
	Catch
		Log(LastException)
	End Try	
End Sub

Sub getItems As String
	Return stItems
End Sub


Sub setItemText(s As String)
	AddAttr("item-text", S)
	stItemText = S
End Sub

Sub setOpacity(d As Double)
	AddStyle("opacity", d)
End Sub


Sub getItemText As String
	Return stItemText
End Sub


Sub setItemValue(s As String)
	AddAttr("item-value", S)
	stItemText = S
End Sub

Sub getItemValue As String
	Return stItemValue
End Sub


Sub setReturnObject(b As Boolean)
	AddAttr(":return-object", b)
	bReturnObject = b
End Sub

Sub getReturnObject As Boolean
	Return bReturnObject
End Sub


Sub setReverse(b As Boolean)
	AddAttr(":reverse", b)
End Sub

Sub setMultiple(b As Boolean)
	AddAttr(":multiple", b)
End Sub

Sub OnClick(args As String)
	SetOnEvent(mCallBack, "click", args)
End Sub

Sub OnChange(args As String)
	SetOnEvent(mCallBack, "change", args)
End Sub

Sub OnClickAppend(args As String)
	SetOnEvent(mCallBack, "click:append", args)
End Sub

Sub OnClickPrepend(args As String)
	SetOnEvent(mCallBack, "click:prepend", args)
End Sub

Sub OnClickAppendOuter(args As String)
	SetOnEvent(mCallBack, "click:append-outer", args)
End Sub

Sub OnClickPrependInner(args As String)
	SetOnEvent(mCallBack, "click:prepend-inner", args)
End Sub

Sub OnClickClear(args As String)
	SetOnEvent(mCallBack, "click:clear", args)
End Sub

Sub OnClickStop(args As String)
	SetOnEvent(mCallBack, "click.stop", args)
End Sub
	
Sub OnClickPrevent(args As String)
	SetOnEvent(mCallBack, "click.prevent", args)
End Sub

Sub OnDblClick(args As String)
	SetOnEvent(mCallBack, "dblclick", args)
End Sub

Sub OnMouseMove(args As String)
	SetOnEvent(mCallBack, "MouseMove", args)
End Sub

Sub OnMouseOut(args As String)
	SetOnEvent(mCallBack, "MouseOut", args)
End Sub	

Sub OnKeyUp(args As String)
	SetOnEvent(mCallBack, "KeyUp", args)
End Sub

Sub OnKeyPress(args As String)
	SetOnEvent(mCallBack, "KeyPress", args)
End Sub	

Sub OnClickAlt(args As String)
	SetOnEvent(mCallBack,  "Click.Alt", args)
End Sub

Sub OnShift(args As String)
	SetOnEvent(mCallBack,  "Click.Shift", args)
End Sub

Sub OnStart(args As String)
	SetOnEvent(mCallBack, "start", args)
End Sub

Sub OnEnd(args As String)
	SetOnEvent(mCallBack, "end", args)
End Sub

Sub OnClickClose(args As String)
	SetOnEvent(mCallBack, "click:close", args)
End Sub

Sub setAlertBorder(mytype As String)
	AddAttr("border", mytype)
End Sub

Sub setAlertType(mytype As String)
	AddAttr("type", mytype)
End Sub

Sub SetTypeText
	AddAttr("type", "text")
End Sub

Sub SetTypePassword
	AddAttr("type", "password")
End Sub

Sub SetTypeNumber
	AddAttr("type", "number")
End Sub

Sub SetTypeTelephone
	AddAttr("type", "tel")
End Sub

Sub SetTypeEmail
	AddAttr("type", "email")
End Sub

Sub SetTypeURL
	AddAttr("type", "url")
End Sub

Sub SetTypeFile
	AddAttr("type", "file")
End Sub

Sub BindType(s As String)
	AddAttr(":type", s)
End Sub

Sub SetTypeInfo
	AddAttr("type", "info")
End Sub

Sub SetTypeWarning
	AddAttr("type", "warning")
End Sub

Sub SetTypeError
	AddAttr("type", "error")
End Sub

Sub SetTypeSuccess
	AddAttr("type", "success")
End Sub

Sub setSuccess(b As Boolean)
	AddAttr(":success", b)
End Sub

Sub setIsTex(b As Boolean)
	AddAttr(":text", b)
End Sub



'
'private Sub computedDateFormatted As String   'IgnoreDeadCode
'	Try
'		'get the saved model
'		Dim rdate As String = vue.GetData(vmodel)
'		If rdate = "" Then Return ""
'		Return vue.RunMethod("formatDate", Array(rdate)).Result
'	Catch
'		Return ""
'	End Try
'End Sub
'
''format the date
'private Sub formatDate(date As Object) As String  'IgnoreDeadCode
'	Try
'		date = "" & date
'		If date = "" Then Return Null
'		If BANano.isnull(date) Or BANano.IsUndefined(date) Then Return Null
'		Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(date))
'		Dim sdf As String = vue.DateDisplayFormat
'		If sdf = "" Then sdf = "YYYY-MM-DD"
'		Dim sdate As String = bo.RunMethod("format", Array(sdf)).Result
'		Return sdate
'	Catch
'		Return ""
'	End Try
'End Sub

private Sub getdateformat(item As String, sFormat As String) As String		'ignoredeadcode
	Dim svalue As String = FormatDisplayDate(item, sFormat)
	Return svalue
End Sub


private Sub getmoneyformat(item As String, sformat As String) As String		'ignoredeadcode
	Dim svalue As String = FormatDisplayNumber(item, sformat)
	Return svalue
End Sub

private Sub getfilesize(item As String) As String							'ignoredeadcode
	Dim svalue As String = FormatFileSize(item)
	Return svalue
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub


Sub FormatFileSize(Bytes As Float) As String					'ignoredeadcode
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

Sub NewTextField(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map)
	elID = elID.tolowercase
	setLabel(slabel)
	setRequired(bRequired)
	setPrependIcon(sPrependIcon)
	If iMaxLen > 0 Then
		setCounter(True)
	End If
	setPlaceholder(splaceholder)
	setHint(sHint)
	setVModel(vmodel)
	SetData(vmodel, "")
	AddAttr("type", "text")
	AddAttr("id", elID)
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			AddAttr(k, v)
		Next
	End If
End Sub

'return a moustache
Sub InMoustache(valuex As String) As String
	Dim s As String = $"{{ ${valuex} }}"$
	Return s
End Sub

'return a moustache
'returns item.
Sub ItemInMoustache(valuex As String) As String
	Dim s As String = $"{{ item.${valuex} }}"$
	Return s
End Sub

'convert a list to a data source
Sub ListToDataSource(keyName As String, valueName As String, lst As List) As List
	Dim nl As List
	nl.Initialize
	For Each item As String In lst
		Dim nm As Map = CreateMap()
		nm.Put(keyName, item)
		nm.Put(valueName, item)
		nl.Add(nm)
	Next
	Return nl
End Sub

'convert map values to data source
Sub MapToDataSource(m As Map) As List
	Dim nl As List
	nl.Initialize
	For Each item As String In m.keys
		Dim v As Object = m.Get(item)
		nl.Add(v)
	Next
	Return nl
End Sub

'unflatten the tree
Sub ListViewToTree As List
	Dim recs As List = BANanoShared.Unflatten(Records, "items")
	Return recs
End Sub


'
''add html of component to app and this binds events and states
'Sub AddToApp(vap As BANanoVue)
'	'Dim sout As String = ToString
'	'vap.AddHTML(sout)
'	'apply the binding for the control
'	For Each k As String In bindings.Keys
'		Dim v As String = bindings.Get(k)
'		vap.SetData(k, v)
'	Next
'	'apply the events
'	For Each k As String In methods.Keys
'		Dim cb As BANanoObject = methods.Get(k)
'		vap.SetCallBack(k, cb)
'	Next
'End Sub
'
''add html of component to another and binds events and states
'Sub AddToComponent(ve As VMComponent)
'	'Dim sout As String = ToString
'	've.AddHTML(sout)
'	'apply the binding for the control
'	For Each k As String In bindings.Keys
'		Dim v As String = bindings.Get(k)
'		ve.SetData(k, v)
'	Next
'	'apply the events
'	For Each k As String In methods.Keys
'		Dim cb As BANanoObject = methods.Get(k)
'		ve.SetCallBack(k, cb)
'	Next
'End Sub

Sub SetOnEventAttr(eventHandler As Object, event As String, args As String)
	event = event.ToLowerCase
	'
	Dim attrName As String = event
	attrName = attrName.tolowercase
	attrName = attrName.Replace(":","")
	attrName = attrName.Replace(".","")
	attrName = attrName.Replace("-","")
	'
	Dim methodName As String = $"${mName}_${attrName}"$
	'
	If SubExists(eventHandler, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${methodName}(${args})"$
	AddAttr($"v-on:${event}"$, sCode)
End Sub

Sub SetOnOwnEventAttr(eventHandler As Object, methodName As String, event As String, args As String)
	event = event.ToLowerCase
	methodName = methodName.tolowercase
	'
	Dim attrName As String = event
	attrName = attrName.tolowercase
	attrName = attrName.Replace(":","")
	attrName = attrName.Replace(".","")
	attrName = attrName.Replace("-","")
	'
	If SubExists(eventHandler, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${methodName}(${args})"$
	AddAttr($"v-on:${event}"$, sCode)
End Sub

'clear the items for this
Sub ClearItems()
	Records.Initialize
	SetData(stItems, NewList)
End Sub

'update the records
Sub RefreshItems(VC As VueComponent)
	Records = GetData(stItems)
	VC.setdata(stItems, Records)
End Sub

'add a header to the lust
Sub AddItemHeader(txt As String)
	Dim rec As Map = CreateMap()
	rec.Put("header", txt)
	Records.Add(rec)
End Sub

'add a divider
Sub AddItemDivider(binset As Boolean)
	Dim rec As Map = CreateMap()
	rec.Put("divider", True)
	If binset Then 
		rec.Put("inset", binset)
	End If
	Records.Add(rec)
End Sub

'add avatar
Sub AddItemAvatar(id As String, avatar As String, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	If avatar <> "" Then rec.Put("avatar", avatar)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

Sub ListViewSetRightChip(itemID As String, sValue As String) As VueElement
	Dim m As Map = CreateMap()
	m.Put("rightchip", sValue)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightChipColor(itemID As String, sColor As String) As VueElement
	Dim m As Map = CreateMap()
	m.Put("rightchipcolor", sColor)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetAvatar(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("avatar", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetTitle(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("title", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetSubTitle(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("subtitle", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetSubTitle1(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("subtitle1", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightIcon(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("righticon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightText(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("righttext", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightIconColor(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("righticoncolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightRating(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("rightrating", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetTo(itemID As String, sTo As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("to", sTo)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetLeftIcon(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("lefticon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetLeftIconColor(itemID As String, sIcon As String)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("lefticoncolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub AddItemAction(id As String, lefticon As String, lefticoncolor As String, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	If lefticon <> "" Then rec.Put("lefticon", lefticon)
	If lefticoncolor <> "" Then rec.Put("lefticoncolor", lefticoncolor)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

Sub ListViewSetLeftCheckBox(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("leftcheckbox", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetLeftSwitch(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("leftswitch", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightSwitch(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("rightswitch", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetRightCheckBox(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("rightcheckbox", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub AddItemLeftCheckBox(id As String, bChecked As Boolean, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	rec.Put("leftcheckbox", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

Sub AddItemLeftSwitch(id As String, bChecked As Boolean, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	rec.Put("leftswitch", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub


Sub AddItemRightSwitch(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	rec.Put("rightswitch", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	Records.Add(rec)
End Sub

Sub AddItemRightCheckBox(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String, url As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	rec.Put("rightcheckbox", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	Records.Add(rec)
End Sub

'get checked / unchecked preferences
Sub GetPreferencesChecked(VC As VueComponent, bShouldBe As Boolean) As List
	Dim nl As List
	nl.Initialize 
	Dim ds As String = getDataSource
	Dim rs1 As List = VC.GetData(ds)
	For Each rsm As Map In rs1
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If rsm.ContainsKey("leftcheckbox") Then
			brs = rsm.Get("leftcheckbox")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			brs = rsm.Get("rightcheckbox")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("rightswitch") Then
			brs = rsm.Get("rightswitch")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("leftswitch") Then
			brs = rsm.Get("leftswitch")
			If brs = bShouldBe Then nl.Add(sid)
		End If
	Next
	Return nl
End Sub

'Check/Uncheck preferences
Sub SetPreferencesChecked(VC As VueComponent, bShouldBe As Boolean)
	Dim ds As String = getDataSource
	Dim rs1 As List = VC.GetData(ds)
	Dim rsTot As Int = rs1.Size - 1
	Dim rsCnt As Int
	For rsCnt = 0 To rsTot
		Dim rsm As Map = rs1.Get(rsCnt)
		If rsm.ContainsKey("leftcheckbox") Then
			rsm.put("leftcheckbox", bShouldBe)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			rsm.put("rightcheckbox", bShouldBe)
		End If
		If rsm.ContainsKey("rightswitch") Then
			rsm.put("rightswitch", bShouldBe)
		End If
		If rsm.ContainsKey("leftswitch") Then
			rsm.put("leftswitch", bShouldBe)
		End If
		rs1.Set(rsCnt, rsm)
	Next
	VC.SetData(ds, rs1)
End Sub

Sub GetPreferences(VC As VueComponent) As Map
	Dim nm As Map = CreateMap()
	Dim ds As String = getDataSource
	Dim rs1 As List = VC.GetData(ds)
	For Each rsm As Map In rs1
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If rsm.ContainsKey("leftcheckbox") Then
			brs = rsm.Get("leftcheckbox")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			brs = rsm.Get("rightcheckbox")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("rightswitch") Then
			brs = rsm.Get("rightswitch")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("leftswitch") Then
			brs = rsm.Get("leftswitch")
			nm.Put(sid, brs)
		End If
	Next
	Return nm
End Sub

Sub SetPreferences(VC As VueComponent, prefM As Map)
	Dim ds As String = getDataSource
	Dim rs1 As List = VC.GetData(ds)
	Dim rsTot As Int = rs1.Size - 1
	Dim rsCnt As Int
	For rsCnt = 0 To rsTot
		Dim rsm As Map = rs1.Get(rsCnt)
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If prefM.ContainsKey(sid) Then
			brs = prefM.Get(sid)
			If rsm.ContainsKey("leftcheckbox") Then 
				rsm.Put("leftcheckbox", brs)
			End If	
			If rsm.ContainsKey("rightcheckbox") Then 
				rsm.Put("rightcheckbox", brs)
			End If
			If rsm.ContainsKey("rightswitch") Then 
				rsm.Put("rightswitch", brs)
			End If
			If rsm.ContainsKey("leftswitch") Then
				rsm.Put("leftswitch", brs)
			End If
			rs1.Set(rsCnt, rsm)
		End If
	Next
	VC.SetData(ds, rs1)
End Sub

'add an icon
Sub AddItemIcon(id As String, icon As String, iconcolor As String, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	'
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	If icon <> "" Then rec.Put("icon", icon)
	If iconcolor <> "" Then rec.put("iconcolor", iconcolor)
	'
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

Sub ListViewSetAvatarIcon(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("avataricon", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub ListViewSetAvatarIconColor(itemID As String, bChecked As Boolean)  As VueElement
	Dim m As Map = CreateMap()
	m.Put("avatariconcolor", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'add an avatar icon
Sub AddItemAvatarIcon(id As String, avataricon As String, avatariconcolor As String, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	'
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	If avataricon <> "" Then rec.Put("avataricon", avataricon)
	If avatariconcolor <> "" Then rec.Put("avatariconcolor", avatariconcolor)
	
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

Sub CreateListItem(id As String) As BVAD3ListItem
	Dim item As BVAD3ListItem
	item.Initialize(id)
	Return item
End Sub

'add an item to the listview
Sub ListViewAddItem(id As String, title As String) As VueElement
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If title <> "" Then rec.Put("title", title)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
	Return Me
End Sub

'add an item to the listview
Sub ListViewAddItem1(item As BVAD3ListItem) As VueElement
	Dim rec As Map = item.Item
	Records.Add(rec)
	Return Me
End Sub


'add an item to the list view
Sub AddItem(id As String, lefticon As String, lefticoncolor As String, _
	avatar As String, avataricon As String, avatariconcolor As String, icon As String, iconcolor As String, title As String, subtitle As String, _
	subtitle1 As String, righttext As String, righticon As String, righticoncolor As String, rating As Int, url As String)
	'
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	If url <> "" Then rec.Put("to", url)
	If lefticon <> "" Then rec.Put("lefticon", lefticon)
	If lefticoncolor <> "" Then rec.Put("lefticoncolor", lefticoncolor)
	'
	If avatar <> "" Then rec.Put("avatar", avatar)
	If avataricon <> "" Then rec.Put("avataricon", avataricon)
	If avatariconcolor <> "" Then rec.Put("avatariconcolor", avatariconcolor)
	
	If icon <> "" Then rec.Put("icon", icon)
	If iconcolor <> "" Then rec.put("iconcolor", iconcolor)
	'
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	'
	If righticon <> "" Then rec.Put("righticon", righticon)
	If righttext <> "" Then rec.Put("righttext", righttext)
	If righticoncolor <> "" Then rec.Put("righticoncolor", righticoncolor)
	If rating >= 0 Then rec.Put("rightrating", rating)
	'
	If mRouterReplace Then
		rec.put("replace", True)
	End If
	'
	If mRouterAppend Then
		rec.put("append", True)
	End If
	'
	Records.Add(rec)
End Sub

'add a list item template to draw item
Sub AddListViewTemplate1(numLines As Int) As VueElement
	AddListViewTemplate(numLines, Options)
	Return Me
End Sub

Sub ListItemTitle As VueElement
	Return GetVueElement($"${mName}title"$)
End Sub

Sub ListItemSubTitle As VueElement
	Return GetVueElement($"${mName}subtitle"$)
End Sub

Sub ListItemSubTitle1 As VueElement
	Return GetVueElement($"${mName}subtitle1"$)
End Sub

Sub ListItemRightChip As VueElement
	Return GetVueElement($"${mName}rightchip"$)
End Sub

Sub ListItemRightRating As VueElement
	Return GetVueElement($"${mName}rightrating"$)
End Sub

Sub ListItemRightText As VueElement
	Return GetVueElement($"${mName}rightactiontext"$)
End Sub

Sub ListItemLeftIcon As VueElement
	Return GetVueElement($"${mName}leftactionicon"$)
End Sub

Sub ListItemLeftCheckBox As VueElement
	Return GetVueElement($"${mName}leftcheckbox"$)
End Sub

Sub ListItemRightCheckBox As VueElement
	Return GetVueElement($"${mName}rightcheckbox"$)
End Sub

Sub ListItemIcon As VueElement
	Return GetVueElement($"${mName}icon"$)
End Sub

Sub ListItemRightIcon As VueElement
	Return GetVueElement($"${mName}rightactionicon"$)
End Sub

Sub ListItemLeftSwitch As VueElement
	Return GetVueElement($"${mName}leftswitch"$)
End Sub

Sub ListItemRightSwitch As VueElement
	Return GetVueElement($"${mName}rightswitch"$)
End Sub

Sub ListItem As VueElement
	Return GetVueElement($"${mName}listitem"$)
End Sub

Sub ListItemLeftAction As VueElement
	Return GetVueElement($"${mName}leftaction"$)
End Sub

Sub ListItemRightAction As VueElement
	Return GetVueElement($"${mName}rightaction"$)
End Sub

Sub ListItemAvatar As VueElement
	Return GetVueElement($"${mName}avatar"$)
End Sub

Sub ListItemAvatarImage As VueElement
	Return GetVueElement($"${mName}avatarimage"$)
End Sub

Sub ListItemAvatarIcon As VueElement
	Return GetVueElement($"${mName}avataricon"$)
End Sub

Sub ListItemIcon1 As VueElement
	Return GetVueElement($"${mName}itemicon"$)
End Sub

Sub ListItemContent As VueElement
	Return GetVueElement($"${mName}content"$)
End Sub

Sub ListItemRightAvatar As VueElement
	Return GetVueElement($"${mName}rightavatar"$)
End Sub

Sub ListItemRightAvatarImage As VueElement
	Return GetVueElement($"${mName}rightavatarimage"$)
End Sub

Sub ListItemRightAvatarIcon As VueElement
	Return GetVueElement($"${mName}rightavataricon"$)
End Sub

Sub ListItemAvatarText As VueElement
	Return GetVueElement($"${mName}avatartext"$)
End Sub

Sub ListItemRightAvatarText As VueElement
	Return GetVueElement($"${mName}rightavatartext"$)
End Sub

'add a list item template to draw item
Sub AddListViewTemplate(numLines As Int, props As ListViewItemOptions) As VueElement
	setDataSource(props.dataSource)
	'
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	Dim templateID As String = $"${elID}template"$
	Dim headerID As String = $"${elID}header"$
	Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimage"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	Dim datasource As String = props.dataSource
	Dim key As String = props.key
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	'
	datasource = datasource.ToLowerCase
	key = key.ToLowerCase
	Dim xrightitemavatarclass As String = props.rightitemavatarclass
	
	'
	Dim sTemplate As String = $"<v-template id="${templateID}" v-for="(item, index) in ${datasource}" :key="item.${key}">
<v-subheader id="${headerID}" v-if="item.header" :key="item.header">{{ item.header }}</v-subheader>
<v-divider id="${dividerID}" v-else-if="item.divider" :key="index" :inset="item.inset"></v-divider>
<v-list-item id="${listitemID}" v-else="true" :key="item.${key}" :to="item.${xurl}" active-class="${xactiveclass}">
<v-list-item-action id="${leftactionID}" v-if="item.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="item.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="item.${xlefticoncolor}" v-text="item.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="item.${xleftcheckbox}" :input-value="item.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xleftswitch}" :input-value="item.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="item.${xavatar} || item.${xavataricon} || item.${props.avatartext}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="item.${xavatar}" class="${xavatarclass}" v-if="item.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="item.${xavataricon}" :color="item.${xavatariconcolor}" class="${xavatariconclass}" v-text="item.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-text="item.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="item.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="item.${xiconcolor}" class="${xiconclass}" v-text="item.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="item.${xtitle} || item.${xsubtitle} || item.${xsubtitle1}">
<v-list-item-title id="${titleID}" v-if="item.${xtitle}">{{ item.${xtitle} }}</v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="item.${xsubtitle}">{{ item.${xsubtitle} }}</v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-If="item.${xsubtitle1}">{{ item.${xsubtitle1} }}</v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${xrightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-text="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-text="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="item.${xrightchip}" :color="item.${xrightchipcolor}" dark small v-text="item.${xrightchip}"></v-chip>
<v-list-item-action id="${rightactionID}" v-if="item.${xrighticon} || item.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="item.${xrighttext}" v-text="item.${xrighttext}"></v-list-item-action-text>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="item.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-text="item.${xrighticon}" class="${xrighticonclass}" :color="item.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="item.${xrightcheckbox}" :input-value="item.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="item.${xrightrating}" :value="item.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xrightswitch}" :input-value="item.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>
</v-template>"$
	
	'
	sTemplate = sTemplate.Replace("~","$")
	
	BANano.GetElement(parentID).Append(sTemplate)
	'
	Dim vlistitem As VueElement
	vlistitem.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
	Case 2
		vlistitem.AddAttr(":two-line", True)
	Case 3
		vlistitem.AddAttr(":three-line", True)
	End Select
	vlistitem.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "item")
	'left action
	'
'	Dim vleftcheckbox As VueElement
'	vleftcheckbox.Initialize(mCallBack, leftcheckboxID, leftcheckboxID)
'	If xshowleftcheckboxes Then
'		vleftcheckbox.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
'	End If
	'
'	Dim vrightcheckbox As VueElement
'	vrightcheckbox.Initialize(mCallBack, rightcheckboxID, rightcheckboxID)
'	If xshowrightcheckboxes Then
'		vrightcheckbox.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
'	End If
	
	Dim vleftlistitemaction As VueElement
	vleftlistitemaction.Initialize(mCallBack, leftactionID, leftactionID)
	'If xshowleftcheckboxes = False And xshowleftswitch = False Then
		vleftlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
	'End If
	'
	Dim vrightlistitemaction As VueElement
	vrightlistitemaction.Initialize(mCallBack, rightactionID, rightactionID)
	'If xshowrightcheckboxes = False And xshowrightswitch = False Then
		vrightlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
	'End If
	'
'	Dim vleftswitch As VueElement
'	vleftswitch.Initialize(mCallBack, leftswitchID, leftswitchID)
'	'If xshowleftswitch Then 
	'	vleftswitch.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "change.stop", "item")
	'End If
	'
'	Dim vrightswitch As VueElement
'	vrightswitch.Initialize(mCallBack, rightswitchID, rightswitchID)
	'If xshowrightswitch Then
	'	vrightswitch.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "change.stop", "item")
	'End If
	
	vlistitem.SetData(datasource, NewList)
	vlistitem.BindVueElement(vlistitem)
	vlistitem.BindVueElement(vleftlistitemaction)
	vlistitem.BindVueElement(vrightlistitemaction)
'	vlistitem.BindVueElement(vleftcheckbox)
'	vlistitem.BindVueElement(vrightcheckbox)
'	vlistitem.BindVueElement(vrightswitch)
'	vlistitem.BindVueElement(vleftswitch)
	'
	BindVueElement(vlistitem)
	Return vlistitem
End Sub

'add a list item template to draw item
Sub AddListItemGroupTemplate(numLines As Int) As VueElement
	Dim props As ListViewItemOptions = Options
	setDataSource(props.dataSource)
	'
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	Dim templateID As String = $"${elID}template"$
	Dim headerID As String = $"${elID}header"$
	Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimage"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	Dim datasource As String = props.dataSource
	Dim key As String = props.key
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	'
	datasource = datasource.ToLowerCase
	key = key.ToLowerCase
	Dim xrightitemavatarclass As String = props.rightitemavatarclass
	
	Dim sTemplate As String = $"<v-list-item-group id="${templateID}" active-class="${xactiveclass}">
	<v-template v-for="(item, index) in ${datasource}">
<v-list-item id="${listitemID}" :key="item.${key}" :to="item.${xurl}">
<v-list-item-action id="${leftactionID}" v-if="item.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="item.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="item.${xlefticoncolor}" v-text="item.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="item.${xleftcheckbox}" :input-value="item.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xleftswitch}" :input-value="item.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="item.${xavatar} || item.${xavataricon} || item.${props.avatartext}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="item.${xavatar}" class="${xavatarclass}" v-if="item.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="item.${xavataricon}" :color="item.${xavatariconcolor}" class="${xavatariconclass}" v-text="item.${xavataricon}"></v-icon>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="item.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="item.${xiconcolor}" class="${xiconclass}" v-text="item.${xicon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-text="item.${props.avatartext}"></span>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="item.${xtitle} || item.${xsubtitle} || item.${xsubtitle1}">
<v-list-item-title id="${titleID}" v-if="item.${xtitle}">{{ item.${xtitle} }}</v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="item.${xsubtitle}">{{ item.${xsubtitle} }}</v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-If="item.${xsubtitle1}">{{ item.${xsubtitle1} }}</v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${xrightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-text="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-text="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="item.${xrightchip}" :color="item.${xrightchipcolor}" dark small v-text="item.${xrightchip}"></v-chip>
<v-list-item-action id="${rightactionID}" v-if="item.${xrighticon} || item.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="item.${xrighttext}" v-text="item.${xrighttext}"></v-list-item-action-text>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="item.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-text="item.${xrighticon}" class="${xrighticonclass}" :color="item.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="item.${xrightcheckbox}" :input-value="item.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="item.${xrightrating}" :value="item.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xrightswitch}" :input-value="item.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>
</v-template>
</v-list-item-group>"$
	
	'
	sTemplate = sTemplate.Replace("~","$")
	
	BANano.GetElement(parentID).Append(sTemplate)
	'
	Dim vlistitem As VueElement
	vlistitem.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
	Case 2
		vlistitem.AddAttr(":two-line", True)
	Case 3
		vlistitem.AddAttr(":three-line", True)
	End Select
	vlistitem.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "item")
	'left action
	'
'	Dim vleftcheckbox As VueElement
'	vleftcheckbox.Initialize(mCallBack, leftcheckboxID, leftcheckboxID)
'	If xshowleftcheckboxes Then
'		vleftcheckbox.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
'	End If
	'
'	Dim vrightcheckbox As VueElement
'	vrightcheckbox.Initialize(mCallBack, rightcheckboxID, rightcheckboxID)
'	If xshowrightcheckboxes Then
'		vrightcheckbox.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
'	End If
	
	Dim vleftlistitemaction As VueElement
	vleftlistitemaction.Initialize(mCallBack, leftactionID, leftactionID)
	'If xshowleftcheckboxes = False And xshowleftswitch = False Then
		vleftlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
	'End If
	'
	Dim vrightlistitemaction As VueElement
	vrightlistitemaction.Initialize(mCallBack, rightactionID, rightactionID)
	'If xshowrightcheckboxes = False And xshowrightswitch = False Then
		vrightlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
	'End If
	'
'	Dim vleftswitch As VueElement
'	vleftswitch.Initialize(mCallBack, leftswitchID, leftswitchID)
'	'If xshowleftswitch Then 
	'	vleftswitch.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "change.stop", "item")
	'End If
	'
'	Dim vrightswitch As VueElement
'	vrightswitch.Initialize(mCallBack, rightswitchID, rightswitchID)
	'If xshowrightswitch Then
	'	vrightswitch.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "change.stop", "item")
	'End If
	
	vlistitem.SetData(datasource, NewList)
	vlistitem.BindVueElement(vlistitem)
	vlistitem.BindVueElement(vleftlistitemaction)
	vlistitem.BindVueElement(vrightlistitemaction)
'	vlistitem.BindVueElement(vleftcheckbox)
'	vlistitem.BindVueElement(vrightcheckbox)
'	vlistitem.BindVueElement(vrightswitch)
'	vlistitem.BindVueElement(vleftswitch)
	'
	BindVueElement(vlistitem)
	Return vlistitem
End Sub



'add a list item template to draw item
Sub AddListViewGroupTemplate1(numLines As Int, props As ListViewItemOptions) As VueElement
	AddListViewGroupTemplate(numLines, Options)
	Return Me
End Sub

'add a list item template to draw item
Sub AddListViewGroupTemplate(numLines As Int, props As ListViewItemOptions) As VueElement
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	Dim templateID As String = $"${elID}template"$
	Dim headerID As String = $"${elID}header"$
	Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimg"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	
	'
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	Dim datasource As String = props.dataSource
	Dim key As String = props.key
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	'
	datasource = datasource.ToLowerCase
	key = key.ToLowerCase
	
	Dim sTemplate As StringBuilder
	sTemplate.Initialize
	sTemplate.Append($"<v-list-group v-for="item in ${datasource}" :key="item.${key}" v-model="item.${key}" no-action active-class="${xactiveclass}">"$)
	sTemplate.Append($"<v-icon slot="prependIcon" ${props.lefticonattr} :color="item.${xiconcolor}" v-text="item.${xicon}"></v-icon>"$)
	sTemplate.Append($"<v-template v-slot:activator>"$)
	sTemplate.Append($"<v-list-item-content>"$)
	sTemplate.Append($"<v-list-item-title v-text="item.${xtitle}"></v-list-item-title>"$)
	sTemplate.Append($"</v-list-item-content>"$)
	sTemplate.Append($"</v-template>"$)
	
	sTemplate.Append($"<v-list-item id="${listitemID}" v-for="child in item.items" :key="child.${key}" :to="child.${xurl}">
<v-list-item-action id="${leftactionID}" v-if="child.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="child.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="child.${xlefticoncolor}" v-text="child.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="child.${xleftcheckbox}" :input-value="child.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="child.${xleftswitch}" :input-value="child.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="child.${xavatar} || child.${xavataricon}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="child.${xavatar}" class="${xavatarclass}" v-if="child.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="child.${xavataricon}" :color="child.${xavatariconcolor}" class="${xavatariconclass}" v-text="child.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-text="item.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="child.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="child.${xiconcolor}" class="${xiconclass}" v-text="child.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="child.${xtitle} || child.${xsubtitle} || child.${xsubtitle1}">
<v-list-item-title id="${titleID}" v-if="child.${xtitle}" v-text="child.${xtitle}"></v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="child.${xsubtitle}" v-text="child.${xsubtitle}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-if="child.${xsubtitle1}" v-text="child.${xsubtitle1}"></v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${props.rightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-text="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-text="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="child.${xrightchip}" :color="child.${xrightchipcolor}" dark small v-text="child.${xrightchip}"></v-chip>
<v-list-item-action id="${rightactionID}" v-if="child.${xrighticon} || child.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="child.${xrighttext}" v-text="child.${xrighttext}"></v-list-item-action-text>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="child.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-text="child.${xrighticon}" class="${xrighticonclass}" :color="child.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="child.${xrightcheckbox}" :input-value="child.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="child.${xrightrating}" :value="child.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="child.${xrightswitch}" :input-value="child.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>"$)
	sTemplate.Append($"</v-list-group>"$)
	'
	BANano.GetElement(parentID).Append(sTemplate.tostring)
	'
	Dim vlistitem As VueElement
	vlistitem.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
		Case 2
			vlistitem.AddAttr(":two-line", True)
		Case 3
			vlistitem.AddAttr(":three-line", True)
	End Select
	vlistitem.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "child")
	'left action
	'
	vlistitem.SetData(datasource, NewList)
	vlistitem.BindVueElement(vlistitem)
	BindVueElement(vlistitem)
	Return vlistitem
End Sub

Sub ToAttributes(m As Map) As String
	Return BANanoShared.BuildAttributes(m)
End Sub

'add a spacer to the card title
Sub AddSpacer
	mElement.Append("<v-spacer></v-spacer>")
End Sub

'add a spacer to the card title
Sub AddVerticalDivider
	mElement.Append($"<v-divider vertical class="mx-2"></v-divider>"$)
End Sub

'add a spacer to the card title
Sub AddDivider
	mElement.Append($"<v-divider></v-divider>"$)
End Sub

'add a spacer to the card title
Sub AddInsetDivider
	mElement.Append($"<v-divider inset></v-divider>"$)
End Sub

Sub VueElementExists(elID As String) As Boolean
	elID = CleanID(elID)
	Return BANano.Exists(elID)
End Sub

'add a vue element on this element
Sub AddVueElement(elID As String, tag As String, props As Map) As VueElement
	Dim parentid As String = mName
	parentid = CleanID(parentid)
	elID = elID.tolowercase
	elID = elID.Replace("#", "")
		
	'check if the element exists
	If BANano.Exists($"#${elID}"$) = False Then
		Dim parELE As BANanoElement
		parELE.Initialize(parentid)
		parELE.Append($"<${tag} id="${elID}"></${tag}>"$)
	End If
	'get the element
	Dim ve As VueElement
	ve.Initialize(mCallBack, elID, elID)
	ve.AssignProps(props)
	BindVueElement(ve)
	Return ve
End Sub

'add a vue element on this element
Sub AddVueElement2(parentID As String, elID As String, tag As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.tolowercase
	elID = elID.Replace("#", "")
		
	'check if the element exists
	If BANano.Exists($"#${elID}"$) = False Then
		Dim parELE As BANanoElement
		parELE.Initialize(parentID)
		parELE.Append($"<${tag} id="${elID}"></${tag}>"$)
	End If
	'get the element
	Dim ve As VueElement
	ve.Initialize(mCallBack, elID, elID)
	ve.AssignProps(props)
	BindVueElement(ve)
	Return ve
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

'add style on mouse over
Sub AddStyleOnMouseOver(prop As String, value As String)
	Dim sstyle As String = $"this.style.${prop}='${value}'"$
	AddAttr("onMouseOver", sstyle)
End Sub

'add style on mouse out
Sub AddStyleOnMouseOut(prop As String, value As String)
	Dim sstyle As String = $"this.style.${prop}='${value}'"$
	AddAttr("onMouseOut", sstyle)
End Sub

Sub RoundedLG
	AddClass("rounded-lg")
End Sub

Sub Rounded0
	AddClass("rounded-0")
End Sub

Sub RoundedSM
	AddClass("rounded-sm")
End Sub

Sub RoundedXL
	AddClass("rounded-xl")
End Sub

Sub RoundedPill
	AddClass("rounded-pill")
End Sub

Sub RoundedCircle
	AddClass("rounded-circle")
End Sub

Sub TransitionSwing
	AddClass("transition-swing")
End Sub

Sub DisplayBlock()
	AddStyle("display", "block")
End Sub

Sub ResizeNone()
	AddStyle("resize", "none")
End Sub

Sub CursorPointer()
	AddStyle("cursor", "pointer")
End Sub

Sub DisplayInlineBlock()
	AddStyle("display", "inline-block")
End Sub

Sub BorderNone()
	AddStyle("border", "none")
End Sub

Sub FitBlock()
	AddStyle("width", "100%")
End Sub

Sub setListStyleType(t As String)
	AddStyle("list-style-type", t)
End Sub

Sub setLineHeight(t As String)
	AddStyle("line-height", t)
End Sub

Sub setListStylePosition(t As String)
	AddStyle("list-style-position", t)
End Sub

Sub setOutlineOffset(t As String)
	AddStyle("outline-offset", t)
End Sub

Sub setTextAlignLast(t As String)
	AddStyle("text-align-last", t)
End Sub

Sub setTextEmphasis(t As String)
	AddStyle("text-emphasis", t)
End Sub

Sub setTextOverflow(t As String)
	AddStyle("text-overflow", t)
End Sub

Sub setWordBreak(t As String)
	AddStyle("word-break", t)
End Sub

Sub setWordWrap(t As String)
	AddStyle("word-wrap", t)
End Sub

Sub setListStyleImage(t As String)
	AddStyle("list-style-image", $"url('${t}')"$)
End Sub


Sub setOverflow(t As String)
	AddStyle("overflow", t)
End Sub

Sub setListStyle(t As String)
	AddStyle("list-style", t)
End Sub

public Sub setOutlineColorStyle(varBorder As String)
	AddStyle("outline-color-style", varBorder)
End Sub

public Sub setOutlineWidth(varBorder As String)
	AddStyle("outline-width", varBorder)
End Sub

public Sub setOutlineStyle(varBorder As String)
	AddStyle("outline-style", varBorder)
End Sub

public Sub setOutlineColor(varBorder As String)
	AddStyle("outline-color", varBorder)
End Sub

public Sub setOutline(varBorder As String)
	AddStyle("outline", varBorder)
End Sub

public Sub setBorderBottomWidth(varBorder As String)
	AddStyle("border-bottom-width", varBorder)
End Sub

public Sub setBorderTopWidth(varBorder As String)
	AddStyle("border-top-width", varBorder)
End Sub

public Sub setBorderLeftWidth(varBorder As String)
	AddStyle("border-left-width", varBorder)
End Sub

public Sub setBorderRightWidth(varBorder As String)
	AddStyle("border-right-width", varBorder)
End Sub

public Sub setBorderBottomStyle(varBorder As String)
	AddStyle("border-bottom-style", varBorder)
End Sub

public Sub setBorderTopStyle(varBorder As String)
	AddStyle("border-top-style", varBorder)
End Sub

public Sub setBorderleftStyle(varBorder As String)
	AddStyle("border-left-style", varBorder)
End Sub

'put this in a parend iv
Sub setResponsiveImage
	AddStyle("height", "100vh")
	AddStyle("width", "auto")
End Sub

public Sub setBorderRightStyle(varBorder As String)
	AddStyle("border-right-style", varBorder)
End Sub

public Sub setBorderBottomColor(varBorder As String)
	AddStyle("border-bottom-color", varBorder)
End Sub

public Sub setBorderTopColor(varBorder As String)
	AddStyle("border-top-color", varBorder)
End Sub

public Sub setBorderLeftColor(varBorder As String)
	AddStyle("border-left-color", varBorder)
End Sub

public Sub setBorderRightColor(varBorder As String)
	AddStyle("border-right-color", varBorder)
End Sub

public Sub setBorderBottom(varBorder As String)
	AddStyle("border-bottom", varBorder)
End Sub

public Sub setBorderTop(varBorder As String)
	AddStyle("border-top", varBorder)
End Sub

public Sub setBorderLeft(varBorder As String)
	AddStyle("border-left", varBorder)
End Sub

public Sub setBorderRight(varBorder As String)
	AddStyle("border-right", varBorder)
End Sub

public Sub setOutlineNone()
	AddStyle("outline", "none")
End Sub

public Sub setControls
	AddAttr("controls", "true")
End Sub

public Sub setAutoPlay()
	AddAttr("autoplay", "true")
End Sub

'play in a loop
public Sub setRepeat()
	AddAttr("loop", "true")
End Sub


public Sub setWhiteSpaceNoWrap()
	AddStyle("white-space", "nowrap")
End Sub

'center the text
Sub setCenterText
	AddStyle("text-align", "center")
End Sub

'set filter
Sub setAlpha(a As Int)
	a = BANano.parseInt(a)
	AddStyle("filter", $"alpha(opacity=${a})"$)
End Sub

Sub setTextAlignCenter()
	AddStyle("text-align", "center")
End Sub

Sub setTextDecorationNone()
	AddStyle("text-decoration", "none")
End Sub

Sub setVerticalAlignMiddle()
	AddStyle("vertical-align", "middle")
End Sub

Sub setVerticalAlign(s As String)
	AddStyle("vertical-align", s)
End Sub

Sub setVisibility(s As String)
	AddStyle("visibility", s)
End Sub

'set position relative
Sub setRelative
	setPosition("relative")
End Sub


Sub appendValue(s As String)
	Dim sold As String = mElement.GetValue
	sold = sold & s
	mElement.setvalue(sold)
End Sub

Sub appendText(s As String)
	Dim sold As String = mElement.GetText
	sold = sold & s
	mElement.SetText(sold)
End Sub


Sub setSmallCaps()
	AddStyle("text-transform", "small-caps")
End Sub

Sub setTextTransform(s As String)
	AddStyle("text-transform", s)
End Sub

Sub setResize(l As String)
	AddStyle("resize", l)
End Sub

Sub setTranslate(x As String, y As String)
	
End Sub

Sub setTranslateX(a As String)
	AddStyle("-ms-transform", $"translateX(${a})"$)
	AddStyle("-webkit-transform", $"translateX(${a})"$)
	AddStyle("transform", $"translateX(${a})"$)
End Sub

Sub setTranslateY(a As String)
	AddStyle("-ms-transform", $"translateY(${a})"$)
	AddStyle("-webkit-transform", $"translateY(${a})"$)
	AddStyle("transform", $"translateY(${a})"$)
	
End Sub

Sub setScale(x As String, y As String)
	
End Sub

Sub setScaleX(a As String)
	AddStyle("-ms-transform", $"scaleX(${a})"$)
	AddStyle("-webkit-transform", $"scaleX(${a})"$)
	AddStyle("transform", $"scaleX(${a})"$)
End Sub

Sub setScaleY(a As String)
	AddStyle("-ms-transform", $"scaleY(${a})"$)
	AddStyle("-webkit-transform", $"scaleY(${a})"$)
	AddStyle("transform", $"scaleY(${a})"$)
End Sub

'Sub setRotate(a As String)
'	AddStyle("-ms-transform", $"rotate(${a})"$)
'	AddStyle("-webkit-transform", $"rotate(${a})"$)
'	AddStyle("transform", $"rotate(${a})"$)	
'End Sub

Sub setRotateZ(a As String)
	AddStyle("-ms-transform", $"rotateZ(${a})"$)
	AddStyle("-webkit-transform", $"rotateZ(${a})"$)
	AddStyle("transform", $"rotateZ(${a})"$)	
End Sub


Sub setSkewX(a As String)
	AddStyle("-ms-transform", $"skewX(${a})"$)
	AddStyle("-webkit-transform", $"skewX(${a})"$)
	AddStyle("transform", $"skewX(${a})"$)
End Sub

Sub setSkewY(a As String)
	AddStyle("-ms-transform", $"skewY(${a})"$)
	AddStyle("-webkit-transform", $"skewY(${a})"$)
	AddStyle("transform", $"skewY(${a})"$)
End Sub

Sub setLinearGradient(orientation As String, firstColor As String, secondColor As String)
	AddStyle("background-image", $"-webkit-linear-gradient(${orientation},${firstColor},${secondColor})"$)
	AddStyle("background-image", $"-o-linear-gradient(${orientation},${firstColor},${secondColor})"$)
	AddStyle("background-image", $"-moz-linear-gradient(${orientation},${firstColor},${secondColor})"$)
	AddStyle("background-image", $"linear-gradient(${orientation},${firstColor},${secondColor})"$)
End Sub

'set gradient to use more than 2 colors
Sub setLinearGradient1(orientation As String, colors As List)
	Dim strColor As String = BANanoShared.Join(", ", colors) 
	AddStyle("background-image", $"-webkit-linear-gradient(${orientation},${strColor})"$)
	AddStyle("background-image", $"-o-linear-gradient(${orientation},${strColor})"$)
	AddStyle("background-image", $"-moz-linear-gradient(${orientation},${strColor})"$)
	AddStyle("background-image", $"linear-gradient(${orientation},${strColor})"$)
End Sub

Sub setHorizontalAlignment(v As String)
	Select Case v
	Case "center"
		AddStyle("margin", "auto")	
	Case "left"
	Case "right"		
	End Select
End Sub

Sub setVerticalAlignment(v As String)
	Select Case v
	Case "top"
	Case "center"
	Case "bottom"
	End Select
End Sub

Sub setLetterSpacing(d As String)
	AddStyle("letter-spacing", d)
End Sub

Sub setWordSpacing(d As String)
	AddStyle("word-spacing", d)
End Sub

Sub setTextIndent(d As String)
	AddStyle("text-indent", d)
End Sub

Sub AddStyleOnHover(prop As String, onOver As String, onOut As String)
	AddStyleOnMouseOut(prop, onOut)
	AddStyleOnMouseOver(prop, onOver)
End Sub

'set text decoration capitalize
Sub setCapitalize(b As Boolean)
	If b = False Then Return
	setTextDecoration("capitalize")
End Sub

'set text decoration uppercase
Sub setUpperCase(b As Boolean)
	If b = False Then Return
	setTextDecoration("uppercase")
End Sub

'set text decoration lowercase
Sub setLowerCase(b As Boolean)
	If b = False Then Return
	setTextDecoration("lowercase")
End Sub

'set text decoration underline
Sub setUnderLine(b As Object)
	If b = False Then Return
	setTextDecoration("underline")
End Sub

'set text decoration line through
Sub setLineThrough(b As Object)
	If b = False Then Return
	setTextDecoration("line-through")
End Sub

'set text decoration overline
Sub setOverline(b As Boolean)
	If b = False Then Return
	setTextDecoration("overline")
End Sub

'set text decoration blick
Sub setBlink(b As Boolean)
	If b = False Then Return
	setTextDecoration("blink")
End Sub

'set text decoration none
Sub setNoneTextDecoration(b As Boolean)
	If b = False Then Return
	setTextDecoration("none")
End Sub

'set box size border box
Sub setBoxSizingBorderBox()
	AddStyle("-moz-box-sizing", "border-box")
	AddStyle("-webkit-box-sizing", "border-box")
	AddStyle("box-sizing","border-box")
End Sub

'set on v-bind atts
Sub setVBindAttrs(b As Boolean)
	If b = False Then Return
	AddAttr("v-bind", "$attrs")
End Sub

'set v-on listeners
Sub setVOnListerners(b As Boolean)
	If b = False Then Return
	AddAttr("v-on", "$listeners")
End Sub

'set the name of the element
Sub setName(s As String)
	AddAttr("name", s)
End Sub

Sub setTextXSCenter(b As Boolean)
	If b = False Then Return
	AddClass("text-xs-center")
End Sub

Sub setFontWeightBold(b As Boolean)
	If b = False Then Return
	AddClass("font-weight-bold")
End Sub

Sub setFontWeightMedium(b As Boolean)
	If b = False Then Return
	AddClass("font-weight-medium")
End Sub

Sub setTextWrap(b As Boolean)
	If b = False Then Return
	AddClass("text-wrap")
End Sub	

'<code>
'Dim frm As VueElement = el.AddForm("frm", "frmvalid", True, Null)
'vuetify.BindVueElement(frm)
'Dim bValid As Boolean = vuetify.FormValidate(
'</code>
Sub AddForm(elID As String, vmodel As String, bLazyValidation As Boolean, props As Map) As VueElement
	elID = elID.tolowercase
	Dim elx As VueElement = AddVueElement1(elID, "v-form", vmodel, "", "", props)
	elx.Ref = elID
	elx.SetAttr(":lazy-validation", bLazyValidation)
	If vmodel <> "" Then
		elx.setdata(vmodel, False)
	End If
	Return elx
End Sub


Sub AddListItemAction(elID As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-action", "", "", "", Null)
End Sub


Sub AddListItemContent(elID As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-content", "", "", "", Null)
End Sub

Sub AddListItemIcon(elID As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-icon", "", "", "", Null)
End Sub


Sub AddListItemAvatar(elID As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-avatar", "", "", "", Null)
End Sub

Sub AddListItemTitle(elID As String, caption As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-title", "", caption, "", Null)
End Sub

Sub AddListItemSubTitle(elID As String, caption As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-subtitle", "", caption, "", Null)
End Sub


Sub AddListItemGroup(elID As String, color As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-group", "", "", color, Null)
End Sub

Sub AddListItemActionText(elID As String, caption As String) As VueElement
	Return AddVueElement1(elID, "v-list-item-action-text", "", caption, "", Null)
End Sub


Sub AddToolbar(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-toolbar", "", "", color, props)
End Sub

'<code>
'dim prg1 As VueElement = vuetify.AddProgressLinear(Me, "r1c1", "prg1", "prg1v", vuetify.COLOR_GREEN, null)
'vuetify.BindVueElement(prg1)
'</code>
Sub AddProgressLinear(elID As String, vmodel As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-progress-linear", vmodel, "", color, props)
End Sub

Sub AddToolbarProgressBar(elID As String, vmodel As String, color As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-progress-linear", "", "", "", Null)
	elx.Indeterminate = True
	elx.Absolute = True
	elx.Bottom = True
	elx.active = vmodel
	elx.Color = color
	elx.SetData(vmodel, False)
	Return elx
End Sub

'<code>
'dim prg1 As VueElement = vuetify.AddProgressCircular(Me, "r1c1", "prg1", "prg1v", "", vuetify.COLOR_GREEN, null)
'vuetify.BindVueElement(prg1)
'</code>
Sub AddProgressCircular(elID As String, vmodel As String, caption As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-progress-circular", vmodel, caption, color, props)
End Sub

Sub AddProgressCircular1(elID As String, vmodel As String, value As String, caption As String, width As String, size As String, color As String, colorintensity As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-progress-circular", vmodel, caption, "", Null)
	If color <> "" Then elx.Color = color
	If colorintensity <> "" Then elx.ColorIntensity = colorintensity
	If size <> "" Then elx.Size = size
	If width <> "" Then elx.width = width
	If value <> "" Then 
		elx.SetData(vmodel, value)
	End If
	Return elx
End Sub

Sub AddCard(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-card", "", "", color, props)
End Sub

Sub AddWindow(elID As String) As VueElement
	Return AddVueElement1(elID, "v-window", "", "", "", Null)
End Sub

Sub AddWindowItem(elID As String) As VueElement
	Return AddVueElement1(elID, "v-window-item", "", "", "", Null)
End Sub

Sub AddCardTitle(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-card-title", "", "", color, props)
End Sub

Sub AddCardSubTitle(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-card-subtitle", "", "", color, props)
End Sub

Sub AddCardText(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-card-text", "", "", color, props)
End Sub

Sub AddCardActions(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-card-actions", "", "", color, props)
End Sub

'add a vue element on parent
Sub AddVueElement1(elID As String, tag As String, vModel As String, Caption As String, color As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.tolowercase
	elID = elID.Replace("#", "")
	'
	If BANano.Exists(parentID) = False Then
		Log($"AddVueElement.${elID} could not be added to ${parentID}"$)
		Return Null
	End If
		
	'check if the element exists
	If BANano.Exists($"#${elID}"$) = False Then
		Dim parELE As BANanoElement
		parELE.Initialize(parentID)
		parELE.Append($"<${tag} id="${elID}"></${tag}>"$)
	End If
	'get the element
	Dim ve As VueElement
	ve.Initialize(mCallBack, elID, elID)
	If Caption <> "" Then ve.Caption = Caption
	ve.VModel = vModel
	ve.SetData(vModel, "")
	If color <> "" Then ve.Color = color
	ve.AssignProps(props)
	ve.BindAllEvents
	Return ve
End Sub

Sub BindAllEvents
	SetOnEvent(mCallBack, "blur", "")
	SetOnEvent(mCallBack, "click", "")
	SetOnEvent(mCallBack, "click.stop", "")
	SetOnEvent(mCallBack, "click.prevent", "")
	SetOnEvent(mCallBack, "change", "")
	SetOnEvent(mCallBack, "click:append", "")
	SetOnEvent(mCallBack, "click:prepend", "")
	SetOnEvent(mCallBack, "click:append-outer", "")
	SetOnEvent(mCallBack, "click:prepend-inner", "")
	SetOnEvent(mCallBack, "click:clear", "")
	SetOnEvent(mCallBack, "dblclick", "")
	SetOnEvent(mCallBack, "MouseMove", "")
	SetOnEvent(mCallBack, "MouseOut", "")
	SetOnEvent(mCallBack, "KeyUp", "")
	SetOnEvent(mCallBack, "KeyPress", "")
	SetOnEvent(mCallBack, "Click.Alt", "")
	SetOnEvent(mCallBack, "Click.Shift", "")
	SetOnEvent(mCallBack, "start", "")
	SetOnEvent(mCallBack, "end", "")
	SetOnEvent(mCallBack, "click:close", "")
	SetOnEvent(mCallBack, "focus", "")
	SetOnEvent(mCallBack, "input", "")
	SetOnEvent(mCallBack, "keydown", "")
	SetOnEvent(mCallBack, "mousedown", "")
	SetOnEvent(mCallBack, "mousedown.stop", "")
	SetOnEvent(mCallBack, "mouseup", "")
	SetOnEvent(mCallBack, "mouseover", "")
	SetOnEvent(mCallBack, "mouseout", "")
	SetOnEvent(mCallBack, "submit", "")
	SetOnEvent(mCallBack, "dblclick.prevent", "")
	SetOnEvent(mCallBack, "keydown.enter.prevent", "")
	SetOnEvent(mCallBack, "keydown.left.prevent", "")
	SetOnEvent(mCallBack, "keydown.right.prevent", "")
	SetOnEvent(mCallBack, "keydown.space.prevent", "")
	SetOnEvent(mCallBack, "keyup.enter", "")
	SetOnEvent(mCallBack, "touchstart.stop", "")
End Sub

'get the chip ref from the chip group
Sub GetChip As VueElement
	Dim elKey As String = $"${mName}chip"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub AddChipGroup(elID As String, vModel As String,  activeClass As String, bMultiple As Boolean, bShowArrows As Boolean, bFilter As Boolean, DataSource As String, Key As String, Value As String, chipgroupprops As Map, chipprops As Map) As VueElement
	elID = elID.tolowercase
	DataSource = DataSource.tolowercase
	Dim parentID As String = CleanID(mName)
	'
	Dim chipid As String = $"${elID}chip"$
	
	'get the text field, there is only 1 element on the layout
	Dim vchipgroup As VueElement = AddVueElement2(parentID, elID, "v-chip-group", Null)
	vchipgroup.Bind("show-arrows", bShowArrows)
	vchipgroup.VModel = vModel
	vchipgroup.Multiple = bMultiple
	vchipgroup.AddAttr("active-class", activeClass)
	vchipgroup.AssignProps(chipgroupprops)
	vchipgroup.BindAllEvents
	
	If bMultiple Then
		vchipgroup.SetData(vModel, NewList)
	Else
		vchipgroup.SetData(vModel, "")
	End If
	vchipgroup.SetData(DataSource, NewList)
	'
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement = AddVueElement2(elID, chipid, "v-chip", Null)
	vchip.VFor = $"item in ${DataSource}"$
	vchip.BindKey($"item.${Key}"$)
	vchip.Caption = vchip.ItemInMoustache(Value)
	vchip.AddAttr(":filter", bFilter)
	vchip.AddAttr(":value", "item.value")
	vchip.Outlined = True
	vchip.AssignProps(chipprops)
	
	vchipgroup.BindVueElement(vchip)
	Return vchipgroup
End Sub

Sub AddComboBox1(fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean, ReturnObject As Boolean) As VueElement
	Return AddComboBox(fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddSelect1(fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean, ReturnObject As Boolean) As VueElement
	Return AddSelect(fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddAutoComplete1(fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean , ReturnObject As Boolean) As VueElement
	Return AddAutoComplete(fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddAutoComplete(elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	
	Dim vselect As VueElement = AddVueElement2(parentID, elID, "v-autocomplete", Null)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.Bind("return-object", returnObject)
	vselect.AssignProps(props)
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	Dim lst As List = NewList
	vselect.SetData(sourceTable, lst)
	vselect.BindAllEvents
	Return vselect
End Sub

Sub AddRouterView(elID As String) As VueElement
	elID = elID.tolowercase
	Dim elx As VueElement = AddVueElement1(elID, "router-view", "", "", "", Null)
	elx.Ref = elID
	Return elx
End Sub

Sub AddSlot(elID As String) As VueElement
	elID = elID.tolowercase
	Dim elx As VueElement = AddVueElement1(elID, "slot", "", "", "", Null)
	Return elx
End Sub

'add the main container
Sub AddMain As VueElement
	Return AddVueElement1($"${mName}main"$, "v-main", "", "", "", Null)
End Sub

'get an embedded image
Sub GetImage As VueElement
	Dim elID As String = $"${mName}image"$
	Return GetVueElement(elID)
End Sub

Sub AddAvatar(elID As String, imgURL As String, avatarSize As Int, avatarprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim imageid As String = $"${elID}image"$
	'
	Dim avatar As VueElement = AddVueElement2(parentID, elID, "v-avatar", Null)
	If avatarSize > 0 Then 
		avatar.AddAttr("size", avatarSize)
	End If
	avatar.AssignProps(avatarprops)
	'
	Dim img As VueElement = AddVueElement2(elID, imageid, "v-img", Null)
	img.Src = imgURL
	img.Alt = ""
	img.BindAllEvents
	'
	avatar.BindVueElement(img)
	Return avatar
End Sub

'get an embedded span
Sub GetSpan As VueElement
	Return GetVueElement($"${mName}span"$)
End Sub

Sub AddAvatarGroup(elID As String, avatarSize As Int, DataSource As String, Key As String, Src As String, Alt As String, Text As String) As VueElement
	If DataSource <> "" Then DataSource = DataSource.ToLowerCase
	If Key <> "" Then Key = Key.ToLowerCase
	If Src <> "" Then Src = Src.ToLowerCase
	If Alt <> "" Then Alt = Alt.ToLowerCase
	If Text <> "" Then Text = Text.ToLowerCase
	
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim imageid As String = $"${elID}image"$
	Dim spaniD As String = $"${elID}span"$
	'
	Dim avatar As VueElement = AddVueElement2(parentID, elID, "v-avatar", Null)
	If avatarSize > 0 Then 
		avatar.AddAttr("size", avatarSize)
	End If
	avatar.VFor = $"(item, index) in ${DataSource}"$
	avatar.Bind("id", $"item.${Key}"$)
	avatar.Bind("key", $"item.${Key}"$)
	avatar.BindAllEvents
	'
	Dim img As VueElement = AddVueElement2(elID, imageid, "v-img", Null)
	img.VIf = $"item.${Src}"$
	img.Bind("src", $"item.${Src}"$)
	If Alt <> "" Then 
		img.Bind("alt", $"item.${Alt}"$)
	End If
	img.BindAllEvents
	'
	Dim txt As VueElement = AddVueElement2(elID, spaniD, "span", Null)
	txt.VIf = $"item.${Text}"$
	txt.Caption = $"{{ item.${Text} }}"$
	
	avatar.BindVueElement(img)
	avatar.BindVueElement(txt)
	Return avatar
End Sub

Sub AddAvatarWithText(elID As String, Caption As String, Color As String, avatarSize As Int, TextColor As String, TextColorIntensity As String, avatarprops As Map, textProps As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim spaniD As String = $"${elID}span"$
	'
	Dim avatar As VueElement = AddVueElement2(parentID, elID, "v-avatar", Null)
	If avatarSize <> 0 Then avatar.AddAttr("size", avatarSize)
	If Color <> "" Then avatar.Color = Color
	avatar.AssignProps(avatarprops)
	'
	Dim txt As VueElement = AddVueElement2(elID, spaniD, "span", Null)
	txt.Caption = Caption
	If TextColor <> "" Then txt.TextColor = TextColor
	If TextColorIntensity <> "" Then txt.TextColorIntensity = TextColorIntensity
	txt.AssignProps(textProps)
	avatar.BindAllEvents
	'
	avatar.BindVueElement(txt)
	Return avatar
End Sub


Sub AddSelect(elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	
	Dim vselect As VueElement = AddVueElement2(parentID, elID, "v-select", Null)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.ReturnObject = returnObject
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	'
	vselect.AssignProps(props)
	'
	vselect.SetData(sourceTable, NewList)
	vselect.BindAllEvents
	Return vselect
End Sub

Sub setSlideXTransition(b As Boolean)
	If b = False Then Return
	AddAttr("transition", "slide-x-transition")
End Sub


Sub AddSlideXTransition(elID As String, Mode As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-slide-x-transition", "", "", "", Null)
	elx.AddAttr("mode", Mode)
	Return elx
End Sub

'add span
'<code>
'dim lbl1 As VueElement = vuetify.AddSpan(Me, "r1c2", "lbl1", "Span", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddSpan(elID As String, Caption As String,  TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "span", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h6
'<code>
'dim lbl1 As VueElement = vuetify.AddH6(Me, "r1c2", "lbl1", "h6", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH6(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h6", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h5
'<code>
'dim lbl1 As VueElement = vuetify.AddH5(Me, "r1c2", "lbl1", "h5", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH5(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h5", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h4
'<code>
'dim lbl1 As VueElement = vuetify.AddH4(Me, "r1c2", "lbl1", "h4", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH4(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h4", Caption , False, TextColor, TextColorIntensity, Null)
End Sub

'add h3
'<code>
'dim lbl1 As VueElement = vuetify.AddH3(Me, "r1c2", "lbl1", "h3", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH3(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h3", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h2
'<code>
'dim lbl1 As VueElement = vuetify.AddH2(Me, "r1c2", "lbl1", "h2", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH2(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h2", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add paragraph
'<code>
'dim lbl1 As VueElement = vuetify.AddParagraph(Me, "r1c2", "lbl1", "h1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddParagraph(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "p", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h1
'<code>
'dim lbl1 As VueElement = vuetify.AddH1(Me, "r1c2", "lbl1", "h1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH1(elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "h1", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add lorem ipsum
'<code>
'dim lbl1 As VueElement = vuetify.AddLoremIpsum(Me, "r1c2", "lbl1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddLoremIpsum(elID As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(elID, "p", "", True, TextColor, TextColorIntensity, Null)
End Sub

'<code>
'dim lbl1 As VueElement = vuetify.AddLabel(Me, "r1c2", "lbl1", "h1", "This is h1", false, "", "", null)
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddLabel(elID As String, Size As String, Caption As String, iLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, Size, "", Caption, "", props)
	elx.LoremIpsum = iLoremIpsum
	elx.TextColor = TextColor
	elx.TextColorIntensity = TextColorIntensity
	Return elx
End Sub

Sub AddDraggable(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "draggable", "", "", "", Null)
	Return elx
End Sub

Sub AddDiv(elID As String) As VueElement
	Return AddVueElement1(elID, "div","", "", "", Null)
End Sub

'<code>
'Dim avue as VueElement = Vuetify.AddAlert(Me, "r1c1", "avue", False, "This is my alert", False, True, Vuetify.ALERT_TYPE_SUCCESS, Vuetify.ALERT_BORDER_LEFT, Null)
'vuetify.BindVueElement(avue)
'</code>
Sub AddAlert(elID As String, vmodel As String, bVisible As Boolean, Caption As String, iLoremIpsum As Boolean, bDismissible As Boolean, aType As String,  BorderPosition As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-alert", vmodel, Caption, "", props)
	elx.LoremIpsum = iLoremIpsum
	elx.Bind("dismissible", bDismissible)
	elx.SetData(vmodel, bVisible)
	elx.AlertType = aType
	elx.Border = BorderPosition
	Return elx
End Sub

'<code>
'Dim btn1 As VueElement = vuetify.AddButton1(Me, "r2c1", "btn1", "Button 1", Null)
'vuetify.BindVueElement(btn1)
'
''Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButton1(elID As String, sLabel As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim mbutton As VueElement = AddVueElement2(parentID, elID, "v-btn", Null)
	mbutton.Caption = sLabel
	'
	mbutton.AssignProps(props)
	mbutton.BindAllEvents
	Return mbutton
End Sub

'<code>
'Dim btn1 As VueElement = vuetify.AddButton(Me, "r2c1", "btn1", "Button 1", "primary", True, Null)
'vuetify.BindVueElement(btn1)
'
''Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButton(elID As String, sLabel As String, eColor As String, bOutlined As Boolean,  props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim mbutton As VueElement = AddVueElement2(parentID, elID, "v-btn", Null)
	mbutton.Caption = sLabel
	If bOutlined Then mbutton.Outlined = True
	If eColor <> "" Then mbutton.color = eColor
	
	mbutton.AssignProps(props)
	mbutton.BindAllEvents
	Return mbutton
End Sub

Sub AddSubHeader(elID As String, Caption As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-subheader", "", Caption, "", Null)
	Return elx
End Sub

Sub AddCarousel(elID As String, vmodel As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-carousel", vmodel, "", "", Null)
	Return elx
End Sub

Sub AddCarouselItem(elID As String, cContent As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-carousel-item", "" ,cContent, "", Null)
	Return elx
End Sub

'<code>
'dim exp As VueElement = vuetify.AddExpansionPanel(Me, "r1c1", "exp1", "exp1value")
'vuetify.BindVueElement(exp)
'</code>
Sub AddExpansionPanels(elID As String, vModel As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-expansion-panels", vModel ,"", "", Null)
	Return elx
End Sub

Sub GetBadge As VueElement
	Return GetVueElement($"${mName}badge"$)
End Sub

'a button with a badge
Sub AddButtonWithBadge(elID As String, elLabel As String, btnColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnproperties As Map, badgeproperties As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim badgeID As String = $"${elID}badge"$
	'
	Dim badgex As VueElement = AddVueElement2(parentID, badgeID, "v-badge", Null)
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	badgex.AssignProps(badgeproperties)
	'
	Dim mbadgebtn As VueElement = AddVueElement2(badgeID, elID, "v-btn", Null)
	mbadgebtn.Caption = elLabel
	If btnColor <> "" Then mbadgebtn.Color = btnColor
	mbadgebtn.BindAllEvents
	mbadgebtn.AssignProps(btnproperties)
	mbadgebtn.BindVueElement(badgex)
	Return mbadgebtn
End Sub

'get embedded icon
Sub GetIcon As VueElement
	Return GetVueElement($"${mName}icon"$)
End Sub

'get embedded template
Sub GetTemplate As VueElement
	Return GetVueElement($"${mName}template"$)
End Sub

Sub AddButtonWithIconWithBadge(elID As String, eIcon As String, btnColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnprops As Map, iconprops As Map, badgeProperties As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim sicon As String = $"${elID}icon"$
	Dim badgeID As String = $"${elID}badge"$
	
	Dim badgex As VueElement = AddVueElement2(parentID, badgeID, "v-badge", Null)
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	badgex.Overlap = True
	badgex.AssignProps(badgeProperties)
		
	Dim vbtnright As VueElement = AddVueElement2(badgeID, elID, "v-btn", Null)
	vbtnright.ButtonIcon = True
	vbtnright.BindAllEvents
	vbtnright.AssignProps(btnprops)
	
	Dim viconright As VueElement = AddVueElement2(elID, sicon, "v-icon", Null)
	viconright.Caption = eIcon
	viconright.Dark = True
	If btnColor <> "" Then vbtnright.Color = btnColor
	vbtnright.AssignProps(iconprops)
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(badgex)
	Return vbtnright
End Sub


Sub AddIconWithBadge(elID As String, eIcon As String, eColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnproperties As Map, badgeproperties As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim badgeID As String = $"${elID}badge"$
	'
	Dim badgex As VueElement = AddVueElement2(parentID, badgeID, "v-badge", Null) 
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	badgex.Overlap = True
	badgex.AssignProps(badgeproperties)
	
	Dim mbadgebtn As VueElement = AddVueElement2(badgeID, elID, "v-icon", Null)
	mbadgebtn.Caption = eIcon
	If eColor <> "" Then mbadgebtn.Color = eColor
	mbadgebtn.BindAllEvents
	mbadgebtn.AssignProps(btnproperties)
		
	badgex.BindVueElement(mbadgebtn)
	Return badgex
End Sub

'a button with an icon on the left
Sub AddButtonWithIcon(elID As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim siconright As String = $"${elID}icon"$
	
	Dim vbtnright As VueElement = AddVueElement2(parentID, elID, "v-btn", Null)
	vbtnright.buttonicon = True
	vbtnright.AssignProps(btnprops)
	'
	Dim viconright As VueElement = AddVueElement2(elID, siconright, "v-icon", Null)
	viconright.Caption = eIcon
	viconright.Dark = True
	If btnColor <> "" Then vbtnright.Color = btnColor
	vbtnright.AssignProps(iconprops)
	vbtnright.BindAllEvents
	vbtnright.BindVueElement(viconright)
	Return vbtnright
End Sub

'add custom component
Sub AddComponent(eTag As String, elID As String) As VueElement
	elID = elID.tolowercase
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim vbtn As VueElement = AddVueElement2(parentID, elID, eTag, Null) 
	Return vbtn
End Sub

Sub AddBtn(elID As String) As VueElement
	elID = elID.tolowercase
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-btn id="${elID}"></v-btn>"$)
	'
	Dim vbtn As VueElement
	vbtn.Initialize(mCallBack, elID, elID)
	Return vbtn
End Sub

Sub AddBtnToggle(elID As String) As VueElement
	Return AddVueElement1(elID, "v-btn-toggle", "", "", "", Null)
End Sub

Sub AddComboBox(elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	
	'
	Dim vselect As VueElement = AddVueElement2(parentID, elID, "v-combobox", Null)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.Bind("return-object", returnObject)
	vselect.AssignProps(props)
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	Dim lst As List = NewList
	vselect.SetData(sourceTable, lst)
	vselect.BindAllEvents
	Return vselect
End Sub

'a button with an icon on the right
'<code>
'Dim btn1 As VueElement = vuetify.AddButtonWithRightIcon(Me, "r2c1", "btn1", "Button 1", "mdi-heart", "primary", True, Null, null)
'vuetify.BindVueElement(btn1)
'
'Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButtonWithRightIcon(elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim siconright As String = $"${elID}icon"$
	Dim sspanright As String = $"${elID}span"$
	'
	Dim vbtnright As VueElement = AddVueElement2(parentID, elID, "v-btn", Null)
	If eColor <> "" Then vbtnright.Color = eColor
	If bOutlined Then vbtnright.Outlined = True
	'
	Dim vspanleft As VueElement = AddVueElement2(elID, sspanright, "span", Null)
	vspanleft.Caption = eLabel
	
	'
	Dim viconright As VueElement = AddVueElement2(elID, siconright, "v-icon", Null)
	viconright.Caption = eIcon
	viconright.Dark = True
	viconright.AddAttr(":right", True)
	'
	vbtnright.AssignProps(btnprops)
	viconright.AssignProps(iconprops)
	vbtnright.BindAllEvents
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(vspanleft)
	'
	Return vbtnright
End Sub

'a button with an icon on the left
'<code>
'Dim btn1 As VueElement = vuetify.AddButtonWithLeftIcon(Me, "r2c1", "btn1", "Button 1", "mdi-heart", "primary", True, Null, null)
'vuetify.BindVueElement(btn1)
'
''btn1 event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButtonWithLeftIcon(elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim siconright As String = $"${elID}icon"$
	Dim sspanright As String = $"${elID}span"$
	'
	Dim vbtnright As VueElement = AddVueElement2(parentID, elID, "v-btn", Null)
	If eColor <> "" Then
		vbtnright.Color = eColor
	End If
	If bOutlined Then
		vbtnright.Outlined = True
	End If
	vbtnright.AssignProps(btnprops)
	vbtnright.BindAllEvents
	
	'
	Dim viconright As VueElement = AddVueElement2(elID, siconright, "v-icon", Null)
	viconright.Caption = eIcon
	viconright.Dark = True
	viconright.AddAttr(":left", True)
	'
	Dim vspanleft As VueElement = AddVueElement2(elID, sspanright, "span", Null)
	vspanleft.Caption = eLabel
	'
	viconright.AssignProps(iconprops)
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(vspanleft)
	'
	Return vbtnright
End Sub


'a button with an icon on the right
'<code>
'Dim avatar1 As VueElement = vuetify.AddAvatarWithBadge(Me, "r2c1", "btn1", "./assets/sponge.png", "64", "avatar1", "red", Null, Null)
'vuetify.BindVueElement(avatar1)
'
'Event
'Sub avatar1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddAvatarWithBadge(elID As String, imgURL As String, avatarSize As Int, vmodel As String, badgeColor As String, avatarprops As Map, badgeprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'
	Dim avatarid As String = $"${elID}avatar"$
	Dim imageid As String = $"${elID}image"$
	'
	Dim vbadge As VueElement = AddVueElement2(parentID, elID, "v-badge", Null)
	If badgeColor <> "" Then vbadge.Color = badgeColor
	If vmodel <> "" Then vbadge.Bind("content", vmodel)
	If vmodel <> "" Then vbadge.Bind("value", vmodel)
	vbadge.AssignProps(badgeprops)
	'
	Dim avatar As VueElement = AddVueElement2(elID, avatarid, "v-avatar", Null)
	If avatarSize <> 0 Then avatar.AddAttr("size", avatarSize)
	avatar.AssignProps(avatarprops)
	
	
	Dim img As VueElement = AddVueElement2(avatarid, imageid, "v-img", Null)
	img.Src = imgURL
	img.Alt = ""
	img.BindAllEvents
	'
	vbadge.BindVueElement(img)
	vbadge.BindVueElement(avatar)
	Return vbadge
End Sub

'get the chip ref from the chip group
Sub GetAvatar As VueElement
	Dim elKey As String = $"${mName}avatar"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub AddAvatar1(elID As String, vmodel As String, avatarSize As Int, avatarprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim imageid As String = $"${elID}image"$
	'
	Dim avatar As VueElement = AddVueElement2(parentID, elID, "v-avatar", Null)
	If avatarSize > 0 Then avatar.AddAttr("size", avatarSize)
	avatar.AssignProps(avatarprops)
	
	Dim img As VueElement = AddVueElement2(elID, imageid, "v-img", Null)
	img.AddAttr(":src", vmodel)
	img.AddAttr(":lazy-src", vmodel)
	img.Alt = ""
		
	img.BindAllEvents
	avatar.BindVueElement(img)
	Return avatar
End Sub

'add date picker input
'<code>
'Dim dp1 As VueElement = Vuetify.AddDatePickerInput1(Me, "r1c1", "dp1", "dp1value", "Date", "Select a date", Null)
'vuetify.BindVueElement(dp1)
'on clear click
'Sub dp1_clearclick(e As BANanoEvent)
'End Sub
'</code>
Sub AddDatePickerInput1(elID As String, vModel As String, sLabel As String, txtprops As Map, dateprops As Map) As VueElement
	Dim dp As VueElement = AddDatePickerInput(elID, vModel, sLabel, "", False, "", "", txtprops, dateprops)
	Return dp
End Sub


'add date picker input
'<code>
'Dim dp1 As VueElement = Vuetify.AddDatePickerInput(Me, "r1c1", "dp1", "dp1value", "Date", "Select a date", True, "mdi-calendar", "", Null, NUll)
'vuetify.BindVueElement(dp1)
'on clear click
'Sub dp1_clearclick(e As BANanoEvent)
'End Sub
'</code>
Sub AddDatePickerInput(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, txtprops As Map, dateprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim menuref As String = $"${elID}menu"$
	Dim txtid As String = $"${elID}text"$
	Dim btnok As String = $"${elID}ok"$
	Dim btncancel As String = $"${elID}cancel"$
	Dim dtpicker As String = $"${elID}dp"$
	Dim btnclear As String = $"${elID}clear"$
	Dim spacer As String = $"${elID}spacer"$
	Dim tempID As String = $"${elID}template"$
	'
Dim sbTemplate As String = $"<v-menu id="${menuref}" :close-on-content-click="false" transition="scale-transition" :offset-y="true"
ref="${menuref}" :return-value.sync="${vmodel}" v-model="${menuref}" min-width="460px" max-width="460px" :nudge-right="40">
<v-template id="${tempID}" v-slot:activator="{ on, attrs }">
<v-text-field id="${txtid}" v-on="on" v-bind="attrs" label="${slabel}" v-model="${vmodel}" prepend-icon="${sPrependIcon}"
:required="${bRequired}" hint="${sHint}" ref="${vmodel}" autocomplete="off" placeholder="${splaceholder}"></v-text-field>
</v-template>
<v-date-picker id="${dtpicker}" :scrollable="true" v-model="${vmodel}" :landscape="true">
<v-btn id="${btnclear}" color="error" :text="true" v-on:click="${vmodel} = ''" :outlined="true">Clear</v-btn>
<v-spacer id="${spacer}"></v-spacer>
<v-btn id="${btncancel}" color="primary" :text="true" v-on:click="${menuref} = false" :outlined="true">
Cancel</v-btn>
<v-btn id="${btnok}" color="primary" :text="true" v-on:click="~refs.${menuref}.save(${vmodel})" :outlined="true">
Ok</v-btn>
</v-date-picker>
</v-menu>"$
	'fix the refs
	sbTemplate = sbTemplate.Replace("~","$")
	BANano.GetElement(parentID).Append(sbTemplate)
	'
	Dim vmenu As VueElement
	vmenu.Initialize(mCallBack, menuref, menuref)
	
	Dim vtextfield As VueElement
	vtextfield.Initialize(mCallBack, txtid, txtid)
	vtextfield.AssignProps(txtprops)
	vtextfield.BindAllEvents
	'
	Dim vdatepicker As VueElement
	vdatepicker.Initialize(mCallBack, dtpicker, dtpicker)
	vdatepicker.AssignProps(dateprops)
	'
	vtextfield.BindVueElement(vmenu)
	vtextfield.BindVueElement(vdatepicker)
	vtextfield.SetData(vmodel, "")
	vtextfield.SetData(menuref, False)
	Return vtextfield
End Sub

Sub GetClear(elID As String) As VueElement
	Dim elKey As String = $"${elID}clear"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub GetMenu(elID As String) As VueElement
	Dim elKey As String = $"${elID}menu"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub GetDateTimePicker(elID As String) As VueElement
	Dim elKey As String = $"${elID}dp"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub GetOK(elID As String) As VueElement
	Dim elKey As String = $"${elID}ok"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub GetCancel(elID As String) As VueElement
	Dim elKey As String = $"${elID}cancel"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub GetRadio As VueElement
	Dim elKey As String = $"${mName}radio"$
	Dim elx As VueElement = GetVueElement(elKey)
	Return elx
End Sub

Sub AddTimePickerInput1(elID As String, vModel As String, sLabel As String, txtprops As Map, tpprops As Map) As VueElement
	Dim tp As VueElement = AddTimePickerInput(elID, vModel, sLabel,"", False, "", "", txtprops, tpprops)
	Return tp 
End Sub

Sub GetDateTimePickerText As VueElement
	Return GetVueElement($"${mName}text"$)
End Sub

'add time picker input
Sub AddTimePickerInput(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, txtprops As Map, dateprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim menuref As String = $"${elID}menu"$
	Dim txtid As String = $"${elID}text"$
	Dim btnok As String = $"${elID}ok"$
	Dim btncancel As String = $"${elID}cancel"$
	Dim dtpicker As String = $"${elID}dp"$
	Dim btnclear As String = $"${elID}clear"$
	Dim spacer As String = $"${elID}spacer"$
	Dim tempID As String = $"${elID}template"$
	'
Dim sbTemplate As String = $"<v-menu id="${menuref}" :close-on-content-click="false" transition="scale-transition" :offset-y="true"
ref="${menuref}" :return-value.sync="${vmodel}" v-model="${menuref}" min-width="460px" max-width="460px" :nudge-right="40">
<v-template id="${tempID}" v-slot:activator="{ on, attrs }">
<v-text-field id="${txtid}" v-on="on" v-bind="attrs" label="${slabel}" v-model="${vmodel}" prepend-icon="${sPrependIcon}"
:required="${bRequired}" hint="${sHint}" ref="${vmodel}" autocomplete="off" placeholder="${splaceholder}"></v-text-field>
</v-template>
<v-time-picker id="${dtpicker}" :scrollable="true" v-model="${vmodel}" :landscape="true">
<v-btn id="${btnclear}" color="error" :text="true" v-on:click="${vmodel} = ''" :outlined="true">Clear</v-btn>
<v-spacer id="${spacer}"></v-spacer>
<v-btn id="${btncancel}" color="primary" :text="true" v-on:click="${menuref} = false" :outlined="true">
Cancel</v-btn>
<v-btn id="${btnok}" color="primary" :text="true" v-on:click="~refs.${menuref}.save(${vmodel})" :outlined="true">
Ok</v-btn>
</v-time-picker>
</v-menu>"$

	'fix the refs
	sbTemplate = sbTemplate.Replace("~","$")
	BANano.GetElement(parentID).Append(sbTemplate)
	'
	Dim vmenu As VueElement
	vmenu.Initialize(mCallBack, menuref, menuref)
	
	Dim vtextfield As VueElement
	vtextfield.Initialize(mCallBack, txtid, txtid)
	vtextfield.AssignProps(txtprops)
	vtextfield.BindAllEvents
	'
	Dim vdatepicker As VueElement
	vdatepicker.Initialize(mCallBack, dtpicker, dtpicker)
	vdatepicker.AssignProps(dateprops)
	'
	vtextfield.BindVueElement(vmenu)
	vtextfield.BindVueElement(vdatepicker)
	vtextfield.SetData(vmodel, "")
	vtextfield.SetData(menuref, False)
	Return vtextfield
End Sub


Sub AddIcon(elID As String, eIcon As String, color As String, iDark As Boolean, iconprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vbtnright As VueElement = AddVueElement2(parentID, elID, "v-icon", Null)
	vbtnright.Dark = iDark
	vbtnright.Caption = eIcon
	If color <> "" Then vbtnright.Color = color
	vbtnright.AssignProps(iconprops)
	vbtnright.BindAllEvents
	Return vbtnright
End Sub

Sub AddBadge(elID As String, vmodel As String, content As String, color As String, bDot As Boolean, bOverLap As Boolean, iDark As Boolean, badgeProps As Map) As VueElement
	Dim parentID As String  = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vbtnright As VueElement = AddVueElement2(parentID, elID, "v-badge", Null)
	vbtnright.Dark = iDark
	If color <> "" Then vbtnright.Color = color
	vbtnright.Dot = bDot
	vbtnright.Overlap = bOverLap
	vbtnright.VModel = vmodel
	vbtnright.SetData(vmodel, content)
	vbtnright.AssignProps(badgeProps)
	Return vbtnright
End Sub


Sub AddSearch(elID As String, vmodel As String, slabel As String, bSolo As Boolean, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vtextfield As VueElement = AddVueElement2(parentID, elID, "v-text-field", Null)
	vtextfield.Label = slabel
	vtextfield.AppendIcon = "mdi-magnify"
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.Solo = bSolo
	vtextfield.Clearable = True
	vtextfield.SingleLine = True
	vtextfield.HideDetails = True
	vtextfield.BindAllEvents
	vtextfield.Shrink
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

Sub AddParallax(elID As String, sheight As String, src As String, alt As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vparallax As VueElement = AddVueElement2(parentID, elID, "v-parallax", Null)
	vparallax.Src = src
	vparallax.Height = sheight
	vparallax.Alt = alt
	vparallax.AssignProps(props)
	Return vparallax
End Sub

'<code>
'Dim fi1 As VueElement = vuetify.AddFileInput(Me, "r1c1", "fi1", "fi1", "Select File", "", False, "", null)
'vuetify.BindVueElement(fi1)
'Sub fi1_change(fileObj As Map)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
'start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''update state of some element
''VC.SetData("vmodel, fp)
'End Sub
''****for multiple files
'Sub fi1_change(fileList As List)
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
'Dim uploads As List = vc.NewList
''for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''uploads.Add(fp)
'next
'End Sub
'</code>
Sub AddFileInput(elID As String, vmodel As String, slabel As String, splaceholder As String, bMultiple As Boolean, sHint As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vfileinput As VueElement = AddVueElement2(parentID, elID, "v-file-input", Null)
	vfileinput.Label = slabel
	vfileinput.Placeholder = splaceholder
	vfileinput.Hint = sHint
	vfileinput.VModel = vmodel
	vfileinput.AddAttrOnConditionTrue(":multiple", bMultiple, True)
	vfileinput.BindAllEvents
	vfileinput.AssignProps(props)
	If vmodel <> "" Then
		If bMultiple Then
			vfileinput.SetData(vmodel, NewList)
		Else
			vfileinput.SetData(vmodel, Null)	
		End If
	End If
	Return vfileinput
End Sub


'<code>
'Dim fi As VueElement = vuetify.AddFileInput(Me, "r1c1", "fi", "fi", "Browse File", null)
'vuetify.BindVueElement(fi)
'Sub fi_change(fileObj As Map)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''update state of some element
''VC.SetData("vmodel, fp)
'End Sub
''****for multiple files
'Sub fi1_change(fileList As List)
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
'Dim uploads As List = vc.NewList
''for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''uploads.Add(fp)
'next
'End Sub
'</code>
Sub AddFileInput1(fldName As String, vmodel As String, title As String, props As Map) As VueElement
	Dim elx As VueElement = AddFileInput(fldName, vmodel, title, "", False, "", props)
	Return elx
End Sub

Sub AddSlider(elID As String, vmodel As String, slabel As String, iminvalue As Object, imaxvalue As Object, iStep As Int,  bShowThumb As Boolean,  bVertical As Boolean, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	'get the text field, there is only 1 element on the layout
	Dim vslider As VueElement = AddVueElement2(parentID, elID, "v-slider", Null)
	vslider.Label = slabel
	vslider.VModel = vmodel
	vslider.SetData(vmodel, 0)
	If bShowThumb Then 
		vslider.AddAttr("thumb-label", "always")
	End If
	vslider.AddAttr(":vertical", bVertical)
	vslider.AddAttr("min", iminvalue)
	vslider.AddAttr("max", imaxvalue)
	If iStep > 0 Then vslider.AddAttr("step", iStep)
	vslider.BindAllEvents
	vslider.AssignProps(props)
	Return vslider
End Sub

'<code>
'add a telephone
'Dim txtF As VueElement = vuetify.AddTelephone1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTelephone1(elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddTelephone(elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a telephone
'Dim txtF As VueElement = vuetify.AddTelephone(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTelephone(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim el As VueElement = AddTextField(elID, vmodel, slabel,splaceholder, bRequired, sPrependIcon, iMaxLen, sHint, props)
	el.SetTypeTelephone
	Return el
End Sub

'<code>
'add an email
'Dim txtF As VueElement = vuetify.AddEmail1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddEmail1(elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddEmail(elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddEmail(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddEmail(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim el As VueElement = AddTextField(elID, vmodel, slabel,splaceholder, bRequired, sPrependIcon, iMaxLen, sHint, props)
	el.SetTypeEmail
	Return el
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextField1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextField1(elID As String, vModel As String, sLabel As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vtextfield As VueElement = AddVueElement2(parentID, elID, "v-text-field", Null)
	vtextfield.Label = sLabel
	vtextfield.VModel = vModel
	vtextfield.SetData(vModel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextField(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextField(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vtextfield As VueElement = AddVueElement2(parentID, elID, "v-text-field", Null)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextArea1(Me, "r1c1", "txtF", "fldName", "Text Field")
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextArea1(elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddTextArea(elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextArea(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextArea(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vtextfield As VueElement = AddVueElement2(parentID, elID, "v-textarea", Null)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

Sub AddPassword1(fldName As String, vmodel As String, title As String, maxLen As Int, props As Map) As VueElement
	Return AddPassword(fldName, vmodel, title, "", False, "", maxLen, "", props)
End Sub

Sub AddPassword(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim bshowPassword As String = $"${elID}ShowPassword"$
	bshowPassword = bshowPassword.tolowercase
	Dim vtextfield As VueElement = AddVueElement2(parentID, elID, "v-text-field", Null)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypePassword
	vtextfield.BindAllEvents
	vtextfield.AddAttr(":type", $"${bshowPassword} ? 'text' : 'password'"$)
	vtextfield.AddAttr(":append-icon", $"${bshowPassword} ? 'mdi-eye' : 'mdi-eye-off'"$)
	vtextfield.AddAttr("v-on:click:append", $"${bshowPassword} = !${bshowPassword}"$)
	vtextfield.AddAttr("autocomplete", "off")
	vtextfield.AssignProps(props)
	vtextfield.SetData(bshowPassword, False)
	Return vtextfield
End Sub


Sub AddSwitch(sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, bInset As Boolean, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	sid = sid.ToLowerCase
	Dim vswitch As VueElement = AddVueElement2(parentID, sid, "v-switch", Null)
	vswitch.VModel = vmodel
	vswitch.SetData(vmodel, "")
	vswitch.label = slabel
	If BANano.IsNull(truevalue) = False Or BANano.IsUndefined(truevalue) = False Then 
		vswitch.Value = truevalue
		vswitch.AddAttr("true-value", truevalue)
	End If
	If BANano.IsNull(falsevalue) = False Or BANano.IsUndefined(truevalue) = False Then 
		vswitch.AddAttr("false-value", falsevalue)
	End If
	vswitch.AddAttr(":inset", bInset)
	If color <> "" Then vswitch.Color = color
	vswitch.AssignProps(props)
	vswitch.BindAllEvents
	If vmodel <> "" Then
		vswitch.SetData(vmodel, truevalue)
	End If
	Return vswitch
End Sub

Sub AddRating(sid As String, vmodel As String, slength As Int, ssize As Int, bHover As Boolean, color As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	sid = sid.ToLowerCase
	Dim vrating As VueElement = AddVueElement2(parentID, sid, "v-rating", Null)
	vrating.VModel = vmodel
	vrating.SetData(vmodel, Null)
	If slength <> 0 Then 
		vrating.AddAttr("length", slength)
	End If
	If ssize <> 0 Then 
		vrating.AddAttr("size", ssize)
	End If
	vrating.AddAttr(":hover", bHover)
	If color <> "" Then 
		vrating.Color = color
	End If
	vrating.AssignProps(props)
	vrating.BindAllEvents
	Return vrating
End Sub

Sub AddCheckBox(sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	sid = sid.ToLowerCase
	Dim vcheckbox As VueElement = AddVueElement2(parentID, sid, "v-checkbox", Null)
	vcheckbox.VModel = vmodel
	vcheckbox.SetData(vmodel, Null)
	vcheckbox.label = slabel
	If BANano.IsNull(truevalue) = False Or BANano.IsUndefined(truevalue) = False Then
		vcheckbox.Value = truevalue
		vcheckbox.AddAttr("true-value", truevalue)
	End If
	If BANano.IsNull(falsevalue) = False Or BANano.IsUndefined(truevalue) = False Then
		vcheckbox.AddAttr("false-value", falsevalue)
	End If
	If color <> "" Then vcheckbox.Color = color
	vcheckbox.AssignProps(props)
	vcheckbox.BindAllEvents
	If vmodel <> "" Then 
		vcheckbox.SetData(vmodel, truevalue)
	End If
	Return vcheckbox
End Sub

'<code>
'Dim vimg As VueElement = vuetify.AddImage1(Me, "r1c1", "vimg", "vmodel", "Logo", "100px", "100px", null)
'vuetify.BindVueElement(vimg)
'
'Sub vimg_click(e As BANanoEvent)
'End Sub 
'</code>
Sub AddImage1(elID As String, vmodel As String, alt As String, sheight As String, swidth As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vimg As VueElement = AddVueElement2(parentID, elID, "v-img", Null)
	If sheight <> "" Then vimg.MaxHeight = sheight
	If swidth <> "" Then vimg.MaxWidth = swidth
	vimg.AddAttr(":src", vmodel)
	vimg.AddAttr(":lazy-src", vmodel)
	vimg.Alt = alt
	'vimg.AddAttr(":aspect-ratio", "16/9")
	vimg.BindAllEvents
	vimg.AssignProps(props)
	Return vimg
End Sub

'<code>
'Dim vimg As VueElement = vuetify.AddImage(Me, "r1c1", "vimg", "./assets/logo.png", "./assets/logo.png", "Logo", "100px", "100px", null)
'vuetify.BindVueElement(vimg)
'
'Sub vimg_click(e As BANanoEvent)
'End Sub 
'</code>
Sub AddImage(elID As String, src As String, lazysrc As String, alt As String, sheight As String, swidth As String, props As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim vimg As VueElement = AddVueElement2(parentID, elID, "v-img", Null)
	If sheight <> "" Then vimg.MaxHeight = sheight
	If swidth <> "" Then vimg.MaxWidth = swidth
	vimg.Src = src
	vimg.Alt = alt
	If lazysrc = "" Then 
		vimg.AddAttr("lazy-src", src)
	Else
		vimg.AddAttr("lazy-src", lazysrc)
	End If
	'vimg.AddAttr(":aspect-ratio", "16/9")
	vimg.BindAllEvents
	vimg.AssignProps(props)
	Return vimg
End Sub

'add spacer
Sub AddSpacer1(elid As String, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-spacer", "", "", "", props)
	Return vlist
End Sub

'add sparkline
Sub AddSparkLine(elid As String) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-sparkline", "", "", "", Null)
	Return vlist
End Sub


'add divider
Sub AddDivider1(elid As String, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-divider", "", "", "", props)
	Return vlist
End Sub


Sub AddList(elid As String, bDense As Boolean, bFlat As Boolean, bRounded As Boolean, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-list", "", "", "", props)
	vlist.Bind("rounded", bRounded)
	vlist.Bind("flat", bFlat)
	vlist.Bind("dense", bDense)
	vlist.NewListViewItemOptions
	Return vlist
End Sub

Sub AddList1(elID As String) As VueElement
	Dim vlist As VueElement = AddVueElement1(elID, "v-list", "", "", "", Null)
	vlist.NewListViewItemOptions
	Return vlist
End Sub

Sub AddListItem(elid As String, props As Map) As VueElement
	Return AddVueElement1(elid, "v-list-item", "", "", "", props)
End Sub

Sub AddFooter(elid As String, bPadless As Boolean, bFlat As Boolean, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-footer", "", "", "", props)
	vlist.Bind("padless", bPadless)
	vlist.Bind("flat", bFlat)
	Return vlist
End Sub


Sub AddHover(elid As String, props As Map) As VueElement
	Return AddVueElement1(elid, "v-hover", "", "", "", props)
End Sub


Sub AddTimePicker(elid As String, vmodel As String, defaultValue As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement1(elid, "v-time-picker", vmodel, "", "", props)
	elx.SetData(vmodel, defaultValue)
	Return elx
End Sub


Sub AddDatePicker(elid As String, vmodel As String, defaultValue As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement1(elid, "v-date-picker", vmodel, "", "", props)
	elx.SetData(vmodel, defaultValue)
	Return elx
End Sub


Sub AddMenu(elid As String, returnValue As String, bCloseOnContentClick As Boolean, bCloseOnClick As Boolean, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement1(elid, "v-menu", "", "", "", props)
	elx.Bind("close-on-content-click", bCloseOnContentClick)
	elx.Bind("close-on-click", bCloseOnClick)
	If returnValue <> "" Then elx.Bind("return-value.sync",returnValue)
	Return elx
End Sub


Sub AddDialog(elid As String, vmodel As String, bPersistent As Boolean, width As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement1(elid, "v-dialog", vmodel, "", "", props)
	elx.Width = width
	elx.Persistent = bPersistent
	elx.SetData(vmodel, False)
	Return elx
End Sub

Sub AddChipWithAvatar(elID As String, src As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, avatarprops As Map, imgprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim spanID As String = $"${elID}span"$
	Dim avarID As String = $"${elID}avatar"$
	Dim imgID As String = $"${elID}image"$
	'
	Dim vchip As VueElement = AddVueElement2(parentID, elID, "v-chip", Null)
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	If color <> "" Then vchip.Color = color
	vchip.AssignProps(chipprops)
	vchip.BindAllEvents
	vchip.SetOnEvent(mCallBack, "click", $"'${elID}'"$)
	vchip.SetOnEvent(mCallBack, "click:close", $"'${elID}'"$)
	'
	Dim vavatar As VueElement = AddVueElement2(elID, avarID, "v-avatar", Null)
	vavatar.AddAttr(":left", True)
	vavatar.AssignProps(avatarprops)
	'
	Dim vimg As VueElement = AddVueElement2(avarID, imgID, "v-img", Null)
	vimg.Src = src
	vimg.lazysrc = src
	vimg.AssignProps(imgprops)
	'
	Dim span As VueElement = AddVueElement2(elID, spanID, "span", Null)
	span.Caption = label
	'
	vchip.BindVueElement(span)
	vchip.BindVueElement(vavatar)
	vchip.BindVueElement(vimg)
	'
	Return vchip
End Sub


Sub AddChipWithIcon(elID As String, sicon As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, iconprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim iconID As String = $"${elID}icon"$
	Dim spanID As String = $"${elID}span"$
	'
	Dim vchip As VueElement = AddVueElement2(parentID, elID, "v-chip", Null)
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	If color <> "" Then vchip.Color = color
	vchip.BindAllEvents
	vchip.SetOnEvent(mCallBack, "click", $"'${elID}'"$)
	vchip.SetOnEvent(mCallBack, "click:close", $"'${elID}'"$)'
	'
	Dim vicon As VueElement = AddVueElement2(elID, iconID, "v-icon", Null)
	vicon.caption = sicon
	'
	Dim span As VueElement  = AddVueElement2(elID, spanID, "span", Null)
	span.Caption = label
	'
	vchip.AssignProps(chipprops)
	vicon.AssignProps(iconprops)
	'
	vchip.BindVueElement(vicon)
	vchip.BindVueElement(span)
	Return vchip
End Sub

Sub AddRadioGroup(elID As String, vmodel As String, sLabel As String, bRow As Boolean, bMultiple As Boolean, sourceTable As String, key As String, value As String, colorField As String, radiogroupprops As Map, radioprops As Map) As VueElement
	Dim parentID As String = CleanID(mName)
	elID = elID.ToLowerCase
	Dim radioID As String = $"${elID}radio"$
	
	sourceTable = sourceTable.ToLowerCase
	key = key.ToLowerCase
	value = value.ToLowerCase
	
	colorField = colorField.tolowercase
	Dim vradiogroup As VueElement = AddVueElement2(parentID, elID, "v-radio-group", Null)
	vradiogroup.label = sLabel
	vradiogroup.Multiple = bMultiple
	vradiogroup.AddAttr(":row", bRow)
	vradiogroup.AddAttr(":column", Not(bRow))
	vradiogroup.VModel = vmodel
	vradiogroup.AssignProps(radiogroupprops)
	'
	Dim vradio As VueElement = AddVueElement2(elID, radioID, "v-radio", Null)
	vradio.VFor = $"item in ${sourceTable}"$
	vradio.BindKey($"item.${key}"$)
	vradio.Bind("label", $"item.${value}"$)
	vradio.Bind("value", $"item.${key}"$)
	If colorField <> "" Then 
		vradio.Bind("color", $"item.${colorField}"$)
	End If
	vradio.AssignProps(radioprops)
	If bMultiple Then
		Dim lst As List = NewList
		vradiogroup.SetData(vmodel, lst)
	Else
		vradiogroup.SetData(vmodel, Null)
	End If
	Dim lst As List = NewList
	vradiogroup.SetData(sourceTable, lst)
	vradiogroup.BindAllEvents
	vradiogroup.SetOnEvent(mCallBack, "change", $"item.${key}"$)
	vradiogroup.BindVueElement(vradio)
	Return vradiogroup
End Sub

Sub AddFab(elID As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	Dim np As Map = CreateMap()
	np.Put(":fab", True)
	np.Put(":outlined", bOutlined)
	If BANano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As String = btnprops.Get(k)
			np.Put(k, v)
		Next
	End If
	Dim ip As Map = CreateMap()
	ip.Put(":fab", True)
	If BANano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As String = iconprops.Get(k)
			ip.Put(k, v)
		Next
	End If
	Dim btn As VueElement = AddButtonWithIcon(elID, eIcon, eColor, np, ip)
	Return btn
End Sub

Sub setMXAuto(b As Boolean)
	If b = False Then Return
	AddClass("mx-auto")
End Sub

Sub setPaddingA(v As String)
	AddStyle("padding-top", v)
	AddStyle("padding-bottom", v)
	AddStyle("padding-left", v)
	AddStyle("padding-right", v)
End Sub

Sub setPaddingX(v As String)
	AddStyle("padding-left", v)
	AddStyle("padding-right", v)
End Sub

Sub setPaddingY(v As String)
	AddStyle("padding-top", v)
	AddStyle("padding-bottom", v)
End Sub

Sub setPaddingT(v As String)
	AddStyle("padding-top", v)
End Sub

Sub setPaddingB(v As String)
	AddStyle("padding-bottom", v)
End Sub

Sub setPaddingR(v As String)
	AddStyle("padding-right", v)
End Sub

Sub setPaddingL(v As String)
	AddStyle("padding-left", v)
End Sub

Sub setMarginT(v As String)
	AddStyle("margin-top", v)
End Sub

Sub setMarginB(v As String)
	AddStyle("margin-bottom", v)
End Sub

Sub setMarginR(v As String)
	AddStyle("margin-right", v)
End Sub

Sub setMarginL(v As String)
	AddStyle("margin-left", v)
End Sub

Sub setMarginA(v As String)
	AddStyle("margin-top", v)
	AddStyle("margin-bottom", v)
	AddStyle("margin-left", v)
	AddStyle("margin-right", v)
End Sub

Sub setMarginX(v As String)
	AddStyle("margin-left", v)
	AddStyle("margin-right", v)
End Sub

Sub setMarginY(v As String)
	AddStyle("margin-top", v)
	AddStyle("margin-bottom", v)
End Sub

Sub setMarginTop(v As String)
	AddStyle("margin-top", v)
End Sub

Sub setMarginBottom(v As String)
	AddStyle("margin-bottom", v)
End Sub

Sub setMarginLeft(v As String)
	AddStyle("margin-left", v)
End Sub

Sub setMarginRight(v As String)
	AddStyle("margin-right", v)
End Sub


Sub setPaddingTop(v As String)
	AddStyle("padding-top", v)
End Sub

Sub setPaddingBottom(v As String)
	AddStyle("padding-bottom", v)
End Sub

Sub setPaddingLeft(v As String)
	AddStyle("padding-left", v)
End Sub

Sub setPaddingRight(v As String)
	AddStyle("padding-right", v)
End Sub

Sub setMiniVariantWidth(w As String)
	SetAttr("mini-variant-width", w)
End Sub

Sub setMiniVariantSync(w As String)
	SetAttr(":mini-variant.sync", w)
End Sub

Sub setMiniVariant(b As Object)
	SetAttr(":mini-variant", b)
End Sub

Sub setFloating(w As Object)
	SetAttr(":floating", w)
End Sub

Sub setExpandOnHover(eoh As Object)
	SetAttr(":expand-on-hover", eoh)
End Sub

'<code>
'Dim drw as VueElement = vuetify.AddDrawer(Me, "vapp", "drw1", "drw1show", False, "", False, null)
'drw.App = True
'drw.Width = 300
'vuetify.BindVueElement(drw)
'</code>
Sub AddDrawer(elID As String, vmodel As String, bVisible As Boolean, Color As String, bRight As Boolean, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-navigation-drawer", vmodel, "", Color, props)
	elx.Right = bRight
	elx.SetData(vmodel, bVisible)
	Return elx
End Sub

Sub AddNavigationDrawer(elID As String, vmodel As String) As VueElement
	Return AddVueElement1(elID, "v-navigation-drawer", vmodel, "", "", Null)
End Sub

Sub AddOverlay(elID As String, vmodel As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-overlay", vmodel, "", "", props)
End Sub

Sub setDisableRouteWatcher(b As Object)
	AddAttr(":disable-route-watcher", b)
End Sub


Sub AddToolbarTitle(elID As String, Caption As String, Color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-toolbar-title", "", Caption, Color, props)
End Sub


Sub AddSnackBar(elID As String, vmodel As String, Caption As String, color As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-snackbar", vmodel, Caption, color, props)
	Return elx
End Sub

Sub AddNav(elID As String) As VueElement
	Return AddVueElement1(elID, "nav", "", "", "", Null)
End Sub

Sub AddAppBar(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-app-bar", "", "", "", Null)
	Return elx
End Sub

Sub AddTransitionGroup(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "transition-group", "", "", "", Null)
	Return elx
End Sub

Sub AddApp(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-app", "", "", "", Null)
	Return elx
End Sub

'add a pdf viewing iframe
Sub AddPDFView(elID As String, sourceFile As String) As VueElement
	Dim div As VueElement = AddVueElement1(elID, "div", "", "", "", Null)
	div.Width = "100%"
	div.Height = "100%"
	div.AddStyle("width", "100%")
	div.AddStyle("height", "100%")
	div.AddStyle("max-width", "100%")
	div.AddStyle("max-height", "100%")
	'
	Dim sourcefileLink As String = $"${elID}src"$
	Dim iframe As VueElement = div.AddVueElement(elID & "iframe", "iframe", Null)
	iframe.Width = "100%"
	iframe.Height = "100%"
	iframe.AddStyle("width", "100%")
	iframe.AddStyle("height", "100%")
	iframe.AddStyle("max-width", "100%")
	iframe.AddStyle("max-height", "100%")
	iframe.AddAttr("scrolling", "no")
	iframe.Bind("src", sourcefileLink)
	iframe.SetData(sourcefileLink, sourceFile)
	BindVueElement(iframe) 
	Return iframe
End Sub

'add a master snack bar for the app
Sub AddAppSnackBar As VueElement
	Dim elx As VueElement = AddVueElement1("appsnack", "v-snackbar", "appsnackshow", "", "", Null)
	elx.Bind("app", True)
	elx.Caption = "{{ appsnackmessage }}"
	elx.Bind("right", "appsnackright")
	elx.Bind("top", "appsnacktop")
	elx.Bind("color", "appsnackcolor")
	elx.Bind("bottom", "appsnackbottom")
	elx.Bind("centered", "appsnackcentered")
	elx.Bind("outlined", "appsnackoutlined")
	elx.Bind("left", "appsnackleft")
	elx.Bind("shaped", "appsnackshaped")
	elx.Bind("rounded", "appsnackrounded")
	elx.SetData("appsnackmessage", "")
	elx.SetData("appsnackshow", False)
	elx.SetData("appsnackright", True)
	elx.SetData("appsnacktop", True)
	elx.SetData("appsnackcolor","")
	elx.SetData("appsnackbottom", False)
	elx.SetData("appsnackcentered", False)
	elx.SetData("appsnackoutlined", False)
	elx.SetData("appsnackleft", False)
	elx.SetData("appsnackshaped", True)
	elx.SetData("appsnackrounded", False)
	Return elx
End Sub

Sub AddAppBarNavIcon(elID As String) As VueElement
	Return AddVueElement1(elID, "v-app-bar-nav-icon", "", "", "", Null)
End Sub

Sub AddHamburger(elID As String) As VueElement
	Return AddVueElement1(elID, "v-app-bar-nav-icon", "", "", "", Null)
End Sub

Sub setIcon(sicon As String)
	AddAttr("icon", sicon)
End Sub

Sub setIconColor(sicon As String)
	AddAttr("icon-color", sicon)
End Sub


'Add a row to the parent
'<code>
'AddRow(Me, "parent", 1)
'</code>
Sub AddRow(rowpos As Int) As VueElement
	Dim parentID As String = CleanID(mName)
	'
	Dim rowkey As String = $"${parentID}r${rowpos}"$
	rowkey = rowkey.Replace("#","")
	
	Dim mbutton As VueElement = AddVueElement2(parentID, rowkey, "v-row", Null)
	mbutton.BindAllEvents
	Return mbutton
End Sub

'Add a column to the parent with sizes
'<code>
'AddCol(Me, "parent", 1, "12", "6", "6", "6")
'</code>
Sub AddCol(colpos As Int, xs As String, sm As String, md As String, lg As String, xl As String) As VueElement
	Dim parentID As String = CleanID(mName)
	'
	Dim colKey As String = $"${parentID}c${colpos}"$
	colKey = colKey.Replace("#","")
	'
	Dim mbutton As VueElement = AddVueElement2(parentID, colKey, "v-col", Null)
	mbutton.AddSizes(xs, sm, md, lg, xl)
	mbutton.BindAllEvents
	Return mbutton
End Sub

Sub AddTimeLine(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-timeline", "", "", "", Null)
	Return elx
End Sub

Sub AddTimeLineItem(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-timeline-item", "", "", "", Null)
	Return elx
End Sub

Sub setAlignTop(b As Object)
	AddAttr(":align-top", b)
End Sub

Sub setFillDot(b As Object)
	AddAttr(":fill-dot", b)
End Sub

Sub setHideDot(b As Object)
	AddAttr(":hide-dot", b)
End Sub

'transition="scroll-x-reverse-transition"
Sub setScrollXReverseTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "scroll-x-reverse-transition")
End Sub

Sub setSlideXReverseTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "slide-x-reverse-transition")
End Sub

Sub AddSlideXReverseTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-slide-x-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddSlotAppend(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-template", "", "", "", Null)
	elx.VSlotAppend = True
	Return elx
End Sub

Sub AddSlotExtension(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-template", "", "", "", Null)
	elx.VSlotExtension = True
	Return elx
End Sub


Sub setCloseDelay(i As Int)
	AddAttr("close-delay", i)
End Sub

Sub setOpenDelay(i As Int)
	AddAttr("open-delay", i)
End Sub

Sub setPermanent(b As Object)
	AddAttr(":permanent", b)
End Sub

Sub setNav(b As Object)
	AddAttr(":nav", b)
End Sub

Sub setAttach(b As Object)
	AddAttr(":attach", b)
End Sub

Sub setLink(b As Object)
	AddAttr(":link", b)
End Sub

Sub setWrap(b As Object)
	AddAttr(":wrap", b)
End Sub

Sub setDivider(b As String)
	AddAttr("divider", b)
End Sub

'add bread crumbs
Sub AddBreadCrumbs(elid As String) As VueElement
	elid = elid.tolowercase
	Dim vlist As VueElement = AddVueElement1(elid, "v-breadcrumbs", "", "", "", Null)
	vlist.setItems($"${elid}items"$)
	Return vlist
End Sub

'add item group
Sub AddItemGroup(elid As String) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-item-group", "", "", "", Null)
	Return vlist
End Sub


'add item
Sub AddGroupItem(elid As String) As VueElement
	Dim vlist As VueElement = AddVueElement1(elid, "v-item", "", "", "", Null)
	Return vlist
End Sub

Sub AddDataTable(parentID As String, elID As String) As VueTable
	Dim elx As VueTable
	elx.Initialize(mCallBack, elID, elID)
	elx.AddToParent(parentID)
	Return elx
End Sub


Sub AddTabItems(elID As String, vmodel As String) As VueElement
	Return AddVueElement1(elID, "v-tab-items", vmodel, "", "", Null)
End Sub


Sub AddTabsSlider(elID As String, color As String, props As Map) As VueElement
	Return AddVueElement1(elID, "v-tabs-slider", "", "", color, props)
End Sub


Sub AddContainer(elID As String, xFluid As Boolean) As VueElement
	Return AddVueElement1(elID, "v-container", "", "", "", CreateMap(":fluid":xFluid))
End Sub

Sub AddTabs(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-tabs", "", "", "", Null)
	Return elx
End Sub

Sub AddSheet(elID As String, Height As String, Color As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-sheet", "", "", Color, props)
	elx.Height = Height
	Return elx
End Sub

Sub AddResponsive(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-responsive", "", "", "", Null)
	Return elx
End Sub

Sub setActive(b As Object)
	AddAttr(":active", b)
End Sub

Sub setJustifyCenterClass(b As Boolean)
	If b = False Then Return
	AddClass("justify-center")
End Sub

Sub AddChip(elid As String) As VueElement
	Return AddVueElement1(elid, "v-chip", "", "", "", Null)
End Sub

Sub CenterContent
	setAlignCenter(True)
	setJustifyCenter(True)
End Sub

Sub setLazyValidation(b As Boolean)
	SetAttr(":lazy-validation", b)
End Sub

'place the element at the bottom
Sub PlaceAtBottom As VueElement
	AddStyle("position", "absolute")
	AddStyle("bottom", "0")
	Return Me
End Sub

'place the element at the bottom
Sub AbsolutePosition As VueElement
	AddStyle("position", "absolute")
	Return Me
End Sub

'place the element at the bottom
Sub AtTheBottom As VueElement
	AddStyle("bottom", "0")
	Return Me
End Sub

Sub setOverflowHidden(b As Boolean)
	AddClass("overflow-hidden")
End Sub

Sub setOverflowYHidden(b As Boolean)
	AddClass("overflow-y-hidden")
End Sub

Sub setOverflowXHidden(b As Boolean)
	AddClass("overflow-x-hidden")
End Sub

Sub setTextLGRight(b As Boolean)
	AddClass("text-lg-right")
End Sub

Sub setTextMDCenter(b As Boolean)
	AddClass("text-md-center")
End Sub

Sub setTextSMLeft(b As Boolean)
	AddClass("text-sm-left")
End Sub

Sub setTextXSRight(b As Boolean)
	AddClass("text-xs-right")
End Sub

Sub setNextIcon(ni As String)
	AddAttr("next-icon", ni)
End Sub

Sub setPrevIcon(pi As String)
	AddAttr("prev-icon", pi)
End Sub

Sub setAlignStart(b As Boolean)
	Bind("align-start", b)
End Sub

Sub setFabTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "fab-transition")
End Sub


Sub AddFabTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-fab-transition", "", "", "", Null)
	Return elx
End Sub

Sub setFadeTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "fade-transition")
End Sub


Sub AddFadeTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-fade-transition", "", "", "", Null)
	Return elx
End Sub

Sub setExpandTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "expand-transition")
End Sub

Sub AddExpandTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-expand-transition", "", "", "", Null)
	Return elx
End Sub

Sub setScaleTransition(b As Boolean)
	If b = False Then Return 
	AddAttr("transition", "scale-transition")
End Sub


Sub AddScaleTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-scale-transition", "", "", "", Null)
	Return elx
End Sub

Sub setScrollXTransition(b As Boolean)
	AddAttr("transition", "scroll-x-transition")
End Sub


Sub AddScrollXTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-scroll-x-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScrollXReverseTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-scroll-x-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub setScrollYReverseTransition(b As Boolean)
	AddAttr("transition", "scroll-y-reverse-transition")
End Sub


Sub AddScrollYReverseTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-scroll-y-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub setScrollYTransition(b As Boolean)
	AddAttr("transition", "scroll-y-transition")
End Sub

Sub AddScrollYTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-scroll-y-transition", "", "", "", Null)
	Return elx
End Sub

Sub setSlideYTransition(b As Boolean)
	AddAttr("transition", "slide-y-transition")
End Sub

Sub AddSlideYTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-slide-y-transition", "", "", "", Null)
	Return elx
End Sub

Sub setSlideYReverseTransition(b As Boolean)
	AddAttr("transition", "slide-y-reverse-transition")
End Sub

Sub AddSlideYReverseTransition(elID As String) As VueElement
	Dim elx As VueElement = AddVueElement1(elID, "v-slide-y-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub setBlurred(s As String)
	s = S.tolowercase
	AddAttr("v-blur", s)
	SetData(s, False)
End Sub

'add a key value pair
Sub AddKeyValue(key As String, value As String)
	Dim rec As Map = CreateMap()
	rec.Put(stItemValue, key)
	rec.Put(stItemText, value)
	Records.Add(rec)
End Sub

Sub setNoBorder(b As Boolean)
	AddStyle("border", "none")
End Sub

Sub setBorderNone(b As Boolean)
	AddStyle("border", "none")
End Sub

'add a hyperlink that opens to blank
Sub AddLink(elID As String, href As String, caption As String, target As String)
	Dim elx As VueElement = AddVueElement(elID, "router-link", Null)
	elx.Href = href
	elx.Caption = caption
	elx.Target = target
End Sub

'fade-img-on-scroll
Sub setFadeImgOnScroll(b As Boolean)
	AddAttr(":fade-img-on-scroll", b)
End Sub

'scroll-target
Sub setScrollTarget(v As String)
	AddAttr("scroll-target", v)
End Sub

'scroll-threshold
Sub setScrollThreshold(v As Object)
	AddAttr(":scroll-threshold", v)
End Sub

'shrink-on-scroll
Sub setShrinkOnScroll(v As Boolean)
	AddAttr(":shrink-on-scroll", v)
End Sub

'overflow-y-auto
Sub setOverFlowYAuto(b as Boolean)
	AddClass("overflow-y-auto")
End Sub

'content-class
Sub setContentClass(v As String)
	AddAttr("content-class", v)
End Sub


'aspect-ratio
Sub setAspectRation(v As Object)
	AddAttr("aspect-ratio", v)
End Sub

'hide-overflow
Sub setHideOverFlow(b As Boolean)
	AddClass("hide-overflow")
End Sub

'float-left
Sub setFloatLeft(b As Boolean)
	AddClass("float-left")
End Sub

'float-right
Sub setFloatRight(b As Boolean)
	AddClass("float-right")
End Sub

Sub setSecondary(b As Boolean)
	AddClass("secondary")
End Sub

Sub setTextNoWrap(b As Boolean)
	AddClass("text-no-wrap")
End Sub
