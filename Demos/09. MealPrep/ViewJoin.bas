B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public signup As VueComponent
	Public name As String = "signup"
	Private BANano As BANano
	Private vuetify As VuetifyApp
	Private joinform As VueElement
	Private joinemail As VueElement
	Private joinpassword As VueElement
	Private btnsignup As VueElement
	Private fb As BANanoFireStoreDB
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	signup.Initialize(Me, name)
	'
	BANano.LoadLayout("#placeholder", "vjoin")
	signup.BindVueElement(joinform)
	signup.BindVueElement(joinemail)
	signup.BindVueElement(joinpassword)
	signup.BindVueElement(btnsignup)
	signup.AppendPlaceHolder
	'
	signup.SetData("email", "")
	signup.SetData("password", "")
	signup.SetData("signupvalid", False)
	signup.SetData("emailrules", signup.NewList)
	signup.SetData("passwordrules", signup.NewList)
	'
	signup.AddRule("emailrules", Me, "emailrequired")
	signup.AddRule("passwordrules", Me, "passwordlength")
	signup.AddRule("passwordrules", Me, "passwordrequired")
	'
	vuetify.AddRoute(signup)
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

Sub btnsignup_Click (e As BANanoEvent)
	Dim semail As String = signup.GetData("email")
	Dim spassword As String = signup.GetData("password")
	
	If semail = "" Or spassword = "" Then
		vuetify.ShowSnackBarError("The email and password should be specified!")
		Return
	End If
		
	'try and sign up to fire base
	fb = pgIndex.fb
	'register a user (enable authentication)
	Dim regResponse As Map
	Dim regError As Map
	'create a user using the email and password
	Dim reguser As BANanoPromise = fb.CreateUserWithEmailAndPassword(semail, spassword)
	reguser.Then(regResponse)
	'get user details
	Dim user As Map = fb.CurrentUser
	'save the user details
	vuetify.SetStore("user", user)
	'mark the user as authenticated
	vuetify.SetStore("isAuthenticated", True)
	'add user to the users collection
	Dim userid As String = user.get("uid")
	'add the user to the users collection
	vuetify.RunMethod("addUser", userid)
	reguser.Else(regError)
	'there was an error
	Dim message As String = fb.GetMessage(regError)
	vuetify.ShowSnackBarError(message)
	vuetify.SetStore("user", Null)
	vuetify.SetStore("isAuthenticated", False)
	reguser.End
End Sub