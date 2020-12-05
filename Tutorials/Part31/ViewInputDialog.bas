B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public inputdialog As VueComponent
	Public path As String
	Public name As String = "inputdialog"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	inputdialog.Initialize(Me, name)
	path = inputdialog.path
		'
	CreateDialog1
	
	'
	Dim vcontainer As VueElement = vuetify.AddContainer(Me, inputdialog.Here, "inputd", True)
	vcontainer.AddRows3.AddColumns4x3
	'vcontainer.ShowGridDesign = True
	vcontainer.BuildGrid
	'
	'add a trigger
	Dim btn1 As VueElement = vuetify.AddButton(Me, vcontainer.MatrixID(1, 1), "btn1", "Open Dialog 1", "primary", False, Null)
	inputdialog.BindVueElement(btn1)
	
	'add the component as a router
	vuetify.AddRoute(inputdialog)
End Sub

''show dlg 1
Sub btn1_click(e As BANanoEvent)
	inputdialog.DialogUpdateTitle("dlg1", "Add User Profile")
	inputdialog.OpenDialog("dlg1")
End Sub


'create the dialog
Sub CreateDialog1
	Dim dlg1 As VueElement = vuetify.AddDialogInput(Me, inputdialog.Here, "dlg1", True, "600", "Dialog 1", "Save", "primary", "Cancel", "error")
	inputdialog.BindVueElement(dlg1)
	
	'get the container in the dialog, we will add child elements to ut.
	Dim dlg1Cnt As VueElement = inputdialog.DialogContainer("dlg1")
	'
	dlg1Cnt.ShowGridDesign = True
	dlg1Cnt.AddRows1.AddColumns3x4
	dlg1Cnt.AddRows2.AddColumns2x6
	dlg1Cnt.BuildGrid
	
	'initialize the profile contents
	inputdialog.SetData("profile", vuetify.NewMap)
	
	'*R1
	Dim txtfname As VueElement
	txtfname = vuetify.AddTextField(Me, dlg1Cnt.MatrixID(1, 1), "txtfname", "profile.firstname", _
	"First Name*", "", True, "", 0, "", Null)
	inputdialog.BindVueElement(txtfname)
	'
	Dim txtmname As VueElement
	txtmname = vuetify.AddTextField(Me, dlg1Cnt.MatrixID(1, 2), "txtmname", "profile.middlename", _
	"Middle Name", "", True, "", 0, "", Null)
	inputdialog.BindVueElement(txtmname)
	'
	Dim txtlname As VueElement
	txtlname = vuetify.AddTextField(Me, dlg1Cnt.MatrixID(1, 3), "txtlname", "profile.lastname", _
	"Last Name*", "", True, "", 0, "", Null)
	inputdialog.BindVueElement(txtlname)
	
	'R2
	Dim txtemail As VueElement
	txtemail = vuetify.AddTextField(Me, dlg1Cnt.MatrixID(2, 1), "txtemail", "profile.email", _
	"Email*", "", True, "", 0, "", Null)
	inputdialog.BindVueElement(txtemail)
	'
	Dim txtpwd As VueElement
	txtpwd = vuetify.AddPassword(Me, dlg1Cnt.MatrixID(2, 2), "txtpwd", "profile.password", "Password", "", True, "", 0, "", Null)
	inputdialog.BindVueElement(txtpwd)
	
	'R3
	Dim selAge As VueElement
	selAge = vuetify.AddSelect(Me, dlg1Cnt.MatrixID(3, 1), "selage", "profile.age", "Age*", True, False, "", "agelist", "id", "text", False, "", Null)
	inputdialog.BindVueElement(selAge)
	'
	Dim ageList1 As List = inputdialog.NewList
	ageList1.AddAll(Array("0-17", "18-29", "30-54", "54+"))
	' convert a list to a key value pair
	Dim ageList As List = vuetify.ListToDataSource("id", "text", ageList1)
	inputdialog.SetData("agelist", ageList)
	
	Dim selInterests As VueElement
	selInterests = vuetify.AddAutoComplete(Me, dlg1Cnt.MatrixID(3, 2), "selinterests", "profile.interests", "Interests", _
	True, True, "", "interestsList", "id", "text", False, "", Null)
	inputdialog.BindVueElement(selInterests)
	'
	Dim interestsList1 As List = inputdialog.NewList
	interestsList1.AddAll(Array("Skiing", "Ice hockey", "Soccer", "Basketball", "Hockey", "Reading"))
	interestsList1.AddAll(Array("Writing", "Coding", "Basejump"))
	' convert a list to a key value pair
	Dim interestsList As List = vuetify.ListToDataSource("id", "text", interestsList1)
	inputdialog.SetData("interestsList", interestsList)
	
	
End Sub

Sub dlg1ok_click(e As BANanoEvent)
	'get the entered user profile
	Dim profile As Map = inputdialog.GetData("profile")
	'show content on snack bar
	vuetify.ShowSnackBarSuccess(profile)
	'close the dialog
	inputdialog.CloseDialog("dlg1")
End Sub

Sub dlg1cancel_click(e As BANanoEvent)
	'close the dialog
	inputdialog.CloseDialog("dlg1")
End Sub