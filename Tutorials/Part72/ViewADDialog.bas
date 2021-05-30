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
	Public name As String = "addialog"
	Private banano As BANano
	Private VBtn1 As VBtn
	Private VDialog1 As VDialog
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mydialogs")
	
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(VDialog1.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Private Sub VBtn1_Click (e As BANanoEvent)
	VDialog1.UpdateVisible(about, True)
End Sub

Private Sub VDialog1_ok_click (e As BANanoEvent)
	VDialog1.UpdateVisible(about, False)
	vuetify.ShowSwal("Ok click")
End Sub

Private Sub VDialog1_cancel_click (e As BANanoEvent)
	VDialog1.UpdateVisible(about, False)
	vuetify.ShowSwal("Cancel click")
End Sub