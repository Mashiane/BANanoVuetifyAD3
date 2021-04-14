B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public mypage As VueComponent
	Public path As String
	Public name As String = "mypage"
	Private banano As BANano
	Private vmypage As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	mypage.Initialize(Me, name)
	path = mypage.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vmypage")
	'
	'**** this page needs to use its own dialog, lets add it
	Dim pageDialog As VueElement = vuetify.AddDialogAlertPrompt(Me, mypage.Here, "mypage", True, 400, "primary", "error")
	mypage.BindVueElement(pageDialog)
	
	'lets add the triggers
	Dim btnShowDialog As VueElement = vuetify.AddButton(Me, vmypage.MatrixID(1,1), "btnShowDialog", "Show Alert", "primary", False, Null)
	mypage.BindVueElement(btnShowDialog)
	'
	Dim btnShowConfirm As VueElement = vuetify.AddButton(Me, vmypage.MatrixID(1,2), "btnShowConfirm", "Show Confirm", "error", False, Null)
	mypage.BindVueElement(btnShowConfirm)
	
	'
	Dim btnDoitAgain As VueElement = vuetify.AddButton(Me, vmypage.MatrixID(2,1), "btnDoitAgain", "Do it again", "deep-orange", False, Null)
	mypage.BindVueElement(btnDoitAgain)
	'
	Dim btnAskFor As VueElement = vuetify.AddButton(Me, vmypage.MatrixID(2,2), "btnAskFor", "What is your age?", "purple", True, Null)
	mypage.BindVueElement(btnAskFor)
	
	
	 
	'add the component as a router
	vuetify.AddRoute(mypage)
End Sub

Sub btnAskFor_click(e As BANanoEvent)
	mypage.ShowPrompt("pageage", "User Age", "Age", "", "Enter your age", "47", "Apply", "Cancel")
End Sub


Sub btnDoitAgain_click(e As BANanoEvent)
	mypage.ShowConfirm("isthistwice", "Confirm", "Are you sure this works again?", "Yes", "No")
End Sub

Sub btnShowConfirm_click(e As BANanoEvent)
	mypage.ShowConfirm("askforit", "Confirm", "Are you sure this works?", "Yep", "Nada")
	
End Sub

Sub btnShowDialog_click(e As BANanoEvent)
	mypage.ShowAlert("ok", "My Dialog", "Testing component based dialogs...", "Noted with thanks")
End Sub

Sub mypageok_click(e As BANanoEvent)
	mypage.HideDialog
	'get the process
	Dim sconfirm As String = mypage.Confirm
	Select Case sconfirm
	Case "isthistwice"
		vuetify.ShowSnackBarSuccess("IsThisTwice Process")
	Case "askforit"
		vuetify.ShowSnackBarSuccess("AskForIt Confirmed!")
	Case "pageage"
		'get the prompt value
		Dim svalue As String = mypage.GetPromptValue
		GetPageAge(svalue)
	Case Else
		vuetify.ShowSnackBarWarning("Component based dialog!")
	End Select
End Sub


Sub GetPageAge(svalue As String)			'IgnoreDeadCode
	If svalue = "" Then
		'no age is entered
		vuetify.ShowSnackBarWarning("There is no age entered!")
	Else
		'age entered
		vuetify.ShowSnackBarSuccess("Thank you " & svalue & " entered!")
	End If
End Sub

Sub mypagecancel_click(e As BANanoEvent)
	mypage.HideDialog
	Dim sconfirm As String = mypage.Confirm
	Select Case sconfirm
	Case "isthistwice"
		vuetify.ShowSnackBarError("IsThisTwice Process Cancelled")
	Case "askforit"
		vuetify.ShowSnackBarWarning("AskForIt Cancel")
	Case Else
		vuetify.ShowSnackBarWarning("Cancel on component based dialog!")
	End Select
End Sub