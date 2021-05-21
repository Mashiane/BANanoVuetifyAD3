B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public bottomsheet As VueComponent
	Public path As String
	Public name As String = "bottomsheet"
	Private banano As BANano
	Private contBS As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	bottomsheet.Initialize(Me, name)
	path = bottomsheet.path
	'
	contBS = bottomsheet.Page.AddContainer("contbs", False)
	contBS.AddRows5.AddColumns12
	contBS.BuildGrid
	'
	Dim btnOpenInset As VueElement = contBS.Cell(1, 1).AddButton1("btnOpenInset", "Open Inset", Null)
	btnOpenInset.Color = "orange"
	btnOpenInset.Dark = True
	bottomsheet.BindVueElement(btnOpenInset)
	'
	Dim btnOpen2 As VueElement = contBS.Cell(2, 1).AddButton1("btnOpen2", "Open Sheet", Null)
	btnOpen2.Color = "blue"
	btnOpen2.Dark = True
	bottomsheet.BindVueElement(btnOpen2)
	'
	Dim btnOpen3 As VueElement = contBS.Cell(3, 1).AddButton1("btnOpen3", "Open Persistent", Null)
	btnOpen3.Color = "green"
	btnOpen3.Dark = True
	bottomsheet.BindVueElement(btnOpen3)
	'
	Dim btnOpen4 As VueElement = contBS.Cell(4, 1).AddButton1("btnOpen4", "Open Using", Null)
	btnOpen4.Color = "purple"
	btnOpen4.Dark = True
	bottomsheet.BindVueElement(btnOpen4)
	
	BS1
	BS2
	BS3
	BS4
	
	'add the component as a router
	vuetify.AddRoute(bottomsheet)
End Sub


Sub BS1	
	'add a bottom sheet with v-sheet with 200px height
	Dim bs1c As VueElement = contBS.Cell(1, 1).AddBottomSheet("bs1", "bs1show", "200px", vuetify.COLOR_AMBER)
	bs1c.App = True
	bs1c.Inset = True
	
	'get the sheet and add a container
	Dim s1cont As VueElement = bs1c.GetSheet.AddContainer("bs1container", False)
	s1cont.AddRows1.AddColumns12
	s1cont.BuildGrid
	'
	Dim btnCloseInset As VueElement = s1cont.Cell(1, 1).AddButton1("btnCloseInset", "Close Inset", Null)
	btnCloseInset.Color = "red"
	btnCloseInset.Dark = True
	bottomsheet.BindVueElement(btnCloseInset)
	
	bottomsheet.BindVueElement(bs1c)
End Sub


Sub BS2	
	'add a bottom sheet with v-sheet with 200px height
	Dim bs1c As VueElement = contBS.Cell(2, 1).AddBottomSheet("bs2", "bs2show", "200px", "")
	bs1c.App = True
	bs1c.GetSheet.TextCenter = True
	'
	Dim btnClose2 As VueElement = bs1c.GetSheet.AddButton1("btnClose2", "Close", Null)
	btnClose2.Color = "red"
	btnClose2.Dark = True
	btnClose2.MY = 5
	bottomsheet.BindVueElement(btnClose2)
	bottomsheet.BindVueElement(bs1c)
	
End Sub


Sub BS3
	'add a bottom sheet with v-sheet with 200px height
	Dim bs1c As VueElement = contBS.Cell(3, 1).AddBottomSheet("bs3", "bs3show", "200px", "")
	bs1c.App = True
	bs1c.Persistent = True
	bs1c.HideOverlay = True
	bs1c.GetSheet.TextCenter = True
	'
	Dim btnClose3 As VueElement = bs1c.GetSheet.AddButton1("btnClose3", "Close Persistent", Null)
	btnClose3.Color = "red"
	btnClose3.Dark = True
	btnClose3.MT = 5
	bottomsheet.BindVueElement(btnClose3)
	bottomsheet.BindVueElement(bs1c)
	
End Sub


Sub BS4
	'add a bottom sheet with v-sheet with 200px height
	Dim bs1c As VueElement = contBS.Cell(4, 1).AddBottomSheet("bs4", "bs4show", "", "")
	bottomsheet.BindVueElement(bs1c)
	'add a list to the sheet
	Dim bslist As VueElement = bs1c.AddList1("bs1clist")
	'the source of data
	bslist.Options.dataSource = "openusing"
	'initialize the source of data
	bslist.SetData("openusing", bottomsheet.NewList)
	'from the source use the img property for the avatar
	bslist.Options.avatar = "img"
	'from the source use the title property for the title
	bslist.Options.title = "title"
	'the key for each item should be the title, this should be uniqye
	bslist.Options.key = "title"
	'build the template based on the options
	bslist.AddListViewTemplate1(0)
	'bind the list
	bottomsheet.BindVueElement(bslist)
	'create the object array to source the list contents from
	Dim openusing As List = bottomsheet.NewList
	openusing.Add(CreateMap("img": "./assets/keep.png", "title": "Keep"))
	openusing.Add(CreateMap("img": "./assets/inbox.png", "title": "Inbox"))
	openusing.Add(CreateMap("img": "./assets/hangouts.png", "title": "Hangouts"))
	openusing.Add(CreateMap("img": "./assets/messenger.png", "title": "Messenger"))
	openusing.Add(CreateMap("img": "./assets/google.png", "title": "Google+"))
	bottomsheet.SetData("openusing", openusing)
End Sub

Sub bs1clist_click(item As Map)
	'close the bottom sheet when an item is clicked
	Dim stitle As String = item.Get("title")
	bottomsheet.SetData("bs4show", False)
	vuetify.ShowSnackBarSuccess(stitle)
End Sub

Sub btnOpen4_click(e As BANanoEvent)
	bottomsheet.SetData("bs4show", True)
End Sub


Sub btnOpen3_click(e As BANanoEvent)
	bottomsheet.SetData("bs3show", True)
End Sub


Sub btnClose3_click(e As BANanoEvent)
	bottomsheet.SetData("bs3show", False)
End Sub

Sub btnOpen2_click(e As BANanoEvent)
	bottomsheet.SetData("bs2show", True)
End Sub


Sub btnClose2_click(e As BANanoEvent)
	bottomsheet.SetData("bs2show", False)
End Sub


Sub btnOpenInset_click(e As BANanoEvent)
	bottomsheet.SetData("bs1show", True)
End Sub

Sub btnCloseInset_click(e As BANanoEvent)
	bottomsheet.SetData("bs1show", False)
End Sub