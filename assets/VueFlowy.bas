B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'https://github.com/remcoplasmeyer/flowy-vue

#Event: add (item As Map)
#Event: remove (item As Map)
#Event: beforeMove (item As Map)
#Event: beforeAdd (item As Map)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: false, Description: Hidden
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: NodeComponent, DisplayName: NodeComponent, FieldType: String, DefaultValue: , Description: NodeComponent.
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 85vh, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: FillHeight, DisplayName: FillHeight, FieldType: Boolean, DefaultValue: false, Description: FillHeight
#DesignerProperty: Key: FitScreen, DisplayName: Fit Screen VH, FieldType: Boolean, DefaultValue: False, Description: FitScreen VH
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
	Private mCallBack As Object
	Private mName As String
	Private mEventName As String
	Private BANano As BANano 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private nodes As List
	Private nodesName As String
	Private mHasBeforeAdd As Boolean
	Private mHasBeforeMove As Boolean
	Private mHasDragStart As Boolean 
	Private sbeforemove As String = ""
	Private sbeforeadd As String = ""
	Private mNodeComponent As String = ""
	Public VElement As VueElement
	Private mClasses As String
	Private mStyles As String
	Private mAttributes As String
	Private sElevation As String
	Private sHeight As String
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private sVIf As String
	Private sWidth As String
	Private bFillHeight As Boolean
	Private bFitScreen As Boolean
	Private sKey As String
	Private VC As VueComponent
	Private sVShow As String
	Private bHidden As Boolean
End Sub

'initialize to the component you want to load to
Sub Initialize(CallBack As Object, Name As String , EventName As String)
	BANano.DependsOnAsset("flowy-vue.umd.min.js")
	BANano.DependsOnAsset("flowy-vue.css")
	'
	mCallBack = CallBack
	mName = Name.Replace("#","")
	mName = mName.tolowercase
	mEventName = EventName.Replace("#","") 
	mEventName = mEventName.tolowercase
	
	sbeforemove = $"${mName}_beforemove"$
	sbeforeadd = $"${mName}_beforeadd"$
	nodesName = $"${mName}nodes"$
	sKey = $"${mName}key"$
	sVShow = $"${mName}show"$
	nodes.Initialize 
End Sub

' this is the place where you create the view in html and run initialize javascript
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sElevation = Props.Get("Elevation")
		sHeight = Props.Get("Height")
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		sVIf = Props.Get("VIf")
		sWidth = Props.Get("Width")
		bFillHeight = Props.Get("FillHeight")
		bFitScreen = Props.Get("FitScreen")
		mHasBeforeAdd = Props.Get("HasBeforeAdd")
		mHasBeforeMove = Props.Get("HasBeforeMove")
		mHasDragStart = Props.Get("HasDragStart")
		mNodeComponent = Props.Get("NodeComponent")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
	End If
	'
	bFillHeight = BANanoShared.parseBool(bFillHeight)
	bFitScreen = BANanoShared.parseBool(bFitScreen)
	mHasBeforeAdd = BANanoShared.parseBool(mHasBeforeAdd)
	mHasBeforeMove = BANanoShared.parseBool(mHasBeforeMove)
	mHasDragStart = BANanoShared.parseBool(mHasDragStart)
	
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<flowy :key="${sKey}" ref="${mName}" id="${mName}"></flowy>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "flowy"
	VElement.SetData(sKey, DateTime.Now)
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Elevation = sElevation
	VElement.Attributes = mAttributes
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("width", sWidth)
	VElement.AddAttr(":fill-height", bFillHeight)
	VElement.FitScreen = bFitScreen
	VElement.Bind("nodes", nodesName)
	If bHidden Then
	VElement.VShow = sVShow
	VElement.SetData(sVShow, Not(bHidden))
	end if
	setBeforeMove(mHasBeforeMove)
	setBeforeAdd(mHasBeforeAdd)
	'SetOnEvent("add", "")
	'SetOnEvent("remove", "")
	'SetOnEvent("drag-start", "")
	VElement.SetData(nodesName, VElement.NewList)
	VElement.BindAllEvents
End Sub


'add a class
Sub AddClass(varClass As String) 
	VElement.AddClass(varClass)
End Sub

Sub setNodeComponent(s As String)
	mNodeComponent = s
End Sub

Sub SetOnEvent(event As String, args As String)
	VElement.SetOnEvent(mCallBack, event, args)
End Sub

Sub setBeforeMove(b As Boolean)
	mHasBeforeMove = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If b = False Then Return
	VElement.AddAttr(":before-move", sbeforemove)
	If SubExists(mCallBack, sbeforemove) = True Then
		Dim obj As Map = CreateMap()
		VElement.SetMethod(mCallBack, sbeforemove, Array(obj))
	Else
		BANano.Throw($"VueFlowy.${mName} - generate members for beforeMove method!"$)
	End If	
End Sub

Sub setBeforeAdd(b As Boolean)
	mHasBeforeAdd = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If b = False Then Return
	VElement.AddAttr(":before-add", sbeforeadd)
	If SubExists(mCallBack, sbeforemove) = True Then
		Dim obj As Map = CreateMap()
		VElement.SetMethod(mCallBack, sbeforeadd, Array(obj))
	Else
		BANano.Throw($"VueFlowy.${mName} - generate members for beforeAdd method!"$)
	End If		
End Sub

Sub ClearNodes
	nodes.Initialize 
	SetData(nodesName, nodes)
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	VElement.SetData(prop, value)
End Sub

'returns the BANanoElement
Sub getElement() As BANanoElement
	Return mElement
End Sub

'sets the BANanoElement
Sub setElement(varElement As BANanoElement)
	mElement = varElement
End Sub

'returns the tag id
Sub getID() As String
	Return mName
End Sub

'add the element to the parent
Sub AddToParent(targetID As String)
	targetID = targetID.tolowercase
	targetID = targetID.Replace("#","")
	mTarget = BANano.GetElement($"#${targetID}"$)
	DesignerCreateView(mTarget, Null)
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub

'remove component
Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'set the parent component
Sub setParentComponent(PC As VueComponent)
	VC = PC
End Sub

'use -1 for the parent node
Sub AddNode(parentID As Int, id As String, text As String, title As String, description As String, extradata As Map)
	 Dim data As Map = CreateMap()
	 data.Put("text", text)
	 data.Put("title", title)
	 data.Put("description", description)
	 If BANano.IsNull(extradata) = False Or BANano.IsUndefined(extradata) Then
	 	For Each k As String In extradata.keys
	 		Dim v As Object = extradata.Get(k)
			data.Put(k, v)
		Next
	 End If
	 '
	 Dim fn As Map = CreateMap()
	 fn.Put("id", id)
	 fn.Put("parentId", parentID)
	 fn.Put("nodeComponent", mNodeComponent)
	 fn.Put("data", data)
	 nodes.Add(fn)
End Sub

'set the parent component first
Sub Refresh
	VC.SetData(nodesName, nodes)
	VC.SetData(sKey, DateTime.Now)
End Sub

Sub RefreshOnApp(C As VuetifyApp)
	C.SetData(nodesName, nodes)
	C.SetData(sKey, DateTime.Now)
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


Sub BindState(c As VueComponent)
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
