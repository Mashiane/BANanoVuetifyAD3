B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public pdfview As VueComponent
	Public path As String
	Public name As String = "pdfview"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	pdfview.Initialize(Me, name)
	path = pdfview.path
	'add a container to the component
	Dim pdfcont As VueElement = pdfview.AddContainer("pdfcont", True)
	pdfcont.StyleHeight = "90vh"
	'add a pdfview to the container
	Dim pdfviewer As VueElement = pdfcont.AddPDFView("pdfviewer", "./assets/BANanoVuetifyAD3forDummies.pdf")
	pdfview.BindVueElement(pdfviewer)
	
	'add the component as a router
	vuetify.AddRoute(pdfview)
End Sub
