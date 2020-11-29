B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public grids2 As VueComponent
	Public name As String = "grids2"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vgrid As VueElement
End Sub


Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	grids2.Initialize(Me, name)
	'path placeholder
	path = grids2.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "vgrid2")
	
	grids2.AppendPlaceHolder
	vuetify.AddRoute(grids2)
End Sub

