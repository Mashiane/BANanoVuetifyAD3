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
	Public name As String = "animejstimelines"
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
	cont = home.Page.AddContainer("conttimelimeanime", False)
	cont.AddRows(15).AddColumns12
	cont.BuildGrid
	'
	cont.Cell(1, 1).AddParagraph("block1a", "Click the first block for the timeline...", "", "")
	Dim tsht0 As VueElement = cont.Cell(1, 1).AddSheet1("tsht0", "50", "50", vuetify.COLOR_WARNING)
	tsht0.CursorPointer
	home.BindVueElement(tsht0)
	
	Dim tsht1 As VueElement = cont.Cell(2, 1).AddSheet1("tsht1", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht1)
	'
	Dim tsht2 As VueElement = cont.Cell(3, 1).AddSheet1("tsht2", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht2)
	'
	cont.Cell(4, 1).AddParagraph("block1b", "Click the next first block for the timeline (Offsets)...", "", "")
	Dim tsht3 As VueElement = cont.Cell(4, 1).AddSheet1("tsht3", "50", "50", vuetify.COLOR_WARNING)
	tsht3.CursorPointer
	home.BindVueElement(tsht3)
	
	Dim tsht4 As VueElement = cont.Cell(5, 1).AddSheet1("tsht4", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht4)
	'
	Dim tsht5 As VueElement = cont.Cell(6, 1).AddSheet1("tsht5", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht5)
	'
	cont.Cell(7, 1).AddParagraph("block1c", "Click the next first block for the timeline (Inheritence)...", "", "")
	Dim tsht6 As VueElement = cont.Cell(7, 1).AddSheet1("tsht6", "50", "50", vuetify.COLOR_WARNING)
	tsht6.CursorPointer
	home.BindVueElement(tsht6)
	
	Dim tsht7 As VueElement = cont.Cell(8, 1).AddSheet1("tsht7", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht7)
	'
	Dim tsht8 As VueElement = cont.Cell(9, 1).AddSheet1("tsht8", "50", "50", vuetify.COLOR_BLUE)
	home.BindVueElement(tsht8)
	
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

'timeline 1
Sub tsht0_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJSTimeLine
	a1.Initialize(Me)
	a1.timeline.easing("easeOutExpo")
  	a1.timeline.duration(750)
	'
	a1.add(a1.animation.target("#tsht0").translateX(250))
	a1.add(a1.animation.target("#tsht1").translateX(250))
	a1.add(a1.animation.target("#tsht2").translateX(250))
	'
	a1.play
End Sub

Sub tsht3_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJSTimeLine
	a1.Initialize(Me)
	a1.timeline.easing("easeOutExpo")
  	a1.timeline.duration(750)
	'
	a1.add(a1.animation.target("#tsht3").translateX(250))
	a1.addOffset(a1.animation.target("#tsht4").translateX(250), "-=600")
	a1.addOffset(a1.animation.target("#tsht5").translateX(250), 400)
	'
	a1.play
	
End Sub

'inheritence
Sub tsht6_click(e As BANanoEvent)
	Dim a1 As BANanoAnimeJSTimeLine
	a1.Initialize(Me)
	a1.timeline.target("#tsht6")
	a1.timeline.target("#tsht7")
	a1.timeline.target("#tsht8")
  	a1.timeline.duration(500)
	a1.timeline.easing("easeOutExpo")
	a1.timeline.direction("alternate")
	a1.timeline.loopit(True)
	a1.timeline.delayCallBack(Me, "delayCallBack1")
	'
	a1.add(a1.animation.translateX(250).easing("spring"))
	a1.add(a1.animation.opacity(0.5).scale(2))
	a1.add(a1.animation.rotate(180))
	a1.add(a1.animation.translateX(0).scale(1))
	'
	a1.play
End Sub

Sub delayCallBack1(el As Object, i As Int) As Object
	Return i * 200
End Sub