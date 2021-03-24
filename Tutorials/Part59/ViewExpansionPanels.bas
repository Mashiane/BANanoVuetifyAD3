B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public exppanels As VueComponent
	Public path As String
	Public name As String = "exppanels"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	exppanels.Initialize(Me, name)
	path = exppanels.path
	
	'add a parent container
	Dim cont As VueElement = vuetify.AddContainer(Me, exppanels.here, "exp", True)
	'add 2 rows each with 1 column spanning 12 spaces
	cont.AddRows2.AddColumns12
	'build the grod
	cont.BuildGrid
	
	'add the expansion panel on row 1 column 1
	Dim pp As VueElement = vuetify.AddExpansionPanels(Me, cont.matrixid(1,1), "pp", "pp")
	'make it to popout
	pp.PopOut = True
	'make headers focusable, for more details see the vuetify docs for properties
	pp.Focusable = True
	'
	'create a panel and add it to our expansion panel parent
	Dim signon As VueElement = pp.AddExpansionPanel("signon", "Sign On")
	'add a container inside the panel
	SignOnContainer(signon.ID)
	'add crew detail i.e. header
	Dim crew As VueElement = pp.AddExpansionPanel("crew", "Crew Detail")
	'add another panel
	Dim aeroplane As VueElement = pp.AddExpansionPanel("train", "Aeroplane Detail")
	'
	Dim logs As VueElement = pp.AddExpansionPanel("logs", "Logs")
	'
	Dim crewactivities As VueElement = pp.AddExpansionPanel("crewactivities", "Crew Activities")
	'
	Dim signoff As VueElement = pp.AddExpansionPanel("signoff", "Sign Off")
	'
	Dim overtime As VueElement = pp.AddExpansionPanel("overtime", "Overtime")
	
	'bind the child panels to the expandion panel
	pp.BindVueElement(signon)
	pp.BindVueElement(crew)
	pp.BindVueElement(aeroplane)
	pp.BindVueElement(logs)
	pp.BindVueElement(crewactivities)
	pp.BindVueElement(signoff)
	pp.BindVueElement(overtime)	
	'bind the expansion panel to the component
	exppanels.BindVueElement(pp)
	
	'add the component as a router
	vuetify.AddRoute(exppanels)
End Sub

'this is the child panel content for sign on
Sub SignOnContainer(parentID As String)
	'we create a container
	Dim soc As VueElement = vuetify.AddContainer(Me, parentID, "soc", True)
	'we add 2 rows
	soc.AddRows2.AddColumns12
	'we build the grid
	soc.BuildGrid
	
	'we add elements the normal way etc etc
	vuetify.AddH1(Me, soc.MatrixID(1,1), "h1", "Sign On", vuetify.COLOR_RED, vuetify.INTENSITY_NORMAL)
	
End Sub