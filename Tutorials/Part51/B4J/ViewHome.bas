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
	Private homecont As VueElement
	Private part1cont As VueElement
	Private part2cont As VueElement
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
	homecont = home.AddContainer("homecont", True)
	homecont.AddRows1.AddColumns8.AddColumns4
	homecont.buildgrid
	'r1c1
	BuildPart1
	'r1c2
	BuildPart2
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildPart2
	Dim part2app As VueElement = homecont.Cell(1, 2).AddApp("part2app")
	part2cont = part2app.AddContainer("part2cont", True)
	part2cont.AddRows1.AddColumns12.AddColumns4.AddColumns4.AddColumns4.AddColumns12.AddColumns12.AddColumns12.AddColumns12.AddColumns12.AddColumns12
	part2cont.BuildGrid
	
	BuildPart2Section1
	BuildPart2Section2
	BuildPart2Section3
	BuildPart2Section4
	'
	Dim btn5 As VueElement = part2cont.Cell(1, 5).AddButtonWithRightIcon("mm", "November", "mdi-chevron-down", "", False, Null, Null)
	btn5.Raised = False
	'
	BuildPart2Section6
	BuildPart2Section7
	BuildPart2Section8
	'
	Dim btn9 As VueElement = part2cont.Cell(1, 9).AddButtonWithRightIcon("mx", "Your treatment", "mdi-chevron-down", "", False, Null, Null)
	btn9.Raised = False
	'
	BuildPart2Section10
End Sub

Sub BuildPart2Section7
	Dim p2s7card As VueElement = part2cont.Cell(1, 7).AddCard("p2s7card", "", Null)
	p2s7card.MX = 12
	p2s7card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	p2s7card.MT = "n4"
	p2s7card.PY = "4"
	p2s7card.Flat = True
	p2s7card.Color = vuetify.COLOR_TEAL
	p2s7card.ColorIntensity = vuetify.INTENSITY_LIGHTEN5
	
	Dim p2s7list As VueElement = p2s7card.AddList1("p2s7list")
	p2s7list.Color = vuetify.COLOR_TEAL
	p2s7list.ColorIntensity = vuetify.INTENSITY_LIGHTEN5
	
	p2s7list.Options.dataSource = "p2s7listlinks"
	p2s7list.AddListViewTemplate1(3)
	
	p2s7list.ListItemAvatar.Tile = True
	p2s7list.ListItemAvatar.Size = "30"
	p2s7list.ListItemAvatarIcon.Size = "30"
	p2s7list.ListItemContent.PA = 2
	p2s7list.ListItemTitle.AddClass("headline")
	p2s7list.ListItemTitle.mb = "1"
	
	Dim cc As BVAD3ListItem = p2s7list.CreateListItem("ce")
	cc.SetAvatarIcon("fas fa-heartbeat")
	cc.SetTitle("Cardiologist")
	cc.SetSubTitle("8:00 - 9:30")
	cc.SetSubTitle1("Dr. Erika Clark (cab 61)")
	p2s7list.ListViewAddItem1(cc)
	
	p2s7list.SetData("p2s7listlinks", p2s7list.Records)
	home.BindVueElement(p2s7list)
End Sub

Sub BuildPart2Section8
	Dim p2s7card As VueElement = part2cont.Cell(1, 8).AddCard("p2s8card", "", Null)
	p2s7card.MX = 12
	p2s7card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	p2s7card.MT = "n4"
	p2s7card.PY = "4"
	p2s7card.Flat = True
	p2s7card.Color = vuetify.COLOR_TEAL
	p2s7card.Dark = True
	
	Dim p2s7list As VueElement = p2s7card.AddList1("p2s8list")
	p2s7list.Color = vuetify.COLOR_TEAL
	p2s7list.Dark = True
	
	p2s7list.Options.dataSource = "p2s8listlinks"
	p2s7list.AddListViewTemplate1(3)
	
	p2s7list.ListItemAvatar.Tile = True
	p2s7list.ListItemAvatar.Size = "30"
	p2s7list.ListItemAvatarIcon.Size = "30"
	p2s7list.ListItemContent.PA = 2
	p2s7list.ListItemTitle.AddClass("headline")
	p2s7list.ListItemTitle.mb = "1"
	
	Dim cc As BVAD3ListItem = p2s7list.CreateListItem("ce")
	cc.SetAvatarIcon("mdi-tooth")
	cc.SetTitle("Dentist")
	cc.SetSubTitle("9:45 - 11:50")
	cc.SetSubTitle1("Dr. Alex Brow (cab 32)")
	p2s7list.ListViewAddItem1(cc)
	
	p2s7list.SetData("p2s8listlinks", p2s7list.Records)
	home.BindVueElement(p2s7list)
End Sub

Sub BuildPart2Section10
	Dim p2s7card As VueElement = part2cont.Cell(1, 10).AddCard("p2s10card", "", Null)
	p2s7card.MX = 12
	p2s7card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	p2s7card.MT = "n4"
	p2s7card.PY = "4"
	p2s7card.Flat = True
	p2s7card.Color = vuetify.COLOR_TEAL
	p2s7card.ColorIntensity = vuetify.INTENSITY_LIGHTEN5
	
	Dim p2s7list As VueElement = p2s7card.AddList1("p2s10list")
	p2s7list.Color = vuetify.COLOR_TEAL
	p2s7list.ColorIntensity = vuetify.INTENSITY_LIGHTEN5
	
	p2s7list.Options.dataSource = "p2s10listlinks"
	p2s7list.AddListViewTemplate1(3)
	
	p2s7list.ListItemAvatar.Tile = True
	p2s7list.ListItemAvatar.Size = "30"
	p2s7list.ListItemAvatarIcon.Size = "30"
	p2s7list.ListItemAvatarIcon.Color = vuetify.color_teal
	p2s7list.ListItemContent.PA = 2
	p2s7list.ListItemTitle.AddClass("headline")
	p2s7list.ListItemTitle.mb = "1"
	
	Dim cc As BVAD3ListItem = p2s7list.CreateListItem("cf")
	cc.SetAvatarIcon("mdi-pill")
	cc.SetTitle("Gentle Iron")
	cc.SetSubTitle("2 capsules with meals everyday")
	p2s7list.ListViewAddItem1(cc)
	
	p2s7list.SetData("p2s10listlinks", p2s7list.Records)
	home.BindVueElement(p2s7list)
End Sub


Sub BuildPart2Section6
	Dim p2s6div As VueElement = part2cont.Cell(1, 6).AddDiv("p2s6div")
	p2s6div.AddRows1.AddColumns6x2
	p2s6div.BuildGrid
	'
	Dim btnMo As VueElement = p2s6div.Cell(1, 1).AddButton("btnMo", "Mo", "", True, Null)
	btnMo.Block = True
	btnMo.Color = vuetify.COLOR_TEAL
	btnMo.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnMo.MR = 1
	'
	Dim btnTu As VueElement = p2s6div.Cell(1, 2).AddButton("btnTu", "Tu", "", True, Null)
	btnTu.Block = True
	btnTu.Color = vuetify.COLOR_TEAL
	btnTu.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnTu.MR = 1
	'
	Dim btnWe As VueElement = p2s6div.Cell(1, 3).AddButton("btnWe", "We", "", True, Null)
	btnWe.Block = True
	btnWe.Color = vuetify.COLOR_TEAL
	btnWe.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnWe.MR = 1
	'
	Dim btnTh As VueElement = p2s6div.Cell(1, 4).AddButton("btnTh", "Th", "", True, Null)
	btnTh.Block = True
	btnTh.Color = vuetify.COLOR_TEAL
	btnTh.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnTh.Dark = True
	btnTh.MR = 1
	'
	Dim btnFr As VueElement = p2s6div.Cell(1, 5).AddButton("btnFr", "Fr", "", True, Null)
	btnFr.Block = True
	btnFr.Color = vuetify.COLOR_TEAL
	btnFr.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnFr.MR = 1
	'
	Dim btnSa As VueElement = p2s6div.Cell(1, 6).AddButton("btnSa", "Sa", "", True, Null)
	btnSa.Block = True
	btnSa.Color = vuetify.COLOR_TEAL
	btnSa.ColorIntensity = vuetify.INTENSITY_DARKEN1
	btnSa.MR = 1
	
End Sub

Sub BuildPart2Section1
	Dim p2s1list As VueElement = part2cont.Cell(1, 1).AddList1("p2s1list")
	p2s1list.Options.dataSource = "p2s1listlinks"
	p2s1list.AddListViewTemplate1(2)
	p2s1list.ListItemSubTitle.TextColor = vuetify.COLOR_TEAL
	p2s1list.ListItemRightIcon.Color = vuetify.COLOR_TEAL
	
	Dim c1 As BVAD3ListItem = p2s1list.CreateListItem("c1")
	c1.SetAvatar("./assets/03.png")
	c1.SetTitle("Anastacia Turner")
	c1.SetSubTitle("35 years, Houston")
	c1.SetRightIcon("mdi-menu")
	
	p2s1list.ListViewAddItem1(c1)
	
	p2s1list.SetData("p2s1listlinks", p2s1list.Records)
	home.BindVueElement(p2s1list)
End Sub

Sub BuildPart2Section2
	Dim p2div As VueElement = part2cont.Cell(1, 2).AddDiv("p2div")
	p2div.AddRows1.AddColumns2.AddColumns10
	p2div.BuildGrid
	'
	Dim p2s2card As VueElement = p2div.Cell(1, 1).AddCard("p2s2card", "green", Null)
	p2s2card.Height = "50px"
	p2s2card.Width = "10px"
	'
	Dim p2s2list As VueElement = p2div.Cell(1, 2).AddList1("p2s2list")
	p2s2list.ML = "n8"
	p2s2list.AddAttr(":subheader", True)
	p2s2list.Options.dataSource = "p2s2listlinks"
	p2s2list.AddListViewTemplate1(2)
	
	Dim cc As BVAD3ListItem = p2s2list.CreateListItem("cc")
	cc.SetTitle("A+")
	cc.SetSubTitle("Blood")
	
	p2s2list.ListViewAddItem1(cc)
	
	p2s2list.SetData("p2s2listlinks", p2s2list.Records)
	home.BindVueElement(p2s2list)
End Sub

Sub BuildPart2Section3
	Dim p2div As VueElement = part2cont.Cell(1, 3).AddDiv("p3div")
	p2div.AddRows1.AddColumns2.AddColumns10
	p2div.BuildGrid
	'
	Dim p2s2card As VueElement = p2div.Cell(1, 1).AddCard("p2s3card", "red", Null)
	p2s2card.Height = "50px"
	p2s2card.Width = "10px"
	'
	Dim p2s2list As VueElement = p2div.Cell(1, 2).AddList1("p2s3list")
	p2s2list.ML = "n8"
	p2s2list.AddAttr(":subheader", True)
	p2s2list.Options.dataSource = "p2s3listlinks"
	p2s2list.AddListViewTemplate1(2)
	
	Dim cc As BVAD3ListItem = p2s2list.CreateListItem("cd")
	cc.SetTitle("175 cm")
	cc.SetSubTitle("Height")
	
	p2s2list.ListViewAddItem1(cc)
	
	p2s2list.SetData("p2s3listlinks", p2s2list.Records)
	home.BindVueElement(p2s2list)
End Sub

Sub BuildPart2Section4
	Dim p2div As VueElement = part2cont.Cell(1, 4).AddDiv("p4div")
	p2div.AddRows1.AddColumns2.AddColumns10
	p2div.BuildGrid
	'
	Dim p2s2card As VueElement = p2div.Cell(1, 1).AddCard("p2s4card", "grey", Null)
	p2s2card.Height = "50px"
	p2s2card.Width = "10px"
	'
	Dim p2s2list As VueElement = p2div.Cell(1, 2).AddList1("p2s4list")
	p2s2list.ML = "n8"
	p2s2list.AddAttr(":subheader", True)
	p2s2list.Options.dataSource = "p2s4listlinks"
	p2s2list.AddListViewTemplate1(2)
	
	Dim cc As BVAD3ListItem = p2s2list.CreateListItem("ce")
	cc.SetTitle("64 kg")
	cc.SetSubTitle("Weight")
	
	p2s2list.ListViewAddItem1(cc)
	
	p2s2list.SetData("p2s4listlinks", p2s2list.Records)
	home.BindVueElement(p2s2list)
End Sub

Sub BuildPart1
	Dim part1app As VueElement = homecont.Cell(1, 1).AddApp("part1app")
	part1app.AddClass("rounded-tr-xl")
	part1app.AddClass("rounded-br-xl")
	
	'
	part1cont = part1app.AddContainer("part1cont", True)
	part1cont.AddRows1.AddColumns12.AddColumns12.AddColumns12.AddColumns6.AddColumns6
	part1cont.BuildGrid
	part1cont.Color = vuetify.COLOR_TEAL
	part1cont.ColorIntensity = vuetify.INTENSITY_LIGHTEN5
	
	'R1C1
	BuildToolBar
	'R1C2
	BuildDiscount
	'R1C3
	BuildStatistics
	'R1C4
	BuildHeartRate
	'R1C5
	BuildProgress
End Sub

Sub BuildProgress
	Dim r1c5card As VueElement = part1cont.Cell(1, 5).AddCard("r1c5card", "", Null)
	r1c5card.MX = 12
	r1c5card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	r1c5card.MT = "n12"
	'
	Dim c5appbar As VueElement = r1c5card.AddAppBar("c5appbar")
	c5appbar.Color = "rgba(0,0,0,0)"
	c5appbar.Flat = True
	c5appbar.MA = 8
	'
	c5appbar.AddH5("c5h5", "Your activity","", "")
	'
	c5appbar.AddSpacer
	'
	Dim c5b1 As VueElement = c5appbar.AddButton("c5b1", "Week", "teal", False, Null)
	c5b1.Dark = True
	c5b1.Rounded = True
	c5b1.Depressed = True
	'
	Dim c5b2 As VueElement = c5appbar.AddButton("c5b2", "Month", "", False, Null)
	c5b2.raised = False
	'
	Dim pr1 As VueElement = r1c5card.AddProgressCircular("pr1", "pr1value", "{{ pr1value }}", "teal", Null)
	pr1.Rotate = "360"
	pr1.Size = "100"
	pr1.Width = "15"
	pr1.MT = "n5"
	pr1.ML = "5"
	pr1.MB = "2"
	pr1.SetData("pr1value", "50")
	home.BindVueElement(pr1)
	'
	Dim pr2 As VueElement = r1c5card.AddProgressCircular("pr2", "pr2value", "{{ pr2value }}", "red", Null)
	pr2.Rotate = "360"
	pr2.Size = "100"
	pr2.Width = "15"
	pr2.MT = "n5"
	pr2.ML = "5"
	pr2.MB = "2"
	pr2.SetData("pr2value", "70")
	home.BindVueElement(pr2)
	'
	Dim pr3 As VueElement = r1c5card.AddProgressCircular("pr3", "pr3value", "{{ pr3value }}", "blue", Null)
	pr3.Rotate = "360"
	pr3.Size = "100"
	pr3.Width = "15"
	pr3.MT = "n5"
	pr3.ML = "5"
	pr3.MB = "2"
	pr3.SetData("pr3value", "80")
	home.BindVueElement(pr3)
	
End Sub

Sub BuildHeartRate
	Dim r1c4card As VueElement = part1cont.Cell(1, 4).AddCard("r1c4card", "", Null)
	r1c4card.MX = 12
	r1c4card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	r1c4card.MT = "n4"
	r1c4card.Color = "teal"
	
	Dim listb As VueElement = r1c4card.AddList1("listb")
	listb.Options.dataSource = "listblinks"
	listb.AddListViewTemplate1(3)
	listb.Color = "teal"
	listb.Dark = True
	
	listb.ListItemContent.PA = 2
	listb.ListItemTitle.AddClass("headline")
	listb.LIstItemTitle.MB = 1
	'
	listb.ListItemRightAvatar.Tile = True
	listb.ListItemRightAvatar.Size = "150"
	listb.ListItemRightAvatar.pr = "10"
	listb.ListItemRightAvatarIcon.Size = "100"
	'
	Dim b1 As BVAD3ListItem = listb.CreateListItem("b1")
	b1.SetTitle("Heart rate 112 bpm")
	b1.SetRightAvatarIcon("fas fa-heartbeat")
	listb.ListViewAddItem1(b1)
	
	listb.SetData("listblinks", listb.Records)
	home.BindVueElement(listb)
	
End Sub



Sub BuildStatistics
	Dim r1c3card As VueElement = part1cont.Cell(1, 3).AddCard("r1c3card", "", Null)
	r1c3card.MX = 12
	r1c3card.MT = "n10"
	r1c3card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	'
	Dim c3appbar As VueElement = r1c3card.AddAppBar("c3appbar")
	c3appbar.Color = "rgba(0,0,0,0)"
	c3appbar.Flat = True
	c3appbar.MA = 8
	'
	c3appbar.AddH5("h5", "Statistics for your health","", "")
	c3appbar.addspacer
	Dim btnDown As VueElement = c3appbar.AddButtonWithRightIcon("btndown", "2019", "mdi-chevron-down", "teal", False, Null, Null)
	btnDown.Raised = False
	'
	Dim c3spark As VueElement = r1c3card.AddSparkLine("c3spark")
	c3spark.VModel = "c3sparkvalue"
	c3spark.Color = vuetify.COLOR_TEAL
	c3spark.Smooth = "radius || false"
	c3spark.padding = "padding"
	c3spark.LineWidth = "width"
	c3spark.StrokeLineCap = "linecap"
	c3spark.Fill = "fill"
	c3spark.SparkType = "sparktype"
	c3spark.Autolinewidth = "autolinewidth"
	c3spark.AutoDraw = True
	'
	c3spark.SetData("width", 2)
	c3spark.SetData("radius", 10)
	c3spark.SetData("padding", 8)
	c3spark.SetData("linecap", "round")
	c3spark.SetData("c3sparkvalue", Array(0, 2, 5, 9, 5, 10, 3, 5, 0, 0, 1, 8, 2, 9, 0))
	c3spark.setdata("fill", False)
	c3spark.SetData("sparktype", "trend")
	c3spark.SetData("autolinewidth", False)
	
	home.BindVueElement(c3spark)
End Sub

Sub BuildToolBar
	Dim p1bar As VueElement = part1cont.Cell(1, 1).AddAppBar("p1bar")
	p1bar.Flat = True
	p1bar.MX = 8
	p1bar.MB = 8
	p1bar.MT = 3
	p1bar.Color = "rgba(0,0,0,0)"
	'
	Dim txtsymptomsearch As VueElement = p1bar.AddTextField1("txtsymptomsearch", "", "", Null)
	txtsymptomsearch.PrependIcon = "mdi-magnify"
	txtsymptomsearch.Color = vuetify.COLOR_TEAL
	txtsymptomsearch.Placeholder = "Search your symptoms"
	txtsymptomsearch.Flat = True
	txtsymptomsearch.Success = True
	'
	p1bar.AddSpacer
	'
	Dim chip1 As VueElement = p1bar.AddChipWithIcon("chip1", "mdi-clock-time-nine", "14:02 AM Today, 2019", False, False, _
	vuetify.color_white, Null, Null)
	chip1.MA = 2
	chip1.GetIcon.Color = vuetify.COLOR_TEAL
	chip1.GetIcon.Left = True
End Sub

Sub BuildDiscount
	Dim r1c2card As VueElement = part1cont.Cell(1, 2).AddCard("r1c2card", "", Null)
	r1c2card.MX = 12
	r1c2card.MT = "n15"
	r1c2card.AddClass("rounded-tl-xl rounded-tr-xl rounded-bl-xl rounded-br-xl")
	'
	Dim lista As VueElement = r1c2card.AddList1("lista")
	lista.Options.dataSource = "listalinks"
	lista.AddListViewTemplate1(3)
	lista.ListItemContent.PA = 10
	lista.ListItemTitle.AddClass("headline")
	lista.LIstItemTitle.MB = 1
	lista.ListItemRightAvatar.Tile = True
	lista.ListItemRightAvatar.Size = "150"
	lista.ListItemRightAvatar.pr = "10"
	
	'
	Dim a1 As BVAD3ListItem = lista.CreateListItem("a1")
	a1.SetTitle("Today -10% discount on lung examinations")
	a1.SetSubTitle("The package price includes: consultation of pulmonogist, spiragraphy, cardiogram")
	a1.SetRightAvatar("./assets/lungs.png")
	'
	lista.ListViewAddItem1(a1)
	
	lista.SetData("listalinks", lista.Records)
	home.BindVueElement(lista)
End Sub