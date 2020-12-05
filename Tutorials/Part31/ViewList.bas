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
	Dim mList As VueElement = vuetify.AddList(Me, vlists.MatrixID(1, 1), "list1", False, False, False, Null)
	lists.BindVueElement(mList)
	
	'initialize the listview options, we use the default options
	'to source the data
	Dim list1Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list1Options.dataSource = "items"
	'add the template to the list
	Dim list1Template As VueElement = vuetify.AddListViewTemplate(Me, "list1", 0, list1Options)
	'bind the template
	lists.BindVueElement(list1Template)
	'we add the items to the list
	mList.ClearItems  ' clear the items
	mList.AddItemAction("1", "mdi-inbox-arrow-down", "green", "Inbox", "Incoming emails", "", "Today", "mdi-inbox-arrow-down", "", "")
	mList.AddItemAction("2", "mdi-send", "orange", "Sent", "Sent Emails", "", "", "", "", "")
	mList.AddItemAction("3", "mdi-delete", "red", "Trash", "Deleted emails", "", "24", "", "", "")
	mList.AddItemAction("4", "mdi-alert-octagon", "amber", "Spam", "Spam emails", "", "", "", "", "")
	'set the state for the items
	lists.SetData("items", mList.records)

	'
	'icon title
	Dim list2 As VueElement = vuetify.AddList(Me, vlists.MatrixID(1, 2), "list2", False, False, False, Null)
	lists.BindVueElement(list2)
	'to source the data
	Dim list2Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list2Options.dataSource = "icontitle"
	list2Options.avatariconclass = "grey lighten-1"
	'add the template to the list
	Dim list2Template As VueElement = vuetify.AddListViewTemplate(Me, "list2", 0, list2Options)
	'bind the template
	lists.BindVueElement(list2Template)
	
	'list2.ClearItems
	list2.AddItemHeader("Reports")
	list2.AddItemIcon("1", "mdi-folder", "", "My Files", "", "", "", "", "", "")
	list2.AddItemIcon("2", "mdi-account-multiple", "",  "Shared with me", "", "", "", "", "", "")
	list2.AddItemIcon("3", "mdi-star", "", "Starred", "", "", "", "", "", "")
	'
	list2.AddItemAvatar("4", "./assets/1.jpg", "Brunch this weekend?", "I'll be in your neighborhood doing errands this weekend. Do you want to hang out?", _
	"", "", "mdi-information", "", "")
	list2.AddItemDivider(False)
	list2.AddItemAvatar("5", "./assets/2.jpg", "Summer BBQ", "To Alex, Scott, Jennifer. Wish I could come, but I'm out of town this weekend.", _
	"", "", "mdi-information", "", "")
	list2.AddItemAvatar("6", "./assets/3.jpg", "Oui oui", "Do you have Paris recommendations? Have you ever been?", "mdi-information", _
	"", "", "", "")
	
	list2.AddItemAvatarIcon("7", "mdi-clipboard-text", "blue", "Vacation Itinerary", "Jan 20, 2014", "", "", "", "", "")
	list2.AddItemAvatarIcon("8", "mdi-gesture-tap-button", "amber", "Kitchen Remodel", "Jan 21, 2014", "", "", "", "", "")
	'
	lists.setdata("icontitle", list2.records)
	

	'add the component as a router
	vuetify.AddRoute(lists)
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


Sub list2_click(item As Map)
	vuetify.ShowSnackBarSuccess(item)
End Sub