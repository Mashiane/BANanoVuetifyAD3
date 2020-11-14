B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public alert As VueComponent
	Public name As String = "alert"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private valertcontainer As VueElement
	Private valert1 As VueElement
	Private valert As VueElement
	Private valert2 As VueElement
End Sub


Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	alert.Initialize(Me, name)
	'path placeholder
	path = alert.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout("#placeholder", "valertcontainer")
	'bind any available states from the container to this page
	alert.BindVueElement(valertcontainer)
	'
	valertcontainer.Matrix(1, 1).LoadLayout("valert")
	alert.BindVueElement(valert)	
'	
	valertcontainer.Matrix(1, 2).LoadLayout("valert1")
	alert.BindVueElement(valert1)
	'
	valertcontainer.Matrix(2, 1).LoadLayout("valert2")
	alert.BindVueElement(valert2)
	
	alert.AppendPlaceHolder
	vuetify.AddRoute(alert)
End Sub
