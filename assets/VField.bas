B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
#Event: Blur (e As BANanoEvent)
#Event: Button_Click (e As BANanoEvent)
#Event: Change (item As Object)
#Event: Click (e As BANanoEvent)
#Event: ClickAlt (e As BANanoEvent)
#Event: ClickAppend (e As BANanoEvent)
#Event: ClickAppendOuter (e As BANanoEvent)
#Event: ClickClear (e As BANanoEvent)
#Event: ClickClose (e As BANanoEvent)
#Event: ClickPrepend (e As BANanoEvent)
#Event: ClickPrependInner (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)
#Event: ClickShift (e As BANanoEvent)
#Event: ClickStop (e As BANanoEvent)
#Event: Date_Change (item As String)
#Event: DblClick (e As BANanoEvent)
#Event: DblClickPrevent (e As BANanoEvent)
#Event: DragEnter (e As BANanoEvent)
#Event: DragLeave (e As BANanoEvent)
#Event: DragOver (e As BANanoEvent)
#Event: Drop (e As BANanoEvent)
#Event: End (e As BANanoEvent)
#Event: Focus (e As BANanoEvent)
#Event: Input (item As Object)
#Event: KeyDown (e As BANanoEvent)
#Event: KeyPress (e As BANanoEvent)
#Event: KeyUp (e As BANanoEvent)
#Event: KeyUpEnter (e As BANanoEvent)
#Event: KeyUpEnterPrevent (e As BANanoEvent)
#Event: KeydownEnterPrevent (e As BANanoEvent)
#Event: KeydownLeftPrevent (e As BANanoEvent)
#Event: KeydownRightPrevent (e As BANanoEvent)
#Event: KeydownSpacePrevent (e As BANanoEvent)
#Event: LeftClick (item As Map)
#Event: MouseDown (e As BANanoEvent)
#Event: MouseDownStop (e As BANanoEvent)
#Event: MouseMove (e As BANanoEvent)
#Event: MouseOut (e As BANanoEvent)
#Event: MouseOver (event As BANanoEvent)
#Event: MouseUp (e As BANanoEvent)
#Event: RightClick (item As Map)
#Event: Start (e As BANanoEvent)
#Event: Submit (e As BANanoEvent)
#Event: Time_Change (item As String)
#Event: TouchStartStop (e As BANanoEvent)
#Event: UpdateError (B As Boolean)

#DesignerProperty: Key: ReadMe, DisplayName: ReadMe*, FieldType: String, DefaultValue: The VField should always be placed inside a VForm. The VField helps you create any kind of form component like image-avatar-progress bar-progress circle-chip-rating and buttons and icons. You also indicate where the native component should be placed in the grid by specifying its Row/Column position. The grid is built automatically for you! When using the VField you only call BindState once, on the VForm. If you use a date you need to set a watch to display the nicedate. For dropdowns you need to specify the data-source - (item-value) and (item-text) (i.e. key value pairs For the source field names), Description: The VField should always be placed inside a VForm. The VField helps you create any kind of form component like image-avatar-progress bar-progress circle-chip-rating and buttons and icons. You also indicate where the native component should be placed in the grid by specifying its Row/Column position. The grid is built automatically for you! When using the VField you only call BindState once, on the VForm. If you use a date you need to set a watch to display the nicedate. For dropdowns you need to specify the data-source - (item-value) and (item-text) (i.e. key value pairs For the source field names)
#DesignerProperty: Key: ParentID, DisplayName: Parent ID, FieldType: String, DefaultValue: , Description: The parent id if not placing on RC
#DesignerProperty: Key: Title, DisplayName: Title / Caption, FieldType: String, DefaultValue: , Description: Title / Label
#DesignerProperty: Key: FieldName, DisplayName: Field Name*, FieldType: String, DefaultValue: , Description: Field Name on the database table
#DesignerProperty: Key: RowPos, DisplayName: Row Pos, FieldType: Int, DefaultValue: 1, Description: Row Position on Grid
#DesignerProperty: Key: ColPos, DisplayName: Col Pos, FieldType: Int, DefaultValue: 1, Description: Column Position on Grid
#DesignerProperty: Key: DataType, DisplayName: Data Type, FieldType: String, DefaultValue: string, Description: Data Type, List: integer|double|blob|string|none
#DesignerProperty: Key: ComponentType, DisplayName: Component Type (Form)*, FieldType: String, DefaultValue: TextField, Description: Component Type and if its a date you need to set a watch to make it a nice date, List: P|H6|H1|H2|H3|H4|H5|div|span|TextField|TextArea|TimePicker|DatePicker|DateTimePicker|FileInput|FileInputImage|Money|Thousands|Password|ComboBox|AutoComplete|Select|Avatar|AvatarIcon|AvatarText|CheckBox|Switch|RadioGroup|Image|Telephone|Email|Website|Slider|Chip|Rating|ProgressCircular|ProgressLinear|Icon|Button|FAB|ColorSelect|ColorTextField|PersonList
#DesignerProperty: Key: TrueValue, DisplayName: True Value (Checkbox/Switch), FieldType: String, DefaultValue: , Description: Checkbox & Switch True Value
#DesignerProperty: Key: FalseValue, DisplayName: False Value (Checkbox/Switch), FieldType: String, DefaultValue: , Description: Checkbox & Switch False Value
#DesignerProperty: Key: DataSource, DisplayName: Foreign Table Name, FieldType: String, DefaultValue: , Description: Foreign Table to relate field to
#DesignerProperty: Key: DataKey, DisplayName: Foreign Key Field, FieldType: String, DefaultValue: , Description: Foreign Key Field
#DesignerProperty: Key: DataValue, DisplayName: Foreign Value Field (Display), FieldType: String, DefaultValue: , Description: Foreign Value Field
#DesignerProperty: Key: ItemValue, DisplayName: Item Value (Auto/Combo/Select), FieldType: String, DefaultValue: id, Description: Item Value for Drop Downs
#DesignerProperty: Key: ItemText, DisplayName: Item Text, (Auto/Combo/Select), FieldType: String, DefaultValue: text, Description: Item Text for Drop Downs
#DesignerProperty: Key: ItemAvatar, DisplayName: Item Avatar, (Auto), FieldType: String, DefaultValue: avatar, Description: Item Avatar for Drop Downs
#DesignerProperty: Key: ColumnType, DisplayName: DataTable Component*, FieldType: String, DefaultValue: Normal, Description: Data Table Column Type, List: Normal|TextArea|TextField|Icon|Chip|Switch|Action|Image|CheckBox|Time|Money|Avatar|AvatarIcon|AvatarText|Rating|ProgressCircular|ProgressLinear|Date|DateTime|Number|Button|Link|ComboBox|AutoComplete|Select|Email|FileSize
#DesignerProperty: Key: ListItemType, DisplayName: List Item Type, FieldType: String, DefaultValue: , Description: List View Item Type

#DesignerProperty: Key: MaxLen, DisplayName: Counter/Length, FieldType: Int, DefaultValue: 0, Description: Counter / Length
#DesignerProperty: Key: PrimaryKey, DisplayName: Primary Key, FieldType: Boolean, DefaultValue: False, Description: This field is a primary key
#DesignerProperty: Key: DefaultValue1, DisplayName: Default Value, FieldType: String, DefaultValue: , Description: What is the default value for this field
#DesignerProperty: Key: AutoIncrement, DisplayName: Auto Increment, FieldType: Boolean, DefaultValue: False, Description: This field is an auto increment field
#DesignerProperty: Key: Visible, DisplayName: Show On Form, FieldType: Boolean, DefaultValue: True, Description: Visibility On Form
#DesignerProperty: Key: OnDb, DisplayName: Use on CRUD (File Picker Off), FieldType: Boolean, DefaultValue: True, Description: This field should be used for CRUD actions
#DesignerProperty: Key: DbSort, DisplayName: Sort on SQL Query, FieldType: Boolean, DefaultValue: True, Description: This field is sortable on SQL query

#DesignerProperty: Key: OnTable, DisplayName: Show on VDT, FieldType: Boolean, DefaultValue: True, Description: This field should be shown on the V-Data-Table
#DesignerProperty: Key: ColumnPosition, DisplayName: Column Pos VDT, FieldType: Int, DefaultValue: 0, Description: Data Table Column Position
#DesignerProperty: Key: Filterable, DisplayName: Filterable on VDT, FieldType: Boolean, DefaultValue: True, Description: This field should be filterable on the V-Data-Table
#DesignerProperty: Key: Sortable, DisplayName: Sortable on VDT, FieldType: Boolean, DefaultValue: True, Description: Is Sortable on Data Table
#DesignerProperty: Key: Totals, DisplayName: Show as Total on VDT, FieldType: Boolean, DefaultValue: False, Description: Column should have totals
#DesignerProperty: Key: ValueMethod, DisplayName: DT Compute Value, FieldType: String, DefaultValue: , Description: Sub to run before displaying the value
#DesignerProperty: Key: ClassMethod, DisplayName: DT Compute Class, FieldType: String, DefaultValue: , Sub to run on the class
#DesignerProperty: Key: StyleMethod, DisplayName: DT Compute Style, FieldType: String, DefaultValue: , Description: Sub to run on the style
#DesignerProperty: Key: ColorMethod, DisplayName: DT Color Compute, FieldType: String, DefaultValue: , Description: Sub to run on the color
#DesignerProperty: Key: SaveMethod, DisplayName: Compute B4 Save, FieldType: String, DefaultValue: , Description: Sub to run to compute value before saving
'
#DesignerProperty: Key: IconName, DisplayName: Icon Name, FieldType: String, DefaultValue: , Description: Icon Name
#DesignerProperty: Key: LoremIpsum, DisplayName:LoremIpsum, FieldType: Boolean, DefaultValue: False, Description: Show Lorem Ipsum
#DesignerProperty: Key: Placeholder, DisplayName: Place Holder, FieldType: String, DefaultValue: , Description: Place holder
#DesignerProperty: Key: Hint, DisplayName: Hint, FieldType: String, DefaultValue: , Description: Hint
#DesignerProperty: Key: PersistentHint, DisplayName: Persistent Hint, FieldType: Boolean, DefaultValue: False, Description: Show hint as persistent
#DesignerProperty: Key: Required, DisplayName: Required, FieldType: Boolean, DefaultValue: False, Description: This field is required and rules should be added
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: This component is disabled
#DesignerProperty: Key: ReadOnly, DisplayName: ReadOnly, FieldType: Boolean, DefaultValue: False, Description: This component is read-only
#DesignerProperty: Key: AutoFocus, DisplayName: Auto Focus, FieldType: Boolean, DefaultValue: False, Description: This component should receive auto focus

#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: Prepend Icon Name
#DesignerProperty: Key: PrependInnerIcon, DisplayName: PrependInnerIcon, FieldType: String, DefaultValue: , Description: Prepend Inner Icon Name
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: Append Icon Name
#DesignerProperty: Key: AppendOuterIcon, DisplayName: AppendOuterIcon, FieldType: String, DefaultValue: , Description: Append Outer Icon Name

#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  none, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: Color Intensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  none, Description: Text Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: Text Color Intensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: none, Description: Background Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: Backgroundcolorintensity, FieldType: String, DefaultValue: none, Description: Background Color Intensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink Content
#DesignerProperty: Key: MinValue, DisplayName: Min Value (Slider), FieldType: Int, DefaultValue: 0, Description: Min Value e.g. Slider
#DesignerProperty: Key: MaxValue, DisplayName: Max Value (Slider), FieldType: Int, DefaultValue: 100, Description: Max Value e.g. Slider
#DesignerProperty: Key: Size, DisplayName: Size (Icon/Avatar/Button), FieldType: String, DefaultValue: regular, Description: Size, List: x-small|small|regular|large|x-large
#DesignerProperty: Key: OwnSize, DisplayName: Own Size (Icon/Avatar/Button), FieldType: String, DefaultValue: , Description: Own Size
#DesignerProperty: Key: OnPdf, DisplayName: Use On Pdf, FieldType: Boolean, DefaultValue: False, Description: Show On Pdf
#DesignerProperty: Key: OnXls, DisplayName: Use On Xls, FieldType: Boolean, DefaultValue: False, Description: Show On Xls
#DesignerProperty: Key: Src, DisplayName: Src (Avatar/Image), FieldType: String, DefaultValue: , Description: Img / Avatar Src
#DesignerProperty: Key: LazySrc, DisplayName: LazySrc (Image), FieldType: String, DefaultValue: , Description: Img Lazy Src
#DesignerProperty: Key: Alt, DisplayName: Alt (Image), FieldType: String, DefaultValue: , Description: Img Alt
#DesignerProperty: Key: Height, DisplayName: Height (Image), FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width (Image), FieldType: String, DefaultValue: , Description: Width

#DesignerProperty: Key: MinHeight, DisplayName: Min Height, FieldType: String, DefaultValue: , Description: The minimum-height where applicable
#DesignerProperty: Key: MaxHeight, DisplayName: Max Height, FieldType: String, DefaultValue: , Description: The maximum-height where applicable
#DesignerProperty: Key: MinWidth, DisplayName: Min Width, FieldType: String, DefaultValue: , Description: The minimum-width where applicable
#DesignerProperty: Key: MaxWidth, DisplayName: Max Width, FieldType: String, DefaultValue: , Description: The maximum-height where applicable

#DesignerProperty: Key: Multiple, DisplayName: Multiple (Auto/Combo/Select/Check/Radio), FieldType: Boolean, DefaultValue: False, Description: Multiple selection
#DesignerProperty: Key: ReturnObject, DisplayName: ReturnObject (Auto/Combo/Select), FieldType: Boolean, DefaultValue: False, Description: Select Return Object

#DesignerProperty: Key: UseItems, DisplayName: Use These Items (Auto/Combo/Select/Check/Radio), FieldType: Boolean, DefaultValue: False, Description: Use These Items
#DesignerProperty: Key: ItemKeys, DisplayName: Item Values (Key)(;), FieldType: String, DefaultValue: , Description: Item Values to use
#DesignerProperty: Key: ItemValues, DisplayName: Item Texts (Value) (;), FieldType: String, DefaultValue: , Description: Item Texts to use
#DesignerProperty: Key: Chips, DisplayName: Chips (Drop Downs), FieldType: Boolean, DefaultValue: False, Description: Show items as Chips

#DesignerProperty: Key: ButtonType, DisplayName: Button Type, FieldType: String, DefaultValue:  button, Description: Button Type, List: button|fab|icon-right|icon-left|none
#DesignerProperty: Key: ButtonPosition, DisplayName: Button Position, FieldType: String, DefaultValue: normal, Description: Button Position, List: normal|top-left|top-right|bottom-left|bottom-right
#DesignerProperty: Key: ButtonRaised, DisplayName: Button Raised, FieldType: Boolean, DefaultValue:  False, Description: The button is raised
#DesignerProperty: Key: ButtonOutlined, DisplayName: Button Outlined, FieldType: Boolean, DefaultValue:  False, Description: The button is outlined
#DesignerProperty: Key: ButtonRounded, DisplayName: Button Rounded, FieldType: Boolean, DefaultValue:  False, Description: The button is rounded
#DesignerProperty: Key: Inset, DisplayName: Switch Inset, FieldType: Boolean, DefaultValue: False, Description: Switch Inset
#DesignerProperty: Key: ButtonAbsolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue:  False, Description: The is placed absolute
#DesignerProperty: Key: ButtonApp, DisplayName: App, FieldType: Boolean, DefaultValue:  False, Description: Should align for app
#DesignerProperty: Key: FullWidth, DisplayName: FullWidth, FieldType: Boolean, DefaultValue:  False, Description: Should fill full width
#DesignerProperty: Key: RowDisplay, DisplayName: Radio Row/Column Display, FieldType: Boolean, DefaultValue: False, Description: Radio Row Display
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Styles, DisplayName: Styles (JSON), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use = 
#DesignerProperty: Key: Attributes, DisplayName: Attributes (JSON), FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private bVisible As Boolean
	Private sAlt As String
	Private bButtonRounded As Boolean
	Private bAutoFocus As Boolean
	Private bAutoIncrement As Boolean
	Private iColPos As Int
	Private sColumnType As String
	Private sComponentType As String
	Private sDataKey As String
	Private sDataSource As String
	Private sDataType As String
	Private sDataValue As String
	Private bDbSort As Boolean
	Private sDefaultValue As String
	Private bDisabled As Boolean
	Private sFalseValue As String
	Private sFieldName As String
	Private bFilterable As Boolean
	Private sHeight As String
	Private bInset As Boolean
	Private sItemKeys As String
	Private sItemValues As String
	Private sLazySrc As String
	Private sListItemType As String
	Private iMaxLen As Int
	Private bMultiple As Boolean
	Private bOnDb As Boolean
	Private bOnPdf As Boolean
	Private bOnTable As Boolean
	Private bOnXls As Boolean
	Private bPrimaryKey As Boolean
	Private bReadOnly As Boolean
	Private bRequired As Boolean
	Private bReturnObject As Boolean
	Private bRowDisplay As Boolean
	Private iRowPos As Int
	Private bSortable As Boolean
	Private sTitle As String
	Private sTrueValue As String
	Private bUseItems As Boolean
	Private sVModel As String
	Private sWidth As String
	Private sPlaceholder As String
	Private sHint As String
	Private bLoremIpsum As Boolean
	Private sItemValue As String
	Private sItemText As String
	Private sSrc As String
	Private sSize As String
	Private bChips As Boolean
	Private sMinValue As String
	Private sMaxValue As String
	Private sOwnSize As String
	Private sIconName As String
	Private mClasses As String = "" 
	Private mStyles As String = "" 
	Private mAttributes As String = "" 
	Private mTextColor As String
	Private mTextColorIntensity As String
	Private mColorIntensity As String
	Private mColor As String
	Private sButtonType As String
	Private sButtonPosition As String
	Private sShrink As String
	Private sBackgroundColor As String
	Private sBackgroundColorIntensity As String
	Private sColumnPosition As String
	Private bPersistentHint As Boolean
	Private bButtonRaised As Boolean
	Private bButtonOutlined As Boolean
	Private bTotals As Boolean
	Private sValueMethod As String
	Private sClassMethod As String
	Private sStyleMethod As String
	Private sColorMethod As String
	Private bButtonAbsolute As Boolean
	Private sParentID As String
	Private bButtonApp As Boolean
	Private bFullWidth As Boolean
	Private sSaveMethod As String
	Private sPrependIcon As String
Private sPrependInnerIcon As String
Private sAppendIcon As String
Private sAppendOuterIcon As String
Private sMinHeight As String
Private sMaxHeight As String
Private sMinWidth As String
Private sMaxWidth As String
	Private sMarginAXYTBLR As String
	Private sPaddingAXYTBLR As String
	Private sItemAvatar As String
	Public VC As VueComponent
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
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		sItemAvatar = BANanoShared.GetProp(Props, "ItemAvatar", "")
		
		sValueMethod = Props.GetDefault("ValueMethod", "")
		sValueMethod = BANanoShared.parseNull(sValueMethod)
		'
		sClassMethod = Props.GetDefault("ClassMethod", "")
		sClassMethod = BANanoShared.parseNull(sClassMethod)
		
		sStyleMethod = Props.GetDefault("StyleMethod", "")
		sStyleMethod = BANanoShared.parseNull(sStyleMethod)
		
		sColorMethod = Props.GetDefault("ColorMethod", "")
		sColorMethod = BANanoShared.parseNull(sColorMethod)
		
		sBackgroundColor = Props.Get("BackgroundColor")
		sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
		sButtonPosition = Props.GetDefault("ButtonPosition","")
		sButtonType = Props.Get("ButtonType")
		mColorIntensity = Props.Get("ColorIntensity")
		mTextColor = Props.Get("TextColor")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		mColor = Props.Get("Color")
		sOwnSize = Props.GetDefault("OwnSize", "")
		sMaxValue = Props.GetDefault("MaxValue", 0)
		sMinValue = Props.GetDefault("MinValue", 0)
		bVisible = Props.getdefault("Visible", False)
		bVisible = BANanoShared.parseBool(bVisible)
		sAlt = Props.GetDefault("Alt", "")
		bAutoFocus = Props.GetDefault("AutoFocus", False)
		bAutoFocus = BANanoShared.parseBool(bAutoFocus)
		bAutoIncrement = Props.GetDefault("AutoIncrement", False)
		bAutoIncrement = BANanoShared.parseBool(bAutoIncrement)
		iColPos = Props.GetDefault("ColPos", 1)
		sColumnType = Props.GetDefault("ColumnType", "")
		sComponentType = Props.GetDefault("ComponentType", "")
		sDataKey = Props.GetDefault("DataKey", "")
		sDataSource = Props.GetDefault("DataSource", "")
		sDataType = Props.GetDefault("DataType", "string")
		sDataValue = Props.GetDefault("DataValue", "")
		bDbSort = Props.GetDefault("DbSort", False)
		bDbSort = BANanoShared.parseBool(bDbSort)
		sDefaultValue = Props.GetDefault("DefaultValue1", "")
		bDisabled = Props.GetDefault("Disabled", False)
		bDisabled = BANanoShared.parseBool(bDisabled)
		sFalseValue = Props.GetDefault("FalseValue", "")
		sFieldName = Props.GetDefault("FieldName", "")
		bFilterable = Props.GetDefault("Filterable", False)
		bFilterable = BANanoShared.parseBool(bFilterable)
		sHeight = Props.GetDefault("Height", "")
		bInset = Props.GetDefault("Inset", False)
		bInset = BANanoShared.parseBool(bInset)
		sItemKeys = Props.GetDefault("ItemKeys", "")
		sItemValues = Props.GetDefault("ItemValues", "")
		sLazySrc = Props.GetDefault("LazySrc", "")
		sListItemType = Props.GetDefault("ListItemType", "")
		iMaxLen = Props.GetDefault("MaxLen", 0)
		bMultiple = Props.GetDefault("Multiple", False)
		bMultiple = BANanoShared.parseBool(bMultiple)
		bOnDb = Props.GetDefault("OnDb", False)
		bOnDb = BANanoShared.parseBool(bOnDb)
		bOnPdf = Props.GetDefault("OnPdf", False)
		bOnPdf = BANanoShared.parseBool(bOnPdf)
		bOnTable = Props.GetDefault("OnTable", False)
		bOnTable = BANanoShared.parseBool(bOnTable)
		bOnXls = Props.GetDefault("OnXls", False)
		bOnXls = BANanoShared.parseBool(bOnXls)
		bPrimaryKey = Props.GetDefault("PrimaryKey", False)
		bPrimaryKey = BANanoShared.parseBool(bPrimaryKey)
		bReadOnly = Props.GetDefault("ReadOnly", False)
		bReadOnly = BANanoShared.parseBool(bReadOnly)
		bRequired = Props.GetDefault("Required", False)
		bRequired = BANanoShared.parseBool(bRequired)
		bReturnObject = Props.GetDefault("ReturnObject", False)
		bReturnObject = BANanoShared.parseBool(bReturnObject)
		bRowDisplay = Props.GetDefault("RowDisplay", False)
		bRowDisplay = BANanoShared.parseBool(bRowDisplay)
		iRowPos = Props.GetDefault("RowPos", 1)
		bSortable = Props.GetDefault("Sortable", False)
		bSortable = BANanoShared.parseBool(bSortable)
		sTitle = Props.GetDefault("Title", "")
		sTrueValue = Props.GetDefault("TrueValue", "True")
		bUseItems = Props.GetDefault("UseItems", False)
		bUseItems = BANanoShared.parseBool(bUseItems)
		sVModel = Props.GetDefault("FieldName", "")
		sWidth = Props.GetDefault("Width", "")
		sPlaceholder = Props.getdefault("Placeholder", "")
		sHint = Props.GetDefault("Hint", "")
		bLoremIpsum = Props.GetDefault("LoremIpsum", False)
		bLoremIpsum = BANanoShared.parseBool(bLoremIpsum)
		sItemValue = Props.GetDefault("ItemValue", "id")
		sItemText = Props.GetDefault("ItemText", "text")
		sSrc = Props.GetDefault("Src", "")
		sSize = Props.GetDefault("Size", "regular")
		bChips = Props.GetDefault("Chips", False)
		bChips = BANanoShared.parseBool(bChips)
		sIconName = Props.GetDefault("IconName", "")
		mClasses = Props.Get("Classes") 
		mStyles = Props.Get("Styles") 
		mAttributes = Props.Get("Attributes") 
		sShrink = Props.GetDefault("Shrink", False)
		sShrink = BANanoShared.parsebool(sShrink)
		sColumnPosition = Props.GetDefault("ColumnPosition", "0")
		bPersistentHint = Props.GetDefault("PersistentHint", False)
		bPersistentHint = BANanoShared.parseBool(bPersistentHint)
		bButtonRaised = Props.GetDefault("ButtonRaised", False)
		bButtonRaised = BANanoShared.parseBool(bButtonRaised)
		bButtonOutlined = Props.getdefault("ButtonOutlined", False)
		bButtonOutlined = BANanoShared.parsebool(bButtonOutlined)
		bTotals = Props.getdefault("Totals", False)
		bTotals = BANanoShared.parsebool(bTotals)
		bButtonAbsolute = Props.GetDefault("ButtonAbsolute", False)
		bButtonAbsolute = BANanoShared.parseBool(bButtonAbsolute)
		sParentID = Props.getdefault("ParentID", "")
		bButtonApp = Props.getdefault("ButtonApp", False)
		bButtonApp = BANanoShared.parsebool(bButtonApp)
		bFullWidth = Props.GetDefault("FullWidth", False)
		bFullWidth = BANanoShared.parseBool(bFullWidth)
		sSaveMethod = Props.GetDefault("SaveMethod", "")
		bButtonRounded = Props.GetDefault("ButtonRounded", False)
		bButtonRounded = BANanoShared.parseBool(bButtonRounded)
		'
		sPrependIcon = Props.GetDefault("PrependIcon", "")
		sPrependInnerIcon = Props.GetDefault("PrependInnerIcon", "")
		sAppendIcon = Props.GetDefault("AppendIcon", "")
		sAppendOuterIcon = Props.GetDefault("AppendOuterIcon", "")
		'
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMinWidth = Props.GetDefault("MinWidth", "")
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		'
		sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
		sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="vfield" id="${mName}fld"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName & "fld", mName & "fld") 
	VElement.TagName = "div"
	VElement.AddAttr("data-margins", sMarginAXYTBLR)
	VElement.AddAttr("data-padding", sPaddingAXYTBLR)
	VElement.AddAttr("data-minheight", sMinHeight)
	VElement.AddAttr("data-maxheight", sMaxHeight)
	VElement.AddAttr("data-minwidth", sMinWidth)
	VElement.AddAttr("data-maxwidth", sMaxWidth)
	VElement.AddAttr("data-prependicon", sPrependIcon)
	VElement.AddAttr("data-prependinnericon", sPrependInnerIcon)
	VElement.AddAttr("data-appendicon", sAppendIcon)
	VElement.AddAttr("data-appendoutericon", sAppendOuterIcon)
	VElement.AddAttr("data-rounded", bButtonRounded)
	VElement.AddAttr("data-savemethod", sSaveMethod)
	VElement.AddAttr("data-fullwidth", bFullWidth)
	VElement.AddAttr("data-app", bButtonApp)
	VElement.AddAttr("data-parentid", sParentID)
	VElement.AddAttr("data-absolute", bButtonAbsolute)
	VElement.AddAttr("data-valuemethod", sValueMethod)
	VElement.AddAttr("data-classmethod", sClassMethod)
	VElement.AddAttr("data-stylemethod", sStyleMethod)
	VElement.AddAttr("data-colormethod", sColorMethod)
	VElement.AddAttr("data-totals", bTotals)
	VElement.addattr("data-buttonoutlined", bButtonOutlined)
	VElement.AddAttr("data-raised", bButtonRaised)
	VElement.AddAttr("data-persistenthint", bPersistentHint)
	VElement.AddAttr("data-columnposition", sColumnPosition)
	VElement.AddAttr("data-backgroundcolor", sBackgroundColor)
	VElement.AddAttr("data-backgroundcolorintensity", sBackgroundColorIntensity)
	VElement.AddAttr("data-shrink", sShrink)
	VElement.AddAttr("data-buttonposition", sButtonPosition)
	VElement.AddAttr("data-buttontype", sButtonType)
	VElement.AddAttr("data-colorintensity", mColorIntensity)
	VElement.AddAttr("data-color", mColor)
	VElement.AddAttr("data-textcolor", mTextColor)
	VElement.AddAttr("data-textcolorintensity", mTextColorIntensity)
	VElement.AddAttr("data-classes", mClasses)
	VElement.AddAttr("data-styles", mStyles)
	VElement.AddAttr("data-attributes", mAttributes)
	VElement.AddAttr("data-iconname", sIconName)
	VElement.AddAttr("data-ownsize", sOwnSize)
	VElement.AddAttr("data-maxvalue", sMaxValue)
	VElement.AddAttr("data-minvalue", sMinValue)
	VElement.AddAttr("data-chips", bChips)
	VElement.AddAttr("data-size", sSize)	
	VElement.AddAttr("data-name", mName) 
	VElement.AddAttr("data-alt", sAlt)
	VElement.AddAttr("data-autofocus", bAutoFocus)
	VElement.AddAttr("data-autoincrement", bAutoIncrement)
	VElement.AddAttr("data-colpos", iColPos)
	VElement.AddAttr("data-columntype", sColumnType)
	VElement.AddAttr("data-componenttype", sComponentType)
	VElement.AddAttr("data-datakey", sDataKey)
	VElement.AddAttr("data-datasource", sDataSource)
	VElement.AddAttr("data-datatype", sDataType)
	VElement.AddAttr("data-datavalue", sDataValue)
	VElement.AddAttr("data-dbsort", bDbSort)
	VElement.AddAttr("data-defaultvalue", sDefaultValue)
	VElement.AddAttr("data-disabled", bDisabled)
	VElement.AddAttr("data-falsevalue", sFalseValue)
	VElement.AddAttr("data-fieldname", sFieldName)
	VElement.AddAttr("data-filterable", bFilterable)
	VElement.AddAttr("data-height", sHeight)
	VElement.AddAttr("data-inset", bInset)
	VElement.AddAttr("data-itemkeys", sItemKeys)
	VElement.AddAttr("data-itemvalues", sItemValues)
	VElement.AddAttr("data-lazysrc", sLazySrc)
	VElement.AddAttr("data-listitemtype", sListItemType)
	VElement.AddAttr("data-maxlen", iMaxLen)
	VElement.AddAttr("data-multiple", bMultiple)
	VElement.AddAttr("data-ondb", bOnDb)
	VElement.AddAttr("data-onpdf", bOnPdf)
	VElement.AddAttr("data-ontable", bOnTable)
	VElement.AddAttr("data-onxls", bOnXls)
	VElement.AddAttr("data-primarykey", bPrimaryKey)
	VElement.AddAttr("data-readonly", bReadOnly)
	VElement.AddAttr("data-required", bRequired)
	VElement.AddAttr("data-returnobject", bReturnObject)
	VElement.AddAttr("data-rowdisplay", bRowDisplay)
	VElement.AddAttr("data-rowpos", iRowPos)
	VElement.AddAttr("data-sortable", bSortable)
	VElement.AddAttr("data-title", sTitle)
	VElement.AddAttr("data-truevalue", sTrueValue)
	VElement.AddAttr("data-useitems", bUseItems)
	VElement.AddAttr("data-vmodel", sVModel)
	VElement.AddAttr("data-width", sWidth)
	VElement.AddAttr("data-visible", bVisible)
	VElement.AddAttr("data-placeholder", sPlaceholder)
	VElement.AddAttr("data-hint", sHint)
	VElement.AddAttr("data-loremipsum", bLoremIpsum)
	VElement.AddAttr("data-itemvalue", sItemValue)
	VElement.AddAttr("data-itemtext", sItemText)
	VElement.AddAttr("data-itemavatar", sItemAvatar)
	VElement.AddAttr("data-src", sSrc)
	VElement.AddStyle("display", "none")
End Sub
'
'Sub getVisibleBinding As String
'	Dim fKey As String = $"${mName}show"$
'	Return fKey
'End Sub
'
'Sub getPasswordEyesBinding As String
'	Dim sShowEyes As String = $"${mName}eyes"$
'	Return sShowEyes
'End Sub
'
'Sub getReadOnlyBinding As String
'	Dim fKey As String = $"${mName}readonly"$
'	Return fKey
'End Sub
'
'Sub getRequiredBinding As String
'	Dim fKey As String = $"${mName}required"$
'	Return fKey
'End Sub
'
'Sub getDisabledBinding As String
'	Dim fKey As String = $"${mName}disabled"$
'	Return fKey
'End Sub
'
'Sub getLoadingBinding As String
'	Dim fKey As String = $"${mName}loading"$
'	Return fKey
'End Sub
'
'Sub getCaptionBinding As String
'	Dim fKey As String = $"${mName}caption"$
'	Return fKey
'End Sub
'
'Sub getItemsBinding As String
'	Dim fKey As String = $"${mName}items"$
'	Return fKey
'End Sub

'******


'toggle the password
Sub TogglePassword
	Dim sShowEyes As String = $"${mName}eyes"$
	Dim bcurrent As Boolean = VC.GetData(sShowEyes)
	bcurrent = Not(bcurrent)
	Dim optx As Map = CreateMap()
	optx.Put(sShowEyes, bcurrent)
	VC.SetState(optx)
End Sub

'update field visibility
Sub setVisibile(b As Boolean)
	Dim fKey As String = $"${mName}show"$
	Dim iKey As String = $"${mName}vif"$
	VC.SetData(fKey, b)
	VC.SetData(iKey, b)
End Sub

'update read only
Sub setReadOnly(b As Boolean)
	Dim fKey As String = $"${mName}readonly"$
	VC.SetData(fKey, b)
End Sub

'update required
Sub setRequired(b As Boolean)
	Dim fKey As String = $"${mName}required"$
	VC.SetData(fKey, b)
End Sub

'update disabled
Sub setDisabled(b As Boolean)
	Dim fKey As String = $"${mName}disabled"$
	VC.SetData(fKey, b)
End Sub

'update loading
Sub setLoading(b As Boolean)
	Dim fKey As String = $"${mName}loading"$
	VC.SetData(fKey, b)
End Sub

'updating caption
Sub setCaption(s As String)
	Dim fKey As String = $"${mName}caption"$
	VC.SetData(fKey, s)
End Sub

'update items using list of objects
Sub setItems(items As List)
	Dim fKey As String = $"${mName}items"$
	VC.SetData(fKey, items)
End Sub

'clear the items in the list
Sub ClearItems
	Dim items As List
	items.Initialize
	Dim fKey As String = $"${mName}items"$
	VC.SetData(fKey, items)
End Sub

'add items from a map to the autocomplete, combo or select
Sub AddItems(items As Map)
	Dim fKey As String = $"${mName}items"$
	Dim itemvalue As String = VC.GetData($"${mName}itemvalue"$)
	Dim itemtext As String = VC.GetData($"${mName}itemtext"$)
	'get existing items
	Dim oitems As List = VC.GetData(fKey)
	For Each ik As String In items.keys
		Dim iv As String = items.Get(ik)
		Dim ni As Map = CreateMap()
		ni.Put(itemvalue, ik)
		ni.Put(itemtext, iv)
		oitems.Add(ni)
	Next
	VC.SetData(fKey, oitems)
End Sub

'add a map with colors you want
Sub setColors(items As Map)
	Dim fKey As String = $"${mName}items"$
	Dim itemvalue As String = VC.GetData($"${mName}itemvalue"$)
	Dim itemtext As String = VC.GetData($"${mName}itemtext"$)
	
	'get existing items
	Dim oitems As List = VC.GetData(fKey)
	For Each ik As String In items.keys
		Dim iv As String = items.Get(ik)
		Dim ni As Map = CreateMap()
		ni.Put(itemvalue, ik)
		ni.Put(itemtext, iv)
		oitems.Add(ni)
	Next
	VC.SetData(fKey, oitems)
End Sub

'add a person
Sub AddPerson(value As String, text As String, avatar As String)
	Dim fKey As String = $"${mName}items"$
	Dim itemvalue As String = VC.GetData($"${mName}itemvalue"$)
	Dim itemtext As String = VC.GetData($"${mName}itemtext"$)
	Dim itemavatar As String = VC.GetData($"${mName}itemavatar"$)
	
	'get existing items
	Dim oitems As List = VC.GetData(fKey)
	Dim ni As Map = CreateMap()
	ni.Put(itemvalue, value)
	ni.Put(itemtext, text)
	ni.Put(itemavatar, avatar)
	oitems.Add(ni)
	VC.SetData(fKey, oitems)
End Sub

'update the color
Sub SetColor(cColor As String, cColorIntensity As String)
	'the binding class
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	'remove existing colors
	For Each tc As String In BANanoShared.Colors
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	'remove existing intensities
	For Each ti As String In BANanoShared.Intensities
		items = BANanoShared.ListRemoveItem(items, ti)
	Next
	'add the text color we want
	Dim ntc As String = BANanoShared.NormalizeColor(cColor)
	If ntc <> "" Then items.add(ntc)
	'add the intensity
	Dim nti As String = BANanoShared.NormalizeIntensity(cColorIntensity)
	If nti <> "" Then items.add(nti)
	VC.SetData(xbindclass, items)
End Sub

'update the text color
Sub SetTextColor(cColor As String, cColorIntensity As String)
	'the binding class
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.TextColors
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	'remove existing text intensities
	For Each ti As String In BANanoShared.TextColorIntensities
		items = BANanoShared.ListRemoveItem(items, ti)
	Next
	'add the text color we want
	Dim ntc As String = BANanoShared.NormalizeTextColor(cColor)
	If ntc <> "" Then items.add(ntc)
	'add the intensity
	Dim nti As String = BANanoShared.NormalizeTextIntensity(cColorIntensity)
	If nti <> "" Then items.add(nti)
	VC.SetData(xbindclass, items)
End Sub

'update an image source
Sub setImage(src As String)
	Dim bsrc As String = VC.GetData($"${mName}src"$)
	VC.SetData(bsrc, src)
End Sub

'update the lazy image src
Sub setLazyImage(src As String)
	Dim bsrc As String = VC.GetData($"${mName}lazysrc"$)
	VC.SetData(bsrc, src)
End Sub

Sub RemoveClass(sClass As String)
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	items = BANanoShared.ListRemoveItem(items, sClass)
	VC.SetData(xbindclass, items)
End Sub

'set text alignment
Sub setTextAlign(ta As String)
	ta = ta.replace("none","")
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	For Each tax As String In BANanoShared.TextAlign
		items = BANanoShared.ListRemoveItem(items, tax)
	Next
	If ta <> "" Then
		items.add(ta)
	End If
	VC.SetData(xbindclass, items)
End Sub

'update text decoration
Sub setTextDecoration(s As String)
	'the binding class
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.TextDecoration
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.Add(s)
	VC.SetData(xbindclass, items)
End Sub

'truncate
Sub setTruncate(b As Boolean)
	Dim xbindclass As String = $"${mName}class"$
	Dim eClass As List = VC.GetData(xbindclass)
	Select Case b
		Case True
			eClass = BANanoShared.ListAddDistinctItem(eClass, "d-inline-block")
			eClass = BANanoShared.ListAddDistinctItem(eClass, "text-truncate")
		Case False
			eClass = BANanoShared.ListRemoveItem(eClass, "d-inline-block")
			eClass = BANanoShared.ListRemoveItem(eClass, "text-truncate")
	End Select
	VC.SetData(xbindclass, eClass)
End Sub

'line through
Sub setLineThrough(b As Boolean)
	Select Case b
	Case True
		AddClass("text-decoration-line-through")
	Case False
		RemoveClass("text-decoration-line-through")
	End Select
End Sub

'font thin
Sub setFontThin(b As Boolean)
	Select Case b
		Case True
			AddClass("font-weight-thin")
		Case False
			RemoveClass("font-weight-thin")
	End Select
End Sub

'font light
Sub setFontLight(b As Boolean)
	Select Case b
		Case True
			AddClass("font-weight-light")
		Case False
			RemoveClass("font-weight-light")
	End Select
End Sub

'underline
Sub setUnderLine(b As Boolean)
	Select Case b
		Case True
			AddClass("text-decoration-underline")
		Case False
			RemoveClass("text-decoration-underline")
	End Select
End Sub

'overline
Sub setOverline(b As Boolean)
	Select Case b
		Case True
			AddClass("text-decoration-overline")
		Case False
			RemoveClass("text-decoration-overline")
	End Select
End Sub

'bold
Sub setBold(b As Boolean)
	Select Case b
		Case True
			AddClass("font-weight-bold")
		Case False
			RemoveClass("font-weight-bold")
	End Select
End Sub

'update font weight black
Sub setFontWeightBlack(b As Boolean)
	Select Case b
		Case True
			AddClass("font-weight-black")
		Case False
			RemoveClass("font-weight-black")
	End Select
End Sub

'update italic for an element
Sub setItalic(b As Boolean)
	Select Case b
		Case True
			AddClass("font-italic")
		Case False
			RemoveClass("font-italic")
	End Select
End Sub

Sub ToggleClass(sClass As String)
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	Dim idxpos As Int = items.IndexOf(sClass)
	If idxpos = -1 Then
		items = BANanoShared.ListAddDistinctItem(items, sClass)
	Else
		items = BANanoShared.ListRemoveItem(items, sClass)
	End If
	VC.SetData(xbindclass, items)
End Sub

'update classes at runtime
Sub AddClass(sClass As String)
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	items = BANanoShared.ListAddDistinctItem(items, sClass)
	VC.SetData(xbindclass, items)
End Sub

Sub AddStyle(prop As String, value As String)
	prop = BANanoShared.CamelCase(prop)
	Dim xbindstyle As String = $"${mName}style"$
	Dim items As Map = VC.GetData(xbindstyle)
	items.Put(prop, value)
	VC.SetData(xbindstyle, items)
End Sub

Sub RemoveStyle(prop As String)
	prop = BANanoShared.CamelCase(prop)
	Dim xbindstyle As String = $"${mName}style"$
	Dim items As Map = VC.GetData(xbindstyle)
	items.Remove(prop)
	VC.SetData(xbindstyle, items)
End Sub

Sub setLabel(s As String)
	Dim xLabel As String = $"${mName}label"$
	VC.SetData(xLabel, S)
End Sub

Sub setElevation(iElev As Int)
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.Elevation
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.add($"elevation-${iElev}"$)
	VC.SetData(xbindclass, items)
End Sub

Sub setRounded(sround As String)
	Dim xbindclass As String = $"${mName}class"$
	Dim items As List = VC.GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.Rounded
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.add(sround)
	VC.SetData(xbindclass, items)
End Sub

'update size of avatar
Sub setSize(s As String)
	VC.SetData($"${mName}size"$, S)
End Sub

'set formmated date of field using vmodel
Sub setFormatDate
	Dim sDate As String = VC.GetData(sVModel)
	If sDate = "" Then Return
	Dim xDate As String = VC.NiceDate(sDate)
	Dim res As String = $"${sVModel}fmt"$
	VC.SetData(res, xDate)
End Sub

Sub setBadge(items As Int)
	Dim sKey As String = $"${mName}value"$
	VC.SetData(sKey, items)
End Sub

Sub IncrementBadge
	Dim sKey As String = $"${mName}value"$
	Increment(sKey, 1)
End Sub

Sub DecrementBadge
	Dim sKey As String = $"${mName}value"$
	Decrement(sKey, 1)
End Sub

Sub setBadgeColor(color As String)
	Dim skey As String = $"${mName}badgecolor"$
	VC.SetData(skey, color)
End Sub

Sub setBadgeIconColor(color As String)
	Dim skey As String = $"${mName}iconcolor"$
	VC.SetData(skey, color)
End Sub

'update progress linear / circle using the vmodel
Sub SetPercentage(currentx As Long, totalx As Long)
	Dim pd As Long = BANanoShared.ProgressDone(currentx, totalx)
	VC.SetData(sVModel, pd)
End Sub

Sub getValue() As Object
	Dim obj As Object = VC.GetData(sVModel)
	Return obj
End Sub

Sub getBadgeColor() As String
	Dim skey As String = $"${mName}badgecolor"$
	Dim s As String = VC.GetData(skey)
	Return s
End Sub

Sub getBadgeIconColor() As String
	Dim skey As String = $"${mName}iconcolor"$
	Dim s As String = VC.GetData(skey)
	Return s
End Sub

Sub getBadge() As Int
	Dim sKey As String = $"${mName}value"$
	Dim i As Int = VC.GetData(sKey)
	Return i
End Sub

Sub getSize() As Int
	Dim i As Int = VC.GetData($"${mName}size"$)
	Return i
End Sub

'update field visibility
Sub getVisibile As Boolean
	Dim fKey As String = $"${mName}show"$
	Dim s As String = VC.GetData(fKey)
	Return s
End Sub

'update read only
Sub getReadOnly() As Boolean
	Dim fKey As String = $"${mName}readonly"$
	Dim b As Boolean = VC.GetData(fKey)
	Return b
End Sub

'update required
Sub getRequired As Boolean
	Dim fKey As String = $"${mName}required"$
	Dim b As Boolean = VC.GetData(fKey)
	Return b
End Sub

'update disabled
Sub getDisabled As Boolean
	Dim fKey As String = $"${mName}disabled"$
	Dim b As Boolean = VC.GetData(fKey)
	Return b
End Sub

'update loading
Sub getLoading As Boolean
	Dim fKey As String = $"${mName}loading"$
	Dim b As Boolean = VC.GetData(fKey)
	Return b
End Sub

'updating caption
Sub getCaption As String
	Dim fKey As String = $"${mName}caption"$
	Dim s As String = VC.GetData(fKey)
	Return s
End Sub

'update items using list of objects
Sub getItems As List
	Dim fKey As String = $"${mName}items"$
	Dim lst As List = VC.GetData(fKey)
	Return lst
End Sub

'update an image source
Sub getImage As String
	Dim bsrc As String = VC.GetData($"${mName}src"$)
	Dim s As String = VC.GetData(bsrc)
	Return s
End Sub

'update the lazy image src
Sub getLazyImage As String
	Dim bsrc As String = VC.GetData($"${mName}lazysrc"$)
	Dim s As String = VC.GetData(bsrc)
	Return s
End Sub

'toggle the password eyes
Sub getTogglePassword As Boolean
	Dim sShowEyes As String = $"${mName}eyes"$
	Dim s As String = VC.GetData(sShowEyes)
	Return s
End Sub

Sub getLabel As String
	Dim xLabel As String = $"${mName}label"$
	Dim s As String = VC.GetData(xLabel)
	Return s
End Sub

'update progress linear / circle using the vmodel
Sub SetProgress(currentx As Long, totalx As Long)
	Dim pd As Long = BANanoShared.ProgressDone(currentx, totalx)
	VC.SetData(sVModel, pd)
End Sub

'clear the vmodel
Sub setValue(nValue As Object)
	VC.SetData(sVModel, nValue)
End Sub

Sub setIndeterminate(b As Boolean)
	Dim xIndeterminate As String = $"${mName}indeterminate"$
	VC.SetData(xIndeterminate, b)
End Sub

Sub setCaptionVisible(b As Boolean)
	Dim xIndeterminate As String = $"${mName}captionshow"$
	VC.SetData(xIndeterminate, b)
End Sub


'increment state
private Sub Increment(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = VC.GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'increment by 1
	cc = cc + addVal
	'save back to state
	VC.SetData(prop, cc)
End Sub

'decremenent state
private Sub Decrement(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = VC.GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'decrement by 1
	cc = cc - addVal
	'save back to state
	VC.SetData(prop, cc)
End Sub


'add a map with colors you want
'the key should Vuetify.COLOR_? constants
'the value can be any value you want
Sub AddColors(items As Map)
	Dim fKey As String = $"${mName}items"$
	Dim itemvalue As String = VC.GetData($"${mName}itemvalue"$)
	Dim itemtext As String = VC.GetData($"${mName}itemtext"$)
	
	'get existing items
	Dim oitems As List = VC.GetData(fKey)
	For Each ik As String In items.keys
		Dim iv As String = items.Get(ik)
		Dim ni As Map = CreateMap()
		ni.Put(itemvalue, ik)
		ni.Put(itemtext, iv)
		oitems.Add(ni)
	Next
	VC.SetData(fKey, oitems)
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