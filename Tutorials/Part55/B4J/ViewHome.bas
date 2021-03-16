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
	homeCont = home.Page.AddDiv("homecont")
	homeCont.AddClass("home")
	'
	BuildToolBar
	'
	homeCont.AddDivider
	
	BuildCards
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildCards
	Dim cardcont As VueElement = homeCont.AddContainer("cardcont", True)
	cardcont.MT = 5
	cardcont.AddRows1.AddColumns3x4
	cardcont.AddRows1.AddColumns2x6
	cardcont.AddRows1.AddColumns2x6
	cardcont.BuildGrid
	'
	BuildCurrency1(cardcont)
	BuildCurrency2(cardcont)
	BuildCurrency3(cardcont)
	'
	BuildImpression(cardcont)
	BuildActivity(cardcont)
	BuildBitCoinPrice(cardcont)
	BuildPortfolio(cardcont)
End Sub

Sub BuildPortfolio(p As VueElement)
	Dim port As VueElement = p.Cell(3, 2).AddCard("port1", "", Null)
	port.AddRows1.AddColumns2x6
	port.BuildGrid
	'
	port.Cell(1, 1).BorderRight = "1px solid grey"
	port.Cell(1, 2).AlignCenter = True
	'
	Dim li As VueElement = port.Cell(1, 1).AddListItem("portli", Null)
	li.threeline = True
	
	Dim licont As VueElement = li.AddListItemContent("portlico")
	Dim div As VueElement = licont.AddDiv("licodiv")
	div.MB = 4
	div.Caption = "Your Portfolio"
	'
	Dim xcont As VueElement = licont.AddDiv("xcont")
	xcont.AddRows1.AddColumns2x6
	xcont.BuildGrid
	
	Dim prgx As VueElement = xcont.Cell(1, 1).AddProgressCircular1("prgx", "prgxvalue", "70", "{{ prgxvalue }}%", _
	"15", "100", "teal", "")
	prgx.Rotate = "360"
	home.BindVueElement(prgx)
	'
	Dim li1 As VueElement = xcont.Cell(1, 2).AddListItemSubTitle("li1sta", "2.5578 BTC")
	li1.MT = 8
	li1.TextColor = vuetify.COLOR_GREY
	'
	Dim li2 As VueElement = xcont.Cell(1, 2).AddListItemSubTitle("li1stb", "$2,500 USD")
	li2.TextColor = vuetify.COLOR_GREY
	'***********
	
	Dim liya As VueElement = port.Cell(1, 2).AddListItem("portli1", Null)
	liya.twoline = True
	liya.MT = 10
	'
	Dim liyacont As VueElement = liya.AddListItemContent("portli1co")
	Dim lit1 As VueElement = liyacont.AddListItemTitle("lit1", "$8,520.00")
	lit1.HeadLine = True
	lit1.MB = 1
	lit1.TextColor = vuetify.COLOR_BLACK
	'
	Dim lit2 As VueElement = liyacont.AddListItemSubTitle("lit2", "Pending Balanace")
	lit2.TextColor = vuetify.COLOR_GREY
	
End Sub


Sub BuildBitCoinPrice(p As VueElement)
	Dim cbp As VueElement = p.Cell(3, 1).AddCard("cbp", "", Null)
	cbp.Height = "180px"
	'
	cbp.AddRows1.AddColumns4.AddColumns8
	cbp.BuildGrid
	'
	Dim cbpList As VueElement = cbp.Cell(1, 1).AddList1("cpblist")
	cbpList.Options.dataSource = "cbpprice"
	cbpList.AddListViewTemplate1(3)
	cbpList.ListItemSubTitle.HeadLine = True
	cbpList.ListItemSubTitle.MB = 1
	cbpList.ListItemSubTitle.TextColor = vuetify.COLOR_BLACK
	
	cbpList.ListViewAddItem1(cbpList.CreateListItem("cbpp1").SetTitle("MashCoin").SetSubTitle("2.5578 MC").SetSubTitle1("$2,500 USD"))
	home.SetData("cbpprice", cbpList.Records)
	'
	Dim splx As VueElement = cbp.Cell(1, 2).AddSparkLine("splx")
	splx.LineWidth = ":width"
	splx.Padding = ":padding"
	splx.Smooth = ":radius"
	splx.VModel = "splxvalue"
	splx.AutoDraw = True
	splx.Color = vuetify.COLOR_RED
	splx.StrokeLineCap = ":linecap"
	splx.Fill = ":fills"
	splx.AutoLineWidth = ":autolinewidth"
	'
	splx.setdata("padding", 8)
	splx.SetData("radius", 10)
	splx.SetData("splxvalue", Array(0, 2, 5, 9, 5, 10, 3, 5, 0, 0, 1, 8, 2, 9, 0))
	splx.SetData("width", 2)
	splx.SetData("linecap", "round")
	splx.SetData("sparktype", "trend")
	splx.SetData("autolinewidth", False)
	splx.SetData("fills", False)
	home.BindVueElement(splx)
	'
	Dim ca As VueElement = cbp.AddCardActions("ca", "", Null)
	ca.AddSpacer
	
	Dim ekse As VueElement = ca.AddButtonWithLeftIcon("ekse", "8.5", "fas fa-sort-down", "green", False, Null, Null)
	ekse.Raised = False
	ekse.MT = "n2"
	ekse.PR = 2
End Sub


Sub BuildActivity(p As VueElement)
	Dim actc As VueElement = p.Cell(2, 2).AddCard("actc", "", Null)
	Dim aba1 As VueElement = actc.AddAppBar("aba1")
	aba1.flat = True
	aba1.color = "rgba(0,0,0,0)"
	'
	'
	Dim aba1t As VueElement = aba1.AddToolbarTitle("aba1t", "Activity", "", Null)
	aba1t.AddClassTitle
	aba1t.PL = 0
	aba1t.ML = 2
	aba1t.TextColor = vuetify.color_black

	
	Dim aba2 As VueElement = actc.AddAppBar("aba2")
	aba2.flat = True
	aba2.color = "rgba(0,0,0,0)"
	'
	Dim fab2 As VueElement = aba2.AddFab("fab2", "fab fa-bitcoin", vuetify.COLOR_DEEPPURPLE, False, Null, Null)
	fab2.Elevation = 0
	fab2.ColorIntensity = vuetify.intensity_lighten4
	fab2.GetIcon.Color = vuetify.COLOR_PURPLE
	'
	Dim txx As VueElement = aba2.AddToolbarTitle("txx", "Send MashCoin", "", Null)
	txx.TextColor = vuetify.COLOR_BLACK
	txx.AddClassTitle
	txx.ML = 2
	'
	aba2.AddSpacer
	'
	Dim txy As VueElement = aba2.AddToolbarTitle("txy", "-0.00257 BTC", "", Null)
	txy.TextColor = vuetify.COLOR_BLACK
	txy.SubTitle1 = True
	txy.ML = 2
	'
	Dim upicon As VueElement = aba2.AddIcon("upicon", "fas fa-long-arrow-alt-up", "green", False, Null)
	upicon.ML = 2 
	
	Dim aba3 As VueElement = actc.AddAppBar("aba3")
	aba3.flat = True
	aba3.color = "rgba(0,0,0,0)"
	'
	Dim fab2 As VueElement = aba3.AddFab("fab3", "fas fa-yen-sign", vuetify.COLOR_GREEN, False, Null, Null)
	fab2.Elevation = 0
	fab2.ColorIntensity = vuetify.intensity_lighten4
	fab2.GetIcon.Color = vuetify.COLOR_GREEN
	'
	Dim txx As VueElement = aba3.AddToolbarTitle("txx3", "Receive MashCoin", "", Null)
	txx.TextColor = vuetify.COLOR_BLACK
	txx.AddClassTitle
	txx.ML = 2
	'
	aba3.AddSpacer
	'
	Dim txy As VueElement = aba3.AddToolbarTitle("txy3", "-0.0133643 MC", "", Null)
	txy.TextColor = vuetify.COLOR_BLACK
	txy.SubTitle1 = True
	txy.ML = 2
	'
	Dim upicon As VueElement = aba3.AddIcon("downicon", "fas fa-long-arrow-alt-down", "red", False, Null)
	upicon.ML = 2
End Sub

Sub BuildImpression(p As VueElement)
	Dim cc1 As VueElement = p.Cell(2, 1).AddCard("cc1", "", Null)
	'
	Dim cc1bar As VueElement = cc1.AddAppBar("cc1bar")
	cc1bar.flat = True
	cc1bar.Color = "rgba(0,0,0,0)"
	'
	Dim ttx As VueElement = cc1bar.AddToolbarTitle("ttx", "Impression", "", Null)
	ttx.PL = 0
	ttx.ML = 2
	ttx.AddClassTitle
	ttx.TextColor = vuetify.COLOR_BLACK
	'
	cc1bar.AddSpacer
	'
	Dim cc1b1 As VueElement = cc1bar.AddButton("cc1b1", "Weekly", vuetify.COLOR_DEEPPURPLE, False, Null)
	cc1b1.MR = 2
	cc1b1.TextColor = vuetify.color_white
	'
	Dim cc1b2 As VueElement = cc1bar.AddButton("cc1b2", "Monthly", vuetify.COLOR_DEEPPURPLE, False, Null)
	cc1b2.ColorIntensity = vuetify.INTENSITY_LIGHTEN4
	cc1b2.TextColor = vuetify.COLOR_DEEPPURPLE
	
	Dim slx As VueElement = cc1.AddSparkLine("slx")
	slx.Fill = ":fill"
	slx.LineWidth = ":width"
	slx.Padding = ":padding"
	slx.Smooth = ":radius"
	slx.VModel = "slxvalue"
	slx.AutoDraw = True
	slx.Color = vuetify.COLOR_DEEPPURPLE
	'
	slx.SetData("fill", True)
	slx.setdata("padding", 8)
	slx.SetData("radius", 10)
	slx.SetData("slxvalue", Array(0, 2, 5, 9, 5, 10, 3, 5, 0, 0, 1, 8, 2, 9, 0))
	slx.SetData("width", 2)
	slx.SetData("linecap", "round")
	slx.SetData("sparktype", "trend")
	slx.SetData("autolinewidth", False)
	slx.SetData("fills", False)
	home.BindVueElement(slx)
End Sub


Sub BuildCurrency1(p As VueElement)
	Dim c1card As VueElement = p.Cell(1, 1).AddCard("c1card", vuetify.COLOR_CYAN, Null)
	c1card.MB = 5
	c1card.Flat = True
	c1card.Bind("elevation", "c1cardelevation")
	c1card.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1card.AddRows1.AddColumns8.AddColumns4
	c1card.BuildGrid
	'
	Dim c1list As VueElement = c1card.Cell(1, 1).AddList1("c1list")
	c1list.Color = vuetify.COLOR_CYAN
	c1list.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1list.Options.dataSource = "c1listdata"
	c1list.AddListViewTemplate1(3)
	home.BindVueElement(c1list)
	c1list.ListItemLeftButton.Fab = True
	c1list.ListItemLeftButton.XLarge = True
	c1list.ListItemLeftButton.Color = vuetify.COLOR_CYAN
	c1list.ListItemLeftButton.ColorIntensity = vuetify.INTENSITY_LIGHTEN4
	c1list.ListItemLeftButton.Elevation = "0"
	c1list.ListItemLeftIcon.Color = vuetify.color_white
	c1list.ListItemTitle.headline = True
	c1list.ListItemTitle.MB = 1
	c1list.ListItemTitle.TextColor = vuetify.COLOR_WHITE
	c1list.ListItemSubTitle.TextColor = vuetify.COLOR_WHITE
	'
	c1list.ListViewAddItem1(c1list.CreateListItem("c1i1").SetLeftIcon("fab fa-bitcoin").SetTitle("$8,520.50").SetSubTitle("Market Cap $151.458"))
	
	home.SetData("c1listdata", c1list.Records)
	'
	Dim avatarx As VueElement = c1card.Cell(1, 2).AddImage("avatarx", "./assets/wallet.png", "", "", "", "", Null)
	c1card.Cell(1, 2).HiddenSMAndDown
	avatarx.MaxHeight = "100"
	avatarx.MaxWidth = "100"
	home.SetData("c1cardelevation", 0)
	home.SetMethod(Me, "c1card_mouseover", Null)
	home.SetMethod(Me, "c1card_mouseout", Null)
End Sub

Sub c1card_mouseover(e As BANanoEvent)
	home.SetData("c1cardelevation", 24)
End Sub

Sub c1card_mouseout(e As BANanoEvent)
	home.SetData("c1cardelevation", 2)
End Sub

Sub c2card_mouseover(e As BANanoEvent)
	home.SetData("c2cardelevation", 24)
End Sub

Sub c2card_mouseout(e As BANanoEvent)
	home.SetData("c2cardelevation", 2)
End Sub

Sub c3card_mouseover(e As BANanoEvent)
	home.SetData("c3cardelevation", 24)
End Sub

Sub c3card_mouseout(e As BANanoEvent)
	home.SetData("c3cardelevation", 2)
End Sub

Sub BuildCurrency2(p As VueElement)
	Dim c1card As VueElement = p.Cell(1, 2).AddCard("c2card", vuetify.COLOR_PINK, Null)
	c1card.MB = 5
	c1card.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1card.Bind("elevation", "c2cardelevation")
	c1card.AddRows1.AddColumns8.AddColumns4
	c1card.BuildGrid
	'
	Dim c1list As VueElement = c1card.Cell(1, 1).AddList1("c2list")
	c1list.Color = vuetify.COLOR_PINK
	c1list.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1list.Options.dataSource = "c2listdata"
	c1list.AddListViewTemplate1(3)
	home.BindVueElement(c1list)
	c1list.ListItemLeftButton.Fab = True
	c1list.ListItemLeftButton.XLarge = True
	c1list.ListItemLeftButton.Color = vuetify.COLOR_PINK
	c1list.ListItemLeftButton.ColorIntensity = vuetify.INTENSITY_LIGHTEN4
	c1list.ListItemLeftButton.Elevation = "0"
	c1list.ListItemLeftIcon.Color = vuetify.color_white
	c1list.ListItemTitle.headline = True
	c1list.ListItemTitle.MB = 1
	c1list.ListItemTitle.TextColor = vuetify.COLOR_WHITE
	c1list.ListItemSubTitle.TextColor = vuetify.COLOR_WHITE
	'
	c1list.ListViewAddItem1(c1list.CreateListItem("c2i1").SetLeftIcon("fas fa-rupee-sign").SetTitle("$7,220.50").SetSubTitle("Market Cap $15.49"))
	
	home.SetData("c2listdata", c1list.Records)
	'
	Dim avatarx As VueElement = c1card.Cell(1, 2).AddImage("avatarx2", "./assets/wallet.png", "", "", "", "", Null)
	c1card.Cell(1, 2).HiddenSMAndDown
	avatarx.MaxHeight = "100"
	avatarx.MaxWidth = "100"
	home.SetData("c2cardelevation", 0)
	home.SetMethod(Me, "c2card_mouseover", Null)
	home.SetMethod(Me, "c2card_mouseout", Null)
End Sub

Sub BuildCurrency3(p As VueElement)
	Dim c1card As VueElement = p.Cell(1, 3).AddCard("c3card", vuetify.COLOR_ORANGE, Null)
	c1card.MB = 5
	c1card.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1card.Bind("elevation", "c3cardelevation")
	c1card.AddRows1.AddColumns8.AddColumns4
	c1card.BuildGrid
	'
	Dim c1list As VueElement = c1card.Cell(1, 1).AddList1("c3list")
	c1list.Color = vuetify.COLOR_ORANGE
	c1list.ColorIntensity = vuetify.INTENSITY_DARKEN1
	c1list.Options.dataSource = "c3listdata"
	c1list.AddListViewTemplate1(3)
	home.BindVueElement(c1list)
	c1list.ListItemLeftButton.Fab = True
	c1list.ListItemLeftButton.XLarge = True
	c1list.ListItemLeftButton.Color = vuetify.COLOR_ORANGE
	c1list.ListItemLeftButton.ColorIntensity = vuetify.INTENSITY_LIGHTEN4
	c1list.ListItemLeftButton.Elevation = "0"
	c1list.ListItemLeftIcon.Color = vuetify.color_white
	c1list.ListItemTitle.headline = True
	c1list.ListItemTitle.MB = 1
	c1list.ListItemTitle.TextColor = vuetify.COLOR_WHITE
	c1list.ListItemSubTitle.TextColor = vuetify.COLOR_WHITE
	'
	c1list.ListViewAddItem1(c1list.CreateListItem("c3i1").SetLeftIcon("fas fa-pound-sign").SetTitle("$350.50").SetSubTitle("Market Cap $185.49"))
	
	home.SetData("c3listdata", c1list.Records)
	'
	Dim avatarx As VueElement = c1card.Cell(1, 2).AddImage("avatarx3", "./assets/wallet.png", "", "", "", "", Null)
	c1card.Cell(1, 2).HiddenSMAndDown
	avatarx.MaxHeight = "100"
	avatarx.MaxWidth = "100"
	home.SetData("c3cardelevation", 0)
	home.SetMethod(Me, "c3card_mouseover", Null)
	home.SetMethod(Me, "c3card_mouseout", Null)
End Sub

Sub BuildToolBar
	Dim tblBar As VueElement = homeCont.AddToolbar("tblbar", "", Null)
	tblBar.Flat = True
	tblBar.mt = 5
	'
	Dim title As VueElement = tblBar.AddToolbarTitle("title", "", "", Null)
	Dim span As VueElement = title.AddSpan("spanx", "Overview Dashboard", "", "")
	span.CaptionClass = True
	'Dim span1 As VueElement = title.AddSpan("spanx1", "", "", "")
	'span1.VHtml = "<br>Trending View"
	'
	Dim ab As VueElement = tblBar.AddAppBar("ab")
	ab.Flat = True
	ab.Color = "rgba(0,0,0,0)"
	ab.ML = 16
	'
	Dim tabs As VueElement = ab.AddTabs("tabsx")
	tabs.VModel = "tab"
	tabs.Color = vuetify.COLOR_PURPLE
	tabs.SliderSize = "3"
	home.BindVueElement(tabs)
	
	Dim tabitem As VueElement = tabs.AddTabButtonIcon("xcoin", "{{ item.icon }}")
	tabitem.VFor = "item in mytabs"
	tabitem.Bind("key", "item.id")
	'
	Dim btn As VueElement = tabitem.GetButton
	btn.Fab = True
	btn.Bind("color", "item.color")
	btn.ColorIntensity = vuetify.INTENSITY_LIGHTEN4
	btn.Elevation = 0
	tabitem.GetIcon.Bind("color", "item.color")
	'
	Dim mytabs As List = home.NewList
	mytabs.Add(CreateMap("id":1, "icon":"fab fa-bitcoin", "color":"purple"))
	mytabs.Add(CreateMap("id":2, "icon":"fas fa-rupee-sign", "color":"red"))
	mytabs.Add(CreateMap("id":3, "icon":"fas fa-yen-sign", "color":"blue"))
	mytabs.Add(CreateMap("id":4, "icon":"fas fa-chevron-right", "color":"grey"))
	
	home.SetData("mytabs", mytabs)
		
	'	
	tblBar.AddSpacer
	tblBar.AddButtonWithIcon("x", "far fa-bell", "", Null, Null)
	Dim xa As VueElement = tblBar.AddAvatarWithBadge("xa", "./assets/bvad31.png", "40", "", "green", Null, Null)
	xa.Bordered = True
	xa.Bottom = True
	xa.Dot = True
	xa.OffsetX = "10"
	xa.OffsetY = "10"
	xa.Overlap = True
	xa.GetImage.BorderColor = vuetify.color_black
	xa.GetImage.BorderWidth = "1px"
	xa.GetImage.BorderStyle = vuetify.BORDER_SOLID
	
End Sub