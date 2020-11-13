B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public signin As VueComponent
	Public name As String = "signin"
	Private BANano As BANano
	Private vuetify As VuetifyApp
	Private btnsignin As VueElement
	Private signinemail As VueElement
	Private signinpassword As VueElement
	Private signinform As VueElement
	Private fb As BANanoFireStoreDB
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	signin.Initialize(Me, name)
	'
	BANano.LoadLayout("#placeholder", "vsignin")
	signin.BindVueElement(signinform)
	signin.BindVueElement(signinemail)
	signin.BindVueElement(signinpassword)
	signin.BindVueElement(btnsignin)
	signin.AppendPlaceHolder
	'
	signin.SetData("email", "")
	signin.SetData("password", "")
	signin.SetData("signinvalid", False)
	signin.SetData("emailrules", signin.NewList)
	signin.SetData("passwordrules", signin.NewList)
	'
	signin.AddRule("emailrules", Me, "emailrequired")
	signin.AddRule("passwordrules", Me, "passwordlength")
	signin.AddRule("passwordrules", Me, "passwordrequired")
		
	signin.AppendPlaceHolder
	
	vuetify.AddRoute(signin)
End Sub


'rule for the email required
Sub emailrequired(v As String) As Object  'IgnoreDeadCode
	v = v.trim
	If v = "" Then
		Return "The email is required!"
	Else
		Return True
	End If
End Sub

Sub passwordlength(v As String) As Object   'IgnoreDeadCode
	v = v.trim
	If v.Length < 6 Then
		Return "The password length should be more than 6 characters!"
	Else
		Return True
	End If
End Sub

'rule for the email required
Sub passwordrequired(v As String) As Object   'IgnoreDeadCode
	v = v.trim
	If v = "" Then
		Return "The password is required!"
	Else
		Return True
	End If
End Sub


Sub btnsignin_Click (e As BANanoEvent)
	'get the vmodel values
	Dim semail As String = signin.GetData("email")
	Dim spassword As String = signin.getdata("password")
	If semail = "" Or spassword = "" Then
		vuetify.ShowSnackBarError("The email and password should be specified!")
		Return
	End If
	'try and sign in to fire base
	fb = pgIndex.fb
	'register a user (enable authentication)
	Dim regResponse As Map
	Dim regError As Map
	'create a user using the email and password
	Dim reguser As BANanoPromise = fb.signInWithEmailAndPassword(semail, spassword)
	reguser.Then(regResponse)
	'get user details
	Dim user As Map = fb.CurrentUser
	'save the user details
	vuetify.SetStore("user", user)
	'mark the user as authenticated
	vuetify.SetStore("isAuthenticated", True)
	'navigate to profile of the user
	vuetify.NavigateTo("/about")
	reguser.Else(regError)
	vuetify.SetStore("user", Null)
	vuetify.SetStore("isAuthenticated", False)
	'there was an error
	Dim message As String = fb.GetMessage(regError)
	vuetify.ShowSnackBarError(message)
	reguser.End
End Sub