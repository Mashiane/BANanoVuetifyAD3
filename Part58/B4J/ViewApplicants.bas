B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public applicants As VueComponent
	Public path As String
	Public name As String = "applicants"
	Private banano As BANano
	Private contapp As VueElement
	Private dtApplicants As VueTable
	Private dlgApplicants As VueElement
	Private msgBox As VueElement
	Private Mode As String
	Private jsPDF As BANanoJSPDF
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	applicants.Initialize(Me, name)
	applicants.vuetify = vuetify
	'make this the start page
	applicants.Path = "/"
	path = applicants.path
	'
	contapp = applicants.AddContainer("contapp", True)
	contapp.AddRows1.AddColumns3.AddColumns9
	contapp.BuildGrid
	'
	'remove sizing for small devices
	contapp.Cell(1, 1).RemoveAttr("xs")
	contapp.Cell(1, 1).RemoveAttr("cols")
	'
	contapp.Cell(1, 2).RemoveAttr("xs")
	contapp.Cell(1, 2).RemoveAttr("cols")
	
	''add a msgbox dialog for this page
	msgBox = applicants.AddMsgBox(True, 500, "success", "error")
	'
	CreateTable
	CreateDialog
	'
	'as soon as we have mounted, show the applicants
	Dim args As List = applicants.newlist
	applicants.SetMounted(Me, "LoadApplicants", args)
	'add supporting CRUD methods...
	applicants.SetMethod(Me, "CreateApplicant", args)
	applicants.SetMethod(Me, "DeleteApplicant", args)
	applicants.SetMethod(Me, "UpdateApplicant", args)
	applicants.SetMethod(Me, "ReadApplicant", args)
	
	BuildSide
	
	'add the component as a router
	vuetify.AddRoute(applicants)
End Sub

Sub BuildSide
	Dim sideapp As VueElement = contapp.Cell(1, 1).AddApp("sideapp")
	'sideapp.BackgroundColor = "grey lighten-1"
	sideapp.Color = vuetify.COLOR_GREY
	
	Dim sidecont As VueElement = sideapp.AddContainer("sidecont", True)
	sidecont.ML = 5
	sidecont.MT = 5
	'
	Dim h4 As VueElement = sidecont.AddH4("h4", "Filters", "", "")
	h4.MB = 5
	
	Dim sidelist As VueElement = sidecont.AddList1("sidelist")
	sidelist.Options.dataSource = "links"
	sidelist.AddListViewTemplate1(0)
		
	sidelist.ClearItems
	sidelist.ListViewAddItem1(sidelist.CreateListItem("new").SetTitle("New Candidates").SetLeftIcon("fas fa-user-plus"))
	sidelist.ListViewAddItem1(sidelist.CreateListItem("tag").SetTitle("fas fa-user-tag").SetLeftIcon("fas fa-user-plus"))
	sidelist.ListViewAddItem1(sidelist.CreateListItem("jobs").SetTitle("still in the running").SetLeftIcon("fas fa-user-cog"))
	sidelist.SetData("links", sidelist.Records)
	applicants.BindVueElement(sidelist)
	'
	Dim txtsearch As VueElement = sidecont.AddTextField1("txtsearch", "search","Custom Search", Null)
	txtsearch.PrependIcon = "mdi-magnify"
	txtsearch.AddClass("ml-3")
	txtsearch.AddClass("mr-12")
	applicants.BindVueElement(txtsearch)
	applicants.SetData("search", "")
	'
	Dim selKeywords As VueElement = sidecont.AddSelect1("selkeys", "value", "Keyword", "items", "id", "text", True, False)
	selKeywords.Chips = True
	selKeywords.Clearable = True
	selKeywords.Attach = True
	selKeywords.AddClass("ml-3")
	selKeywords.AddClass("mr-12")
	applicants.BindVueElement(selKeywords)
	
	'convert a list to key valye pair map
	Dim items As List = BANanoShared.List2Options(Array("key1", "key2"), "id", "text")
	applicants.SetData("items", items)
	'
	Dim selJobs As VueElement = sidecont.AddSelect1("seljobs", "job", "Jobs", "jobs", "id", "text", True, False)
	selJobs.Chips = True
	selJobs.Clearable = True
	selJobs.Attach = True
	selJobs.AddClass("ml-3")
	selJobs.AddClass("mr-12")
	applicants.BindVueElement(selJobs)
	
	'convert a list to key valye pair map
	Dim jobs As List = BANanoShared.List2Options(Array("Designer", "Dev"), "id", "text")
	applicants.SetData("jobs", jobs)
	'
	Dim chosenJob As List = Array("Designer", "Dev")
	applicants.SetData("job", chosenJob)
	
End Sub

Sub LoadApplicants		'ignoredeadcode 
	'Show progress loader 
	dtApplicants.UpdateLoading(True) 
	dtApplicants.Reload(applicants.NewList) 
	Dim rsApplicants As BANanoSQLiteE 
	rsApplicants.Initialize(Main.DBName, "applicants", "id", "id")
	'add field types 
	rsApplicants.SchemaAddInt(Array("id","progress","rating"))
	rsApplicants.SchemaAddText(Array("avatar","name","applied"))
 
	rsApplicants.SelectAll(Array("*"), Array("name")) 
	rsApplicants.JSON = banano.CallInlinePHPWait(rsApplicants.MethodName, rsApplicants.Build) 
	rsApplicants.FromJSON 
	Select Case rsApplicants.OK 
	Case False 
	'clear content 
		'hide progress loader 
		dtApplicants.UpdateLoading(False) 
		Dim strError As String = rsApplicants.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	End Select 
	dtApplicants.Reload(rsApplicants.Result) 
	'hide progress loader 
	dtApplicants.UpdateLoading(False) 
End Sub

Sub ReadApplicant(sid As String)			'ignoredeadcode 
	 
	Dim rsApplicants As BANanoSQLiteE 
	rsApplicants.Initialize(Main.DBName, "applicants", "id", "id")
	'add field types 
	rsApplicants.SchemaAddInt(Array("id","progress","rating"))
    rsApplicants.SchemaAddText(Array("avatar","name","applied"))
 
	rsApplicants.Read(sid) 
	rsApplicants.JSON = banano.CallInlinePHPWait(rsApplicants.MethodName, rsApplicants.Build) 
	rsApplicants.FromJSON 
	Select Case rsApplicants.OK 
	Case False 
		Dim strError As String = rsApplicants.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	End Select 
	Dim ApplicantM As Map = rsApplicants.result.Get(0) 
	'show the drawer 
	applicants.SetData("dlgapplicantsshow", True) 
	applicants.SetData("applicant", ApplicantM) 
End Sub

Sub UpdateApplicant(ApplicantM As Map)			'ignoredeadcode 
	 
	Dim sid As String = ApplicantM.Get("id") 
	Dim rsApplicants As BANanoSQLiteE 
	rsApplicants.Initialize(Main.DBName, "applicants", "id", "id")
	'add field types 
	rsApplicants.SchemaAddInt(Array("id","progress","rating"))
	rsApplicants.SchemaAddText(Array("avatar","name","applied"))
 
	'insert current record 
	rsApplicants.Update1(ApplicantM, sid) 
	rsApplicants.JSON = banano.CallInlinePHPWait(rsApplicants.MethodName, rsApplicants.Build) 
	rsApplicants.FromJSON 
	Select Case rsApplicants.OK 
	Case False 
		Dim strError As String = rsApplicants.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
	Case Else 
		vuetify.ShowSnackBarSuccess("The applicant has been updated successfully!") 
		'hide modal form 
		applicants.SetData("dlgapplicantsshow", False) 
		'load records 
		applicants.RunMethod("LoadApplicants", Null) 
	End Select 
End Sub

Sub CreateApplicant(ApplicantM As Map)			'ignoredeadcode 
	'remove the auto-increment key field 
	ApplicantM.Remove("id") 
	 
	Dim rsApplicants As BANanoSQLiteE 
	rsApplicants.Initialize(Main.DBName, "applicants", "id", "id")
	'add field types 
	rsApplicants.SchemaAddInt(Array("id","progress","rating"))
	rsApplicants.SchemaAddText(Array("avatar","name","applied"))
 
	'insert current record 
	rsApplicants.Insert1(ApplicantM) 
	rsApplicants.JSON = banano.CallInlinePHPWait(rsApplicants.MethodName, rsApplicants.Build) 
	rsApplicants.FromJSON 
	Select Case rsApplicants.OK 
	Case False 
		Dim strError As String = rsApplicants.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
	Case Else 
		vuetify.ShowSnackBarSuccess("The applicant has been added successfully!") 
		'hide modal form 
		applicants.SetData("dlgapplicantsshow", False) 
		'Load records 
		applicants.RunMethod("LoadApplicants", Null) 
	End Select 
End Sub

Sub DeleteApplicant(sid As String)			'ignoredeadcode 
	Dim rsApplicants As BANanoSQLiteE 
	rsApplicants.Initialize(Main.DBName, "applicants", "id", "id")
	'add field types 
	rsApplicants.SchemaAddInt(Array("id","progress","rating"))
	rsApplicants.SchemaAddText(Array("avatar","name","applied"))
 
	rsApplicants.Delete(sid) 
	rsApplicants.JSON = banano.CallInlinePHPWait(rsApplicants.MethodName, rsApplicants.Build) 
	rsApplicants.FromJSON 
	Select Case rsApplicants.OK 
	Case False 
		Dim strError As String = rsApplicants.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	Case Else 
		vuetify.ShowSnackBarSuccess("The applicant was deleted successfully!") 
	End Select 
	applicants.RunMethod("LoadApplicants", Null) 
End Sub

Sub CreateTable
'add a container to hold the applicants 
dtApplicants = vuetify.AddDataTable(Me, contapp.MatrixID(1, 2), "dtApplicants")
dtApplicants.ParentComponent = applicants
dtApplicants.Title = "Applicants"
dtApplicants.ItemKey = "id"
dtApplicants.ItemsPerPage = 10
dtApplicants.MustSort = True
dtApplicants.MultiSort = True
dtApplicants.AddSpacer
dtApplicants.AddSearch
dtApplicants.AddDivider
dtApplicants.AddNew
dtApplicants.AddDivider
dtApplicants.AddClearSort
dtApplicants.AddDivider
dtApplicants.AddFilter("primary--text")
dtApplicants.AddDivider
dtApplicants.AddClearFilter
dtApplicants.AddDivider
dtApplicants.AddRefresh
dtApplicants.AddDivider
dtApplicants.SetFilterable(Array("name","applied"))
dtApplicants.AddPDF
dtApplicants.AddColumn("id", "#")
dtApplicants.SetColumnSortable("id", False)
dtApplicants.AddAvatarImg("avatar", "Picture")
dtApplicants.AddColumn("name", "Applicant")
dtApplicants.SetTextField("name", False)
dtApplicants.SetColumnSortable("name", True)
dtApplicants.AddDateColumn("applied", "Applied On", "ddd, DD MMM YYYY")
dtApplicants.SetColumnSortable("applied", True)
dtApplicants.AddProgressLinear("progress", "Progress")
dtApplicants.SetProgressLinearDimensions("progress", vuetify.COLOR_BLUE, 32, True)
dtApplicants.SetColumnSortable("progress", True)
dtApplicants.AddRating("rating", "Rating")
dtApplicants.SetColumnSortable("rating", True)
dtApplicants.AddEdit
dtApplicants.AddDelete
dtApplicants.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)
dtApplicants.SetIconDimensions("delete", "", vuetify.COLOR_RED)
dtApplicants.SetDataSource(applicants.NewList)
applicants.BindVueTable(dtApplicants)
End Sub

Sub dtApplicants_pdf_click(e As BANanoEvent)
	jsPDF.Initialize(Me, "tablereport.pdf")
	'
	Dim tblA As BANanoJSPDFTable
	tblA.Initialize(Me)
	tblA.SetColumnsFromDataTable(dtApplicants.GetColumns)
	tblA.SetRowsFromDataTable(dtApplicants.GetData)
	'tblA.theme = tblA.THEME_GRID
	tblA.Margin.Top = 60
	'tblA.styles.font = "Meta"
	'tblA.styles.lineWidth = 0.55
	'tblA.setLineColor(tblA.styles, 44, 62, 80)
		'
	'tblA.setFillColor(tblA.headerStyles, 0, 0, 0)
	'tblA.headerStyles.fontSize = 11
	'
	'tblA.setFillColor(tblA.alternateRowStyles, 250, 250, 250)
	
	'jsPDF.Orientation = jsPDF.ORIENTATION_LANDSCAPE 
	'
	Dim data As Object
	tblA.beforePageContent("beforePageContent", data)
	
	'tblA.setTableLineColor(189, 195, 199)
	'
	jsPDF.Start
	jsPDF.autoTable(tblA)
	
'	jsPDF.addPage
'	jsPDF.setText(20, 20, "Hello world!")
'	jsPDF.setText(20, 40, "This is client-side Javascript to generate a PDF.")
'	jsPDF.setText(20, 60, "Visit https://github.com/Mashiane/BANanoVuetifyAD3")

	jsPDF.Save
	'Log(jsPDF.ToBase64)
End Sub

Sub beforePageContent
	jsPDF.SetText(40, 30, "Applicants")
End Sub

Sub dlgApplicantsok_click(e As BANanoEvent)			'ignoredeadcode 
	'get the current $refs 
	applicants.refs = vuetify.GetRefs 
	'validate the page 
	Dim fValid As Boolean = applicants.DialogValidate("dlgApplicants") 
	If fValid = False Then  
		vuetify.ShowSnackBarError("Please ensure that you complete all information.") 
		Return 
	End If 
	'get the topic 
	Dim ApplicantM As Map = applicants.GetData("applicant") 
	Select Case Mode 
	Case "A" 
		applicants.RunMethod("CreateApplicant", ApplicantM) 
	Case "E"	 
		applicants.RunMethod("UpdateApplicant", ApplicantM) 
	End Select 
End Sub

Sub dlgApplicantscancel_click(e As BANanoEvent)				'ignoredeadcode 
	Mode = "A" 
	'initialize the record 
	applicants.SetData("applicant", vuetify.NewMap) 
	'hide the drawer/dialog 
	applicants.SetData("dlgapplicantsshow", False) 
End Sub

Sub dtApplicants_add_click(e As BANanoEvent)				'ignoredeadcode 
	AddApplicant 
End Sub

Sub AddApplicant			'ignoreDeadCode 
	'get the current $refs 
	applicants.refs = vuetify.GetRefs 
	 
	applicants.DialogUpdateTitle("dlgApplicants", "Add Applicant") 
	Mode = "A" 
	'initialize the record 
	Dim nt As Map = CreateMap() 
	nt.put("id", -1)
nt.put("avatar", "./assets/sponge.png")
nt.put("name", "")
nt.put("applied", "")
nt.put("progress", 0)
nt.put("rating", 0 )
 
	applicants.SetData("applicant", nt) 
	 
	applicants.SetData("namerequired", True)
applicants.SetData("appliedrequired", True)
applicants.SetData("progressrequired", True)
applicants.SetData("ratingrequired", True)
 
	'show the drawer 
	applicants.SetData("dlgapplicantsshow", True) 
	'vuetify.SetFocus("name") 
End Sub

Private Sub dtApplicants_edit (item As Map)				'ignoredeadcode 
	'get the current $refs 
	applicants.refs = vuetify.GetRefs 
	applicants.DialogUpdateTitle("dlgApplicants", "Edit Applicant") 
	Mode = "E" 
	Dim sid As String = item.Get("id") 
	applicants.RunMethod("ReadApplicant", sid) 
	 
	applicants.SetData("namerequired", True)
applicants.SetData("appliedrequired", True)
applicants.SetData("progressrequired", True)
applicants.SetData("ratingrequired", True)
 
	vuetify.SetFocus("name") 
End Sub

Private Sub dtApplicants_delete (item As Map)				'ignoredeadcode 
	Dim sname As String = item.Get("name") 
	Dim sid As String = item.Get("id") 
	applicants.SetData("id", sid) 
	applicants.ShowConfirm("deleteapplicant", _ 
	$"Confirm Delete: ${sname}"$, _ 
	$"Are you sure you want to delete this applicant?<br><br>Please note you will not be able to undo your changes. Continue?"$, "Yes", "No") 
	End Sub

Sub applicantsok_click(e As BANanoEvent)			'ignoredeadcode 
	applicants.HideDialog 
	'get the process 
	Dim sconfirm As String = applicants.Confirm 
	Select Case sconfirm 
	Case "deleteapplicant" 
	'get the saved id 
		Dim sid As String = applicants.GetData("id") 
		applicants.RunMethod("DeleteApplicant", sid) 
	End Select 
End Sub

Sub applicantscancel_click(e As BANanoEvent)			'ignoredeadcode 
	applicants.HideDialog 
	'get the process 
	Dim sconfirm As String = applicants.Confirm 
	Select Case sconfirm 
	End Select 
End Sub

Private Sub dtApplicants_clearsort_Click (e As BANanoEvent)		'ignoredeadcode 
	dtApplicants.ClearSort 
End Sub

Private Sub dtApplicants_clearfilter_click (e As BANanoEvent)			'ignoredeadcode 
	dtApplicants.ClearFilter 
End Sub

Private Sub dtApplicants_refresh_click (e As BANanoEvent)			'ignoredeadcode 
applicants.RunMethod("LoadApplicants", Null) 
End Sub

Private Sub dtApplicants_change (item As Map)				'ignoredeadcode 
	applicants.RunMethod("UpdateApplicant", item) 
End Sub

Private Sub dtApplicants_filter_click(e As BANanoEvent)		'ignoredeadcode 
	dtApplicants.ApplyFilter 
End Sub

Sub dtApplicants_SaveItem (item As Map) 
	applicants.RunMethod("UpdateApplicant", item) 
End Sub

Private Sub dtApplicants_CancelItem (item As Map) 
End Sub

Private Sub dtApplicants_OpenItem (item As Map) 
End Sub

Private Sub dtApplicants_CloseItem (item As Map) 
End Sub

Private Sub dtApplicants_ItemSelected (item As Map) 
End Sub

Private Sub dtApplicants_ClickRow (e As BANanoEvent) 
End Sub

Sub namerule(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "The Applicant is required!"
Else
Return True
End If
End Sub

Sub appliedrule(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "The Applied On is required!"
Else
Return True
End If
End Sub

Sub progressrule(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "The Progress is required!"
Else
Return True
End If
End Sub

Sub ratingrule(v As String) As Object	'ignoredeadcode
If v = "" Then
Return "The Rating is required!"
Else
Return True
End If
End Sub

Sub CreateDialog
'create a container
Dim dlgApplicants As VueElement = vuetify.AddDialogInput(Me, applicants.Here, "dlgApplicants", True, "600", "Applicants", "Save", "primary", "Cancel", "error")
dlgApplicants.DialogTitle.BackgroundColor = vuetify.COLOR_BLUE
dlgApplicants.DialogTitle.TextColor = vuetify.COLOR_WHITE

dlgApplicants.FullScreenOnMobile = True
applicants.BindVueElement(dlgApplicants)
'get the container
Dim ApplicantCont As VueElement = applicants.DialogForm("dlgApplicants")
ApplicantCont.LazyValidation = True
ApplicantCont.MT = 4
ApplicantCont.VModel = "dlgApplicantsvalid"
ApplicantCont.AddRows1.AddColumns2x6
ApplicantCont.AddRows1.AddColumns2x6
ApplicantCont.AddRows1.AddColumns2x6
ApplicantCont.BuildGrid

Dim id As VueElement = vuetify.AddTextField1(Me, ApplicantCont.MatrixID(1, 1), "id", "applicant.id", "#", Null)
id.Outlined = True
id.VShow = "idshow"
applicants.BindVueElement(id)
applicants.SetData("idshow", False)
'
Dim avatar As VueElement = vuetify.AddAvatar1(Me, ApplicantCont.MatrixID(1, 1), "avatar", "applicant.avatar", 80, Null)
applicants.BindVueElement(avatar)

Dim uploadavatar As VueElement = vuetify.AddFileInput(Me, ApplicantCont.MatrixID(1, 2), "uploadavatar", "", "Select Avatar", "", False, "", Null)
uploadavatar.Outlined = True
uploadavatar.Clearable = True
uploadavatar.AutoFocus = True
uploadavatar.HideInput = True
applicants.BindVueElement(uploadavatar)

Dim namex As VueElement = vuetify.AddTextField1(Me, ApplicantCont.MatrixID(2, 1), "name", "applicant.name", "Applicant", Null)
namex.Required = ":namerequired"
namex.AddRule("namerule")
namex.Outlined = True
namex.Clearable = True
applicants.BindVueElement(namex)

Dim applied As VueElement = vuetify.AddDatePickerInput1(Me, ApplicantCont.MatrixID(2, 2), "applied", "applicant.applied", "Applied On", Null, Null)
applied.Required = ":appliedrequired"
applied.AddRule("appliedrule")
applied.Outlined = True
applied.Clearable = True
applicants.BindVueElement(applied)

Dim progress As VueElement = vuetify.AddSlider(Me, ApplicantCont.MatrixID(3, 1), "progress", "applicant.progress", "Progress", 0, 100, 1, True, False, Null)
progress.Required = ":progressrequired"
progress.AddRule("progressrule")
progress.Outlined = True
progress.Clearable = True
applicants.BindVueElement(progress)

Dim rating As VueElement = vuetify.AddRating(Me, ApplicantCont.MatrixID(3, 2), "rating", "applicant.rating", 5 , 0, True, "", Null)
rating.Required = ":ratingrequired"
rating.AddRule("ratingrule")
applicants.BindVueElement(rating)

applicants.BindVueElement(ApplicantCont)
applicants.BindVueElement(dlgApplicants)
applicants.SetData("dlgapplicantsvalid", True)
'initialize the Applicant
Dim applicant As Map = CreateMap()
applicant.put("id", -1)
applicant.put("avatar", "./assets/sponge.png")
applicant.put("name", "")
applicant.put("applied", "")
applicant.put("progress", 0 )
applicant.put("rating", 0)

	applicants.SetData("applicant", applicant)
End Sub

Sub uploadavatar_change(fileObj As Map)
	If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
	'vuetify.ShowProgressLoader
	'get file details
	Dim fileDet As FileObject
	fileDet = BANanoShared.GetFileDetails(fileObj)
	Dim fn As String = fileDet.FileName
	'you can check the size here
	'start uploading the file
	fileDet = BANanoShared.UploadFileWait(fileObj)
	Dim sstatus As String = fileDet.Status
	Select Case sstatus
		Case "error"
			'vuetify.HideProgressLoader
			vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
			applicants.SetData("applicant.avatar", "")
			Return
		Case "success"
			vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
	End Select
	Dim fp As String = fileDet.FullPath
	Dim fd As String = fileDet.FileDate
	Dim fs As String = fileDet.FileSize
	'update state of some element
	applicants.SetData("applicant.avatar", fp)
	'vuetify.HideProgressLoader
End Sub