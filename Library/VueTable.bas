B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

#Event: Save (item As Map)
#Event: Edit (item As Map)
#Event: Delete (item As Map)
#Event: Print (item As Map)
#Event: Cancel (item As Map)
#Event: Change (item As Map)
#Event: Download (item As Map)
#Event: Menu (item As Map)
#Event: Clone (item As Map)
#Event: Input (items As List)
#Event: Clone (item As Map)
#Event: ItemSelected (item As Map)
#Event: ClickRow (e As BANanoEvent)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Ref, DisplayName: Ref, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ItemKey, DisplayName: ItemKey, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ItemsPerPage, DisplayName: ItemsPerPage, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: ShowSelect, DisplayName: ShowSelect, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: SingleSelect, DisplayName: SingleSelect, FieldType: Boolean, DefaultValue:  False, Description: 
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: GroupBy, DisplayName: GroupBy, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: ShowGroupBy, DisplayName: ShowGroupBy, FieldType: Boolean, DefaultValue:  False, Description:
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElse, DisplayName: VElse, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElseIf, DisplayName: VElseIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mAttributes As String = ""
	Private mStyle As String = ""
	Private classList As Map
	Private styleList As Map
	Private attributeList As Map
	Private mTagName As String = "v-data-table"
	Private mStates As String
	Public bindings As Map
	Public methods As Map
	Private stRef As String = ""
	Private stVElse As String = ""
	Private stVElseIf As String = ""
	Private stVIf As String = ""
	Private stVShow As String = ""
	Private bDense As Boolean = False
	Private stItemsPerPage As String = ""
	Private stElevation As String = ""
	Private stGroupBy As String = ""
	Private bShowGroupBy As Boolean = False
	Private bShowSelect As Boolean = False
	Private bSingleSelect As Boolean = False
	'
	Public Items As List
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	'
	'***** DATA TABLE
	Public PrimaryKey As String = "id"
	'column type
	Public COLUMN_DATE As String = "date"
	Public COLUMN_TEXT As String = "text"
	Public COLUMN_ICON As String = "icon"
	Public COLUMN_CHECKBOX As String = "checkbox"
	Public COLUMN_NONE As String = ""
	Public COLUMN_TIME As String = "time"
	Public COLUMN_DATETIME As String = "datetime"
	Public COLUMN_IMAGE As String = "image"
	Public COLUMN_MONEY As String = "money"
	Public COLUMN_NUMBER As String = "number"
	Public COLUMN_FILESIZE As String = "filesize"
	Public COLUMN_CHIP As String = "chip"
	Public COLUMN_EDIT As String = "edit"
	Public COLUMN_DELETE As String = "delete"
	Public COLUMN_ACTION As String = "action"
	Public COLUMN_SWITCH As String = "switch"
	Public COLUMN_AVATARIMG As String = "avatarimg"
	Public COLUMN_RATING As String = "rating"
	Public COLUMN_LINK As String = "link"
	Public COLUMN_PROGRESS_CIRCULAR As String = "progresscircular"
	Public COLUMN_PROGRESS_LINEAR As String = "progresslinear"
	Public COLUMN_SAVE As String = "save"
	Public COLUMN_CANCEL As String = "cancel"
	Public COLUMN_BUTTON As String = "button"
		
	'alignment
	Public ALIGN_CENTER As String = "center"
	Public ALIGN_RIGHT As String = "end"
	Public ALIGN_LEFT As String = "start"
	'
	Private columnsM As Map
	Private filters As List
	Private hasFilters As Boolean
	Private exclusions As List
	Private headers As String
	Private search As String
	Type DataTableColumn(value As String, text As String, align As String, sortable As Boolean, filterable As Boolean, divider As Boolean, _
	className As String, width As String, filter As String, sort As String, ColType As String, extra As String, icon As String, Disabled As Boolean, imgWidth As String, imgHeight As String, avatarSize As String, iconSize As String, ReadOnly As Boolean, progressColor As String, progressRotate As String, progressSize As String, progressWidth As String, progressHeight As String, progressShowValue As Boolean, valueFormat As String, bindTotals As String, hasTotal As Boolean, depressed As Boolean, rounded As Boolean, dark As Boolean, label As String, color As String, outlined As Boolean, shaped As Boolean, target As String, prefix As String, colprops As Map)
	Private hdr As List
	Public masterColumns As List
	Private hasTotals As Boolean
	Private hasExternalPagination As Boolean
	Private totalVisible As String
	Public selected As String
	Public itemsname As String
	Public groupby As String
	Public sortby As String
	Public groupdesc As String
	Public sortdesc As String
	Public expanded As String
	Public keyID As String
	Public search As String
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.ToLowerCase
	mEventName = EventName.ToLowerCase
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	bindings.Initialize
	methods.Initialize
	Items.Initialize
	filters.Initialize
	hasFilters = False
	exclusions.Initialize
	columnsM.Initialize
	masterColumns.Initialize
	hasTotals = False
	hasExternalPagination = False
	totalVisible = ""
	keyID = $"${mName}key"$
	'
	headers = $"${mName}headers"$
	search = $"${mName}search"$
	selected = $"${mName}selected"$
	groupby = $"${mName}groupby"$
	sortby = $"${mName}sortby"$
	groupdesc = $"${mName}groupdesc"$
	sortdesc = $"${mName}sortdesc"$
	expanded = $"${mName}expanded"$
	itemsname = $"${mName}items"$
	search = $"${mName}search"$
	'
	AddAttr(":items", itemsname)
	AddAttr(":headers", headers)
	AddAttr(":value", selected)
	AddAttr(":group-by", groupby)
	AddAttr(":sort-by", sortby)
	AddAttr(":group-desc", groupdesc)
	AddAttr(":sort-desc", sortdesc)
	AddAttr(":expanded.sync", expanded)
	AddAttr(":key", keyID)
	AddAttr(":search", search)
	
	setNoDataText("Working on it, please wait...")
	'
	SetSortBy(NewList)
	SetGroupBy(NewList)
	SetExpanded(NewList)
	SetGroupDesc(NewList)
	SetSortDesc(NewList)
	SetSelected(NewList)
	SetHeaders(NewList)
	SetItems(NewList)
	'
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"${headers}=array;"$)
	sb.Append($"${selected}=array;"$)
	sb.Append($"${groupby}=array;"$)
	sb.Append($"${sortby}=array;"$)
	sb.Append($"${groupdesc}=array;"$)
	sb.Append($"${sortdesc}=array;"$)
	sb.Append($"${expanded}=array;"$)
	sb.Append($"${itemsname}=array;"$)
	sb.Append($"${search}=string"$)
	setStates(sb.ToString)
End Sub

Sub SetItems(records As List)
	SetData(itemsname, records)
End Sub

Sub SetHeaders(hdrs As List)
	SetData(headers, hdrs)
End Sub

Sub SetSelected(varSortDesc As List)
	SetData(selected, varSortDesc)
End Sub

'set no-data-text
Sub setNoDataText(varNoDataText As String)
	AddAttr("no-data-text", varNoDataText)
End Sub

'set group-by
Sub SetGroupBy(varGroupBy As List)
	SetData(groupby, varGroupBy)
End Sub

'set sort-by
Sub SetSortBy(varSortBy As List)
	SetData(sortby, varSortBy)
End Sub

'set group-desc
Sub SetGroupDesc(varGroupDesc As List)
	SetData(groupdesc, varGroupDesc)
End Sub

Sub SetSortDesc(varSortDesc As List)
	SetData(sortdesc, varSortDesc)
End Sub

'set expanded
Sub SetExpanded(varExpanded As List)
	SetData(expanded, varExpanded)
End Sub


'return a list of selected primary keys
Sub GetItemKeys(lst As List) As List
	Dim xlist As List
	xlist.Initialize
	For Each m As Map In lst
		Dim xkey As String = m.GetDefault(PrimaryKey, "")
		xlist.Add(xkey)
	Next
	Return xlist
End Sub

'return a list of selected property values
Sub GetItemProps(lst As List, prop As String) As List
	Dim xlist As List
	xlist.Initialize
	For Each m As Map In lst
		Dim xkey As String = m.GetDefault(prop, "")
		xlist.Add(xkey)
	Next
	Return xlist
End Sub

'add a new record
Sub AddRow(rowData As Map)
	Items.Add(rowData)
End Sub

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mStates = Props.Get("States")
		stRef = Props.Get("Ref")
		stVElse = Props.Get("VElse")
		stVElseIf = Props.Get("VElseIf")
		stVIf = Props.Get("VIf")
		stVShow = Props.Get("VShow")
		PrimaryKey = Props.Get("ItemKey")
		bDense = Props.Get("Dense")
		stItemsPerPage = Props.Get("ItemsPerPage")
		stElevation = Props.Get("Elevation")
		stGroupBy = Props.Get("GroupBy")
		bShowGroupBy = Props.Get("ShowGroupBy")
		bShowSelect = Props.Get("ShowSelect")
		bSingleSelect = Props.Get("SingleSelect")
	End If
	
	AddAttr("ref", stRef)
	AddAttr("v-else", stVElse)
	AddAttr("v-else-if", stVElseIf)
	AddAttr("v-if", stVIf)
	AddAttr("v-show", stVShow)
	AddAttr("item-key", PrimaryKey)
	AddAttr(":dense", bDense)
	AddAttr("items-per-page", stItemsPerPage)
	setElevation(stElevation)
	AddAttr(":show-select", bShowSelect)
	AddAttr(":single-select", bSingleSelect)
	If BANano.IsNull(stGroupBy) = False Then
		Dim gb As List = BANanoShared.StrParse(",",  stGroupBy)
		SetGroupBy(gb)
	End If
	AddAttr(":show-group-by", bShowGroupBy)
	'
	AddClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	'
	SetOnItemSelected($"${mName}_ItemSelected"$)
	SetOnClickRow($"${mName}_ClickRow"$)

	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	setStates(mStates)
End Sub

'add anything from the appendholder
Sub AppendHolder
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	mElement = BANano.GetElement($"#${mName}"$)
	If mElement <> Null Then
		mElement.Append(stemplate)
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
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	If className <> "" Then AddAttr("class", className)
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	If styleName <> "" Then AddAttr("style", styleName)
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	Dim rslt As String = $"<${mTagName} id="${mName}" ${iStructure}></${mTagName}>"$
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
	mElement.Append(sElement)
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
	If varShouldBe <> varCondition Then Return
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

'add an attr on condition
public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
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

'change the text of the element
Sub SetText(varText As String)
	AddChild(varText)
End Sub

Sub Bind(attr As String, value As String)
	AddAttr($":${attr}"$, value)
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

public Sub setVIf(varVIf As String)
	AddAttr("v-if", varVIf)
	stVIf = varVIf
End Sub

public Sub getVIf() As String
	Return stVIf
End Sub

public Sub setVShow(varVShow As String)
	AddAttr("v-show", varVShow)
	stVShow = varVShow
End Sub

public Sub getVShow() As String
	Return stVShow
End Sub

'add a child component
Sub AddChild(child As String)
	mElement.Append(child)
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
End Sub

private Sub SetEvent(eventName As String, attrName As String, eventValue As String)
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


'define method
Sub OnMulti(EventHandler As String, eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	EventHandler = EventHandler.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
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
	If o = BANano.UNDEFINED Then o = ""
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

'add save icon
Sub AddSave()
	Dim colField As String = "save"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Save")
	AddExclusion("save")
	dt.filterable = False
	dt.ColType = COLUMN_SAVE
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-content-save"
	columnsM.Put(colField, dt)
End Sub

'add cancel icon
Sub AddCancel()
	Dim colField As String = "cancel"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Cancel")
	AddExclusion(colField)
	dt.filterable = False
	dt.ColType = COLUMN_CANCEL
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-cancel"
	columnsM.Put(colField, dt)
End Sub


'add edit icon
Sub AddEdit()
	Dim colField As String = "edit"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Edit")
	AddExclusion(colField)
	dt.filterable = False
	dt.ColType = COLUMN_EDIT
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-pencil"
	columnsM.Put(colField, dt)
End Sub

'add delete icon
Sub AddDelete()
	Dim colField As String = "delete"
	Dim dt As DataTableColumn = NewDataTableColumn(colField, "Delete")
	AddExclusion(colField)
	dt.filterable = False
	dt.ColType = COLUMN_EDIT
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = "mdi-delete"
	columnsM.Put(colField, dt)
End Sub

'add an icon
Sub AddIcon(colField As String, colTitle As String, colIcon As String)
	AddAction(colField, colTitle, colIcon)
End Sub

'add an action
Sub AddAction(colField As String, colTitle As String, colIcon As String)
	AddExclusion(colField)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	AddExclusion(colField)
	dt.filterable = False
	dt.ColType = COLUMN_ACTION
	dt.sortable = False
	dt.align = ALIGN_CENTER
	dt.icon = colIcon
	columnsM.Put(colField, dt)
End Sub

'add icon field
Sub AddIconView(colField As String, colTitle As String, colColor As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_ICON
	dt.sortable = False
	If colColor <> "" Then dt.color = colColor
	columnsM.Put(colField, dt)
End Sub

'add icon field
Sub AddChip(colField As String, colTitle As String, colColor As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_CHIP
	dt.sortable = False
	If colColor <> "" Then dt.color = colColor
	columnsM.Put(colField, dt)
End Sub

'add switch field
Sub AddSwitch(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_SWITCH
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'set a field as a switch
Sub SetColumnsSwitch(colFields As List)
	For Each col As String In colFields
		Dim colx As DataTableColumn = columnsM.Get(col)
		colx.ColType = COLUMN_SWITCH
		colx.filterable = False
		colx.sortable = False
		columnsM.Put(col, colx)
	Next
End Sub

'set a field as a link
Sub SetColumnsLinks(colFields As List)
	For Each col As String In colFields
		SetColumnType(col, COLUMN_LINK)
	Next
End Sub

'set column as a checkbox
Sub SetColumnsCheckBox(colFields As List)
	For Each col As String In colFields
		Dim colx As DataTableColumn = columnsM.Get(col)
		colx.ColType = COLUMN_CHECKBOX
		colx.filterable = False
		colx.sortable = False
		columnsM.Put(col, colx)
	Next
End Sub

'add an image
Sub AddImage(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.filterable = False
	dt.ColType = COLUMN_IMAGE
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add a link
Sub AddLink(colField As String, colTitle As String, target As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_LINK
	dt.target = target
	columnsM.Put(colField, dt)
End Sub

'add an avatar image
Sub AddAvatarImg(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_AVATARIMG
	dt.filterable = False
	dt.sortable = False
	columnsM.Put(colField, dt)
End Sub

'add a rating
Sub AddRating(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_RATING
	columnsM.Put(colField, dt)
End Sub

'add a progress circular
Sub AddProgressCircular(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_PROGRESS_CIRCULAR
	columnsM.Put(colField, dt)
End Sub

'add a progress linear
Sub AddProgressLinear(colField As String, colTitle As String)
	Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle)
	dt.ColType = COLUMN_PROGRESS_LINEAR
	columnsM.Put(colField, dt)
End Sub

'add edit & delete button
Sub AddEditThrash
	AddAction("edit", "Edit", "mdi-pencil")
	AddAction("delete", "Delete", "mdi-delete")
End Sub

'add a delete icon
Sub SetDelete(b As Boolean)
	If b = False Then Return
	AddAction("delete", "Delete", "mdi-delete")
End Sub

'add an edit icon
Sub SetEdit(b As Boolean)
	If b = False Then Return
	AddAction("edit", "Edit", "mdi-pencil")
End Sub

'add a save icon
Sub SetSave(b As Boolean)
	If b = False Then Return
	AddSave
End Sub

'add a cancel button
Sub SetCancel(b As Boolean)
	If b = False Then Return
	AddCancel
End Sub

'add a download button
Sub SetDownload(b As Boolean)
	If b = False Then Return
	AddDownload
End Sub

'add download
Sub AddDownload
	AddIcon("download","Download","mdi-download")
End Sub

'add horizontal menu button
Sub AddMenuH
	AddIcon("menu","Menu","mdi-dots-horizontal")
End Sub

'add vertical menu
Sub SetMenu(b As Boolean)
	If b = False Then Return
	AddMenuV
End Sub

'add vertical menu
Sub AddMenuV
	AddIcon("menu","Menu","mdi-dots-vertical")
End Sub

'add clone
Sub SetClone(b As Boolean)
	If b = False Then Return
	AddClone
End Sub

'add clone
Sub AddClone
	AddIcon("clone","Clone","mdi-content-copy")
End Sub

'add print
Sub SetPrint(b As Boolean)
	If b = False Then Return
	AddPrint
End Sub

'add print
Sub AddPrint
	AddIcon("print", "Print", "mdi-printer")
End Sub

'update from a list of existing recods
Sub SetDataSource(ds As List)
	Items.Initialize 
	SetData(itemsname, ds)
End Sub

'add columns to exclude
Sub AddExclusion(colKey As String)
	exclusions.Add(colKey)
End Sub

'add a column
Sub AddColumn(colName As String, colTitle As String)
	AddColumn1(colName, colTitle, COLUMN_TEXT, 0, True, ALIGN_LEFT)
End Sub

'add date column and use any of dayjs formats
'<code>.AddDateColumn("dateColumn", "Date", "DD/MM/YYY")
'</code>
Sub AddDateColumn(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnDateFormat(colName, colFormat)
End Sub

'add date time column and use any dayjs formats
'<code>.AddDateColumn("dateColumn", "Date", "DD/MM/YYY HH:MM:SS")
'</code>
Sub AddDateTimeColumnDate(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnDateTimeFormat(colName, colFormat)
End Sub

'add number column and use any numeraljs formats
'<code>.AddNumberColumn("money", "Received", "$0,0.00")
'</code>
Sub AddNumberColumn(colName As String, colTitle As String, colFormat As String)
	AddColumn(colName, colTitle)
	SetColumnNumberFormat(colName, colFormat)
End Sub

'add button column
'<code>.AddButtonColumn("btnAdd1Day", "Add 1 Day")
'</code>
Sub AddButtonColumn(colName As String, colTitle As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_BUTTON)
	SetButtonLabel(colName, colTitle)
	
End Sub

'add link column
'<code>.AddLinkColumn("emailaddress", "Add 1 Day")
'</code>
Sub AddLinkColumn(colName As String, colTitle As String, target As String)
	AddColumn(colName, colTitle)
	SetColumnType(colName, COLUMN_LINK)
	SetColumnTarget(colName, target)
End Sub


'add columns from key value pairs
Sub AddColumns(flds As Map)
	For Each k As String In flds.Keys
		Dim v As String = flds.Get(k)
		AddColumn(k, v)
	Next
End Sub

'add a column
'key, title, 
Sub AddColumn1(colName As String, colTitle As String, colType As String, colWidth As Int, colSortable As Boolean, colAlign As String)
	masterColumns.Add(colName)
	If hasFilters Then
		If exclusions.IndexOf(colName) = -1 Then
			If filters.IndexOf(colName) = -1 Then Return
		End If
	End If
	'
	Dim nf As DataTableColumn = NewDataTableColumn(colName, colTitle)
	nf.align = colAlign
	nf.sortable = colSortable
	nf.className = Null
	nf.width = colWidth
	nf.ColType = colType
	columnsM.Put(colName, nf)
	SetColumnType(colName, colType)
End Sub

private Sub NewDataTableColumn(colname As String, coltitle As String) As DataTableColumn
	Dim nf As DataTableColumn
	nf.Initialize
	nf.text = coltitle
	nf.value = colname
	nf.align = ALIGN_LEFT
	nf.sortable = True
	nf.filterable = True
	nf.divider = False
	nf.className = Null
	nf.width = 0
	nf.filter = Null
	nf.sort = Null
	nf.ColType = COLUMN_TEXT
	nf.Disabled = False
	nf.valueFormat = ""
	nf.bindTotals = ""
	nf.hasTotal = False
	nf.depressed = False
	nf.rounded = False
	nf.dark = False
	nf.label = ""
	nf.color = ""
	nf.outlined = False
	nf.shaped = False
	nf.colprops.Initialize 
	Return nf
End Sub

'set colum properties
Sub SetColumnAttr(colName As String, attr As String, value As String)
	If columnsM.ContainsKey(colName) Then
		Dim nf As DataTableColumn = columnsM.Get(colName)
		nf.colprops.put(attr, value)
		columnsM.Put(colName, nf)
	End If
End Sub		

Sub SetColumnTarget(colName As String, target As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.target = target
		columnsM.Put(colName,col)
	End If
	
End Sub

Sub SetColumnPrefix(colName As String, prefix As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.prefix = prefix
		columnsM.Put(colName,col)
	End If
	
End Sub


'define whether a column will be totalled or not
Sub SetColumnTotal(colName As String, callBackMethod As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.bindTotals = callBackMethod
		columnsM.Put(colName,col)
		hasTotals = True
	End If	
End Sub

'set image dimensions
Sub SetImageDimensions(colName As String, imgHeight As String, imgWidth As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.imgHeight = imgHeight
		col.imgWidth = imgWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnSortable(colName As String, colSortable As Boolean)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.sortable = colSortable
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnDisabled(colName As String, colDisabled As Boolean)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.Disabled = colDisabled
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column sortable
Sub SetColumnReadOnly(colName As String, colReadOnly As Boolean)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.ReadOnly = colReadOnly
		columnsM.Put(colName,col)
	End If
	
End Sub

'set the column data template
Sub SetColumnAlignment(colName As String, colAlign As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.align = colAlign
		columnsM.Put(colName,col)
	End If
	
End Sub

'change column icon
Sub SetColumnIcon(colName As String, icon As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.icon = icon
		columnsM.Put(colName,col)
	End If
	
End Sub

'set icon dimension
Sub SetIconDimensions(colName As String, iconSize As String, iconColor As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		If iconSize <> "" Then col.iconSize = iconSize
		If iconColor <> "" Then col.color = iconColor
		columnsM.Put(colName,col)
	End If
End Sub

Sub SetIconDimensions1(colName As String, iconSize As String, iconColor As String, columnWidth As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		If iconSize <> "" Then col.iconSize = iconSize
		If iconColor <> "" Then col.color = iconColor
		If columnWidth <> "" Then col.width = columnWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'set progress circular dialog
Sub SetProgressCircularDimensions(colName As String, progressColor As String, progressRotate As String, progressSize As String, progressWidth As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.progressRotate = progressRotate
		col.progressSize = progressSize
		col.progressWidth = progressWidth
		col.progressColor = progressColor
		columnsM.Put(colName,col)
	End If
	
End Sub

Sub SetProgressLinearDimensions(colName As String, progressColor As String, progressHeight As String, progressShowValue As Boolean)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.progressHeight = progressHeight
		col.progressShowValue = progressShowValue
		col.progressColor = progressColor
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be depressed
Sub SetButtonDepressed(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.depressed = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be round
Sub SetButtonRounded(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.rounded = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be shaped
Sub SetButtonShaped(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.shaped = True
		columnsM.Put(colName,col)
	End If
	
End Sub



'make the button to be round
Sub SetButtonOutlined(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.outlined = True
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be dark
Sub SetButtonDark(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.dark = True
		columnsM.Put(colName,col)
	End If
	
End Sub


'make the button to have a single label
Sub SetButtonLabel(colName As String, label As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.label = label
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be depressed
Sub SetButtonColor(colName As String, color As String, intensity As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		Dim scolor As String = $"${color} ${intensity}"$
		col.color = scolor
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be primary
Sub SetButtonPrimary(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "primary"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be success
Sub SetButtonSuccess(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "success"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be success
Sub SetButtonError(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "error"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be warning
Sub SetButtonWarning(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "warning"
		columnsM.Put(colName,col)
	End If
	
End Sub

'make the button to be secondary
Sub SetButtonSecondary(colName As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.color = "secondary"
		columnsM.Put(colName,col)
	End If
	
End Sub

'set rating dimensions
Sub SetRatingDimensions(colName As String, ratLength As String, ratColor As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.iconSize = ratLength
		If ratColor <> "" Then col.icon = ratColor
		columnsM.Put(colName,col)
	End If
End Sub


'set the column data template
Sub SetColumnWidth(colName As String, colWidth As Int)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.width = colWidth
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column filterable
Sub SetColumnFilterable(colName As String, colFilter As Boolean)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.filterable = colFilter
		columnsM.Put(colName,col)
	End If
	
End Sub

'set column class
Sub SetColumnClass(colName As String, colClass As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.classname = colClass
		columnsM.Put(colName,col)
	End If
	
End Sub

'build headers
private Sub BuildHeaders(colNames As Map)
	hdr.Initialize
	'
	For Each k As String In colNames.keys
		'get the column details
		Dim nf As DataTableColumn = colNames.Get(k)
		'
		Dim header As Map = CreateMap()
		header.Initialize
		header.put("text", nf.text)
		header.put("value", nf.value)
		header.put("align", nf.align)
		header.put("sortable", nf.Sortable)
		header.put("filterable", nf.filterable)
		header.put("divider", nf.divider)
		header.Put("class", nf.classname)
		If nf.width <> 0 Then header.Put("width", nf.width)
		If nf.filter <> Null Then header.put("filter", nf.filter)
		If nf.sort <> Null Then header.Put("sort", nf.sort)
		hdr.Add(header)
	Next
	SetData(headers, hdr)
End Sub

'set the column data template
Sub SetColumnType(colName As String, colType As String)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.ColType = colType
		Dim item As Map
		Dim value As String
		Select Case colType
			Case COLUMN_IMAGE, COLUMN_AVATARIMG, COLUMN_SWITCH, COLUMN_BUTTON
				col.filterable = False
			Case COLUMN_NUMBER
				col.align = ALIGN_RIGHT
				col.valueFormat = "0"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, value))
				'add to methods
				SetCallBack("getmoneyformat", cb)
			Case COLUMN_MONEY
				col.align = ALIGN_RIGHT
				col.valueFormat = "0,0.00"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, value))
				'add to methods
				SetCallBack("getmoneyformat", cb)
			Case COLUMN_FILESIZE
				col.align = ALIGN_RIGHT
				Dim cb As BANanoObject = BANano.CallBack(Me, "getfilesize", Array(item))
				'add to methods
				SetCallBack("getfilesize", cb)
			Case COLUMN_DATE
				col.valueFormat = "yyyy-MM-dd"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
			Case COLUMN_TIME
				col.valueFormat = "HH:MM"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
			Case COLUMN_DATETIME
				col.valueFormat = "yyyy-MM-dd HH:MM"
				Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, value))
				'add to methods
				SetCallBack("getdateformat", cb)
		End Select
		columnsM.Put(colName,col)
	End If
End Sub

'build controls
private Sub BuildSlots
	mElement.Empty
	Dim sbTotals As StringBuilder
	sbTotals.Initialize
	If hasTotals Then
		'lets define the totals row
		sbTotals.Append($"<template slot="body.append">"$)
		sbTotals.Append($"<tr>"$)
		sbTotals.Append($"<th>Totals</th>"$)
	End If
		
	Dim sb As StringBuilder
	sb.Initialize
	For Each k As String In columnsM.Keys
		Dim nf As DataTableColumn = columnsM.Get(k)
		'get type of column
		Dim ct As String = nf.ColType
		'get column name
		Dim value As String = nf.value
		Dim bindTotals As String = nf.bindTotals
		Dim methodName As String = $"${mName}_${value}"$
		'does it have a total
		If hasTotals Then
			Select Case bindTotals
			Case ""
				sbTotals.Append($"<th></th>"$)
			Case Else
				sbTotals.Append($"<th>{{ ${bindTotals} }}</th>"$)
			End Select
		End If
		'define args for methods
				
		Select Case ct
			Case COLUMN_DATE, COLUMN_DATETIME, COLUMN_TIME
				'get the date format
				Dim df As String = nf.valueFormat
				'
				Dim span As VueElement
				span.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				span.TagName = "span"
				span.SetText($"{{ getdateformat(item.${value}, "${df}") }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
		
				tmp.SetText(span.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_LINK
				Dim aLink As VueElement
				aLink.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				aLink.TagName = "a"
				Dim sLink As String = $"item.${value}"$
				aLink.AddAttr(":href", "'" & nf.prefix & "' + " & sLink)
				aLink.AddAttr("target", nf.target)
				aLink.SetText($"{{ item.${value} }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(aLink.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_MONEY, COLUMN_NUMBER
				'get the date format
				Dim mf As String = nf.valueFormat
				Dim span As VueElement
				span.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				span.TagName = "span"
				span.SetText($"{{ getmoneyformat(item.${value}, "${mf}") }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(span.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_FILESIZE
				Dim span As VueElement
				span.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				span.TagName = "span"
				span.SetText($"{{ getfilesize(item.${value}) }}"$)
				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(span.ToString)
				sb.Append(tmp.ToString)		
			Case COLUMN_PROGRESS_LINEAR
				Dim pl As VueElement
				pl.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				pl.TagName = "v-progress-linear" 
				pl.SetVModel($"item.${value}"$)
				pl.Reactive = True
				pl.Rounded = True
				If nf.progressColor <> "" Then pl.Color = nf.progressColor
				If nf.progressheight <> "" Then pl.Height = nf.progressheight
				If nf.progressShowValue Then
					Dim tmpx As VueElement
					tmpx.Initialize(mCallBack, $"${k}${nf.ColType}val"$, $"${k}${nf.ColType}val"$)
					tmpx.TagName = "strong"
					tmpx.SetText($"{{ Math.ceil(item.${value}) }}%"$)
					pl.SetText(tmpx.ToString)
				End If
				'
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					pl.AddAttr("v-on:change", $"${methodName}(item)"$)
					Dim args As List
					SetMethod(methodName, args)
				End If
				
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					pl.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(pl.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_PROGRESS_CIRCULAR
				Dim pc As VueElement
				pc.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				pc.TagName = "v-progress-circular"
				pc.SetVModel($"item.${value}"$)
				pc.Reactive = True
				pc.SetText($"{{ item.${value} }}"$)
				If nf.progressRotate <> "" Then pc.Rotate = nf.progressRotate
				If nf.progressSize <> "" Then pc.Size = nf.progressSize
				If nf.progressWidth <> "" Then pc.Width = nf.progressWidth
				If nf.progressColor <> "" Then pc.Color = nf.progressColor
				
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					pc.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(pc.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_RATING
				Dim rat As VueElement
				rat.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				rat.TagName = "v-rating"
				rat.Dense = True
				rat.SetVModel($"item.${value}"$)
				If nf.Disabled Then rat.disabled = True
				If nf.ReadOnly Then rat.readonly = True
				If nf.iconSize <> "" Then rat.Length = nf.iconSize
				'
				If nf.color.StartsWith("item.") Then
					rat.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then rat.Color = nf.color
				End If
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					rat.AddAttr(k, v)
'				Next
'				
				'
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					rat.AddAttr("v-on:input", $"${methodName}(item)"$)
					Dim args As List
					SetMethod(methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(rat.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_AVATARIMG
				Dim avt As VueElement
				avt.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				avt.TagName = "v-avatar"
				'
				Dim avtimg As VueElement
				avtimg.Initialize(mCallBack, $"${k}${nf.ColType}img"$, $"${k}${nf.ColType}img"$)
				avtimg.TagName = "v-img"
				avtimg.AddAttr(":src", $"item.${value}"$)
				avtimg.AddAttr(":lazy-src", $"item.${value}"$)
				avtimg.Alt = ""
				If nf.imgHeight <> "" Then
					avtimg.Height = nf.imgheight
					avtimg.MaxHeight = nf.imgheight
				End If
				'
				If nf.imgWidth <> "" Then
					avtimg.Width = nf.imgWidth
					avtimg.MaxWidth = nf.imgWidth
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					avt.AddAttr(k, v)
'				Next
'								
				avt.SetText(avtimg.ToString)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(avt.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_SWITCH, COLUMN_CHECKBOX
				Dim swt As VueElement
				swt.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				swt.TagName = "v-checkbox"
				'
				If ct = COLUMN_SWITCH Then
					swt.tagname = "v-switch"
					swt.SetInset(True)
					swt.Dense = True
				End If
				swt.Value = "Yes"
				swt.TrueValue = "Yes"
				swt.FalseValue = "No"
				swt.SetVModel($"item.${value}"$)
				If nf.Disabled Then swt.Disabled = True
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					swt.AddAttr(k, v)
'				Next
'				
				Dim methodName As String = $"${mName}_change"$
				If SubExists(mCallBack, methodName) Then
					swt.AddAttr("v-on:change", $"${methodName}(item)"$)
					Dim args As List
		
					SetMethod(methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(swt.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_ICON
				Dim aicon As VueElement
				aicon.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				aicon.TagName = "v-icon"
				aicon.settext($"{{ item.${value} }}"$)
				If nf.Disabled Then aicon.disabled = True
				If nf.iconSize <> "" Then aicon.Size = nf.iconSize
				If nf.color.StartsWith("item.") Then
					aicon.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then aicon.Color = nf.color
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					aicon.AddAttr(k, v)
'				Next
'				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(aicon.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_IMAGE
				Dim avtimg As VueElement
				avtimg.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				avtimg.TagName = "v-img"
				avtimg.AddAttr(":src", $"item.${value}"$)
				avtimg.AddAttr(":lazy-src", $"item.${value}"$)
				avtimg.Alt = ""
				If nf.Disabled Then avtimg.disabled = True
				If nf.imgHeight <> "" Then
					avtimg.Height = nf.imgheight
					avtimg.MaxHeight = nf.imgheight
				End If
				If nf.imgWidth <> "" Then
					avtimg.Width = nf.imgWidth
					avtimg.MaxWidth = nf.imgWidth
				End If
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					avtimg.AddAttr(k, v)
'				Next
'				
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(avtimg.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_CHIP
				Dim chp As VueElement
				chp.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				chp.TagName = "v-chip"
				chp.dark = True
				chp.Elevation = "4"
				chp.SetText($"{{ item.${value} }}"$)
				If nf.Disabled Then chp.disabled = True
				If nf.color.StartsWith("item.") Then
					chp.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then 
						chp.Color = nf.color
					End If
				End If
				'
'				Dim colprops As Map = nf.colprops
'				For Each k As String In colprops.Keys
'					Dim v As String = colprops.Get(k)
'					chp.AddAttr(k, v)
'				Next
'				Log(chp.bindings)
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(chp.ToString)
				sb.Append(tmp.ToString)
			Case COLUMN_BUTTON
				Dim abtn As VueElement
				abtn.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				abtn.TagName = "v-btn"
				abtn.AddClass("mr-2")
				abtn.Depressed = nf.depressed
				abtn.Rounded = nf.rounded
				abtn.Dark = nf.dark
				abtn.Label = nf.label
				abtn.Color = nf.color
				abtn.Outlined = nf.outlined
				abtn.Shaped = nf.shaped
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					abtn.AddAttr(k, v)
'				Next
					'
				If SubExists(mCallBack, methodName) Then
					abtn.AddAttr("v-on:click", $"${mName}_${value}(item)"$)
					Dim args As List
		
					SetMethod(methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(abtn.ToString)
				sb.Append(tmp.tostring)
			Case COLUMN_ACTION, COLUMN_EDIT, COLUMN_DELETE, COLUMN_SAVE, COLUMN_CANCEL
				Dim abtn As VueElement
				abtn.Initialize(mCallBack, $"${k}${nf.ColType}"$, $"${k}${nf.ColType}"$)
				abtn.TagName = "v-btn"
				abtn.Elevation = "4"
				abtn.Fab = True
				abtn.Small = True
				abtn.dark = True
				abtn.AddClass("mr-2")
				If nf.color.StartsWith("item.") Then
					abtn.AddAttr(":color", nf.color)
				Else
					If nf.color <> "" Then abtn.Color = nf.color
				End If
				If nf.Disabled Then abtn.disabled = True
				'
'				Dim props As Map = nf.props
'				For Each k As String In props.Keys
'					Dim v As String = props.Get(k)
'					abtn.AddAttr(k, v)
'				Next
								
				Dim aicon As VueElement
				aicon.Initialize(mCallBack, $"${k}${nf.ColType}icon"$, $"${k}${nf.ColType}icon"$)
				aicon.TagName = "v-icon"
				aicon.SetText(nf.icon)
				If nf.iconSize <> "" Then aicon.Size = nf.iconSize
				abtn.SetText(aicon.tostring)
			
				If SubExists(mCallBack, methodName) Then
					abtn.AddAttr("v-on:click", $"${mName}_${value}(item)"$)
					Dim args As List
		
					SetMethod(methodName, args)
				End If
				'
				'define template
				Dim tmp As VueElement
				tmp.Initialize(mCallBack, $"${k}tmp"$ , $"${k}tmp"$)
				tmp.TagName = "v-template"
				tmp.AddAttr($"v-slot:item.${value}"$, "{ item }")
				tmp.SetText(abtn.ToString)
				sb.Append(tmp.ToString)
		End Select
	Next
	'
	If hasTotals Then
		sbTotals.Append($"</tr>"$)
		sbTotals.Append("</template>")
		sb.Append(sbTotals.ToString)
	End If
	Dim sout As String = sb.tostring
	mElement.Append(sout)
End Sub

'set total-visible
Sub SetTotalVisible(varTotalVisible As String)
	totalVisible = varTotalVisible
End Sub

'update the data
Sub Refresh
	'build the headers
	BuildHeaders(columnsM)	
	BuildSlots
	'
'	SetSortBy(NewList)
'	SetGroupBy(NewList)
'	SetExpanded(NewList)
'	SetGroupDesc(NewList)
'	SetSortDesc(NewList)
'	SetSelected(NewList)
'	setPage("1")
'	SetData($"${mName}pagecount"$, "0")
	
	SetData(keyID, DateTime.Now)
	If Items.Size > 0 Then
		SetData(itemsname, Items)
	End If
End Sub

'set calculate-widths
Sub setCalculateWidths(varCalculateWidths As Boolean)
	AddAttr(":calculate-widths", varCalculateWidths)
End Sub

Sub setDisableFiltering(varDisableFiltering As Boolean)
	AddAttr(":disable-filtering", varDisableFiltering)
End Sub

'set disable-pagination
Sub setDisablePagination(varDisablePagination As Boolean)
	AddAttr(":disable-pagination", varDisablePagination)
End Sub

'set disable-sort
Sub setDisableSort(varDisableSort As Boolean)
	AddAttr(":disable-sort", varDisableSort)
End Sub

'set fixed-header
Sub setFixedHeader(varFixedHeader As Boolean)
	AddAttr(":fixed-header", varFixedHeader)
End Sub

'set hide-default-footer
Sub setHideDefaultFooter(varHideDefaultFooter As Boolean)
	AddAttr(":hide-default-footer", varHideDefaultFooter)
End Sub

'set hide-default-header
Sub setHideDefaultHeader(varHideDefaultHeader As Boolean)
	AddAttr(":hide-default-header", varHideDefaultHeader)
End Sub

'set light
Sub setLight(varLight As Boolean)
	AddAttr(":light", varLight)
End Sub

'set loading
Sub setLoading(varLoading As Boolean)
	AddAttr(":loading", varLoading)
End Sub

'set multi-sort
Sub setMultiSort(varMultiSort As Boolean)
	AddAttr(":multi-sort", varMultiSort)
End Sub

'set must-sort
Sub setMustSort(varMustSort As Boolean)
	AddAttr(":must-sort", varMustSort)
End Sub

'set show-expand
Sub setShowExpand(varShowExpand As Boolean)
	AddAttr("show-expand", varShowExpand)
End Sub

'set show-group-by
Sub setShowGroupBy(varShowGroupBy As Boolean)
	AddAttr(":show-group-by", varShowGroupBy)
	stGroupBy = varShowGroupBy
End Sub

'set show-select
Sub setShowSelect(varShowSelect As Boolean)
	AddAttr(":show-select", varShowSelect)
	bShowSelect = varShowSelect
End Sub

'set single-expand
Sub setSingleExpand(varSingleExpand As Boolean)
	AddAttr(":single-expand", varSingleExpand)
End Sub

'set single-select
Sub setSingleSelect(varSingleSelect As Boolean)
	AddAttr(":single-select", varSingleSelect)
	bSingleSelect = varSingleSelect
End Sub

'set item-key and force usage
Sub setItemKey(varItemKey As String)
	PrimaryKey = varItemKey
	AddAttr("item-key", varItemKey)
End Sub

'set items-per-page
Sub setItemsPerPage(varItemsPerPage As String)
	AddAttr("items-per-page", varItemsPerPage)
End Sub

'set loading-text
Sub setLoadingText(varLoadingText As String)
	AddAttr("loading-text", varLoadingText)
End Sub

'set page
Sub setPage(varPage As String)
	If varPage = "" Then Return
	varPage = BANano.parseInt(varPage)
	AddAttr(":page.sync", varPage)
End Sub

'link a data-table to the pagination
Sub SetExternalPagination
	setPage("1")
	SetData($"${mName}pagecount"$, "0")
	Dim scode As String = mName & "pagecount = $event"
	AddAttr("v-on:page-count", scode)
	setHideDefaultFooter(True)
	hasExternalPagination = True
End Sub

'set selectable-key
Sub setSelectableKey(varSelectableKey As String)
	AddAttr("selectable-key", varSelectableKey)
End Sub

'set what will happen when the row is clicked
Sub SetOnClickRow(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e))
	AddAttr("v-on:click:row", methodName)
	'add to methods
	SetCallBack(methodName, cb)
End Sub

'on item selected event
Sub SetOnItemSelected(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e))
	AddAttr("v-on:item-selected", methodName)
	'add to methods
	SetCallBack(methodName, cb)
End Sub

Sub SetColumnsFormatDateTime(dates As List)
	SetDateTimeColumns(dates)
End Sub

'set the column type to date time for these columns
Sub SetDateTimeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_DATETIME)
	Next
End Sub

'set the column type to date time for these columns
Sub SetFileSizeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_FILESIZE)
	Next
End Sub

Sub SetColumnsFormatFileSize(dates As List)
	SetFileSizeColumns(dates)
End Sub


'set the column type to time for these columns
Sub SetTimeColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_TIME)
	Next
End Sub

Sub SetColumnsFormatTime(dates As List)
	SetTimeColumns(dates)
End Sub

Sub SetColumnsFormatMoney(dates As List)
	SetMoneyColumns(dates)
End Sub

'set the column type to time for these columns
Sub SetMoneyColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_MONEY)
	Next
End Sub

'set the column type to time for these columns
Sub SetNumberColumns(dates As List)
	For Each k As String In dates
		SetColumnType(k, COLUMN_NUMBER)
	Next
End Sub

Sub SetItemClass(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) Then
		AddAttr(":item-class", methodName)
		Dim Item As Map
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(Item))
		'add to methods
		SetCallBack(methodName, cb)
	End If
End Sub

'set the format of the date in the 
Sub SetColumnDateFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_DATE)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getdateformat", cb)
	End If
End Sub

'set the format of the date time in the column
Sub SetColumnDateTimeFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_DATETIME)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getdateformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getdateformat", cb)
	End If
End Sub

'set the format of the number in the column
Sub SetColumnNumberFormat(colName As String, colFormat As String)
	'valueFormat
	SetColumnType(colName, COLUMN_NUMBER)
	If columnsM.ContainsKey(colName) Then
		Dim col As DataTableColumn = columnsM.Get(colName)
		col.valueFormat = colFormat
		col.align = ALIGN_RIGHT
		columnsM.Put(colName,col)
		'
		Dim item As Map
		Dim cb As BANanoObject = BANano.CallBack(Me, "getmoneyformat", Array(item, colFormat))
		'add to methods
		SetCallBack("getmoneyformat", cb)
	End If
End Sub

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


'set dense
public Sub setDense(varDense As Boolean)
	AddAttr(":dense", varDense)
	bDense = varDense
End Sub

'get dense
public Sub getDense() As Boolean
	Return bDense
End Sub

'get dense
public Sub getItemKey() As String
	Return PrimaryKey
End Sub


public Sub setElevation(varElevation As String)
	If BANano.IsNull(varElevation) Then varElevation = ""
	If varElevation = "" Then Return
	AddAttr("elevation", varElevation)
	AddClass("elevation-" & varElevation)
	stElevation = varElevation
End Sub

public Sub getElevation() As String
	Return stElevation
End Sub

public Sub getGroupBy() As String
	Return stGroupBy
End Sub


public Sub getShowSelect() As Boolean
	Return bShowSelect
End Sub

Sub getSingleSelect() As Boolean
	Return bSingleSelect
End Sub

'set direct method
Sub SetMethod(methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(mCallBack, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, args)
		methods.Put(methodName, cb)
	End If
End Sub
