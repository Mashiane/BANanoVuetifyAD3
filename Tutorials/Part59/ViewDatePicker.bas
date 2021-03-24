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
	
	Dim r1c1 As String = vdatepickercontainer.MatrixID(1, 1)
	Dim dp1 As VueElement = vuetify.AddDatePickerInput(Me, r1c1, "dp1", "dob", "Date of Birth", "", True, "mdi-calendar", "Date of birth", CreateMap(":outlined":True), Null)
	datepicker.BindVueElement(dp1)
	
	'
	Dim r1c2 As String = vdatepickercontainer.MatrixID(1, 2)
	Dim dp2 As VueElement = vuetify.AddDatePickerInput(Me, r1c2, "dp2", "dod", "Date of Death", "", True, "mdi-calendar", "Date of death", CreateMap("shaped":True, ":outlined":True), Null)
	datepicker.BindVueElement(dp2)
	
	'
	Dim btngetdates As VueElement = vuetify.AddButton(Me, vdatepickercontainer.MatrixID(1,3),  "btngetdates", "Get Dates", "success", False, CreateMap("block":True))
	datepicker.BindVueElement(btngetdates)
	'
	'
	Dim r2c1 As String = vdatepickercontainer.MatrixID(2, 1)
	Dim tp1 As VueElement = vuetify.AddTimePickerInput(Me, r2c1, "tp1", "tob", "Time of Birth", "", True, "mdi-clock", "Time of Birth", CreateMap("filled":True), Null)
	datepicker.BindVueElement(tp1)
	
	'
	Dim r2c2 As String = vdatepickercontainer.MatrixID(2, 2)
	Dim tp2 As VueElement = vuetify.AddTimePickerInput(Me, r2c2, "tp2", "tod", "Time of Death", "", True, "mdi-clock", "Time of Death", Null, Null)
	datepicker.BindVueElement(tp2)
	
	'
	Dim btngettimes As VueElement = vuetify.AddButton(Me, vdatepickercontainer.MatrixID(2,3), "btngettimes", "Get Times", "info", False, CreateMap("block":True))
	datepicker.BindVueElement(btngettimes)
	
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