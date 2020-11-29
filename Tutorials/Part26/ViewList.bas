B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public lists As VueComponent
	Public path As String
	Public name As String = "lists"
	Private banano As BANano
	Private vlists As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	lists.Initialize(Me, name)
	path = lists.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vlists")
	
	'inject a list
	BVAD3.NewList(lists, vlists.MatrixID(1, 1), "list1", Null)
	BVAD3.NewListItem(lists, "list1", "items", "iconleft", 0,  Null)
	'
	'icon title
	BVAD3.NewList(lists, vlists.MatrixID(1, 2), "list2", CreateMap("avatariconclass":"grey lighten-1"))
	BVAD3.NewListItem(lists, "list2", "icontitle", "icon", 0,  Null)
	'
	Dim icontitle As List = lists.NewList
	BVAD3.Items_AddHeader(icontitle, "Reports")
	BVAD3.Items_AddIconTitle(icontitle, "1", "mdi-folder", "My Files", "")
	BVAD3.Items_AddIconTitle(icontitle, "2", "mdi-account-multiple", "Shared with me", "")
	BVAD3.Items_AddIconTitle(icontitle, "3", "mdi-star", "Starred", "")
	'
	BVAD3.Items_AddAvatarTitleSubTitle(icontitle, "4", "./assets/1.jpg", "Brunch this weekend?", "I'll be in your neighborhood doing errands this weekend. Do you want to hang out?", "mdi-information", "")
	BVAD3.Items_AddDivider(icontitle, False)
	BVAD3.Items_AddAvatarTitleSubTitle(icontitle, "5", "./assets/2.jpg", "Summer BBQ", "To Alex, Scott, Jennifer. Wish I could come, but I'm out of town this weekend.", "mdi-information", "")
	BVAD3.Items_AddAvatarTitleSubTitle(icontitle, "6", "./assets/3.jpg", "Oui oui", "Do you have Paris recommendations? Have you ever been?", "mdi-information", "")
	
	BVAD3.Items_AddAvatarIconTitleSubTitle(icontitle, "7", "mdi-clipboard-text", "blue", "Vacation Itinerary", "Jan 20, 2014", "", "")
	BVAD3.Items_AddAvatarIconTitleSubTitle(icontitle, "8", "mdi-gesture-tap-button", "amber", "Kitchen Remodel", "Jan 21, 2014", "", "")
	'
	lists.setdata("icontitle", icontitle)
	
	'add the placeholder content to the template
	lists.AppendPlaceHolder
	'
	'
	PageLinks
	
	
	
	'add the component as a router
	vuetify.AddRoute(lists)
End Sub



Sub PageLinks
	Dim pages As List = vuetify.NewList
	pages.Add(CreateMap("iconright": "mdi-inbox-arrow-down", "iconleft": "mdi-inbox-arrow-down", "title":"Inbox", "subtitle":"Incoming emails","textright":"Today"))
	pages.Add(CreateMap("iconright": "mdi-send", "iconleft": "mdi-send", "title": "Sent","subtitle":"Sent emails"))
	pages.Add(CreateMap("iconright": "mdi-delete", "iconleft": "mdi-delete", "title": "Trash","subtitle":"Deleted emails"))
	pages.Add(CreateMap("iconright": "mdi-alert-octagon", "iconleft": "mdi-alert-octagon", "title": "Spam","subtitle":"Spam emails"))
	lists.SetData("items", pages)
End Sub


Sub list1_leftclick(item As Map)
	vuetify.ShowSnackBarWarning(item)
End Sub

Sub list1_rightclick(item As Map)
	vuetify.ShowSnackBarError(item)
End Sub


Sub list1_click(item As Map)
	vuetify.ShowSnackBarSuccess(item)
End Sub