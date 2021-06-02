B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.95
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "admenus"
	Private banano As BANano
	Private VMenu1 As VMenu
	Private VMenu2 As VMenu
	Private VMenu3 As VMenu
	Private VMenu4 As VMenu
	Private menu1options As VListOptions
	Private menu2options As VListOptions
	Private menu3options As VListOptions
	Private menu4options As VListOptions
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mymenus")
	'
	VMenu1.SetOptions(menu1options)
	VMenu2.SetOptions(menu2options)
	VMenu3.SetOptions(menu3options)
	VMenu4.SetOptions(menu4options)
	
	about.BindVueElement(VMenu1.VElement)
	about.BindVueElement(VMenu2.VElement)
	about.BindVueElement(VMenu3.VElement)
	about.BindVueElement(VMenu4.VElement)
	'
	VMenu1.MenuItems.Clear(about)
	VMenu1.MenuItems.AddItem("","mi1", "mdi-star", "", "Start", "")
	VMenu1.MenuItems.AddItem("","mi2", "mdi-file-document-multiple-outline", "", "Document", "")
	VMenu1.MenuItems.AddItem("", "mi3", "mdi-clipboard-edit-outline", "", "ClipBoard","")
	VMenu1.MenuItems.Refresh(about)
	'
	VMenu2.MenuItems.Clear(about)
	VMenu2.MenuItems.AddItem("","mi1", "", "", "Start", "").SetItemAvatar("mi1", "./assets/sponge.png")
	
	VMenu2.MenuItems.AddItem("","mi2", "", "", "Document", "").SetItemAvatar("mi2", "./assets/img1.png")
	
	VMenu2.MenuItems.AddItem("", "mi3", "", "", "ClipBoard","").SetItemAvatar("mi3", "./assets/img2.png")
	VMenu2.MenuItems.Refresh(about)
	'
	VMenu3.MenuItems.Clear(about)
	VMenu3.MenuItems.AddItem("","mi1", "mdi-star", "", "Start", "")
	VMenu3.MenuItems.AddItem("","mi2", "mdi-file-document-multiple-outline", "", "Document", "")
	VMenu3.MenuItems.AddItem("", "mi3", "mdi-clipboard-edit-outline", "", "ClipBoard","")
	VMenu3.MenuItems.Refresh(about)
	'
	VMenu4.MenuItems.Clear(about)
	VMenu4.MenuItems.AddItem("","mi1", "mdi-star", "", "Start", "")
	VMenu4.MenuItems.AddItem("","mi2", "mdi-file-document-multiple-outline", "", "Document", "")
	VMenu4.MenuItems.AddItem("", "mi3", "mdi-clipboard-edit-outline", "", "ClipBoard","")
	VMenu4.MenuItems.Refresh(about)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VMenu1_Click (item As Map)
	vuetify.ShowSwal(banano.ToJson(item))
End Sub

Private Sub VMenu2_Click (item As Map)
	Dim menuid As String = item.Get("id")
	vuetify.ShowSwal(menuid)
End Sub