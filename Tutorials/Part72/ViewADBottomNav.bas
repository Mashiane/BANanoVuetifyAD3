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
	Private badge As Int
	private counter as int
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
	about.SetDestroyed(Me, "killcounter", Null)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub killcounter
	about.ClearInterval(counter)
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
	VBottomNavigation3.AddItem1("shop", "Basket", "", "mdi-cart-outline", 5, "red", "")
	VBottomNavigation3.Refresh(about)
	'
	badge = 5
	about.ClearInterval(counter)
	counter = about.SetInterval("updatebadge", 1000, Null)
End Sub

Sub updatebadge
	badge = badge + 1
	VBottomNavigation3.UpdateBadge(about, "shop", badge)
End Sub


Private Sub VBottomNavigation1_Change (item As Object)
	vuetify.ShowSwal(item)
End Sub

Private Sub VBottomNavigation2_Change (item As Object)
	vuetify.ShowSwal(item)
End Sub