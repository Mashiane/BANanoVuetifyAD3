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
	Public name As String = "adtreeview"
	Private banano As BANano
	Private VTreeView1 As VTreeView
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mytreeview")
	'
	about.BindVueElement(VTreeView1.VElement)
	'
	about.SetMounted(Me, "onmounted", Null)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub onmounted
	VTreeView1.Clear(about)
	VTreeView1.AddItem("", "1", "Applications", "", "html", False)
	VTreeView1.AddItem("1", "2", "Calendar", "", "js", False)
    VTreeView1.AddItem("1", "3", "Chrome", "", "pdf", False)
    VTreeView1.AddItem("1", "4", "Webstorm", "", "png", False)
	VTreeView1.Refresh(about)
End Sub

'extm.Put("html", "mdi-language-html5")
'	extm.Put("js", "mdi-nodejs")
'	extm.Put("json", "mdi-code-json")
'	extm.Put("md", "mdi-markdown")
'	extm.Put("pdf", "mdi-file-pdf")
'	extm.Put("png", "mdi-file-image")
'	extm.Put("txt", "mdi-file-document-outline")
'	extm.Put("xls", "mdi-file-excel")
'	extm.Put("csv", "mdi-file-delimited-outline")
'	extm.Put("pre", "mdi-file-code-outline")
'	extm.Put("code", "mdi-file-code-outline")
'	extm.Put("doc", "mdi-file-word-box-outline")
'	extm.Put("mp3", "mdi-file-music-outline")
'	extm.Put("folder", "mdi-folder")
'	extm.Put("woff", "marketweb-webfont.woff")
'	extm.Put("css", "mdi-language-css3")

Private Sub VTreeView1_Input (items As List)
	vuetify.ShowSwal("Input: " & banano.ToJson(items))
End Sub

Private Sub VTreeView1_UpdateActive (items As List)
	vuetify.ShowSwal("Update Active: " & banano.ToJson(items))
	
End Sub

Private Sub VTreeView1_UpdateOpen (items As List)
	vuetify.ShowSwal("Update Open: " & banano.ToJson(items))
	
End Sub