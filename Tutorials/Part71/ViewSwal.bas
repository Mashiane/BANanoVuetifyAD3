B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "swal"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	Dim contswal As VueElement = about.Page.AddContainer("contswal", True)
	contswal.AddRows5.AddColumns6x2
	contswal.BuildGrid
	
	Dim btnSwal As VueElement = contswal.Cell(1, 1).AddVBtn("btnSwal")
	btnSwal.Caption = "Swal"
	about.BindVueElement(btnSwal)
	'
	Dim btnSwalE As VueElement = contswal.Cell(1, 2).AddVBtn("btnSwalE")
	btnSwalE.Caption = "Swal Error"
	about.BindVueElement(btnSwalE)
	'
	Dim btnSwalI As VueElement = contswal.Cell(1, 3).AddVBtn("btnSwalI")
	btnSwalI.Caption = "Swal Info"
	about.BindVueElement(btnSwalI)
	'
	Dim btnSwalS As VueElement = contswal.Cell(1, 4).AddVBtn("btnSwalS")
	btnSwalS.Caption = "Swal Success"
	about.BindVueElement(btnSwalS)
	'
	Dim btnSwalN As VueElement = contswal.Cell(1, 5).AddVBtn("btnSwalN")
	btnSwalN.Caption = "Swal Notification"
	about.BindVueElement(btnSwalN)
	'
	Dim btnSwalW As VueElement = contswal.Cell(1, 6).AddVBtn("btnSwalW")
	btnSwalW.Caption = "Swal Warning"
	about.BindVueElement(btnSwalW)
	'
	Dim btnSwalC As VueElement = contswal.Cell(2, 1).AddVBtn("btnSwalC")
	btnSwalC.Caption = "Swal Confirm"
	about.BindVueElement(btnSwalC)
	'
	Dim btnSwalL As VueElement = contswal.Cell(2, 2).AddVBtn("btnSwalL")
	btnSwalL.Caption = "Swal RTL"
	about.BindVueElement(btnSwalL)
	'
	Dim btnSwalInp As VueElement = contswal.Cell(2, 3).AddVBtn("btnSwalInp")
	btnSwalInp.Caption = "Swal Input"
	about.BindVueElement(btnSwalInp)
	'
	Dim btnSwalToast As VueElement = contswal.Cell(2, 4).AddVBtn("btnSwalToast")
	btnSwalToast.Caption = "Swal Toast"
	about.BindVueElement(btnSwalToast)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub btnSwalToast_click(e As BANanoEvent)
	vuetify.ShowSwalToastSuccess("This is my toast...")
End Sub


Sub btnSwalInp_click(e As BANanoEvent)
	Dim resp As String = banano.Await(vuetify.ShowSwalInputWait("First Name", "Please enter your first name.", "Ok", "Cancel"))
	vuetify.ShowSnackBarSuccess(resp)
End Sub


Sub btnswalL_click(e As BANanoEvent)
	Dim resp As Boolean = banano.Await(vuetify.ShowSwalConfirmWait("هل تريد الاستمرار؟", "",  "نعم", "لا"))
	vuetify.ShowSnackBarSuccess(resp)
End Sub



Sub btnswalC_click(e As BANanoEvent)
	Dim resp As Boolean = banano.Await(vuetify.ShowSwalConfirmWait("Confirm Delete", "Are you sure you want to delete this product?", "Yes", "No"))
	vuetify.ShowSnackBarSuccess(resp)
End Sub


Sub btnswalW_click(e As BANanoEvent)
	vuetify.ShowSwalWarning("This is a warning")
End Sub

Sub btnswalN_click(e As BANanoEvent)
	vuetify.ShowSwalNotification("It is Done!")
End Sub


Sub btnswal_click(e As BANanoEvent)
	vuetify.ShowSwal("Any fool can use a computer")
End Sub

Sub btnSwalS_click(e As BANanoEvent)
	vuetify.ShowSwalSuccess("A success operation")
End Sub

Sub btnSwalI_click(e As BANanoEvent)
	vuetify.ShowSwalInfo("You have an internet connection!")
End Sub

Sub btnSwalE_click(e As BANanoEvent)
	vuetify.ShowSwalError("An error has occured!")
End Sub
