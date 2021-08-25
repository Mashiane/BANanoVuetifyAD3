B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Started (stream As Object)
#Event: Stopped (stream As Object)
#Event: Error (error As Object)
#Event: Cameras (cameras As List)
#Event: CameraChange (deviceID As String)
#Event: VideoLive (stream As object)

#DesignerProperty: Key: AutoPlay, DisplayName: Auto Play, FieldType: Boolean, DefaultValue: False, Description: AutoPlay
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: DeviceId, DisplayName: Device Id, FieldType: String, DefaultValue: , Description: DeviceId
#DesignerProperty: Key: SelectFirstDevice, DisplayName: Select First Device, FieldType: Boolean, DefaultValue: True, Description: selectFirstDevice
'#DesignerProperty: Key: View, DisplayName: View, FieldType: String, DefaultValue: snapshot, Description: View, List: snapshot|video|videoPlayer
'#DesignerProperty: Key: VideoTypes, DisplayName: VideoTypes, FieldType: String, DefaultValue: screen; camera, Description: videoTypes
#DesignerProperty: Key: ScreenshotFormat, DisplayName: ScreenshotFormat, FieldType: String, DefaultValue: image/jpeg, Description: ScreenshotFormat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 500, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
'#DesignerProperty: Key: PlayerMuted, DisplayName: PlayerMuted, FieldType: Boolean, DefaultValue: False, Description: PlayerMuted
#DesignerProperty: Key: PlaysInline, DisplayName: PlaysInline, FieldType: Boolean, DefaultValue: False, Description: PlaysInline
'#DesignerProperty: Key: RecorderMode, DisplayName: RecorderMode, FieldType: String, DefaultValue: single, Description: RecorderMode, List: single
'#DesignerProperty: Key: RecorderMuted, DisplayName: RecorderMuted, FieldType: Boolean, DefaultValue: False, Description: RecorderMuted
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
	Private bAutoPlay As Boolean
	Private sHeight As String
	'Private bPlayerMuted As Boolean
	Private bPlaysInline As Boolean
	'Private sRecorderMode As String
	'Private bRecorderMuted As Boolean
	Private sScreenshotFormat As String
	'Private sVideoSource As String
	'Private sVideoTypes As String
	'Private sView As String
	Private sWidth As String
	Private bHidden As Boolean
	Private sVIf As String
	Private svShow As String
	'Private sVideoTypes As String
	'Private lsVideoTypes As List
	'Private strVideoTypes As String
	'Private strVideoSource As String
	Private sDeviceId As String
	Private bSelectFirstDevice As Boolean
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
	svShow = $"${mName}show"$
	'strVideoTypes = $"${mName}videotypes"$
	'strVideoSource = $"${mName}videosource"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bAutoPlay = Props.GetDefault("AutoPlay", False)
		bAutoPlay = BANanoShared.parseBool(bAutoPlay)
		sHeight = Props.GetDefault("Height", "")
		'bPlayerMuted = Props.GetDefault("PlayerMuted", False)
		'bPlayerMuted = BANanoShared.parseBool(bPlayerMuted)
		bPlaysInline = Props.GetDefault("PlaysInline", False)
		bPlaysInline = BANanoShared.parseBool(bPlaysInline)
		'sRecorderMode = Props.GetDefault("RecorderMode", "single")
		'bRecorderMuted = Props.GetDefault("RecorderMuted", False)
		'bRecorderMuted = BANanoShared.parseBool(bRecorderMuted)
		sScreenshotFormat = Props.GetDefault("ScreenshotFormat", "image/jpeg")
		'sView = Props.GetDefault("View", "snapshot")
		sWidth = Props.GetDefault("Width", "") 
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sVIf = Props.GetDefault("VIf", "")
		'sVideoTypes = Props.getdefault("VideoTypes", "")
		sDeviceId = Props.GetDefault("DeviceId", "")
		bSelectFirstDevice = Props.GetDefault("SelectFirstDevice", False)
		bSelectFirstDevice = BANanoShared.parsebool(bSelectFirstDevice)
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<vue-web-cam ref="${mName}" id="${mName}"></vue-web-cam>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "vue-web-cam" 
	'
	VElement.SetOnEventOwn(mCallBack, $"${mName}_started"$, "started", "")
	VElement.SetOnEventOwn(mCallBack, $"${mName}_stopped"$, "stopped", "")
	VElement.SetOnEventOwn(mCallBack, $"${mName}_error"$, "error", "")
	VElement.SetOnEventOwn(mCallBack, $"${mName}_cameras"$, "cameras", "")
	VElement.SetOnEventOwn(mCallBack, $"${mName}_camerachange"$, "camera-change", "")
	VElement.SetOnEventOwn(mCallBack, $"${mName}_videolive"$, "video-live", "")
	'
	'lsVideoTypes = BANanoShared.StrParseComma(";", sVideoTypes)
	'lsVideoTypes = BANanoShared.ListTrimItems(lsVideoTypes)
	'VElement.SetData(strVideoTypes, lsVideoTypes)
	'VElement.SetData(strVideoSource, Null)
	'	
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr(":autoplay", bAutoPlay)
	VElement.AddAttr("height", sHeight)
	'VElement.AddAttr(":player-muted", bPlayerMuted)
	VElement.AddAttr(":playsinline", bPlaysInline)
	'VElement.AddAttr("recorder-mode", sRecorderMode)
	'VElement.AddAttr(":recorder-muted", bRecorderMuted)
	VElement.AddAttr("screenshot-format", sScreenshotFormat)
	VElement.AddAttr("device-id", sDeviceId)
	VElement.AddAttr("width", sWidth)
	'VElement.Bind("video-types", strVideoTypes)
	'VElement.Bind("video-source", strVideoSource)
	VElement.Bind("select-first-device", bSelectFirstDevice)
	If bHidden Then
		VElement.VShow = svShow
		VElement.SetData(svShow, Not(bHidden))
	End If
	VElement.VIf = sVIf
	VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

'start the camera getRefs first
Sub StartCamera(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("start", Null)
End Sub

Sub StartCameraOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("start", Null)
End Sub

'stop the camera getRefs first
Sub StopCamera(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("stop", Null)
End Sub

Sub StopCameraOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("stop", Null)
End Sub

'capture the camera getRefs first set to image
Sub TakePicture(C As VueComponent) As Object
	Dim refs As BANanoObject = C.refs
	Dim obj As Object = refs.GetField(mName).runmethod("capture", Null).Result
	Return obj
End Sub

Sub TakePictureOnApp(C As VuetifyApp) As Object
	Dim refs As BANanoObject = C.refs
	Dim obj As Object = refs.GetField(mName).runmethod("capture", Null).Result
	Return obj
End Sub

'change the camera
Sub ChangeCamera(C As VueComponent, deviceID As String)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("changeCamera", Array(deviceID))
End Sub

Sub ChangeCameraOnApp(C As VuetifyApp, deviceID As String)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("changeCamera", Array(deviceID))
End Sub

'loadCameras
Sub LoadCameras(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("loadCameras", Null)
End Sub

Sub LoadCamerasOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("loadCameras", Null)
End Sub

Sub SetupMedia(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("setupMedia", Null)
End Sub

Sub SetupMediaOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("setupMedia", Null)
End Sub

'pause of the camera
Sub Pause(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("pause", Null)
End Sub

Sub PauseOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("pause", Null)
End Sub

'resume the camera
Sub Resume(C As VueComponent)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("resume", Null)
End Sub

Sub ResumeOnApp(C As VuetifyApp)
	Dim refs As BANanoObject = C.refs
	refs.GetField(mName).runmethod("resume", Null)
End Sub


Sub Remove() 
	mElement.Empty 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) 
	VElement.AddClass(s) 
End Sub

Sub AddAttr(p As String, v As Object) 
	VElement.SetAttr(p, v) 
End Sub

Sub AddStyle(p As String, v As String) 
	VElement.AddStyle(p, v) 
End Sub

Sub RemoveAttr(p As String) 
	VElement.RemoveAttr(p) 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) 
	C.SetData(sVIf, b) 
	C.SetData(svShow, b) 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) 
	C.SetData(sVIf, b) 
	C.SetData(svShow, b) 
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

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
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