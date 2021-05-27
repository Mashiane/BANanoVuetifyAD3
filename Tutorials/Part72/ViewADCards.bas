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
	Public name As String = "adcards"
	Private banano As BANano
	Private VCard3 As VCard
	Private VCard1 As VCard
	Private VCard2 As VCard
	Private VCard4 As VCard
	Private VCard5 As VCard
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycards")
	'load the profile
	banano.LoadLayoutAppend(VCard3.CardImage.Here, "myprofile")
	'
	about.BindVueElement(VCard1.VElement)
	about.BindVueElement(VCard2.VElement)
	about.BindVueElement(VCard3.VElement)
	about.BindVueElement(VCard4.VElement)
	about.BindVueElement(VCard5.VElement)
	
	Log(VCard4.VElement.ToString)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VCard4_Click (e As BANanoEvent)
	
End Sub