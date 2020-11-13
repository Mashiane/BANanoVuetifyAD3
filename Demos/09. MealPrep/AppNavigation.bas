B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private fx As JFX
	Public appnavigation As VueComponent
End Sub


Sub Initialize
	'initialize the app navigation component
	appnavigation.Initialize(Me, "app-navigation", "/")
	
	
	
	Dim items As List = appnavigation.newlist
	items.Add(CreateMap("title": "Menu", "url": "/menu"))
	items.Add(CreateMap("title": "Profile", "url": "/about"))
	items.Add(CreateMap("title": "Sign In", "url": "/sign-in"))
	items.Add(CreateMap("title": "Join", "url": "/join"))
	'initialize the items
	appnavigation.SetData("items", items)
	'initialize the app title state
	appnavigation.SetData("apptitle", "BANanoVuetifyAD3 Meal Prep")
	'the drawer should be closed
	appnavigation.SetData("appdrawer", False)
	
End Sub
