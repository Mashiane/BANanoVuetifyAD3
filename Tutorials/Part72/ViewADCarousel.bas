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
	Public name As String = "adcarousel"
	Private banano As BANano
	Private VCarousel1 As VCarousel
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycarousel")
	'
	about.BindVueElement(VCarousel1.VElement)
		
	about.SetMounted(Me, "onmounted", Null)
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub onmounted
	VCarousel1.Clear(about)
	VCarousel1.AddItem(1, "./assets/bird.jpg", "", "", False)
	VCarousel1.AddItem(2, "./assets/clint-mckoy.jpg", "", "", False)
	VCarousel1.AddItem(3, "./assets/925-1920x1080.jpg", "", "", False)
	VCarousel1.AddItem(4, "./assets/dark-beach.jpg", "", "", False)
	VCarousel1.AddItem(5, "./assets/lock.jpg", "", "", False)
	VCarousel1.AddItem(6, "./assets/login.jpg", "", "", False)
	VCarousel1.AddItem(7, "./assets/parallax1.jpg", "", "", False)
	VCarousel1.AddItem(8, "./assets/parallax2.jpg", "", "", False)
	VCarousel1.AddItem(9, "./assets/pricing.jpg", "", "", False)
	VCarousel1.AddItem(10, "./assets/register.jpg", "", "", False)
	VCarousel1.AddItem(11, "./assets/sample-1.jpg", "", "", False)
	VCarousel1.AddItem(12, "./assets/squirrel.jpg", "", "", False)
	VCarousel1.Refresh(about)
End Sub

Private Sub VCarousel1_Change (i As Int)
	
End Sub