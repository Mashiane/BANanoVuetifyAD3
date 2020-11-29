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
	
	Dim myswitch As BANanoElement = BVAD3.NewSwitch(switches, "myswitch", "myswitch1", "TheMash Switch", "Yes", "No", "green", True, Null)
	vswitchs.Matrix(1, 1).Empty.Append(myswitch.GetHTML)
	
	
	'add the placeholder content to the template
	switches.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(switches)
End Sub

Sub myswitch_change(e As BANanoEvent)
	Dim selItem As String = switches.GetData("myswitch1")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub