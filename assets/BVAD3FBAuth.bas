B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private auth As BANanoObject
	Private GoogleAuthProvider As BANanoObject
	Private FacebookAuthProvider As BANanoObject
	Private TwitterAuthProvider As BANanoObject
	Private GithubAuthProvider As BANanoObject
	Private BANano As BANano   'ignore
End Sub

Sub Initialize(firebaseApp As BANanoObject) As BVAD3FBAuth
	auth = firebaseApp.RunMethod("auth", Null)
	Return Me
End Sub

'sign with google popup
Sub signInWithPopupGoogle() As BANanoPromise
	GoogleAuthProvider.Initialize2("firebase.auth.GoogleAuthProvider", Null)
	GoogleAuthProvider.RunMethod("addScope", Array("https://www.googleapis.com/auth/contacts.readonly"))
	Dim si As BANanoPromise = auth.RunMethod("signInWithPopup", Array(GoogleAuthProvider))
	Return si
End Sub

'sign with facebook popup
Sub signInWithPopupFacebook() As BANanoPromise
	FacebookAuthProvider.Initialize2("firebase.auth.FacebookAuthProvider", Null)
	Dim si As BANanoPromise = auth.RunMethod("signInWithPopup", Array(FacebookAuthProvider))
	Return si
End Sub

'sign with twitter popup
Sub signInWithPopupTwitter() As BANanoPromise
	TwitterAuthProvider.Initialize2("firebase.auth.TwitterAuthProvider", Null)
	Dim si As BANanoPromise = auth.RunMethod("signInWithPopup", Array(TwitterAuthProvider))
	Return si
End Sub

'sign with github popup
Sub signInWithPopupGithub() As BANanoPromise
	GithubAuthProvider.Initialize2("firebase.auth.GithubAuthProvider", Null)
	Dim si As BANanoPromise = auth.RunMethod("signInWithPopup", Array(GithubAuthProvider))
	Return si
End Sub


'a user can sign in anonymously
Sub signInAnonymously() As BANanoPromise
	Dim si As BANanoPromise = auth.RunMethod("signInAnonymously", Null)
	Return si
End Sub

'detect user log in and log off pass the user variable
Sub onAuthStateChanged(Module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	Dim user As Map
	Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(user))
	auth.RunMethod("onAuthStateChanged", cb)
End Sub


'get logged in user
Sub getCurrentUser() As Map
	Dim boUser As Object = auth.GetField("currentUser").Result
	If BANano.IsNull(boUser) Or BANano.IsUndefined(boUser) Then Return Null
	Dim usr As Map = GetUserData(boUser)
	Return usr
End Sub

'get current user UID
Sub getCurrentUID As String
	'get the current user
	Dim user As Map = getCurrentUser
	'get the user id
	Dim uid As String = user.Get("uid")
	Return uid
End Sub


'get UID
Sub getUID(userData As Map) As String
	Dim suid As String = userData.Get("uid")
	Return suid
End Sub

'get a user
Sub getUser(resp As Map) As Map
	Dim usr As Map = resp.Get("user")
	Return usr
End Sub


'returned the signed in user details
Sub getSignedInUserDetails(user As Map) As Map
	Dim usr As Map = getUser(user)
	Dim usr1 As Map = GetUserData(usr)
	Return usr1
End Sub

'get user data after sign in
Sub GetUserData(user As Map) As Map
	Dim userData As Map = CreateMap()
	If BANano.IsNull(user) Or BANano.IsUndefined(user) Then Return userData
	Dim displayName As String = user.Get("displayName")
	Dim email As String = user.Get("email")
	Dim emailVerified As Boolean = user.Get("emailVerified")
	Dim photoURL As String = user.Get("photoURL")
	Dim isAnonymous As Boolean = user.Get("isAnonymous")
	Dim uid As String = user.Get("uid")
	Dim phoneNumber As String = user.Get("phoneNumber")
	'
	userData.Put("displayName", displayName)
	userData.Put("email", email)
	userData.Put("emailVerified", emailVerified)
	userData.Put("photoURL", photoURL)
	userData.Put("isAnonymous", isAnonymous)
	userData.Put("uid", uid)
	userData.Put("phoneNumber", phoneNumber)
	Return userData
End Sub

'
'Sub createUserWithEmailAndPassword(emailAddress As String, password As String) As Map
'	Dim resp As Object
'	Dim err As Object
'	'
'	Dim promRegister As BANanoPromise = auth.RunMethod("createUserWithEmailAndPassword", Array(emailAddress, password))
'	promRegister.Then(resp)
'		Dim usr As Map = getSignedInUserDetails(resp)
'		BANano.ReturnThen(usr)
'	promRegister.Else(err)
'		BANano.ReturnElse(err)
'	promRegister.End
'End Sub
'
'register a user
Sub createUserWithEmailAndPassword(emailaddress As String, password As String) As BANanoPromise
	Dim promRegister As BANanoPromise = auth.RunMethod("createUserWithEmailAndPassword", Array(emailaddress, password))
	Return promRegister
End Sub

'sign in
Sub signInWithEmailAndPassword(emailaddress As String, password As String) As BANanoPromise
	Dim promRegister As BANanoPromise = auth.RunMethod("signInWithEmailAndPassword", Array(emailaddress, password))
	Return promRegister
End Sub

'signOut
Sub signOut() As BANanoPromise
	Dim promRegister As BANanoPromise = auth.RunMethod("signOut", Null)
	Return promRegister
End Sub

'sendPasswordResetEmail
Sub sendPasswordResetEmail(email As String) As BANanoPromise
	Dim promRegister As BANanoPromise = auth.RunMethod("sendPasswordResetEmail", Array(email))
	Return promRegister
End Sub

'sendEmailVerification
Sub sendEmailVerification As BANanoPromise
	Dim promRegister As BANanoPromise = auth.GetField("user").RunMethod("sendEmailVerification", Null)
	Return promRegister
End Sub
