B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: AlignTop, DisplayName: AlignTop, FieldType: Boolean, DefaultValue: false, Description: AlignTop
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Reverse, DisplayName: Reverse, FieldType: Boolean, DefaultValue: false, Description: Reverse
'
#DesignerProperty: Key: HasItems, DisplayName: Has Items, FieldType: Boolean, DefaultValue: True, Description: Has Items
#DesignerProperty: Key: ItemKey, DisplayName: Item Key, FieldType: String, DefaultValue: id, Description: Item Key
#DesignerProperty: Key: ItemColor, DisplayName: Item Color, FieldType: String, DefaultValue: color, Description: Item Color
#DesignerProperty: Key: ItemIcon, DisplayName: Item Icon, FieldType: String, DefaultValue: icon, Description: Item Icon
#DesignerProperty: Key: ItemIconColor, DisplayName: Item Icon Color, FieldType: String, DefaultValue: iconcolor , Description: Item Icon Color

#DesignerProperty: Key: ItemDark, DisplayName: Item Dark, FieldType: Boolean, DefaultValue: False, Description: Item Dark
#DesignerProperty: Key: ItemFillDot, DisplayName: Item Fill Dot, FieldType: Boolean, DefaultValue: False, Description: Item Fill Dot
#DesignerProperty: Key: ItemHideDot, DisplayName: Item Hide Dot, FieldType: Boolean, DefaultValue: False, Description: Item Hide Dot

#DesignerProperty: Key: ItemLight, DisplayName: Item Light, FieldType: Boolean, DefaultValue: False, Description: Item Light
#DesignerProperty: Key: ItemPosition, DisplayName: Item Position, FieldType: String, DefaultValue: left, Description: Item Position, List: left|none|right
#DesignerProperty: Key: ItemSize, DisplayName: Item Size, FieldType: String, DefaultValue: small, Description: Item Size, List: large|small
'
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
	Private bAlignTop As Boolean
Private bDark As Boolean
Private bDense As Boolean
Private bLight As Boolean
Private bReverse As Boolean
Private sVIf As String
Private sVShow As String
Private bHidden As Boolean
'
	Private sItemColor As String
Private bItemDark As Boolean
Private bItemFillDot As Boolean
Private bItemHideDot As Boolean
Private sItemIcon As String
Private sItemIconColor As String
Private sItemKey As String
Private bItemLight As Boolean
Private sItemPosition As String
Private sItemSize As String
Private xitems As List
Private sitems As String
Private bHasItems As Boolean
	Private VC As VueComponent						'ignore
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
	sVShow = $"${mName}show"$
	sitems = $"${mName}items"$
	xitems.Initialize 
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAlignTop = Props.Get("AlignTop")
		bDark = Props.Get("Dark")
		bDense = Props.Get("Dense")
		bLight = Props.Get("Light")
		bReverse = Props.Get("Reverse")
		sVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		sItemColor = Props.GetDefault("ItemColor", "")
		bItemDark = Props.GetDefault("ItemDark", False)
		bItemFillDot = Props.GetDefault("ItemFillDot", False)
		bItemHideDot = Props.GetDefault("ItemHideDot", False)
		sItemIcon = Props.GetDefault("ItemIcon", "")
		sItemIconColor = Props.GetDefault("ItemIconColor", "")
		sItemKey = Props.GetDefault("ItemKey", "")
		bItemLight = Props.GetDefault("ItemLight", False)
		sItemPosition = Props.GetDefault("ItemPosition", "")
		sItemSize = Props.GetDefault("ItemSize", "")
		bHasItems = Props.GetDefault("HasItems", False)
	End If
	'
	bAlignTop = BANanoShared.parseBool(bAlignTop)
bDark = BANanoShared.parseBool(bDark)
bDense = BANanoShared.parseBool(bDense)
bLight = BANanoShared.parseBool(bLight)
bReverse = BANanoShared.parseBool(bReverse)
bHidden = BANanoShared.parseBool(bHidden)
bItemDark = BANanoShared.parseBool(bItemDark)
bItemFillDot = BANanoShared.parseBool(bItemFillDot)
bItemHideDot = BANanoShared.parseBool(bItemHideDot)
bItemLight = BANanoShared.parseBool(bItemLight)
bHasItems = BANanoShared.parseBool(bHasItems)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-timeline ref="${mName}" id="${mName}"></v-timeline>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-timeline"
	'****
	If bHasItems Then
		'DEFINE THE ITEMS
		Dim sItemName As String = $"${mName}item"$
		VElement.Append($"<v-timeline-item id="${sItemName}"></v-timeline-item>"$)
	'
		Dim VItem As VueElement
		VItem.Initialize(mCallBack, sItemName, sItemName) 
		VItem.TagName = "v-timeline-item"
		VItem.AddAttr("v-for", $"item in ${sitems}"$)
		VItem.AddAttr(":color", $"item.${sItemColor}"$)
		VItem.AddAttr(":dark", bItemDark)
		VItem.AddAttr(":fill-dot", bItemFillDot)
		VItem.AddAttr(":hide-dot", bItemHideDot)
		VItem.AddAttr(":icon", $"item.${sItemIcon}"$)
		VItem.AddAttr(":icon-color", $"item.${sItemIconColor}"$)
		VItem.AddAttr(":key", $"item.${sItemKey}"$)
		VItem.AddAttr(":light", bItemLight)
		'
		Select Case sItemPosition
		Case "left"
			VItem.AddAttr(":left", True)
		Case "right"
			VItem.AddAttr(":right", True)
		End Select
		'
		Select Case sItemSize
		Case "large"
			VItem.AddAttr(":large", True)
		Case "small"
			VItem.AddAttr(":small", True)
		End Select
		VElement.BindVueElement(VItem)
		VElement.SetData(sitems, VElement.NewList)
	End If
	'
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":align-top", bAlignTop)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":dense", bDense)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":reverse", bReverse)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
End Sub

'add a timeline item
Sub AddItem(sKey As String, sColor As String, sIcon As String, sIconColor As String, sDateTime As String, sTitle As String, sEvent As String)
	Dim ni As Map = CreateMap()
	ni.Put(sItemKey, sKey)
	ni.Put(sItemColor, sColor)
	ni.Put(sItemIcon, sIcon)
	ni.Put(sItemIconColor, sIconColor)
	ni.Put("time", sDateTime)
	ni.Put("event", sEvent)
	ni.Put("title", sTitle)
	xitems.Add(ni)
End Sub

'add a map
Sub AddItem1(anitem As Map)
	xitems.Add(anitem)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VTimeLine
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VTimeLine
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VTimeLine
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VTimeLine
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VTimeLine
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VueComponent, b As Boolean) As VTimeLine
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

'clear the items
Sub Clear(C As VueComponent)
	xitems.Initialize 
	C.SetData(sitems, xitems)
End Sub

Sub ClearOnApp(C As VuetifyApp)
	xitems.Initialize 
	C.SetData(sitems, xitems)
End Sub

'refresh the items
Sub Refresh(C As VueComponent)
	C.SetData(sitems, xitems)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sitems, xitems)
End Sub

'get the item
Sub Item As VueElement
	Dim iName As String = $"${mName}item"$
	Dim elx As VueElement
	elx.Initialize(mCallBack, iName, iName)
	Return elx
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