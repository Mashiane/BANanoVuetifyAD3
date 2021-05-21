B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "justanimate"
	Private banano As BANano
	Private cont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	
	'initialize the component
	home.Initialize(Me, name)
	home.vuetify = vuetify
	path = home.path
	'
	cont = home.Page.AddContainer("contanime", False)
	cont.AddRows(15).AddColumns12
	cont.BuildGrid
	'
	Dim sht0 As VueElement = cont.Cell(1, 1).AddSheet1("sht0", "50", "50", vuetify.COLOR_WARNING)
	sht0.CursorPointer
	home.BindVueElement(sht0)
	
'	Dim btnAnime As VueElement = cont.Cell(1,1).AddVBtn("btnAnime")
'	btnAnime.Caption = "Animate"
'	btnAnime.Large = True
'	btnAnime.Color = vuetify.color_primary
'	home.BindVueElement(btnAnime)
'	'
'	Dim btnTest As VueElement = cont.Cell(1, 2).AddVIcon("micon")
'	btnTest.Caption = "mdi-dialpad"
'	btnTest.Color = vuetify.color_primary
'	btnTest.large = True
'	
'	'
	Dim sht1 As VueElement = cont.Cell(2, 1).AddSheet1("sht1", "50", "50", vuetify.COLOR_BLUE)
	sht1.CursorPointer
	home.BindVueElement(sht1)
	'
	Dim sht2 As VueElement = cont.Cell(3, 1).AddSheet1("sht2", "50", "50", vuetify.COLOR_BLUE)
	sht2.CursorPointer
	home.BindVueElement(sht2)
	'
	Dim sht3 As VueElement = cont.Cell(4, 1).AddSheet1("sht3", "50", "50", vuetify.COLOR_BLUE)
	sht3.CursorPointer
	home.BindVueElement(sht3)
	'
	Dim sht4 As VueElement = cont.Cell(5, 1).AddSheet1("sht4", "50", "50", vuetify.COLOR_BLUE)
	sht4.CursorPointer
	home.BindVueElement(sht4)
	'
	Dim sht5 As VueElement = cont.Cell(6, 1).AddSheet1("sht5", "50", "50", vuetify.COLOR_BLUE)
	sht5.CursorPointer
	home.BindVueElement(sht5)
	'
	Dim sht6 As VueElement = cont.Cell(7, 1).AddSheet1("sht6", "50", "50", vuetify.COLOR_BLUE)
	sht6.CursorPointer
	home.BindVueElement(sht6)
	'
	Dim sht7 As VueElement = cont.Cell(8, 1).AddSheet1("sht7", "50", "50", vuetify.COLOR_BLUE)
	sht7.CursorPointer
	home.BindVueElement(sht7)
	'
	Dim sht8 As VueElement = cont.Cell(9, 1).AddSheet1("sht8", "50", "50", vuetify.COLOR_BLUE)
	sht8.CursorPointer
	home.BindVueElement(sht8)
	'
	Dim sht9 As VueElement = cont.Cell(10, 1).AddSheet1("sht9", "50", "50", vuetify.COLOR_BLUE)
	sht9.CursorPointer
	home.BindVueElement(sht9)
	'
	Dim sht10 As VueElement = cont.Cell(11, 1).AddSheet1("sht10", "50", "50", vuetify.COLOR_RED)
	sht10.CursorPointer
	home.BindVueElement(sht10)
	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub


Sub sht10_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht10")
	a1.keyframes(a1.animation.translateY(-40))
	a1.keyframes(a1.animation.translateX(250))
	a1.keyframes(a1.animation.translateY(40))
	a1.keyframes(a1.animation.translateX(0))
	a1.keyframes(a1.animation.translateY(0))
  	a1.anime.duration(4000)
  	a1.anime.easing("easeOutElastic(1, .8)")
  	a1.anime.Loopit(True)
	a1.play
End Sub

Sub sht9_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht9")
	a1.anime.translateX1(100, 300)
	a1.anime.delay(500)
  	a1.anime.direction("alternate")
  	a1.anime.Loopit(True)
	a1.play
End Sub

Sub sht8_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht8")
	a1.anime.width("100%")
	a1.anime.easing("easeInOutQuad")
	a1.anime.direction("alternate")
	a1.anime.loopIT(True)
	a1.play
End Sub

Sub sht7_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht7")
	a1.anime.translateX(270)
	a1.anime.direction("alternate")
	a1.anime.loopIT(True)
	a1.anime.endDelay(500)
	a1.play
End Sub

Sub sht6_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht6")
	a1.anime.translateX(250)
	a1.anime.endDelay(1000)
  	a1.anime.direction("alternate")
	a1.play
End Sub

Sub sht5_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht5")
	a1.anime.translateX(250)
	a1.anime.delay(1000)
	a1.play
End Sub

Sub sht4_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht4")
	a1.anime.translateX(250)
	a1.anime.duration(3000)
	a1.play
End Sub

Sub sht3_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht3")
	a1.anime.translateX(250)
	a1.anime.scale(2)
  	a1.anime.rotate("1turn")
	a1.play
End Sub

Sub sht2_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht2")
	a1.anime.translateX(250)
  	a1.anime.backgroundColor("#FFF")
  	a1.anime.borderRadius("0%", "50%")
  	a1.anime.easing("easeInOutQuad")
	a1.play
	
End Sub

Sub sht0_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, "#sht0")
	a1.anime.translateX(250)
	a1.play
End Sub

Sub sht1_click(e As BANanoEvent)
	Dim doit As BANanoAnimeJS
	doit.Initialize(Me, "#sht1")
	doit.anime.delay(250)
	doit.anime.translateX(doit.Animation.value(250).duration(800).pop)
	doit.anime.rotate(doit.Animation.value(360).duration(1800).easing("easeInOutSine").pop)
	doit.anime.scale(doit.Animation.value(2).duration(1600).delay(800).easing("easeInOutQuart").pop)
	doit.play
End Sub

