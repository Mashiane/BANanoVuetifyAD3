B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public progressindicators As VueComponent
	Public path As String
	Public name As String = "progressindicators"
	Private banano As BANano
	Private progresscontainer As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	progressindicators.Initialize(Me, name)
	path = progressindicators.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vprogresscontainer")
	'
	Dim prg1 As VueElement = vuetify.AddProgressCircular(Me, progresscontainer.MatrixID(1,1), "prg1", "prg1value", "{{ prg1value }}", "green", Null)
	prg1.Size = 70
	progressindicators.BindVueElement(prg1)
	'
	Dim prg2 As VueElement = vuetify.AddProgressCircular(Me, progresscontainer.MatrixID(1,2), "prg2", "prg2value", "{{ prg2value }}", "teal", Null)
	prg2.Size = 80
	progressindicators.BindVueElement(prg2)
	'
	Dim prg3 As VueElement = vuetify.AddProgressCircular(Me, progresscontainer.MatrixID(2,1), "prg3", "prg3value", "{{ prg3value }}", "orange", Null)
	prg3.Size = 90
	progressindicators.BindVueElement(prg3)
	'
	Dim prg4 As VueElement = vuetify.AddProgressLinear(Me, progresscontainer.MatrixID(2,2), "prg4", "prg4value", "red", Null)
	prg4.Indeterminate = True
	progressindicators.BindVueElement(prg4)
	'
	Dim prg5 As VueElement = vuetify.AddProgressLinear(Me, progresscontainer.MatrixID(3,1), "prg5", "prg5value", "light-blue", Null)
	prg5.Striped = True
	progressindicators.BindVueElement(prg5)
	'
		
	progressindicators.SetData("prg1value", 10)
	progressindicators.SetData("prg2value", 20)
	progressindicators.SetData("prg3value", 30)
	progressindicators.SetData("prg4value", 40)
	progressindicators.SetData("prg5value", 50)
	
	
	'add the component as a router
	vuetify.AddRoute(progressindicators)
End Sub
