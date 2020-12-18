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
	
	BuildList1
	
	BuildList2
	
	BuildList3
	
	BuildList4
	
	BuildList5

	BuildList6
	'
	
	'add the component as a router
	vuetify.AddRoute(lists)
	
End Sub

Sub BuildList4
	'inject a list
	Dim list4 As VueElement = vuetify.AddList(Me, vlists.MatrixID(2, 2), "list4", True, True, True, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim list4Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list4Options.dataSource = "preferences"
	list4Options.showrightcheckboxes = True
	'add the template to the list
	list4.AddListViewTemplate(0, list4Options)
	lists.BindVueElement(list4)
	'
	list4.ClearItems
	list4.AddItemHeader("Preferences")
	list4.AddItemDivider(True)
	'
	list4.AddItemHeader("Lights")
	list4.AddItemRightCheckBox("1", True, "Lights on at 19:00", "", "", "")
	list4.AddItemRightCheckBox("4", False, "Outside Lights on at 18:00", "", "", "")
	
	list4.AddItemHeader("Others")
	list4.AddItemRightCheckBox("2", False, "Radio on at 19:05", "", "", "")
	list4.AddItemRightCheckBox("3", False, "TV off at 22:00", "", "", "")
	'
	list4.AddItemHeader("Geyser")
	list4.AddItemRightCheckBox("5", False, "Geyser On at 02:00 AM", "", "", "")
	list4.AddItemRightCheckBox("6", False, "Geyser Off at 04:00 AM", "", "", "")
	'
	lists.SetData("preferences", list4.Records)
End Sub

Sub BuildList6
	'inject a list
	Dim list6 As VueElement = vuetify.AddList(Me, vlists.MatrixID(3, 2), "list6", True, True, True, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim list6Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list6Options.dataSource = "topics"
	'add the group template to the list
	list6.AddListViewGroupTemplate(0, list6Options)
	lists.BindVueElement(list6)
	'
	list6.ClearItems
	list6.AddItemParentChild("", "1", "mdi-ticket", "red", "Attractions", "")
	list6.AddItemParentChild("1", "c1", "", "", "List Item", "")
	list6.AddItemParentChild("", "2", "mdi-silverware-fork-knife", "green", "Dining", "")
	list6.AddItemParentChild("2", "c3", "mdi-cog", "red", "Breakfasy & brunch", "")
	list6.AddItemParentChild("2", "c4", "mdi-cog", "green", "New American", "")
	list6.AddItemParentChild("2", "c5", "mdi-cog", "orange", "Sushi", "")
	list6.AddItemParentChild("", "3", "mdi-school", "pink", "Education", "")
	list6.AddItemParentChild("3", "c6", "", "", "List Item", "")
	list6.AddItemParentChild("", "4", "mdi-run", "", "Family", "")
	list6.AddItemParentChild("4", "c7", "", "", "List Item", "")
	list6.AddItemParentChild("", "5", "mdi-bottle-tonic-plus", "", "Health", "")
	list6.AddItemParentChild("5", "c8", "", "", "List Item", "")
	list6.AddItemParentChild("", "6", "mdi-content-cut", "", "Office", "")
	list6.AddItemParentChild("6", "c9", "", "", "List Item", "")
	list6.AddItemParentChild("", "7", "mdi-tag", "", "Promotions", "")
	list6.AddItemParentChild("7", "c10", "", "", "List Item", "")
	'
	Dim listTree As List = list6.ListViewToTree
	lists.SetData("topics", listTree)
End Sub


Sub BuildList5
	'inject a list
	Dim list5 As VueElement = vuetify.AddList(Me, vlists.MatrixID(3, 1), "list5", True, True, True, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim list5Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list5Options.dataSource = "emails"
	list5Options.showrightrating = True
	'add the template to the list
	list5.AddListViewTemplate(0, list5Options)
	'bind the template
	lists.BindVueElement(list5)
	'
	list5.ClearItems
	list5.AddItemHeader("Emails")
	list5.AddItemDivider(True)
	list5.AddItemIcon("1", "", "", "Read email 1", "", "", "", "", "", 1, "")
	list5.AddItemIcon("2", "", "", "Another email", "", "", "", "", "", 0, "")
	list5.AddItemIcon("3", "", "", "Third email", "", "", "", "", "", 1, "")
	'
	lists.SetData("emails", list5.Records)
End Sub



Sub BuildList3
	'inject a list
	Dim list3 As VueElement = vuetify.AddList(Me, vlists.MatrixID(2, 1), "list3", True, True, True, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim list3Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list3Options.dataSource = "tasks"
	list3Options.showleftcheckboxes = True
	'add the template to the list
	list3.AddListViewTemplate(0, list3Options)
	'bind the template
	lists.BindVueElement(list3)
	'
	list3.ClearItems
	list3.AddItemHeader("Tasks")
	list3.AddItemDivider(True)
	list3.AddItemLeftCheckBox("1", True, "Buy 10 Bananas", "", "", "", "mdi-delete", "red", 0, "")
	list3.AddItemLeftCheckBox("2", True, "Eat 2 Bananas", "", "", "", "mdi-delete", "red", 0, "")
	list3.AddItemLeftCheckBox("3", True, "Count Bananas", "", "", "", "mdi-delete", "red", 0, "")
	list3.AddItemLeftCheckBox("4", True, "Monkey stole 1 Bananas", "", "", "", "mdi-delete", "red", 0, "")
	list3.AddItemLeftCheckBox("5", False, "Poo 2 Bananas", "", "", "", "mdi-delete", "red", 0, "")
	'
	lists.SetData("tasks", list3.Records)
End Sub

Sub BuildList1
	'inject a list
	Dim mList As VueElement = vuetify.AddList(Me, vlists.MatrixID(1, 1), "list1", False, False, False, Null)
	'initialize the listview options, we use the default options
	'to source the data
	Dim list1Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list1Options.dataSource = "items"
	'add the template to the list
	mList.AddListViewTemplate(0, list1Options)
	'bind the template
	lists.BindVueElement(mList)
	'we add the items to the list
	mList.ClearItems  ' clear the items
	mList.AddItemAction("1", "mdi-inbox-arrow-down", "green", "Inbox", "Incoming emails", "", "Today", "mdi-inbox-arrow-down", "", 0, "")
	mList.AddItemAction("2", "mdi-send", "orange", "Sent", "Sent Emails", "", "", "", "", 0, "")
	mList.AddItemAction("3", "mdi-delete", "red", "Trash", "Deleted emails", "", "24", "", "", 0, "")
	mList.AddItemAction("4", "mdi-alert-octagon", "amber", "Spam", "Spam emails", "", "", "", "", 0, "")
	'set the state for the items
	lists.SetData("items", mList.records)
End Sub


Sub BuildList2
	'icon title
	Dim list2 As VueElement = vuetify.AddList(Me, vlists.MatrixID(1, 2), "list2", False, False, False, Null)
	'to source the data
	Dim list2Options As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	list2Options.dataSource = "icontitle"
	list2Options.avatariconclass = "grey lighten-1"
	list2.AddListViewTemplate(0, list2Options)
	'bind the template
	lists.BindVueElement(list2)
	
	'list2.ClearItems
	list2.AddItemHeader("Reports")
	list2.AddItemIcon("1", "mdi-folder", "", "My Files", "", "", "", "", "", 0, "")
	list2.AddItemIcon("2", "mdi-account-multiple", "",  "Shared with me", "", "", "", "", "", 0, "")
	list2.AddItemIcon("3", "mdi-star", "", "Starred", "", "", "", "", "", 0, "")
	'
	list2.AddItemAvatar("4", "./assets/1.jpg", "Brunch this weekend?", "I'll be in your neighborhood doing errands this weekend. Do you want to hang out?", _
	"", "", "mdi-information", "", 0, "")
	list2.AddItemDivider(False)
	list2.AddItemAvatar("5", "./assets/2.jpg", "Summer BBQ", "To Alex, Scott, Jennifer. Wish I could come, but I'm out of town this weekend.", _
	"", "", "mdi-information", "", 0, "")
	list2.AddItemAvatar("6", "./assets/3.jpg", "Oui oui", "Do you have Paris recommendations? Have you ever been?", "mdi-information", _
	"", "", "", 0, "")
	
	list2.AddItemAvatarIcon("7", "mdi-clipboard-text", "blue", "Vacation Itinerary", "Jan 20, 2014", "", "", "", "", 0, "")
	list2.AddItemAvatarIcon("8", "mdi-gesture-tap-button", "amber", "Kitchen Remodel", "Jan 21, 2014", "", "", "", "", 0, "")
	'
	lists.setdata("icontitle", list2.records)
End Sub


Sub list6_click(item As Map)
	vuetify.ShowSnackBarWarning(item)
End Sub

Sub list5_rightclick(item As Map)
	Dim emails As List = lists.GetData("emails")
	Log(emails)
End Sub


Sub list3_leftcheckclick(item As Map)
	vuetify.ShowSnackBarWarning(item)
End Sub

Sub list3_leftclick(item As Map)
	vuetify.ShowSnackBarWarning(item)
End Sub

Sub list3_rightclick(item As Map)
	vuetify.ShowSnackBarWarning(item)
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