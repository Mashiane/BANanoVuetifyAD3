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

#if css
.borderleft {
    border-radius: 50px 0px 50px 0px !important;
  }

  .borderright {
    border-radius: 0px 50px 0px 50px !important;
  }

  .border {
    border: 2px solid white !important;
  }
#End If

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
	homeCont.AddRows1.AddColumns3.AddColumns6.AddColumns3
	homeCont.BuildGrid
	'
	BuildCard1
	BuildCard2
	BuildSearch
	BuildPlantView
	Build2Plants
	BuildRightPart
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildRightPart
	Dim cardr As VueElement = homeCont.Cell(1, 3).AddCard("cardr", "#4FC694", Null)
	cardr.MB = 1
	cardr.PA = 1
	cardr.AddClass("borderright")
	'
	Dim rtbl As VueElement = cardr.AddToolbar("rtbl", "#4FC694", Null)
	rtbl.Dark = True
	rtbl.Flat = True
	'
	Dim ravatar As VueElement = rtbl.AddAvatar("ravatar", "./assets/bvad31.png", "45", Null)
	ravatar.ML = 14
	ravatar.MR = 2
	ravatar.SetBorder1("2px", vuetify.BORDER_SOLID, vuetify.COLOR_BLACK)
	'
	Dim tblr As VueElement = rtbl.AddToolbarTitle1("tblr", "Mashy", vuetify.color_white)
	tblr.PL = 0
	tblr.MR = 3
	tblr.AddClassTitle
	'
	Dim chev As VueElement = rtbl.AddIcon1("chev", "fas fa-chevron-down", "", False)
	chev.Small = True	 
	'
	BuildOnlineUsers
	 
End Sub

Sub BuildOnlineUsers
	Dim online As VueElement = homeCont.Cell(1, 3).AddCard("online", "", Null)
	online.RoundedXL
	'
	Dim onlinetbl As VueElement = online.AddToolbar1("onlinetbl", "")
	onlinetbl.Flat = True
	'
	Dim onlinet As VueElement = onlinetbl.AddToolbarTitle1("onlinet", "Online", "") 
	onlinetbl.AddSpacer
	'
	Dim users As VueElement = onlinetbl.AddButtonWithBadgeWithIcon("onlineusers", "fas fa-user", "", "", "", "orange")
	users.Raised = False
	users.MR = 2
	users.GetBadge.Bordered = True
	users.GetBadge.bottom = True
	users.GetBadge.Dot = True
	users.GetBadge.OffsetX = "10"
	users.GetBadge.OffsetY = "10"
	users.GetBadge.Overlap = True
	'
	users.GetIcon.Left = True
	users.GetIcon.Color = vuetify.COLOR_BLACK
	users.AddSpan("usertot", "119", "", "")
	'
	Dim usrList As VueElement = online.AddList1("usrlist")
	usrList.Options.dataSource = "users"
	usrList.Options.righttext = "action"
	usrList.Options.avatar = "avatar"
	usrList.Options.title = "title"
	usrList.Options.subtitle = "subtitle"
	usrList.Options.hasdivider = True
	usrList.Options.insetdivider = True
	usrList.AddListItemGroupTemplate(3)
	usrList.ListItemAvatar.Rounded = True
	usrList.MT = -4
	home.BindVueElement(usrList)
	
	usrList.clearitems
	usrList.ListViewAddItem2(CreateMap("avatar": "./assets/img1.png", _
	"action": "15 Min", "headline": "Brunch this weekend?", _
	"subtitle": "I'll be in your neighborhood doing errands this weekend. Do you want to hang out?", "title": "<strong>Ali Connors (13)</strong>"))
	'
	usrList.ListViewAddItem2(CreateMap("avatar": "./assets/img2.png", _
	"action": "2 hr", _
	"headline": "Summer BBQ", _
	"subtitle": "Wish I could come, but I'm out of town this weekend.", _
	"title": "<strong>Me, Scrott, Jennifer (19)</strong>"))
	'
	usrList.ListViewAddItem2(CreateMap("avatar": "./assets/img3.png", _
	"action": "6 hr", _
	"headline": "Oui oui", _
	"subtitle": "Do you have Paris recommendations? Have you ever been?", _
	"title": "<strong>Sandra Adams (7)</strong>"))
	'
	usrList.ListViewAddItem2(CreateMap("avatar": "./assets/img4.png", _
	"action": "12 hr", _
	"headline": "Birthday gift", _
	"subtitle": "Have any ideas about what we should get Heidi for her birthday?", _
	"title": "<strong>Trevor Hansen (12)</strong>"))
	'
	usrList.ListViewAddItem2(CreateMap("avatar": "./assets/img5.png", _
	"action": "18hr", _
	"headline": "Recipe to try", _
	"subtitle": "We should eat this: Grate, Squash, Corn, And tomatillo Tacos.", _
	"title": "<strong>Britta Holt (8)</strong>"))
	
	home.SetData("users", usrList.Records)	
'
	Dim friends As VueElement = online.AddToolbar1("friends", "")
	friends.mt = -5
	friends.Flat = True
	'
	Dim ftool As VueElement = friends.AddToolbarTitle1("ftool", "Recommended Friends", "")
	'
	Dim friendsl As VueElement = online.AddList1("friendsl")
	friendsl.Options.dataSource = "recommendations"
	friendsl.Options.hasdivider = True
	friendsl.Options.insetdivider = True
	friendsl.AddListViewTemplate1(0)
	friendsl.ListItemAvatar.Rounded = True
	friendsl.ListItemRightIcon.Color = vuetify.color_orange
	friendsl.ListItemRightButton.Outlined = True
	home.BindVueElement(friendsl)
	
	friendsl.ClearItems
	friendsl.ListViewAddItem1(friendsl.CreateListItem("kel").SetTitle("Kel Varnesan").SetRightIcon("fas fa-plus").SetAvatar("./assets/img1.png"))
	friendsl.ListViewAddItem1(friendsl.CreateListItem("russel").SetTitle("Russel D").SetRightIcon("fas fa-plus").SetAvatar("./assets/img2.png"))
	home.SetData("recommendations", friendsl.Records)
End Sub


Sub BuildCard1
	Dim card1 As VueElement = homeCont.Cell(1, 1).AddCard("card1", "#4FC694", Null)
	card1.PA = 1
	card1.MB = 2
	card1.AddClass("borderleft")
	'
	Dim c1bar As VueElement = card1.AddToolbar("c1bar", "#4FC694", Null)
	c1bar.Dark = True
	c1bar.Flat = True
	'
	Dim c1tabs As VueElement = c1bar.AddTabs("c1tabs")
	c1tabs.AlignWithTitle = True
	'
	Dim c1ts As VueElement = c1tabs.AddTabsSlider("c1ts", "white", Null)
	'
	Dim c1tab1 As VueElement = c1tabs.AddTabButtonIcon("c1tab1", "fas fa-home")
	c1tab1.GetButton.Dark = True
	c1tab1.GetButton.ButtonIcon = True
	'
	Dim c1tab2 As VueElement = c1tabs.AddTabButtonIconWithBadge("c1tab2", "shopping", "fas fa-shopping-cart", "2")
	home.BindVueElement(c1tab2)
	c1tab2.GetButton.Dark = True
	c1tab2.GetButton.ButtonIcon = True
	c1tab2.GetBadge.Color = vuetify.color_orange
End Sub

Sub BuildCard2
	Dim card2 As VueElement = homeCont.Cell(1, 1).AddCard("card2", "", Null)
	card2.RoundedXL
	'
	Dim c2list As VueElement = card2.AddList1("c2list")
	c2list.RoundedXL
	c2list.Options.dataSource = "items"
	c2list.Options.avatar = "avatar"
	c2list.Options.key = "id"
	c2list.Options.title = "title"
	c2list.Options.subtitle = "subtitle"	
	c2list.AddListViewTemplate1(3)
	c2list.ListItemAvatar.Color = "#EFF4F1"
	c2list.ListItemAvatar.Size = "70"
	c2list.ListItemavatar.Rounded = True
	'add the price portion to the content
	Dim price As VueElement = c2list.ListItemContent.AddListItemTitle("c2listprice", "")
	price.VHtml = "item.money"
	home.BindVueElement(c2list)
	'
	c2list.ClearItems
	c2list.ListViewAddHeader("Top Selling")
	c2list.ListViewAddItem2(CreateMap("id":"plant3", "avatar": "./assets/3.png", _
	"title": "<strong>Cactus</strong>", "subtitle": "650 Plants", "money": "<strong>$640</strong>"))
	c2list.ListViewAddItem2(CreateMap("id":"plant2", "avatar": "./assets/p2.png", _
	"title": "<strong>Kalanchoe</strong>", "subtitle": "760 Plants", "money": "<strong>$235</strong>"))
	c2list.ListViewAddItem2(CreateMap("id":"plant4", "avatar": "./assets/4.png", _
	"title": "<strong>Madagascar Jewel</strong>", "subtitle": "712 Plants", "money": "<strong>$638</strong>"))
	c2list.ListViewAddItem2(CreateMap("id":"plant5", "avatar": "./assets/5.png", _
	"title": "<strong>Succulent</strong>", "subtitle": "539 Plants", "money": "<strong>$190</strong>"))
	c2list.ListViewAddItem2(CreateMap("id":"plant6", "avatar": "./assets/6.png", _
	"title": "<strong>Cactus mini</strong>", "subtitle": "554 Plants", "money": "<strong>$264</strong>"))
	c2list.ListViewAddItem2(CreateMap("id":"plant7", "avatar": "./assets/7.png", _
	"title": "<strong>Maivestus</strong>", "subtitle": "690 Plants", "money": "<strong>$360</strong>"))

	home.SetData("items", c2list.Records)

End Sub

Sub AddPlant(p As VueElement, pID As String, pimg As String, pname As String, pprice As String)
	Dim plant1 As VueElement = p.AddCard1(pID)
	plant1.roundedxl
	plant1.MT = 16
	'
	plant1.AddRows1.AddColumns4p8
	plant1.BuildGrid
	
	plant1.Cell(1, 1).AlignCenter = True
	plant1.Cell(1, 2).PA = 10
	
	Dim plant1avatar As VueElement = plant1.Cell(1, 1).AddAvatar2($"${pID}avatar"$, $"./assets/${pimg}"$,  "200") 
	plant1avatar.Tile = True
	plant1avatar.MT = -16
	'
	plant1.Cell(1, 2).AddH3($"${pID}name"$, pname,vuetify.color_black, "")
	plant1.Cell(1, 2).AddH3($"${pID}price"$, pprice,vuetify.color_black, "")
End Sub

Sub Build2Plants
	Dim contP As VueElement = homeCont.Cell(1, 2).AddDiv("contp")
	contP.AddRows1.AddColumns2x6
	contP.BuildGrid
	'
	AddPlant(contP.Cell(1, 1), "bonsi", "p2.png", "Bonsi Tree", "$386")
	AddPlant(contP.Cell(1, 2), "cactus", "66.png", "Weired Cactus", "$128")
End Sub

Sub BuildSearch
	'search bar
	Dim txtSearch As VueElement = homeCont.Cell(1, 2).AddTextField1("txtsearch", "search", "Search", Null)
	txtSearch.PrependInnerIcon = "fas fa-search"
	txtSearch.Filled = True
	txtSearch.Rounded = True
	txtSearch.Color = "#4FC694"
	home.BindVueElement(txtSearch)	
End Sub


Sub BuildPlantView
	'plant view
	Dim plantview As VueElement = homeCont.Cell(1, 2).AddCard("plantview", "", Null)
	plantview.RoundedXL
	plantview.MT = 2
	'
	plantview.AddRows1.AddColumns4.AddColumns8
	plantview.BuildGrid
	'card column 1
	plantview.Cell(1, 1).AlignCenter = True
	'
	Dim pavatar As VueElement = plantview.Cell(1, 1).AddAvatar("pavatar", "./assets/5.png", "300", Null)
	pavatar.Tile = True
	'
	Dim qtyless As VueElement = plantview.Cell(1, 1).AddFab1("qtyless", "fas fa-minus", "red")
	qtyless.ML = 14
	'
	Dim qty As VueElement = plantview.Cell(1, 1).AddSpan("qty", "" , "", "")
	qty.Append("<strong> 1 </strong>")
	'
	plantview.Cell(1, 1).AddFab1("qtyadd", "fas fa-plus", "green")
	
	'card column 2
	plantview.Cell(1, 2).px = 10
	'love plant
	Dim plantTB As VueElement = plantview.Cell(1, 2).AddAppBar("planttb")
	plantTB.Flat = True
	plantTB.Color = plantTB.RGBA(0,0,0,0)
	plantTB.AddSpacer
	'
	plantTB.AddButtonWithIcon1("heartplant", "fas fa-heart", vuetify.COLOR_GREY, vuetify.INTENSITY_LIGHTEN1)
	plantview.Cell(1, 2).AddH3("plantname", "Lidah Buaya", vuetify.COLOR_GREY, "")
	plantview.Cell(1, 2).AddLoremIpsum("plandesc", vuetify.COLOR_GREY, "")
	plantview.Cell(1, 2).AddH5("plantoverview", "Overview", vuetify.color_grey, "")
	
	Dim attrcont As VueElement = plantview.Cell(1, 2).AddDiv("attrcont")
	attrcont.AddRows1.AddColumns2x6
	attrcont.AddRows1.AddColumns12
	attrcont.BuildGrid
	'LEFT PART
	AddPlantAttribute(attrcont.Cell(1, 1), "attr1", "far fa-calendar-alt", "30 Days")
	AddPlantAttribute(attrcont.Cell(1, 1), "attr2", "fas fa-compress-alt", "4.7 Diameter")
	'
	AddPlantAttribute(attrcont.Cell(1, 2), "attr3", "fas fa-temperature-low", "70% Humidity")
	AddPlantAttribute(attrcont.Cell(1, 2), "attr4", "fas fa-tint", "4.2° Height")
	'
	Dim add2cart As VueElement = attrcont.Cell(2, 1).AddButtonWithLeftIcon1("add2cart", "Add to cart", "fas fa-plus", "warning", "")
	add2cart.Rounded = True
	'
	Dim priceit As VueElement = attrcont.Cell(2, 1).AddStrong("priceit", "$234", "", "")
	priceit.ML = 2
End Sub

Sub AddPlantAttribute(p As VueElement, aID As String, icon As String, desc As String)
	Dim attr As VueElement = p.AddAppBar(aID)
	attr.Flat = True
	attr.Color = attr.RGBA(0,0,0,0)
	'
	Dim planttime As VueElement = attr.AddAvatarWithIcon(aID & "v1", icon, "#FDD3E9", "30", vuetify.COLOR_GREY)
	planttime.MR = 3
	planttime.GetIcon.Small = True
	planttime.GetIcon.ColorIntensity = vuetify.INTENSITY_DARKEN1
	'
	attr.AddSpan(aID & "v2", desc, "", "")
End Sub