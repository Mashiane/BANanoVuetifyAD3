B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public tv As VueComponent
	Public path As String
	Public name As String = "treeview"
	Private banano As BANano
	Private fwcont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	tv.Initialize(Me, name)
	path = tv.path
	'
	fwcont = tv.AddContainer("tvcont", True)
	fwcont.AddRows4.AddColumns2x6
	fwcont.BuildGrid
	
	'to show selected items
	Dim px As VueElement = fwcont.Cell(1, 1).AddParagraph("px", "Selected TreeView {{ tv1selected }}", "", "")
	tv.BindVueElement(px)
	
	'add a treeview
	Dim tv1 As VueElement = fwcont.Cell(2, 1).AddTreeView("tv1", "tv1selected", "tv1records", False, False)
	tv1.Color = vuetify.COLOR_WARNING
	tv1.Hoverable = True
	tv1.ItemDisabled = "disabled"
	tv1.Selectable = True
	tv1.OpenOnClick = True
	tv1.SelectableColor = vuetify.color_red
	tv1.Activatable = True
	tv.BindVueElement(tv1)
	'
	tv1.ClearItems
	'
	tv1.AddTreeViewItem("", "1", "Applications", "", "html", False)
	tv1.AddTreeViewItem("1", "2", "Calendar", "", "txt", False)
	tv1.AddTreeViewItem("1", "3", "Chrome", "", "mdi-clipboard-edit", False)
	tv1.AddTreeViewItem("1", "4", "Webstorm", "", "", False)
	tv1.AddTreeViewItem("", "5", "Documents", "", "mdi-timeline-check-outline", False)
	tv1.AddTreeViewItem("5", "6", "vuetify", "", "", False)
	tv1.AddTreeViewItem("6", "7", "src", "", "", False)
	tv1.AddTreeViewItem("7", "8", "index.html", "", "html", False)
	tv1.AddTreeViewItem("7", "9", "bootstrap.ts", "", "ts", False)
	tv1.AddTreeViewItem("7", "15", "logo.png", "", "png", True)
	tv1.AddTreeViewItem("7", "16", ".gitignore.txt", "", "txt", False)
	tv1.AddTreeViewItem("7", "17", "babel.config.js", "", "js", True)
	tv1.AddTreeViewItem("7", "18", "package.json", "", "json", True)
	tv1.AddTreeViewItem("5", "10", "material2 : ", "", "", False)
	tv1.AddTreeViewItem("10", "11", "src : ", "", "", False)
	tv1.AddTreeViewItem("11", "12", "v-btn.ts", "", "ts", False)
	tv1.AddTreeViewItem("11", "13", "v-card.ts", "", "ts", False)
	tv1.AddTreeViewItem("11", "14", "v-window.ts", "", "ts", False)
	'
	tv1.RefreshTreeView(tv)
	
	'add the component as a router
	vuetify.AddRoute(tv)
End Sub


'active
Sub tv1_updateactive(items As List)
	Dim sCode As String = banano.tojson(items)
	vuetify.showsnackbar("Active: " & sCode)
End Sub

