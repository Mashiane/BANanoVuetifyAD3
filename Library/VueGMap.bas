B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

'Uncomment the events you want to show to the user and implement the HandleEvents in DesignerCreateView 
#Event: MarkerClick (marker As Map)
'#Event: Blur (event As BANanoEvent)
'#Event: Resize (event As BANanoEvent)
'#Event: Scroll (event As BANanoEvent)
'#Event: Keydown (event As BANanoEvent)
'#Event: KeyPress (event As BANanoEvent)
'#Event: KeyUp (event As BANanoEvent)
'#Event: Click (event As BANanoEvent)
'#Event: ContextMenu (event As BANanoEvent)
'#Event: Dblclick (event As BANanoEvent)
'#Event: MouseDown (event As BANanoEvent)
'#Event: MouseEnter (event As BANanoEvent)
'#Event: MouseLeave (event As BANanoEvent)
'#Event: MouseMove (event As BANanoEvent)
'#Event: MouseOver (event As BANanoEvent)
'#Event: MouseOut (event As BANanoEvent)
'#Event: MouseUp (event As BANanoEvent)
'#Event: Wheel (event As BANanoEvent)
'#Event: Drag (event As BANanoEvent)
'#Event: DragEnd (event As BANanoEvent)
'#Event: DragEnter (event As BANanoEvent)
'#Event: DragStart (event As BANanoEvent)
'#Event: DragLeave (event As BANanoEvent)
'#Event: DragOver (event As BANanoEvent)
'#Event: Drop (event As BANanoEvent)
'#Event: TouchCancel (event As BANanoEvent)
'#Event: TouchEnd (event As BANanoEvent)
'#Event: TouchEnter (event As BANanoEvent)
'#Event: TouchLeave (event As BANanoEvent)
'#Event: TouchMove (event As BANanoEvent)
'#Event: TouchStart (event As BANanoEvent)
'#Event: Change (event As BANanoEvent)

' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: GoogleMapKey, DisplayName: GoogleMapKey, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FullScreenControl, DisplayName: FullScreenControl, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: DisableDefaultUI, DisplayName: DisableDefaultUI, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: MapTypeControl, DisplayName: MapTypeControl, FieldType: Boolean, DefaultValue: , Description:
#DesignerProperty: Key: MapType, DisplayName: MapType, FieldType: String, DefaultValue: roadmap, Description:, List: roadmap|satellite|hybrid|terrain
#DesignerProperty: Key: RotateControl, DisplayName: RotateControl, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: ZoomControl, DisplayName: ZoomControl, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: Zoom, DisplayName: Zoom, FieldType: Int, DefaultValue: 18, Description:
#DesignerProperty: Key: StreetViewControl, DisplayName: StreetViewControl, FieldType: Boolean, DefaultValue: , Description:
#DesignerProperty: Key: ScaleControl, DisplayName: ScaleControl, FieldType: Boolean, DefaultValue: , Description:
#DesignerProperty: Key: MarkersVisible, DisplayName: MarkersVisible, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: MarkersClickable, DisplayName: MarkersClickable, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: MarkersDraggable, DisplayName: MarkersDraggable, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: KMLVisible, DisplayName: KMLVisible, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: KMLClickable, DisplayName: KMLClickable, FieldType: Boolean, DefaultValue:  , Description:
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue:  , Description:
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
	Private mStyle As String = ""
	Private mAttributes As String = ""
	Private mStyle As String = ""
	Private classList As Map
	Private styleList As Map
	Private attributeList As Map
	Private mStates As String
	Public bindings As Map
	Public methods As Map
	Private stVElse As String = ""
	Private stVElseIf As String = ""
	Private stVIf As String = ""
	Private stVShow As String = ""
	Private mGoogleMapKey As String = ""
	'
	Private mgmap As VueElement
	Private mkmllayer As VueElement
	Private mmarkers As VueElement
	Private minfowindow As VueElement
	
	Private skmllayer As String
	Private smarkers As String
	Private sinfowindow As String
	'
	Private points As List
	Private markerName As String
	Private iwOptions As String
	Private iwPosition As String
	Private iwOpen As String
	Private curMidx As String
	Private kmlName As String
	Private options As Map
	Public VC As VueComponent	
	Private bFullScreenControl As Boolean
	Private bDisableDefaultUI As Boolean
	Private bMapTypeControl As Boolean
	Private mMapType As String
	Private bRotateControl As Boolean
	Private bZoomControl As Boolean
	Private mZoom As String
	Private bStreetViewControl As Boolean
	Private bScaleControl As Boolean
	Private bMarkersVisible As Boolean
	Private bMarkersClickable As Boolean
	Private bMarkersDraggable As Boolean
	Private bKMLVisible As Boolean
	Private bKMLClickable As Boolean
	Private smaptype As String
	Private scenter As String
	Private szoom As String
	Private smarkersVisible As String
	Private soptions As String
	Private skmlvisible As String
	Private sMarkersClickable As String
	Private sMarkersDraggable As String
	Private sKMLClickable As String
	Private mHeight As String
	Private mWidth As String
	Public CurrentPosition As Map
	Public const MAPTYPE_ROADMAP As String = "roadmap"
	Public const MAPTYPE_SATELLITE As String = "satellite"
	Public const MAPTYPE_HYBRID As String = "hybrid"
	Public const MAPTYPE_TERRAIN As String = "terrain"
	Private gmapkey As String
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.tolowercase
	mEventName = EventName.ToLowerCase
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	bindings.Initialize
	methods.Initialize
	'
	gmapkey = $"${mName}key"$
	skmllayer = $"${mName}kmllayer"$
	smarkers = $"${mName}markers"$
	sinfowindow = $"${mName}infowindow"$
	options.Initialize 
	'
	markerName = $"${mName}markers"$
	kmlName = $"${mName}kmlayers"$
	iwPosition = $"${mName}iwpos"$
	iwOptions = $"${mName}opt"$
	iwOpen = $"${mName}open"$
	curMidx = $"${mName}midx"$
	smaptype = $"${mName}maptype"$
	scenter = $"${mName}center"$
	szoom = $"${mName}zoom"$
	smarkersVisible = $"${mName}markersvisible"$
	soptions = $"${mName}options"$
	skmlvisible = $"${mName}kmlvisible"$
	sMarkersClickable = $"${mName}markersclickable"$
	sMarkersDraggable = $"${mName}markersdraggable"$
	sKMLClickable = $"${mName}kmlclickable"$
	
	options.Initialize
	points.Initialize
	'
	mGoogleMapKey = ""
	bFullScreenControl = True
	bDisableDefaultUI = True
	bMapTypeControl = True
	mMapType = "roadmap"
	bRotateControl = True
	bZoomControl = True
	mZoom = 18
	bStreetViewControl = False
	bScaleControl = True
	bMarkersVisible = True
	bMarkersClickable = True
	bMarkersDraggable = False
	bKMLVisible = False
	bKMLClickable = False
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
End Sub

Sub Use(vuetify As VuetifyApp)
	'ensure that the module is loaded
	If vuetify.ModuleExist("googlemap") = False Then
		Dim VueGoogleMaps As BANanoObject
		VueGoogleMaps.Initialize("VueGoogleMaps")
		
		Dim load As Map = CreateMap()
		load.Put("key", mGoogleMapKey)
		load.Put("libraries", "places")
		'
		Dim VueGoogleMapsOptions As Map = CreateMap()
		VueGoogleMapsOptions.Put("load", load)
		VueGoogleMapsOptions.Put("installComponents", True)
		vuetify.Use1(VueGoogleMaps, VueGoogleMapsOptions)
		vuetify.AddModule("googlemap")
	End If
End Sub

' this is the place where you create the view in html and run initialize javascript
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target

	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyle = Props.Get("Style")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mStates = Props.Get("States")
		stVElse = Props.Get("VElse")
		stVElseIf = Props.Get("VElseIf")
		stVIf = Props.Get("VIf")
		stVShow = Props.Get("VShow")
		mGoogleMapKey = Props.Get("GoogleMapKey")
		bFullScreenControl = Props.Get("FullScreenControl")
		bDisableDefaultUI = Props.Get("DisableDefaultUI")
		bMapTypeControl = Props.Get("MapTypeControl")
		mMapType = Props.Get("MapType")
		bRotateControl = Props.Get("RotateControl")
		bZoomControl = Props.Get("ZoomControl")
		mZoom = Props.Get("Zoom")
		bStreetViewControl = Props.Get("StreetViewControl")
		bScaleControl = Props.Get("ScaleControl")
		bMarkersVisible = Props.Get("MarkersVisible")
		bMarkersClickable = Props.Get("MarkersClickable")
		bMarkersDraggable = Props.Get("MarkersDraggable")
		bKMLVisible = Props.Get("KMLVisible")
		bKMLClickable = Props.Get("KMLClickable")
		mHeight = Props.Get("Height")
		mWidth = Props.Get("Width")
	End If
	
	AddAttr("v-else", stVElse)
	AddAttr("v-else-if", stVElseIf)
	AddAttr("v-if", stVIf)
	AddAttr("v-show", stVShow)
	AddClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	
	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
	setStates(mStates)
	'
	mgmap.Initialize(mCallBack,mName,mName)
	mkmllayer.Initialize(mCallBack,skmllayer,skmllayer)
	mmarkers.Initialize(mCallBack,smarkers,smarkers)
	minfowindow.Initialize(mCallBack,sinfowindow,sinfowindow)
	'
	mgmap.SetAttr(":options", soptions)
	mgmap.SetAttr(":zoom", szoom)
	mgmap.SetAttr(":center", scenter)
	mgmap.SetAttr(":map-type-id", smaptype)
	'
	setHeight(mHeight)
	setWidth(mWidth)
	'
	mmarkers.SetAttr(":position","m.position")
	mmarkers.vif = smarkersVisible
	mmarkers.SetAttr(":clickable", sMarkersClickable)
	mmarkers.SetAttr(":draggable", sMarkersDraggable)
	mmarkers.SetAttr(":icon", "m.icon")
	mmarkers.SetAttr(":title", "m.label")
	mmarkers.SetAttr(":animation", "m.animation")
	mmarkers.VFor = $"(m,i) in ${markerName}"$
	mmarkers.BindKey("m.id")
	mmarkers.SetAttr("v-on:click", "toggleinfowindow(m, i)")
	'
	Dim m, i As Object
	Dim cb As BANanoObject = BANano.CallBack(Me, "toggleInfoWindow", Array(m, i))
	SetCallBack("toggleInfoWindow", cb)
	'
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(Me, "closeInfoWindow", Array(e))
	SetCallBack("closeInfoWindow", cb)
	'
	minfowindow.SetAttr(":options", iwOptions)
	minfowindow.SetAttr(":position", iwPosition)
	minfowindow.SetAttr(":opened", iwOpen)
	minfowindow.SetAttr("v-on:closeclick", "closeinfowindow")
	'
	Dim woptions As Map = CreateMap()
	Dim pixelOffset As Map = CreateMap()
	pixelOffset.Put("width", 0)
	pixelOffset.put("height", -35)
	woptions.Put("content", "")
	woptions.put("pixelOffset", pixelOffset)
	'
	mkmllayer.vif = skmlvisible
	mkmllayer.SetAttr(":clickable", sKMLClickable)
	mkmllayer.VFor = $"lyr in ${kmlName}"$
	mkmllayer.SetAttr(":url", "lyr.url")
	'
	BindVueElement(mgmap)
	BindVueElement(minfowindow)
	BindVueElement(mkmllayer)
	BindVueElement(mmarkers)
	'
	SetData(soptions, CreateMap())
	SetData(iwPosition, Null)
	SetData(iwOpen, False)
	SetData(curMidx, Null)
	SetData(markerName, NewList)
	SetData(iwOptions, woptions)
	SetData(kmlName, NewList)
	SetData(gmapkey, DateTime.Now)
	'
	setFullScreenControl(bFullScreenControl)
	setDisableDefaultUI(bDisableDefaultUI)
	setMapTypeControl(bMapTypeControl)
	setRotateControl(bRotateControl)
	setStreetViewControl(bStreetViewControl)
	setScaleControl(bScaleControl)
	setZoomControl(bZoomControl)
	setMapType(mMapType)
	setKMLVisible(bKMLVisible)
	setMarkersVisible(bMarkersVisible)
	setZoom(mZoom)
	setMarkersClickable(bMarkersClickable)
	setMarkersDraggable(bMarkersDraggable)
	setKMLClickable(bKMLClickable)
	
End Sub

'set the google map key
Sub setGoogleMapKey(xGoogleMapKey As String)
	mGoogleMapKey = xGoogleMapKey
End Sub

'get google map key
Sub getGoogleMapKey As String
	Return mGoogleMapKey
End Sub

'remove component
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

'set the height
Sub setHeight(vHeight As String)
	If BANano.IsNull(vHeight) Or BANano.IsUndefined(vHeight) Then vHeight = "500px"
	mHeight = vHeight
	mgmap.AddStyle("height", vHeight)
End Sub

'get the height
Sub getHeight As String
	Return mHeight
End Sub

'set the width
Sub setWidth(vWidth As String)
	If BANano.IsNull(vWidth) Or BANano.IsUndefined(vWidth) Then vWidth = "500px"
	mWidth = vWidth
	mgmap.AddStyle("width", vWidth)
End Sub

'get the width
Sub getWidth As String
	Return mWidth
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
	'xTemplate = xTemplate.Replace("v-template", "template")
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
	'
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"<gmap-map :key="${gmapkey}" ref="${mName}" id="${mName}"><gmap-marker id="${smarkers}"></gmap-marker><google-kml-layer id="${skmllayer}"></google-kml-layer><gmap-info-window id="${sinfowindow}"></gmap-info-window></gmap-map>"$)
	Return sb.tostring
End Sub

'return html of the element
Sub getHTML As String
	If mElement <> Null Then
		Return mElement.GetHTML
	Else
		Return ""
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

'new list
private Sub NewList As List
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

'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	Dim elIT As VueElement
	elIT.Initialize(mCallBack, elID, elID)
	elIT.TagName = tag
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

'add classes
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

Sub SetAttr(varProp As String, varValue As String)
	AddAttr(varProp, varValue)
End Sub

'change the text of the element
Sub SetText(varText As String)
	AddChild(varText)
End Sub

'bind a property
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
		'varValue = varValue.Replace("~","=")
		'varValue = varValue.Replace("#","$")
		'we are adding a string
		If varValue.StartsWith(":") Then
			Dim rname As String = BANanoShared.MidS(varValue, 2)
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
'		Select Case varProp
'			Case "v-model", "v-show", "v-if", "v-else-if", "required", "disabled", "readonly"
'				If varValue <> "" Then
'					bindings.Put(varValue, Null)
'				End If
'		End Select
	End If
	Return
End Sub

'remove code binding
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

'set classes
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

'set v-else
public Sub setVElse(varVElse As String)
	AddAttr("v-else", varVElse)
	stVElse = varVElse
End Sub

'get v-else
public Sub getVElse() As String
	Return stVElse
End Sub

'set v-else-if
public Sub setVElseIf(varVElseIf As String)
	AddAttr("v-else-if", varVElseIf)
	stVElseIf = varVElseIf
End Sub

'get v-else-if
public Sub getVElseIf() As String
	Return stVElseIf
End Sub

'set v-if
public Sub setVIf(varVIf As String)
	AddAttr("v-if", varVIf)
	stVIf = varVIf
End Sub

'get v-if
public Sub getVIf() As String
	Return stVIf
End Sub

'set v-show
public Sub setVShow(varVShow As String)
	AddAttr("v-show", varVShow)
	stVShow = varVShow
End Sub

'get v-show
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

'set an event
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
	Dim sCode As String = $"${methodName}(${args})"$
	AddAttr($"v-on:${event}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(eventHandler, methodName, Array(e))
	methods.Put(methodName, cb)
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

'check ID validity
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

'append an element
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

'cstr
private Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'convert a map to a list
private Sub Map2List(moptions As Map, sourcefield As String, displayfield As String) As List
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


'set direct method
Sub SetMethod(methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	If SubExists(mCallBack, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, args)
		methods.Put(methodName, cb)
		bindings.Remove(methodName)
	Else
		Log("SetMethod: " & methodName & ", callback is missing.")
	End If
End Sub

'set center pos
Sub SetCenterOnLastPos				'ignoredeadcode
	'get the last point and center on it
	Dim ps As Int = points.Size - 1
	If ps = -1 Then Return
	Dim lp As Map = points.get(ps)
	Dim latlon As Map = lp.Get("position")
	SetCenterLatLon(latlon)
End Sub

'show info window
Sub ShowInfoWindow(b As Boolean)			'ignoredeadcode
	VC.SetData(iwOpen, b)
End Sub

'add kml url
Sub AddKMLURL(url As String)
	Dim kml As List = VC.GetData(kmlName)
	Dim nl As Map = CreateMap()
	nl.put("url", url)
	kml.add(nl)
	VC.SetData(kmlName, kml)
End Sub

'update markers visibility
Sub UpdateMarkersVisible(b As Boolean)
	VC.SetData(smarkersVisible, b)
	bMarkersVisible = b
End Sub

'set markers visibility
Sub setMarkersVisible(b As Boolean)
	bMarkersVisible = b
	SetData(smarkersVisible, b)
End Sub

'get markers visibility
Sub getMarkersVisible As Boolean
	Return bMarkersVisible
End Sub

'update kml visibility
Sub UpdateKmlVisible(b As Boolean)
	VC.SetData(skmlvisible, b)
End Sub

'set kml visibility
Sub setKMLVisible(b As Boolean)
	bKMLVisible = b
	SetData(skmlvisible, b)
End Sub

'get kml visibility
Sub getKMLVisible As Boolean
	Return bKMLVisible
End Sub

'close info window
Private Sub closeInfoWindow			'ignoreDeadCode
	VC.SetData(iwOpen, False)
End Sub

'toggle info window
private Sub toggleInfoWindow(m As Map, i As Object)
	Dim infoWindowPos As Map = m.Get("position")
	Dim mcontent As String = m.Get("infoText")
	Dim infoOptions As Map = VC.GetData(iwOptions)
	infoOptions.Put("content", mcontent)
	VC.SetData(iwPosition, infoWindowPos)
	VC.SetData(iwOptions, infoOptions)
	'
	Dim cIdx As Object = VC.getdata(curMidx)
	If cIdx = i Then
		VC.ToggleState(iwOpen)
	Else
		VC.SetData(iwOpen, True)
		VC.SetData(curMidx, i)
	End If
	CurrentPosition = m
	If SubExists(mCallBack, $"${mName}_markerclick"$) Then
		BANano.CallSub(mCallBack, $"${mName}_markerclick"$, Array(m))
	End If
End Sub

'clear all markers
Sub ClearMarkers   'ignoreDeadcode
	points.Initialize
End Sub

'refresh markers
Sub Refresh
	VC.SetData(gmapkey, DateTime.Now)
	VC.SetData(soptions, options)
	VC.SetData(markerName, points)
End Sub

'refresh markers
Sub Refresh1
	VC.SetData(soptions, options)
	VC.SetData(markerName, points)
End Sub

Sub AddMarker(mID As String, lat As Double, lng As Double, label As String, info As String)
	mID = mID.tolowercase
	Dim point As Map = CreateMap()
	Dim marker As Map = CreateMap()
	'
	lat = BANano.parseFloat(lat)
	lng = BANano.parseFloat(lng)
	
	point.Put("lat", lat)
	point.put("lng", lng)
	'
	marker.put("position", point)
	marker.put("id", mID)
	If info <> Null Then marker.Put("infoText", info)
	If label <> Null Then marker.put("label", label)
	points.add(marker)
End Sub

Sub AddMarker1(mID As String, lat As Double, lng As Double, label As String, info As String, icon As String)
	mID = mID.tolowercase
	Dim point As Map = CreateMap()
	Dim marker As Map = CreateMap()
	'
	lat = BANano.parseFloat(lat)
	lng = BANano.parseFloat(lng)
	
	point.Put("lat", lat)
	point.put("lng", lng)
	'
	marker.put("position", point)
	marker.put("id", mID)
	If icon <> Null Then marker.Put("icon", icon)
	If info <> Null Then marker.Put("infoText", info)
	If label <> Null Then marker.put("label", label)
	marker.Put("animation", "bounce")
	points.add(marker)
End Sub

Sub setZoomControl(b As Boolean)
	options.put("zoomControl", b)
	bZoomControl = b
End Sub

Sub getZoomControl As Boolean
	Return bZoomControl
End Sub

Sub setScaleControl(b As Boolean)
	options.put("scaleControl", b)
	bScaleControl = b
End Sub

Sub getScaleControl As Boolean
	Return bScaleControl
End Sub

Sub setStreetViewControl(b As Boolean)
	options.put("streetViewControl", b)
	bStreetViewControl = b
End Sub

Sub getStreetViewControl As Boolean
	Return bStreetViewControl
End Sub

Sub setRotateControl(b As Boolean)
	options.put("rotateControl", b)
	bRotateControl = b
End Sub

Sub getRotateControl As Boolean
	Return bRotateControl
End Sub

Sub setMapTypeControl(b As Boolean)
	options.put("mapTypeControl", b)
	bMapTypeControl = b
End Sub

Sub getMapTypeControl As Boolean
	Return bMapTypeControl
End Sub

Sub setDisableDefaultUI(b As Boolean)
	options.put("disableDefaultUi", b)
	bDisableDefaultUI = b
End Sub

Sub getDisableDefaultUI As Boolean
	Return bDisableDefaultUI
End Sub

Sub setFullScreenControl(b As Boolean)
	options.put("fullscreenControl", b)
	bFullScreenControl = b
End Sub

Sub getFullScreenControl As Boolean
	Return bFullScreenControl
End Sub

Sub setMarkersClickable(b As Boolean)
	bMarkersClickable = b
	SetData(sMarkersClickable, b)
End Sub
	
Sub getMarkersClickable As Boolean
	Return bMarkersClickable
End Sub

Sub setMarkersDraggable(b As Boolean)
	SetData(sMarkersDraggable, b)
	bMarkersDraggable = b
End Sub

Sub getMarkersDraggable As Boolean
	Return bMarkersDraggable
End Sub
			
Sub setKMLClickable(b As Boolean)
	SetData(sKMLClickable, b)
	bKMLClickable = True
End Sub

Sub getKMLClickable As Boolean
	Return bKMLClickable
End Sub

Sub SetCenter(lat As Double, lng As Double)
	lat = BANano.parseFloat(lat)
	lng = BANano.parseFloat(lng)
	Dim point As Map = CreateMap()
	point.put("lat", lat)
	point.put("lng", lng)
	VC.SetData(scenter, point)
End Sub

Sub SetCenterLatLon(latlon As Map)
	VC.SetData(scenter, latlon)
End Sub

Sub setZoom(z As Int)
	z = BANano.parseInt(z)
	SetData(szoom, z)
	mZoom = z
End Sub

Sub getZoom As Int
	Return mZoom
End Sub

Sub UpdateZoom(z As Int)
	z = BANano.parseInt(z)
	VC.SetData(szoom, z)
	mZoom = z
End Sub

Sub setMapType(maptype As String)
	mMapType = maptype
	SetData(smaptype, maptype)
End Sub

Sub getMapType As String
	Return mMapType
End Sub

Sub UpdateMapType(maptype As String)
	VC.SetData(smaptype, maptype)
	mMapType = maptype
End Sub

Sub SetMapTypeRoadMap
	UpdateMapType("roadmap")
End Sub

Sub SetMapTypeSatellite
	UpdateMapType("satellite")
End Sub


Sub SetMapTypeHybrid
	UpdateMapType("hybrid")
End Sub

Sub SetMapTypeTerrain
	UpdateMapType("terrain")
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


Sub BindState(VS As VueComponent)
	VC = VS
	Dim mbindings As Map = bindings
	Dim mmethods As Map = methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		Vc.SetCallBack(k, cb)
	Next
End Sub