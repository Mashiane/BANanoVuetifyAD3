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
	Public name As String = "adlogin"
	Private banano As BANano
	Private VDialog1 As VDialog
	Private txtPassword As VTextField
	Private txtUserName As VTextField
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	'initialize the user state
	about.SetData("user", about.newmap)
	
	banano.LoadLayout(about.Here, "mylogin")
	
	Dim cardText As String = VDialog1.CardText.Here
	banano.LoadLayoutAppend(cardText, "mylogindetails")
	
	'bind the dialog to the component
	about.BindVueElement(VDialog1.VElement)	
	about.BindVueElement(txtPassword.VElement)
	about.BindVueElement(txtUserName.VElement)
	
	
	'this will be fired each time we navigate to the page
	about.SetCreated(Me, "oncreated", Null)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

'called each time the page is navigated to
Sub oncreated
	'the dialog is visible
	VDialog1.UpdateVisible(about, True)
End Sub

Private Sub VDialog1_ok_click (e As BANanoEvent)
	'check if content is entered
	'get the user details
	Dim user As Map = about.GetData("user")
	vuetify.ShowSwalNotification(banano.ToJson(user))
End Sub

Private Sub VDialog1_cancel_click (e As BANanoEvent)
	'go to the home page
	vuetify.NavigateTo("/")
End Sub