B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Divider, DisplayName: Divider, FieldType: String, DefaultValue: /, Description: Divider

#DesignerProperty: Key: ItemKeys, DisplayName: Action Keys (;), FieldType: String, DefaultValue:  , Description: Action Icons
#DesignerProperty: Key: ItemTitles, DisplayName: Action Titles (;), FieldType: String, DefaultValue:  , Description: Action Titles
#DesignerProperty: Key: ItemTo, DisplayName: Action To (;), FieldType: String, DefaultValue:  , Description: Action To

#DesignerProperty: Key: Large, DisplayName: Large, FieldType: Boolean, DefaultValue: false, Description: Large
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
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
	Private bDark As Boolean
	Private sDivider As String
	Private sItems As String
	Private bLarge As Boolean
	Private bLight As Boolean
	Private sTextColor As String
	Private sTextColorIntensity As String
	Private sVIf As String
	Private sVShow As String
	Private xitems As List
	Private bHidden As Boolean
	'
	Private sItemKeys As String
	Private sItemTitles As String
	Private sItemTo As String
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
	xitems.Initialize 
	sItems = $"${mName}items"$
	sVShow = $"${mName}show"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bDark = Props.Get("Dark")
		sDivider = Props.Get("Divider")
		bLarge = Props.Get("Large")
		bLight = Props.Get("Light")
		sTextColor = Props.Get("TextColor")
		sTextColorIntensity = Props.Get("TextColorIntensity")
		sVIf = Props.Get("VIf")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sItemKeys = Props.GetDefault("ItemKeys","")
		sItemTitles = Props.GetDefault("ItemTitles","")
		sItemTo = Props.getdefault("ItemTo", "")
	End If
	'
	bDark = BANanoShared.parseBool(bDark)
	bLarge = BANanoShared.parseBool(bLarge)
	bLight = BANanoShared.parseBool(bLight)

	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-breadcrumbs ref="${mName}" id="${mName}"></v-breadcrumbs>"$).Get("#" & mName)
	End If
	'create the items
	'add the additional actions
	Dim rs As List
	rs.Initialize 
	'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemTitles = sItemTitles.Replace(",", ";")
	sItemTo = sItemTo.Replace(",", ";")
		
	Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
	Dim xto As List = BANanoShared.StrParseComma(";", sItemTo)
	Dim xtitles As List = BANanoShared.StrParseComma(";", sItemTitles)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xto = BANanoShared.ListTrimItems(xto)
	xtitles = BANanoShared.ListTrimItems(xtitles)
	'
	xitems.Initialize 
	Dim tItems As Int = xkeys.Size - 1
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iTo As String = xto.Get(itemCnt)
		Dim iTit As String = xtitles.Get(itemCnt)
		'
		AddItem(iKey, iTit, iTo, "", False, False, False)
	Next	
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-breadcrumbs"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Dark = bDark
	VElement.AddAttr("divider", sDivider)
	VElement.Bind("items", sItems)
	VElement.Large = bLarge
	VElement.Light = bLight
	VElement.TextColor = sTextColor
	VElement.TextColorIntensity = sTextColorIntensity
	VElement.VIf = sVIf
	VElement.SetData(sItems, xitems)
	If bHidden Then
		VElement.VShow = sVShow
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VBreadCrumbs
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VBreadCrumbs
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VBreadCrumbs
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VBreadCrumbs
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VBreadCrumbs
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VBreadCrumbs
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub Clear(C As VueComponent)
	C.SetData(sItems, C.NewList)
	xitems.Initialize 
End Sub

Sub ClearOnApp(C As VuetifyApp)
	C.SetData(sItems, C.NewList)
	xitems.Initialize 
End Sub

Sub AddItem(sID As String, sText As String, sTo As String, sHref As String, bExact As Boolean, bLink As Boolean,  bDisabled As Boolean)
	If BANano.IsNull(sID) Or BANano.IsUndefined(sID) Then sID = ""
	If BANano.IsNull(sText) Or BANano.IsUndefined(sText) Then sText = ""
	If BANano.IsNull(sTo) Or BANano.IsUndefined(sTo) Then sTo = ""
	If BANano.IsNull(sHref) Or BANano.IsUndefined(sHref) Then sHref = ""
	 
	Dim ni As Map = CreateMap()
	ni.Put("disabled", bDisabled)
	ni.Put("exact", bExact)
	ni.Put("href", sHref)
	ni.Put("link", bLink)
	ni.Put("text", sText)
	ni.Put("to", sTo)
	ni.Put("id", sID)
	xitems.Add(ni)
End Sub

Sub Refresh(C As VueComponent)
	C.SetData(sItems, xitems)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(sItems, xitems)
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

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub

'Sub Enable(C As VueComponent)
'	updatedisabled(VC, False)
'End Sub
'
'Sub Disable(C As VueComponent)
'	updateDisabled(VC, True)
'End Sub