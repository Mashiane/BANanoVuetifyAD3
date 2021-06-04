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
	Public name As String = "adalerts"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private alertlabel1 As VLabel
	Private alertlabel2 As VLabel
	Private alertr1 As VRow
	Private alertscontainer As VContainer
	Private VAlert1 As VAlert
	Private VAlert2 As VAlert
	Private VAlert3 As VAlert
	Private VAlert4 As VAlert
	Private VAlert5 As VAlert
	Private VAlert6 As VAlert
	Private VAlert7 As VAlert
	Private VAlert8 As VAlert
	Private alertlabel1 As VLabel
	Private alertlabel2 As VLabel
	Private alertr1 As VRow
	Private alertscontainer As VContainer
	Private VAlert1 As VAlert
	Private VAlert2 As VAlert
	Private VAlert3 As VAlert
	Private VAlert4 As VAlert
	Private VAlert5 As VAlert
	Private VAlert6 As VAlert
	Private VAlert7 As VAlert
	Private VAlert8 As VAlert
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myalerts")
	'
	about.BindVueElement(VAlert1.VElement)
	about.BindVueElement(VAlert2.VElement)
	about.BindVueElement(VAlert3.VElement)
	about.BindVueElement(VAlert4.VElement)
	about.BindVueElement(VAlert5.VElement)
	about.BindVueElement(VAlert6.VElement)
	about.BindVueElement(VAlert7.VElement)
	about.BindVueElement(VAlert8.VElement)
	about.BindVueElement(alertlabel1.VElement)
	about.BindVueElement(alertlabel2.VElement)
	about.BindVueElement(alertr1.VElement)
	about.BindVueElement(alertscontainer.VElement)
	about.BindVueElement(VAlert1.VElement)
	about.BindVueElement(VAlert2.VElement)
	about.BindVueElement(VAlert3.VElement)
	about.BindVueElement(VAlert4.VElement)
	about.BindVueElement(VAlert5.VElement)
	about.BindVueElement(VAlert6.VElement)
	about.BindVueElement(VAlert7.VElement)
	about.BindVueElement(VAlert8.VElement)

	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

