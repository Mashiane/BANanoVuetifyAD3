B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adbottomnav"
	Private banano As BANano
	Private VBottomNavigation1 As VBottomNavigation
	Private VBottomNavigation2 As VBottomNavigation
	Private VBottomNavigation3 As VBottomNavigation
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	banano.LoadLayout(about.Here, "mybottomnav")
	about.BindVueElement(VBottomNavigation1.VElement)
	about.BindVueElement(VBottomNavigation2.VElement)
	about.BindVueElement(VBottomNavigation3.VElement)
	
	about.SetMounted(Me, "onmounted", Null)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub onmounted
	VBottomNavigation1.Clear(about)
	VBottomNavigation1.AddItem("recent", "Recent", "red", "mdi-history", "")
	VBottomNavigation1.AddItem("favorites", "Favourates", "yellow", "mdi-heart", "")
	VBottomNavigation1.AddItem("nearby", "Nearby", "green", "mdi-map-marker", "")
	VBottomNavigation1.Refresh(about)
	'
	VBottomNavigation2.Clear(about)
	VBottomNavigation2.AddItem("recent", "Recent", "", "mdi-history", "/adalerts")
	VBottomNavigation2.AddItem("favorites", "Favourates", "", "mdi-heart", "/adappbar")
	VBottomNavigation2.AddItem("nearby", "Nearby", "", "mdi-map-marker", "adbreadcrumbs")
	VBottomNavigation2.Refresh(about)
	'
	VBottomNavigation3.Clear(about)
	VBottomNavigation3.AddItem("recent", "Recent", "", "mdi-history", "")
	VBottomNavigation3.AddItem("favorites", "Favourates", "", "mdi-heart", "")
	VBottomNavigation3.AddItem("nearby", "Nearby", "", "mdi-map-marker", "")
	VBottomNavigation3.Refresh(about)
	
End Sub


Private Sub VBottomNavigation1_Change (item As Object)
	vuetify.ShowSwal(item)
End Sub

Private Sub VBottomNavigation2_Change (item As Object)
	vuetify.ShowSwal(item)
End Sub