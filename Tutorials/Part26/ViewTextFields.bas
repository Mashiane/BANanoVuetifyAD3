B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public textfields As VueComponent
	Public path As String
	Public name As String = "textfields"
	Private banano As BANano
	Private vtextfieldcontainer As VueElement
	Private vbtngettexts As VueElement
	Private txtFirstName As VueElement
	Private txtlastname As VueElement
	Private txtpassword As VueElement
	Private txtcity As VueElement
	Private txtstreet As VueElement
	Private txtusername As VueElement
	Private txtlocation As VueElement
	Private txtshaped As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	textfields.Initialize(Me, name)
	path = textfields.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vtextfieldcontainer")
	'
	vtextfieldcontainer.Matrix(1, 1).LoadLayout("txtFirstName")
	txtFirstName.NewTextField("txtfirstname", "firstname", "First Name", "", True, "", 0, "Enter first name", Null)
	txtFirstName.Filled = True
	textfields.BindVueElement(txtFirstName)
	'
	vtextfieldcontainer.Matrix(1, 2).LoadLayout("txtLastName")
	txtlastname.NewTextField("txtlastname", "lastname", "Last Name", "", True, "", 0, "Enter last name", Null)
	txtlastname.Solo = True
	textfields.BindVueElement(txtlastname)
	'
	vtextfieldcontainer.Matrix(1, 3).LoadLayout("txtcity")
	txtcity.NewTextField("txtcity", "city", "City", "", True, "", 0, "Enter city", Null)
	txtcity.Outlined = True
	textfields.BindVueElement(txtcity)
	'
	vtextfieldcontainer.Matrix(1, 4).LoadLayout("txtstreet")
	txtstreet.NewTextField("txtstreet", "street", "Street", "", True, "", 0, "", Null)
	txtstreet.Dense = True
	txtstreet.Solo = True
	textfields.BindVueElement(txtstreet)
	'
	vtextfieldcontainer.Matrix(2, 1).LoadLayout("txtusername")
	txtusername.NewTextField("txtusername", "username", "Username", "", True, "", 0, "", Null)
	txtusername.Ref = "username"
	txtusername.Rounded = True
	txtusername.Outlined = True
	txtusername.Clearable = True
	txtusername.PrependInnerIcon = "mdi-account"
	textfields.BindVueElement(txtusername)
	'
	vtextfieldcontainer.Matrix(2, 2).LoadLayout("txtpassword")
	txtpassword.NewTextField("txtpassword", "password", "Password", "", True, "", 0, "", Null)
	txtpassword.SetTypePassword
	txtpassword.Rounded = True
	txtpassword.Outlined = True
	txtpassword.Clearable = True
	txtpassword.PrependInnerIcon = "mdi-lock-open-outline"
	textfields.BindVueElement(txtpassword)
'	'
	vtextfieldcontainer.Matrix(2, 3).LoadLayout("txtshaped")
	txtshaped.NewTextField("txtshaped", "shaped", "Shaped", "", True, "", 0, "", Null)
	txtshaped.Outlined = True
	txtshaped.Shaped = True
	txtshaped.Clearable = True
	textfields.BindVueElement(txtshaped)
	'
	vtextfieldcontainer.Matrix(2, 4).LoadLayout("txtlocation")
	txtlocation.NewTextField("txtlocation", "location", "Location", "", True, "", 0, "", Null)
	txtlocation.Outlined = True
	txtlocation.AppendIcon = "mdi-map-marker"
	txtlocation.PrependIcon = "mdi-map-marker-off"
	txtlocation.AppendOuterIcon = "mdi-lock-reset"
	textfields.BindVueElement(txtlocation)
	'
	vtextfieldcontainer.Matrix(3, 1).LoadLayout("vbtngettexts")
	textfields.BindVueElement(vbtngettexts)
'	

	Dim txtusername1 As BANanoElement = BVAD3.NewTextField(textfields, "txtUserName1", "username", "User Name", "", True, "mdi-account-circle", 0, "", CreateMap(":dense":True))
	vtextfieldcontainer.Matrix(4, 1).Append(txtusername1.GetHTML)
	'
	Dim txtpassword1 As BANanoElement = BVAD3.NewPassword(textfields, "txtPassword1", "pwd", "Password", "", True, "mdi-lock", 10, "", Null)
	vtextfieldcontainer.Matrix(4, 2).Append(txtpassword1.GetHTML)
	'
	Dim txtsearch As BANanoElement = BVAD3.NewTextField(textfields, "txtsearch", "search", "Search", "", False, "", 0, "", CreateMap("append-icon":"mdi-magnify",":single-line":True, ":hide-details":True))
	vtextfieldcontainer.Matrix(4, 3).Append(txtsearch.GetHTML)
		

	'add the component as a router
	vuetify.AddRoute(textfields)
End Sub
'
Sub vbtngettexts_Click (e As BANanoEvent)
	'get details from saved state
	Dim sfirstname As String =  textfields.GetData("firstname")
	Dim slastname As String =  textfields.GetData("lastname")
	Dim scity As String = textfields.GetData("city")
	Dim sstreet As String = textfields.GetData("street")
	'
	Dim m As Map = CreateMap()
	m.Put("firstname", sfirstname)
	m.Put("lastname", slastname)
	m.Put("city", scity)
	m.Put("street", sstreet)
	vuetify.ShowSnackBarSecondary(banano.ToJson(m))
End Sub

Sub txtlocation_ClickAppend (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("location click append")	
End Sub

Sub txtlocation_ClickAppendOuter (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("location click append outer")
End Sub

Sub txtlocation_ClickPrepend (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("location click prepend")
End Sub

Sub txtlocation_ClickPrependInner (e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("location click prepend inner")
End Sub