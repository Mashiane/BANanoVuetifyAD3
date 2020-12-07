B4J=true
Group=Default Group
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
	Dim vcontainer As VueElement = vuetify.AddContainer(Me, tabs.Here, "tabcnt", True)
	'add rows
	vcontainer.AddRows1.AddColumns12
	'vcontainer.ShowGridDesign = True
	vcontainer.buildgrid
	'
	CreateTab1(vcontainer)
	
	'add the component as a router
	vuetify.AddRoute(tabs)
End Sub

Sub CreateTab1(cv As VueElement)
	Dim tabs1 As VueElement = vuetify.AddTabs(Me, cv.MatrixID(1, 1), "tabs1", "tabsx", False, False, False, True, Null)
	'tabs1.BackgroundColorAttr = "deep-purple accent-4"
	'tabs1.Dark = True
	tabs1.FixedTabs = True
	tabs1.IconsAndText = True
	
	Dim tabs1child1 As VueElement = tabs1.AddTab("web", "Web", "mdi-phone", False)
	tabs1child1.Caption = "Tab 1"
	
	Dim tabs1child2 As VueElement = tabs1.AddTab("shopping", "Shopping", "mdi-heart", False)
	tabs1child2.Caption = "Tab 2"
	
	Dim tabs1child3 As VueElement = tabs1.AddTab("videos", "Videos", "mdi-account-box", False)
	tabs1child3.Caption = "Tab 3"
	
	tabs.BindVueElement(tabs1child1)
	tabs.BindVueElement(tabs1child2)
	tabs.BindVueElement(tabs1child3)
	tabs.BindVueElement(tabs1)
	
End Sub