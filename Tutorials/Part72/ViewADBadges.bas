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
	Public name As String = "adbadges"
	Private banano As BANano
	Private VContainer1 As VContainer
	Private VBadge1 As VBadge
	Private VBadge2 As VBadge
	Private VBadge4 As VBadge
	Private VBadge5 As VBadge
	Private VBtn1 As VBtn
	Private badger1 As VRow
	Private VBadge3 As VBadge
	Private VCol1 As VCol
	Private VCol2 As VCol
	Private VCol3 As VCol
	Private VRow1 As VRow
	Private VRow2 As VRow
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mybadges")
	'
	about.BindVueElement(VContainer1.VElement)
	about.BindVueElement(VBadge1.VElement)
	about.BindVueElement(VBadge2.VElement)
	about.BindVueElement(VBadge4.VElement)
	about.BindVueElement(VBadge5.VElement)
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(badger1.VElement)
	about.BindVueElement(VBadge3.VElement)
	about.BindVueElement(VCol1.VElement)
	about.BindVueElement(VCol2.VElement)
	about.BindVueElement(VCol3.VElement)
	about.BindVueElement(VRow1.VElement)
	about.BindVueElement(VRow2.VElement)

	
	VBadge2.UpdateValue(about, 5)
	VBadge5.UpdateValue(about, 6)
		
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

