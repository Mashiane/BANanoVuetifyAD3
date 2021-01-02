B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public chkbox As VueComponent
	Public path As String
	Public name As String = "chkbox"
	Private banano As BANano
	Private vcheckboxes As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	chkbox.Initialize(Me, name)
	path = chkbox.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vcheckboxes")
	
	Dim cbnormal As VueElement = vuetify.AddCheckBox(Me, vcheckboxes.MatrixID(1,1), "cbnormal", "cbnormal", "Checkbox", Null, Null, "", Null)
	chkbox.BindVueElement(cbnormal)
	
	Dim btnsn As VueElement = vuetify.AddButton(Me, vcheckboxes.MatrixID(1,2), "btnsn", "Toggle CheckBox", "", False, Null)
	chkbox.BindVueElement(btnsn)
	
'	Dim chk As BANanoElement = BVAD3.NewCheckBox(chkbox, "mycheck", "check1", "My Checkbox", True, False, "green", Null)
'	vcheckboxes.Matrix(1, 1).Empty.Append(chk.GetHTML)
	'
	Dim r2c1 As String = vcheckboxes.MatrixID(2, 1)
	Dim chk1 As VueElement = vuetify.AddCheckBox(Me, r2c1, "mycheck1", "check2", "My Checkbox Add", "Yes", "No", "orange", Null)
	chkbox.BindVueElement(chk1)
	
	Dim btns1 As VueElement = vuetify.AddButton(Me, vcheckboxes.MatrixID(2,2), "btns1", "Toggle Checkbox Yes/No", "", False, Null)
	chkbox.BindVueElement(btns1)
	
	
	'add the component as a router
	vuetify.AddRoute(chkbox)
End Sub

Sub btnsn_click(e As BANanoEvent)
	chkbox.Toggle("cbnormal")
End Sub

Sub cbnormal_change(e As BANanoEvent)
	Dim selItem As String = chkbox.GetData("cbnormal")
	vuetify.ShowSnackBarSuccess(selItem)
End Sub



Sub btns1_click(e As BANanoEvent)
	'get the state of the switch
	Dim cswitch1 As String = chkbox.GetData("check2")
	vuetify.ShowSnackBarSuccess(cswitch1)
	
	Select Case cswitch1
	Case "Yes"
		chkbox.SetData("check2", "No")
	Case "No"
		chkbox.SetData("check2", "Yes")
	End Select
End Sub


Sub mycheck_click(e As BANanoEvent)
	Dim scheck As String = chkbox.getdata("check1")
	vuetify.ShowSnackBarSuccess(scheck)
End Sub

Sub mycheck1_click(e As BANanoEvent)
	Dim scheck As String = chkbox.getdata("check2")
	vuetify.ShowSnackBarSuccess(scheck)
End Sub