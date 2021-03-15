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
	homeCont = home.AddContainer("homecont", True)
	homeCont.AddRows2.AddColumns2x6
	homeCont.BuildGrid
	'
	BuildChart1
	BuildChart2
	BuildChart3
		
	'add the component as a router
	vuetify.AddRoute(home)
End Sub


Sub BuildChart1
	Dim chart1 As VueGCharts = homeCont.Cell(1, 1).AddVueGCharts("chart1")
	chart1.ParentComponent = home
	chart1.ResizeDebounce = 0
	chart1.ChartType = chart1.COLUMN_CHART
	chart1.Title = "Company Performance"
	chart1.SubTitle = "Sales, Expense, and Profix: 2014-2017"
	home.BindVueGCharts(chart1)
	'
	chart1.Clear
	chart1.AddChartData(Array("Year", "Sales", "Expenses", "Profit"))
	chart1.AddChartData(Array("2014", 1000, 400, 200))
	chart1.AddChartData(Array("2015", 1170, 460, 250))
	chart1.AddChartData(Array("2016", 660, 1120, 300))
	chart1.AddChartData(Array("2017", 1030, 540, 350))
	chart1.Refresh
End Sub

Sub BuildChart3
	Dim chart3 As VueGCharts = homeCont.Cell(2, 1).AddVueGCharts("chart3")
	chart3.ParentComponent = home
	chart3.ChartType = chart3.COLUMN_CHART
	chart3.ResizeDebounce = 0
	home.BindVueGCharts(chart3)
	'
	chart3.Clear
	chart3.AddChartData(Array("Name", "Height"))
	chart3.AddChartData(Array("John Dow", 173))
	chart3.AddChartData(Array("Richard Dow", 182))
	chart3.AddChartData(Array("Bob Dow", 155))
	chart3.Refresh
End Sub

Sub BuildChart2
	Dim gc As VueGCharts = homeCont.Cell(1, 2).AddVueGCharts("gc")
	gc.ParentComponent = home
	gc.Width = "900px"
	gc.Height = "500px"
	gc.ResizeDebounce = 0
	gc.ChartType = gc.BUBBLE_CHART
	home.BindVueGCharts(gc)
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