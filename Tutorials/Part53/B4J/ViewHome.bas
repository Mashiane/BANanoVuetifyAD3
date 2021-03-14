B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "home"
	Private banano As BANano
	Private homeCont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	home.Initialize(Me, name)
	home.vuetify = vuetify
	'make this the start page
	home.Path = "/"
	path = home.path
	'
	homeCont = home.Page.AddContainer("homecont", True)
	homeCont.AddRows1.AddColumns8.AddColumns4.AddColumns4.AddColumns8
	homeCont.BuildGrid
	'
	BuildChart
	'
	BuildDate
	'
	BuildProgress
	'
	BuildSparkLine
	'
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildChart
	Dim h1 As VueElement = homeCont.Cell(1, 1).AddH1("h11", "The Income Growth", vuetify.COLOR_GREY, "")
	h1.HeadLine = True
	h1.MB = 2
	'
	Dim gc As VueGCharts
	gc.Initialize(Me, "gc", "gc")
	gc.ParentComponent = home
	gc.Width = "700px"
	gc.Height = "300px"
	gc.ResizeDebounce = 0
	gc.ChartType = gc.BUBBLE_CHART
	gc.AddToParent(homeCont.CellID(1, 1))
	home.BindVueElement(gc.GChart)
	'
	gc.Clear
	gc.AddColors(Array("yellow", "red"))
	gc.AddChartData(Array("ID", "X", "Y", "In Million"))
	gc.AddChartData(Array("", 80, 167, 120))
	gc.AddChartData(Array("", 79, 136, 130))
	gc.AddChartData(Array("", 78, 184, 50))
	gc.AddChartData(Array("", 72, 278, 230))
	gc.AddChartData(Array("", 81, 200, 210))
	gc.AddChartData(Array("", 72, 170, 100))
	gc.AddChartData(Array("", 68, 477, 80))
	gc.Refresh
	
End Sub


Sub BuildDate
	Dim dp As VueElement = homeCont.Cell(1, 2).AddDatePicker("dp1", "picker", BANanoShared.DateNow, Null)
	dp.fullwidth = True
	dp.Bind(":landScape", vuetify.BREAKPOINT_smAndUp)
	dp.NoTitle = True
	dp.MT = 3
	dp.Elevation = 15
	dp.Color = vuetify.color_orange
	'
	home.BindVueElement(dp)
End Sub

Sub BuildProgress
	Dim h1x As VueElement = homeCont.Cell(1, 3).AddH1("h1x", "Total Revenue ", vuetify.COLOR_GREY, "")
	h1x.HeadLine = True
	'
	Dim pc As VueElement = homeCont.Cell(1, 3).AddProgressCircular1("pc", "pcvalue", "76", "{{ pcvalue }}%", "15", "150", vuetify.color_pink, vuetify.Intensity_lighten2)
	home.BindVueElement(pc)
	
	Dim h1a As VueElement = homeCont.Cell(1, 3).AddH1("h1a", "$67, 127.26 ", "", "")
	h1a.HeadLine = True
	h1a.PL = 5
	'
	Dim h6a As VueElement = homeCont.Cell(1, 3).AddH6("h6a", "with 25 days ", vuetify.color_grey, "")
	h6a.HeadLine = True
	h6a.PL = 5
End Sub
'

Sub BuildSparkLine
	Dim slh1 As VueElement = homeCont.Cell(1, 4).AddH1("slh1", "The Company growth in 2 half years", vuetify.COLOR_GREY, "")
	slh1.HeadLine = True
	'
	Dim slcont As VueElement = homeCont.Cell(1, 4).AddContainer("slcont", True)
	'
	Dim sl As VueElement = slcont.AddSparkLine("sl")
	sl.VModel = "slvalue"
	sl.Gradient = ":gradient"
	sl.Smooth = ":radius"
	sl.Padding = ":padding"
	sl.LineWidth = ":linewidth"
	sl.StrokeLineCap = ":linecap"
	sl.GradientDirection = ":gradientdirection"
	sl.Fill = ":fill"
	sl.SparkType = ":sparktype"
	sl.AutoLineWidth = ":autolinewidth"
	sl.AutoDraw = True
	sl.ShowLabels = ":showlabels"
	sl.LabelSize = ":labelsize"
	'
	sl.ClearGradients
	sl.AddGradient(Array("#222"))
	sl.AddGradient(Array("#42b3f4"))
	sl.AddGradient(Array("red", "orange", "yellow"))
	sl.AddGradient(Array("purple", "violet"))
	sl.AddGradient(Array("#00c6ff", "#F0F", "#FF0"))
	sl.AddGradient(Array("#f72047", "#ffd200", "#1feaea"))
	'
	Dim g5 As List = sl.Gradients.Get(5)
	
	sl.SetData("showLabels", False)
	sl.SetData("lineWidth", 2)
	sl.SetData("labelSize", 7)
	sl.SetData("radius", 10)
	sl.SetData("padding", 8)
	sl.SetData("lineCap", "round")
	sl.SetData("gradient", g5)
	sl.SetData("slvalue", Array(0, 2, 5, 9, 5, 10, 3, 5, -4, -10, 1, 8, 2, 9, 0))
	sl.SetData("gradientDirection", "top")
	sl.SetData("gradients", sl.gradients)
	sl.SetData("fill", False)
	sl.SetData("sparktype", "trend")
	sl.SetData("autoLineWidth", False)
	home.BindVueElement(sl)	
End Sub
