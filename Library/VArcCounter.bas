B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: 10rem, Description: Size

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: DashCount, DisplayName: DashCount, FieldType: String, DefaultValue: 21, Description: DashCount
#DesignerProperty: Key: ActiveCount, DisplayName: ActiveCount, FieldType: String, DefaultValue: 5, Description: ActiveCount
#DesignerProperty: Key: DashSpacing, DisplayName: DashSpacing, FieldType: String, DefaultValue: 1/4, Description: DashSpacing
#DesignerProperty: Key: Stroke, DisplayName: Stroke, FieldType: String, DefaultValue: light-blue, Description: Stroke, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ActiveStroke, DisplayName: ActiveStroke, FieldType: String, DefaultValue: blue, Description: ActiveStroke, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ActiveWidth, DisplayName: ActiveWidth, FieldType: String, DefaultValue: 20, Description: ActiveWidth
#DesignerProperty: Key: StrokeWidth, DisplayName: StrokeWidth, FieldType: String, DefaultValue: 20, Description: StrokeWidth
#DesignerProperty: Key: Start, DisplayName: Start, FieldType: String, DefaultValue: -120, Description: Start
#DesignerProperty: Key: End, DisplayName: End, FieldType: String, DefaultValue: 120, Description: End
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text
#DesignerProperty: Key: TextX, DisplayName: TextX, FieldType: String, DefaultValue: center, Description: TextX, List: center|left|right
#DesignerProperty: Key: TextY, DisplayName: TextY, FieldType: String, DefaultValue: center, Description: TextY, List: bottom|center|top
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
	Public VElement As VueElement 
	Private sActiveCount As String
Private sActiveStroke As String
Private sActiveWidth As String
Private sDashCount As String
Private sDashSpacing As String
Private sEnd As String
Private bHidden As Boolean
Private sSize As String
Private sStart As String
Private sStroke As String
Private sStrokeWidth As String
Private sText As String
Private sTextX As String
Private sTextY As String
Private sVIf As String
Private sVShow As String
 Private xActiveCount As String
 Private xActiveStroke As String
 Private xActiveWidth As String
 Private xDashCount As String
 Private xDashSpacing As String
 Private xEnd As String
 Private xSize As String
 Private xStart As String
 Private xStroke As String
 Private xStrokeWidth As String
 Private xText As String
 Private xTextX As String
 Private xTextY As String
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
	sVShow = $"${mName}show"$
	xActiveCount = $"${mName}activecount"$
	xActiveStroke = $"${mName}activestroke"$
	xActiveWidth = $"${mName}activewidth"$
	xDashCount = $"${mName}dashcount"$
	xDashSpacing = $"${mName}dashspacing"$
	xEnd = $"${mName}end"$
	xSize = $"${mName}size"$
	xStart = $"${mName}start"$
	xStroke = $"${mName}stroke"$
	xStrokeWidth = $"${mName}strokewidth"$
	xText = $"${mName}text"$
	xTextX = $"${mName}textx"$
	xTextY = $"${mName}texty"$
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		sActiveCount = Props.GetDefault("ActiveCount", "5")
		sActiveStroke = Props.GetDefault("ActiveStroke", "blue")
		sActiveWidth = Props.GetDefault("ActiveWidth", "20")
		sDashCount = Props.GetDefault("DashCount", "21")
		sDashSpacing = Props.GetDefault("DashSpacing", "1/4")
		sEnd = Props.GetDefault("End", "120")
		bHidden = Props.GetDefault("Hidden", False)
		sSize = Props.GetDefault("Size", "10rem")
		sStart = Props.GetDefault("Start", "-120")
		sStroke = Props.GetDefault("Stroke", "light-blue")
		sStrokeWidth = Props.GetDefault("StrokeWidth", "20")
		sText = Props.GetDefault("Text", "")
		sTextX = Props.GetDefault("TextX", "center")
		sTextY = Props.GetDefault("TextY", "center")
		sVIf = Props.GetDefault("VIf", "")
		sVShow = Props.GetDefault("VShow", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<arc-counter id="${mName}"></arc-counter>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "arc-counter" 
	VElement.AddAttr(":active-count", xActiveCount)
	VElement.SetData(xActiveCount, sActiveCount)
	VElement.AddAttr(":active-stroke", xActiveStroke)
	VElement.SetData(xActiveStroke, sActiveStroke)
	VElement.AddAttr(":active-width", xActiveWidth)
	VElement.SetData(xActiveWidth, sActiveWidth)
	VElement.AddAttr(":dash-count", xDashCount)
	VElement.SetData(xDashCount, sDashCount)
	VElement.AddAttr(":dash-spacing", xDashSpacing)
	VElement.SetData(xDashSpacing, sDashSpacing)
	VElement.AddAttr(":end", xEnd)
	VElement.SetData(xEnd, sEnd)
	VElement.AddAttr(":size", xSize)
	VElement.SetData(xSize, sSize)
	VElement.AddAttr(":start", xStart)
	VElement.SetData(xStart, sStart)
	VElement.AddAttr(":stroke", xStroke)
	VElement.SetData(xStroke, sStroke)
	VElement.AddAttr(":stroke-width", xStrokeWidth)
	VElement.SetData(xStrokeWidth, sStrokeWidth)
	VElement.AddAttr(":text", xText)
	VElement.SetData(xText, sText)
	VElement.AddAttr(":text-x", xTextX)
	VElement.SetData(xTextX, sTextX)
	VElement.AddAttr(":text-y", xTextY)
	VElement.SetData(xTextY, sTextY)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-show", Not(bHidden))
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VArcCounter 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'Update ActiveCount
Sub UpdateActiveCount(VC As VueComponent, vActiveCount As Object)
VC.SetData(xActiveCount, vActiveCount)
End Sub

'Update ActiveStroke
Sub UpdateActiveStroke(VC As VueComponent, vActiveStroke As Object)
VC.SetData(xActiveStroke, vActiveStroke)
End Sub

'Update ActiveWidth
Sub UpdateActiveWidth(VC As VueComponent, vActiveWidth As Object)
VC.SetData(xActiveWidth, vActiveWidth)
End Sub

'Update DashCount
Sub UpdateDashCount(VC As VueComponent, vDashCount As Object)
VC.SetData(xDashCount, vDashCount)
End Sub

'Update DashSpacing
Sub UpdateDashSpacing(VC As VueComponent, vDashSpacing As Object)
VC.SetData(xDashSpacing, vDashSpacing)
End Sub

'Update End
Sub UpdateEnd(VC As VueComponent, vEnd As Object)
VC.SetData(xEnd, vEnd)
End Sub

'Update Size
Sub UpdateSize(VC As VueComponent, vSize As Object)
VC.SetData(xSize, vSize)
End Sub

'Update Start
Sub UpdateStart(VC As VueComponent, vStart As Object)
VC.SetData(xStart, vStart)
End Sub

'Update Stroke
Sub UpdateStroke(VC As VueComponent, vStroke As Object)
VC.SetData(xStroke, vStroke)
End Sub

'Update StrokeWidth
Sub UpdateStrokeWidth(VC As VueComponent, vStrokeWidth As Object)
VC.SetData(xStrokeWidth, vStrokeWidth)
End Sub

'Update Text
Sub UpdateText(VC As VueComponent, vText As Object)
VC.SetData(xText, vText)
End Sub

'Update TextX
Sub UpdateTextX(VC As VueComponent, vTextX As Object)
VC.SetData(xTextX, vTextX)
End Sub

'Update TextY
Sub UpdateTextY(VC As VueComponent, vTextY As Object)
VC.SetData(xTextY, vTextY)
End Sub

