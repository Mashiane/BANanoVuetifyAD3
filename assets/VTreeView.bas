B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
'checked
#Event: Checked (items As List)
#Event: Clicked (items As List)
#Event: Opened (items As List)

'clicked
#Event: Input (items As List)
#Event: UpdateActive (items As List)
#Event: UpdateOpen (items As List)
#Event: Delete (item As Map)


#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Selectable, DisplayName: CheckBox / Selectable, FieldType: Boolean, DefaultValue: false, Description: Selectable/CheckBox
#DesignerProperty: Key: SelectedColor, DisplayName: Checkbox / Selected Color, FieldType: String, DefaultValue: accent, Description: SelectedColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: SelectionType, DisplayName: SelectionType, FieldType: String, DefaultValue: leaf, Description: SelectionType, List: independent|leaf
#DesignerProperty: Key: Activatable, DisplayName: Clickable / Activatable, FieldType: Boolean, DefaultValue: True, Description: Activatable
#DesignerProperty: Key: MultipleActive, DisplayName: Multiple, FieldType: Boolean, DefaultValue: false, Description: MultipleActive
#DesignerProperty: Key: ActiveClass, DisplayName: Active Class, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: Deletable, DisplayName: Deletable, FieldType: Boolean, DefaultValue: false, Description: Deletable
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: primary, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: ExpandIcon, DisplayName: ExpandIcon, FieldType: String, DefaultValue: mdi-chevron-down, Description: ExpandIcon
#DesignerProperty: Key: Hoverable, DisplayName: Hoverable, FieldType: Boolean, DefaultValue: True, Description: Hoverable
#DesignerProperty: Key: IndeterminateIcon, DisplayName: IndeterminateIcon, FieldType: String, DefaultValue: , Description: IndeterminateIcon
#DesignerProperty: Key: ItemKey, DisplayName: ItemKey, FieldType: String, DefaultValue: id, Description: ItemKey
#DesignerProperty: Key: ItemText, DisplayName: ItemText, FieldType: String, DefaultValue: name, Description: ItemText
#DesignerProperty: Key: ItemChildren, DisplayName: ItemChildren, FieldType: String, DefaultValue: children, Description: ItemChildren
#DesignerProperty: Key: ItemDisabled, DisplayName: ItemDisabled, FieldType: String, DefaultValue: disabled, Description: ItemDisabled
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: LoadingIcon, DisplayName: LoadingIcon, FieldType: String, DefaultValue: , Description: LoadingIcon

#DesignerProperty: Key: OffIcon, DisplayName: OffIcon, FieldType: String, DefaultValue: , Description: OffIcon
#DesignerProperty: Key: OnIcon, DisplayName: OnIcon, FieldType: String, DefaultValue: , Description: OnIcon
#DesignerProperty: Key: OpenAll, DisplayName: OpenAll, FieldType: Boolean, DefaultValue: false, Description: OpenAll
#DesignerProperty: Key: OpenOnClick, DisplayName: OpenOnClick, FieldType: Boolean, DefaultValue: False, Description: OpenOnClick
#DesignerProperty: Key: ReturnObject, DisplayName: ReturnObject, FieldType: Boolean, DefaultValue: false, Description: ReturnObject
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: false, Description: Rounded, 
#DesignerProperty: Key: Search, DisplayName: Search, FieldType: String, DefaultValue: , Description: Search
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: Boolean, DefaultValue: false, Description: Transition
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind

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
	Private bActivatable As Boolean
	Private sActive As String
	Private sActiveClass As String
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bDense As Boolean
	Private sExpandIcon As String
	Private bHoverable As Boolean
	Private sIndeterminateIcon As String
	Private sItemChildren As String
	Private sItemDisabled As String
	Private sItemKey As String
	Private sItemText As String
	Private sItems As String
	Private bLight As Boolean
	Private sLoadingIcon As String
	Private bMultipleActive As Boolean
	Private sOffIcon As String
	Private sOnIcon As String
	Private sOpen As String
	Private bOpenAll As Boolean
	Private bOpenOnClick As Boolean
	Private bReturnObject As Boolean
	Private bRounded As Boolean
	Private sSearch As String
	Private bSelectable As Boolean
	Private sSelectedColor As String
	Private sSelectionType As String
	Private bShaped As Boolean
	Private bTransition As Boolean
	Private sVIf As String
	Private sVShow As String
	Private sValue As String
	Private xitems As List
	Private extm As Map
	Private xReturnObject As String
	Private bHidden As Boolean
	Private xactive As List
	Private xopen As List
	Private xvalue As List
	Private bDeletable As Boolean
	Private VC As VueComponent				'ignore
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
	xitems.Initialize
	xReturnObject = $"${mName}returnobject"$
	' 
	extm.Initialize
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
	
	extm.Put("c", "mdi-language-c")
	extm.Put("c++", "mdi-language-cpp")
	
	sActive = $"${mName}active"$
	sOpen = $"${mName}open"$
	sValue = $"${mName}value"$
	sItems = $"${mName}items"$
	xactive.Initialize 
	xopen.Initialize 
	xvalue.Initialize
	sVShow = $"${mName}show"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bActivatable = Props.Get("Activatable")
		sActiveClass = Props.Get("ActiveClass")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bDense = Props.Get("Dense")
		sExpandIcon = Props.Get("ExpandIcon")
		bHoverable = Props.Get("Hoverable")
		sIndeterminateIcon = Props.Get("IndeterminateIcon")
		sItemChildren = Props.Get("ItemChildren")
		sItemDisabled = Props.Get("ItemDisabled")
		sItemKey = Props.Get("ItemKey")
		sItemText = Props.Get("ItemText")
		bLight = Props.Get("Light")
		sLoadingIcon = Props.Get("LoadingIcon")
		bMultipleActive = Props.Get("MultipleActive")
		sOffIcon = Props.Get("OffIcon")
		sOnIcon = Props.Get("OnIcon")
		bOpenAll = Props.Get("OpenAll")
		bOpenOnClick = Props.Get("OpenOnClick")
		bReturnObject = Props.Get("ReturnObject")
		bRounded = Props.Get("Rounded")
		sSearch = Props.Get("Search")
		bSelectable = Props.Get("Selectable")
		sSelectedColor = Props.Get("SelectedColor")
		sSelectionType = Props.Get("SelectionType")
		bShaped = Props.Get("Shaped")
		bTransition = Props.Get("Transition")
		sVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		bDeletable = Props.GetDefault("Deletable", False)
		bDeletable = BANanoShared.parseBool(bDeletable)
	End If
	'
	bActivatable = BANanoShared.parseBool(bActivatable)
	bDark = BANanoShared.parseBool(bDark)
	bDense = BANanoShared.parseBool(bDense)
	bHoverable = BANanoShared.parseBool(bHoverable)
	bLight = BANanoShared.parseBool(bLight)
	bMultipleActive = BANanoShared.parseBool(bMultipleActive)
	bOpenAll = BANanoShared.parseBool(bOpenAll)
	bOpenOnClick = BANanoShared.parseBool(bOpenOnClick)
	bReturnObject = BANanoShared.parseBool(bReturnObject)
	bRounded = BANanoShared.parseBool(bRounded)
	bSelectable = BANanoShared.parseBool(bSelectable)
	bShaped = BANanoShared.parseBool(bShaped)
	bTransition = BANanoShared.parseBool(bTransition)
	bHidden = BANanoShared.parseBool(bHidden)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-treeview ref="${mName}" id="${mName}"></v-treeview>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-treeview"
	
	'to show icons
	VElement.Append($"<v-template v-slot:prepend="{ item }">
<v-icon v-if="item.icon" v-text="item.icon"></v-icon>
</v-template>"$)	
	
	'add delete button
	If bDeletable Then
		VElement.Append($"<v-template v-slot:append="{ item }"><v-btn id="${mName}delete" icon><v-icon>mdi-delete</v-icon></v-btn></v-template>"$)
		Dim btn As VueElement = VElement.GetVueElement($"${mName}delete"$)
		btn.SetOnEventOwn(mCallBack, $"${mName}_delete"$, "click.stop", "item")
		VElement.BindVueElement(btn)
	End If
	
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":activatable", bActivatable)
	VElement.AddAttr(":active", sActive)
	VElement.SetData(sActive, xactive)
	VElement.AddAttr("active-class", sActiveClass)
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":dense", bDense)
	VElement.AddAttr("expand-icon", sExpandIcon)
	VElement.AddAttr(":hoverable", bHoverable)
	VElement.AddAttr("indeterminate-icon", sIndeterminateIcon)
	VElement.AddAttr("item-children", sItemChildren)
	VElement.AddAttr("item-disabled", sItemDisabled)
	VElement.AddAttr("item-key", sItemKey)
	VElement.AddAttr("item-text", sItemText)
	VElement.AddAttr(":items", sItems)
	VElement.SetData(sItems, xitems)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":value", sValue)
	VElement.SetData(sValue, xvalue)
	VElement.AddAttr("loading-icon", sLoadingIcon)
	VElement.AddAttr(":multiple-active", bMultipleActive)
	VElement.AddAttr("off-icon", sOffIcon)
	VElement.AddAttr("on-icon", sOnIcon)
	VElement.AddAttr(":open", sOpen)
	VElement.SetData(sOpen, xopen)
	VElement.AddAttr(":open-all", bOpenAll)
	VElement.AddAttr(":open-on-click", bOpenOnClick)
	VElement.AddAttr(":return-object", xReturnObject)
	VElement.SetData(xReturnObject, bReturnObject)
	VElement.AddAttr(":rounded", bRounded)
	VElement.AddAttr("search", sSearch)
	VElement.AddAttr(":selectable", bSelectable)
	VElement.AddAttr("selected-color", sSelectedColor)
	VElement.AddAttr("selection-type", sSelectionType)
	VElement.AddAttr(":shaped", bShaped)
	VElement.AddAttr(":transition", bTransition)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
	VElement.SetOnEventOwn(mCallBack, $"${mName}_checked"$, "input", Null)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_clicked"$, "update:active", Null)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_opened"$, "update:open", Null)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VTreeView
	VElement.AddClass(s)
	Return Me

End Sub

Sub AddAttr(p As String, v As Object) As VTreeView
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VTreeView
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VTreeView
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VTreeView
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VTreeView
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

'list of keys of active items
Sub UpdateActive(C As VueComponent, lactive As List)
	xactive = lactive
	C.SetData(sActive, lactive)	
End Sub

'list of keys of active items
Sub UpdateActiveOnApp(C As VuetifyApp, lactive As List)
	xactive = lactive
	C.SetData(sActive, lactive)	
End Sub

'list of keys of open items
Sub UpdateOpen(C As VueComponent, lopen As List)
	xopen = lopen
	C.SetData(sOpen, lopen)	
End Sub

'list of keys of open items
Sub UpdateOpenOnApp(C As VuetifyApp, lopen As List)
	xopen = lopen
	C.SetData(sOpen, lopen)	
End Sub

'list of keys of selected items
Sub UpdateSelected(C As VueComponent, lvalue As List)
	xvalue = lvalue
	C.SetData(sValue, lvalue)
End Sub

'list of keys of selected items
Sub UpdateSelectedOnApp(C As VuetifyApp, lvalue As List)
	xvalue = lvalue
	C.SetData(sValue, lvalue)
End Sub

'set checked items
Sub SetChecked(C As VueComponent, lvalue As List)
	xvalue = lvalue
	C.SetData(sValue, lvalue)
End Sub

'set checked items
Sub SetCheckedOnApp(C As VuetifyApp, lvalue As List)
	xvalue = lvalue
	C.SetData(sValue, lvalue)
End Sub

'get checked items
Sub GetChecked(C As VueComponent) As List
	Dim lst As List = C.getData(sValue)
	xvalue = lst
	Return lst
End Sub

'get checked items
Sub GetCheckedOnApp(C As VuetifyApp) As List
	Dim lst As List = C.getData(sValue)
	xvalue = lst
	Return lst
End Sub

Sub SetClicked(C As VueComponent, lvalue As List)
	xactive = lvalue
	C.SetData(sActive, lvalue)
End Sub

Sub SetClickedOnApp(C As VuetifyApp, lvalue As List)
	xactive = lvalue
	C.SetData(sActive, lvalue)
End Sub

Sub GetClicked(C As VueComponent) As List
	Dim lst As List = C.getData(sActive)
	xactive = lst
	Return lst
End Sub

Sub GetClickedOnApp(C As VuetifyApp) As List
	Dim lst As List = C.getData(sActive)
	xactive = lst
	Return lst
End Sub

Sub SetOpened(C As VueComponent, lvalue As List)
	xopen = lvalue
	C.SetData(sOpen, lvalue)
End Sub

Sub SetOpenedOnApp(C As VuetifyApp, lvalue As List)
	C.SetData(sOpen, lvalue)
	xopen = lvalue
End Sub

Sub GetOpened(C As VueComponent) As List
	Dim lst As List = C.getData(sOpen)
	xopen = lst
	Return lst
End Sub

Sub GetOpenedOnApp(C As VuetifyApp) As List
	Dim lst As List = C.getData(sOpen)
	xopen = lst
	Return lst
End Sub


Sub UpdateItems(C As VueComponent, litems As List)
	xitems = litems
	C.SetData(sItems, litems)
End Sub

Sub UpdateItemsOnApp(C As VuetifyApp, litems As List)
	xitems = litems
	C.SetData(sItems, litems)
End Sub

'Update Items
Sub Reload(C As VueComponent, vItems As List)
	xitems = vItems
	C.SetData(sItems, vItems)
End Sub

'Update Items
Sub ReloadOnApp(C As VuetifyApp, vItems As List)
	xitems = vItems
	C.SetData(sItems, vItems)
End Sub

'clear active, open, selected
Sub Clear(C As VueComponent)
	xactive.Initialize 
	xopen.Initialize 
	xvalue.Initialize
	xitems.Initialize 
	C.SetData(sActive, C.NewList)
	C.SetData(sOpen, C.NewList)
	C.SetData(sValue, C.NewList)
	C.SetData(sItems, C.NewList)
End Sub

'clear active, open, selected
Sub ClearOnApp(C As VuetifyApp)
	xactive.Initialize 
	xopen.Initialize 
	xvalue.Initialize
	xitems.Initialize 
	C.SetData(sActive, C.NewList)
	C.SetData(sOpen, C.NewList)
	C.SetData(sValue, C.NewList)
	C.SetData(sItems, C.NewList)
End Sub

Sub AddItem(parentID As String, key As String, text As String, mhref As String, mIcon As String, mDisabled As Boolean)
	parentID = parentID.tolowercase
	key = key.tolowercase
	If key = "" Then Return
	mIcon = FileIcon(mIcon)
	
	If sItemKey = "" Then sItemKey = "id"
	If sItemText = "" Then sItemText = "name"
	If sItemChildren = "" Then sItemChildren = "children"
	If sItemDisabled = "" Then sItemDisabled = "disabled"
	'
	Dim mitem As Map = CreateMap()
	mitem.Put(sItemKey, key)
	mitem.Put(sItemText, text)
	If mhref <> "" Then 
		mitem.Put("href", mhref)
	End If
	If mIcon <> "" Then 
		mitem.Put("icon", mIcon)
	End If
	mitem.Put(sItemDisabled, mDisabled)
	mitem.Put("parentid", parentID)
	xitems.Add(mitem)
End Sub

Sub Refresh(C As VueComponent)
	'unflatten the data
	If sItemChildren = "" Then sItemChildren = "children"
	Dim unflat As List = BANanoShared.Unflatten(xitems, sItemChildren)
	C.SetData(sItems, unflat)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	'unflatten the data
	If sItemChildren = "" Then sItemChildren = "children"
	Dim unflat As List = BANanoShared.Unflatten(xitems, sItemChildren)
	C.SetData(sItems, unflat)
End Sub

'return the icon for the file
private Sub FileIcon(ext As String) As String
	ext = ext.ToLowerCase
	If extm.ContainsKey(ext) Then
		Dim res As String = extm.Get(ext)
		Return res
	Else
		Return ext
	End If
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
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