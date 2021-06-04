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
	Public name As String = "addrawer"
	Private banano As BANano
	Private VBtn1 As VBtn
	Private VNavigationDrawer1 As VNavigationDrawer
	Private btnCloseDrawer As VBtn
	Private VBtn2 As VBtn
	Private VContainer1 As VContainer
	Private VLabel1 As VLabel
	Private VLabel2 As VLabel
	Private VRow1 As VRow
	Private VTemplate1 As VTemplate
	Private VToolBar1 As VToolBar
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mydrawer")
	'
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(VNavigationDrawer1.VElement)
	about.BindVueElement(btnCloseDrawer.VElement)
	about.BindVueElement(VBtn2.VElement)
	about.BindVueElement(VContainer1.VElement)
	about.BindVueElement(VLabel1.VElement)
	about.BindVueElement(VLabel2.VElement)
	about.BindVueElement(VRow1.VElement)
	about.BindVueElement(VTemplate1.VElement)
	about.BindVueElement(VToolBar1.VElement)
	
	about.SetCreated(Me, "oncreated", Null)
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub oncreated
	'hide the drawer
	VNavigationDrawer1.UpdateVisible(about, False)
End Sub


Private Sub VBtn1_Click (e As BANanoEvent)
	'show the drawer
	VNavigationDrawer1.UpdateVisible(about, True)
End Sub

Private Sub btnCloseDrawer_Click (e As BANanoEvent)
	VNavigationDrawer1.UpdateVisible(about, False)	
End Sub