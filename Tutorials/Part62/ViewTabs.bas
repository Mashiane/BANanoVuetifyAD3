B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public tabs As VueComponent
	Public path As String
	Public name As String = "tabs"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	tabs.Initialize(Me, name)
	path = tabs.path
	
	'add a container
	Dim vcontainer As VueElement = tabs.AddContainer("tabcnt", True)
	'add rows
	vcontainer.AddRows5.AddColumns12
	'vcontainer.ShowGridDesign = True
	vcontainer.buildgrid
	'
	CreateTab1(vcontainer)
	CreateTab2(vcontainer)
	CreateTab3(vcontainer)
	CreateTab4(vcontainer)
	
	'add the component as a router
	vuetify.AddRoute(tabs)
End Sub


Sub CreateTab1(cv As VueElement)
	Dim tabs1 As VueElement = cv.Cell(1, 1).AddTabs("tabs1")
		
	Dim tabs1child1 As VueElement = tabs1.AddTab("tab1", "Tab 1", "", False)
	Dim c1 As VueElement = tabs1child1.GetTabItem.AddCard("c1c1", "", Null)
	Dim c1txt As VueElement = c1.AddCardText("c1c1txt", "", Null)
	c1txt.AddLoremIpsum("c1c1txt1l", "", "")
	
	Dim tabs1child2 As VueElement = tabs1.AddTab("tab2", "Tab 2", "", False)
	Dim c1 As VueElement = tabs1child2.GetTabItem.AddCard("c2c1", "", Null)
	Dim c1txt As VueElement = c1.AddCardText("c2c1txt", "", Null)
	c1txt.AddLoremIpsum("c2c1txt1l", "", "")
	
	Dim tabs1child3 As VueElement = tabs1.AddTab("tab3", "Tab 3", "", False)
	Dim c1 As VueElement = tabs1child3.GetTabItem.AddCard("c3c1", "", Null)
	Dim c1txt As VueElement = c1.AddCardText("c3c1txt", "", Null)
	c1txt.AddLoremIpsum("c3c1txt1l", "", "")
	
	tabs.BindVueElement(tabs1child1)
	tabs.BindVueElement(tabs1child2)
	tabs.BindVueElement(tabs1child3)
	tabs.BindVueElement(tabs1)
	
End Sub

Sub tabs1_change(tabnumber As Int)
	vuetify.ShowSnackBar("Tab Number: " & tabnumber)
End Sub

Sub CreateTab2(cv As VueElement)
	Dim tabs2 As VueElement = cv.Cell(2, 1).AddTabs("tabs2")
	tabs2.IconsAndText = True
	tabs2.FixedTabs = True
	tabs2.Color = vuetify.COLOR_CYAN
	tabs2.Dark = True
	tabs2.Elevation = 10
	
	Dim tabs1child1 As VueElement = tabs2.AddTab("web", "Web", "mdi-phone", False)
	Dim c1 As VueElement = tabs1child1.GetTabItem.AddCard("c1", "", Null)
	Dim c1txt As VueElement = c1.AddCardText("c1txt", "", Null)
	c1txt.AddLoremIpsum("c1txt1l", "", "")
	
	Dim tabs1child2 As VueElement = tabs2.AddTab("shopping", "Shopping", "mdi-heart", False)
	Dim c2 As VueElement = tabs1child2.GetTabItem.AddCard("c2", "", Null)
	Dim c2txt As VueElement = c2.AddCardText("c2txt", "", Null)
	c2txt.AddLoremIpsum("c2txt1l", "", "")
	
	Dim tabs1child3 As VueElement = tabs2.AddTab("videos", "Videos", "mdi-account-box", False)
	Dim c3 As VueElement = tabs1child3.GetTabItem.AddCard("c3", "", Null)
	Dim c3txt As VueElement = c3.AddCardText("c3txt", "", Null)
	c3txt.AddLoremIpsum("c3txt1l", "", "")
	
	tabs.BindVueElement(tabs1child1)
	tabs.BindVueElement(tabs1child2)
	tabs.BindVueElement(tabs1child3)
	tabs.BindVueElement(tabs2)
End Sub

Sub web_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("Web has been clicked!")
End Sub

Sub shopping_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("Shopping has been clicked!")
End Sub

Sub videos_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("Videos has been clicked!")
End Sub


Sub CreateTab3(cv As VueElement)
	'add tabs at R3C1
	Dim tabs3 As VueElement = cv.Cell(3, 1).AddTabs("tabs3")
	'this will have icons and text
	tabs3.IconsAndText = True
	'it should grow
	tabs3.Grow = True
	'set the slider color
	tabs3.SliderColor = vuetify.COLOR_YELLOW
	'add a child tab
	Dim tabs1child1 As VueElement = tabs3.AddTab("web1", "Web", "mdi-phone", False)
	'the icon should be red
	tabs1child1.GetTabIcon.Color = vuetify.COLOR_RED
	BuildTab3Item1(tabs1child1)
	
	
	Dim tabs1child2 As VueElement = tabs3.AddTab("shopping1", "Shopping", "mdi-heart", False)
	tabs1child2.GetTabIcon.Color = vuetify.COLOR_YELLOW
	BuildTab3Item2(tabs1child2)
	
	Dim tabs1child3 As VueElement = tabs3.AddTab("videos1", "Videos", "mdi-account-box", False)
	tabs1child3.GetTabIcon.Color = vuetify.COLOR_GREEN
	BuildTab3Item3(tabs1child3)
	
	tabs.BindVueElement(tabs1child1)
	tabs.BindVueElement(tabs1child2)
	tabs.BindVueElement(tabs1child3)
	tabs.BindVueElement(tabs3)
	'
		
End Sub

Sub BuildTab3Item1(ve As VueElement)
	'get the tab item linked
	Dim ti As VueElement = ve.GetTabItem
	'add a container
	Dim web1cont As VueElement = ti.AddContainer("web1cont", True)
	'add a r1c1
	web1cont.AddRows1.AddColumns12
	'build the grid
	web1cont.BuildGrid
	'add content to the container
	web1cont.Cell(1, 1).AddH4("web1contr1c1", "This is the web1 header", vuetify.color_red, "")
End Sub

Sub BuildTab3Item2(ve As VueElement)
	'get the tab item linked
	Dim ti As VueElement = ve.GetTabItem
	'add a container
	Dim web1cont As VueElement = ti.AddContainer("shopping1cont", True)
	'add a r1c1
	web1cont.AddRows1.AddColumns12
	'build the grid
	web1cont.BuildGrid
	'add content to the container
	web1cont.Cell(1, 1).AddH4("shopping1contr1c1", "This is the shopping1 header", vuetify.color_yellow, "")
End Sub

Sub BuildTab3Item3(ve As VueElement)
	'get the tab item linked
	Dim ti As VueElement = ve.GetTabItem
	'add a container
	Dim web1cont As VueElement = ti.AddContainer("videos1cont", True)
	'add a r1c1
	web1cont.AddRows1.AddColumns12
	'build the grid
	web1cont.BuildGrid
	'add content to the container
	web1cont.Cell(1, 1).AddH4("videos1contr1c1", "This is the videos1 header", vuetify.color_green, "")
End Sub

Sub CreateTab4(cv As VueElement)
	Dim tabs2 As VueElement = cv.Cell(4, 1).AddTabs("tabs4")
	tabs2.Vertical = True
	tabs2.SliderSize = 4
	
	Dim tabs1child1 As VueElement = tabs2.AddTab("web4", "Web", "mdi-phone", True)
	
	Dim tabs1child2 As VueElement = tabs2.AddTab("shopping4", "Shopping", "mdi-heart", True)
	
	Dim tabs1child3 As VueElement = tabs2.AddTab("videos4", "Videos", "mdi-account-box", True)
	
	tabs.BindVueElement(tabs1child1)
	tabs.BindVueElement(tabs1child2)
	tabs.BindVueElement(tabs1child3)
	tabs.BindVueElement(tabs2)
	
End Sub