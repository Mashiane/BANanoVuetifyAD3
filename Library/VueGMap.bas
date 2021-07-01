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
#Event: Tooltip_Click (item As Map)
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
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: , Description: Title
#DesignerProperty: Key: GoogleMapKey, DisplayName: GoogleMapKey, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: InsideVCard, DisplayName: InsideVCard, FieldType: Boolean, DefaultValue: True, Description: InsideVCard
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: 0, Description: ZIndex
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
	'Private stVShow As String = ""
	Private mGoogleMapKey As String = ""
	'
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
	Private sTitle As String
	Private xTitle As String
	Private VElement As VueElement
	Private sButtons As String
	Private bInsideVCard As Boolean
	Private sZIndex As String
	private sElevation as string
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("vue-google-maps.js")
	
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
	xTitle = $"${mName}title"$
	sButtons = $"${mName}buttons"$
	
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
	'stVShow = $"${mName}show"$
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
End Sub

'use the map
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
		sTitle = Props.GetDefault("Title", "")
		bInsideVCard = Props.GetDefault("InsideVCard", True)
		bInsideVCard = BANanoShared.parseBool(bInsideVCard)
		sZIndex = Props.GetDefault("ZIndex", 0)
		sElevation = Props.GetDefault("Elevation", "")
	End If
	'
	bFullScreenControl = BANanoShared.parseBool(bFullScreenControl)
	bDisableDefaultUI = BANanoShared.parseBool(bDisableDefaultUI)
	bMapTypeControl = BANanoShared.parseBool(bMapTypeControl)
	bRotateControl = BANanoShared.parseBool(bRotateControl)
	bZoomControl = BANanoShared.parseBool(bZoomControl)
	bStreetViewControl = BANanoShared.parseBool(bStreetViewControl)
	bScaleControl = BANanoShared.parseBool(bScaleControl)
	bMarkersVisible = BANanoShared.parseBool(bMarkersVisible)
	bMarkersClickable = BANanoShared.parseBool(bMarkersClickable)
	bMarkersDraggable = BANanoShared.parseBool(bMarkersDraggable)
	bKMLVisible = BANanoShared.parseBool(bKMLVisible)
	bKMLClickable = BANanoShared.parseBool(bKMLClickable)


	'build and get the element
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	
		If bInsideVCard Then 
			mTarget.Append($"<v-card id="${mName}card" v-lazy><v-card-title id="${mName}cardtitle">{{ ${xTitle} }}</v-card-title>
			<v-card-text id="${mName}cardtext"></v-card-text></v-card>"$)
			
			mElement = BANano.GetElement($"#${mName}cardtext"$).Append($"<gmap-map :key="${gmapkey}" ref="${mName}" id="${mName}">
			<gmap-marker id="${smarkers}"></gmap-marker>
			<google-kml-layer id="${skmllayer}"></google-kml-layer>
			<gmap-info-window id="${sinfowindow}"></gmap-info-window></gmap-map>"$).Get($"#${mName}"$)
		Else
			mElement = mTarget.Append($"<gmap-map :key="${gmapkey}" ref="${mName}" id="${mName}">
			<gmap-marker id="${smarkers}"></gmap-marker>
			<google-kml-layer id="${skmllayer}"></google-kml-layer>
			<gmap-info-window id="${sinfowindow}"></gmap-info-window></gmap-map>"$).Get($"#${mName}"$)
		End If	
	End If
	'
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "gmap-map"
	'
	If bInsideVCard Then 
		'add a spacer then add buttons
		VElement.GetCard.AddAttr("elevation", sElevation)
		VElement.GetCardTitle.Append($"<v-spacer></v-spacer>"$)
		VElement.GetCardTitle.Append($"<v-btn id="${mName}button" class="mx-2" v-for="item in ${sButtons}" :key="item.id" fab dark small :color="item.color">
        	<v-icon v-html=item.icon></v-icon>
      	</v-btn>"$)
		If SubExists(mCallBack, $"${mName}_toolbar_click"$) Then  
			VElement.GetButton.SetOnEventOwn(mCallBack, $"${mName}_toolbar_click"$, "click", "item.id")
			Dim args As List
			VElement.SetMethod(mCallBack, $"${mName}_toolbar_click"$, args)
			Dim btnt As VueElement = VElement.GetButton
			VElement.BindVueElement(btnt)
		End If
	End If
	'
	'get the layers etc
	mkmllayer.Initialize(mCallBack,skmllayer,skmllayer)
	mmarkers.Initialize(mCallBack,smarkers,smarkers)
	minfowindow.Initialize(mCallBack,sinfowindow,sinfowindow)
	
	Dim rs As List
	rs.Initialize 
	VElement.SetData(sButtons, rs)
	VElement.SetData(xTitle, sTitle)
	VElement.AddAttr("v-else", stVElse)
	VElement.AddAttr("v-else-if", stVElseIf)
	VElement.AddAttr("v-if", stVIf)
	'VElement.AddAttr("v-show", stVShow)
	VElement.AddClass(mClasses)
	VElement.setAttributes(mAttributes)
	VElement.setStyles(mStyle)
	VElement.setStates(mStates)
	VElement.SetAttr(":options", soptions)
	VElement.SetAttr(":zoom", szoom)
	VElement.SetAttr(":center", scenter)
	VElement.SetAttr(":map-type-id", smaptype)
	VElement.AddStyle("z-index", sZIndex)
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
	VElement.BindVueElement(minfowindow)
	VElement.BindVueElement(mkmllayer)
	VElement.BindVueElement(mmarkers)
	'
	VElement.SetData(soptions, CreateMap())
	VElement.SetData(iwPosition, Null)
	VElement.SetData(iwOpen, False)
	VElement.SetData(curMidx, Null)
	VElement.SetData(markerName, NewList)
	VElement.SetData(iwOptions, woptions)
	VElement.SetData(kmlName, NewList)
	VElement.SetData(gmapkey, DateTime.Now)
	'VElement.SetData(stVShow, True)
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
private Sub setGoogleMapKey(xGoogleMapKey As String)
	mGoogleMapKey = xGoogleMapKey
End Sub

'remove component
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

'set the height
private Sub setHeight(vHeight As String)
	If BANano.IsNull(vHeight) Or BANano.IsUndefined(vHeight) Then vHeight = "500px"
	mHeight = vHeight
	VElement.AddStyle("height", vHeight)
End Sub

'get the height
Sub getHeight As String
	Return mHeight
End Sub

'set the width
private Sub setWidth(vWidth As String)
	If BANano.IsNull(vWidth) Or BANano.IsUndefined(vWidth) Then vWidth = "500px"
	mWidth = vWidth
	VElement.AddStyle("width", vWidth)
End Sub

'new list
private Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
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


'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
	VElement.BindVueElement(el)
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
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
private Sub setMarkersVisible(b As Boolean)
	bMarkersVisible = b
	VElement.SetData(smarkersVisible, b)
End Sub

'update kml visibility
Sub UpdateKmlVisible(b As Boolean)
	VC.SetData(skmlvisible, b)
End Sub

'set kml visibility
Sub setKMLVisible(b As Boolean)
	bKMLVisible = b
	VElement.SetData(skmlvisible, b)
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

'refresh markers and re-render the map
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

private Sub setZoomControl(b As Boolean)
	options.put("zoomControl", b)
	bZoomControl = b
End Sub

private Sub setScaleControl(b As Boolean)
	options.put("scaleControl", b)
	bScaleControl = b
End Sub

private Sub setStreetViewControl(b As Boolean)
	options.put("streetViewControl", b)
	bStreetViewControl = b
End Sub

private Sub setRotateControl(b As Boolean)
	options.put("rotateControl", b)
	bRotateControl = b
End Sub

private Sub setMapTypeControl(b As Boolean)
	options.put("mapTypeControl", b)
	bMapTypeControl = b
End Sub

private Sub setDisableDefaultUI(b As Boolean)
	options.put("disableDefaultUi", b)
	bDisableDefaultUI = b
End Sub

private Sub setFullScreenControl(b As Boolean)
	options.put("fullscreenControl", b)
	bFullScreenControl = b
End Sub

private Sub setMarkersClickable(b As Boolean)
	bMarkersClickable = b
	VElement.SetData(sMarkersClickable, b)
End Sub

private Sub setMarkersDraggable(b As Boolean)
	VElement.SetData(sMarkersDraggable, b)
	bMarkersDraggable = b
End Sub

private Sub setKMLClickable(b As Boolean)
	VElement.SetData(sKMLClickable, b)
	bKMLClickable = True
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

private Sub setZoom(z As Int)
	z = BANano.parseInt(z)
	VElement.SetData(szoom, z)
	mZoom = z
End Sub

Sub UpdateZoom(z As Int)
	z = BANano.parseInt(z)
	VC.SetData(szoom, z)
	mZoom = z
End Sub

private Sub setMapType(maptype As String)
	mMapType = maptype
	VElement.SetData(smaptype, maptype)
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
	VElement.AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	VElement.AddClass("hidden-sm-only")
End Sub
	
Sub HiddenMDOnly
	VElement.AddClass("hidden-md-only")
End Sub
	
Sub HiddenLGOnly
	VElement.AddClass("hidden-lg-only")
End Sub
	
Sub HiddenXLOnly
	VElement.AddClass("hidden-xl-only")
End Sub
'
Sub HiddenXSAndDown
	VElement.AddClass("hidden-xs-and-down")
End Sub

Sub HiddenSMAndDown
	VElement.AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	VElement.AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	VElement.AddClass("hidden-lg-and-down")
End Sub
	
Sub HiddenXLAndDown
	VElement.AddClass("hidden-xl-and-down")
End Sub
'
Sub HiddenXSAndUp
	VElement.AddClass("hidden-xs-and-up")
End Sub

Sub HiddenSMAndUp
	VElement.AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	VElement.AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	VElement.AddClass("hidden-lg-and-up")
End Sub
	
Sub HiddenXLAndUp
	VElement.AddClass("hidden-xl-and-up")
End Sub	

Sub HideOnAll
	VElement.AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	VElement.AddClass("d-none d-sm-flex")
End Sub

Sub HideOnlyOnSM
	VElement.AddClass("d-sm-none d-md-flex")
End Sub

Sub HideOnlyOnMD
	VElement.AddClass("d-md-none d-lg-flex")
End Sub

Sub HideOnlyOnLG
	VElement.AddClass("d-lg-none d-xl-flex")
End Sub

Sub HideOnlyOnXL
	VElement.AddClass("d-xl-none")
End Sub

Sub VisibleOnAll
	VElement.AddClass("d-flex")
End Sub

Sub VisibleOnlyOnXS
	VElement.AddClass("d-flex d-sm-none")
End Sub

Sub VisibleOnlyOnSM
	VElement.AddClass("d-none d-sm-flex d-md-none")
End Sub

Sub VisibleOnlyOnMD
	VElement.AddClass("d-none d-md-flex d-lg-none")
End Sub

Sub VisibleOnlyOnLG
	VElement.AddClass("d-none d-lg-flex d-xl-none")
End Sub

Sub VisibleOnlyOnXL
	VElement.AddClass("d-none d-xl-flex")
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
		VC.SetCallBack(k, cb)
	Next
End Sub

Sub UpdateVisible(V As VueComponent, b As Boolean)
	V.SetData(stVIf, b)
	'V.SetData(stVShow, b)
End Sub