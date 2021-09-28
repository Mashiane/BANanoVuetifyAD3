B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class
'https://diegoazh.github.io/gmap-vue/#about-gmapvue
'Uncomment the events you want to show to the user and implement the HandleEvents in DesignerCreateView
#Event: MarkerClick (marker As Map)
#Event: ToolBar_Click (id As String)
#Event: Resize
#Event: Ready
#Event: CenterChanged (latLng As Map)
#Event: Idle
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
#DesignerProperty: Key: ParentID, DisplayName: ParentID, FieldType: String, DefaultValue: , Description: The id of the element to place this into
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: GMap, Description: Title
#DesignerProperty: Key: GoogleMapKey, DisplayName: GoogleMapKey, FieldType: String, DefaultValue:  , Description: Google Map Key
#DesignerProperty: Key: InsideVCard, DisplayName: InsideVCard, FieldType: Boolean, DefaultValue: True, Description: Inside VCard
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: 0, Description: ZIndex
#DesignerProperty: Key: FullScreenControl, DisplayName: FullScreenControl, FieldType: Boolean, DefaultValue: True , Description: Full Screen Control
#DesignerProperty: Key: DisableDefaultUI, DisplayName: DisableDefaultUI, FieldType: Boolean, DefaultValue:  True, Description: Disable Default UI
#DesignerProperty: Key: MapTypeControl, DisplayName: MapTypeControl, FieldType: Boolean, DefaultValue: False, Description: Map Type Control
#DesignerProperty: Key: MapType, DisplayName: MapType, FieldType: String, DefaultValue: roadmap, Description:, List: roadmap|satellite|hybrid|terrain
#DesignerProperty: Key: RotateControl, DisplayName: RotateControl, FieldType: Boolean, DefaultValue:  False, Description: Rotate Control
#DesignerProperty: Key: Draggable, DisplayName: Draggable, FieldType: Boolean, DefaultValue:  False, Description: Draggable
#DesignerProperty: Key: ZoomControl, DisplayName: ZoomControl, FieldType: Boolean, DefaultValue:  False, Description:
#DesignerProperty: Key: Zoom, DisplayName: Zoom, FieldType: Int, DefaultValue: 9, Description: Zoom
#DesignerProperty: Key: Drawing, DisplayName: Drawing, FieldType: Boolean, DefaultValue: False, Description: Show Drawing Manager
'#DesignerProperty: Key: Bounds, DisplayName: Bounds, FieldType: String, DefaultValue: , Description: Bounds
#DesignerProperty: Key: CenterLat, DisplayName: CenterLat, FieldType: String, DefaultValue: 0, Description: Center Lat
#DesignerProperty: Key: CenterLng, DisplayName: CenterLng, FieldType: String, DefaultValue: 0, Description: Center Lng
#DesignerProperty: Key: StreetViewControl, DisplayName: StreetViewControl, FieldType: Boolean, DefaultValue: False, Description: Street View Control
#DesignerProperty: Key: ScaleControl, DisplayName: ScaleControl, FieldType: Boolean, DefaultValue: False, Description: Scale Control
#DesignerProperty: Key: MarkersVisible, DisplayName: MarkersVisible, FieldType: Boolean, DefaultValue: True , Description: Markers Visible
#DesignerProperty: Key: MarkersClickable, DisplayName: MarkersClickable, FieldType: Boolean, DefaultValue: True , Description: Markers Clickable
#DesignerProperty: Key: MarkersDraggable, DisplayName: MarkersDraggable, FieldType: Boolean, DefaultValue:  True, Description: Markers Draggable
#DesignerProperty: Key: KMLVisible, DisplayName: KMLVisible, FieldType: Boolean, DefaultValue: False , Description: KML Visible
#DesignerProperty: Key: KMLClickable, DisplayName: KMLClickable, FieldType: Boolean, DefaultValue:  False, Description: KML Clickable
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue:  100%, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px , Description: Height
'
#DesignerProperty: Key: ItemKeys, DisplayName: Button  Keys (Key)(;), FieldType: String, DefaultValue:  add; edit; delete; refresh, Description: Button Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Button Icons (Value)(;), FieldType: String, DefaultValue:  mdi-plus; mdi-pencil; mdi-delete; mdi-refresh, Description: Button Icons
#DesignerProperty: Key: ItemColors, DisplayName: Button Colors (;), FieldType: String, DefaultValue:  green; amber; red; indigo, Description: Button Colors
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: VElse, DisplayName: VElse, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: VElseIf, DisplayName: VElseIf, FieldType: String, DefaultValue:  , Description:
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: GradientActive, DisplayName: GradientActive, FieldType: Boolean, DefaultValue: false, Description: Gradient should be set
#DesignerProperty: Key: Gradient, DisplayName: Gradient, FieldType: String, DefaultValue: , Description: Gradient, List: top_bottom|right_left|bottom_top|left_right|tl_br|bl_tr|tr_bl|br_tl
#DesignerProperty: Key: GradientColor1, DisplayName: GradientColor1, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 1.
#DesignerProperty: Key: GradientColor2, DisplayName: GradientColor2, FieldType: Color, DefaultValue: 0xFFCFDCDC, Gradient Color 2.
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: False, Description: Absolute
#DesignerProperty: Key: Hover, DisplayName: Hover, FieldType: Boolean, DefaultValue: false, Description: Hover
#DesignerProperty: Key: MarginAXYTBLR, DisplayName: Margins AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Margins A-X-Y-S-M-L-X
#DesignerProperty: Key: PaddingAXYTBLR, DisplayName: Paddings AXYTBLR, FieldType: String, DefaultValue: a=?; x=?; y=?; t=?; b=?; l=?; r=? , Description: Padding A-X-Y-S-M-L-X
#DesignerProperty: Key: Styles, DisplayName: Styles (=), FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: String, DefaultValue: none, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: False, Description: Tile
#DesignerProperty: Key: Shrink, DisplayName: Shrink, FieldType: Boolean, DefaultValue: False, Description: Shrink
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: False, Description: Flat
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
'Definition of variables used in this VueGMap component.
Sub Class_Globals
Private BANano As BANano 'ignore
Private mName As String 'ignore
Private mEventName As String 'ignore
Private mCallBack As Object 'ignore
Private mTarget As BANanoElement 'ignore
Private mElement As BANanoElement 'ignore
Private sCenterLat As String
Private sCenterLng As String
Private mClasses As String = ""
Private mStyle As String = ""
Private mAttributes As String = ""
Private mStyle As String = ""
Private mStates As String
Private stVElse As String = ""
Private stVElseIf As String = ""
Private stVIf As String = ""
Private stVShow As String = ""
Private mGoogleMapKey As String = ""
'
Private mkmllayer As VueElement
Private mmarker As VueElement
Private minfowindow As VueElement
Private skmllayer As String
Private smarker As String
Private sinfowindow As String
'
Public points As List
Private markerName As String
Private iwOptions As String
Private iwPosition As String
Private iwOpen As String
Private curMidx As String
Private kmlName As String
Private options As Map
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
Public VElement As VueElement
Private sButtons As String
Private bInsideVCard As Boolean
Private sZIndex As String
Private sElevation As String
'
Private sItemKeys As String
Private sItemIcons As String
Private sItemColors As String
Private sButtons As String
Private xresize As String
Private xpolylines As String
Private polylines As Map
Private xpolygons As String
Private polygons As Map
Private xcircles As String
Private circles As Map
Private xrectangles As String
Private rectangles As Map
Private kmlLayers As Map
Private bHidden As Boolean
Private bDraggable As Boolean
'
Public const COLOR_BLUE As String = "./assets/marker-icon-2x-blue.png"
Public const COLOR_GOLD As String = "./assets/marker-icon-2x-gold.png"
Public const COLOR_RED As String = "./assets/marker-icon-2x-red.png"
Public const COLOR_GREEN As String = "./assets/marker-icon-2x-green.png"
Public const COLOR_ORANGE As String = "./assets/marker-icon-2x-orange.png"
Public const COLOR_YELLOW As String = "./assets/marker-icon-2x-yellow.png"
Public const COLOR_VIOLET As String = "./assets/marker-icon-2x-violet.png"
Public const COLOR_GREY As String = "./assets/marker-icon-2x-grey.png"
Public const COLOR_BLACK As String = "./assets/marker-icon-2x-black.png"
Public MapObject As BANanoObject
Public google As BANanoObject
Private VC As VueComponent
Private mDraggable As String
Private bDrawing As Boolean
Private dshapes As List
Private mshapes As String
Private mrectangleOptions As String
Private mcircleOptions As String
Private mpolylineOptions As String
Private mpolygonOptions As String
'Private mmarkerOptions As String
'
Private xrectangleOptions As Map
Private xcircleOptions As Map
Private xpolylineOptions As Map
Private xpolygonOptions As Map
'Private xmarkerOptions As Map
Private bGradientActive As String
Private sGradient As String
Private sGradientColor1 As String
Private sGradientColor2 As String
Private sParentID As String
Private sStates As String
Private bDisabled As Boolean
Private sDisabled As String
Private bAbsolute As Boolean
Private bHover As Boolean
Private sMarginAXYTBLR As String
Private sPaddingAXYTBLR As String
Private mStyles As String = ""
Private sTransition As String
Private sHeight As String
Private sMinHeight As String
Private sMaxHeight As String
Private sWidth As String
Private sMinWidth As String
Private sMaxWidth As String
Private sRounded As String
Private bTile As Boolean
Private bShrink As Boolean
Private bGrow As Boolean
Private bFlat As Boolean
Private bDense As Boolean
End Sub
'Initializes the VueGMap component.
Sub Initialize (CallBack As Object, Name As String, EventName As String)
BANano.DependsOnAsset("gmap-vue.min.js")
BANano.DependsOnAsset("markerclustererplus.min.js")
BANano.DependsOnAsset("lodash.min.js")
dshapes.Initialize
mName = Name.tolowercase
mEventName = EventName.ToLowerCase
mCallBack = CallBack
gmapkey = $"${mName}key"$
skmllayer = $"${mName}kmllayer"$
smarker = $"${mName}marker"$
sinfowindow = $"${mName}infowindow"$
options.Initialize
'
mrectangleOptions = $"${mName}rectangleoptions"$
mcircleOptions = $"${mName}circleoptions"$
mpolylineOptions = $"${mName}polylineoptions"$
mpolygonOptions = $"${mName}polygonoptions"$
'mmarkerOptions = $"${mName}markeroptions"$
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
xresize = $"${mName}_resize"$
xpolylines = $"${mName}polylines"$
xpolygons = $"${mName}polygons"$
xcircles = $"${mName}circles"$
xrectangles = $"${mName}rectangles"$
mDraggable = $"${mName}draggable"$
mshapes = $"${mName}shapes"$
'
options.Initialize
points.Initialize
circles.Initialize
rectangles.Initialize
kmlLayers.Initialize
polylines.Initialize
polygons.Initialize
stVShow = $"${mName}show"$
'
xrectangleOptions.Initialize
xcircleOptions.Initialize
xpolylineOptions.Initialize
xpolygonOptions.initialize
'xmarkerOptions.Initialize
'
DrawingOptions
'sDisabled = $"${mName}disabled"$
End Sub
private Sub DrawingOptions
xrectangleOptions.Put("fillColor", "#777")
xrectangleOptions.Put("fillOpacity", 0.4)
xrectangleOptions.Put("strokeWeight", 2)
xrectangleOptions.Put("strokeColor", "#999")
xrectangleOptions.Put("draggable", True)
xrectangleOptions.Put("editable", True)
xrectangleOptions.Put("clickable", True)
'
xcircleOptions.Put("fillColor", "#777")
xcircleOptions.Put("fillOpacity", 0.4)
xcircleOptions.Put("strokeWeight", 2)
xcircleOptions.Put("strokeColor", "#999")
xcircleOptions.Put("draggable", True)
xcircleOptions.Put("editable", True)
xcircleOptions.Put("clickable", True)
'
xpolylineOptions.Put("fillColor", "#777")
xpolylineOptions.Put("fillOpacity", 0.4)
xpolylineOptions.Put("strokeWeight", 2)
xpolylineOptions.Put("strokeColor", "#999")
xpolylineOptions.Put("draggable", True)
xpolylineOptions.Put("editable", True)
xpolylineOptions.Put("clickable", True)
'
xpolygonOptions.Put("fillColor", "#777")
xpolygonOptions.Put("fillOpacity", 0.4)
xpolygonOptions.Put("strokeWeight", 2)
xpolygonOptions.Put("strokeColor", "#999")
xpolygonOptions.Put("draggable", True)
xpolygonOptions.Put("editable", True)
xpolygonOptions.Put("clickable", True)
'
'	xmarkerOptions.Put("fillColor", "#777")
'    xmarkerOptions.Put("fillOpacity", 0.4)
'    xmarkerOptions.Put("strokeWeight", 2)
'    xmarkerOptions.Put("strokeColor", "#999")
'    xmarkerOptions.Put("draggable", True)
'    'xmarkerOptions.Put("editable", True)
'    xmarkerOptions.Put("clickable", True)
End Sub
'set the parent component
Sub setParentComponent(PC As VueComponent)
VC = PC
End Sub
'GmapVue
Sub Use(vuetify As VuetifyApp)
'ensure that the module is loaded
If vuetify.ModuleExist("googlemap") = False Then
Dim VueGoogleMaps As BANanoObject
VueGoogleMaps.Initialize("GmapVue")
Dim opt As Map = CreateMap()
BANanoShared.PutRecursive(opt, "load.key", mGoogleMapKey)
BANanoShared.PutRecursive(opt, "load.libraries", "places,directions,drawing")
BANanoShared.PutRecursive(opt, "installComponents", True)
BANanoShared.PutRecursive(opt, "autobindAllEvents", True)
vuetify.Use1(VueGoogleMaps, opt)
'
Dim Cluster As BANanoObject = VueGoogleMaps.GetField("Cluster")
google = VueGoogleMaps.GetField("gmapApi")
vuetify.ImportComponentBO("gmap-cluster", Cluster)
vuetify.AddModule("googlemap")
End If
End Sub
' this is the place where you create the view in html and run initialize javascript
'This builds the HTML tree based on defined properties for VueGMap
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
bHidden = Props.getdefault("Hidden", False)
mClasses = Props.Get("Classes")
mStyle = Props.Get("Style")
mAttributes = Props.Get("Attributes")
mStyle = Props.Get("Style")
mStates = Props.Get("States")
stVElse = Props.Get("VElse")
stVElseIf = Props.Get("VElseIf")
stVIf = Props.Get("VIf")
mGoogleMapKey = Props.Get("GoogleMapKey")
bFullScreenControl = Props.GetDefault("FullScreenControl", True)
bDisableDefaultUI = Props.GetDefault("DisableDefaultUI", False)
bMapTypeControl = Props.GetDefault("MapTypeControl", False)
mMapType = Props.Get("MapType")
bRotateControl = Props.GetDefault("RotateControl", True)
bZoomControl = Props.GetDefault("ZoomControl", True)
mZoom = Props.GetDefault("Zoom", 9)
bStreetViewControl = Props.GetDefault("StreetViewControl",True)
bScaleControl = Props.GetDefault("ScaleControl",True)
bMarkersVisible = Props.GetDefault("MarkersVisible", True)
bMarkersClickable = Props.GetDefault("MarkersClickable",True)
bMarkersDraggable = Props.GetDefault("MarkersDraggable",True)
bKMLVisible = Props.GetDefault("KMLVisible",False)
bKMLClickable = Props.GetDefault("KMLClickable",False)
mHeight = Props.GetDefault("Height","800px")
mWidth = Props.GetDefault("Width","100%")
sTitle = Props.GetDefault("Title", "GMap")
bInsideVCard = Props.GetDefault("InsideVCard", True)
bInsideVCard = BANanoShared.parseBool(bInsideVCard)
sZIndex = Props.GetDefault("ZIndex", 0)
sElevation = Props.GetDefault("Elevation", "")
sItemKeys = Props.GetDefault("ItemKeys","")
sItemIcons = Props.GetDefault("ItemIcons","")
sItemColors = Props.GetDefault("ItemColors","")
sCenterLat = Props.GetDefault("CenterLat", 0)
sCenterLng = Props.getdefault("CenterLng", 0)
bDraggable = Props.GetDefault("Draggable", False)
bDraggable = BANanoShared.parseBool(bDraggable)
bDrawing = Props.GetDefault("Drawing",False)
bDrawing = BANanoShared.parseBool(bDrawing)
bGradientActive = Props.GetDefault("GradientActive", False)
bGradientActive = BANanoShared.parseBool(bGradientActive)
sGradient = Props.GetDefault("Gradient", "")
sGradientColor1 = Props.GetDefault("GradientColor1", "")
sGradientColor2 = Props.GetDefault("GradientColor2", "")
sParentID = Props.GetDefault("ParentID", "")
sParentID = BANanoShared.parseNull(sParentID)
sStates = BANanoShared.GetProp(Props, "States", "")
bDisabled = Props.GetDefault("Disabled",False)
bDisabled = BANanoShared.parseBool(bDisabled)
bAbsolute = Props.GetDefault("Absolute", False)
bHover = Props.GetDefault("Hover", False)
sMarginAXYTBLR = BANanoShared.GetProp(Props, "MarginAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
sPaddingAXYTBLR = BANanoShared.GetProp(Props, "PaddingAXYTBLR","a=?; x=?; y=?; t=?; b=?; l=?; r=?")
mAttributes = Props.GetDefault("Attributes", "")
mClasses = Props.GetDefault("Classes", "")
mStyles = Props.GetDefault("Styles", "")
sTransition = Props.GetDefault("Transition", "")
sHeight = Props.GetDefault("Height", "")
sMinHeight = Props.GetDefault("MinHeight", "")
sMaxHeight = Props.GetDefault("MaxHeight", "")
sWidth = Props.GetDefault("Width", "")
sMinWidth = Props.GetDefault("MinWidth", "")
sMaxWidth = Props.GetDefault("MaxWidth", "")
sRounded = Props.GetDefault("Rounded", "")
bTile = Props.GetDefault("Tile", False)
bTile = BANanoShared.parseBool(bTile)
bShrink = Props.GetDefault("Shrink", False)
bShrink = BANanoShared.parseBool(bShrink)
bGrow = Props.GetDefault("Grow", False)
bGrow = BANanoShared.parseBool(bGrow)
bFlat = Props.GetDefault("Flat", False)
bFlat = BANanoShared.parseBool(bFlat)
bDense = Props.GetDefault("Dense", False)
bDense = BANanoShared.parseBool(bDense)
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
'
If bInsideVCard Then
Dim rs As List
rs.Initialize
'
Dim xkeys As List = BANanoShared.StrParseComma(";", sItemKeys)
Dim xicons As List = BANanoShared.StrParseComma(";", sItemIcons)
Dim xcolors As List = BANanoShared.StrParseComma(";", sItemColors)
'
xkeys = BANanoShared.ListTrimItems(xkeys)
xicons = BANanoShared.ListTrimItems(xicons)
xcolors = BANanoShared.ListTrimItems(xcolors)
'
Dim tItems As Int = xkeys.Size - 1
For itemCnt = 0 To tItems
Dim iKey As String = xkeys.Get(itemCnt)
Dim iIco As String = xicons.Get(itemCnt)
Dim iCol As String = xcolors.Get(itemCnt)
'
Dim nm As Map = CreateMap()
nm.Put("id", iKey)
nm.Put("icon", iIco)
nm.Put("color", iCol)
rs.Add(nm)
Next
End If
If sParentID <> "" Then
sParentID = sParentID.ToLowerCase
mTarget.Initialize($"#${sParentID}"$)
End If
'build and get the element
If BANano.Exists($"#${mName}"$) Then
mElement = BANano.GetElement($"#${mName}"$)
Else
If bInsideVCard Then
mTarget.Append($"<v-card id="${mName}card"><v-card-title id="${mName}cardtitle">{{ ${xTitle} }}</v-card-title>
<v-card-text id="${mName}cardtext"></v-card-text></v-card>"$)
End If
End If
'
Dim mapStr As String = $"<gmap-map :key="${gmapkey}" ref="${mName}" id="${mName}">
<gmap-cluster><gmap-marker id="${smarker}"></gmap-marker></gmap-cluster>
<gmap-polyline v-for="item in ${xpolylines}" v-if="item.visible" :path="item.path"  :options="item.options" :ref="item.id"></gmap-polyline>
<gmap-polygon v-for="item in ${xpolygons}" v-if="item.visible" :paths="item.paths" :options="item.options" :ref="item.id"></gmap-polygon>
<gmap-circle v-for="item in ${xcircles}" v-if="item.visible" :bounds="item.bounds" :center="item.center" :radius="item.radius" :options="item.options" :ref="item.id"></gmap-circle>
<gmap-rectangle v-for="item in ${xrectangles}" v-if="item.visible" :bounds="item.bounds" :options="item.options" :ref="item.id"></gmap-rectangle>
<google-kml-layer v-if="lyr.visible" id="${skmllayer}" :ref="lyr.id"></google-kml-layer>
<gmap-info-window id="${sinfowindow}"></gmap-info-window></gmap-map>"$
'
If bInsideVCard Then
mElement = BANano.GetElement($"#${mName}cardtext"$).Append(mapStr).Get($"#${mName}"$)
Else
mElement = mTarget.Append(mapStr).Get($"#${mName}"$)
End If
'
VElement.Initialize(mCallBack, mName, mName)
VElement.TagName = "gmap-map"
'
If bInsideVCard Then
'add a spacer then add buttons
VElement.GetCard.AddAttr("elevation", sElevation)
If bHidden Then
VElement.GetCard.VShow = stVShow
End If
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
VElement.SetData(sButtons, rs)
VElement.SetData(xTitle, sTitle)
End If
'we have drawing
If bDrawing Then
VElement.Append($"<gmap-drawing-manager id="${mName}drawing" ref="${mName}drawing" position='TOP_RIGHT' :shapes="${mshapes}" :rectangle-options="${mrectangleOptions}" :circle-options="${mcircleOptions}" :polyline-options="${mpolylineOptions}" :polygon-options="${mpolygonOptions}"></gmap-drawing-manager>"$)
VElement.SetData(mshapes, dshapes)
VElement.SetData(mrectangleOptions, xrectangleOptions)
VElement.SetData(mcircleOptions, xcircleOptions)
VElement.SetData(mpolylineOptions, xcircleOptions)
VElement.SetData(mpolygonOptions, xpolygonOptions)
'VElement.SetData(mmarkerOptions, xmarkerOptions)
End If
'
'detect changes on size
If SubExists(mCallBack, xresize) Then
VElement.AddAttr("v-resize", xresize)
VElement.SetMethod(mCallBack, xresize, Null)
Else
BANano.Throw($"VueGMap.${mName} - generate members for Resize!"$)
End If
'
If SubExists(mCallBack, $"${mName}_ready"$) Then
VElement.SetOnEventOwn(mCallBack, $"${mName}_ready"$, "ready", Null)
Else
BANano.Throw($"VueGMap.${mName} - generate members for Ready!"$)
End If
'
If SubExists(mCallBack, $"${mName}_idle"$) Then
VElement.SetOnEventOwn(mCallBack, $"${mName}_idle"$, "idle", Null)
End If
'
If SubExists(mCallBack, $"${mName}_centerchanged"$) Then
VElement.SetOnEventOwn(mCallBack, $"${mName}_centerchanged"$, "center_changed", Null)
End If
VElement.SetData(xpolylines, VElement.newlist)
VElement.SetData(xpolygons, VElement.NewList)
VElement.SetData(xcircles, VElement.NewList)
VElement.SetData(xrectangles, VElement.NewList)
'
VElement.AddAttr("v-else", stVElse)
VElement.AddAttr("v-else-if", stVElseIf)
VElement.AddAttr("v-if", stVIf)
VElement.AddClass(mClasses)
VElement.setAttributes(mAttributes)
VElement.setStyles(mStyle)
VElement.setStates(mStates)
VElement.SetAttr(":options", soptions)
VElement.SetAttr(":zoom", szoom)
VElement.SetAttr(":center", scenter)
VElement.SetAttr(":map-type-id", smaptype)
VElement.AddStyle("z-index", sZIndex)
If bInsideVCard Then
VElement.GetCard.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.GetCard.setPaddingAXYTBLR(sPaddingAXYTBLR)
Else
VElement.setMarginAXYTBLR(sMarginAXYTBLR)
VElement.setPaddingAXYTBLR(sPaddingAXYTBLR)
End If
setHeight(mHeight)
setWidth(mWidth)
'
mmarker.Initialize(mCallBack,smarker,smarker)
mmarker.SetAttr(":position","m.position")
mmarker.vif = smarkersVisible
mmarker.SetAttr(":clickable", sMarkersClickable)
mmarker.SetAttr(":draggable", sMarkersDraggable)
mmarker.SetAttr(":icon", "m.icon")
mmarker.SetAttr(":title", "m.label")
mmarker.SetAttr(":animation", "m.animation")
mmarker.VFor = $"(m,i) in ${markerName}"$
mmarker.BindKey("m.id")
mmarker.SetAttr("v-on:click", "toggleinfowindow(m, i)")
'
Dim m, i As Object
Dim cb As BANanoObject = BANano.CallBack(Me, "toggleInfoWindow", Array(m, i))
VElement.SetCallBack("toggleInfoWindow", cb)
'
Dim e As Object
Dim cb As BANanoObject = BANano.CallBack(Me, "closeInfoWindow", Array(e))
VElement.SetCallBack("closeInfoWindow", cb)
'
minfowindow.Initialize(mCallBack,sinfowindow,sinfowindow)
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
'get the layers etc
mkmllayer.Initialize(mCallBack,skmllayer,skmllayer)
mkmllayer.SetAttr(":clickable", sKMLClickable)
mkmllayer.VFor = $"lyr in ${kmlName}"$
mkmllayer.SetAttr(":url", "lyr.url")
mmarker.RemoveBinding("m")
mkmllayer.RemoveBinding("lyr")
mkmllayer.RemoveAttr("id")
'
VElement.BindVueElement(minfowindow)
VElement.BindVueElement(mkmllayer)
VElement.BindVueElement(mmarker)
'
VElement.SetData(soptions, CreateMap())
VElement.SetData(iwPosition, Null)
VElement.SetData(iwOpen, False)
VElement.SetData(curMidx, Null)
VElement.SetData(markerName, NewList)
VElement.SetData(iwOptions, woptions)
VElement.SetData(kmlName, NewList)
VElement.SetData(gmapkey, DateTime.Now)
If bHidden Then
VElement.VShow = stVShow
VElement.SetData(stVShow, Not(bHidden))
End If
'
setFullScreenControl(bFullScreenControl)
setDisableDefaultUI(bDisableDefaultUI)
setMapTypeControl(bMapTypeControl)
setRotateControl(bRotateControl)
setStreetViewControl(bStreetViewControl)
setScaleControl(bScaleControl)
setZoomControl(bZoomControl)
setDraggable(bDraggable)
setMapType(mMapType)
setKMLVisible(bKMLVisible)
setMarkersVisible(bMarkersVisible)
setZoom(mZoom)
setMarkersClickable(bMarkersClickable)
setMarkersDraggable(bMarkersDraggable)
setKMLClickable(bKMLClickable)
If bGradientActive Then
Dim agradient As String = VElement.GetActualGradient(sGradient)
VElement.setLinearGradient(agradient, sGradientColor1, sGradientColor2)
End If
VElement.States = sStates
VElement.Disabled = sDisabled
VElement.SetData(sDisabled, bDisabled)
VElement.Absolute = bAbsolute
VElement.Hover = bHover
VElement.Attributes = mAttributes
VElement.Classes = mClasses
VElement.Styles = mStyles
VElement.Transition = sTransition
VElement.Elevation = sElevation
VElement.Height = sHeight
VElement.MinHeight = sMinHeight
VElement.MaxHeight = sMaxHeight
VElement.Width = sWidth
VElement.MinWidth = sMinWidth
VElement.MaxWidth = sMaxWidth
VElement.AddClass(sRounded)
VElement.Tile = bTile
VElement.AddClassOnCondition("shrink", bShrink, True)
VElement.AddAttr(":grow", bGrow)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr(":dense", bDense)
VElement.BindAllEvents
'kill error
ClearMarkers
SetCenter(sCenterLat, sCenterLng)
AddMarker("1", sCenterLat, sCenterLng, "Origin", "")
Refresh
End Sub
'clear all shapes
Sub DrawingClearAll
'get the ref to the drawing
Try
Dim sdr As String = $"${mName}drawing"$
VC.refs.GetField(sdr).RunMethod("clearAll", Null)
Catch
Log(LastException)
End Try
End Sub
'clearSelection
Sub DrawingClearSelection
Try
'clearSelection
Dim sdr As String = $"${mName}drawing"$
VC.refs.GetField(sdr).RunMethod("clearSelection", Null)
Catch
Log(LastException)
End Try
End Sub
'addShape
Sub DrawingAddShape(shape As Map)
Try
'clearSelection
Dim sdr As String = $"${mName}drawing"$
VC.refs.GetField(sdr).RunMethod("addShape", Array(shape))
Catch
Log(LastException)
End Try
End Sub
'selectedShape
Sub DrawingSelectedShape As Map
Try
'clearSelection
Dim sdr As String = $"${mName}drawing"$
Dim bo As BANanoObject = VC.refs.GetField(sdr).getfield("selectedShape")
Return bo
Catch
Return Null
Log(LastException)
End Try
End Sub
'get drawing shapes
Sub DrawingGetShapes As List
Dim lst As List = VC.GetData(mshapes)
Return lst
End Sub
'deleteSelection
Sub DrawingDeleteSelection
Try
Dim sdr As String = $"${mName}drawing"$
VC.refs.GetField(sdr).RunMethod("deleteSelection", Null)
Catch
Log(LastException)
End Try
End Sub
'set the google map key
Sub setGoogleMapKey(xGoogleMapKey As String)
mGoogleMapKey = xGoogleMapKey
End Sub
'remove component
'Remove the component, this is a design time call on Initialize
Sub Remove()
mElement.Remove
BANano.SetMeToNull
End Sub
'set the height
Sub setHeight(vHeight As String)
If BANano.IsNull(vHeight) Or BANano.IsUndefined(vHeight) Then vHeight = "500px"
mHeight = vHeight
VElement.AddStyle("height", vHeight)
End Sub
'get the height
Sub getHeight As String
Return mHeight
End Sub
'set the width
Sub setWidth(vWidth As String)
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
Sub getID() As String
Return mName
End Sub
'add the element to the parent
'Add this component to a parent component. You need to execute this after BANano.LoadLayout on Initialize
Sub AddToParent(targetID As String)
targetID = targetID.tolowercase
targetID = targetID.Replace("#","")
mTarget = BANano.GetElement($"#${targetID}"$)
DesignerCreateView(mTarget, Null)
End Sub
'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
VElement.BindVueElement(el)
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
Sub AddKMLURL(id As String, url As String)
Dim nl As Map = CreateMap()
nl.put("url", url)
nl.Put("visible", True)
nl.Put("id", id)
nl.Put("clickable", sKMLClickable)
kmlLayers.Put(id, nl)
End Sub
'update markers visibility
Sub UpdateMarkersVisible(b As Boolean)
VC.SetData(smarkersVisible, b)
bMarkersVisible = b
End Sub
'set markers visibility
Sub setMarkersVisible(b As Boolean)
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
'Clear the contents bound by by v-model, needs BindState
Sub Clear
ClearMarkers
ClearPolylines
ClearCircles
ClearRectangles
ClearKML
End Sub
'reset the map
Sub Reset
ClearMarkers
ClearPolylines
ClearCircles
ClearRectangles
ClearKML
End Sub
'clear all markers
Sub ClearMarkers   'ignoreDeadcode
points.Initialize
VC.SetData(markerName, points)
End Sub
Sub ClearPolylines
polylines.Initialize
VC.SetData(xpolylines, polylines)
End Sub
Sub ClearCircles
circles.Initialize
VC.SetData(xcircles, circles)
End Sub
Sub ClearRectangles
rectangles.Initialize
VC.SetData(xrectangles, rectangles)
End Sub
Sub ClearKML
kmlLayers.Initialize
VC.SetData(kmlName, kmlLayers)
End Sub
'refresh markers and re-render the map
Sub Refresh
VC.SetData(soptions, options)
VC.SetData(markerName, points)
BuildPolyLines
BuildPolyGons
BuildCircles
BuildRectangles
BuildKML
VC.SetData(gmapkey, DateTime.Now)
End Sub
'build the polylines
private Sub BuildPolyLines
Dim polylineList As List
polylineList.Initialize
'
Dim rsCnt As Int
Dim rsTot As Int = polylines.Size - 1
For rsCnt = 0 To rsTot
Dim mt As Map = polylines.GetValueAt(rsCnt)
polylineList.Add(mt)
Next
VC.SetData(xpolylines, polylineList)
End Sub
'build the kml
private Sub BuildKML
Dim polylineList As List
polylineList.Initialize
'
Dim rsCnt As Int
Dim rsTot As Int = kmlLayers.Size - 1
For rsCnt = 0 To rsTot
Dim mt As Map = kmlLayers.GetValueAt(rsCnt)
polylineList.Add(mt)
Next
VC.SetData(kmlName, polylineList)
End Sub
'build the circles
private Sub BuildCircles
Dim polylineList As List
polylineList.Initialize
'
Dim rsCnt As Int
Dim rsTot As Int = circles.Size - 1
For rsCnt = 0 To rsTot
Dim mt As Map = circles.GetValueAt(rsCnt)
polylineList.Add(mt)
Next
VC.SetData(xcircles, polylineList)
End Sub
'build the rectangles
private Sub BuildRectangles
Dim polylineList As List
polylineList.Initialize
'
Dim rsCnt As Int
Dim rsTot As Int = rectangles.Size - 1
For rsCnt = 0 To rsTot
Dim mt As Map = rectangles.GetValueAt(rsCnt)
polylineList.Add(mt)
Next
VC.SetData(xrectangles, polylineList)
End Sub
'build the polygons
private Sub BuildPolyGons
Dim polylineList As List
polylineList.Initialize
'
Dim rsCnt As Int
Dim rsTot As Int = polygons.Size - 1
For rsCnt = 0 To rsTot
Dim mt As Map = polygons.GetValueAt(rsCnt)
polylineList.Add(mt)
Next
VC.SetData(xpolygons, polylineList)
End Sub
Sub AddMarker(mID As String, lat As Double, lng As Double, label As String, info As String)
mID = mID.tolowercase
Dim marker As Map = CreateMap()
'
mID = BANanoShared.CStr(mID)
lat = BANano.parseFloat(lat)
lng = BANano.parseFloat(lng)
BANanoShared.PutRecursive(marker, "id", mID)
BANanoShared.PutRecursive(marker, "position.lat", lat)
BANanoShared.PutRecursive(marker, "position.lng", lng)
BANanoShared.PutRecursive(marker, "infoText", info)
BANanoShared.PutRecursive(marker, "label", label)
marker.Put("animation", "bounce")
points.add(marker)
End Sub
Sub AddMarkerIcon(markerID As String, info As String, lat As Double, lng As Double, icon As String, SizeX As String, SizeY As String, AnchorX As Int, AnchorY As Int)
markerID = markerID.tolowercase
Dim marker As Map = CreateMap()
'
markerID = BANanoShared.CStr(markerID)
info = BANanoShared.CStr(info)
'
lat = BANano.parseFloat(lat)
lng = BANano.parseFloat(lng)
'
SizeX = BANano.parseInt(SizeX)
SizeY = BANano.parseInt(SizeY)
'
AnchorX = BANano.parseInt(AnchorX)
AnchorY = BANano.parseInt(AnchorY)
Dim size As BANanoObject
size.Initialize2("google.maps.Size", Array(SizeX, SizeY))
'
Dim point As BANanoObject
point.Initialize2("google.maps.Point", Array(AnchorX, AnchorY))
'
Dim origin As BANanoObject
origin.Initialize2("google.maps.Point", Array(0, 0))
Dim img As Map = CreateMap()
img.Put("url", icon)
img.Put("scaledSize", size)
img.Put("anchor", point)
img.Put("origin", origin)
BANanoShared.PutRecursive(marker, "id", markerID)
BANanoShared.PutRecursive(marker, "position.lat", lat)
BANanoShared.PutRecursive(marker, "position.lng", lng)
BANanoShared.PutRecursive(marker, "infoText", info)
marker.Put("animation", "bounce")
marker.Put("icon", img)
points.add(marker)
End Sub
'add a marker with color
Sub AddMarkerIconColor(markerID As String, markerTitle As String, markerLat As Double, markerLng As Double, markerColor As String)
AddMarkerIcon(markerID, markerTitle, markerLat, markerLng, markerColor, 25, 41, 12, 41)
End Sub
'add a polyline
Sub AddPolyLine(polyLineID As String, polyLineTitle As String,polyLineColor As String)
polyLineID = polyLineID.tolowercase
Dim path As List
path.Initialize
'
Dim pe As Map
pe.Initialize
pe.Put("id", polyLineID)
pe.put("title", polyLineTitle)
pe.Put("visible", True)
'pe.Weight = 3
'pe.Opacity = 1.0
'pe.FillColor = "#3388ff"
'pe.FillOpacity = 0.2
'pe.fitBounds = False
'pe.PopUp = ""
pe.Put("path", path)
'
BANanoShared.PutRecursive(pe, "options.geodesic", True)
BANanoShared.PutRecursive(pe, "options.strokeColor", polyLineColor)
BANanoShared.PutRecursive(pe, "options.fillColor", "#3388ff")
polylines.Put(polyLineID, pe)
End Sub
'
'add a polygon
Sub AddPolygon(polyLineID As String, polyLineTitle As String,polyLineColor As String)
polyLineID = polyLineID.tolowercase
Dim path As List
path.Initialize
'
Dim pe As Map
pe.Initialize
pe.Put("id", polyLineID)
pe.put("title", polyLineTitle)
pe.Put("visible", True)
'pe.Weight = 3
'pe.Opacity = 1.0
'pe.FillColor = "#3388ff"
'pe.FillOpacity = 0.2
'pe.fitBounds = False
'pe.PopUp = ""
pe.Put("paths", path)
BANanoShared.PutRecursive(pe, "options.geodesic", True)
BANanoShared.PutRecursive(pe, "options.strokeColor", polyLineColor)
BANanoShared.PutRecursive(pe, "options.fillColor", "#3388ff")
polygons.Put(polyLineID, pe)
End Sub
'add polyline points from a map
Sub AddPolyLineLatLngMap(polygonID As String, paths As Map)
polygonID = polygonID.tolowercase
If polylines.ContainsKey(polygonID) Then
Dim po As Map = polylines.Get(polygonID)
Dim path As List = po.Get("path")
For Each k As String In paths.Keys
Dim v As String = paths.Get(k)
k = BANano.parseFloat(k)
v = BANano.parseFloat(v)
Dim latlng As Map = CreateMap()
latlng.Put("lat", k)
latlng.Put("lng", v)
path.add(latlng)
Next
po.Put("path", path)
polylines.Put(polygonID, po)
End If
End Sub
'add polygon points from a map
Sub AddPolyGonLatLngMap(polygonID As String, paths As Map)
polygonID = polygonID.tolowercase
If polygons.ContainsKey(polygonID) Then
Dim po As Map = polygons.Get(polygonID)
Dim path As List = po.Get("paths")
For Each k As String In paths.Keys
Dim v As String = paths.Get(k)
k = BANano.parseFloat(k)
v = BANano.parseFloat(v)
Dim latlng As Map = CreateMap()
latlng.Put("lat", k)
latlng.Put("lng", v)
path.add(latlng)
Next
po.Put("paths", path)
polygons.Put(polygonID, po)
End If
End Sub
'add a simple polygon marker
Sub AddPolyGonLatLng(polyLineID As String, markerLat As Double, markerLng As Double)
markerLat = BANano.parseFloat(markerLat)
markerLng = BANano.parseFloat(markerLng)
Dim latlng As Map = CreateMap()
latlng.Put("lat", markerLat)
latlng.Put("lng", markerLng)
AddPolyGonLatLngMap(polyLineID, latlng)
End Sub
'add a simple polyline marker
Sub AddPolyLineLatLng(polyLineID As String, markerLat As Double, markerLng As Double)
markerLat = BANano.parseFloat(markerLat)
markerLng = BANano.parseFloat(markerLng)
Dim latlng As Map = CreateMap()
latlng.Put("lat", markerLat)
latlng.Put("lng", markerLng)
AddPolyLineLatLngMap(polyLineID, latlng)
End Sub
Sub setDraggable(b As Boolean)
options.Put("draggable", mDraggable)
VElement.SetData(mDraggable, b)
End Sub
Sub setZoomControl(b As Boolean)
options.put("zoomControl", b)
bZoomControl = b
End Sub
Sub setScaleControl(b As Boolean)
options.put("scaleControl", b)
bScaleControl = b
End Sub
Sub setStreetViewControl(b As Boolean)
options.put("streetViewControl", b)
bStreetViewControl = b
End Sub
Sub setRotateControl(b As Boolean)
options.put("rotateControl", b)
bRotateControl = b
End Sub
Sub setMapTypeControl(b As Boolean)
options.put("mapTypeControl", b)
bMapTypeControl = b
End Sub
Sub setDisableDefaultUI(b As Boolean)
options.put("disableDefaultUi", b)
bDisableDefaultUI = b
End Sub
Sub setFullScreenControl(b As Boolean)
options.put("fullscreenControl", b)
bFullScreenControl = b
End Sub
Sub setMarkersClickable(b As Boolean)
bMarkersClickable = b
VElement.SetData(sMarkersClickable, b)
End Sub
Sub setMarkersDraggable(b As Boolean)
VElement.SetData(sMarkersDraggable, b)
bMarkersDraggable = b
End Sub
Sub setKMLClickable(b As Boolean)
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
Sub SetView(Lat As Double, Lng As Double, Zoom As Int)
SetCenter(Lat, Lng)
setZoom(Zoom)
End Sub
Sub SetCenterLatLon(latlon As Map)
VC.SetData(scenter, latlon)
End Sub
Sub setZoom(z As Int)
z = BANano.parseInt(z)
VElement.SetData(szoom, z)
mZoom = z
End Sub
Sub UpdateZoom(z As Int)
z = BANano.parseInt(z)
VC.SetData(szoom, z)
mZoom = z
End Sub
Sub setMapType(maptype As String)
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
'Hidden on xtra small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXSOnly
VElement.AddClass("hidden-xs-only")
End Sub
'Hidden on small devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMOnly
VElement.AddClass("d-sm-none d-md-flex")
End Sub
'Hidden on medium devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDOnly
VElement.AddClass("d-md-none d-lg-flex")
End Sub
'Hidden on large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGOnly
VElement.AddClass("d-lg-none d-xl-flex")
End Sub
'Hidden on xtra large devices only. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenXLOnly
VElement.AddClass("d-xl-none")
End Sub
'Hidden on small and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndDown
VElement.AddClass("hidden-sm-and-down")
End Sub
'Hidden on medium and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndDown
VElement.AddClass("hidden-md-and-down")
End Sub
'Hidden on large and down devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndDown
VElement.AddClass("hidden-lg-and-down")
End Sub
'Hidden on small and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenSMAndUp
VElement.AddClass("hidden-sm-and-up")
End Sub
'Hidden on medium and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenMDAndUp
VElement.AddClass("hidden-md-and-up")
End Sub
'Hidden on large and up devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenLGAndUp
VElement.AddClass("hidden-lg-and-up")
End Sub
'Hidden on all devics. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HiddenOnAll
VElement.AddClass("d-none")
End Sub
'Hide only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnSM
VElement.AddClass("d-sm-none d-md-flex")
End Sub
'Hide only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnMD
VElement.AddClass("d-md-none d-lg-flex")
End Sub
'Hide only on large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnLG
VElement.AddClass("d-lg-none d-xl-flex")
End Sub
'Hide only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXL
VElement.AddClass("d-xl-none")
End Sub
'Visible on all devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnAll
VElement.AddClass("d-flex")
End Sub
'Visible only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXS
VElement.AddClass("d-flex d-sm-none")
End Sub
'Visible only on small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnSM
VElement.AddClass("d-none d-sm-flex d-md-none")
End Sub
'Visible only on medium devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnMD
VElement.AddClass("d-none d-md-flex d-lg-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnLG
VElement.AddClass("d-none d-lg-flex d-xl-none")
End Sub
'Visible only on xtra large devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub VisibleOnlyOnXL
VElement.AddClass("d-none d-xl-flex")
End Sub
'bind the states for the component
Sub BindState(VS As VueComponent)
VC = VS
Dim mbindings As Map = VElement.bindings
Dim mmethods As Map = VElement.methods
'apply the binding for the control
For Each k As String In mbindings.Keys
Dim v As Object = mbindings.Get(k)
Select Case k
Case "key"
Case Else
VS.SetData(k, v)
End Select
Next
'apply the events
For Each k As String In mmethods.Keys
Dim cb As BANanoObject = mmethods.Get(k)
VS.SetCallBack(k, cb)
Next
End Sub
'COMPUSORY: This should be executed after BANano.Loadlayout when used on pgIndex
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
Sub UpdateVisible(V As VueComponent, b As Boolean)
V.SetData(stVIf, b)
V.SetData(stVShow, b)
End Sub
Sub IsReady(V As BANanoObject)
Dim mresp As Map
Dim mperr As Map
Dim mp As BANanoPromise = V.RunMethod("$gmapApiPromiseLazy", Null)
mp.ThenWait(mresp)
google = mresp
BANano.CallSub(mCallBack, $"${mName}_ready"$, Null)
mp.ElseWait(mperr)
mp.End
End Sub
'check the readiness of he map
Sub GetMapObject(V As VueComponent)
Dim smp As String = "$mapPromise"
Dim mresp As Map
Dim mperr As Map
Dim mp As BANanoPromise
mp = V.refs.GetField(mName).GetField(smp)
mp.ThenWait(mresp)
MapObject = mresp
mp.ElseWait(mperr)
mp.End
End Sub
'panTo
Sub panTo(V As VueComponent, lat As Double, lng As Double)
Dim latlng As Map = CreateMap()
latlng.Put("lat", lat)
latlng.Put("lng", lng)
'get the map object
GetMapObject(V)
MapObject.RunMethod("panTo", latlng)
End Sub
'add a circle
Sub AddCircle(CircleId As String, CircleTitle As String, CircleLatitude As Double,CircleLongitude As Double,CircleColor As String, CircleRadius As Int)
CircleId = CircleId.tolowercase
Dim mc As Map = CreateMap()
BANanoShared.PutRecursive(mc, "center.lat", CircleLatitude)
BANanoShared.PutRecursive(mc, "center.lng", CircleLongitude)
BANanoShared.PutRecursive(mc, "options.strokeColor", CircleColor)
BANanoShared.PutRecursive(mc, "options.fillColor", "#3388ff")
'
Dim bounds As Map = CreateMap()
mc.Put("radius", CircleRadius)
mc.Put("bounds", bounds)
mc.Put("title", CircleTitle)
mc.Put("id", CircleId)
mc.Put("visible", True)
circles.Put(CircleId, mc)
End Sub
'add a rectangle
Sub AddRectangle(rectID As String, rectTitle As String, rectLat1 As Double, rectLng1 As Double, rectLat2 As Double, rectLng2 As Double, rectColor As String, rectWeight As Int)
rectID = rectID.tolowercase
Dim mc As Map = CreateMap()
mc.Put("title", rectTitle)
mc.Put("id", rectID)
mc.Put("visible", True)
BANanoShared.PutRecursive(mc, "options.strokeColor", rectColor)
BANanoShared.PutRecursive(mc, "options.fillColor", "#3388ff")
BANanoShared.PutRecursive(mc, "options.weight", rectWeight)
'bottom right
BANanoShared.PutRecursive(mc, "bounds.south", rectLat2)
BANanoShared.PutRecursive(mc, "bounds.east", rectLng2)
'top left
BANanoShared.PutRecursive(mc, "bounds.north", rectLat1)
BANanoShared.PutRecursive(mc, "bounds.west", rectLng1)
rectangles.Put(rectID,mc)
End Sub
'get auto complete location
Sub Place2LatLng(place As Map) As Map
Dim lat As Double = BANanoShared.RunRecursive(place, "geometry.location.lat")
Dim lng As Double = BANanoShared.RunRecursive(place, "geometry.location.lng")
Dim placename As String = place.Get("name")
Dim m As Map = CreateMap()
m.Put("lat", lat)
m.Put("lng", lng)
m.Put("name", placename)
Return m
End Sub
'get the selected shape
Sub DrawingGetShape(shape As Map) As Map
Dim res As Map = CreateMap()
If BANano.IsNull(shape) Then Return res
Dim shapeType As String = shape.Get("type")
Dim overlay As Map = shape.Get("overlay")
Dim odraggable As Boolean
Dim oeditable As Boolean
Dim sfillColor As String
Dim dfillOpacity As Double
Dim sstrokeColor As String
Dim sstrokeWeight As String
Dim bvisible As Boolean
Dim lat As Double
Dim lng As Double
Dim odraggable As Boolean
Dim oclickable As Boolean
Dim oeditable As Boolean
Dim dradius As Double
Dim xpoints As List
'
xpoints.Initialize
odraggable = overlay.Get("draggable")
oeditable = overlay.Get("editable")
sfillColor = overlay.Get("fillColor")
dfillOpacity = overlay.Get("fillOpacity")
sstrokeColor = overlay.Get("strokeColor")
sstrokeWeight = overlay.Get("strokeWeight")
bvisible = overlay.Get("visible")
oclickable = overlay.Get("clickable")
'
res.put("draggable", odraggable)
res.put("editable", oeditable)
res.put("fillColor", sfillColor)
res.put("fillOpacity", dfillOpacity)
res.put("strokeColor", sstrokeColor)
res.put("strokeWeight", sstrokeWeight)
res.put("visible", bvisible)
res.put("clickable", oclickable)
res.Put("type", shapeType)
'
Select Case shapeType
Case "polygon"
xpoints = DrawingPolyGonGetPoints(shape)
res.Put("points", xpoints)
Case "polyline"
xpoints = DrawingPolylineGetPoints(shape)
res.Put("points", xpoints)
Case "rectangle"
Dim o As BANanoObject = overlay
Dim bounds As BANanoObject = o.RunMethod("getBounds", Null)
Dim ne As BANanoObject = bounds.RunMethod("getNorthEast", Null)
Dim sw As BANanoObject = bounds.RunMethod("getSouthWest", Null)
Dim nelat As Double = ne.RunMethod("lat", Null)
Dim nelng As Double = ne.RunMethod("lng", Null)
Dim swlat As Double = sw.RunMethod("lat", Null)
Dim swlng As Double = sw.RunMethod("lng", Null)
'
BANanoShared.PutRecursive(res, "ne.lat", nelat)
BANanoShared.PutRecursive(res, "ne.lng", nelng)
BANanoShared.PutRecursive(res, "sw.lat", swlat)
BANanoShared.PutRecursive(res, "sw.lng", swlng)
Case "circle"
Dim o As BANanoObject = overlay
dradius = o.RunMethod("getRadius", Null)
Dim bounds As BANanoObject = o.RunMethod("getBounds", Null)
Dim center As BANanoObject = bounds.RunMethod("getCenter", Null)
lat = center.RunMethod("lat", Null)
lng = center.RunMethod("lng", Null)
res.Put("lat", lat)
res.Put("lng", lng)
res.put("radius", dradius)
End Select
Return res
End Sub
'get the points on the polyline
private Sub DrawingPolylineGetPoints(selectedShape As BANanoObject) As List
Dim xpoints As List
xpoints.Initialize
'
Dim overlay As BANanoObject = selectedShape.GetField("overlay")
Dim bpath As BANanoObject = overlay.RunMethod("getPath", Null)
Dim spLength As Int = bpath.RunMethod("getLength", Null).result
spLength = spLength - 1
Dim p1 As Int
For p1 = 0 To spLength
Dim bpoint As BANanoObject = bpath.RunMethod("getAt", Array(p1))
Dim lat As Double = bpoint.RunMethod("lat", Null)
Dim lng As Double = bpoint.RunMethod("lng", Null)
Dim point As Map = CreateMap()
point.Put("lat", lat)
point.Put("lng", lng)
xpoints.Add(point)
Next
Return xpoints
End Sub
'get points on polygon
private Sub DrawingPolyGonGetPoints(selectedShape As BANanoObject) As List
Dim xpoints As List
xpoints.Initialize
Dim overlay As BANanoObject = selectedShape.GetField("overlay")
Dim paths As BANanoObject = overlay.RunMethod("getPaths", Null)
Dim pathLen As Int = paths.RunMethod("getLength", Null).Result
pathLen = pathLen - 1
Dim p As Int
For p = 0 To pathLen
Dim sp As BANanoObject = paths.RunMethod("getAt", Array(p))
Dim spLength As Int = sp.RunMethod("getLength", Null).result
spLength = spLength - 1
Dim p1 As Int
For p1 = 0 To spLength
Dim bpoint As BANanoObject = sp.RunMethod("getAt", Array(p1))
Dim lat As Double = bpoint.RunMethod("lat", Null)
Dim lng As Double = bpoint.RunMethod("lng", Null)
Dim point As Map = CreateMap()
point.Put("lat", lat)
point.Put("lng", lng)
xpoints.Add(point)
Next
Next
Return xpoints
End Sub
Sub AddClass(s As String)
VElement.AddClass(s)
End Sub
Sub AddAttr(p As String, v As Object)
VElement.AddAttr(p, v)
End Sub
Sub AddStyle(p As String, v As String)
VElement.AddStyle(p, v)
End Sub
Sub RemoveAttr(p As String)
VElement.RemoveAttr(p)
End Sub
'Returns the name of the component with # infront for use with BANano.LoadLayout
Sub getHere As String
Return $"#${mName}"$
End Sub
'Hide only on xtra small devices. You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub HideOnlyOnXS
AddClass("hidden-xs-only")
End Sub
Sub UpdateTextDecoration(s As String)
VElement.UpdateTextDecoration(VC, s)
End Sub
Sub UpdateTextDecorationOnApp(A As VuetifyApp, s As String)
VElement.UpdateTextDecorationOnApp(A, s)
End Sub
Sub UpdateTruncate(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTruncateOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "d-inline-block")
eClass = VElement.ListAddDistinctItem(eClass, "text-truncate")
Case False
eClass = VElement.ListRemoveItem(eClass, "d-inline-block")
eClass = VElement.ListRemoveItem(eClass, "text-truncate")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThrough(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateLineThroughOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-line-through")
Case False
eClass = VElement.ListRemoveItem(eClass, "text-decoration-line-through")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThin(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontThinOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-thin")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-thin")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLight(b As Boolean)
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontLightOnApp(A As VuetifyApp, b As Boolean)
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-light")
Case False
eClass = VElement.ListRemoveItem(eClass, "font-weight-light")
End Select
A.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLine(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateUnderLineOnApp(A As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = A.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-underline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-underline")
End Select
a.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverline(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateOverlineOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "text-decoration-overline")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "text-decoration-overline")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBold(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateBoldOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-bold")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-bold")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlack(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateFontWeightBlackOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-weight-black")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-weight-black")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalic(b As Boolean)
'get the current list of bound classes
Dim eClass As List = VC.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
VC.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateItalicOnApp(C As VuetifyApp, b As Boolean)
'get the current list of bound classes
Dim eClass As List = C.GetData(VElement.bindClass)
Select Case b
Case True
'add the class
eClass = VElement.ListAddDistinctItem(eClass, "font-italic")
Case False
'remove the class
eClass = VElement.ListRemoveItem(eClass, "font-italic")
End Select
C.SetData(VElement.bindClass, eClass)
End Sub
Sub UpdateTextColor(xColor As String, xIntensity As String)
VElement.UpdateTextColor(VC, xColor, xIntensity)
End Sub
Sub UpdateTextColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateTextColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateColor(xColor As String, xIntensity As String)
VElement.UpdateColor(VC, xColor, xIntensity)
End Sub
Sub UpdateColorOnApp(C As VuetifyApp, xColor As String, xIntensity As String)
VElement.UpdateColorOnApp(c, xColor, xIntensity)
End Sub
Sub UpdateTextAlign(talign As String)
VElement.UpdateTextAlign(VC, talign)
End Sub
Sub UpdateTextAlignOnApp(C As VuetifyApp, talign As String)
VElement.UpdateTextAlignOnApp(C, talign)
End Sub
'Toggle a class at runtime, needs BindState
Sub ToggleClass(sClass As String)
VElement.ToggleClassRuntime(VC, sClass)
End Sub
'Toggle a clas at runtime, neeeds BindState
Sub ToggleClassOnApp(A As VuetifyApp, sClass As String)
VElement.ToggleClassOnApp(A, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassRT(sClass As String)
VElement.AddClassRuntime(VC, sClass)
End Sub
'Add a class at runtime, needs BindState
Sub AddClassOnApp(A As VuetifyApp, sClass As String)
VElement.AddClassRuntimeOnAPp(A, sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassRT(sClass As String)
VElement.RemoveClassRuntime(VC, sClass)
End Sub
'Removes a class, You need to execute this after BANano.LoadLayout on Initialize ONLY
Sub RemoveClass(sClass As String)
VElement.RemoveClass(sClass)
End Sub
'Removes a class at runtime, needs BindState
Sub RemoveClassOnApp(A As VuetifyApp, sClass As String)
VElement.RemoveClassRuntimeOnApp(A, sClass)
End Sub
'Add style at runtime, needs BindState
Sub AddStyleRT(prop As String, value As String)
VElement.AddStyleRunTime(VC , prop, value)
End Sub
'Removes a style at runtime, needs BindState
Sub RemoveStyleRT(prop As String)
VElement.RemoveStyleRunTime(VC , prop)
End Sub
'Add a style at runtime. Use CamelCase, needs BindState
Sub AddStyleOnApp(A As VuetifyApp, prop As String, value As String)
VElement.AddStyleOnAPp(A , prop, value)
End Sub
'Removes a style at runtime. Use CamelCase, needs BindState
Sub RemoveStyleOnApp(A As VuetifyApp, prop As String)
VElement.RemoveStyleOnApp(A , prop)
End Sub
'Bind this attribute to this state name and specify a default value, needs BindState
Sub BindDefault(prop As String, varName As String, def As Object)
VElement.Bind(prop, varName)
VElement.SetData(varName, def)
End Sub
'Bind this attribute to this state name, needs BindState
Sub Bind(prop As String, varName As String)
VElement.Bind(prop, varName)
VElement.SetData(varName, Null)
End Sub
Sub getHTML As String
If mElement <> Null Then
Return mElement.GetHTML
Else
Return ""
End If
End Sub