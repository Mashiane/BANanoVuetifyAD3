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
	BVAD3.NewDialog(mypage, True, 400, "primary", "error")
	
	'lets add the triggers
	Dim btnDialog As BANanoElement = BVAD3.NewButton(mypage, "btnShowDialog", "Show Alert", "primary", False, Null)
	vmypage.Matrix(1, 1).Empty.Append(btnDialog.GetHTML)
	'
	Dim btnCancel As BANanoElement = BVAD3.NewButton(mypage, "btnShowConfirm", "Show Confirm", "error", False, Null)
	vmypage.Matrix(1, 2).Empty.Append(btnCancel.GetHTML)
	
	'
	Dim btnDoitAgain As BANanoElement = BVAD3.NewButton(mypage, "btnDoitAgain", "Do it again", "deep-orange", False, Null)
	vmypage.Matrix(2, 1).Empty.Append(btnDoitAgain.GetHTML)
	
	 
	'add the placeholder content to the template
	mypage.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(mypage)
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

Sub mypage_okclick(e As BANanoEvent)
	mypage.HideDialog
	'get the process
	Dim sconfirm As String = mypage.Confirm
	Select Case sconfirm
	Case "isthistwice"
		vuetify.ShowSnackBarSuccess("IsThisTwice Process")
	Case "askforit"
		vuetify.ShowSnackBarSuccess("AskForIt Confirmed!")
	Case Else
		vuetify.ShowSnackBarWarning("Component based dialog!")
	End Select
End Sub

Sub mypage_cancelclick(e As BANanoEvent)
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