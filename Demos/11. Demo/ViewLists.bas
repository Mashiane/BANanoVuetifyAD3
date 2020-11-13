B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public lists As VueComponent
	Public name As String = "lists"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vlistcontainer As VueElement
End Sub

Sub Initialize
	'get the reference the app
	vuetify = pgIndex.vuetify
	'initialize the component page
	lists.Initialize(Me, name)
	path = lists.path
	'load the layout
	BANano.LoadLayout("#placeholder", "vlistcontainer")
	'bind any states to the component page
	lists.BindVueElement(vlistcontainer)
	'lets create a grid
	vlistcontainer.AddRows(2).AddColumns2x6
	vlistcontainer.ShowGridDesign = True
	'*** IMPORTANT - lets build the grid
	vlistcontainer.BuildGrid
	'
	lists.AppendPlaceHolder
	vuetify.AddRoute(lists)
End Sub
