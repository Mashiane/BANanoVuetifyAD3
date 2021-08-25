B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12

#if javascript
var blueIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-blue.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var goldIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-gold.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var redIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-red.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var greenIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-green.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var orangeIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-orange.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var yellowIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-yellow.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var violetIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-violet.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var greyIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-grey.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});

var blackIcon = new L.Icon({
	iconUrl: './assets/marker-icon-2x-black.png',
	shadowUrl: './assets/marker-shadow.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});
#End If


#Event: Ready
#Event: UpdateCenter (latLng as Object)
#Event: UpdateZoom (latLng As Object)
#Event: UpdateBounds (bounds as Object)
#Event: Resize
'#Event: Tooltip_Click (item As Map)
'#Event: PopUp_Click (item As Map)
#Event: ToolBar_Click (id As String)
#Event: MarkerClick (marker As Map)
#Event: PolygonClick (marker As Map)
#Event: PolylineClick (marker As Map)
#Event: CircleClick (marker As Map)
#Event: RectangleClick (marker As Map)

#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: LeafLet, Description: Title
#DesignerProperty: Key: MapType, DisplayName: MapType, FieldType: String, DefaultValue: OpenStreetMap, Description: MapType, List: OpenStreetMap|GoogleRoadMap|GoogleSatellite|GoogleHybrid|GoogleTerrain
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: InsideVCard, DisplayName: InsideVCard, FieldType: Boolean, DefaultValue: True, Description: InsideVCard
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: 0, Description: ZIndex
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500px, Description: Height
#DesignerProperty: Key: LayerToken, DisplayName: LayerToken, FieldType: String, DefaultValue: , Description: LayerToken
#DesignerProperty: Key: UseMakiMarkers, DisplayName: UseMakiMarkers, FieldType: Boolean, DefaultValue: True, Description: UseMakiMarkers
#DesignerProperty: Key: PermanentTooltips, DisplayName: PermanentTooltips, FieldType: Boolean, DefaultValue: False, Description: PermanentTooltips
'
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (;), FieldType: String, DefaultValue:  add; edit; delete; refresh, Description: Item Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  mdi-plus; mdi-pencil; mdi-delete; mdi-refresh, Description: Item Icons
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  green; amber; red; indigo, Description: Item Colors

'#DesignerProperty: Key: Bounds, DisplayName: Bounds, FieldType: String, DefaultValue: , Description: Bounds
#DesignerProperty: Key: CenterLat, DisplayName: CenterLat, FieldType: String, DefaultValue: 0, Description: CenterLat
#DesignerProperty: Key: CenterLng, DisplayName: CenterLng, FieldType: String, DefaultValue: 0, Description: CenterLng
#DesignerProperty: Key: ClosePopupOnClick, DisplayName: ClosePopupOnClick, FieldType: Boolean, DefaultValue: False, Description: ClosePopupOnClick
'#DesignerProperty: Key: Crs, DisplayName: Crs, FieldType: String, DefaultValue: , Description: Crs
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False , Description: Disabled
#DesignerProperty: Key: DoubleClickZoom, DisplayName: DoubleClickZoom, FieldType: Boolean, DefaultValue: False, Description: DoubleClickZoom
#DesignerProperty: Key: EaseLinearity, DisplayName: EaseLinearity, FieldType: Int, DefaultValue: 0, Description: EaseLinearity
#DesignerProperty: Key: FadeAnimation, DisplayName: FadeAnimation, FieldType: Boolean, DefaultValue: False, Description: FadeAnimation

#DesignerProperty: Key: Inertia, DisplayName: Inertia, FieldType: Boolean, DefaultValue: False, Description: Inertia
#DesignerProperty: Key: InertiaDeceleration, DisplayName: InertiaDeceleration, FieldType: Int, DefaultValue: 0, Description: InertiaDeceleration
#DesignerProperty: Key: InertiaMaxSpeed, DisplayName: InertiaMaxSpeed, FieldType: Int, DefaultValue: 0, Description: InertiaMaxSpeed
#DesignerProperty: Key: MarkerZoomAnimation, DisplayName: MarkerZoomAnimation, FieldType: Boolean, DefaultValue: False, Description: MarkerZoomAnimation
'#DesignerProperty: Key: MaxBounds, DisplayName: MaxBounds, FieldType: String, DefaultValue: , Description: MaxBounds
#DesignerProperty: Key: MaxBoundsViscosity, DisplayName: MaxBoundsViscosity, FieldType: Int, DefaultValue: 0, Description: MaxBoundsViscosity
#DesignerProperty: Key: MaxZoom, DisplayName: MaxZoom, FieldType: Int, DefaultValue: 20, Description: MaxZoom
#DesignerProperty: Key: MinZoom, DisplayName: MinZoom, FieldType: Int, DefaultValue: 3, Description: MinZoom
#DesignerProperty: Key: NoBlockingAnimations, DisplayName: NoBlockingAnimations, FieldType: Boolean, DefaultValue: False, Description: NoBlockingAnimations
'#DesignerProperty: Key: Options, DisplayName: Options, FieldType: String, DefaultValue: , Description: Options
'#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: String, DefaultValue: , Description: Padding
'#DesignerProperty: Key: PaddingBottomRight, DisplayName: PaddingBottomRight, FieldType: String, DefaultValue: , Description: PaddingBottomRight
'#DesignerProperty: Key: PaddingTopLeft, DisplayName: PaddingTopLeft, FieldType: String, DefaultValue: , Description: PaddingTopLeft

#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf

#DesignerProperty: Key: WordCopyJump, DisplayName: WordCopyJump, FieldType: Boolean, DefaultValue: False, Description: WordCopyJump
#DesignerProperty: Key: Zoom, DisplayName: Zoom, FieldType: Int, DefaultValue: 3, Description: Zoom
#DesignerProperty: Key: ZoomAnimation, DisplayName: ZoomAnimation, FieldType: Boolean, DefaultValue: False, Description: ZoomAnimation
#DesignerProperty: Key: ZoomAnimationThreshold, DisplayName: ZoomAnimationThreshold, FieldType: Int, DefaultValue: 0, Description: ZoomAnimationThreshold
#DesignerProperty: Key: ZoomSnap, DisplayName: ZoomSnap, FieldType: String, DefaultValue: 0.5, Description: ZoomSnap
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
	Private sBounds As String   'ignore
	Private sCenterLat As String
	Private sCenterLng As String
	Private bClosePopupOnClick As Boolean
	Private sCrs As String     'ignore
	Private bDisabled As String
	Private bDoubleClickZoom As Boolean
	Private iEaseLinearity As Int
	Private sElevation As String
	Private bFadeAnimation As Boolean
	Private sHeight As String
	Private bHidden As Boolean
	Private bInertia As Boolean
	Private iInertiaDeceleration As Int
	Private iInertiaMaxSpeed As Int
	Private sLayerAttribution As String = $"&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors"$
	Private sLayerToken As String
	Private sLayerUrl As String = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
	Private bMarkerZoomAnimation As Boolean
	Private sMaxBounds As String    'ignore
	Private iMaxBoundsViscosity As Int
	Private iMaxZoom As Int
	Private iMinZoom As Int
	Private bNoBlockingAnimations As Boolean
	Private sPadding As String   'ignore
	Private sPaddingBottomRight As String    'ignore
	Private sPaddingTopLeft As String    'ignore
	Private sTitle As String
	Private sVBind As String
	Private sVIf As String
	Private sVShow As String
	Private sWidth As String
	Private bWordCopyJump As Boolean
	Private iZoom As Int
	Private bZoomAnimation As Boolean
	Private iZoomAnimationThreshold As Int
	Private sZoomSnap As String
	Private bUseMakiMarkers As Boolean
	Private OpenPopUpMap As Map 
	Private bInsideVCard As Boolean
	Private zZIndex As String 'ignore
 	'
	Dim xTitle As String
	Dim xoptions As String
	Dim xbounds As String 'ignore
	Dim xDisabled As String
	Dim xcenter As String
	Dim xtoken As String
	Dim xattribution As String
	Dim xurl As String
	Dim xzoom As String
	Public mapObject As BANanoObject
	Private L As BANanoObject
	Private mapOptions As Map
	Private xmarker As String
	Private xmarkers As String
	Private xresize As String
	Private xkey As String 'ignore
	Private xpolygons As String
	Private polygons As Map
	Private xpolygon As String
	Private xcircle As String
	Private xcircles As String
	Private xrectangles As String
	Private xrectangle As String
	Private rectangles As Map
	Private xgeojson As String
	Private xgeojsons As String
	Private geojsons As Map
	Private sMapType As String
	'
	Type GeoJsonType(id As String, name As String, visible As Boolean, geojson As String, title As String, url As String)
	
	Type VMarkerType(MarkerId As String, MarkerTitle As String, MarkerWindowOpened As Boolean, MarkerLatitude As String, _
	MarkerLongitude As String, MarkerColor As String,  MarkerInforWindow As String, _
	MarkerDraggable As Boolean, MarkerriseOnHover As Boolean, MarkerIconSize As List, MarkerIconAnchor As List, MarkerIcon As String, MarkerHasIcon As Boolean, MarkerHasIconColor As Boolean, MarkerIconColor As String, MarkerPopUp As String)
	'
	Private markers As Map
	Private circles As Map
	Private polylines As Map
	Private popups As Map
	
	Type VCircle(CircleId As String,CircleTitle As String, CircleWeight As Int, CircleLatitude As Double,CircleLongitude As Double,CircleColor As String,CircleFillColor As String, CircleFillOpacity As Double, CircleRadius As Int, CirclePopUp As String)
	
	Type VPolyLine(ID As String, Title As String, Color As String, Weight As Int, Opacity As Double, FillColor As String, FillOpacity As Double, fitBounds As Boolean, points As List, PopUp As String)
	
	Type VIconSize(small As String, medium As String, large As String)
	
	Public EnumMarkerIconSize As VIconSize
	Type MakiIcons(aerialway As String,airfield As String,airport As String,alcohol As String,america As String,amusement As String,aquarium As String,art As String,attraction As String,bakery As String,bank As String,bar As String,barrier As String,baseball As String,basketball As String,bbq As String,beer As String,bicycle As String,blood As String,buddhism As String,building As String,bus As String,cafe As String,campsite As String,car As String,castle As String,cemetery As String,cinema As String,circle As String,city As String,clothing As String,college As String,commercial As String,cricket As String,cross As String,dam As String,danger As String,defibrillator As String,dentist As String,doctor As String,dog As String,drinking As String,embassy As String,emergency As String,entrance As String,farm As String,fast As String,fence As String,ferry As String,fire As String,florist As String,fuel As String,gaming As String,garden As String,gift As String,golf As String,grocery As String,hairdresser As String,harbor As String,heart As String,heliport As String,home As String,horse As String,hospital As String,ice As String,industry As String,information As String,karaoke As String,landmark As String,landuse As String,laundry As String,library As String,lighthouse As String,lodging As String,logging As String,marker As String,mobile As String,monument As String,mountain As String,museum As String,music As String,natural As String,park As String,parking As String,pharmacy As String,picnic As String,pitch As String,place As String,playground As String,police As String,post As String,prison As String,rail As String,ranger As String,recycling As String,religious As String,residential As String,restaurant As String,roadblock As String,rocket As String,school As String,scooter As String,shelter As String,shop As String,skiing As String,slaughterhouse As String,snowmobile As String,soccer As String,square As String,stadium As String,star As String,suitcase As String,sushi As String,swimming As String,teahouse As String,telephone As String,tennis As String,theatre As String,toilet As String,town As String,triangle As String,veterinary As String,village As String,volcano As String,warehouse As String,waste As String,water As String,wetland As String,wheelchair As String,zoo As String)
	'
	Public EnumMakiIcons As MakiIcons
	Private xpolyLine As String
	Private xpolyLines As String
	Private bPermanentTooltips As Boolean
	'
	Private sItemKeys As String
	Private sItemIcons As String
	Private sItemColors As String
	Private sButtons As String
	'
	Public const COLOR_BLUE As String = "blue"
	Public const COLOR_GOLD As String = "gold"
	Public const COLOR_RED As String = "red"
	Public const COLOR_GREEN As String = "green"
	Public const COLOR_ORANGE As String = "orange"
	Public const COLOR_YELLOW As String = "yellow"
	Public const COLOR_VIOLET As String = "violet"
	Public const COLOR_GREY As String = "grey"
	Public const COLOR_BLACK As String = "black"
	'
	Private blueIcon As BANanoObject
	Private goldIcon As BANanoObject
	Private redIcon As BANanoObject
	Private greenIcon As BANanoObject
	Private orangeIcon As BANanoObject
	Private yellowIcon As BANanoObject
	Private violetIcon As BANanoObject
	Private greyIcon As BANanoObject
	Private blackIcon As BANanoObject
	Private sZIndex As String
	Private sKey As String
'	Private mtt As String
'	Private mpp As String
'	Private pltt As String
'	Private plpp As String
'	Private ctt As String
'	Private cpp As String
'	Private pgtt As String
'	Private pgpp As String
'	Private rtt As String
'	Private rpp As String
	Private VC As VueComponent
	Private rectList As List
	Private polygonList As List
	Private polylineList As List
	Private geoList As List
	Private circleList As List
	Private markerList As List
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String)
	BANano.DependsOnAsset("leaflet.css")
	BANano.DependsOnAsset("leaflet.js")
	BANano.DependsOnAsset("vue2-leaflet.min.js")
	BANano.DependsOnAsset("vue2-leaflet-movingmarker.umd.min.js")
	'
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
	xoptions = $"${mName}options"$
	xTitle = $"${mName}title"$
	xbounds = $"${mName}bounds"$
	xDisabled = $"${mName}disabled"$
	xcenter = $"${mName}center"$
	xtoken = $"${mName}token"$
	xattribution = $"${mName}attribution"$
	xurl = $"${mName}url"$
	sMaxBounds = $"${mName}maxbounds"$
	xzoom = $"${mName}zoom"$
	mapOptions.Initialize 
	markers.Initialize 
	xmarker = $"${mName}marker"$
	xmarkers = $"${mName}markers"$
	xresize = $"${mName}_resize"$
	xkey = $"${mName}key"$
	xpolygons = $"${mName}polygons"$
	xpolygon = $"${mName}polygon"$
	xpolyLine = $"${mName}polyline"$
	xpolyLines = $"${mName}polylines"$
	xcircle = $"${mName}circle"$
	xcircles = $"${mName}circles"$
	xrectangle = $"${mName}rectangle"$
	xrectangles = $"${mName}rectangles"$
	xgeojson = $"${mName}geojson"$
	xgeojsons = $"${mName}geojsons"$
	sButtons = $"${mName}buttons"$
	sKey = $"${mName}key"$
	'
	geojsons.Initialize 
	markers.Initialize 
	circles.Initialize 
	polygons.Initialize 
	polylines.Initialize 
	popups.Initialize 
	rectangles.Initialize 
	OpenPopUpMap.Initialize 
	'
	EnumMarkerIconSize.Initialize 
	EnumMarkerIconSize.large = "l"
	EnumMarkerIconSize.medium = "m"
	EnumMarkerIconSize.small = "s"
	EnumMakiIcons.Initialize
	EnumMakiIcons.aerialway = "aerialway"
	EnumMakiIcons.airfield = "airfield"
	EnumMakiIcons.airport = "airport"
	EnumMakiIcons.alcohol = "alcohol"
	EnumMakiIcons.america = "america"
	EnumMakiIcons.amusement = "amusement"
	EnumMakiIcons.aquarium = "aquarium"
	EnumMakiIcons.art = "art"
	EnumMakiIcons.attraction = "attraction"
	EnumMakiIcons.bakery = "bakery"
	EnumMakiIcons.bank = "bank"
	EnumMakiIcons.bar = "bar"
	EnumMakiIcons.barrier = "barrier"
	EnumMakiIcons.baseball = "baseball"
	EnumMakiIcons.basketball = "basketball"
	EnumMakiIcons.bbq = "bbq"
	EnumMakiIcons.beer = "beer"
	EnumMakiIcons.bicycle = "bicycle"
	EnumMakiIcons.blood = "blood"
	EnumMakiIcons.buddhism = "buddhism"
	EnumMakiIcons.building = "building"
	EnumMakiIcons.bus = "bus"
	EnumMakiIcons.cafe = "cafe"
	EnumMakiIcons.campsite = "campsite"
	EnumMakiIcons.car = "car"
	EnumMakiIcons.castle = "castle"
	EnumMakiIcons.cemetery = "cemetery"
	EnumMakiIcons.cinema = "cinema"
	EnumMakiIcons.circle = "circle"
	EnumMakiIcons.city = "city"
	EnumMakiIcons.clothing = "clothing"
	EnumMakiIcons.college = "college"
	EnumMakiIcons.commercial = "commercial"
	EnumMakiIcons.cricket = "cricket"
	EnumMakiIcons.cross = "cross"
	EnumMakiIcons.dam = "dam"
	EnumMakiIcons.danger = "danger"
	EnumMakiIcons.defibrillator = "defibrillator"
	EnumMakiIcons.dentist = "dentist"
	EnumMakiIcons.doctor = "doctor"
	EnumMakiIcons.dog = "dog"
	EnumMakiIcons.drinking = "drinking"
	EnumMakiIcons.embassy = "embassy"
	EnumMakiIcons.emergency = "emergency"
	EnumMakiIcons.entrance = "entrance"
	EnumMakiIcons.farm = "farm"
	EnumMakiIcons.fast = "fast"
	EnumMakiIcons.fence = "fence"
	EnumMakiIcons.ferry = "ferry"
	EnumMakiIcons.fire = "fire"
	EnumMakiIcons.florist = "florist"
	EnumMakiIcons.fuel = "fuel"
	EnumMakiIcons.gaming = "gaming"
	EnumMakiIcons.garden = "garden"
	EnumMakiIcons.gift = "gift"
	EnumMakiIcons.golf = "golf"
	EnumMakiIcons.grocery = "grocery"
	EnumMakiIcons.hairdresser = "hairdresser"
	EnumMakiIcons.harbor = "harbor"
	EnumMakiIcons.heart = "heart"
	EnumMakiIcons.heliport = "heliport"
	EnumMakiIcons.home = "home"
	EnumMakiIcons.horse = "horse"
	EnumMakiIcons.hospital = "hospital"
	EnumMakiIcons.ice = "ice"
	EnumMakiIcons.industry = "industry"
	EnumMakiIcons.information = "information"
	EnumMakiIcons.karaoke = "karaoke"
	EnumMakiIcons.landmark = "landmark"
	EnumMakiIcons.landuse = "landuse"
	EnumMakiIcons.laundry = "laundry"
	EnumMakiIcons.library = "library"
	EnumMakiIcons.lighthouse = "lighthouse"
	EnumMakiIcons.lodging = "lodging"
	EnumMakiIcons.logging = "logging"
	EnumMakiIcons.marker = "marker"
	EnumMakiIcons.mobile = "mobile"
	EnumMakiIcons.monument = "monument"
	EnumMakiIcons.mountain = "mountain"
	EnumMakiIcons.museum = "museum"
	EnumMakiIcons.music = "music"
	EnumMakiIcons.natural = "natural"
	EnumMakiIcons.park = "park"
	EnumMakiIcons.parking = "parking"
	EnumMakiIcons.pharmacy = "pharmacy"
	EnumMakiIcons.picnic = "picnic"
	EnumMakiIcons.pitch = "pitch"
	EnumMakiIcons.place = "place"
	EnumMakiIcons.playground = "playground"
	EnumMakiIcons.police = "police"
	EnumMakiIcons.post = "post"
	EnumMakiIcons.prison = "prison"
	EnumMakiIcons.rail = "rail"
	EnumMakiIcons.ranger = "ranger"
	EnumMakiIcons.recycling = "recycling"
	EnumMakiIcons.religious = "religious"
	EnumMakiIcons.residential = "residential"
	EnumMakiIcons.restaurant = "restaurant"
	EnumMakiIcons.roadblock = "roadblock"
	EnumMakiIcons.rocket = "rocket"
	EnumMakiIcons.school = "school"
	EnumMakiIcons.scooter = "scooter"
	EnumMakiIcons.shelter = "shelter"
	EnumMakiIcons.shop = "shop"
	EnumMakiIcons.skiing = "skiing"
	EnumMakiIcons.slaughterhouse = "slaughterhouse"
	EnumMakiIcons.snowmobile = "snowmobile"
	EnumMakiIcons.soccer = "soccer"
	EnumMakiIcons.square = "square"
	EnumMakiIcons.stadium = "stadium"
	EnumMakiIcons.star = "star"
	EnumMakiIcons.suitcase = "suitcase"
	EnumMakiIcons.sushi = "sushi"
	EnumMakiIcons.swimming = "swimming"
	EnumMakiIcons.teahouse = "teahouse"
	EnumMakiIcons.telephone = "telephone"
	EnumMakiIcons.tennis = "tennis"
	EnumMakiIcons.theatre = "theatre"
	EnumMakiIcons.toilet = "toilet"
	EnumMakiIcons.town = "town"
	EnumMakiIcons.triangle = "triangle"
	EnumMakiIcons.veterinary = "veterinary"
	EnumMakiIcons.village = "village"
	EnumMakiIcons.volcano = "volcano"
	EnumMakiIcons.warehouse = "warehouse"
	EnumMakiIcons.waste = "waste"
	EnumMakiIcons.water = "water"
	EnumMakiIcons.wetland = "wetland"
	EnumMakiIcons.wheelchair = "wheelchair"
	EnumMakiIcons.zoo = "zoo"
	'
'	mtt = $"${mName}mtt"$
'	mpp = $"${mName}mpp"$
'	pltt =$"${mName}pltt"$
'	plpp = $"${mName}plpp"$
'	ctt = $"${mName}ctt"$
'	cpp = $"${mName}cpp"$
'	pgtt = $"${mName}pgtt"$
'	pgpp = $"${mName}pgpp"$
'	rtt = $"${mName}rtt"$
'	rpp = $"${mName}rpp"$
	'
	blueIcon.Initialize("blueIcon")
	goldIcon.Initialize("goldIcon")
	redIcon.Initialize("redIcon")
	greenIcon.Initialize("greenIcon")
	orangeIcon.Initialize("orangeIcon")
	yellowIcon.Initialize("yellowIcon")
	violetIcon.Initialize("violetIcon")
	greyIcon.Initialize("greyIcon")
	blackIcon.Initialize("blackIcon")
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		'sBounds = Props.GetDefault("Bounds", "")
		sCenterLat = Props.GetDefault("CenterLat", "0")
		sCenterLng = Props.GetDefault("CenterLng", "0")
		bClosePopupOnClick = Props.GetDefault("ClosePopupOnClick", False)
		bClosePopupOnClick = BANanoShared.parseBool(bClosePopupOnClick)
		sCrs = Props.GetDefault("Crs", "")
		bDisabled = Props.GetDefault("Disabled", False)
		bDisabled = BANanoShared.parseBool(bDisabled)
		bDoubleClickZoom = Props.GetDefault("DoubleClickZoom", False)
		bDoubleClickZoom = BANanoShared.parseBool(bDoubleClickZoom)
		iEaseLinearity = Props.GetDefault("EaseLinearity", 0)
		sElevation = Props.GetDefault("Elevation", "")
		bFadeAnimation = Props.GetDefault("FadeAnimation", False)
		bFadeAnimation = BANanoShared.parseBool(bFadeAnimation)
		sHeight = Props.GetDefault("Height", "")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		bInertia = Props.GetDefault("Inertia", False)
		bInertia = BANanoShared.parseBool(bInertia)
		iInertiaDeceleration = Props.GetDefault("InertiaDeceleration", 0)
		iInertiaMaxSpeed = Props.GetDefault("InertiaMaxSpeed", 0)
		'sLayerAttribution = Props.GetDefault("LayerAttribution", "")
		sLayerToken = Props.GetDefault("LayerToken", "")
		'sLayerUrl = Props.GetDefault("LayerUrl", "")
		bMarkerZoomAnimation = Props.GetDefault("MarkerZoomAnimation", False)
		bMarkerZoomAnimation = BANanoShared.parseBool(bMarkerZoomAnimation)
		sMaxBounds = Props.GetDefault("MaxBounds", "")
		iMaxBoundsViscosity = Props.GetDefault("MaxBoundsViscosity", 0)
		iMaxZoom = Props.GetDefault("MaxZoom", 11)
		iMinZoom = Props.GetDefault("MinZoom", 5)
		bNoBlockingAnimations = Props.GetDefault("NoBlockingAnimations", False)
		bNoBlockingAnimations = BANanoShared.parseBool(bNoBlockingAnimations)
		sPadding = Props.GetDefault("Padding", "")
		sPaddingBottomRight = Props.GetDefault("PaddingBottomRight", "")
		sPaddingTopLeft = Props.GetDefault("PaddingTopLeft", "")
		sTitle = Props.GetDefault("Title", "")
		sVBind = Props.GetDefault("VBind", "")
		sVIf = Props.GetDefault("VIf", "")
		sWidth = Props.GetDefault("Width", "")
		bWordCopyJump = Props.GetDefault("WordCopyJump", False)
		bWordCopyJump = BANanoShared.parseBool(bWordCopyJump)
		iZoom = Props.GetDefault("Zoom", 8)
		bZoomAnimation = Props.GetDefault("ZoomAnimation", False)
		bZoomAnimation = BANanoShared.parseBool(bZoomAnimation)
		iZoomAnimationThreshold = Props.GetDefault("ZoomAnimationThreshold", 0)
		sZoomSnap = Props.GetDefault("ZoomSnap", "")
		bUseMakiMarkers = Props.GetDefault("UseMakiMarkers", True)
		bUseMakiMarkers = BANanoShared.parsebool(bUseMakiMarkers)
		bPermanentTooltips = Props.GetDefault("PermanentTooltips", False)
		bPermanentTooltips = BANanoShared.parseBool(bPermanentTooltips)
		sItemKeys = Props.Get("ItemKeys")
		sItemIcons = Props.Get("ItemIcons")
		sItemColors = Props.Get("ItemColors")
		bInsideVCard = Props.GetDefault("InsideVCard", True)
		bInsideVCard = BANanoShared.parseBool(bInsideVCard)
		sZIndex = Props.GetDefault("ZIndex", 0)
		sMapType = Props.GetDefault("MapType", "OpenStreetMap")
 	End If 
	'
	Select Case sMapType
	Case "GoogleRoadMap"
		sLayerUrl = "http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}"
	Case "GoogleSatellite"
		sLayerUrl = "http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}"
	Case "GoogleHybrid"
		sLayerUrl = "http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}"
	Case "GoogleTerrain"
		sLayerUrl = "http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}"
	Case Else
		sLayerUrl = "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
	End Select	
	
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
	
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else
		If bInsideVCard Then	 
			mElement = mTarget.Append($"<v-card id="${mName}card"><v-card-title id="${mName}cardtitle">{{ ${xTitle} }}</v-card-title>
			<v-card-text id="${mName}cardtext"><l-map ref="${mName}" id="${mName}"></l-map></v-card-text></v-card>"$).Get("#" & mName) 
		Else
			mElement = mTarget.Append($"<l-map :key="${sKey}" ref="${mName}" id="${mName}"></l-map>"$).Get("#" & mName)
		End If	
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "l-map"
	
	'the map sits inside a v-card
	If bInsideVCard Then
		VElement.GetCard.AddAttr("elevation", sElevation)
		'add a spacer then add buttons
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
	End If
	
	If SubExists(mCallBack, $"${mName}_ready"$) Then
		VElement.SetOnEventOwn(mCallBack, $"${mName}_ready"$, "ready", Null)
	Else
		BANano.Throw($"VLeaflet.${mName} - generate members for Ready!"$)
	End If	
	
	'detect changes on size
	If SubExists(mCallBack, xresize) Then
		VElement.AddAttr("v-resize", xresize)
		VElement.SetMethod(mCallBack, xresize, Null)
	Else
		BANano.Throw($"VLeaflet.${mName} - generate members for Resize!"$)
	End If
		'
	If SubExists(mCallBack, $"${mName}_updatezoom"$) Then	
		VElement.SetOnEventOwn(mCallBack, $"${mName}_updatezoom"$, "update:zoom", "") 
	End If
	'
	If SubExists(mCallBack, $"${mName}_updatecenter"$) Then
		VElement.SetOnEventOwn(mCallBack, $"${mName}_updatecenter"$, "update:center", "")
	End If
	'
	If SubExists(mCallBack, $"${mName}_updatebounds"$) Then
		VElement.SetOnEventOWn(mCallBack, $"${mName}_updatebounds"$, "update:bounds", "") 
	End If
	'
	'add the tile later
	VElement.Append($"<l-tile-layer :url="${xurl}"></l-tile-layer>"$)
	'add the markers
	VElement.Append($"<l-marker id="${xmarker}" v-for="item in ${xmarkers}" :key="item.id">
	<l-popup v-if="item.popup"><div>{{ item.popup }}</div></l-popup>
	<l-tooltip v-if="item.tooltip" :options="{ permanent: ${bPermanentTooltips}, interactive: true}"><div>{{ item.tooltip }}</div></l-tooltip>
	</l-marker>"$)
	'
	'VElement.GetVueElement(mpp).SetOnEventOwn(mCallBack, $"${mName}_popup_click"$, "click", "item")
	'VElement.GetVueElement(mtt).SetOnEventOwn(mCallBack, $"${mName}_tooltip_click"$, "click", "item")
	
	'empty the markers
	VElement.SetData(xmarkers, markers)
	VElement.setdata("item", CreateMap())
	'get the marker and update its attributes
	Dim vmarker As VueElement = VElement.GetVueElement(xmarker)
	vmarker.Bind("draggable", "item.draggable")
	vmarker.Bind("icon", "item.icon")
	vmarker.Bind("id", "item.id")
	vmarker.Bind("lat-lng.sync", "item.latlng")
	vmarker.Bind("name", "item.name")
	vmarker.Bind("visible", "item.visible")
	vmarker.Bind("key", "item")
	vmarker.Bind("options", "item.options")
	vmarker.SetOnEventOwn(mCallBack, $"${mName}_MarkerClick"$, "click", "item")
	VElement.BindVueElement(vmarker)
	'
	'add polygons
	VElement.Append($"<l-polygon id="${xpolygon}" v-for="item in ${xpolygons}" :key="item.id">
	<l-popup v-if="item.popup"><div>{{ item.popup }}</div></l-popup>
	<l-tooltip v-if="item.tooltip" :options="{ permanent: ${bPermanentTooltips}, interactive: true}"><div>{{ item.tooltip }}</div></l-tooltip>
	</l-polygon>"$)
	'VElement.GetVueElement(pgpp).SetOnEventOwn(mCallBack, $"${mName}_popup_click"$, "click", "item")
	'VElement.GetVueElement(pgtt).SetOnEventOwn(mCallBack, $"${mName}_tooltip_click"$, "click", "item")
	
	VElement.SetData(xpolygons, polygons)
	Dim vpolygon As VueElement = VElement.GetVueElement(xpolygon)
	vpolygon.Bind("id", "item.id")
	vpolygon.Bind("name", "item.name")
	vpolygon.Bind("color", "item.color")
	vpolygon.Bind("lat-lngs", "item.latlngs")
	vpolygon.Bind("fill-color", "item.fillcolor")
	vpolygon.Bind("fill-opacity", "item.fillopacity")
	vpolygon.Bind("opacity", "item.opacity")
	vpolygon.Bind("weight", "item.weight")
	vpolygon.Bind("options", "item.options")
	vpolygon.SetOnEventOwn(mCallBack, $"${mName}_PolygonClick"$, "click", "item")
	VElement.BindVueElement(vpolygon)
	'
	'add polylines
	VElement.Append($"<l-polyline id="${xpolyLine}" v-for="item in ${xpolyLines}" :key="item.id">
	<l-popup v-if="item.popup"><div>{{ item.popup }}</div></l-popup>
	<l-tooltip v-if="item.tooltip" :options="{ permanent: ${bPermanentTooltips}, interactive: true}"><div>{{ item.tooltip }}</div></l-tooltip>	
	</l-polyline>"$)
	'VElement.GetVueElement(plpp).SetOnEventOwn(mCallBack, $"${mName}_popup_click"$, "click", "item")
	'VElement.GetVueElement(pltt).SetOnEventOwn(mCallBack, $"${mName}_tooltip_click"$, "click", "item")
	
	VElement.SetData(xpolyLines, polylines)
	Dim vpolyline As VueElement = VElement.GetVueElement(xpolyLine)
	vpolyline.Bind("id", "item.id")
	vpolyline.Bind("name", "item.name")
	vpolyline.Bind("color", "item.color")
	vpolyline.Bind("lat-lngs", "item.latlngs")
	vpolyline.Bind("fill-color", "item.fillcolor")
	vpolyline.Bind("fill-opacity", "item.fillopacity")
	vpolyline.Bind("opacity", "item.opacity")
	vpolyline.Bind("weight", "item.weight")
	vpolyline.Bind("options", "item.options")
	vpolyline.SetOnEventOwn(mCallBack, $"${mName}_PolylineClick"$, "click", "item")
	VElement.BindVueElement(vpolyline)
	
	'
	'add circles
	VElement.Append($"<l-circle id="${xcircle}" v-for="item in ${xcircles}" :key="item.id">
	<l-popup v-if="item.popup"><div>{{ item.popup }}</div></l-popup>
	<l-tooltip v-if="item.tooltip" :options="{ permanent: ${bPermanentTooltips}, interactive: true}"><div>{{ item.tooltip }}</div></l-tooltip>
	</l-circle>"$)
	'VElement.GetVueElement(cpp).SetOnEventOwn(mCallBack, $"${mName}_popup_click"$, "click", "item")
	'VElement.GetVueElement(ctt).SetOnEventOwn(mCallBack, $"${mName}_tooltip_click"$, "click", "item")
	
	VElement.SetData(xcircles, circles)
	Dim vcircle As VueElement = VElement.GetVueElement(xcircle)
	vcircle.Bind("id", "item.id")
	vcircle.Bind("name", "item.name")
	vcircle.Bind("color", "item.color")
	vcircle.Bind("lat-lng", "item.latlng")
	vcircle.Bind("fill-color", "item.fillcolor")
	vcircle.Bind("fill-opacity", "item.fillopacity")
	vcircle.Bind("opacity", "item.opacity")
	vcircle.Bind("weight", "item.weight")
	vcircle.Bind("radius", "item.radius")
	vcircle.Bind("options", "item.options")
	vcircle.SetOnEventOwn(mCallBack, $"${mName}_CircleClick"$, "click", "item")
	VElement.BindVueElement(vcircle)
	
	'add rectangle
	VElement.Append($"<l-rectangle id="${xrectangle}" v-for="item in ${xrectangles}" :key="item.id">
	<l-popup v-if="item.popup"><div>{{ item.popup }}</div></l-popup>
	<l-tooltip v-if="item.tooltip" :options="{ permanent: ${bPermanentTooltips}, interactive: true}"><div>{{ item.tooltip }}</div></l-tooltip>
	</l-rectangle>"$)
	'
	'VElement.GetVueElement(rpp).SetOnEventOwn(mCallBack, $"${mName}_popup_click"$, "click", "item")
	'VElement.GetVueElement(rtt).SetOnEventOwn(mCallBack, $"${mName}_tooltip_click"$, "click", "item")
	
	VElement.SetData(xrectangles, rectangles)
	Dim vrectangle As VueElement = VElement.GetVueElement(xrectangle)
	vrectangle.Bind("id", "item.id")
	vrectangle.Bind("name", "item.name")
	'vrectangle.Bind("color", "item.color")
	vrectangle.Bind("bounds", "item.bounds")
	vrectangle.Bind("l-style", "item.style")
	'vrectangle.Bind("weight", "item.weight")
	'vrectangle.Bind("fill-opacity", "item.fillopacity")
	'vrectangle.Bind("opacity", "item.opacity")
	'vrectangle.Bind("options", "item.options")
	vrectangle.SetOnEventOwn(mCallBack, $"${mName}_RectangleClick"$, "click", "item")
	VElement.BindVueElement(vrectangle)
	
	'add geojson
	VElement.Append($"<l-geo-json id="${xgeojson}" v-for="item in ${xgeojsons}" :key="item.id"></l-geo-json>"$)
	VElement.SetData(xgeojsons, geojsons)
	Dim vgeojson As VueElement = VElement.GetVueElement(xgeojson)
	vgeojson.Bind("id", "item.id")
	vgeojson.Bind("name", "item.name")
	vgeojson.Bind("visible", "item.visible")
	vgeojson.Bind("geojson", "item.geojson")
	vgeojson.Bind("options", "item.options")
		
		
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	'VElement.AddAttr(":bounds", xbounds)
	'VElement.SetData(sBounds, VElement.newmap)

	VElement.AddAttr(":center", xcenter)
	VElement.AddAttr(":close-popup-on-click", bClosePopupOnClick)
	VElement.AddStyle("z-index", sZIndex)
	VElement.SetData(sKey, DateTime.Now)
	'VElement.AddAttr(":crs", sCrs)
	'VElement.SetData(sCrs, )

	VElement.AddAttr(":disabled", xDisabled)
	VElement.SetData(xDisabled, bDisabled)

	VElement.AddAttr(":double-click-zoom", bDoubleClickZoom)
	VElement.AddAttr("ease-linearity", iEaseLinearity)
	VElement.AddAttr(":fade-animation", bFadeAnimation)
	VElement.AddStyle("height", sHeight)
	
	VElement.AddAttr(":inertia", bInertia)
	VElement.AddAttr("inertia-deceleration", iInertiaDeceleration)
	VElement.AddAttr("inertia-max-speed", iInertiaMaxSpeed)
	VElement.AddAttr(":attribution", xattribution)
	VElement.SetData(xattribution, sLayerAttribution)
	VElement.AddAttr(":token", xtoken)
	VElement.SetData(xtoken, sLayerToken)
	VElement.AddAttr(":url", xurl)
	VElement.SetData(xurl, sLayerUrl)
	VElement.AddAttr(":marker-zoom-animation", bMarkerZoomAnimation)
	'VElement.AddAttr(":max-bounds", sMaxBounds)
	'VElement.SetData(sMaxBounds, Null)

	VElement.AddAttr("max-bounds-viscosity", iMaxBoundsViscosity)
	VElement.AddAttr("max-zoom", iMaxZoom)
	VElement.AddAttr("min-zoom", iMinZoom)
	VElement.AddAttr(":no-blocking-animations", bNoBlockingAnimations)
	VElement.AddAttr(":options", xoptions)
	
	
	sZoomSnap = BANano.parseFloat(sZoomSnap)
	BANanoShared.PutRecursive(mapOptions, "zoomSnap", sZoomSnap)
	BANanoShared.PutRecursive(mapOptions, "trackResize", True)
	VElement.SetData(xoptions, mapOptions)
	
	'VElement.AddAttr(":padding", sPadding)
	'VElement.SetData(sPadding, )

	'VElement.AddAttr(":padding-bottom-right", sPaddingBottomRight)
	'VElement.SetData(sPaddingBottomRight, )

	'VElement.AddAttr(":padding-top-left", sPaddingTopLeft)
	'VElement.SetData(sPaddingTopLeft, )

	VElement.SetData(xTitle, sTitle)

	VElement.AddAttr("v-bind", sVBind)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.AddStyle("width", sWidth)
	VElement.AddAttr(":word-copy-jump", bWordCopyJump)
	VElement.AddAttr(":zoom", xzoom)
	iZoom = BANano.parseInt(iZoom)
	VElement.SetData(xzoom, iZoom)

	VElement.AddAttr(":zoom-animation", bZoomAnimation)
	VElement.AddAttr("zoom-animation-threshold", iZoomAnimationThreshold)
	
	'set center and zoom first
	sCenterLat = BANano.parseFloat(sCenterLat)
	sCenterLng = BANano.parseFloat(sCenterLng)
	Dim cobj As BANanoObject = latLng(sCenterLat, sCenterLng)
	VElement.SetData(xcenter, cobj)
	'
	VElement.RemoveBinding("item")
	VElement.BindAllEvents
End Sub

'build the rectangles
private Sub BuildRectangles
	rectList.Initialize 
	'
	Dim rsCnt As Int
	Dim rsTot As Int = rectangles.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As VPolyLine = rectangles.GetValueAt(rsCnt)
		Dim nm As Map = CreateMap()
		
		BANanoShared.PutRecursive(nm, "name", mt.ID)
		BANanoShared.PutRecursive(nm, "visible", True)
		BANanoShared.PutRecursive(nm, "id", mt.ID)
		BANanoShared.PutRecursive(nm, "bounds", mt.points)
		''style: { color: 'red', weight: 3 }
		BANanoShared.PutRecursive(nm, "style.color", mt.Color)
		BANanoShared.PutRecursive(nm, "style.weight", mt.weight)
		
		'BANanoShared.PutRecursive(nm, "color", mt.Color)
		'BANanoShared.PutRecursive(nm, "fillcolor", mt.FillColor)
		'BANanoShared.PutRecursive(nm, "fillopacity", mt.FillOpacity)
		'BANanoShared.PutRecursive(nm, "opacity", mt.Opacity)
		'BANanoShared.PutRecursive(nm, "weight", mt.Weight)
		If mt.title <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.Title)
		End If
		If mt.PopUp <> "" Then
			BANanoShared.PutRecursive(nm, "popup", mt.PopUp)
		End If
		'BANanoShared.PutRecursive(nm, "options.color", mt.Color)
		'BANanoShared.PutRecursive(nm, "options.weight", mt.weight)
		
		rectList.Add(nm)
	Next
End Sub

'build the polygon
private Sub BuildPolygons
	polygonList.Initialize 
	'
	Dim rsCnt As Int
	Dim rsTot As Int = polygons.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As VPolyLine = polygons.GetValueAt(rsCnt)
		Dim nm As Map = CreateMap()
		
		BANanoShared.PutRecursive(nm, "name", mt.ID)
		BANanoShared.PutRecursive(nm, "visible", True)
		BANanoShared.PutRecursive(nm, "id", mt.ID)
		BANanoShared.PutRecursive(nm, "latlngs", mt.points)
		BANanoShared.PutRecursive(nm, "color", mt.Color)
		BANanoShared.PutRecursive(nm, "fillcolor", mt.FillColor)
		BANanoShared.PutRecursive(nm, "fillopacity", mt.FillOpacity)
		BANanoShared.PutRecursive(nm, "opacity", mt.Opacity)
		BANanoShared.PutRecursive(nm, "weight", mt.Weight)
		If mt.title <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.Title)
		End If
		If mt.PopUp <> "" Then
			BANanoShared.PutRecursive(nm, "popup", mt.PopUp)
		End If
		polygonList.Add(nm)
	Next
End Sub


'build the polylines
private Sub BuildPolyLines
	polylineList.Initialize 
	'
	Dim rsCnt As Int
	Dim rsTot As Int = polylines.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As VPolyLine = polylines.GetValueAt(rsCnt)
		Dim nm As Map = CreateMap()
		
		BANanoShared.PutRecursive(nm, "name", mt.ID)
		BANanoShared.PutRecursive(nm, "visible", True)
		BANanoShared.PutRecursive(nm, "id", mt.ID)
		BANanoShared.PutRecursive(nm, "latlngs", mt.points)
		BANanoShared.PutRecursive(nm, "color", mt.Color)
		BANanoShared.PutRecursive(nm, "fillcolor", mt.FillColor)
		BANanoShared.PutRecursive(nm, "fillopacity", mt.FillOpacity)
		BANanoShared.PutRecursive(nm, "opacity", mt.Opacity)
		BANanoShared.PutRecursive(nm, "weight", mt.Weight)
		If mt.title <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.Title)
		End If
		If mt.PopUp <> "" Then
			BANanoShared.PutRecursive(nm, "popup", mt.PopUp)
		End If
		polylineList.Add(nm)
	Next

End Sub


'build the geo-json
private Sub BuildGeoJSON
	geoList.Initialize 
	Dim rsCnt As Int
	Dim rsTot As Int = geojsons.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As GeoJsonType = geojsons.GetValueAt(rsCnt)
		Dim nm As Map = CreateMap()
		BANanoShared.PutRecursive(nm, "name", mt.name)
		BANanoShared.PutRecursive(nm, "visible", mt.visible)
		BANanoShared.PutRecursive(nm, "id", mt.id)
		If mt.title <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.title)
		End If
		'get the file contents
		Dim geojson As String = BANano.Await(BANano.GetFileAsJSON(mt.url, Null))
		BANanoShared.PutRecursive(nm, "geojson", geojson)
		geoList.Add(nm)
	Next

End Sub

'build the circles
private Sub BuildCircles
	circleList.Initialize 
	'
	Dim rsCnt As Int
	Dim rsTot As Int = circles.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As VCircle = circles.GetValueAt(rsCnt)
		'
		Dim point As BANanoObject = latLng(mt.CircleLatitude , mt.CircleLongitude) 
		'
		Dim nm As Map = CreateMap()
		
		BANanoShared.PutRecursive(nm, "name", mt.CircleId)
		BANanoShared.PutRecursive(nm, "visible", True)
		BANanoShared.PutRecursive(nm, "id", mt.CircleId)
		BANanoShared.PutRecursive(nm, "latlng", point)
		BANanoShared.PutRecursive(nm, "color", mt.CircleColor)
		BANanoShared.PutRecursive(nm, "fillcolor", mt.CircleFillColor)
		BANanoShared.PutRecursive(nm, "fillopacity", mt.CircleFillOpacity)
		BANanoShared.PutRecursive(nm, "radius", mt.CircleRadius)
		BANanoShared.PutRecursive(nm, "weight", mt.CircleWeight)
		If mt.CircleTitle <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.CircleTitle)
		End If
		If mt.CirclePopUp <> "" Then
			BANanoShared.PutRecursive(nm, "popup", mt.CirclePopUp)
		End If
		circleList.Add(nm)
	Next

End Sub

'build the markers for the map
private Sub BuildMarkers
	markerList.Initialize 
	'
	Dim rsCnt As Int 
	Dim rsTot As Int = markers.Size - 1
	For rsCnt = 0 To rsTot
		Dim mt As VMarkerType = markers.GetValueAt(rsCnt)
		'
		Dim point As BANanoObject = latLng(mt.MarkerLatitude, mt.MarkerLongitude) 
		'
		Dim nm As Map = CreateMap()
		'
		BANanoShared.PutRecursive(nm, "draggable", mt.MarkerDraggable)
		If mt.MarkerHasIcon Then
			Dim img As Map = CreateMap()
			BANanoShared.PutRecursive(img, "iconUrl", mt.MarkerIcon)
			BANanoShared.PutRecursive(img, "iconSize", mt.MarkerIconSize)
			BANanoShared.PutRecursive(img, "iconAnchor", mt.MarkerIconAnchor)
			'
			Dim oicon As BANanoObject = icon(img)
			BANanoShared.PutRecursive(nm, "icon", oicon)
		End If
		'
		If mt.MarkerHasIconColor Then
			Select Case mt.MarkerIconColor
			Case "blue"
				 BANanoShared.PutRecursive(nm, "icon",blueIcon)
			Case "gold"
				 BANanoShared.PutRecursive(nm, "icon",goldIcon)
			Case "red"
				 BANanoShared.PutRecursive(nm, "icon",redIcon)
			Case "green"
				 BANanoShared.PutRecursive(nm, "icon",greenIcon)
			Case "orange"
				BANanoShared.PutRecursive(nm, "icon",orangeIcon)
			Case "yellow"
				 BANanoShared.PutRecursive(nm, "icon",yellowIcon)
			Case "violet"
				 BANanoShared.PutRecursive(nm, "icon",violetIcon)
			Case "grey"
				 BANanoShared.PutRecursive(nm, "icon",greyIcon)
			Case "black"
				 BANanoShared.PutRecursive(nm, "icon",blackIcon)
			End Select
		End If
		
		BANanoShared.PutRecursive(nm, "name", mt.MarkerId)
		BANanoShared.PutRecursive(nm, "visible", True)
		BANanoShared.PutRecursive(nm, "id", mt.markerid)
		If mt.MarkerTitle <> "" Then
			BANanoShared.PutRecursive(nm, "tooltip", mt.MarkerTitle)
		End If
		If mt.MarkerPopUp <> "" Then
			BANanoShared.PutRecursive(nm, "popup", mt.MarkerPopUp)
		End If	
		BANanoShared.PutRecursive(nm, "latlng", point)
		BANanoShared.PutRecursive(nm, "options.clickable", True)
		BANanoShared.PutRecursive(nm, "options.riseOnHover", True)
		
		markerList.Add(nm)
	Next

End Sub

'native method - pan to a particular point
Sub PanTo(C As VueComponent, Lat As Double, Lng As Double)
	Try
		Dim obj As BANanoObject = latLng(Lat, Lng)
		GetMapObject(C)
		mapObject.RunMethod("panTo", obj)
	Catch
		Log(LastException)
	End Try		
End Sub

Sub PanToOnApp(C As VuetifyApp, Lat As Double, Lng As Double)
	Try
		Dim obj As BANanoObject = latLng(Lat, Lng)
		GetMapObjectOnApp(C)
		mapObject.RunMethod("panTo", obj)
	Catch
		Log(LastException)
	End Try		
End Sub

'native method move the view to this point
Sub SetView(C As VueComponent, Lat As Double, Lng As Double, Zoom As Int)
	Zoom = BANano.parseInt(Zoom)
	iZoom = Zoom
	C.SetData(xzoom, Zoom)
	Try
		Dim obj As BANanoObject = latLng(Lat, Lng)
		GetMapObject(C)
		mapObject.RunMethod("setView", Array(obj, Zoom))
	Catch
		Log(LastException)
	End Try		
End Sub

Sub SetViewOnApp(C As VuetifyApp, Lat As Double, Lng As Double, Zoom As Int)
	Zoom = BANano.parseInt(Zoom)
	iZoom = Zoom
	C.SetData(xzoom, Zoom)
	Try
		Dim obj As BANanoObject = latLng(Lat, Lng)
		GetMapObjectOnApp(C)
		mapObject.RunMethod("setView", Array(obj, Zoom))
	Catch
		Log(LastException)
	End Try		
End Sub

'clear the markers
Sub ClearMarkers(C As VueComponent)
	markers.Initialize 
	C.SetData(xmarkers, markers)
End Sub

Sub ClearCircles(C As VueComponent)
	circles.Initialize 
	C.SetData(xcircles, circles)
End Sub

'Clear the polygons
Sub ClearPolygons(C As VueComponent)
	polygons.Initialize 
	C.SetData(xpolygons, polygons)
End Sub

'Clear the rectangles
Sub ClearRectangles(C As VueComponent)
	rectangles.Initialize 
	C.SetData(xrectangles, rectangles)
End Sub

'clear the markers
Sub ClearMarkersOnApp(C As VuetifyApp)
	markers.Initialize 
	C.SetData(xmarkers, markers)
End Sub

Sub ClearCirclesOnApp(C As VuetifyApp)
	circles.Initialize 
	C.SetData(xcircles, circles)
End Sub

'Clear the polygons
Sub ClearPolygonsOnApp(C As VuetifyApp)
	polygons.Initialize 
	C.SetData(xpolygons, polygons)
End Sub

'Clear the rectangles
Sub ClearRectanglesOnApp(C As VuetifyApp)
	rectangles.Initialize 
	C.SetData(xrectangles, rectangles)
End Sub

'refresh markers
Sub Refresh(C As VueComponent)
	'build the markers
	BuildMarkers
	'build the circles
	BuildCircles
	'build the polygons
	BuildPolygons
	'build the polylines
	BuildPolyLines	
	'build the rectangles
	BuildRectangles
	'build grojson
	BuildGeoJSON
		
	C.SetData(xrectangles, rectList)
	C.SetData(xpolygons, polygonList)
	C.SetData(xpolyLines, polylineList)
	C.SetData(xgeojsons, geoList)
	C.SetData(xcircles, circleList)
	C.SetData(xmarkers, markerList)

	C.SetData(sKey, DateTime.Now)
End Sub

'refresh markers
Sub RefreshOnApp(C As VuetifyApp)
	'build the markers
	BuildMarkers
	'build the circles
	BuildCircles
	'build the polygons
	BuildPolygons
	'build the polylines
	BuildPolyLines	
	'build the rectangles
	BuildRectangles
	'build grojson
	BuildGeoJSON
		
	C.SetData(xrectangles, rectList)
	C.SetData(xpolygons, polygonList)
	C.SetData(xpolyLines, polylineList)
	C.SetData(xgeojsons, geoList)
	C.SetData(xcircles, circleList)
	C.SetData(xmarkers, markerList)

	C.SetData(sKey, DateTime.Now)
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub


Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VLeaflet 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VLeaflet 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VLeaflet 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VLeaflet 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VLeaflet 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VLeaflet 
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

'native method get the map object after ready
private Sub GetMapObject(C As VueComponent)
	Try
		mapObject = C.refs.GetField(mName).GetField("mapObject")
	Catch
		Log(LastException)
	End Try	
End Sub

private Sub GetMapObjectOnApp(C As VuetifyApp)
	Try
		mapObject = C.refs.GetField(mName).GetField("mapObject")
	Catch
		Log(LastException)
	End Try	
End Sub

'native  stopLocate
Sub stopLocate(C As VueComponent)
	Try
		GetMapObject(C)
		mapObject.RunMethod("stopLocate", Null)
	Catch
		Log(LastException)
	End Try	
End Sub

Sub stopLocateOnApp(C As VuetifyApp)
	Try
		GetMapObjectOnApp(C)
		mapObject.RunMethod("stopLocate", Null)
	Catch
		Log(LastException)
	End Try	
End Sub

'native locate
Sub locate(C As VueComponent, bWatch As Boolean, bSetView As Boolean, maxZoom As Int, timeOut As Int, maximumAge As Int, enableHighAccuracy As Boolean)   'ignore
	
	
End Sub

'native method - resize the map
Sub Resize(C As VueComponent)
	Try
		GetMapObject(c)
		'map.RunMethod("_onResize", Null)
		mapObject.RunMethod("invalidateSize", Null)
	Catch
		Log(LastException)
	End Try	
End Sub

Sub ResizeOnApp(C As VuetifyApp)
	Try
		GetMapObjectOnApp(c)
		'map.RunMethod("_onResize", Null)
		mapObject.RunMethod("invalidateSize", Null)
	Catch
		Log(LastException)
	End Try	
End Sub


'native method - LIcon
private Sub icon(options As Map) As BANanoObject
	L.Initialize("L")
	Dim objicon As BANanoObject = L.RunMethod("icon", options)
	Return objicon
End Sub

'native method - latLng
private Sub latLng(lat As Double, lng As Double) As BANanoObject
	L.Initialize("L")
	lat = BANano.parseFloat(lat)
	lng = BANano.parseFloat(lng)
	Dim objlatLng As BANanoObject = L.RunMethod("latLng", Array(Array(lat, lng)))
	Return objlatLng
End Sub

'update the center
Sub UpdateCenter(C As VueComponent, lat As Double, lng As Double) As VLeaflet
	Dim cobj As BANanoObject = latLng(lat, lng)
	C.SetData(xcenter, cobj)
	Return Me
End Sub

Sub UpdateCenterOnApp(C As VuetifyApp, lat As Double, lng As Double) As VLeaflet
	Dim cobj As BANanoObject = latLng(lat, lng)
	C.SetData(xcenter, cobj)
	Return Me
End Sub

'update the zoom
Sub UpdateZoom(C As VueComponent, dZoom As Double) As VLeaflet
	C.SetData(xzoom, dZoom)
	iZoom = dZoom
	SetZoom(c, iZoom)
	Return Me
End Sub

Sub UpdateZoomOnApp(C As VuetifyApp, dZoom As Double) As VLeaflet
	C.SetData(xzoom, dZoom)
	iZoom = dZoom
	SetZoomOnApp(c, iZoom)
	Return Me
End Sub

'native method setZoom
private Sub SetZoom(C As VueComponent, Zoom As Int)
	Try
		GetMapObject(c)
		mapObject.RunMethod("setZoom", Zoom)
	Catch
		Log(LastException)
	End Try	
End Sub

private Sub SetZoomOnApp(C As VuetifyApp, Zoom As Int)
	Try
		GetMapObjectOnApp(c)
		mapObject.RunMethod("setZoom", Zoom)
	Catch
		Log(LastException)
	End Try	
End Sub

'
'Update Disabled
Sub UpdateDisabled(C As VueComponent, vDisabled As Object)
C.SetData(xDisabled, vDisabled)
End Sub

Sub UpdateDisabledOnAp(C As VuetifyApp, vDisabled As Object)
C.SetData(xDisabled, vDisabled)
End Sub
'
'Update Title
Sub UpdateTitle(C As VueComponent, vTitle As Object)
	C.SetData(xTitle, vTitle)
End Sub

Sub UpdateTitleOnApp(C As VuetifyApp, vTitle As Object)
	C.SetData(xTitle, vTitle)
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

'add a circle
Sub AddCircle(CircleId As String, CircleTitle As String, CircleLatitude As Double,CircleLongitude As Double,CircleColor As String, CircleRadius As Int)
	CircleId = CircleId.tolowercase
	Dim mc As VCircle
	mc.Initialize
	mc.CircleColor = CircleColor
	mc.CircleFillColor = "#3388ff"
	mc.CircleFillOpacity = 0.2
	mc.CircleId = CircleId
	mc.CircleLatitude = CircleLatitude
	mc.CircleLongitude = CircleLongitude
	mc.CircleRadius = CircleRadius
	mc.CircleTitle = CircleTitle
	mc.CircleWeight = 3
	mc.CirclePopUp = ""
	circles.Put(CircleId,mc)
End Sub

'initialize a marker
private Sub MarkerInit() As VMarkerType
	Dim mt As VMarkerType
	mt.Initialize 
	mt.MarkerColor = ""
	mt.MarkerId = ""
	mt.MarkerInforWindow = ""
	mt.MarkerLatitude = 0
	mt.MarkerLongitude = 0
	mt.MarkerTitle = ""
	mt.MarkerWindowOpened = False
	mt.MarkerDraggable = False
	mt.MarkerriseOnHover = False
	mt.MarkerIconSize.Initialize
	mt.MarkerIconAnchor.Initialize  
	mt.MarkerIcon = ""
	mt.MarkerHasIcon = False
	mt.MarkerPopUp = ""
	Return mt
End Sub

'add a simple marker
Sub AddMarker(markerID As String, markerTitle As String, markerLat As Double, markerLng As Double)
	markerID = markerID.tolowercase
	Dim mt As VMarkerType
	mt = MarkerInit
	mt.MarkerId = markerID
	mt.MarkerTitle = markerTitle
	mt.MarkerPopUp = markerTitle
	mt.MarkerLatitude = markerLat
	mt.MarkerLongitude = markerLng
	mt.MarkerDraggable = True
	markers.Put(markerID,mt)
End Sub

'add a geo json
Sub AddGeoJSON(id As String, title As String, urlpath As String)
	id = id.ToLowerCase
	Dim mt As GeoJsonType
	mt.geojson = urlpath
	mt.id = id
	mt.name = title
	mt.title = title
	mt.visible = True
	mt.url = urlpath
	geojsons.Put(id, mt)
End Sub

'add a marker with icon
Sub AddMarkerIcon(markerID As String, markerTitle As String, markerLat As Double, markerLng As Double, markerIcon As String, SizeX As String, SizeY As String, anchorX As String, anchorY As String)
	markerID = markerID.tolowercase
	Dim mt As VMarkerType
	mt = MarkerInit
	mt.MarkerId = markerID
	mt.MarkerTitle = markerTitle
	mt.MarkerPopUp = markerTitle
	mt.MarkerLatitude = markerLat
	mt.MarkerLongitude = markerLng
	mt.MarkerHasIcon = True
	mt.MarkerIcon = markerIcon
	mt.MarkerIconSize.Initialize 
	mt.MarkerIconSize.Add(SizeX)
	mt.markericonsize.add(SizeY)
	mt.MarkerIconAnchor.Initialize 
	mt.MarkerIconAnchor.Add(anchorX)
	mt.MarkerIconAnchor.Add(anchorY)
	markers.Put(markerID,mt)	
End Sub

'add a marker with color
Sub AddMarkerIconColor(markerID As String, markerTitle As String, markerLat As Double, markerLng As Double, markerColor As String)
	markerID = markerID.tolowercase
	Dim mt As VMarkerType
	mt = MarkerInit
	mt.MarkerId = markerID
	mt.MarkerTitle = markerTitle
	mt.MarkerPopUp = markerTitle
	mt.MarkerLatitude = markerLat
	mt.MarkerLongitude = markerLng
	mt.MarkerHasIconColor = True
	mt.MarkerIconColor = markerColor
	markers.Put(markerID,mt)	
End Sub

'Change marker color
Sub MarkerChangeColor(markerID As String, markerColor As String)
	markerID = markerID.tolowercase
	If markers.ContainsKey(markerID) Then
		Dim mt As VMarkerType
		mt = markers.Get(markerID)
		mt.MarkerColor = markerColor
		markers.Put(markerID,mt)
	End If
End Sub

'Change marker icon
Sub MarkerChangeIcon(markerID As String, markerIcon As String)
	markerID = markerID.tolowercase
	If markers.ContainsKey(markerID) Then
		Dim mt As VMarkerType
		mt = markers.Get(markerID)
		mt.MarkerIcon = markerIcon
		mt.MarkerHasIcon = True
		markers.Put(markerID,mt)
	End If
End Sub

'change the marker latlng
Sub MarkerChangeLatLng(markerID As String, lat As Double, lng As Double)
	markerID = markerID.tolowercase
	If markers.ContainsKey(markerID) Then
		Dim mt As VMarkerType
		mt = markers.Get(markerID)
		mt.MarkerLatitude = lat
		mt.MarkerLongitude = lng
		markers.Put(markerID,mt)
	End If
End Sub

'change the marker title
Sub MarkerChangeTitle(markerID As String, markerTitle As String)
	markerID = markerID.tolowercase
	If markers.ContainsKey(markerID) Then
		Dim mt As VMarkerType
		mt = markers.Get(markerID)
		mt.MarkerTitle = markerTitle
		markers.Put(markerID,mt)
	End If
End Sub

'add a simple popup
Sub AddPopUp(markerID As String, markerTitle As String, markerLat As Double, markerLng As Double)
	markerID = markerID.tolowercase
	Dim mt As VMarkerType
	mt = MarkerInit
	mt.MarkerId = markerID
	mt.MarkerTitle = markerTitle
	mt.MarkerLatitude = markerLat
	mt.MarkerLongitude = markerLng
	popups.Put(markerID,mt)
End Sub

'set a pop up to an existing marker, polygon, polyline, circle
Sub SetPopUp(markerID As String, markerTitle As String)
	markerID = markerID.tolowercase
	'update existing markers
	If markers.ContainsKey(markerID) Then
		Dim old As VMarkerType
		old = markers.Get(markerID)
		old.MarkerPopUp = markerTitle
		markers.Put(markerID, old)
		Return
	End If
	'update existing circles
	If circles.ContainsKey(markerID) Then
		Dim oldc As VCircle
		oldc = markers.Get(markerID)
		oldc.CirclePopUp = markerTitle
		circles.Put(markerID, oldc)
		Return
	End If
	'update existing polygons
	If polygons.ContainsKey(markerID) Then
		Dim oldp As VPolyLine
		oldp = polygons.Get(markerID)
		oldp.PopUp = markerTitle
		polygons.Put(markerID, oldp)
		Return
	End If
	'update existing polylines
	If polylines.ContainsKey(markerID) Then
		Dim oldp As VPolyLine
		oldp = polylines.Get(markerID)
		oldp.PopUp = markerTitle
		polylines.Put(markerID, oldp)
		Return
	End If
	'update existing rectangle
	If rectangles.ContainsKey(markerID) Then
		Dim oldp As VPolyLine
		oldp = rectangles.Get(markerID)
		oldp.PopUp = markerTitle
		rectangles.Put(markerID, oldp)
		Return
	End If
End Sub

'add a rectangle
Sub AddRectangle(rectID As String, rectTitle As String, rectLat1 As Double, rectLng1 As Double, rectLat2 As Double, rectLng2 As Double, rectColor As String, rectWeight As Int)     'ignore
	rectID = rectID.tolowercase
	Dim mc As VPolyLine
	mc.Initialize
	mc.color = rectColor
	mc.fillcolor = "#3388ff"
	mc.fillopacity = 0.2
	mc.id = rectID
	mc.weight = rectWeight
	mc.popup = ""
	mc.points.Initialize
	'
	Dim point1 As List
	point1.Initialize 
	point1.Add(rectLat1)
	point1.Add(rectLng1)
	mc.points.Add(point1)
	'
	Dim point2 As List
	point2.Initialize 
	point2.Add(rectLat2)
	point2.Add(rectLng2)
	mc.points.Add(point2)
	'
	rectangles.Put(rectID,mc)
End Sub

'add a polygon
Sub AddPolygon(polygonID As String, polygonTitle As String, polygonColor As String)
	polygonID = polygonID.tolowercase
	Dim pe As VPolyLine
	pe.Initialize
	pe.id = polygonID
	pe.Title = polygonTitle
	pe.Color = polygonColor
	pe.Weight = 3
	pe.Opacity = 1.0
	pe.FillColor = "#3388ff"
	pe.FillOpacity = 0.2
	pe.PopUp = ""
	pe.points.Initialize 
	polygons.Put(polygonID,pe)
End Sub

'add a polyline
Sub AddPolyLine(polyLineID As String, polyLineTitle As String,polyLineColor As String)
	polyLineID = polyLineID.tolowercase
	Dim pe As VPolyLine
	pe.Initialize
	pe.id = polyLineID
	pe.Title = polyLineTitle
	pe.Color = polyLineColor
	pe.Weight = 3
	pe.Opacity = 1.0
	pe.FillColor = "#3388ff"
	pe.FillOpacity = 0.2
	pe.fitBounds = False
	pe.PopUp = ""
	pe.points.Initialize 
	polylines.Put(polyLineID,pe)
End Sub

'add polyline points from a map
Sub AddPolyLineLatLngMap(polygonID As String, points As Map)
	polygonID = polygonID.tolowercase
	If polylines.ContainsKey(polygonID) Then
		Dim po As VPolyLine = polylines.Get(polygonID)
		For Each k As String In points.Keys
			Dim v As String = points.Get(k)
			'Dim point As BANanoObject = latLng(k, v) 
			Dim point As List
			point.Initialize 
			point.Add(k)
			point.Add(v)
			po.points.Add(point)
		Next
		polylines.Put(polygonID,po)
	End If
End Sub

'add polyline points from a map
Sub AddPolygonLatLngMap(polygonID As String, points As Map)
	polygonID = polygonID.tolowercase
	If polygons.ContainsKey(polygonID) Then
		Dim po As VPolyLine = polygons.Get(polygonID)
		For Each k As String In points.Keys
			Dim v As String = points.Get(k)
			'Dim point As BANanoObject = latLng(k, v) 
			Dim point As List
			point.Initialize 
			point.Add(k)
			point.Add(v)
			po.points.Add(point)
		Next
		polygons.Put(polygonID,po)
	End If
End Sub

'add a simple polygon marker
Sub AddPolygonLatLng(polygonID As String, markerLat As Double, markerLng As Double)
	polygonID = polygonID.tolowercase
	If polygons.ContainsKey(polygonID) Then
		Dim point As List
		point.Initialize 
		point.Add(markerLat)
		point.Add(markerLng)
		Dim po As VPolyLine = polygons.Get(polygonID)
		po.points.Add(point)
		polygons.Put(polygonID,po)
	End If
End Sub

'add a simple polyline marker
Sub AddPolyLineLatLng(polyLineID As String, markerLat As Double, markerLng As Double)
	polyLineID = polyLineID.tolowercase
	If polylines.ContainsKey(polyLineID) Then
		Dim point As List
		point.Initialize 
		point.Add(markerLat)
		point.Add(markerLng)
		Dim pe As VPolyLine = polylines.Get(polyLineID)
		pe.points.Add(point)
		polylines.Put(polyLineID,pe)
	End If
End Sub

'reset map, clear everything
Sub Reset
	RemoveMarkers
	RemovePolyGons
	RemovePolyLines
	RemovePopUps
	RemoveRectangles
	RemoveCircles
End Sub

'remove rectangles
Sub RemoveRectangles
	rectangles.Initialize 
End Sub

'remove markers
Sub RemoveMarkers
	markers.Initialize 
End Sub

'remove a marker
Sub RemoveMarker(markerID As String)
	markerID = markerID.ToLowerCase
	If markers.ContainsKey(markerID) Then
		markers.Remove(markerID)
	End If
End Sub

'remove circles
Sub RemoveCircles
	circles.Initialize 
End Sub

'remove a circle
Sub RemoveCircle(markerID As String)
	markerID = markerID.ToLowerCase
	If circles.ContainsKey(markerID) Then
		circles.Remove(markerID)
	End If
End Sub

'remove polylines
Sub RemovePolyLines
	polylines.Initialize 
End Sub

'remove a polyline
Sub RemovePolyLine(markerID As String)
	markerID = markerID.ToLowerCase
	If polylines.ContainsKey(markerID) Then
		polylines.Remove(markerID)
	End If
End Sub

'remove polygons
Sub RemovePolyGons
	polygons.Initialize 
End Sub

'remove a polygone
Sub RemovePolyGon(markerID As String)
	markerID = markerID.ToLowerCase
	If polygons.ContainsKey(markerID) Then
		polygons.Remove(markerID)
	End If
End Sub

'remove a rectangle
Sub RemoveRectangle(markerID As String)
	markerID = markerID.ToLowerCase
	If rectangles.ContainsKey(markerID) Then
		rectangles.Remove(markerID)
	End If
End Sub

'remove popups
Sub RemovePopUps
	popups.Initialize 
End Sub

'remove a pop up
Sub RemovePopUp(markerID As String)
	markerID = markerID.ToLowerCase
	If popups.ContainsKey(markerID) Then
		popups.Remove(markerID)
	End If
End Sub

'set center pos
Sub SetCenterOnLastPos(C As VueComponent)
	Try
		'get the last point and center on it
		Dim ps As Int = markers.Size - 1
		If ps = -1 Then Return
		iZoom = C.GetData(xzoom)
		Dim mt As VMarkerType = markers.GetValueAt(ps)
		UpdateCenter(c, mt.MarkerLatitude, mt.MarkerLongitude)
		SetView(c, mt.MarkerLatitude, mt.MarkerLongitude, iZoom)
	Catch
		Log(LastException)
	End Try		
End Sub

'set center pos
Sub SetCenterOnLastPosOnApp(C As VuetifyApp)
	Try
		'get the last point and center on it
		Dim ps As Int = markers.Size - 1
		If ps = -1 Then Return
		iZoom = C.GetData(xzoom)
		Dim mt As VMarkerType = markers.GetValueAt(ps)
		UpdateCenterOnApp(c, mt.MarkerLatitude, mt.MarkerLongitude)
		SetViewOnApp(c, mt.MarkerLatitude, mt.MarkerLongitude, iZoom)
	Catch
		Log(LastException)
	End Try		
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

Sub Enable
	UpdateDisabled(VC, False)
End Sub

Sub Disable
	UpdateDisabled(VC, True)
End Sub