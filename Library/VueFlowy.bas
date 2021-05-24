B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: add (item As Map)
#Event: remove (item As Map)
#Event: dragStart (item As Map)
#Event: beforeMove (item As Map)
#Event: beforeAdd (item As Map)

#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: HasBeforeAdd, DisplayName: Before Add, FieldType: Boolean, DefaultValue: True, Description: Before Add.
#DesignerProperty: Key: HasBeforeMove, DisplayName: Before Move, FieldType: Boolean, DefaultValue: True, Description: Before Move.
#DesignerProperty: Key: NodeComponent, DisplayName: NodeComponent, FieldType: String, DefaultValue: , Description: NodeComponent.

Sub Class_Globals
	Public bindings As Map
	Public methods As Map
	Private mCallBack As Object
	Private mName As String
	Private mEventName As String
	Private BANano As BANano 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Public VC As VueComponent	
	Private nodes As List
	Private nodesName As String
	Private mHasBeforeAdd As Boolean = True
	Private mHasBeforeMove As Boolean = True
	Private mHasDragStart As Boolean = True
	Private sbeforemove As String = ""
	Private sbeforeadd As String = ""
	Private mNodeComponent As String = ""
End Sub

'initialize to the component you want to load to
Public Sub Initialize(CallBack As Object, Name As String , EventName As String)
	mCallBack = CallBack
	methods.Initialize 
	bindings.Initialize
	mName = Name.Replace("#","")
	mName = mName.tolowercase
	mEventName = EventName.Replace("#","") 
	mEventName = mEventName.tolowercase
	
	sbeforemove = $"${mName}_beforemove"$
	sbeforeadd = $"${mName}_beforeadd"$
	'
	Dim fKey As String = $"#${mName}"$
	If BANano.Exists(fKey) Then 
		mElement = BANano.GetElement(fKey)
	End If
	nodesName = $"${mName}nodes"$
	nodes.Initialize 
	SetData(nodesName, nodes)
End Sub

' this is the place where you create the view in html and run initialize javascript
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mHasBeforeAdd = Props.Get("HasBeforeAdd")
		mHasBeforeMove = Props.Get("HasBeforeMove")
		mHasDragStart = Props.Get("HasDragStart")
		mNodeComponent = Props.Get("NodeComponent")
	End If
		
	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	mElement.SetAttr(":nodes", nodesName)
	SetOnEvent("add", "")
	SetOnEvent("remove", "")
	SetOnEvent("drag-start", "")
	setBeforeMove(mHasBeforeMove)
	setBeforeAdd(mHasBeforeAdd)
End Sub

'add a class
public Sub AddClass(varClass As String) 
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then 
		mElement.AddClass(varClass)
	End If
End Sub


Sub setNodeComponent(s As String)
	mNodeComponent = s
End Sub

Sub SetOnEvent(event As String, args As String)
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
	If SubExists(mCallBack, methodName) = False Then Return
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim scode As String
	If args = "" Then
		scode = methodName
	Else	
		scode = $"${methodName}(${args})"$
	End If
	mElement.SetAttr($"v-on:${event}"$, scode)
	'arguments for the event
	Dim item As Map 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(item))
	methods.Put(methodName, cb)
End Sub

Sub setBeforeMove(b As Boolean)
	mHasBeforeMove = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If b = False Then Return
	mElement.SetAttr(":beforeMove", sbeforemove)
End Sub

Sub setBeforeAdd(b As Boolean)
	mHasBeforeAdd = b
	If BANano.IsNull(b) Or BANano.IsUndefined(b) Then Return
	If b = False Then Return
	mElement.SetAttr(":beforeAdd", sbeforeadd)
End Sub

Sub ClearNodes
	nodes.Initialize 
	SetData(nodesName, nodes)
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

'return the generated html
Sub ToString As String
	'build the 'class' attribute
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"<flowy ref="${mName}" id="${mName}"></flowy>"$)
	Return sb.tostring
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

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
	End If
End Sub

'remove component
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
	'
	Dim obj As Map
	If BANano.IsNull(mHasBeforeMove) = False Or BANano.IsUndefined(mHasBeforeMove) = False Then
		VC.SetComputed(sbeforemove, mCallBack, sbeforemove, Array(obj))
	End If
	If BANano.IsNull(mHasBeforeAdd) = False Or BANano.IsUndefined(mHasBeforeAdd) = False Then
		VC.SetComputed(sbeforeadd, mCallBack, sbeforeadd, Array(obj))
	End If
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