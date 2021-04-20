B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public alerts As VueComponent
	Public name As String = "alerts"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private valertcontainer As VueElement
	Private valert1 As VueElement
	Private valert As VueElement
	Private valert2 As VueElement
	Private vbuttontogglesuccess As VueElement
End Sub


Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	alerts.Initialize(Me, name)
	'path placeholder
	path = alerts.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "valertcontainer")
	'bind any available states from the container to this page
	alerts.BindVueElement(valertcontainer)
	'
	valertcontainer.Matrix(1, 1).LoadLayout("valert")
	alerts.BindVueElement(valert)	
'	
	valertcontainer.Matrix(1, 2).LoadLayout("valert1")
	alerts.BindVueElement(valert1)
	'
	valertcontainer.Matrix(2, 1).LoadLayout("valert2")
	alerts.BindVueElement(valert2)
	'load a button to toggle alert
	valertcontainer.Matrix(3, 1).LoadLayout("vbuttontogglealert")
	'bind the button
	alerts.BindVueElement(vbuttontogglesuccess)
	'the success alert should be shown
	alerts.SetData("valert2show", True)
	'
	Dim r3c2 As String = valertcontainer.MatrixID(3, 2)
	Dim alx As VueElement = vuetify.AddAlert(Me, r3c2, "alx", "alxshow", True, "", True, True, vuetify.ALERT_TYPE_WARNING, "", Null)
	alx.AlertBorder = vuetify.ALERT_BORDER_RIGHT
	alx.Dark = True
	alerts.BindVueElement(alx)
	
	'
	vuetify.AddRoute(alerts)
End Sub


Sub vbuttontogglesuccess_Click (e As BANanoEvent)
	alerts.Toggle("valert2show")
End Sub