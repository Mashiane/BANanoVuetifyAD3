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
	Public name As String = "adbreadcrumbs"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private VBreadCrumbs1 As VBreadCrumbs
	Private VBreadCrumbs2 As VBreadCrumbs
	Private VBreadCrumbs3 As VBreadCrumbs
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mybreadcrumbs")
	
	about.BindVueElement(VBreadCrumbs1.VElement)
	about.BindVueElement(VBreadCrumbs2.VElement)
	about.BindVueElement(VBreadCrumbs3.VElement)
	
	about.SetMounted(Me, "onmount", Null)
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub onmount
	VBreadCrumbs1.Clear(about)
	VBreadCrumbs2.Clear(about)
	VBreadCrumbs3.Clear(about)

	VBreadCrumbs1.AddItem("1", "Dashboard", "", "", False, True, False)
	VBreadCrumbs1.AddItem("2", "Link 1", "", "", False, False, False)
	VBreadCrumbs1.AddItem("3", "Link 2", "", "", False, True, True)
	VBreadCrumbs1.Refresh(about)
	'
	
	
End Sub
