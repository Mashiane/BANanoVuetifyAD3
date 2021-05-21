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
	Public name As String = "adspeed"
	Private banano As BANano
	Private VSpeedDial1 As VSpeedDial
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	Dim contfab1 As VueElement = about.Page.AddContainer("contfab2", True)
	banano.LoadLayout(contfab1.Here, "speeds")
	
	'*IMPORTANT
	about.BindVueElement(VSpeedDial1.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VSpeedDial1_Click (id As String)
	vuetify.ShowSwalNotificationWarning(id, 1000)
End Sub