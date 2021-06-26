B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Absolute, DisplayName: Absolute, FieldType: Boolean, DefaultValue: false, Description: Absolute
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Opacity, DisplayName: Opacity, FieldType: String, DefaultValue: , Description: Opacity
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind

#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: ZIndex, DisplayName: ZIndex, FieldType: String, DefaultValue: , Description: ZIndex
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
	Private bAbsolute As Boolean
Private sColor As String
Private sColorIntensity As String
Private bDark As Boolean
Private sKey As String
Private bLight As Boolean
Private sOpacity As String
Private sTextColor As String
Private sTextColorIntensity As String
Private sVBind As String
Private sVFor As String
Private sVIf As String
Private sVModel As String
Private sVOn As String
Private sZIndex As String
'Private sVShow As String
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
	sVModel = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bAbsolute = Props.Get("Absolute")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
bDark = Props.Get("Dark")
sKey = Props.Get("Key")
bLight = Props.Get("Light")
sOpacity = Props.Get("Opacity")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sVBind = Props.Get("VBind")
sVFor = Props.Get("VFor")
sVIf = Props.Get("VIf")
sVOn = Props.Get("VOn")
sZIndex = Props.Get("ZIndex")
	End If
	'
	bAbsolute = BANanoShared.parseBool(bAbsolute)
bDark = BANanoShared.parseBool(bDark)
bLight = BANanoShared.parseBool(bLight)

	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-overlay ref="${mName}" id="${mName}"></v-overlay>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-overlay"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":absolute", bAbsolute)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("opacity", sOpacity)
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-model", sVModel)
VElement.AddAttr("v-on", sVOn)
VElement.AddAttr("z-index", sZIndex)
VElement.SetData(sVModel, False)
VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VOverlay
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VOverlay
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VOverlay
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VOverlay
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VOverlay
	VC.SetData(sVIf, b)
	VC.SetData(sVModel, b)
	Return Me
End Sub

'get VModel
Sub getVModel As String
	Return sVModel
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub


Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
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