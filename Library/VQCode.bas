B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: QRCode, Description: Value
#DesignerProperty: Key: ColorLight, DisplayName: Color Light, FieldType: String, DefaultValue: white, Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorDark, DisplayName: Color Dark, FieldType: String, DefaultValue: , Description: ForegroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: Level, DisplayName: Level, FieldType: String, DefaultValue: L, Description: Level, List: H|L|M|Q
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 100, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100, Description: Width
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
	Private bHidden As Boolean
	Private sLevel As String
	Private sVIf As String
	Private sVShow As String
	Private sValue As String
	Private sColorLight As String
	Private sColorDark As String
	Private sWidth As String
	Private sHeight As String
	Private VC As VueComponent				'ignore
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	BANano.DependsOnAsset("qrcode.min.js")
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
	sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sColorLight = Props.GetDefault("ColorLight","")
		sColorDark = Props.GetDefault("ColorDark","")
		sWidth = Props.GetDefault("Width", "100")
		sHeight = Props.GetDefault("Height", "100")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
		sLevel = Props.GetDefault("Level", "L")
		sVIf = Props.GetDefault("VIf", "")
		sValue = Props.GetDefault("Value", "QRCode")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div eager ref="${mName}" id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("v-show", sVShow)
	VElement.AddAttr("v-if", sVIf)
	VElement.SetData(sVShow, Not(bHidden))
	VElement.BindAllEvents
End Sub

Sub Refresh
	Dim options As Map = CreateMap()
	sLevel = BANano.parseInt(sLevel)
	'
	options.Put("colorDark", sColorDark)
	options.Put("colorLight", sColorLight)
  	options.Put("correctLevel", sLevel)
  	options.Put("width", sWidth)
	options.Put("height", sHeight)
	options.Put("text", sValue)
	'
	Dim elm As BANanoObject = BANano.Window.GetField("document").RunMethod("getElementById", Array(mName))
	'
	Dim qrcode As BANanoObject
	qrcode.Initialize2("QRCode",Array(elm, options))
End Sub

public Sub Remove() 
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
	C.SetData(sVShow, b) 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

Sub SetValue(vVModel As Object) 
	sValue = vVModel
End Sub

'set Hidden
Sub setHidden(vHidden As Boolean)
	If BANano.IsNull(vHidden) Or BANano.IsUndefined(vHidden) Then Return
	bHidden  = vHidden
End Sub

'set Level
Sub setLevel(vLevel As String)
	If BANano.IsNull(vLevel) Or BANano.IsUndefined(vLevel) Then Return
	sLevel  = vLevel
End Sub

'set VIf
Sub setVIf(vVIf As String)
	If BANano.IsNull(vVIf) Or BANano.IsUndefined(vVIf) Then Return
	sVIf  = vVIf
	VElement.AddAttr("v-if", sVIf)
End Sub

'set VShow
Sub setVShow(vVShow As String)
	If BANano.IsNull(vVShow) Or BANano.IsUndefined(vVShow) Then Return
	sVShow  = vVShow
	VElement.AddAttr("v-show", sVShow)
End Sub

'bind the state
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