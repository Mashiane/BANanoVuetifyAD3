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
	Public name As String = "adskeletons"
	Private banano As BANano
	Private VSkeletonLoader1 As VSkeletonLoader
	Private VSkeletonLoader2 As VSkeletonLoader
	Private VSkeletonLoader3 As VSkeletonLoader
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myskeletons")
	'
	about.BindVueElement(VSkeletonLoader1.VElement)
	about.BindVueElement(VSkeletonLoader2.VElement)
	about.BindVueElement(VSkeletonLoader3.VElement)
	
	VSkeletonLoader2.Clear(about)
	VSkeletonLoader2.CardAvatar.Article.Actions
	VSkeletonLoader2.Refresh(about)
	'
	VSkeletonLoader3.Clear(about)
	VSkeletonLoader3.TableHeading.ListItemTwoLine.Image.TableTfoot
	VSkeletonLoader3.Refresh(about)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub
