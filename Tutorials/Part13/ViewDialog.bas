B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public dialogs As VueComponent
	Public path As String
	Public name As String = "dialogs"
	Private banano As BANano
	Private dialogbtn1 As VueElement
	Private dialogbtn2 As VueElement
	Private dialogbtn3 As VueElement
	Private vdialogs As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	dialogs.Initialize(Me, name)
	path = dialogs.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vdialogs")
	vdialogs.Matrix(1, 1).LoadLayout("dialogbutton1")
	vdialogs.Matrix(1, 2).LoadLayout("dialogbutton2")
	vdialogs.Matrix(1, 3).LoadLayout("dialogbutton3")
	'
	'vdialogs.Matrix(2, 1).LoadLayout("dialogbutton1")
	'vdialogs.Matrix(2, 2).LoadLayout("dialogbutton2")
	'vdialogs.Matrix(2, 3).LoadLayout("dialogbutton3")
	
	'bind the buttons
	dialogs.BindVueElement(dialogbtn1)
	dialogs.BindVueElement(dialogbtn2)
	dialogs.BindVueElement(dialogbtn3)
	'add the placeholder content to the template
	dialogs.AppendPlaceHolder
	'add the component as a router
	vuetify.AddRoute(dialogs)
End Sub


Sub dialogbtn1_Click (e As BANanoEvent)			'IgnoreDeadCode
	vuetify.ShowConfirm("confirm_delete", "Confirm Delete", "Are you sure you want to delete this user?", "Yes", "No")
End Sub

Sub dialogbtn2_Click (e As BANanoEvent)			'IgnoreDeadCode
	vuetify.ShowAlert("Done Processing", "All processing has been completed!", "Yippie!")
End Sub

Sub dialogbtn3_Click (e As BANanoEvent)			'IgnoreDeadCode
	'show a prompt dialog
	vuetify.ShowPrompt("dialog_age", "User Age", "Age", "", "Enter your age", "47", "Apply", "Cancel") 
End Sub

Sub GetAge(svalue As String)			'IgnoreDeadCode
	If svalue = "" Then
		'no age is entered
		vuetify.ShowSnackBarWarning("There is no age entered!")
	Else
		'age entered
		vuetify.ShowSnackBarSuccess("Thank you " & svalue & " entered!")
	End If
End Sub