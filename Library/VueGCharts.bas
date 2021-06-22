B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

'Uncomment the events you want to show to the user and implement the HandleEvents in DesignerCreateView 
'#Event: MarkerClick (marker As Map)
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
#DesignerProperty: Key: SubTitle, DisplayName: Sub Title, FieldType: String, DefaultValue: , Description: Sub Title
#DesignerProperty: Key: ResizeDebounce, DisplayName: Resize Debounce, FieldType: Int, DefaultValue: 500, Description: Resize Debounce
#DesignerProperty: Key: ChartType, DisplayName: Chart Type, FieldType: String, DefaultValue: , Description: Chart Type, List: ColumnChart|Map|BubbleChart
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
	Private stTitle As String = ""
	Private stSubTitle As String = ""
	Private stResizeDebounce As String = ""
	Private stChartType As String = ""
	Public GChart As VueElement
	Public VC As VueComponent
	Private mHeight As String
	Private mWidth As String
	Private chartOptions As Map
	Private chartData As List
	Private chartDataID As String
	Private chartOptionsID As String'
	'
	Public const BUBBLE_CHART As String = "BubbleChart"
	Public const COLUMN_CHART As String = "ColumnChart"
	Public const MAP_CHART As String = "Map"
	Private colors As List
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
	chartOptions.Initialize 
	chartData.Initialize 
	chartDataID = $"${mName}data"$
	chartOptionsID = $"${mName}options"$
	colors.Initialize 
End Sub

'set the parent component
Sub setParentComponent(PVC As VueComponent)
	VC = PVC
End Sub

Sub UseGoogleCharts(vuetify As VuetifyApp)
	If vuetify.ModuleExist("googlecharts") = False Then
		Dim VueGoogleCharts As BANanoObject
		VueGoogleCharts.Initialize("VueGoogleCharts")
		vuetify.Use(VueGoogleCharts)
		vuetify.AddModule("googlecharts")
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
		stTitle = Props.Get("Title")
		stSubTitle = Props.Get("SubTitle")
		stResizeDebounce = Props.Get("ResizeDebounce")
		stChartType = Props.Get("ChartType")
		mHeight = Props.Get("Height")
		mWidth = Props.Get("Width")
	End If
	'
	mElement = mTarget.Append($"<g-chart ref="${mName}" id="${mName}"></g-chart>"$).Get("#" & mName)
	'
	GChart.Initialize(mCallBack,mName,mName)
	GChart.StyleHeight = mHeight
	GChart.StyleWidth = mWidth
	GChart.velse = stVElse
	GChart.velseif = stVElseIf
	GChart.vif = stVIf
	GChart.vshow = stVShow
	GChart.Bind("options", chartOptionsID)
	GChart.Bind("data", chartDataID)
	GChart.SetData(chartDataID, chartData)
	GChart.SetData(chartOptionsID, chartOptions)
	GChart.AddClass(mClasses)
	GChart.States = mStates
	GChart.Attributes = mAttributes
	GChart.Styles = mStyle
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

Sub setChartType(t As String)
	stChartType = t
End Sub

Sub setResizeDebounce(d As Int)
	stResizeDebounce = d
End Sub

Sub setSubTitle(t As String)
	stSubTitle = t
End Sub

Sub setTitle(t As String)
	stTitle = t
End Sub

'clear the chart data
Sub Clear
	chartData.Initialize 
	colors.Initialize 
End Sub

'add chart data
Sub AddChartData(lst As List)
	chartData.Add(lst)
End Sub

Sub AddColors(clrs As List)
	For Each col As String In clrs
		colors.Add(col)
	Next
End Sub

'refresh the chart
Sub Refresh
	GChart.AddAttr("type", stChartType)
	If stResizeDebounce >= 0 Then
		GChart.AddAttr("resizeDebounce", stResizeDebounce)
	End If
	Dim chart As Map = CreateMap()
	chart.Put("title", stTitle)
	chart.Put("subtitle", stSubTitle)
	'
	If colors.Size > 0 Then
		Dim colorAxis As Map = CreateMap()
		colorAxis.Put("colors", colors)
		chartOptions.Put("colorAxis", colorAxis)
	End If
	chartOptions.Put("chart", chart)
	VC.SetData(chartDataID, chartData)	
	VC.SetData(chartOptionsID, chartOptions)
End Sub

'remove component
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

'set the height
Sub setHeight(vHeight As String)
	If BANano.IsNull(vHeight) Or BANano.IsUndefined(vHeight) Then 
		vHeight = "500px"
	End If
	mHeight = vHeight
	GChart.AddStyle("height", vHeight)
End Sub

'get the height
Sub getHeight As String
	Return mHeight
End Sub

'set the width
Sub setWidth(vWidth As String)
	If BANano.IsNull(vWidth) Or BANano.IsUndefined(vWidth) Then 
		vWidth = "500px"
	End If
	mWidth = vWidth
	GChart.AddStyle("width", vWidth)
End Sub

'get the width
Sub getWidth As String
	Return mWidth
End Sub

'return the generated html
Sub ToString As String
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	If className <> "" Then GChart.AddAttr("class", className)
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	If styleName <> "" Then GChart.AddAttr("style", styleName)
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	'
	Dim sb As StringBuilder
	sb.Initialize
	sb.Append($"<GChart ref="${mName}" id="${mName}"></GChart>"$)
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
		VC.SetCallBack(k, cb)
	Next
End Sub