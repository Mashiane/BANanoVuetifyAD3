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
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: BorderDash, DisplayName: BorderDash, FieldType: String, DefaultValue: 0, Description: BorderDash
#DesignerProperty: Key: BorderWidth, DisplayName: BorderWidth, FieldType: String, DefaultValue: 0, Description: BorderWidth
#DesignerProperty: Key: Bytes, DisplayName: Bytes, FieldType: Boolean, DefaultValue: False, Description: Bytes
#DesignerProperty: Key: ChartType, DisplayName: ChartType, FieldType: String, DefaultValue: LineChart, Description: ChartType, List: LineChart|PieChart|ColumnChart|BarChart|AreaChart|ScatterChart|BubbleChart
#DesignerProperty: Key: Curve, DisplayName: Curve, FieldType: Boolean, DefaultValue: False, Description: Curve
#DesignerProperty: Key: Decimal, DisplayName: Decimals, FieldType: String, DefaultValue: , Description: Decimals
#DesignerProperty: Key: Discrete, DisplayName: Discrete, FieldType: Boolean, DefaultValue: False, Description: Discrete
#DesignerProperty: Key: Donut, DisplayName: Donut, FieldType: Boolean, DefaultValue: False, Description: Donut
#DesignerProperty: Key: Download, DisplayName: Download, FieldType: Boolean, DefaultValue: True, Description: Download
#DesignerProperty: Key: DownloadBackgroundColor, DisplayName: DownloadBackgroundColor, FieldType: String, DefaultValue: , Description: DownloadBackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: EmptyLabel, DisplayName: EmptyLabel, FieldType: String, DefaultValue: No Data, Description: EmptyLabel
#DesignerProperty: Key: FileName, DisplayName: FileName, FieldType: String, DefaultValue: chart, Description: FileName
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 400px, Description: Height
#DesignerProperty: Key: Label, DisplayName: Title, FieldType: String, DefaultValue: My Chart, Description: Title
#DesignerProperty: Key: LegendPosition, DisplayName: LegendPosition, FieldType: String, DefaultValue: , Description: LegendPosition, List: bottom|right|top|none
#DesignerProperty: Key: LibraryBackgroundColor, DisplayName: LibraryBackgroundColor, FieldType: String, DefaultValue: , Description: LibraryBackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: LoadingLabel, DisplayName: LoadingLabel, FieldType: String, DefaultValue: Loading... , Description: LoadingLabel
#DesignerProperty: Key: Max, DisplayName: Max, FieldType: String, DefaultValue: , Description: Max
#DesignerProperty: Key: Min, DisplayName: Min, FieldType: String, DefaultValue: , Description: Min
#DesignerProperty: Key: SetMinMax, DisplayName: SetMinMax, FieldType: Boolean, DefaultValue: False, Description: SetMinMax
#DesignerProperty: Key: Points, DisplayName: Points, FieldType: Boolean, DefaultValue: False, Description: Points
#DesignerProperty: Key: SetPrecision, DisplayName: SetPrecision, FieldType: Boolean, DefaultValue: False, Description: SetPrecision
#DesignerProperty: Key: Precision, DisplayName: Precision, FieldType: String, DefaultValue: , Description: Precision
#DesignerProperty: Key: SetRound, DisplayName: SetRound, FieldType: Boolean, DefaultValue: False, Description: SetRound
#DesignerProperty: Key: Round, DisplayName: Round, FieldType: String, DefaultValue: , Description: Round
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Prefix
#DesignerProperty: Key: RefreshInterval, DisplayName: Refresh, FieldType: String, DefaultValue: 0, Description: Refresh
#DesignerProperty: Key: Stacked, DisplayName: Stacked, FieldType: Boolean, DefaultValue: False, Description: Stacked
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix
#DesignerProperty: Key: Thousands, DisplayName: Thousands, FieldType: String, DefaultValue: , Description: Thousands
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
#DesignerProperty: Key: XMax, DisplayName: XMax, FieldType: String, DefaultValue: , Description: XMax
#DesignerProperty: Key: XMin, DisplayName: XMin, FieldType: String, DefaultValue: , Description: XMin
#DesignerProperty: Key: SetXMinXMax, DisplayName: SetXMinXMax, FieldType: Boolean, DefaultValue: False, Description: SetXMinXMax
#DesignerProperty: Key: ShowLine, DisplayName: ShowLine, FieldType: Boolean, DefaultValue: True, Description: ShowLine
#DesignerProperty: Key: XTitle, DisplayName: XTitle, FieldType: String, DefaultValue: X, Description: XTitle
#DesignerProperty: Key: YTitle, DisplayName: YTitle, FieldType: String, DefaultValue: Y, Description: YTitle
#DesignerProperty: Key: Zeros, DisplayName: Zeros, FieldType: Boolean, DefaultValue: False, Description: Zeros
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
	Private sBorderDash As String
	Private sBorderWidth As String
	Private bBytes As Boolean
	Private sChartType As String
	Private bCurve As Boolean
	Private sDecimal As String
	Private bDiscrete As Boolean
	Private bDonut As Boolean
	Private bDownload As Boolean
	Private sDownloadBackgroundColor As String
	Private sEmptyLabel As String
	Private sFileName As String
	Private sHeight As String
	Private sLabel As String
	Private sLegendPosition As String
	Private sLibraryBackgroundColor As String
	Private sLoadingLabel As String
	Private sMax As String
	Private sMin As String
	Private bPoints As Boolean
	Private sPrecision As String
	Private sPrefix As String
	Private sRefresh As String
	Private sRound As String
	Private bStacked As Boolean
	Private sSuffix As String
	Private sThousands As String
	Private sWidth As String
	Private sXMax As String
	Private sXMin As String
	Private sXTitle As String
	Private sYTitle As String
	Private bZeros As Boolean
 	Private options As Map
	Private datasets As Map
	Private bHidden As Boolean
	Private sVIf As String
	Private sVShow As String
	Private data As Map
	Private colors As List
	Private bSetXMinXMax As Boolean
	Private bSetMinMax As Boolean
	Private ColorMap As Map
	Private chartObj As BANanoObject
	Private series As Map
	Private bShowLine As Boolean
	Private bSetRound As Boolean
	Private bSetPrecision As Boolean
	Private VC As VueComponent
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	BANano.DependsOnAsset("leaflet.css")
	BANano.DependsOnAsset("Chart.min.css")
	BANano.DependsOnAsset("chart.js")
	BANano.DependsOnAsset("chartjs-adapter-date-fns.bundle.min.js")
	BANano.DependsOnAsset("chartkick.min.js")
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
	options.Initialize 
	datasets.Initialize 
	data.Initialize 
	colors.Initialize
	series.Initialize 
	'
	ColorMap.Initialize
	ColorMap.put("red", "#f44336")
	ColorMap.put("pink", "#e91e63")
	ColorMap.put("purple", "#9c27b0")
	ColorMap.put("deep-purple", "#673ab7")
	ColorMap.put("indigo", "#3f51b5")
	ColorMap.put("blue", "#2196f3")
	ColorMap.put("light-blue", "#03a9f4")
	ColorMap.put("cyan", "#00bcd4")
	ColorMap.put("teal", "#009688")
	ColorMap.put("green", "#4caf50")
	ColorMap.put("light-green", "#8bc34a")
	ColorMap.put("lime", "#cddc39")
	ColorMap.put("yellow", "#ffeb3b")
	ColorMap.put("amber", "#ffc107")
	ColorMap.put("orange", "#ff9800")
	ColorMap.put("deep-orange", "#ff5722")
	ColorMap.put("brown", "#795548")
	ColorMap.put("grey", "#9e9e9e")
	ColorMap.put("blue-grey", "#607d8b")
	ColorMap.put("black", "#000000")
	sVShow = $"${mName}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sBorderDash = Props.GetDefault("BorderDash", "")
		sBorderWidth = Props.GetDefault("BorderWidth", "")
		bBytes = Props.GetDefault("Bytes", False)
		sChartType = Props.GetDefault("ChartType", "")
		bCurve = Props.GetDefault("Curve", False)
		sDecimal = Props.GetDefault("Decimal", "")
		bDiscrete = Props.GetDefault("Discrete", False)
		bDonut = Props.GetDefault("Donut", False)
		bDownload = Props.GetDefault("Download", False)
		sDownloadBackgroundColor = Props.GetDefault("DownloadBackgroundColor", "")
		sEmptyLabel = Props.GetDefault("EmptyLabel", "")
		sFileName = Props.GetDefault("FileName", "")
		sHeight = Props.GetDefault("Height", "400px")
		sLabel = Props.GetDefault("Label", "")
		sLegendPosition = Props.GetDefault("LegendPosition", "")
		sLibraryBackgroundColor = Props.GetDefault("LibraryBackgroundColor", "")
		sLoadingLabel = Props.GetDefault("LoadingLabel", "")
		sMax = Props.GetDefault("Max", "")
		sMin = Props.GetDefault("Min", "")
		bPoints = Props.GetDefault("Points", False)
		sPrecision = Props.GetDefault("Precision", "")
		sPrefix = Props.GetDefault("Prefix", "")
		sRefresh = Props.GetDefault("RefreshInterval", "60")
		sRound = Props.GetDefault("Round", "")
		bStacked = Props.GetDefault("Stacked", False)
		sSuffix = Props.GetDefault("Suffix", "")
		sThousands = Props.GetDefault("Thousands", "")
		sWidth = Props.GetDefault("Width", "100%")
		sXMax = Props.GetDefault("XMax", "")
		sXMin = Props.GetDefault("XMin", "")
		sXTitle = Props.GetDefault("XTitle", "")
		sYTitle = Props.GetDefault("YTitle", "")
		bZeros = Props.GetDefault("Zeros", False)
		bHidden = Props.GetDefault("Hidden", False)
		sVIf = Props.GetDefault("VIf", "")
		bSetXMinXMax = Props.GetDefault("SetXMinXMax", False)
		bSetMinMax = Props.GetDefault("SetMinMax", False)
		bShowLine = Props.GetDefault("ShowLine", True)
		bSetRound = Props.GetDefault("SetRound", False)
		bSetPrecision = Props.GetDefault("SetPrecision", False)
	End If 
	'
	bBytes = BANanoShared.parseBool(bBytes)
bCurve = BANanoShared.parseBool(bCurve)
bDiscrete = BANanoShared.parseBool(bDiscrete)
bDonut = BANanoShared.parseBool(bDonut)
bDownload = BANanoShared.parseBool(bDownload)
bPoints = BANanoShared.parseBool(bPoints)
bStacked = BANanoShared.parseBool(bStacked)
bZeros = BANanoShared.parseBool(bZeros)
bHidden = BANanoShared.parseBool(bHidden)
bSetXMinXMax = BANanoShared.parseBool(bSetXMinXMax)
bSetMinMax = BANanoShared.parseBool(bSetMinMax)
bShowLine = BANanoShared.parseBool(bShowLine)
bSetRound = BANanoShared.parseBool(bSetRound)
bSetPrecision = BANanoShared.parseBool(bSetPrecision)
 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes
	VElement.AddStyle("width", sWidth)
	VElement.AddStyle("height", sHeight)
	VElement.AddAttr("v-if", sVIf)
	If bHidden Then
		VElement.AddAttr("v-show", sVShow)
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.BindAllEvents
	'
	sMin = BANano.parseFloat(sMin)
	sMax = BANano.parseFloat(sMax)
	
	If bSetMinMax Then
		BANanoShared.PutRecursive(options, "min", sMin)
		BANanoShared.PutRecursive(options, "max", sMax)
	End If
	'
	If bSetXMinXMax Then
		BANanoShared.PutRecursive(options, "xmax", sXMax)
		BANanoShared.PutRecursive(options, "xmin", sXMin)
	End If
	'
	BANanoShared.PutRecursive(options, "discrete", bDiscrete)
	'
	BANanoShared.PutRecursive(options, "title", sLabel)
	'
	BANanoShared.PutRecursive(options, "xtitle", sXTitle)
	BANanoShared.PutRecursive(options, "ytitle", sYTitle)	 
	'
	Select Case sChartType
	Case "ColumnChart", "BarChart"
		BANanoShared.PutRecursive(options, "stacked", bStacked)
	Case "LineChart"	
		BANanoShared.PutRecursive(options, "curve", bCurve)
		BANanoShared.PutRecursive(options, "points", bPoints)
		
		'
		sBorderDash = BANano.parseInt(sBorderDash)
		If sBorderDash <> 0 Then
			BANanoShared.PutRecursive(options, "dataset.borderDash", sBorderDash)
		End If
		BANanoShared.PutRecursive(options, "dataset.showLine", bShowLine)
	Case "ScatterChart"
		BANanoShared.PutRecursive(options, "dataset.showLine", bShowLine)
	Case "PieChart"
		BANanoShared.PutRecursive(options, "donut", bDonut)
		sBorderWidth = BANano.parseInt(sBorderWidth)
		If sBorderWidth <> 0 Then
			BANanoShared.PutRecursive(options, "dataset.borderWidth", sBorderWidth)
		End If
	End Select
	'
	If sLegendPosition <> "none" Then
		BANanoShared.PutRecursive(options, "legend", sLegendPosition)
	End If
	BANanoShared.PutRecursive(options, "prefix", sPrefix)
	'
	BANanoShared.PutRecursive(options, "suffix", sSuffix)
	'
	BANanoShared.PutRecursive(options, "thousands", sThousands)
	'
	BANanoShared.PutRecursive(options, "decimal", sDecimal)
	'
	If bSetPrecision Then
		sPrecision = BANano.parseInt(sPrecision)
		BANanoShared.PutRecursive(options, "precision", sPrecision)
	End If
	'
	If bSetRound Then
		sRound = BANano.parseInt(sRound)
		BANanoShared.PutRecursive(options, "round", sRound)
	End If
	'
	BANanoShared.PutRecursive(options, "zeros", bZeros)
	'
	BANanoShared.PutRecursive(options, "bytes", bBytes)
	'
	BANanoShared.PutRecursive(options, "loading", sLoadingLabel)
	'
	BANanoShared.PutRecursive(options, "empty", sEmptyLabel)
	'
	sRefresh = BANano.parseInt(sRefresh)
	If sRefresh <> 0 Then
		BANanoShared.PutRecursive(options, "refresh", sRefresh)
	End If
	'
	Dim lbg As String = GetColorHex(sLibraryBackgroundColor)
	If lbg <> "" Then
		BANanoShared.PutRecursive(options, "library.backgroundColor", lbg)	
	End If
	'
	Dim dbg As String = GetColorHex(sDownloadBackgroundColor)
	If dbg <> "" Then
		BANanoShared.PutRecursive(options, "download.background", dbg)
	End If
	
	'BANanoShared.PutRecursive(options, "library.tickLength", 1)
	'
	BANanoShared.PutRecursive(options, "download", bDownload)
	'
	BANanoShared.PutRecursive(options, "download.filename", sFileName)	
	
End Sub


'get a hex color from provided colors
private Sub GetColorHex(sColor As String) As String
	sColor = sColor.tolowercase
	If ColorMap.ContainsKey(sColor) Then
		Dim xColor As String = ColorMap.Get(sColor)
		Return xColor
	Else
		Return sColor
	End If
End Sub

'add element to parent
Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

'remove the component
Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

'add a class
Sub AddClass(s As String) As VChartKick 
	VElement.AddClass(s) 
	Return Me 
End Sub

'add an attribute
Sub AddAttr(p As String, v As Object) As VChartKick 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

'add a style
Sub AddStyle(p As String, v As String) As VChartKick 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

'remove an attribute
Sub RemoveAttr(p As String) As VChartKick 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

'update visibility of the chart
Sub UpdateVisible(C As VueComponent, b As Boolean) As VChartKick 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VChartKick 
	C.SetData(sVIf, b) 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

'get the id of the name
Sub getID As String 
	Return mName 
End Sub

'get the element id with #
Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'get BorderDash
Sub getBorderDash As String
	Return sBorderDash
End Sub

'set BorderDash
Sub setBorderDash(vBorderDash As String)
	If BANano.IsNull(vBorderDash) Or BANano.IsUndefined(vBorderDash) Then Return
	sBorderDash  = vBorderDash
	sBorderDash = BANano.parseInt(sBorderDash)
	BANanoShared.PutRecursive(options, "dataset.borderDash", sBorderWidth)
End Sub

'get BorderWidth
Sub getBorderWidth As String
	Return sBorderWidth
End Sub

'set BorderWidth
Sub setBorderWidth(vBorderWidth As String)
	If BANano.IsNull(vBorderWidth) Or BANano.IsUndefined(vBorderWidth) Then Return
	sBorderWidth  = vBorderWidth
	sBorderWidth = BANano.parseInt(sBorderWidth)
	BANanoShared.PutRecursive(options, "dataset.borderWidth", sBorderWidth)
End Sub

'set Bytes
Sub setBytes(vBytes As Boolean)
	If BANano.IsNull(vBytes) Or BANano.IsUndefined(vBytes) Then Return
	bBytes  = vBytes
	BANanoShared.PutRecursive(options, "bytes", bBytes)
End Sub

'get ChartType
Sub getChartType As String
	Return sChartType
End Sub

'set ChartType
Sub setChartType(vChartType As String)
	If BANano.IsNull(vChartType) Or BANano.IsUndefined(vChartType) Then Return
	sChartType  = vChartType
End Sub

'get Curve
Sub getCurve As Boolean
	Return bCurve
End Sub

'set Curve
Sub setCurve(vCurve As Boolean)
If BANano.IsNull(vCurve) Or BANano.IsUndefined(vCurve) Then Return
	bCurve  = vCurve
	BANanoShared.PutRecursive(options, "curve", bCurve)
End Sub

'get Decimals
Sub getDecimal As String
	Return sDecimal
End Sub

'set Decimal
Sub setDecimal(vDecimals As String)
	If BANano.IsNull(vDecimals) Or BANano.IsUndefined(vDecimals) Then Return
	sDecimal  = vDecimals
	sDecimal = BANano.parseInt(sDecimal)
	BANanoShared.PutRecursive(options, "decimal", sDecimal)
End Sub

'get Discrete
Sub getDiscrete As Boolean
	Return bDiscrete
End Sub

'set Discrete
Sub setDiscrete(vDiscrete As Boolean)
	If BANano.IsNull(vDiscrete) Or BANano.IsUndefined(vDiscrete) Then Return
	bDiscrete  = vDiscrete
	BANanoShared.PutRecursive(options, "discrete", sDecimal)
End Sub

'get Donut
Sub getDonut As Boolean
	Return bDonut
End Sub

'set Donut
Sub setDonut(vDonut As Boolean)
	If BANano.IsNull(vDonut) Or BANano.IsUndefined(vDonut) Then Return
	bDonut  = vDonut
	BANanoShared.PutRecursive(options, "donut", bDonut)
End Sub

'get Download
Sub getDownload As Boolean
	Return bDownload
End Sub

'set Download
Sub setDownload(vDownload As Boolean)
	If BANano.IsNull(vDownload) Or BANano.IsUndefined(vDownload) Then Return
	bDownload  = vDownload
	BANanoShared.PutRecursive(options, "download", bDownload)
End Sub

'get DownloadBackgroundColor
Sub getDownloadBackgroundColor As String
	Return sDownloadBackgroundColor
End Sub

'set DownloadBackgroundColor
Sub setDownloadBackground(vDownloadBackgroundColor As String)
	If BANano.IsNull(vDownloadBackgroundColor) Or BANano.IsUndefined(vDownloadBackgroundColor) Then Return
	sDownloadBackgroundColor  = vDownloadBackgroundColor
	Dim dbg As String = GetColorHex(sDownloadBackgroundColor)
	If dbg <> "" Then
		BANanoShared.PutRecursive(options, "download.background", dbg)
	End If
End Sub

'get EmptyLabel
Sub getEmptyLabel As String
	Return sEmptyLabel
End Sub

'set EmptyLabel
Sub setEmptyLabel(vEmptyLabel As String)
	If BANano.IsNull(vEmptyLabel) Or BANano.IsUndefined(vEmptyLabel) Then Return
	sEmptyLabel  = vEmptyLabel
	BANanoShared.PutRecursive(options, "label", sEmptyLabel)
End Sub

'get FileName
Sub getFileName As String
	Return sFileName
End Sub

'set FileName
Sub setFileName(vFileName As String)
	If BANano.IsNull(vFileName) Or BANano.IsUndefined(vFileName) Then Return
	sFileName  = vFileName
	BANanoShared.PutRecursive(options, "download.filename", sFileName)
End Sub

'get Height
Sub getHeight As String
	Return sHeight
End Sub

'set Height
Sub setHeight(vHeight As String)
	If BANano.IsNull(vHeight) Or BANano.IsUndefined(vHeight) Then Return
	sHeight  = vHeight
	VElement.AddStyle("height", sHeight)
End Sub

'get Label
Sub getTitle As String
	Return sLabel
End Sub

'set Label
Sub setTitle(xLabel As String)
	If BANano.IsNull(xLabel) Or BANano.IsUndefined(xLabel) Then Return
	sLabel  = xLabel
	BANanoShared.PutRecursive(options, "title", sLabel)
End Sub

'get LegendPosition
Sub getLegendPosition As String
	Return sLegendPosition
End Sub

'set LegendPosition
Sub setLegendPosition(vLegendPosition As String)
	If BANano.IsNull(vLegendPosition) Or BANano.IsUndefined(vLegendPosition) Then Return
	sLegendPosition  = vLegendPosition
	If sLegendPosition <> "none" Then
		BANanoShared.PutRecursive(options, "legend", sLegendPosition)
	End If
End Sub

'get LibraryBackgroundColor
Sub getLibraryBackgroundColor As String
	Return sLibraryBackgroundColor
End Sub

'set LibraryBackgroundColor
Sub setLibraryBackgroundColor(vLibraryBackgroundColor As String)
	If BANano.IsNull(vLibraryBackgroundColor) Or BANano.IsUndefined(vLibraryBackgroundColor) Then Return
	sLibraryBackgroundColor  = vLibraryBackgroundColor
	BANanoShared.PutRecursive(options, "library.backgroundColor", sLibraryBackgroundColor)
End Sub

'get LoadingLabel
Sub getLoadingLabel As String
	Return sLoadingLabel
End Sub

'set LoadingLabel
Sub setLoadingLabel(vLoadingLabel As String)
	If BANano.IsNull(vLoadingLabel) Or BANano.IsUndefined(vLoadingLabel) Then Return
	sLoadingLabel  = vLoadingLabel
	BANanoShared.PutRecursive(options, "loading", sLoadingLabel)
End Sub

'get Max
Sub getMax As String
	Return sMax
End Sub

'set Max
Sub setMax(vMax As String)
	If BANano.IsNull(vMax) Or BANano.IsUndefined(vMax) Then Return
	sMax  = vMax
	sMax = BANano.parseFloat(sMax)
	BANanoShared.PutRecursive(options, "max", sMax)
End Sub

'get Min
Sub getMin As String
	Return sMin
End Sub

'set Min
Sub setMin(vMin As String)
	If BANano.IsNull(vMin) Or BANano.IsUndefined(vMin) Then Return
	sMin  = vMin
	BANanoShared.PutRecursive(options, "min", sMin)
End Sub

'get Points
Sub getPoints As Boolean
	Return bPoints
End Sub

'set Points
Sub setPoints(vPoints As Boolean)
If BANano.IsNull(vPoints) Or BANano.IsUndefined(vPoints) Then Return
	bPoints  = vPoints
	BANanoShared.PutRecursive(options, "points", sMin)
End Sub

'get Precision
Sub getPrecision As String
	Return sPrecision
End Sub

'set Precision
Sub setPrecision(vPrecision As String)
	If BANano.IsNull(vPrecision) Or BANano.IsUndefined(vPrecision) Then Return
	sPrecision  = vPrecision
	sPrecision = BANano.parseInt(sPrecision)
	BANanoShared.PutRecursive(options, "precision", sPrecision)
End Sub

'get Prefix
Sub getPrefix As String
	Return sPrefix
End Sub

'set Prefix
Sub setPrefix(vPrefix As String)
	If BANano.IsNull(vPrefix) Or BANano.IsUndefined(vPrefix) Then Return
	sPrefix  = vPrefix
	BANanoShared.PutRecursive(options, "prefix", sPrefix)
End Sub

'get Refresh
Sub getRefresh As String
	Return sRefresh
End Sub

'set Refresh
Sub setRefresh(vRefresh As String)
	If BANano.IsNull(vRefresh) Or BANano.IsUndefined(vRefresh) Then Return
	sRefresh  = vRefresh
	sRefresh = BANano.parseInt(sRefresh)
	BANanoShared.PutRecursive(options, "refresh", sRefresh)
End Sub

'get Round
Sub getRound As String
	Return sRound
End Sub

'set Round
Sub setRound(vRound As String)
	If BANano.IsNull(vRound) Or BANano.IsUndefined(vRound) Then Return
	sRound  = vRound
	sRound = BANano.parseInt(sRound)
	BANanoShared.PutRecursive(options, "round", sRound)
End Sub

'get Stacked
Sub getStacked As Boolean
	Return bStacked
End Sub

'set Stacked
Sub setStacked(vStacked As Boolean)
	If BANano.IsNull(vStacked) Or BANano.IsUndefined(vStacked) Then Return
	bStacked  = vStacked
	BANanoShared.PutRecursive(options, "stacked", bStacked)
End Sub

'get Suffix
Sub getSuffix As String
	Return sSuffix
End Sub

'set Suffix
Sub setSuffix(vSuffix As String)
	If BANano.IsNull(vSuffix) Or BANano.IsUndefined(vSuffix) Then Return
	sSuffix  = vSuffix
	BANanoShared.PutRecursive(options, "suffix", sSuffix)
End Sub

'get Thousands
Sub getThousands As String
	Return sThousands
End Sub

'set Thousands
Sub setThousands(vThousands As String)
	If BANano.IsNull(vThousands) Or BANano.IsUndefined(vThousands) Then Return
	sThousands  = vThousands
	BANanoShared.PutRecursive(options, "thousands", sThousands)
End Sub

'get Width
Sub getWidth As String
	Return sWidth
End Sub

'set Width
Sub setWidth(vWidth As String)
	If BANano.IsNull(vWidth) Or BANano.IsUndefined(vWidth) Then Return
	sWidth  = vWidth
	VElement.AddStyle("width", sWidth)
End Sub

'get XMax
Sub getXMax As String
	Return sXMax
End Sub

'set XMax
Sub setXMax(vXMax As String)
	If BANano.IsNull(vXMax) Or BANano.IsUndefined(vXMax) Then Return
	sXMax  = vXMax
	sXMax = BANano.parseFloat(sXMax)
	BANanoShared.PutRecursive(options, "xmax", sXMax)
End Sub

'get XMin
Sub getXMin As String
	Return sXMin
End Sub

'set XMin
Sub setXMin(vXMin As String)
	If BANano.IsNull(vXMin) Or BANano.IsUndefined(vXMin) Then Return
	sXMin  = vXMin
	sXMin = BANano.parseFloat(sXMin)
	BANanoShared.PutRecursive(options, "xmin", sXMin)
End Sub

'get XTitle
Sub getXTitle As String
	Return sXTitle
End Sub

'set XTitle
Sub setXTitle(vXTitle As String)
	If BANano.IsNull(vXTitle) Or BANano.IsUndefined(vXTitle) Then Return
	sXTitle  = vXTitle
	BANanoShared.PutRecursive(options, "xtitle", sXTitle)
End Sub

'get YTitle
Sub getYTitle As String
	Return sYTitle
End Sub

'set YTitle
Sub setYTitle(vYTitle As String)
	If BANano.IsNull(vYTitle) Or BANano.IsUndefined(vYTitle) Then Return
	sYTitle  = vYTitle
	BANanoShared.PutRecursive(options, "ytitle", sYTitle)
End Sub

'get Zeros
Sub getZeros As Boolean
	Return bZeros
End Sub

'set Zeros
Sub setZeros(vZeros As Boolean)
	If BANano.IsNull(vZeros) Or BANano.IsUndefined(vZeros) Then Return
	bZeros  = vZeros
	BANanoShared.PutRecursive(options, "zeros", bZeros)
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

'clear the chart
Sub Clear
	data.Initialize 
	colors.Initialize
	series.initialize 
	datasets.Initialize 
	Dim sl As List
	sl.Initialize
	data.Put("a",sl)
End Sub


'add xy map
Sub AddXYMap(values As Map)
	For Each strKey As String In values.Keys
		Dim strVal As String = values.Get(strKey)
		AddXY(strKey,strVal)
	Next
End Sub

'add a bubble
Sub AddBubble(X As String, y As String, size As Double)
	size = BANano.parseFloat(size)
	'get the list of records
	Dim exdata As List = data.Get("a")
	Dim cudata As List
	cudata.Initialize
	cudata.Add(X)
	cudata.Add(y)
	cudata.Add(size)
	exdata.Add(cudata)
	data.Put("a",exdata)
End Sub

'add a new series without data
Sub AddSeries1(seriesCaption As String, seriesColor As String, seriesCurve As Boolean)
	If series.ContainsKey(seriesCaption) = False Then
		Dim nd As Map = CreateMap()
		Dim obj As Map = CreateMap()
		obj.Put("name", seriesCaption)
		obj.Put("curve", seriesCurve)
		obj.Put("label", seriesCaption)
		obj.Put("data", nd)
		If seriesColor <> "" Then
			Dim xColor As String = GetColorHex(seriesColor)
			obj.Put("color", xColor)
		End If
		series.Put(seriesCaption, obj)
	End If
End Sub

'add a new series with color and data
Sub AddSeries(seriesCaption As String, seriesColor As String, seriesCurve As Boolean, seriesData As Map)
	Dim obj As Map = CreateMap()
	obj.Put("name", seriesCaption)
	obj.Put("data", seriesData)
	obj.Put("curve", seriesCurve)
	obj.Put("label", seriesCaption)
	If seriesColor <> "" Then
		Dim xColor As String = GetColorHex(seriesColor)
		obj.Put("color", xColor)
		'colors.Add(xColor)
	End If
	series.Put(seriesCaption, obj)
End Sub

'ad xy value to a series, will create if it does not exist
Sub AddSeriesXY(seriesCaption As String, X As String, Y As String)
	If series.ContainsKey(seriesCaption) Then
		Dim m As Map = series.Get(seriesCaption)
		Dim mdata As Map = m.Get("data")
		mdata.Put(X, Y)
		m.Put("data", mdata)
		series.Put(seriesCaption, m)
	Else
		'create it
		Dim nd As Map = CreateMap()
		Dim obj As Map = CreateMap()
		obj.Put("name", seriesCaption)
		obj.Put("label", seriesCaption)
		obj.Put("data", nd)
		series.Put(seriesCaption, obj)
	End If	
End Sub

'add xy maps to a series
Sub AddSeriesXYMap(seriesName As String, values As Map)
	For Each strKey As String In values.Keys
		Dim strVal As String = values.Get(strKey)
		AddSeriesXY(seriesName,strKey,strVal)
	Next
End Sub

'add xy values to a chart
Sub AddXY(X As String, y As String)
	'get the list of records
	Dim exdata As List = data.Get("a")
	Dim cudata As List
	cudata.Initialize
	cudata.Add(X)
	cudata.Add(y)
	exdata.Add(cudata)
	data.Put("a",exdata)
End Sub

'add xy with a color
Sub AddXYColor(X As String, y As String, color As String)
	'get the list of records
	Dim exdata As List = data.Get("a")
	Dim cudata As List
	cudata.Initialize
	cudata.Add(X)
	cudata.Add(y)
	exdata.Add(cudata)
	data.Put("a",exdata)
	If color <> "" Then
		Dim xColor As String = GetColorHex(color)
		colors.Add(xColor)
	End If
End Sub

'refresh the data of the chart, execute after clear
Sub Refresh
	Dim plotdata As List
	plotdata.Initialize 
	If series.Size > 0 Then
		For Each k As String In series.Keys
			Dim obj As Map = series.Get(k)
			plotdata.Add(obj)
		Next
	Else
		plotdata = data.Get("a")
		If colors.Size > 0 Then
			BANanoShared.PutRecursive(options, "dataset.backgroundColor", colors)
			BANanoShared.PutRecursive(options, "dataset.borderColor", colors)
		End If
	End If

	Select Case sChartType
		Case "AreaChart"
			chartObj.Initialize2("Chartkick.AreaChart",Array(mName, plotdata, options))
		Case "BarChart"
			chartObj.Initialize2("Chartkick.BarChart",Array(mName, plotdata, options))
		Case "BubbleChart"
			chartObj.Initialize2("Chartkick.BubbleChart",Array(mName, plotdata, options))
		Case "ColumnChart"
			chartObj.Initialize2("Chartkick.ColumnChart",Array(mName, plotdata, options))
		Case "LineChart"
			chartObj.Initialize2("Chartkick.LineChart",Array(mName, plotdata, options))
		Case "PieChart"
			chartObj.Initialize2("Chartkick.PieChart",Array(mName, plotdata, options))
		Case "ScatterChart"
			chartObj.Initialize2("Chartkick.ScatterChart",Array(mName, plotdata, options))
	End Select
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