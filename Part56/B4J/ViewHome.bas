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
	Private homediv As VueElement
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
	homediv = home.Page.AddContainer("homediv", True)
	
	Dim h1 As VueElement = homediv.AddH1("h1x", "Dashboard", vuetify.COLOR_GREY, "")
	h1.SubHeading = True
	
	homeCont = homediv.AddContainer("homecont", True)
	homeCont.AddRows1.AddColumns(4, 12, 6, 6, 3, 3)
	homeCont.AddRows1.AddColumns12
	homeCont.BuildGrid
	'
	BuildCard
	BuildTeam
	'
	Dim team As List = home.NewList
	team.Add(CreateMap("name": "Member 1", "role": "Web Developer", "avatar": "./assets/img1.png"))
	team.Add(CreateMap("name": "Member 2", "role": "Project Admin", "avatar": "./assets/img2.png"))
	team.Add(CreateMap("name": "Member 3", "role": "Junior Developer", "avatar": "./assets/img3.png"))
	team.Add(CreateMap("name": "Member 4", "role": "Senior Developer", "avatar": "./assets/img4.png"))
	team.Add(CreateMap("name": "Member 5", "role": "CEO", "avatar": "./assets/img5.png"))
	team.Add(CreateMap("name": "Member 6", "role": "HR Manager", "avatar": "./assets/img6.png"))
	home.SetData("team", team)	
	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

Sub BuildTeam
	Dim eachcol As VueElement = homeCont.Cell(2, 0).AddCol(6, 12, 6, 4, 3, 3)
	eachcol.VFor = "person in team"
	eachcol.Bind("key", "person.name")
	'
	Dim xcard As VueElement = eachcol.AddCard("xcard", "", Null)
	xcard.MA = 3
	xcard.AlignCenter = True
	'
	Dim vresp As VueElement = xcard.AddResponsive("xcardresp")
	vresp.PT = 4
	'
	Dim xavatr As VueElement = vresp.AddAvatar("xavatr", "", "100", Null)
	xavatr.color = vuetify.color_red
	xavatr.GetImage.Src = ":person.avatar"
	xavatr.ColorIntensity = vuetify.INTENSITY_LIGHTEN2
	'
	Dim xtext As VueElement = xcard.AddCardText("xtext", "", Null)
	Dim dname As VueElement = xtext.AddDiv("dname")
	dname.SubHeading = True
	dname.Caption = "{{ person.name }}"
	'
	Dim drole As VueElement = xtext.AddDiv("drole")
	drole.TextColor = vuetify.COLOR_GREY
	drole.Caption = "{{ person.role }}"
	
	Dim xact As VueElement = xcard.AddCardActions("xact", "", Null)
	
	Dim btnMsg As VueElement = xact.AddButton1("btnmsg", "Chat", Null)
	btnMsg.Outlined = True
	btnMsg.Color = vuetify.color_orange
End Sub

Sub BuildCard
	Dim card1 As VueElement = homeCont.Cell(1, 1).AddMaterialCard("card1", "green", "mdi-store", "Article", "$523,614.00")
	Dim btnlike As VueElement = card1.GetCardActions.AddButtonWithIcon("btnlikec1", "mdi-hand-heart", vuetify.COLOR_RED, Null, Null)
	
	card1.GetCardActions.AddSpacer
	'
	Dim btnChip As VueElement = card1.GetCardActions.AddChip("chip1")
	btnChip.Caption = "Mashy"
	btnChip.Color = vuetify.color_purple
	btnChip.TextColor = vuetify.color_white
	btnChip.Small = True
	
	Dim card2 As VueElement = homeCont.Cell(1, 2).AddMaterialCard("card2", "#F44336", "mdi-youtube-subscription", "B4X", "+700")
	Dim btnlike2 As VueElement = card2.GetCardActions.AddButtonWithIcon("btnlikec2", "mdi-hand-heart", vuetify.COLOR_RED, Null, Null)

	Dim card3 As VueElement = homeCont.Cell(1, 3).AddMaterialCard("card3", "#03A9F4", "mdi-shopping", "Shopping", "$34,245.00")
	Dim btnlike2 As VueElement = card3.GetCardActions.AddButtonWithIcon("btnlikec3", "mdi-hand-heart", vuetify.COLOR_RED, Null, Null)

	Dim card4 As VueElement = homeCont.Cell(1, 4).AddMaterialCard("card4", "#FFC107", "mdi-share-variant-outline", "Shared Folder", "1,730")
	Dim btnlike4 As VueElement = card4.GetCardActions.AddButtonWithIcon("btnlikec4", "mdi-hand-heart", vuetify.COLOR_RED, Null, Null)

End Sub
