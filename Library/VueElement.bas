﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

#Event: Click (e As BANanoEvent)
#Event: RightClick (e As BANanoEvent)
#Event: LeftClick (e As BANanoEvent)
#Event: Change (value As Object)
#Event: ClickStop (e As BANanoEvent)
#Event: DblClick (e As BANanoEvent)
#Event: MouseMove (e As BANanoEvent)
#Event: MouseOut (e As BANanoEvent)
#Event: KeyUp (e As BANanoEvent)
#Event: KeyPress (e As BANanoEvent)
#Event: ClickAlt (e As BANanoEvent)
#Event: ClickShift (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickAppendOuter (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: ClickPrependInner (e As BANanoEvent)
#Event: ClickClear (e As BANanoEvent)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
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
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
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
#DesignerProperty: Key: OffSets, DisplayName: OffSets SMLX, FieldType: String, DefaultValue: s=?; m=?; l=?; x=? , Description: OffSets SMLX
#DesignerProperty: Key: Sizes, DisplayName: Sizes SMLX, FieldType: String, DefaultValue: s=?; m=?; l=?; x=?, Description: Sizes SMLX


#DesignerProperty: Key: Center, DisplayName: Center, FieldType: Boolean, DefaultValue: False, Description: Center
#DesignerProperty: Key: Circle, DisplayName: Circle, FieldType: Boolean, DefaultValue: False, Description: Circle
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False , Description: 

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
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margin AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins AXYSMLX
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: NoGutter, DisplayName: No Gutter, FieldType: Boolean, DefaultValue: False, Description: NoGutter

#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False , Description: 
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Padding AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding AXYSMLX
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
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
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




'
'
'#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: False, Description: Dark
'#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: HiddenMDAndUp, DisplayName: Hidden MD And Up, FieldType: Boolean, DefaultValue: False, Description: HiddenMDAndUp
'#DesignerProperty: Key: HiddenSMAndDown, DisplayName: Hidden SM And Down, FieldType: Boolean, DefaultValue: False, Description: HiddenSMAndDown
'#DesignerProperty: Key: FillHeight, DisplayName: Fill Height, FieldType: Boolean, DefaultValue: False, Description: FillHeight
'#DesignerProperty: Key: JustifyCenter, DisplayName: Justify Center, FieldType: Boolean, DefaultValue: False, Description: JustifyCenter
'#DesignerProperty: Key: AlignCenter, DisplayName: Align Center, FieldType: Boolean, DefaultValue: False, Description: AlignCenter
'#DesignerProperty: Key: Justify, DisplayName: Justify, FieldType: String, DefaultValue: , Description: Justify, List: start|center|end|space-around|space-between|none
'#DesignerProperty: Key: Align, DisplayName: Align, FieldType: String, DefaultValue: , Description: Align, List: start|center|end|baseline|stretch|none
'#DesignerProperty: Key: TextAlign, DisplayName: Text Align, FieldType: String, DefaultValue:  , Description: , List: left|center|right|justify|none
'#DesignerProperty: Key: Fluid, DisplayName: Fluid, FieldType: Boolean, DefaultValue: False, Description: Fluid
'#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value on the element
'#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label of the element
'#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
'#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: , Description: Alt
'#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue:  , Description:
'#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: StyleHeight, DisplayName: Style Height, FieldType: String, DefaultValue:  , Description:
'#DesignerProperty: Key: StyleMaxHeight, DisplayName: Style Max Height, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: StyleWidth, DisplayName: Style Width, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: StyleMaxWidth, DisplayName: Style Max Width, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
'#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
'#DesignerProperty: Key: ActiveClass, DisplayName: Active Class, FieldType: String, DefaultValue: , Description: ActiveClass.
'#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
'#DesignerProperty: Key: CoverImage, DisplayName: Cover Image Src, FieldType: String, DefaultValue:  , Description: CoverImage
'#DesignerProperty: Key: FitScreen, DisplayName: Fit Screen VH, FieldType: Boolean, DefaultValue: False, Description: FitScreen VH
'#DesignerProperty: Key: FullScreen, DisplayName: Full Screen Mobile, FieldType: Boolean, DefaultValue: False, Description: FullScreen Mobile
'#DesignerProperty: Key: Rows, DisplayName: Rows, FieldType: String, DefaultValue: , Description: Rows
'#DesignerProperty: Key: NoGutter, DisplayName: No Gutter, FieldType: String, DefaultValue: False, Description: NoGutter
'#DesignerProperty: Key: Columns, DisplayName: Columns, FieldType: String, DefaultValue: , Description: Columns
'#DesignerProperty: Key: OffSets, DisplayName: OffSets SMLX, FieldType: String, DefaultValue: s=?; m=?; l=?; x=? , Description: OffSets SMLX
'#DesignerProperty: Key: Sizes, DisplayName: Sizes SMLX, FieldType: String, DefaultValue: s=?; m=?; l=?; x=?, Description: Sizes SMLX
'#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Padding AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding AXYSMLX
'#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margin AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins AXYSMLX
'#DesignerProperty: Key: BuildGrid, DisplayName: Build Grid, FieldType: Boolean, DefaultValue: False, Description: BuildGrid
'#DesignerProperty: Key: ShowGridDesign, DisplayName: Show Grid Design, FieldType: Boolean, DefaultValue: False, Description: ShowGridDesign
'#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: BorderColor, DisplayName: BorderColor, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
'#DesignerProperty: Key: BorderRadius, DisplayName: Border Radius, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: BorderStyle, DisplayName: Border Style, FieldType: String, DefaultValue:  , Description: , List: none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset|initial|inherit
'#DesignerProperty: Key: BorderWidth, DisplayName: Border Width, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: DataSource, DisplayName: Data Source, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description:
'#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
'#DesignerProperty: Key: VText, DisplayName: V-Text, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VHtml, DisplayName: V-Html, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Slot, DisplayName: Slot, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VSlotActivator, DisplayName: V-Slot-Activator, FieldType: String, DefaultValue: , Description: Slot activator
'#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VElse, DisplayName: V-Else, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VElseIf, DisplayName: V-Else-If, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VModel, DisplayName: V-Model, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VBindClass, DisplayName: V-Bind-Class, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: VBindStyle, DisplayName: V-Bind-Style, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Rules, DisplayName: Rules, FieldType: String, DefaultValue:  , Description: Rules
'#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
'#DesignerProperty: Key: InputType, DisplayName: Input Type, FieldType: String, DefaultValue: , Description: Input type, List: text|email|password|file|tel|url|number|search|none|success|info|warning|error
'#DesignerProperty: Key: PrependIcon, DisplayName: Prepend Icon, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: PrependInnerIcon, DisplayName: Prepend Inner Icon, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: AppendIcon, DisplayName: Append Icon, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: AppendOuterIcon, DisplayName: Append Outer Icon, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Placeholder, DisplayName: Placeholder, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: PersistentHint, DisplayName: Persistent Hint, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Autofocus, DisplayName: Auto-focus, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Counter, DisplayName: Counter, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: HideDetails, DisplayName: Hide Details, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Readonly, DisplayName: Readonly, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Required, DisplayName: Required, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: SingleLine, DisplayName: Single Line, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: Solo, DisplayName: Solo, FieldType: Boolean, DefaultValue: False , Description: 
'#DesignerProperty: Key: ItemText, DisplayName: Item Text, FieldType: String, DefaultValue: , Description: 
'#DesignerProperty: Key: ItemValue, DisplayName: Item Value, FieldType: String, DefaultValue: , Description: 
'#DesignerProperty: Key: Items, DisplayName: Items, FieldType: String, DefaultValue: , Description: 
'#DesignerProperty: Key: ReturnObject, DisplayName: Return Object, FieldType: Boolean, DefaultValue: False, Description: 
'#DesignerProperty: Key: BackgroundImage, DisplayName: Background Image, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: BackgroundRepeat, DisplayName: Background Repeat, FieldType: String, DefaultValue:  , Description: , List: repeat|repeat-x|repeat-y|no-repeat|initial|inherit|none
'#DesignerProperty: Key: FontFamily, DisplayName: Font Family, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: FontSize, DisplayName: Font Size, FieldType: String, DefaultValue:  , Description: 
'#DesignerProperty: Key: FontStyle, DisplayName: Font Style, FieldType: String, DefaultValue:  , Description: , List: normal|italic|oblique|initial|inherit|none
'#DesignerProperty: Key: FontWeight, DisplayName: Font Weight, FieldType: String, DefaultValue:  , Description: , List: normal|bold|bolder|lighter|initial|inherit|none
'#DesignerProperty: Key: TextDecoration, DisplayName: Text Decoration, FieldType: String, DefaultValue:  , Description: , List: none|underline|line-through|overline
'#DesignerProperty: Key: Float, DisplayName: Float, FieldType: String, DefaultValue:  , Description: , List: left|right|none
'#DesignerProperty: Key: Italic, DisplayName: Italic, FieldType: Boolean, DefaultValue: False, Description: Italic
'#DesignerProperty: Key: Bold, DisplayName: Bold, FieldType: Boolean, DefaultValue: False, Description: Bold
'#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
'#DesignerProperty: Key: Circle, DisplayName: Circle, FieldType: Boolean, DefaultValue: False, Description: Circle
'#DesignerProperty: Key: Center, DisplayName: Center, FieldType: Boolean, DefaultValue: False, Description: Center
''
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
	Private bAutoID As Boolean = False
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
	Private stOffSets As String = "s=?; m=?; l=?; x=?"
	Private stSizes As String = "s=?; m=?; l=?; x=?"
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
	
	'
	Type VueGridRow(Rows As Int, Columns As List, _
	ma As String, mx As String, my As String, mt As String, mb As String, mr As String, ml As String, _
	pa As String, px As String, py As String, pt As String, pb As String, pr As String, pl As String)
	
	Type VueGridColumn(Columns As Int, sm As String, md As String, lg As String, xl As String, _
	ofsm As String, ofmd As String, oflg As String, ofxl As String, _
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
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.ToLowerCase
	mEventName = EventName.ToLowerCase
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	sbText.Initialize
	bindings.Initialize
	methods.Initialize
	'
	LastRow = 0
	GridRows.Initialize
	GridColumns.Initialize

	'
	'does the element exist
	'if so, ensure we use the existing element
	Dim fKey As String = $"#${mName}"$
	If BANano.Exists(fKey) Then
		mElement = BANano.GetElement(fKey)
	End If
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
		bAutoID = Props.get("AutoID")
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
	End If
	
	setElevation(stElevation)
	AddStyleOnConditionTrue("font-weight", "bold", bBold)
	AddStyleOnConditionTrue("font-style",  "italic", bItalic)
	AddStyleOnConditionTrue("border-radius", "50%", bCircle)
	AddStyleOnConditionTrue("text-align", "center", bCenter)
	AddStyleOnCondition("float", "left", stFloat)
	AddStyleOnCondition("float", "right", stFloat)
	'
	AddAttrOnConditionTrue(":no-gutter", bNoGutter, True)
	AddAttrOnCondition(":return-object", bReturnObject, True)
	AddAttr("item-text", stItemText)
	AddAttr("item-value", stItemValue)
	AddAttr("items", stItems)
	AddAttr("tag", mOverwriteTag)
	AddAttr("v-on", stVOn)
	AddAttr("src", stSrc)
	AddAttr("alt", stAlt)
	AddAttrOnCondition(":fluid", bFluid, True)
	AddAttr("rules", stRules)
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
	AddAttr("v-model", stVModel)
	AddAttr("v-show", stVShow)
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
	If BANano.IsNull(bBuildGrid) Then bBuildGrid = False
	If bBuildGrid = False Then
		setOffsets(stOffSets)
		setSizes(stSizes)
		setPaddingAXYTBLR(stPaddingAXYTBLR)
		setMarginAXYTBLR(stMarginAXYTBLR)
	End If
	'
	setFullScreen(bFullScreen)
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
	SetEvent("Click", "click", eOnClick)
	SetEvent("Change", "change", eOnChange)
	SetEvent("ClickStop", "Click.Stop", eOnClickStop)
	SetEvent("DblClick", "DblClick", eOnDblClick)
	SetEvent("MouseMove", "MouseMove", eOnMouseMove)
	SetEvent("MouseOut", "MouseOut", eOnMouseOut)
	SetEvent("KeyUp", "KeyUp", eOnKeyUp)
	SetEvent("KeyPress", "KeyPress", eOnKeyPress)
	SetEvent("ClickAlt", "Click.Alt", eOnClickAlt)
	SetEvent("ClickShift", "Click.Shift", eOnClickShift)
	SetEvent("ClickPrevent", "Click.Prevent", eOnClickPrevent)
	SetEvent("ClickAppend", "click:append", "")
	SetEvent("ClickAppendOuter", "click:append-outer", "")
	SetEvent("ClickPrepend", "click:prepend", "")
	SetEvent("ClickClear", "click:clear", "")
	SetEvent("ClickPrependInner", "click:prepend-inner","")

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
			stOffSets = "0,0,0,0"
		End If
		If BANano.IsUndefined(stSizes) Or BANano.IsNull(stSizes) Then
			stSizes = "12,12,12,12"
		End If
		Dim offmap As Map = GetOffsetSizes(stOffSets)
		Dim sizmap As Map = GetOffsetSizes(stSizes)
		'
		Dim offs As String = offmap.get("s")
		Dim offm As String = offmap.get("m")
		Dim offl As String = offmap.get("l")
		Dim offx As String = offmap.get("x")
		
		Dim sm As String = sizmap.get("s")
		Dim md As String = sizmap.get("m")
		Dim lg As String = sizmap.get("l")
		Dim xl As String = sizmap.get("x")
		'
		AddRows(stRows)
		AddColumnsOS(stColumns, offs, offm, offl, offx, sm, md, lg, xl)
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
	Dim a As String = ""
	Dim x As String = ""
	Dim y As String = ""
	Dim t As String = ""
	Dim b As String = ""
	Dim l As String = ""
	Dim r As String = ""

	'
	Select Case ss.Size
	Case 1
		a = ss.Get(0)
		a = BANanoShared.GetNumbers(a)
		If a.IndexOf("=") = 0 Then	a = "a=" & a
	Case 2
		a = ss.Get(0)
		x = ss.Get(1)
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
	Case 3
		a = ss.Get(0)
		x = ss.Get(1)
		y = ss.Get(2)
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		y = BANanoShared.GetNumbers(y)
			
	'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
		If y.IndexOf("=") = 0 Then y = "y=" & y
	Case 4
		a = ss.Get(0)
		x = ss.Get(1)
		y = ss.Get(2)
		t = ss.Get(3)
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		y = BANanoShared.GetNumbers(y)
		t = BANanoShared.GetNumbers(t)
			'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
		If y.IndexOf("=") = 0 Then y = "y=" & y
		If t.IndexOf("=") = 0 Then t = "t=" & t
	Case 5
		a = ss.Get(0)
		x = ss.Get(1)
		y = ss.Get(2)
		t = ss.Get(3)
		b = ss.Get(4)
		'
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		y = BANanoShared.GetNumbers(y)
		t = BANanoShared.GetNumbers(t)
		b = BANanoShared.GetNumbers(b)
			'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
		If y.IndexOf("=") = 0 Then y = "y=" & y
		If t.IndexOf("=") = 0 Then t = "t=" & t
		If b.IndexOf("=") = 0 Then b = "b=" & b
	Case 6
		a = ss.Get(0)
		x = ss.Get(1)
		y = ss.Get(2)
		t = ss.Get(3)
		b = ss.Get(4)
		l = ss.Get(5)
		'
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		y = BANanoShared.GetNumbers(y)
		t = BANanoShared.GetNumbers(t)
		b = BANanoShared.GetNumbers(b)
		l = BANanoShared.GetNumbers(l)

			'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
		If y.IndexOf("=") = 0 Then y = "y=" & y
		If t.IndexOf("=") = 0 Then t = "t=" & t
		If b.IndexOf("=") = 0 Then b = "b=" & b
		If l.IndexOf("=") = 0 Then l = "l=" & l
	Case 7
		a = ss.Get(0)
		x = ss.Get(1)
		y = ss.Get(2)
		t = ss.Get(3)
		b = ss.Get(4)
		l = ss.Get(5)
		r = ss.Get(6)
		a = BANanoShared.GetNumbers(a)
		x = BANanoShared.GetNumbers(x)
		y = BANanoShared.GetNumbers(y)
		t = BANanoShared.GetNumbers(t)
		b = BANanoShared.GetNumbers(b)
		l = BANanoShared.GetNumbers(l)
		r = BANanoShared.GetNumbers(r)
			'
		If a.IndexOf("=") = 0 Then a = "a=" & a
		If x.IndexOf("=") = 0 Then x = "x=" & x
		If y.IndexOf("=") = 0 Then y = "y=" & y
		If t.IndexOf("=") = 0 Then t = "t=" & t
		If b.IndexOf("=") = 0 Then b = "b=" & b
		If l.IndexOf("=") = 0 Then l = "l=" & l
		If r.IndexOf("=") = 0 Then r = "r=" & r
	End Select
	'
	Dim sbdata As String = $"${a};${x};${y};${t};${b};${l};${r}"$
	Dim ssx As List = BANanoShared.StrParse(";", sbdata)
	For Each d As String In ssx
		Dim k As String = BANanoShared.MvField(d, 1, "=")
		Dim v As String = BANanoShared.MvField(d, 2, "=")
		m.Put(k, v)
	Next
	Return m
End Sub


private Sub GetOffsetSizes(varOffsets As String) As Map
	Dim m As Map = CreateMap("s":"", "m":"", "l":"", "x":"")
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
	Dim sm As String = ""
	Dim md As String = ""
	Dim lg As String = ""
	Dim xl As String = ""
	'
	Select Case ss.Size
	Case 1
		sm = ss.Get(0)
		sm = BANanoShared.GetNumbers(sm)
		If sm.IndexOf("=") = 0 Then	sm = "s=" & sm
	Case 2
		sm = ss.Get(0)
		md = ss.Get(1)
		sm = BANanoShared.GetNumbers(sm)
		md = BANanoShared.GetNumbers(md)
		
		'
		If sm.IndexOf("=") = 0 Then sm = "s=" & sm
		If md.IndexOf("=") = 0 Then md = "m=" & md
	Case 3
		sm = ss.Get(0)
		md = ss.Get(1)
		lg = ss.Get(2)
		'
		sm = BANanoShared.GetNumbers(sm)
		md = BANanoShared.GetNumbers(md)
		lg = BANanoShared.GetNumbers(lg)
		'
		If sm.IndexOf("=") = 0 Then sm = "s=" & sm
		If md.IndexOf("=") = 0 Then md = "m=" & md
		If lg.IndexOf("=") = 0 Then lg = "l=" & lg
	Case 4
		sm = ss.Get(0)
		md = ss.Get(1)
		lg = ss.Get(2)
		xl = ss.Get(3)
			'
		sm = BANanoShared.GetNumbers(sm)
		md = BANanoShared.GetNumbers(md)
		lg = BANanoShared.GetNumbers(lg)
		xl = BANanoShared.GetNumbers(xl)
		
		'
		If sm.IndexOf("=") = 0 Then sm = "s=" & sm
		If md.IndexOf("=") = 0 Then md = "m=" & md
		If lg.IndexOf("=") = 0 Then lg = "l=" & lg
		If xl.IndexOf("=") = 0 Then xl = "x=" & xl
	End Select
	'
	Dim sbdata As String = $"${sm};${md};${lg};${xl}"$
	Dim ssx As List = BANanoShared.StrParse(";", sbdata)
	For Each d As String In ssx
		Dim k As String = BANanoShared.MvField(d, 1, "=")
		Dim v As String = BANanoShared.MvField(d, 2, "=")
		m.Put(k, v)
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
	If mElement <> Null Then
		mElement.Append(stemplate)
	Else
		sbText.Append(stemplate)
	End If
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
	If mElement <> Null Then
		mElement.Append(stemplate)
	Else
		sbText.Append(stemplate)
	End If
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
	xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub


'return the generated html
Sub ToString As String
	If bLoremIpsum Then
		mCaption = BANanoShared.LoremIpsum(1)
	End If
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	If className <> "" Then AddAttr("class", className)
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	If styleName <> "" Then AddAttr("style", styleName)
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	Dim stext As String = sbText.ToString
	stext = stext.Replace("v-template", "template")
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

'initialize data
Sub SetData(prop As String, val As Object)
	If prop <> "" Then
		bindings.Put(prop, val)
	End If
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
	sbText.Append("<br>")
End Sub

'add a horizontal rule
Sub AddHR
	sbText.Append("<hr>")
End Sub


'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	Dim elIT As VueElement
	elIT.Initialize(mCallBack, elID, tag)
	elIT.SetText(Text)
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
	sbText.Append(sElement)
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


'change the text of the element
Sub SetText(varText As String)
	AddChild(varText)
End Sub

Sub Bind(attr As String, value As String)
	AddAttr($":${attr}"$, value)
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
		varValue = varValue.Replace("~","=")
		varValue = varValue.Replace("#","$")
		'we are adding a string
		If varValue.StartsWith(":") Then
			Dim rname As String = BANanoShared.MidString2(varValue, 2)
			If rname.Contains(".") = False Then
				bindings.Put(rname, Null)
			End If
			If mElement <> Null Then 
				mElement.SetAttr($":${varProp}"$, rname)
			Else
				attributeList.put($":${varProp}"$, rname)
			End If
		Else
			'we have a binding on the property
			If varProp.StartsWith(":") Then
				If varValue.Contains(".") = False Then
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
		Select Case varProp
		Case "v-model", "v-show", "v-if", "v-else-if", "required", "disabled", "readonly"
			If varValue <> "" Then
				bindings.Put(varValue, Null)
			End If
		Case "items"
			If varValue <> "" Then
				Dim lst As List = NewList
				bindings.Put(varValue, lst)
			End If
		End Select
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

public Sub getSrc() As String
	Return stSrc
End Sub

public Sub setAlt(varAlt As String)
	AddAttr("alt", varAlt)
	stAlt = varAlt
End Sub

public Sub getAlt() As String
	Return stAlt
End Sub

public Sub setVOn(varVOn As String)
	AddAttr("v-on", varVOn)
	stVOn = varVOn
End Sub

public Sub getVOn() As String
	Return stVOn
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

public Sub getVHtml() As String
	Return stVHtml
End Sub

public Sub setVIf(varVIf As String)
	AddAttr("v-if", varVIf)
	stVIf = varVIf
End Sub

public Sub getVIf() As String
	Return stVIf
End Sub

public Sub setVModel(varVModel As String)
	AddAttr("v-model", varVModel)
	stVModel = varVModel
End Sub

public Sub getVModel() As String
	Return stVModel
End Sub

public Sub setValue(varValue As String)
	AddAttr("value", varValue)
	stValue = varValue
End Sub

public Sub getValue() As String
	Return stValue
End Sub

public Sub setVShow(varVShow As String)
	AddAttr("v-show", varVShow)
	stVShow = varVShow
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

public Sub setBackgroundColor(varBackgroundColor As String)
	AddStyle("background-color", varBackgroundColor)
	stBackgroundColor = varBackgroundColor
End Sub

public Sub getBackgroundColor() As String
	Return stBackgroundColor
End Sub

public Sub setBackgroundImage(varBackgroundImage As String)
	AddStyle("background-image", varBackgroundImage)
	stBackgroundImage = varBackgroundImage
End Sub

public Sub getBackgroundImage() As String
	Return stBackgroundImage
End Sub

public Sub setBackgroundRepeat(varBackgroundRepeat As String)
	AddStyle("background-repeat", varBackgroundRepeat)
	stBackgroundRepeat = varBackgroundRepeat
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

public Sub getBorderWidth() As String
	Return stBorderWidth
End Sub

public Sub setColor(varColor As String)
	AddAttr("color", varColor)
	stColor = varColor
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

public Sub setFontSize(varFontSize As String)
	AddStyle("font-size", varFontSize)
	stFontSize = varFontSize
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

public Sub setReactive(b As Boolean)
	AddAttr(":reactive", b)
End Sub

public Sub setInset(b As Boolean)
	AddAttr(":inset", b)
End Sub

public Sub setRotate(s As String)
	AddAttr("rotate", s)
End Sub


public Sub setLarge(b As Boolean)
	AddAttr(":large", b)
End Sub

public Sub setSmall(b As Boolean)
	AddAttr(":small", b)
End Sub


public Sub setDepressed(b As Boolean)
	AddAttr(":depressed", b)
End Sub

public Sub setFab(b As Boolean)
	AddAttr(":fab", b)
End Sub

Sub setFalseValue(fv As Object)
	AddAttr("false-value", fv)
End Sub

Sub setTrueValue(tv As Object)
	AddAttr("true-value", tv)
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
'
public Sub setRules(varRules As String)
	AddAttr("rules", varRules)
	stWidth = varRules
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

'add a child component
Sub AddChild(child As String)
	sbText.Append(child)
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
End Sub

private Sub SetEvent(eventName As String, attrName As String, eventValue As String)
	eventName = eventName.Replace(":","")
	eventName = eventName.Replace(".","")
	eventName = eventName.Replace("-","")	
	Dim sName As String = $"${mEventName}_${eventName}"$
	sName = sName.tolowercase
	attrName = attrName.tolowercase
	If SubExists(mCallBack, sName) = False Then Return
	If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = ""
	Dim sCode As String = $"${sName}(${eventValue})"$
	AddAttr($"v-on:${attrName}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

Sub SetOnEvent(eventHandler As Object, eventName As String, attrName As String, eventValue As String)
	eventName = eventName.tolowercase
	eventName = eventName.Replace(":","")
	eventName = eventName.Replace(".","")
	eventName = eventName.Replace("-","")
	attrName = attrName.tolowercase
	If SubExists(eventHandler, eventName) = False Then Return
	If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = ""
	Dim sCode As String = $"${eventName}(${eventValue})"$
	AddAttr($"v-on:${attrName}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(eventHandler, eventName, Array(e))
	methods.Put(eventName, cb)
End Sub


'set direct method
Sub SetMethod(methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, args)
		methods.Put(methodName, cb)
	End If
End Sub

'set direct method
Sub SetMethod1(eventHandler As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	methodName = methodName.tolowercase
	If SubExists(eventHandler, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(eventHandler, methodName, args)
		methods.Put(methodName, cb)
	End If
End Sub

'define method
Sub OnMulti(EventHandler As String, eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	EventHandler = EventHandler.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
	seventname = seventname.Replace("-","")
	
	'
	Dim sName As String = $"${EventHandler}_${seventname}"$
	If SubExists(mCallBack, sName) = False Then Return
	'
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${sName}(${args})"$
	AddAttr($"v-on:${eventName}"$, sCode)
	'arguments for the event
	Dim e As BANanoEvent 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

'on event
Sub On(eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
	seventname = seventname.Replace("-","")
	
	'
	Dim sName As String = $"${mEventName}_${seventname}"$
	If SubExists(mCallBack, sName) = False Then Return
	'
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${sName}(${args})"$
	AddAttr($"v-on:${eventName}"$, sCode)
	'arguments for the event
	Dim e As BANanoEvent 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
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
	Dim offs As String = offmap.get("s")
	Dim offm As String = offmap.get("m")
	Dim offl As String = offmap.get("l")
	Dim offx As String = offmap.get("x")
	
	AddOffsets(offs, offm, offl, offx)
End Sub

Sub getOffSets() As String
	Return stOffSets
End Sub

Sub setSizes(varSizes As String)
	stSizes = varSizes
	If BANano.IsUndefined(varSizes) Or BANano.IsNull(varSizes) Then Return
	If varSizes = "" Then Return
	Dim sizmap As Map = GetOffsetSizes(stSizes)
	Dim sm As String = sizmap.get("s")
	Dim md As String = sizmap.get("m")
	Dim lg As String = sizmap.get("l")
	Dim xl As String = sizmap.get("x")
	'
	AddSizes(sm, md, lg, xl)
End Sub

Sub getSizes() As String
	Return stSizes
End Sub


Sub setPaddingAXYTBLR(varsetPaddingTBLR As String)
	stPaddingAXYTBLR = varsetPaddingTBLR
	If BANano.IsUndefined(varsetPaddingTBLR) Or BANano.IsNull(varsetPaddingTBLR) Then Return
	If varsetPaddingTBLR = "" Then Return
	Dim m As Map = GetMarginPadding(varsetPaddingTBLR)
	Dim pa As String = m.Get("a")
	Dim px As String = m.Get("x")
	Dim py As String = m.Get("y")
	Dim pt As String = m.Get("t")
	Dim pb As String = m.Get("b")
	Dim pl As String = m.Get("l")
	Dim pr As String = m.Get("r")
	
	If pa <> "" Then AddClass($"pa-${pa}"$)
	If px <> "" Then AddClass($"px-${px}"$)
	If py <> "" Then AddClass($"py-${py}"$)
	If pt <> "" Then AddClass($"pt-${pt}"$)
	If pb <> "" Then AddClass($"pb-${pb}"$)
	If pl <> "" Then AddClass($"pl-${pl}"$)
	If pr <> "" Then AddClass($"pr-${pr}"$)
End Sub

Sub getPaddingAXYTBLR() As String
	Return stPaddingAXYTBLR
End Sub

Sub setMarginAXYTBLR(varMarginAXYTBLR As String)
	stMarginAXYTBLR = varMarginAXYTBLR
	If BANano.IsUndefined(varMarginAXYTBLR) Or BANano.IsNull(varMarginAXYTBLR) Then Return
	If varMarginAXYTBLR = "" Then Return
	
	Dim m As Map = GetMarginPadding(varMarginAXYTBLR)
	Dim ma As String = m.Get("a")
	Dim mx As String = m.Get("x")
	Dim my As String = m.Get("y")
	Dim mt As String = m.Get("t")
	Dim mb As String = m.Get("b")
	Dim ml As String = m.Get("l")
	Dim mr As String = m.Get("r")
	
	If ma <> "" Then AddClass($"ma-${ma}"$)
	If mx <> "" Then AddClass($"mx-${mx}"$)
	If my <> "" Then AddClass($"my-${my}"$)
	If mt <> "" Then AddClass($"mt-${mt}"$)
	If mb <> "" Then AddClass($"mb-${mb}"$)
	If ml <> "" Then AddClass($"ml-${ml}"$)
	If mr <> "" Then AddClass($"mr-${mr}"$)
End Sub

Sub AddPadding(pa As String, px As String, py As String, pt As String, pb As String, pl As String, pr As String)
	pt = pt.Trim
	pb = pb.Trim
	pl = pl.Trim
	pr = pr.Trim
	pa = pa.Trim
	px = px.trim
	py = py.trim
	'
	If pa <> "" Then AddClass($"pa-${pa}"$)
	If px <> "" Then AddClass($"px-${px}"$)
	If py <> "" Then AddClass($"py-${py}"$)
	If pt <> "" Then AddClass($"pt-${pt}"$)
	If pb <> "" Then AddClass($"pb-${pb}"$)
	If pl <> "" Then AddClass($"pl-${pl}"$)
	If pr <> "" Then AddClass($"pr-${pr}"$)
End Sub

Sub AddMargin(ma As String, mx As String, my As String, mt As String, mb As String, ml As String, mr As String)
	mt = mt.Trim
	mb = mb.Trim
	ml = ml.Trim
	mr = mr.Trim
	ma = ma.Trim
	mx = mx.trim
	my = my.trim
	'
	If ma <> "" Then AddClass($"ma-${ma}"$)
	If mx <> "" Then AddClass($"mx-${mx}"$)
	If my <> "" Then AddClass($"my-${my}"$)
	If mt <> "" Then AddClass($"mt-${mt}"$)
	If mb <> "" Then AddClass($"mb-${mb}"$)
	If ml <> "" Then AddClass($"ml-${ml}"$)
	If mr <> "" Then AddClass($"mr-${mr}"$)
End Sub

Sub getMarginAXYTBLR() As String
	Return stMarginAXYTBLR
End Sub

'set the conver image for the container
Sub setFitScreen(varFitScreen As Boolean)
	bFitScreen = varFitScreen
	If BANano.IsUndefined(varFitScreen) Or BANano.IsNull(varFitScreen) Then Return
	If varFitScreen = False Then Return
	Dim sm As String = $"height=100vh !important;max-height=100vh !important"$
	setStyles(sm)
End Sub

public Sub getFitScreen() As Boolean
	Return bFitScreen
End Sub

'set the conver image for the container
Sub setFullScreen(varFullScreen As Boolean)
	bFullScreen = varFullScreen
	If BANano.IsUndefined(varFullScreen) Or BANano.IsNull(varFullScreen) Then Return
	If varFullScreen = False Then Return
	AddAttr(":fullscreen", "$vuetify.breakpoint.mobile")
End Sub

public Sub getFullScreen() As Boolean
	Return bFullScreen
End Sub

'set append-icon
public Sub setAppendIcon(varAppendIcon As String)
	AddAttr("append-icon", varAppendIcon)
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
public Sub setNoGutter(b As Boolean)
	AddAttrOnCondition(":no-gutter", b, True)
	bNoGutter = b
End Sub

'get no gutter
public Sub getNoGutter() As Boolean
	Return bNoGutter
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
	AddAttrOnCondition(":outlined", varOutlined, True)
	boOutlined = varOutlined
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

'get prepend-icon
public Sub getPrependIcon() As String
	Return stPrependIcon
End Sub

'set prepend-icon
public Sub setPrependInnerIcon(varPrependIcon As String)
	AddAttr("prepend-inner-icon", varPrependIcon)
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
	AddAttrOnCondition(":rounded", varRounded, True)
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
	AddAttrOnCondition(":shaped", varShaped, True)
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
	If mElement <> Null Then
		mElement.Append(sout)
	Else
		sbText.Append(sout)
	End If
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
	If col.sm <> "" Then sb.Append($"sm="${col.sm}" "$)
	If col.md <> "" Then sb.Append($"md="${col.md}" "$)
	If col.lg <> "" Then sb.Append($"lg="${col.lg}" "$)
	If col.xl <> "" Then sb.Append($"xl="${col.xl}" "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
End Sub

private Sub BuildOffsets(col As VueGridColumn) As String
	Dim sb As StringBuilder
	sb.Initialize
	If col.ofsm <> "" Then sb.Append($"offset-sm="${col.ofsm}" "$)
	If col.ofmd <> "" Then sb.Append($"offset-md="${col.ofmd}" "$)
	If col.oflg <> "" Then sb.Append($"offset-lg="${col.oflg}" "$)
	If col.ofxl <> "" Then sb.Append($"offset-xl="${col.ofxl}" "$)
	Dim sout As String = sb.ToString
	sout = sout.trim
	Return sout
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

Sub AddColumns(iColumns As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement
	AddColumnsOS(iColumns, 0,0,0,0,sm,md,lg,xl)
	Return Me
End Sub

'add columns - offsets and sizes
Sub AddColumnsOS(iColumns As Int, osm As Int, omd As Int, olg As Int, oxl As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement
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
	AddColumns(3,"12","4","4","4")
	Return Me
End Sub

Sub AddColumns4x3 As VueElement
	AddColumns(4,"12","3","3","3")
	Return Me
End Sub

Sub AddColumns2x6 As VueElement
	AddColumns(2,"12","6","6","6")
	Return Me
End Sub

Sub AddColumns6x2 As VueElement
	AddColumns(6,"12","2","2","2")
	Return Me
End Sub

Sub AddColumns12x1 As VueElement
	AddColumns(12,"12","1","1","1")
	Return Me
End Sub

Sub AddColumns8p4 As VueElement
	AddColumns(1,"12","8","8","8").AddColumns(1,"12","4","4","4")
	Return Me
End Sub

Sub AddColumns4p8 As VueElement
	AddColumns(1,"12","4","4","4").AddColumns(1,"12","8","8","8")
	Return Me
End Sub

Sub AddColumns1p11 As VueElement
	AddColumns(1,"12","1","1","1").AddColumns(1,"12","11","11","11")
	Return Me
End Sub

Sub AddColumns11p1 As VueElement
	AddColumns(1,"12","11","11","11").AddColumns(1,"12","1","1","1")
	Return Me
End Sub

Sub AddColumns2p10 As VueElement
	AddColumns(1,"12","2","2","2").AddColumns(1,"12","10","10","10")
	Return Me
End Sub

Sub AddColumns10p2 As VueElement
	AddColumns(1,"12","10","10","10").AddColumns(1,"12","2","2","2")
	Return Me
End Sub

Sub AddColumns3p9 As VueElement
	AddColumns(1,"12","3","3","3").AddColumns(1,"12","9","9","9")
	Return Me
End Sub

Sub AddColumns9p3 As VueElement
	AddColumns(1,"12","9","9","9").AddColumns(1,"12","3","3","3")
	Return Me
End Sub

Sub AddColumns7p5 As VueElement
	AddColumns(1,"12","7","7","7").AddColumns(1,"12","5","5","5")
	Return Me
End Sub

Sub AddColumns5p7 As VueElement
	AddColumns(1,"12","5","5","5").AddColumns(1,"12","7","7","7")
	Return Me
End Sub

Sub AddColumns12 As VueElement
	AddColumns(1,"12","12","12","12")
	Return Me
End Sub

Sub AddColumns6 As VueElement
	AddColumns(1,"12","6","6","6")
	Return Me
End Sub

Sub AddColumns2 As VueElement
	AddColumns(1,"12","2","2","2")
	Return Me
End Sub

Sub AddColumns1 As VueElement
	AddColumns(1,"12","1","1","1")
	Return Me
End Sub

Sub AddColumns3 As VueElement
	AddColumns(1,"12","3","3","3")
	Return Me
End Sub

Sub AddColumns4 As VueElement
	AddColumns(1,"12","4","4","4")
	Return Me
End Sub

Sub AddColumns5 As VueElement
	AddColumns(1,"12","5","5","5")
	Return Me
End Sub

Sub AddColumns7 As VueElement
	AddColumns(1,"12","7","7","7")
	Return Me
End Sub

Sub AddColumns8 As VueElement
	AddColumns(1,"12","8","8","8")
	Return Me
End Sub

Sub AddColumns9 As VueElement
	AddColumns(1,"12","9","9","9")
	Return Me
End Sub

Sub AddColumns10 As VueElement
	AddColumns(1,"12","10","10","10")
	Return Me
End Sub

Sub AddColumns11 As VueElement
	AddColumns(1,"12","11","11","11")
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

Sub AddSizes(sSizeSmall As String, sSizeMedium As String, sSizeLarge As String, sSizeXLarge As String) As VueElement
	sSizeSmall = sSizeSmall.Trim
	sSizeXLarge = sSizeXLarge.trim
	sSizeMedium = sSizeMedium.trim
	'
	If sSizeSmall <> "" Then AddAttr("sm", sSizeSmall)
	If sSizeXLarge <> "" Then AddAttr("xl", sSizeXLarge)
	If sSizeMedium <> "" Then AddAttr("md", sSizeMedium)
	If sSizeLarge <> "" Then AddAttr("lg", sSizeLarge)
	Return Me
End Sub

Sub AddOffsets(sOffsetSmall As String, sOffsetMedium As String,sOffsetLarge As String,sOffsetXLarge As String) As VueElement
	sOffsetSmall = sOffsetSmall.Trim
	sOffsetMedium = sOffsetMedium.Trim
	sOffsetLarge = sOffsetLarge.Trim
	sOffsetXLarge = sOffsetXLarge.Trim
	'
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
	If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = ""
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


Sub setItems(s As String)
	stItems = s
	AddAttr("items", stItems)
End Sub


Sub getItems As String
	Return stItems
End Sub


Sub setItemText(s As String)
	AddAttr("item-text", S)
	stItemText = S
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


Sub setMultiple(b As Boolean)
	AddAttr(":multiple", b)
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
	vmodel = vmodel
	AddAttr("type", "text")
	setRef(vmodel)
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

'set the event attribute only
Sub SetOnEventAttr(eventHandler As Object, eventName As String, attrName As String, eventValue As String)
	eventName = eventName.tolowercase
	eventName = eventName.Replace(":","")
	eventName = eventName.Replace(".","")
	eventName = eventName.Replace("-","")
	attrName = attrName.tolowercase
	If SubExists(eventHandler, eventName) = False Then Return
	If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = ""
	Dim sCode As String = $"${eventName}(${eventValue})"$
	AddAttr($"v-on:${attrName}"$, sCode)
End Sub

