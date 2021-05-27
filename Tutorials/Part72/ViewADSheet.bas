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
	Public name As String = "adsheets"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private VSheet1 As VSheet
	Private VSheet2 As VSheet
	Private VSheet3 As VSheet
	Private VSheet4 As VSheet
	Private VSheet5 As VSheet
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mysheets")
	
	Log(VSheet2.VElement.ToString)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

