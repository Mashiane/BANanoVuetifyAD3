B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public cards As VueComponent
	Public path As String
	Public name As String = "cards"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	cards.Initialize(Me, name)
	path = cards.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vdialogs")
	
	'add the component as a router
	vuetify.AddRoute(cards)
End Sub

