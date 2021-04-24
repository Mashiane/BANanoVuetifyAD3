B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public home As VueComponent
	Public path As String
	Public name As String = "home"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	home.Initialize(Me, name)
	'this should be the starting page
	home.Path = "/"
	path = home.path
	'load the template
	
	Dim mcard As VueElement = home.Page.AddCard("mcard", "", Null)
	mcard.AlignCenter = True
	'mcard.ColorIntensity = vuetify.INTENSITY_LIGHTEN3
	'
	Dim hh2 As VueElement = mcard.AddH2("hh2", "Create Awesomeness", vuetify.COLOR_INDIGO, "")
	hh2.PT = 12
	hh2.PB = 12
	'
	Dim hsd As VueElement = mcard.AddSpeedDial("hsd", "mdi-share-variant", "mdi-close", "bvad3share", vuetify.COLOR_PRIMARY)
	hsd.TopRight 
	hsd.Absolute = True
	hsd.OpenOnHover = True
	hsd.Direction = "left"
	hsd.GetMainButton.Small = True
	hsd.GetMainButton.Bottom = True
	home.BindVueElement(hsd)
	'
	Dim shareURL As String = "https://github.com/Mashiane/BANanoVuetifyAD3"
	
	Dim linkedin As VueElement = hsd.AddSpeedDialItem("linkedin", "mdi-linkedin", vuetify.COLOR_BLUE)
	linkedin.Small = True
	linkedin.Bottom = True
	linkedin.Href = $"https://www.linkedin.com/shareArticle?mini=true&url=${shareURL}"$
	linkedin.Target = "_blank"
	'
	Dim facebook As VueElement = hsd.AddSpeedDialItem("facebook", "mdi-facebook", vuetify.COLOR_BLUE)
	facebook.Small = True
	facebook.Bottom = True
	facebook.Href = $"https://www.facebook.com/sharer/sharer.php?u=${shareURL}"$
	facebook.Target = "_blank"
	'
	Dim whatsapp As VueElement = hsd.AddSpeedDialItem("whatsapp", "mdi-whatsapp", vuetify.COLOR_GREEN)
	whatsapp.Small = True
	whatsapp.Bottom = True
	whatsapp.Href = $"https://wa.me/?text=BVAD3%20${shareURL}"$
	whatsapp.Target = "_blank"
	'
	Dim email As VueElement = hsd.AddSpeedDialItem("email", "mdi-email", "tertiary")
	email.Small = True
	email.Bottom = True
	email.Href = $"mailto:?subject=BVAD3!&amp;body=Create WebApps and Websites with BVAD3!<a href='${shareURL}'>${shareURL}</a>"$
	email.Target = "_blank"
	'
	Dim mcardtext As VueElement = mcard.AddCardText("mcardtext", "", Null)
	mcardtext.AddRows5.AddColumns4x3
	mcardtext.BuildGrid
	'
	Dim sht1 As VueElement = mcardtext.Cell(1, 1).AddSheet("sht1", "150", "", Null)
	sht1.Height = "150"
	sht1.setLinearGradient(vuetify.ORIENTATION_BL_TR, "#00416a", "#e4e5e6")
	sht1.Elevation = 2
	sht1.roundedXL 
	
	Dim sht2 As VueElement = mcardtext.Cell(1, 2).AddSheet("sht2", "150", "", Null)
	sht2.Height = "150"
	sht2.Elevation = 2
	sht2.setLinearGradient(vuetify.ORIENTATION_TOP_BOTTOM, "#ee9ca7", "#ffdde1")
	sht2.roundedXL  
	
	Dim sht3 As VueElement = mcardtext.Cell(1, 3).AddSheet("sht3", "150", "", Null)
	sht3.Height = "150"
	sht3.Elevation = 2 
	sht3.setLinearGradient1("to left", Array("#c6ffdd", "#fbd786", "#f7797d"))
	sht3.roundedXL  
	
	Dim sht4 As VueElement = mcardtext.Cell(2, 1).AddSheet("sht4", "150", "", Null)
	sht4.Height = "150"
	sht4.Elevation = 2 
	sht4.setLinearGradient1("to left", Array("#12c2e9", "#c471ed", "#f64f59"))
	sht4.roundedXL  
	
	Dim sht5 As VueElement = mcardtext.Cell(2, 2).AddSheet("sht5", "150", "", Null)
	sht5.Height = "150"
	sht5.Elevation = 2 
	sht5.setLinearGradient("to right", "#4A00E0", "#8E2DE2")
	sht5.roundedXL  
		
	Dim sht6 As VueElement = mcardtext.Cell(2, 3).AddSheet("sht6", "150", "", Null)
	sht6.Height = "150"
	sht6.Elevation = 2 
	sht6.setLinearGradient1("to top", Array("#7f7fd5", "#86a8e7", "#91eae4"))
	sht6.roundedXL  
	
		  
	'add the component as a router
	vuetify.AddRoute(home)
End Sub

