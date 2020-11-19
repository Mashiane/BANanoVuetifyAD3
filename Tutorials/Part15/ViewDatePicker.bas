B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public datepicker As VueComponent
	Public name As String = "datepicker"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vdatepickercontainer As VueElement
End Sub

Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	datepicker.Initialize(Me, name)
	'path placeholder
	path = datepicker.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "vdatepickercontainer")
	'bind any available states from the container to this page
	datepicker.BindVueElement(vdatepickercontainer)
	
	'BVAD3.Initialize
	
	Dim dp1 As BANanoElement = BVAD3.NewDatePicker(datepicker, "dp1",  "dob", "Date of Birth", "", True, "mdi-calendar", "Date of birth")
	vdatepickercontainer.Matrix(1, 1).Append(dp1.GetHTML)
	'
	Dim dp2 As BANanoElement = BVAD3.NewDatePicker(datepicker, "dp2", "dod", "Date of Death", "", True, "mdi-calendar", "Date of death")
	vdatepickercontainer.Matrix(1, 2).Append(dp2.GetHTML)
	'
	Dim btngetdates As BANanoElement = BVAD3.NewButton(datepicker, "btngetdates", "Get Dates", CreateMap("block":True,"color":"success"))
	vdatepickercontainer.Matrix(1, 3).Append(btngetdates.GetHTML)
	'
	Dim tp1 As BANanoElement = BVAD3.NewTimePicker(datepicker, "tp1", "tob", "Time of Birth", "", True, "mdi-clock", "Time of birth")
	vdatepickercontainer.Matrix(2, 1).Append(tp1.GetHTML)
	'
	Dim tp2 As BANanoElement = BVAD3.NewTimePicker(datepicker, "tp2", "tod", "Time of Death", "", True, "mdi-clock", "Time of death")
	vdatepickercontainer.Matrix(2, 2).Append(tp2.GetHTML)
	'
	Dim btngettimes As BANanoElement = BVAD3.NewButton(datepicker, "btngettimes", "Get Times", CreateMap("block":True,"color":"info"))
	vdatepickercontainer.Matrix(2, 3).Append(btngettimes.GetHTML)
	
	'
	datepicker.AppendPlaceHolder
	vuetify.AddRoute(datepicker)
End Sub

Sub btngettimes_click(e As BANanoEvent)
	Dim sdob As String = datepicker.GetData("tob")
	Dim sdod As String = datepicker.GetData("tod")
	'
	Dim m As Map = CreateMap("tob":sdob, "tod": sdod)
	vuetify.ShowSnackBarInfo(BANano.ToJson(m))
End Sub

Sub btngetdates_click(e As BANanoEvent)
	Dim stob As String = datepicker.GetData("dob")
	Dim stod As String = datepicker.GetData("dod")
	'
	Dim m As Map = CreateMap("dob":stob, "dod": stod)
	vuetify.ShowSnackBarSuccess(BANano.ToJson(m))
End Sub