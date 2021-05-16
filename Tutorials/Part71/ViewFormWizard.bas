B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public formwizard As VueComponent
	Public path As String
	Public name As String = "formwizard"
	Private banano As BANano
	Private fwcont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	formwizard.Initialize(Me, name)
	path = formwizard.path
	'
	fwcont = formwizard.AddContainer("fwcont", True)
	fwcont.AddRows5.AddColumns2x6
	fwcont.BuildGRid
	'
	BuildFW1
	BuildFW2
	BuildFW3
	BuildFW4
	
	'add the component as a router
	vuetify.AddRoute(formwizard)
End Sub

Sub BuildFW1
	Dim fw1 As VueElement = fwcont.Cell(1,1).AddFormWizard("fw1","Register"," ")
	fw1.OnComplete("")
	fw1.Color = vuetify.GetHexColor(vuetify.color_blue, vuetify.INTENSITY_NORMAL)
	'
	formwizard.BindVueElement(fw1)
	'
	Dim fw1tb1 As VueElement = fw1.AddTabContent("fwtb1", "ti-user", "My Pickup")
	fw1tb1.Caption = "My first tab..."
	fw1tb1.OnBeforeChange
	formwizard.BindVueElement(fw1tb1)
	'
	Dim fw1tb2 As VueElement = fw1.AddTabContent("fwtb2", "mdi mdi-grass", "My Grass")
	fw1tb2.Caption = "My second tab..."
	'
	Dim fw1tb3 As VueElement = fw1.AddTabContent("fwtb3", "ti-check", "My Cart")
	fw1tb3.Caption = "My third tab..."
End Sub

Sub fwtb1_beforechange As Boolean
	vuetify.ShowSnackBarSuccess("Before a change!")
	Return True
End Sub

Sub fw1_oncomplete
	vuetify.ShowSnackBarSuccess("Form Wizard 1 done!")
End Sub

Sub BuildFW2
	Dim fw2 As VueElement = fwcont.Cell(1,2).AddFormWizard("fw2","Register"," ")
	fw2.OnComplete("")
	fw2.SquareShape
	fw2.Color = vuetify.GetHexColor(vuetify.COLOR_RED, vuetify.INTENSITY_NORMAL)
	'
	formwizard.BindVueElement(fw2)
	'
	Dim fw2tb1 As VueElement = fw2.AddTabContent("fw2tb1", "ti-user", "My Pickup")
	fw2tb1.Caption = "My first tab..."
	'
	Dim fw2tb2 As VueElement = fw2.AddTabContent("fw2tb2", "mdi mdi-grass", "My Grass")
	fw2tb2.Caption = "My second tab..."
	'
	Dim fw2tb3 As VueElement = fw2.AddTabContent("fw2tb3", "ti-check", "My Cart")
	fw2tb3.Caption = "My third tab..."
End Sub

Sub BuildFW3
	Dim fw3 As VueElement = fwcont.Cell(2,1).AddFormWizard("fw3","Register"," ")
	fw3.OnComplete("")
	fw3.TabShape
	fw3.Color = vuetify.GetHexColor(vuetify.COLOR_GREEN, vuetify.INTENSITY_NORMAL)
	'
	formwizard.BindVueElement(fw3)
	'
	Dim fw3tb1 As VueElement = fw3.AddTabContent("fw3tb1", "ti-user", "My Pickup")
	fw3tb1.Caption = "My first tab..."
	'
	Dim fw3tb2 As VueElement = fw3.AddTabContent("fw3tb2", "mdi mdi-grass", "My Grass")
	fw3tb2.Caption = "My second tab..."
	'
	Dim fw3tb3 As VueElement = fw3.AddTabContent("fw3tb3", "ti-check", "My Cart")
	fw3tb3.Caption = "My third tab..."
End Sub

Sub BuildFW4
	Dim fw4 As VueElement = fwcont.Cell(2,2).AddFormWizard("fw4","Register"," ")
	fw4.OnComplete("")
	fw4.TabShape
	fw4.BackButtonText = "Go back!"
    fw4.NextButtonText = "Go next!"
    fw4.FinishButtonText = "We're there"
	
	fw4.Color = vuetify.GetHexColor(vuetify.COLOR_BROWN, vuetify.INTENSITY_NORMAL)
	'
	formwizard.BindVueElement(fw4)
	'
	Dim fw4tb1 As VueElement = fw4.AddTabContent("fw4tb1", "ti-user", "My Pickup")
	fw4tb1.Caption = "My first tab..."
	'
	Dim fw4tb2 As VueElement = fw4.AddTabContent("fw4tb2", "mdi mdi-grass", "My Grass")
	fw4tb2.Caption = "My second tab..."
	'
	Dim fw4tb3 As VueElement = fw4.AddTabContent("fw4tb3", "ti-check", "My Cart")
	fw4tb3.Caption = "My third tab..."
End Sub