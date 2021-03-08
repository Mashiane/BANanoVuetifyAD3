B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public listing As VueComponent
	Public path As String
	Public name As String = "listing"
	Private banano As BANano
	Private contapp As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	listing.Initialize(Me, name)
	listing.vuetify = vuetify
	path = listing.path
	'
	CreateListViewapplicants
	
	'as soon as we have mounted, show the applicants
	Dim args As List = listing.newlist
	listing.SetMounted(Me, "LoadApplicants", args)
	listing.SetMethod(Me, "getchipcolor", args)
	
	'add the component as a router
	vuetify.AddRoute(listing)
End Sub

Sub LoadApplicants		'ignoredeadcode
	'Show progress loader
	Dim listofapplicants As List = listing.NewList
	listing.SetData("applicants", listofapplicants)
	
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
		Dim strError As String = rsApplicants.Error
		Log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	listing.SetData("applicants", rsApplicants.result)
	Log(rsApplicants.result)
End Sub

Private Sub CreateListViewapplicants
	'add a list to the page
	Dim drwapplicants As VueElement = listing.Page.AddList1("drwapplicants")
	'the data source for the list is applicants
	drwapplicants.Options.dataSource = "applicants"
	'which field to use for the key
	drwapplicants.Options.key = "id"
	'which field will be displayed as an avatar
	drwapplicants.Options.Avatar = "avatar"
	'field to use for the title
	drwapplicants.Options.Title = "name"
	
	drwapplicants.Options.SubTitle = "applied"
	drwapplicants.Options.SubTitle1 = "progress"
	drwapplicants.Options.RightChip = "rating"
	'each item should have a divider
	drwapplicants.Options.hasdivider = True
	drwapplicants.AddListViewTemplate1(0)
	'get each value and prefix it with a formatted date
	drwapplicants.ListItemSubTitle.SetText("Applied On: {{ nicedate(item.applied) }}")
	'also progress should show %
	drwapplicants.ListItemSubTitle1.SetText("Progress: {{ item.progress }}%")
	'change the text color to be orange for all applicants
	drwapplicants.ListItemSubTitle1.TextColor = vuetify.COLOR_ORANGE
	'determine each rating and change the color of the chip
	drwapplicants.ListItemRightChip.AddAttr(":color", "getchipcolor(item)")
	listing.BindVueElement(drwapplicants)
End Sub

Sub getchipcolor(item As Map) As String
	'get the rating
	Dim srating As String = item.Get("rating")
	Select Case srating
	Case "1", "2"
		'if 1/2 make red
		Return "red"
	Case "3"
		'if 3 make chip orange
		Return "orange"
	Case "4", "5"		
		Return "green"	
	Case Else
		Return "red"
	End Select	
End Sub

Sub drwapplicants_click(item As Map)
	Dim json As String = banano.ToJson(item)
	vuetify.ShowSnackBarwarning(json)
End Sub

