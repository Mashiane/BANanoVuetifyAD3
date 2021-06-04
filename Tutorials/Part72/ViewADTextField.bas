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
	Public name As String = "adtextfield"
	Private banano As BANano
	Private VTextField1 As VTextField
	Private VTextField2 As VTextField
	Private VTextField3 As VTextField
	Private VTextField4 As VTextField
	Private VTextField5 As VTextField
	Private VTextField6 As VTextField
	Private VTextField7 As VTextField
	Private VTextField8 As VTextField
	Private VTextField9 As VTextField
	Private VTextField10 As VTextField
	Private VCol1 As VCol
	Private VCol10 As VCol
	Private VCol2 As VCol
	Private VCol3 As VCol
	Private VCol4 As VCol
	Private VCol5 As VCol
	Private VCol6 As VCol
	Private VCol7 As VCol
	Private VCol8 As VCol
	Private VCol9 As VCol
	Private VContainer1 As VContainer
	Private VForm1 As VForm
	Private VRow1 As VRow
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mytextfields")
	'
	about.BindVueElement(VTextField1.VElement)
about.BindVueElement(VTextField2.VElement)
about.BindVueElement(VTextField3.VElement)
about.BindVueElement(VTextField4.VElement)
about.BindVueElement(VTextField5.VElement)
about.BindVueElement(VTextField6.VElement)
about.BindVueElement(VTextField7.VElement)
about.BindVueElement(VTextField8.VElement)
about.BindVueElement(VTextField9.VElement)
about.BindVueElement(VTextField10.VElement)
about.BindVueElement(VCol1.VElement)
about.BindVueElement(VCol10.VElement)
about.BindVueElement(VCol2.VElement)
about.BindVueElement(VCol3.VElement)
about.BindVueElement(VCol4.VElement)
about.BindVueElement(VCol5.VElement)
about.BindVueElement(VCol6.VElement)
about.BindVueElement(VCol7.VElement)
about.BindVueElement(VCol8.VElement)
about.BindVueElement(VCol9.VElement)
about.BindVueElement(VContainer1.VElement)
about.BindVueElement(VForm1.VElement)
about.BindVueElement(VRow1.VElement)

	
		
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub


Private Sub VTextField9_ClickAppend (e As BANanoEvent)
	VTextField9.TogglePassword(about)
End Sub