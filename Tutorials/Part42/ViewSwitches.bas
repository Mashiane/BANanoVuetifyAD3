B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public switches As VueComponent
	Public path As String
	Public name As String = "switches"
	Private banano As BANano
	Private vswitchs As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	switches.Initialize(Me, name)
	path = switches.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vswitches")
	'
	
	Dim switchnormal As VueElement = vuetify.AddSwitch(Me, vswitchs.MatrixID(1,1), "switchnormal", "switchnormal", "Switch", Null, Null, "", False, Null)
	switches.BindVueElement(switchnormal)
	
	Dim btnsn As VueElement = vuetify.AddButton(Me, vswitchs.MatrixID(1,2), "btnsn", "Toggle Switch", "", False, Null)
	switches.BindVueElement(btnsn)
	
	
	Dim switchyesnoa As VueElement = vuetify.AddSwitch(Me, vswitchs.MatrixID(2,1), "switchyesnoa", "switchyesno", "Switch Yes/No", "Yes", "No", "success", False, Null)
	switches.BindVueElement(switchyesnoa)
	
	Dim btns1 As VueElement = vuetify.AddButton(Me, vswitchs.MatrixID(2,2), "btns1", "Toggle Switch Yes/No", "", False, Null)
	switches.BindVueElement(btns1)
	'
	Dim switchtruefalsea As VueElement = vuetify.AddSwitch(Me, vswitchs.MatrixID(3,1), "switchtruefalsea", "switchtruefalse", "Switch 1/0", "1", "0", "primary", True, Null)
	switches.BindVueElement(switchtruefalsea)
	
	Dim btns2 As VueElement = vuetify.AddButton(Me, vswitchs.MatrixID(3,2), "btns2", "Toggle Switch 1/0", "", False, Null)
	switches.BindVueElement(btns2)
	
	
	Dim r4c1 As String = vswitchs.MatrixID(4, 1)
	Dim myswitch1 As VueElement = vuetify.AddSwitch(Me, r4c1, "myswitch1", "myswitch2", "TheMash Switch 2", "Yes", "No", "green", False, CreateMap(":loading":True))
	switches.BindVueElement(myswitch1)
		
	'add the component as a router
	vuetify.AddRoute(switches)
End Sub

Sub btnsn_click(e As BANanoEvent)
	switches.Toggle("switchnormal")
End Sub

Sub switchnormal_change(e As BANanoEvent)
	Dim selItem As String = switches.GetData("switchnormal")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub


Sub switchyesnoa_change(e As BANanoEvent)
	Dim selItem As String = switches.GetData("switchyesno")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub

Sub myswitch_change(e As BANanoEvent)
	Dim selItem As String = switches.GetData("myswitch1")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub

Sub btns1_click(e As BANanoEvent)
	'get the state of the switch
	Dim cswitch1 As String = switches.GetData("switchyesno")
	vuetify.ShowSnackBarSuccess(cswitch1)
	
	Select Case cswitch1
	Case "Yes"
		switches.SetData("switchyesno", "No")
	Case "No"
		switches.SetData("switchyesno", "Yes")
	End Select
End Sub

Sub btns2_click(e As BANanoEvent)
	Dim cswitch1 As String = switches.GetData("switchtruefalse")
	vuetify.ShowSnackBarSuccess(cswitch1)
	
	Select Case cswitch1
	Case "1"
		switches.SetData("switchtruefalse", "0")
	Case "0"
		switches.SetData("switchtruefalse", "1")
	End Select
End Sub
