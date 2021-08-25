B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: False, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: False, Description: Rounded
#DesignerProperty: Key: Filled, DisplayName: Filled, FieldType: Boolean, DefaultValue: False, Description: Filled
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: HideDetails, DisplayName: HideDetails, FieldType: Boolean, DefaultValue: False, Description: HideDetails
#DesignerProperty: Key: Clearable, DisplayName: Clearable, FieldType: Boolean, DefaultValue: False, Description: Clearable
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: False, Description: Shaped
#DesignerProperty: Key: ArrayOperations, DisplayName: ArrayOperations, FieldType: String, DefaultValue: , Description: ArrayOperations
#DesignerProperty: Key: Autofocus, DisplayName: Autofocus, FieldType: Boolean, DefaultValue: False, Description: Autofocus
#DesignerProperty: Key: ChildrenClass, DisplayName: ChildrenClass, FieldType: String, DefaultValue: , Description: ChildrenClass
#DesignerProperty: Key: DeleteReadOnly, DisplayName: DeleteReadOnly, FieldType: Boolean, DefaultValue: False, Description: DeleteReadOnly
#DesignerProperty: Key: DisableAll, DisplayName: DisableAll, FieldType: Boolean, DefaultValue: False, Description: DisableAll
#DesignerProperty: Key: DisableSorting, DisplayName: DisableSorting, FieldType: Boolean, DefaultValue: False, Description: DisableSorting
#DesignerProperty: Key: EditMode, DisplayName: EditMode, FieldType: String, DefaultValue: , Description: EditMode
#DesignerProperty: Key: FilesAsDataUrl, DisplayName: FilesAsDataUrl, FieldType: Boolean, DefaultValue: False, Description: FilesAsDataUrl
#DesignerProperty: Key: HideReadOnly, DisplayName: HideReadOnly, FieldType: Boolean, DefaultValue: False, Description: HideReadOnly
#DesignerProperty: Key: HideTooltips, DisplayName: HideTooltips, FieldType: Boolean, DefaultValue: False, Description: HideTooltips
#DesignerProperty: Key: IdPrefix, DisplayName: IdPrefix, FieldType: String, DefaultValue: , Description: IdPrefix
#DesignerProperty: Key: ObjectContainerClass, DisplayName: ObjectContainerClass, FieldType: String, DefaultValue: , Description: ObjectContainerClass
#DesignerProperty: Key: RemoveAdditionalProperties, DisplayName: RemoveAdditionalProperties, FieldType: Boolean, DefaultValue: False, Description: RemoveAdditionalProperties
#DesignerProperty: Key: RootDisplay, DisplayName: RootDisplay, FieldType: String, DefaultValue: , Description: RootDisplay
#DesignerProperty: Key: SectionsClass, DisplayName: SectionsClass, FieldType: String, DefaultValue: , Description: SectionsClass

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sArrayItemCardProps As String
	Private sArrayItemColProps As String
	Private sArrayItemsTitlesClasses As String
	Private sArrayOperations As String
	Private bAutofocus As Boolean
	Private sCheckboxProps As String
	Private sChildrenClass As String
	Private sColorPickerProps As String
	Private sComboboxProps As String
	Private sContext As String
	Private sDatePickerProps As String
	Private bDeleteReadOnly As Boolean
	Private sDialogCardProps As String
	Private sDialogProps As String
	Private bDisableAll As Boolean
	Private bDisableSorting As Boolean
	Private sEditMode As String
	Private sExpansionPanepProps As String
	Private sFieldColProps As String
	Private sFieldProps As String
	Private sFileInputProps As String
	Private bFilesAsDataUrl As Boolean
	Private bHideReadOnly As Boolean
	Private bHideTooltips As Boolean
	Private sHttpOptions As String
	Private sIdPrefix As String
	Private sNumberProps As String
	Private sObjectContainerClass As String
	Private sRadioGroupProps As String
	Private sRadioItemProps As String
	Private sReadOnlyFieldProps As String
	Private bRemoveAdditionalProperties As Boolean
	Private sRootDisplay As String
	Private sRules As String
	Private sSectionsClass As String
	Private sSectionsTitlesClasses As String
	Private sSelectProps As String
	Private sSliderProps As String
	Private sStepperProps As String
	Private sSwitchProps As String
	Private sTabsProps As String
	Private sTextFieldProps As String
	Private sTextareaProps As String
	Private sTimePickerProps As String
	Private sTooltipProps As String
	Private sVerticalStepperProps As String
	Private sexpansionPanelsProps As String
	'
	Public sectionsTitlesClasses As List
	Public FieldProps As Map
	Public ArrayItemsTitlesClasses As List
	Public fieldColProps As Map
	Public readOnlyFieldProps As Map
	Public textFieldProps As Map
	Public textareaProps As Map
	Public numberProps As Map
	Public sliderProps As Map
	Public checkboxProps As Map
	Public switchProps As Map
	Public comboboxProps As Map
	Public selectProps As Map
	Public FileInputProps As Map
	Public radioGroupProps As Map
	Public radioItemProps As Map
	Public tabsProps As Map
	Public expansionPanelsProps As Map
	Public dialogProps As Map
	Public dialogCardProps As Map
	Public colorPickerProps As Map
	Public timePickerProps As Map
	Public datePickerProps As Map
	Public arrayItemCardProps As Map
	Public arrayItemColProps As Map
	Public stepperProps As Map
	Public verticalStepperProps As Map
	Public tooltipProps As Map
	Public arrayOperations As List
	Public httpOptions As Map
	'
	Private model As Map
	Private schema As Map
	Private properties As Map
	Public options As Map
	Public modelname As String
	Public schemaname As String
	Public optionsname As String
	Private bOutlined As Boolean
	Private bRounded As Boolean
	Private bFilled As Boolean
	Private bDense As Boolean
	Private bHideDetails As Boolean
	Private bClearable As Boolean
	Private bShaped As Boolean
	Public required As List
	Public TableName As String
	Public PrimaryKey As String
	Public AutoIncrement As String
	'
	Public Doubles As List
	Public Strings As List
	Public Integers As List
	Public Blobs As List
	Public TinyInts As List
	Private VC As VueComponent		'ignore
End Sub

'initialize the custom view
Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	BANano.DependsOnAsset("vjsf.js")
	BANano.DependsOnAsset("vjsf.css")

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
	sSectionsTitlesClasses = $"${mName}SectionsTitlesClasses"$
	sectionsTitlesClasses.Initialize 
	sFieldProps = $"${mName}FieldProps"$
	FieldProps.initialize 
	sArrayItemsTitlesClasses = $"${mName}arrayItemsTitlesClasses"$
	ArrayItemsTitlesClasses.Initialize
	fieldColProps.Initialize 
	sFieldColProps = $"${mName}fieldColProps"$
	readOnlyFieldProps.Initialize 
	sReadOnlyFieldProps = $"${mName}readOnlyFieldProps"$
	textFieldProps.Initialize 
	sTextFieldProps = $"${mName}textFieldProps"$
	textareaProps.Initialize 
	sTextareaProps = $"${mName}textareaProps"$
	numberProps.Initialize 
	sNumberProps = $"${mName}numberProps"$
	sliderProps.Initialize 
	sSliderProps = $"${mName}sliderProps"$
	checkboxProps.Initialize 
	sCheckboxProps = $"${mName}checkboxProps"$
	switchProps.Initialize 
	sSwitchProps = $"${mName}switchProps"$
	comboboxProps.Initialize 
	sComboboxProps = $"${mName}comboboxProps"$
	selectProps.Initialize 
	sSelectProps = $"${mName}selectProps"$
	FileInputProps.initialize
	sFileInputProps = $"${mName}fileInputProps"$
	radioGroupProps.Initialize
	sRadioGroupProps = $"${mName}radioGroupProps"$
	radioItemProps.Initialize
	sRadioItemProps = $"${mName}radioItemProps"$ 
	tabsProps.Initialize 
	sTabsProps = $"${mName}tabsProps"$
	expansionPanelsProps.Initialize 
	sexpansionPanelsProps = $"${mName}expansionPanelsProps"$
	dialogProps.Initialize 
	sDialogProps = $"${mName}dialogProps"$
	dialogCardProps.Initialize 
	sDialogCardProps = $"${mName}dialogCardProps"$
	colorPickerProps.Initialize 
	sColorPickerProps = $"${mName}colorPickerProps"$
	timePickerProps.Initialize 
	sTimePickerProps = $"${mName}timePickerProps"$
	datePickerProps.Initialize 
	sDatePickerProps = $"${mName}datePickerProps"$
	arrayItemCardProps.Initialize 
	sArrayItemCardProps = $"${mName}arrayItemCardProps"$
	arrayItemColProps.Initialize 
	sArrayItemColProps = $"${mName}arrayItemColProps"$
	stepperProps.Initialize 
	sStepperProps = $"${mName}stepperProps"$
	verticalStepperProps.Initialize 
	sVerticalStepperProps = $"${mName}verticalStepperProps"$
	tooltipProps.Initialize 
	sTooltipProps = $"${mName}tooltipProps"$
	arrayOperations.Initialize 
	sArrayOperations = $"${mName}arrayOperations"$
	httpOptions.Initialize 
	sHttpOptions = $"${mName}httpOptions"$
	'
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize  
	required.Initialize 
	'
	modelname = $"${mName}model"$
	schemaname = $"${mName}schema"$
	optionsname = $"${mName}options"$
	'
	TableName = ""
	PrimaryKey = ""
	AutoIncrement = ""
End Sub

'designer creation
Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bAutofocus = Props.GetDefault("Autofocus", False)
		bAutofocus = BANanoShared.parseBool(bAutofocus)
		sChildrenClass = Props.GetDefault("ChildrenClass", "")
		bDeleteReadOnly = Props.GetDefault("DeleteReadOnly", False)
		bDeleteReadOnly = BANanoShared.parseBool(bDeleteReadOnly)
		bDisableAll = Props.GetDefault("DisableAll", False)
		bDisableAll = BANanoShared.parseBool(bDisableAll)
		bDisableSorting = Props.GetDefault("DisableSorting", False)
		bDisableSorting = BANanoShared.parseBool(bDisableSorting)
		sEditMode = Props.GetDefault("EditMode", "")
		bFilesAsDataUrl = Props.GetDefault("FilesAsDataUrl", False)
		bFilesAsDataUrl = BANanoShared.parseBool(bFilesAsDataUrl)
		bHideReadOnly = Props.GetDefault("HideReadOnly", False)
		bHideReadOnly = BANanoShared.parseBool(bHideReadOnly)
		bHideTooltips = Props.GetDefault("HideTooltips", False)
		bHideTooltips = BANanoShared.parseBool(bHideTooltips)
		sIdPrefix = Props.GetDefault("IdPrefix", "")
		sObjectContainerClass = Props.GetDefault("ObjectContainerClass", "")
		bRemoveAdditionalProperties = Props.GetDefault("RemoveAdditionalProperties", False)
		bRemoveAdditionalProperties = BANanoShared.parseBool(bRemoveAdditionalProperties)
		sRootDisplay = Props.GetDefault("RootDisplay", "")
		sSectionsClass = Props.GetDefault("SectionsClass", "")
		bOutlined = Props.GetDefault("Outlined", False)
		bOutlined = BANanoShared.parseBool(bOutlined)
		bRounded = Props.GetDefault("Rounded", False)
		bRounded = BANanoShared.parseBool(bRounded)
		bFilled = Props.GetDefault("Filled", False)
		bFilled = BANanoShared.parseBool(bFilled)
		bDense = Props.GetDefault("Dense", False)
		bDense = BANanoShared.parseBool(bDense)
		bHideDetails = Props.GetDefault("HideDetails", False)
		bHideDetails = BANanoShared.parseBool(bHideDetails)
		bClearable = Props.getdefault("Clearable", False)
		bClearable = BANanoShared.parseBool(bClearable)
		bShaped = Props.GetDefault("Shaped", False)
		bShaped = BANanoShared.parseBool(bShaped)
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-jsf id="${mName}" ref="${mName}"></v-jsf>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-jsf" 
	VElement.AddAttr(":array-item-card-props", sArrayItemCardProps)
	VElement.AddAttr(":array-item-col-props", sArrayItemColProps)
	VElement.AddAttr(":array-items-titles-classes", sArrayItemsTitlesClasses)
	VElement.AddAttr(":array-operations", sArrayOperations)
	VElement.AddAttr(":autofocus", bAutofocus)
	VElement.AddAttr(":checkbox-props", sCheckboxProps)
	VElement.AddAttr("children-class", sChildrenClass)
	VElement.AddAttr(":color-picker-props", sColorPickerProps)
	VElement.AddAttr(":combobox-props", sComboboxProps)
	VElement.AddAttr(":context", sContext)
	VElement.AddAttr(":date-picker-props", sDatePickerProps)
	VElement.AddAttr(":delete-read-only", bDeleteReadOnly)
	VElement.AddAttr(":dialog-card-props", sDialogCardProps)
	VElement.AddAttr(":dialog-props", sDialogProps)
	VElement.AddAttr(":disable-all", bDisableAll)
	VElement.AddAttr(":disable-sorting", bDisableSorting)
	VElement.AddAttr("edit-mode", sEditMode)
	VElement.AddAttr(":expansion-panep-props", sExpansionPanepProps)
	VElement.AddAttr(":field-col-props", sFieldColProps)
	VElement.AddAttr(":field-props", sFieldProps)
	VElement.AddAttr(":file-input-props", sFileInputProps)
	VElement.AddAttr(":files-as-data-url", bFilesAsDataUrl)
	VElement.AddAttr(":hide-read-only", bHideReadOnly)
	VElement.AddAttr(":hide-tooltips", bHideTooltips)
	VElement.AddAttr(":http-options", sHttpOptions)
	VElement.AddAttr("id-prefix", sIdPrefix)
	VElement.AddAttr(":number-props", sNumberProps)
	VElement.AddAttr("object-container-class", sObjectContainerClass)
	VElement.AddAttr(":radio-group-props", sRadioGroupProps)
	VElement.AddAttr(":radio-item-props", sRadioItemProps)
	VElement.AddAttr(":read-only-field-props", sReadOnlyFieldProps)
	VElement.AddAttr(":remove-additional-properties", bRemoveAdditionalProperties)
	VElement.AddAttr("root-display", sRootDisplay)
	VElement.AddAttr(":rules", sRules)
	VElement.AddAttr("sections-class", sSectionsClass)
	VElement.AddAttr(":sections-titles-classes", sSectionsTitlesClasses)
	VElement.AddAttr(":select-props", sSelectProps)
	VElement.AddAttr(":slider-props", sSliderProps)
	VElement.AddAttr(":stepper-props", sStepperProps)
	VElement.AddAttr(":switch-props", sSwitchProps)
	VElement.AddAttr(":tabs-props", sTabsProps)
	VElement.AddAttr(":text-field-props", sTextFieldProps)
	VElement.AddAttr(":textarea-props", sTextareaProps)
	VElement.AddAttr(":time-picker-props", sTimePickerProps)
	VElement.AddAttr(":tooltip-props", sTooltipProps)
	VElement.AddAttr(":vertical-stepper-props", sVerticalStepperProps)
	'
	VElement.VModel = modelname
	VElement.AddAttr(":schema", schemaname)
	VElement.AddAttr(":options", optionsname)
	
	VElement.SetData(schemaname, schema)
	VElement.SetData(optionsname, options)
	VElement.SetData(sSectionsTitlesClasses, sectionsTitlesClasses)
	VElement.SetData(sFieldProps, FieldProps)
	VElement.SetData(sArrayItemsTitlesClasses, ArrayItemsTitlesClasses)
	VElement.SetData(sFieldColProps, fieldColProps)
	VElement.SetData(sReadOnlyFieldProps, readOnlyFieldProps)
	VElement.SetData(sTextFieldProps, textFieldProps)
	VElement.SetData(sTextareaProps, textareaProps)
	VElement.SetData(sNumberProps, numberProps)
	VElement.SetData(sSliderProps, sliderProps)
	VElement.SetData(sCheckboxProps, checkboxProps)
	VElement.SetData(sSwitchProps, switchProps)
	VElement.SetData(sComboboxProps, comboboxProps)
	VElement.SetData(sSelectProps, selectProps)
	VElement.SetData(sFileInputProps, FileInputProps)
	VElement.SetData(sRadioGroupProps, radioGroupProps)
	VElement.SetData(sRadioItemProps, radioItemProps)
	VElement.SetData(sTabsProps, tabsProps)
	VElement.SetData(sexpansionPanelsProps, expansionPanelsProps)
	VElement.SetData(sDialogProps, dialogProps)
	VElement.SetData(sDialogCardProps, dialogCardProps)
	VElement.SetData(sColorPickerProps, colorPickerProps)
	VElement.SetData(sTimePickerProps, timePickerProps)
	VElement.SetData(sDatePickerProps, datePickerProps)
	VElement.SetData(sArrayItemCardProps, arrayItemCardProps)
	VElement.SetData(sArrayItemColProps, arrayItemColProps)
	VElement.SetData(sStepperProps, stepperProps)
	VElement.SetData(sVerticalStepperProps, verticalStepperProps)
	VElement.SetData(sTooltipProps, tooltipProps)
	VElement.SetData(sArrayOperations, arrayOperations)
	VElement.SetData(sHttpOptions, httpOptions)
	VElement.BindAllEvents
End Sub

'add an attribute at design time
Sub AddAttr(p As String, v As Object) 
	VElement.SetAttr(p, v) 
End Sub

'remove attribute at design time
Sub RemoveAttr(p As String) 
	VElement.RemoveAttr(p) 
End Sub

'get the id of the element
Sub getID As String 
	Return mName 
End Sub

'get the element id name with #
Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'get the structure of the form
Sub GetStructure As Map
	Dim structure As Map = CreateMap()
	structure.Put("schema", schema)
	structure.Put("model", model)
	structure.Put("properties", properties)
	structure.Put("required", required)
	Return structure
End Sub

'refresh that content of the builder
Sub Refresh(C As VueComponent)
	schema.Put("type", "object")
	schema.Put("properties", properties)
	schema.Put("required", required)
	
	c.SetData(modelname, model)
	c.SetData(schemaname, schema)
	c.SetData(optionsname, options)
	
	'turn off global setting
	textareaProps.Put("filled", False)
	'
	c.SetData(sSectionsTitlesClasses, sectionsTitlesClasses)
	c.SetData(sFieldProps, FieldProps)
	C.SetData(sArrayItemsTitlesClasses, ArrayItemsTitlesClasses)
	C.SetData(sFieldColProps, fieldColProps)
	C.SetData(sReadOnlyFieldProps, readOnlyFieldProps)
	C.SetData(sTextFieldProps, textFieldProps)
	C.SetData(sTextareaProps, textareaProps)
	C.SetData(sNumberProps, numberProps)
	C.SetData(sSliderProps, sliderProps)
	C.SetData(sCheckboxProps, checkboxProps)
	C.SetData(sSwitchProps, switchProps)
	C.SetData(sComboboxProps, comboboxProps)
	C.SetData(sSelectProps, selectProps)
	C.SetData(sFileInputProps, FileInputProps)
	C.SetData(sRadioGroupProps, radioGroupProps)
	C.SetData(sRadioItemProps, radioItemProps)
	C.SetData(sTabsProps, tabsProps)
	C.SetData(sexpansionPanelsProps, expansionPanelsProps)
	C.SetData(sDialogProps, dialogProps)
	C.SetData(sDialogCardProps, dialogCardProps)
	C.SetData(sColorPickerProps, colorPickerProps)
	C.SetData(sTimePickerProps, timePickerProps)
	C.SetData(sDatePickerProps, datePickerProps)
	C.SetData(sArrayItemCardProps, arrayItemCardProps)
	C.SetData(sArrayItemColProps, arrayItemColProps)
	C.SetData(sStepperProps, stepperProps)
	C.SetData(sVerticalStepperProps, verticalStepperProps)
	C.SetData(sTooltipProps, tooltipProps)
	C.SetData(sArrayOperations, arrayOperations)
	C.SetData(sHttpOptions, httpOptions)
End Sub

'clear the contents of the builder
Sub Clear
	sectionsTitlesClasses.Initialize 
	FieldProps.initialize 
	ArrayItemsTitlesClasses.Initialize
	fieldColProps.Initialize 
	readOnlyFieldProps.Initialize 
	textFieldProps.Initialize 
	textareaProps.Initialize 
	numberProps.Initialize 
	sliderProps.Initialize 
	checkboxProps.Initialize 
	switchProps.Initialize 
	comboboxProps.Initialize 
	selectProps.Initialize 
	FileInputProps.initialize
	radioGroupProps.Initialize
	radioItemProps.Initialize
	tabsProps.Initialize 
	expansionPanelsProps.Initialize 
	dialogProps.Initialize 
	dialogCardProps.Initialize 
	colorPickerProps.Initialize 
	timePickerProps.Initialize 
	datePickerProps.Initialize 
	arrayItemCardProps.Initialize 
	arrayItemColProps.Initialize 
	stepperProps.Initialize 
	verticalStepperProps.Initialize 
	tooltipProps.Initialize 
	arrayOperations.Initialize 
	httpOptions.Initialize 
	'
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize  
	required.Initialize 
	'
	Doubles.Initialize 
	Strings.Initialize 
	Integers.Initialize 
	Blobs.Initialize 
	TinyInts.Initialize 
End Sub

'add a text field
Sub AddTextField(vModel As String, sLabel As String, defValue As String, iFldLen As Int) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	
	If iFldLen > 0 Then
		xoptions.Put("maxlength", iFldLen)
		xoptions.Put("counter", iFldLen)
	End If
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add file selector for images
Sub AddFileImages(vModel As String, sLabel As String, bMulti As Boolean)
	AddFile(vModel, sLabel, "image/*", bMulti)
End Sub

'add a file
Sub AddFile(vModel As String, sLabel As String, mediaType As String, bMulti As Boolean) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("type", "string")
	If bMulti Then 
		fld.Put("type", "array")
	End If
	
	fld.Put("title", sLabel)
	fld.Put("x-display", "file")
	fld.Put("writeOnly", True)
	If bMulti Then
		BANanoShared.PutRecursive(fld, "items.type", "string")
		BANanoShared.PutRecursive(fld, "items.contentMediaType", mediaType)
	Else
		If mediaType <> "" Then
			fld.Put("contentMediaType", mediaType)
		End If
	End If
	'fld.Put("x-class", "mb-3")
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	BANanoShared.PutRecursive(fld, "x-options.filesAsDataUrl", bFilesAsDataUrl)
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, Null)
	properties.Put(vModel, fld)
End Sub

'add an auto complete
'Sub AddAutoComplete1(vModel As String, sLabel As String, defValue As String, itemsSource As String, itemKey As String, itemValue As String, bReturnObject As Boolean) 
'	vModel = vModel.tolowercase
'	
'	Dim fld As Map = CreateMap()
'	Dim xoptions As Map = CreateMap()
'	itemsSource = itemsSource.ToLowerCase
'	itemKey = itemKey.tolowercase
'	itemValue = itemValue.tolowercase
'	If itemsSource.Contains("context") = False Then
'		itemsSource = $"context.${itemsSource}"$
'	End If
'	
'	fld.Put("default", defValue)
'	fld.Put("type", "string")
'	fld.Put("title", sLabel)
'	'fld.Put("x-class", "mb-3")
'	fld.Put("x-fromData", itemsSource)
'    fld.Put("x-itemKey", itemKey)
'    fld.Put("x-itemTitle", itemValue)
'	fld.Put("x-display", "autocomplete")
'	'
'	xoptions.Put("outlined", bOutlined)
'	xoptions.Put("rounded", bRounded)
'	xoptions.Put("filled", bFilled)
'	xoptions.Put("dense", bDense)
'	xoptions.Put("hideDetails", bHideDetails)
'	xoptions.Put("clearable", bClearable)
'	xoptions.Put("shaped", bShaped)
'	'
'	fld.Put("x-props", xoptions)	
'	'
'	Dim items As List
'	items.Initialize 
'	'
'	BANanoShared.PutRecursive(options, itemsSource, items)
'	
'	model.Put(vModel, defValue)
'	properties.Put(vModel, fld)
'End Sub

'add radio group
'Sub AddRadio1(vModel As String, sLabel As String, defValue As String, itemsSource As String, itemKey As String, itemValue As String, sDescription As String) 
'	vModel = vModel.tolowercase
'	
'	Dim fld As Map = CreateMap()
'	Dim xoptions As Map = CreateMap()
'	itemsSource = itemsSource.ToLowerCase
'	itemKey = itemKey.tolowercase
'	itemValue = itemValue.tolowercase
'	If itemsSource.Contains("context") = False Then
'		itemsSource = $"context.${itemsSource}"$
'	End If
'	
'	fld.Put("default", defValue)
'	fld.Put("type", "string")
'	fld.Put("title", sLabel)
'	fld.Put("description", sDescription)
'	'fld.Put("x-class", "mb-3")
'	fld.Put("x-fromData", itemsSource)
'    fld.Put("x-itemKey", itemKey)
'    fld.Put("x-itemTitle", itemValue)
'	fld.Put("x-display", "radio")
'	'
'	xoptions.Put("dense", bDense)
'	xoptions.Put("hide-details", bHideDetails)
'	'
'	fld.Put("x-props", xoptions)	
'	'
'	Dim items As List
'	items.Initialize 
'	'
'	BANanoShared.PutRecursive(options, itemsSource, items)
'	
'	model.Put(vModel, defValue)
'	properties.Put(vModel, fld)
'End Sub

''update items of a combo / select / auto-complete
'Sub UpdateItems(itemsSource As String, items As List)
'	itemsSource = itemsSource.ToLowerCase
'	If itemsSource.Contains("context") = False Then
'		itemsSource = $"context.${itemsSource}"$
'	End If
'	BANanoShared.PutRecursive(options, itemsSource, items)
'End Sub

'add a switch multi
Sub AddSwitchMulti(vModel As String, sLabel As String, sColor As String, bInset As Boolean, defValue As List)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	'
	fld.Put("default", defValue)
	fld.Put("type", "array")
	fld.Put("title", sLabel)
	fld.Put("x-display", "switch")
	'
	Dim items As List
	items.Initialize 
	
	BANanoShared.PutRecursive(fld, "items.type", "string")
	BANanoShared.PutRecursive(fld, "items.oneOf", items)
	
	xoptions.Put("dense", bDense)
	xoptions.Put("inset", bInset)
	xoptions.Put("color", sColor)
	xoptions.Put("hideDetails", bHideDetails)
	'
	fld.Put("x-props", xoptions)	
	'
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub
'

'add an auto complete
Sub AddAutoComplete(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	fld.Put("x-display", "autocomplete")
	Dim items As List
	items.Initialize
	BANanoShared.PutRecursive(fld, "oneOf", items)
	'
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	'
	Dim items As List
	items.Initialize 
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add an auto complete
Sub AddRadio(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	fld.Put("x-display", "radio")
	Dim items As List
	items.Initialize
	BANanoShared.PutRecursive(fld, "oneOf", items)
	'
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	'
	fld.Put("x-props", xoptions)	
	'
	Dim items As List
	items.Initialize 
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub



'add a checkbox multi
Sub AddCheckBoxMulti(vModel As String, sLabel As String, sColor As String, defValue As List)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	'
	fld.Put("default", defValue)
	fld.Put("type", "array")
	fld.Put("title", sLabel)
	fld.Put("x-display", "checkbox")
	'
	Dim items As List
	items.Initialize 
	
	BANanoShared.PutRecursive(fld, "items.type", "string")
	BANanoShared.PutRecursive(fld, "items.oneOf", items)
	
	xoptions.Put("dense", bDense)
	xoptions.Put("color", sColor)
	xoptions.Put("hideDetails", bHideDetails)
	'
	fld.Put("x-props", xoptions)	
	'
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub



'add item
Sub AddItemMulti(vmodel As String, key As String, value As String)
	vmodel = vmodel.ToLowerCase
	Dim skey As String = $"${vmodel}.items.oneOf"$
	'get existing items
	Dim items As List = BANanoShared.GetRecursive(properties, skey)
	'
	Dim mitem As Map = CreateMap()
	mitem.Put("const", key)
	mitem.Put("title", value)
	items.Add(mitem)
	'
	BANanoShared.PutRecursive(properties, skey, items)
End Sub

Sub AddItem(vmodel As String, key As String, value As String)
	vmodel = vmodel.ToLowerCase
	Dim skey As String = $"${vmodel}.oneOf"$
	'get existing items
	Dim items As List = BANanoShared.GetRecursive(properties, skey)
	'
	Dim mitem As Map = CreateMap()
	mitem.Put("const", key)
	mitem.Put("title", value)
	items.Add(mitem)
	'
	BANanoShared.PutRecursive(properties, skey, items)
End Sub

Sub HideItem(vmodel As String)
	vmodel = vmodel.ToLowerCase
	Dim skey As String = $"${vmodel}.x-display"$
	BANanoShared.PutRecursive(properties, skey, "hidden")
End Sub


'add a combo box
'Sub AddComboBox1(vModel As String, sLabel As String, defValue As String, itemsSource As String, itemKey As String, itemValue As String, bReturnObject As Boolean) 
'	vModel = vModel.tolowercase
'	
'	Dim fld As Map = CreateMap()
'	Dim xoptions As Map = CreateMap()
'	itemsSource = itemsSource.ToLowerCase
'	itemKey = itemKey.tolowercase
'	itemValue = itemValue.tolowercase
'	If itemsSource.Contains("context") = False Then
'		itemsSource = $"context.${itemsSource}"$
'	End If
'	
'	fld.Put("default", defValue)
'	fld.Put("type", "string")
'	fld.Put("title", sLabel)
'	'fld.Put("x-class", "mb-3")
'	fld.Put("x-fromData", itemsSource)
'    fld.Put("x-itemKey", itemKey)
'    fld.Put("x-itemTitle", itemValue)
'	fld.Put("x-display", "combobox")
'	'
'	xoptions.Put("outlined", bOutlined)
'	xoptions.Put("rounded", bRounded)
'	xoptions.Put("filled", bFilled)
'	xoptions.Put("dense", bDense)
'	xoptions.Put("hideDetails", bHideDetails)
'	xoptions.Put("clearable", bClearable)
'	xoptions.Put("shaped", bShaped)
'	'
'	fld.Put("x-props", xoptions)
'	'
'	Dim items As List
'	items.Initialize 
'	'
'	BANanoShared.PutRecursive(options, itemsSource, items)	
'	'
'	model.Put(vModel, defValue)
'	properties.Put(vModel, fld)
'End Sub

'add an auto complete
Sub AddComboBox(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	fld.Put("x-display", "combobox")
	Dim items As List
	items.Initialize
	BANanoShared.PutRecursive(fld, "oneOf", items)
	'
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	'
	Dim items As List
	items.Initialize 
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a select
'Sub AddSelect1(vModel As String, sLabel As String, defValue As String, itemsSource As String, itemKey As String, itemValue As String, bReturnObject As Boolean) 
'	vModel = vModel.tolowercase
'	
'	Dim fld As Map = CreateMap()
'	Dim xoptions As Map = CreateMap()
'	itemsSource = itemsSource.ToLowerCase
'	itemKey = itemKey.tolowercase
'	itemValue = itemValue.tolowercase
'	If itemsSource.Contains("context") = False Then
'		itemsSource = $"context.${itemsSource}"$
'	End If
'	
'	fld.Put("default", defValue)
'	fld.Put("type", "string")
'	fld.Put("title", sLabel)
'	'fld.Put("x-class", "mb-3")
'	fld.Put("x-fromData", itemsSource)
'    fld.Put("x-itemKey", itemKey)
'    fld.Put("x-itemTitle", itemValue)
'	fld.Put("x-display", "select")
'	'
'	xoptions.Put("outlined", bOutlined)
'	xoptions.Put("rounded", bRounded)
'	xoptions.Put("filled", bFilled)
'	xoptions.Put("dense", bDense)
'	xoptions.Put("hideDetails", bHideDetails)
'	xoptions.Put("clearable", bClearable)
'	xoptions.Put("shaped", bShaped)
'	'
'	fld.Put("x-props", xoptions)
'	'
'	Dim items As List
'	items.Initialize 
'	'
'	BANanoShared.PutRecursive(options, itemsSource, items)	
'	'
'	model.Put(vModel, defValue)
'	properties.Put(vModel, fld)
'End Sub

'add an auto complete
Sub AddSelect(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	fld.Put("x-display", "select")
	Dim items As List
	items.Initialize
	BANanoShared.PutRecursive(fld, "oneOf", items)
	'
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	'
	Dim items As List
	items.Initialize 
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub


'add a multi text field with chips
Sub AddTextFieldMulti(vModel As String, sLabel As String, defValue As List) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "array")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	BANanoShared.PutRecursive(fld, "items.type", "string")
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a multi number field with chips
Sub AddNumberMulti(vModel As String, sLabel As String, defValue As List) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "array")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	BANanoShared.PutRecursive(fld, "items.type", "integer")
	
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a telephone
Sub AddTelephone(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "tel")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a number, set -1 for max or min if not needed
Sub AddNumber(vModel As String, sLabel As String, defValue As String, minValue As Int, maxValue As Int) 
	vModel = vModel.tolowercase
	
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "number")
	fld.Put("title", sLabel)
	If minValue <> -1 Then
		fld.Put("minimum", minValue)
	End If
	If maxValue <> -1 Then
		fld.Put("maximum", maxValue)
	End If
	'fld.Put("x-class", "mb-3")
	
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	'
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a date picker
Sub AddDate(vModel As String, sLabel As String, defValue As String, sPrependIcon As String) 
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("format", "date")
	'fld.Put("x-class", "mb-3")
		
	xoptions.Put("prependIcon", sPrependIcon)
	xoptions.Put("prependInnerIcon", "")
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'set the chips
'Sub SetChips(vmodel As String, bChips As Boolean, bDeletableChips As Boolean)
'	Dim sKey1 As String = $"${vmodel}.x-props.chips"$
'	Dim sKey2 As String = $"${vmodel}.x-props.deletableChips"$
'	'
'	sKey1 = sKey1.ToLowerCase
'	sKey2 = sKey2.ToLowerCase
'	'
'	BANanoShared.PutRecursive(properties, sKey1, bChips)
'	BANanoShared.PutRecursive(properties, sKey2, bDeletableChips)
'End Sub

'add a color picker that uses hex
Sub AddColorPicker(vModel As String, sLabel As String, defValue As String) 
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("format", "hexcolor")
	'fld.Put("x-class", "mb-3")
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a time picker
Sub AddTime(vModel As String, sLabel As String, defValue As String, sPrependIcon As String) 
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("format", "time")
	'fld.Put("x-class", "mb-3")
		
	xoptions.Put("prependIcon", sPrependIcon)
	xoptions.Put("prependInnerIcon", "")
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a date time picker
Sub AddDateTime(vModel As String, sLabel As String, defValue As String, sPrependIcon As String) 
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("format", "date-time")
	'fld.Put("x-class", "mb-3")
		
	xoptions.Put("prepend-icon", sPrependIcon)
	xoptions.Put("prepend-inner-icon", "")
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	
	fld.Put("x-props", xoptions)	
	
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a text area
Sub AddTextArea(vModel As String, sLabel As String, defValue As String, iFldLen As Int)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	'
	fld.Put("default", defValue)
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("x-display", "textarea")
	fld.Put("default", defValue)
	'fld.Put("x-class", "mb-3")
	'
	If iFldLen > 0 Then
		xoptions.Put("maxlength", iFldLen)
		xoptions.Put("counter", iFldLen)
	End If
	xoptions.Put("auto-grow", True)
	If bFilled = False Then
		xoptions.Put("backgroundColor", "transparent")
	End If
	xoptions.Put("outlined", bOutlined)
	xoptions.Put("rounded", bRounded)
	xoptions.Put("filled", bFilled)
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("clearable", bClearable)
	xoptions.Put("shaped", bShaped)
	
	fld.Put("x-props", xoptions)	

	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'add a checkbox
Sub AddCheckBox(vModel As String, sLabel As String, bChecked As Boolean, sColor As String)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	'
	fld.Put("default", bChecked)
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	'fld.Put("x-class", "mb-3")
	'
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("color", sColor)
	
	fld.Put("x-props", xoptions)	

	model.Put(vModel, bChecked)
	properties.Put(vModel, fld)
End Sub

'add a checkbox
Sub AddCheckBox1(vModel As String, sLabel As String, bChecked As Object, sColor As String, oTrueValue As Object, oFalseValue As Object)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	'
	fld.Put("default", bChecked)
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	fld.Put("x-display", "checkbox")
	'fld.Put("x-class", "mb-3")
	'
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("color", sColor)
	xoptions.Put("trueValue", oTrueValue)
	xoptions.Put("falseValue", oFalseValue)
	fld.Put("x-props", xoptions)	

	model.Put(vModel, bChecked)
	properties.Put(vModel, fld)
End Sub

'add a switch
Sub AddSwitch(vModel As String, sLabel As String, bChecked As Boolean, sColor As String, bInset As Boolean)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", bChecked)
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	fld.Put("x-display", "switch")
	'fld.Put("x-class", "mb-3")
	
	xoptions.Put("dense", bDense)
	xoptions.Put("inset", bInset)
	xoptions.Put("color", sColor)
	xoptions.Put("hideDetails", bHideDetails)
	
	fld.Put("x-props", xoptions)	

	model.Put(vModel, bChecked)
	properties.Put(vModel, fld)
End Sub

'add a switch
Sub AddSwitch1(vModel As String, sLabel As String, bChecked As Object, sColor As String, bInset As Boolean, oTrueValue As Object, oFalseValue As Object)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()
	
	fld.Put("default", bChecked)
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	fld.Put("x-display", "switch")
	'fld.Put("x-class", "mb-3")
	
	xoptions.Put("dense", bDense)
	xoptions.Put("inset", bInset)
	xoptions.Put("color", sColor)
	xoptions.Put("hideDetails", bHideDetails)
	xoptions.Put("trueValue", oTrueValue)
	xoptions.Put("falseValue", oFalseValue)
	fld.Put("x-props", xoptions)	

	model.Put(vModel, bChecked)
	properties.Put(vModel, fld)
End Sub


'add a slider
Sub AddSlider(vModel As String, sLabel As String, defValue As Int, MinValue As Int, MaxValue As Int, bShowThumb As Boolean, thumbSize As String)
	vModel = vModel.tolowercase
	'
	Dim fld As Map = CreateMap()
	Dim xoptions As Map = CreateMap()

	fld.Put("default", defValue)
	fld.Put("type", "integer")
	fld.Put("title", sLabel)
	fld.Put("x-display", "slider")
	fld.put("minimum", MinValue)
	fld.Put("maximum", MaxValue) 
	'fld.Put("x-class", "mb-3")
	'
	xoptions.Put("dense", bDense)
	xoptions.Put("hideDetails", bHideDetails)
	If thumbSize <> "" Then
		xoptions.Put("thumbSize", thumbSize)
	End If
	If bShowThumb Then
		xoptions.Put("thumbLabel", "always")
	End If
	
	fld.Put("x-props", xoptions)	

	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
End Sub

'set the data of control
Sub SetData(fldName As String, fldValue As Object)
	fldName = fldName.tolowercase
	model.Put(fldName, fldValue)
End Sub

'update the description
Sub SetDescription(vModel As String, fldDescription As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.description"$
	BANanoShared.PutRecursive(properties, skey, fldDescription)
	Return Me
End Sub

'update the VIf model with a value
Sub SetVIf(vModel As String, fldVIf As String, fldValue As Boolean) As BVAD3Form
	vModel = vModel.ToLowerCase
	fldVIf = fldVIf.ToLowerCase
	If fldVIf.Contains("context") = False Then
		fldVIf = $"context.${fldVIf}"$
	End If
	If properties.ContainsKey(vModel) Then
		Dim fld As Map = properties.Get(vModel)
		fld.Put("x-if", fldVIf)
		properties.Put(vModel, fld)
	End If
	BANanoShared.PutRecursive(options, fldVIf, fldValue)
	Return Me
End Sub

'add a class
Sub AddClass(vmodel As String, className As String) As BVAD3Form
	Dim skey As String = $"${vmodel}.x-class"$
	skey = skey.ToLowerCase
	'
	Dim cls As Object = BANanoShared.GetRecursive(properties, skey)
	If BANano.IsNull(cls) Or BANano.IsUndefined(cls) Then
		cls = className
	Else
		cls = cls & " " & className	
	End If
	BANanoShared.PutRecursive(properties, skey, cls)
	Return Me
End Sub

'add a style
Sub AddStyle(vmodel As String, propKey As String, propValue As String) As BVAD3Form
	Dim skey As String = $"${vmodel}.x-style"$
	skey = skey.ToLowerCase
	'
	Dim xstyle As String = $"${propKey}:${propValue};"$
	Dim cls As Object = BANanoShared.GetRecursive(properties, skey)
	If BANano.IsNull(cls) Or BANano.IsUndefined(cls) Then
		cls = xstyle
	Else
		cls = cls & xstyle	
	End If
	BANanoShared.PutRecursive(properties, skey, cls)
	Return Me
End Sub

'update the hint
Sub SetHint(vModel As String, sHint As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.x-props.hint"$
	BANanoShared.PutRecursive(properties, skey, sHint)
	Return Me
End Sub

'update the cols
Sub SetCols(vModel As String, cols As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.x-cols"$
	BANanoShared.PutRecursive(properties, skey, cols)
	Return Me
End Sub

'update read only
Sub SetReadOnly(vModel As String, b As Boolean) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.readOnly"$
	BANanoShared.PutRecursive(properties, skey, b)
	Return Me
End Sub

'update disableAll only
Sub SetDisableAll(vModel As String, b As Boolean) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.disableAll"$
	BANanoShared.PutRecursive(properties, skey, b)
	Return Me
End Sub

'update min length
Sub SetMinLength(vModel As String, i As Int) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.minLength"$
	BANanoShared.PutRecursive(properties, skey, i)
	Return Me
End Sub

'update max length
Sub SetMaxLength(vModel As String, i As Int) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.maxLength"$
	BANanoShared.PutRecursive(properties, skey, i)
	Return Me
End Sub

'update the pattern
Sub SetPattern(vModel As String, p As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.pattern"$
	BANanoShared.PutRecursive(properties, skey, p)
	Return Me
End Sub

'update the pattern to accept letters only
Sub SetPatternLettersOnly(vModel As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	Dim skey As String = $"${vModel}.pattern"$
	Dim svalue As String = "^[a-zA-Z]*$"
	BANanoShared.PutRecursive(properties, skey, svalue)
	Return Me
End Sub

'update required
Sub SetRequired(vModel As String) As BVAD3Form
	vModel = vModel.ToLowerCase
	If required.IndexOf(vModel) = -1 Then
		required.add(vModel)
	End If
	Return Me
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
End Sub

'get the form data
Sub GetFormData(C As VueComponent) As Map
	Dim formData As Map = C.GetData(modelname)
	Return formData
End Sub

'update the form data
Sub SetFormData(C As VueComponent, mx As Map)
	C.SetData(modelname, mx)
End Sub

'reset the contents and apply designer contents
Sub Reset
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize  
	required.Initialize 
	TableName = ""
	PrimaryKey = ""
	AutoIncrement = ""
	'
	Doubles.Initialize
	Strings.Initialize 
	Integers.Initialize 
	Blobs.Initialize 
	TinyInts.Initialize 
End Sub

'build a table from the table description
Sub BuildFromTableDescription(C As VueComponent, TD As TableDescription, ShowPrimaryKey As Boolean, ShowBlobs As Boolean)
	'reset the table
	Reset
	'update the table title
	TableName = TD.tableName
	'attribute cannot be changed at runtime
	PrimaryKey = TD.PrimaryKey
	'get the fields
	Dim fields As List = TD.Fields
	Dim pk As String = TD.PrimaryKey
		'
	Dim fldTot As Int = fields.Size - 1
	Dim fldCnt As Int
	
	'loop through each column and create the structure
	For fldCnt = 0 To fldTot
		Dim colm As Map = fields.get(fldCnt)
		Dim sfieldtype As String = colm.Get("fieldtype")
		Dim sfieldname As String = colm.Get("fieldname")
		Dim sdefaultvalue As String = colm.Get("defaultvalue")
		Dim sfieldlen As String = colm.Get("fieldlen")
		'
		colm.Put("title", sfieldname)
		colm.Put("onform", "Yes")
			
		'check against blob
		If sfieldtype.EqualsIgnoreCase("blob") Then
			'update blobs
			Blobs.Add(sfieldname)
			'can form
			If ShowBlobs Then
				colm.Put("onform", "Yes")
			Else
				colm.Put("onform", "No")	
			End If
		End If
		'is the field on the form, if not exclude
		Dim sonform As String = colm.Get("onform")
		If sonform = "No" Then Continue
		
		Select Case sfieldtype
		Case "date"
			Strings.Add(sfieldname.ToLowerCase)
			AddDate(sfieldname.tolowercase, sfieldname, sdefaultvalue, "")
		Case "bigint", "int"
			Integers.Add(sfieldname.ToLowerCase)
			AddNumber(sfieldname.tolowercase, sfieldname, sdefaultvalue, -1, -1)
		Case "longtext"
			Strings.Add(sfieldname.ToLowerCase)
			AddTextArea(sfieldname.tolowercase, sfieldname, sdefaultvalue, sfieldlen)
		Case "tinyint"
			Integers.Add(sfieldname.ToLowerCase)
			TinyInts.Add(sfieldname.ToLowerCase)
			AddSwitch(sfieldname.tolowercase, sfieldname, False, "green", False)
		Case Else
			Strings.Add(sfieldname.ToLowerCase)
			AddTextField(sfieldname.tolowercase, sfieldname, sdefaultvalue, sfieldlen)
		End Select
		'hide the id field
		If sfieldname.EqualsIgnoreCase(pk) Then 
			If ShowPrimaryKey = False Then
				'hide the item
				HideItem(sfieldname.ToLowerCase)
			End If
		End If
	Next
	Refresh(C)
End Sub


'make tinyints true / false for 1 and 0
Sub OconvTinyInts(rec As Map)
	For Each tir As String In TinyInts
		Dim tiv As Int = rec.Get(tir)
		tiv = BANano.parseint(tiv)
		Select Case tiv
		Case 1
			rec.Put(tir, True)
		Case 0		
			rec.Put(tir, False)
		End Select
	Next
End Sub

'make tinyints 1/0 from true / false
Sub IconvTinyInts(rec As Map)
	For Each tir As String In TinyInts
		Dim tiv As Boolean = rec.Get(tir)
		tiv = BANanoShared.parseBool(tiv)
		Select Case tiv
		Case True
			rec.Put(tir, 1)
		Case False		
			rec.Put(tir, 0)
		End Select
	Next
End Sub