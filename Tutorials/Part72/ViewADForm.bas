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
	Public name As String = "adform"
	Private banano As BANano
	Private btnReset As VBtn
	Private btnResetValidation As VBtn
	Private btnSubmit As VBtn
	Private btnValidate As VBtn
	Private frmuser As VForm
	Private txtemail As VTextField
	Private txtfirstname As VTextField
	Private txtlastname As VTextField
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myform")
	'initialie the data
	about.SetData("user", about.NewMap)
	
	txtfirstname.AddRule("checkfirstname")
	txtlastname.AddRule("checklastname")
	txtemail.AddRule("checkemail")
		
	'bind elements
	about.BindVueElement(btnReset.VElement)
	about.BindVueElement(btnResetValidation.VElement)
	about.BindVueElement(btnSubmit.VElement)
	about.BindVueElement(btnValidate.VElement)
	about.BindVueElement(frmuser.VElement)
	about.BindVueElement(txtemail.VElement)
	about.BindVueElement(txtfirstname.VElement)
	about.BindVueElement(txtlastname.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub checkfirstname(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "This first name is required!"
Else
Return True
End If
End Sub

Sub checklastname(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "This last name is required!"
Else
Return True
End If
End Sub

Sub checkemail(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "This email is required!"
Else
Return True
End If
End Sub

Private Sub btnValidate_Click (e As BANanoEvent)
	about.refs = vuetify.getrefs
	Dim bValid As Boolean = frmuser.Validate(about)
	vuetify.ShowSwal(bValid)
End Sub

Private Sub btnSubmit_Click (e As BANanoEvent)
	about.refs = vuetify.getrefs
	'read the entered details
	Dim user As Map = about.GetData("user")
	Log(user)
	vuetify.ShowSwal(banano.ToJson(user))
End Sub

Private Sub btnResetValidation_Click (e As BANanoEvent)
	about.refs = vuetify.getrefs
	frmuser.ResetValidation(about)
End Sub

Private Sub btnReset_Click (e As BANanoEvent)
	about.refs = vuetify.getrefs
	frmuser.Reset(about)
End Sub