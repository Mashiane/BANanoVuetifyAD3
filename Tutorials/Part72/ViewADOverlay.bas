B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.95
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adoverlay"
	Private banano As BANano
	Private VBtn1 As VBtn
	Private VOverlay1 As VOverlay
	Private VBtn2 As VBtn
	Private VOverlay2 As VOverlay
	Private VProgressCircular1 As VProgressCircular
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myoverlay")
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(VOverlay1.VElement)
	about.BindVueElement(VBtn2.VElement)
	about.BindVueElement(VOverlay2.VElement)
	about.BindVueElement(VProgressCircular1.VElement)
	
	'watch the state of the overlay
	about.SetWatch(VOverlay1.VModel, True, True, Me, "changeoverlay", Null)	
	'
	about.SetWatch(VOverlay2.VModel, True, True, Me, "changeoverlay2", Null)	
	'
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub changeoverlay
	'get the value of the overlay
	Dim boverlay As Boolean = about.GetData(VOverlay1.vmodel)
	'if its hidden return
	If boverlay = False Then Return
	'hide the overlay after 2 seconds
	about.SetTimeOut("hideoverlay", 2000)
End Sub

Sub changeoverlay2
	'get the value of the overlay
	Dim boverlay As Boolean = about.GetData(VOverlay2.vmodel)
	'if its hidden return
	If boverlay = False Then Return
	'hide the overlay after 2 seconds
	about.SetTimeOut("hideoverlay2", 3000)
End Sub


Sub hideoverlay2
	VOverlay2.Visible(about, False)
End Sub

Sub hideoverlay
	VOverlay1.Visible(about, False)
End Sub

Private Sub VBtn1_Click (e As BANanoEvent)
	VOverlay1.Visible(about, True)
End Sub

Private Sub VBtn2_Click (e As BANanoEvent)
	VOverlay1.Visible(about, True)
End Sub