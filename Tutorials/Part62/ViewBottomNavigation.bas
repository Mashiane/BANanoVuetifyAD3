B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public bottomnav As VueComponent
	Public path As String
	Public name As String = "bottomnav"
	Private banano As BANano
	Private contBN As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	bottomnav.Initialize(Me, name)
	path = bottomnav.path
	'
	contBN = bottomnav.Page.AddContainer("contbn", False)
	contBN.AddRows5.AddColumns12
	contBN.BuildGrid
	
	BN1
	BN2
	BN3
	BN4
	BN5
	
	bottomnav.SetWatch("bnav5select", True, True, Me, "getcolor", Null)
	'add the component as a router
	vuetify.AddRoute(bottomnav)
End Sub

Sub getcolor As String
	'get the item being selected
	Dim sbnav5select As String = bottomnav.GetData("bnav5select")
	Log(sbnav5select)
	Select Case sbnav5select
		Case "video"
			bottomnav.SetData("color", "blue-grey")
		Case "music"
			bottomnav.SetData("color", "brown")
		Case "book"
			bottomnav.SetData("color", "teal")
		Case "image"
			bottomnav.SetData("color", "indigo")
		Case Else
			bottomnav.SetData("color", "blue-grey")
	End Select
End Sub

Sub BN5
	contBN.Cell(5,1).AddParagraph("pxa", "{{ bnav5select }}", "", "")
	'
	Dim bnav1 As VueElement = contBN.Cell(5, 1).AddBottomNavigation("bnav5", "bnav5select", "", False, False)
	bnav1.SetData("bnav5select", "video")
	bnav1.AddAttrBackgroundColor(":color")
	bnav1.Shift = True
	bnav1.Dark = True
	bottomnav.BindVueElement(bnav1)
	'add buttons
	Dim b1 As VueElement = bnav1.AddBottomNavigationItem("bn51", "video", "Video", "mdi-television-play")
	bottomnav.BindVueElement(b1)
	'
	Dim b2 As VueElement = bnav1.AddBottomNavigationItem("bn52", "music", "Music", "mdi-music-note")
	bottomnav.BindVueElement(b2)
	'
	Dim b3 As VueElement = bnav1.AddBottomNavigationItem("bn53", "book", "Book", "mdi-book")
	bottomnav.BindVueElement(b3)
	'
	Dim b4 As VueElement = bnav1.AddBottomNavigationItem("bn54", "image", "Image", "mdi-image")
	bottomnav.BindVueElement(b4)
End Sub

Sub BN4
	Dim bnav1 As VueElement = contBN.Cell(4, 1).AddBottomNavigation("bnav4", "bnav4select", "amber", False, False)
	bnav1.SetData("bnav4select", "recent")
	bnav1.Horizontal = True
	bottomnav.BindVueElement(bnav1)
	'add buttons
	Dim b1 As VueElement = bnav1.AddBottomNavigationItem("bn41", "recent", "Recent", "mdi-history")
	bottomnav.BindVueElement(b1)
	'
	Dim b2 As VueElement = bnav1.AddBottomNavigationItem("bn42", "favorites", "Favorites", "mdi-heart")
	bottomnav.BindVueElement(b2)
	'
	Dim b3 As VueElement = bnav1.AddBottomNavigationItem("bn43", "nearby", "Nearby", "mdi-map-marker")
	bottomnav.BindVueElement(b3)
End Sub



Sub BN3
	Dim bnav1 As VueElement = contBN.Cell(3, 1).AddBottomNavigation("bnav3", "bnav3select", "teal", True, False)
	bnav1.SetData("bnav3select", "recent")
	bottomnav.BindVueElement(bnav1)
	'add buttons
	Dim b1 As VueElement = bnav1.AddBottomNavigationItem("bn31", "recent", "Recent", "mdi-history")
	bottomnav.BindVueElement(b1)
	'
	Dim b2 As VueElement = bnav1.AddBottomNavigationItem("bn32", "favorites", "Favorites", "mdi-heart")
	bottomnav.BindVueElement(b2)
	'
	Dim b3 As VueElement = bnav1.AddBottomNavigationItem("bn33", "nearby", "Nearby", "mdi-map-marker")
	bottomnav.BindVueElement(b3)
End Sub


Sub BN2
	Dim bnav1 As VueElement = contBN.Cell(2, 1).AddBottomNavigation("bnav2", "bnav2select", "primary", False, False)
	bnav1.SetData("bnav2select", "recent")
	bottomnav.BindVueElement(bnav1)
	'add buttons
	Dim b1 As VueElement = bnav1.AddBottomNavigationItem("bn21", "recent", "Recent", "mdi-history")
	bottomnav.BindVueElement(b1)
	'
	Dim b2 As VueElement = bnav1.AddBottomNavigationItem("bn22", "favorites", "Favorites", "mdi-heart")
	bottomnav.BindVueElement(b2)
	'
	Dim b3 As VueElement = bnav1.AddBottomNavigationItem("bn23", "nearby", "Nearby", "mdi-map-marker")
	bottomnav.BindVueElement(b3)
End Sub


Sub BN1
	Dim bnav1 As VueElement = contBN.Cell(1, 1).AddBottomNavigation("bnav1", "bnav1select", "", False, False)
	bnav1.SetData("bnav1select", "recent")
	bottomnav.BindVueElement(bnav1)
	'add buttons
	Dim b1 As VueElement = bnav1.AddBottomNavigationItem("b1", "recent", "Recent", "mdi-history")
	bottomnav.BindVueElement(b1)
	'
	Dim b2 As VueElement = bnav1.AddBottomNavigationItem("b2", "favorites", "Favorites", "mdi-heart")
	bottomnav.BindVueElement(b2)
	'
	Dim b3 As VueElement = bnav1.AddBottomNavigationItem("b3", "nearby", "Nearby", "mdi-map-marker")
	bottomnav.BindVueElement(b3)
	
End Sub

Sub bnav1_change(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub