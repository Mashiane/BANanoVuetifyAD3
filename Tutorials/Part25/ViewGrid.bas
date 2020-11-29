B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public grids As VueComponent
	Public name As String = "grids"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vgrid As VueElement
End Sub


Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	grids.Initialize(Me, name)
	'path placeholder
	path = grids.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "vgrid")
	'
	Dim txt1 As BANanoElement 
	txt1 = BVAD3.NewTextField(grids, "txt1", _
	"firstname", "First Name", "First Name", False, "", 20, "Enter a first name", Null)
	vgrid.Matrix(1, 1).Append(txt1.GetHTML)
	'
	Dim txt2 As BANanoElement
	txt2 = BVAD3.NewTextField(grids, "txt2", _
	"lastname", "Last Name", "Last Name", False, "", 20, "Enter a last name", Null)
	vgrid.Matrix(1, 2).Append(txt1.GetHTML)
	
	Dim btn As BANanoElement
	btn = BVAD3.NewButton(grids, "btnOk", "Apply", _
	vuetify.COLOR_GREEN, True, Null)
	vgrid.Matrix(1,3).Append(btn.GetHTML)
	
	grids.AppendPlaceHolder
	vuetify.AddRoute(grids)
End Sub

Sub btnOK_click(e As BANanoElement)
	'get the entered value for lastname
	Dim ln As String = grids.GetData("lastname")
	Dim fn As String = grids.GetData("firstname")
	
	vuetify.ShowSnackBarError(fn & "-" & ln)
End Sub

