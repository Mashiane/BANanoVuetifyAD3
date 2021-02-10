B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
'static code module
Sub Process_Globals
Public vuetify As VuetifyApp 
Public contacts As VueComponent 
Public path As String 
Public name As String = "contacts" 
Private banano As BANano 
Private dtContacts As VueTable 
Private dlgContacts As VueElement 
Private msgBox As VueElement 
Private Mode As String  
End Sub

Sub Initialize
'establish a reference to the app
vuetify = pgIndex.vuetify
''initialize the component
contacts.Initialize(Me, name)
path = contacts.path
'
''add a msgbox dialog for this page
msgBox = contacts.AddMsgBox(True, 500, "success", "error")
'
CreateTable
CreateDialog
'
'as soon as we have mounted, show the contacts
Dim args As List = contacts.newlist
contacts.SetMounted(Me, "LoadContacts", args)
'add supporting CRUD methods...
contacts.SetMethod(Me, "CreateContact", args)
contacts.SetMethod(Me, "DeleteContact", args)
contacts.SetMethod(Me, "UpdateContact", args)
contacts.SetMethod(Me, "ReadContact", args)
contacts.SetMethod(Me, "Loadgenders", args)
''add the component as a router
vuetify.AddRoute(contacts)
End Sub


Sub LoadContacts		'ignoredeadcode 
	'Show progress loader 
	dtContacts.UpdateLoading(contacts, True) 
	Dim rsContacts As BANanoMySQLE 
	rsContacts.Initialize("test", "contacts", "userid", "userid") 
	'add field types 
	rsContacts.SchemaAddInt(Array("userid","age"))
rsContacts.SchemaAddText(Array("username","firstname","lastname","gender","email"))
 
	rsContacts.SelectAll(Array("*"), Array("username")) 
	rsContacts.JSON = banano.CallInlinePHPWait(rsContacts.MethodName, rsContacts.Build) 
	rsContacts.FromJSON 
	Select Case rsContacts.OK 
	Case False 
	'clear content 
		dtContacts.Reload(contacts, contacts.NewList) 
		'hide progress loader 
		dtContacts.UpdateLoading(contacts, False) 
		Dim strError As String = rsContacts.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	End Select 
	dtContacts.Reload(contacts, rsContacts.Result) 
	'hide progress loader 
	dtContacts.UpdateLoading(contacts, False) 
End Sub

Sub ReadContact(suserid As String)			'ignoredeadcode 
	contacts.RunMethod("Loadgenders", Null)
 
	Dim rsContacts As BANanoMySQLE 
	rsContacts.Initialize("test", "contacts", "userid", "userid") 
	'add field types 
	rsContacts.SchemaAddInt(Array("userid","age"))
rsContacts.SchemaAddText(Array("username","firstname","lastname","gender","email"))
 
	rsContacts.Read(suserid) 
	rsContacts.JSON = banano.CallInlinePHPWait(rsContacts.MethodName, rsContacts.Build) 
	rsContacts.FromJSON 
	Select Case rsContacts.OK 
	Case False 
		Dim strError As String = rsContacts.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	End Select 
	Dim ContactM As Map = rsContacts.result.Get(0) 
	'show the drawer 
	contacts.SetData("dlgcontactsshow", True) 
	contacts.SetData("contact", ContactM) 
End Sub

Sub UpdateContact(ContactM As Map)			'ignoredeadcode 
	 
	Dim suserid As String = ContactM.Get("userid") 
	Dim rsContacts As BANanoMySQLE 
	rsContacts.Initialize("test", "contacts", "userid", "userid") 
	'add field types 
	rsContacts.SchemaAddInt(Array("userid","age"))
rsContacts.SchemaAddText(Array("username","firstname","lastname","gender","email"))
 
	'insert current record 
	rsContacts.Update1(ContactM, suserid) 
	rsContacts.JSON = banano.CallInlinePHPWait(rsContacts.MethodName, rsContacts.Build) 
	rsContacts.FromJSON 
	Select Case rsContacts.OK 
	Case False 
		Dim strError As String = rsContacts.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
	Case Else 
		vuetify.ShowSnackBarSuccess("The contact has been updated successfully!") 
		'hide modal form 
		contacts.SetData("dlgcontactsshow", False) 
		'load records 
		contacts.RunMethod("LoadContacts", Null) 
	End Select 
End Sub

Sub CreateContact(ContactM As Map)			'ignoredeadcode 
	'remove the auto-increment key field 
	ContactM.Remove("userid") 
	 
	Dim rsContacts As BANanoMySQLE 
	rsContacts.Initialize("test", "contacts", "userid", "userid") 
	'add field types 
	rsContacts.SchemaAddInt(Array("userid","age"))
rsContacts.SchemaAddText(Array("username","firstname","lastname","gender","email"))
 
	'insert current record 
	rsContacts.Insert1(ContactM) 
	rsContacts.JSON = banano.CallInlinePHPWait(rsContacts.MethodName, rsContacts.Build) 
	rsContacts.FromJSON 
	Select Case rsContacts.OK 
	Case False 
		Dim strError As String = rsContacts.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
	Case Else 
		vuetify.ShowSnackBarSuccess("The contact has been added successfully!") 
		'hide modal form 
		contacts.SetData("dlgcontactsshow", False) 
		'Load records 
		contacts.RunMethod("LoadContacts", Null) 
	End Select 
End Sub

Sub DeleteContact(suserid As String)			'ignoredeadcode 
	Dim rsContacts As BANanoMySQLE 
	rsContacts.Initialize("test", "contacts", "userid", "userid") 
	'add field types 
	rsContacts.SchemaAddInt(Array("userid","age"))
rsContacts.SchemaAddText(Array("username","firstname","lastname","gender","email"))
 
	rsContacts.Delete(suserid) 
	rsContacts.JSON = banano.CallInlinePHPWait(rsContacts.MethodName, rsContacts.Build) 
	rsContacts.FromJSON 
	Select Case rsContacts.OK 
	Case False 
		Dim strError As String = rsContacts.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	Case Else 
		vuetify.ShowSnackBarSuccess("The contact was deleted successfully!") 
	End Select 
	contacts.RunMethod("LoadContacts", Null) 
End Sub

Sub CreateTable
'add a container to hold the contacts 
	Dim contContact As VueElement = vuetify.AddContainer(Me, contacts.Here, "contContact", True) 
	contContact.AddRows1.AddColumns12 
	contContact.BuildGrid 
	' 
	contacts.BindVueElement(contContact)
dtContacts = vuetify.AddDataTable(Me, contContact.MatrixID(1,1), "dtContacts")
dtContacts.Title = "Contacts"
dtContacts.ItemKey = "userid"
dtContacts.ItemsPerPage = 50
dtContacts.MultiSort = True
dtContacts.AddSpacer
dtContacts.AddSearch
dtContacts.AddDivider
dtContacts.AddNew(contacts)
dtContacts.AddDivider
dtContacts.AddClearSort(contacts)
dtContacts.AddDivider
dtContacts.AddFilter(contacts, "primary--text")
dtContacts.AddDivider
dtContacts.AddClearFilter(contacts)
dtContacts.AddDivider
dtContacts.AddRefresh(contacts)
dtContacts.AddDivider
dtContacts.SetFilterable(Array("username","firstname","lastname","gender","age","email"))
dtContacts.AddColumn("username", "User Name")
dtContacts.SetTextField("username", false)
dtContacts.SetColumnSortable("username", true)
dtContacts.AddColumn("firstname", "First Name")
dtContacts.SetTextField("firstname", false)
dtContacts.SetColumnSortable("firstname", true)
dtContacts.AddColumn("lastname", "Last Name")
dtContacts.SetTextField("lastname", false)
dtContacts.SetColumnSortable("lastname", true)
dtContacts.AddColumn("gender", "Gender")
dtContacts.SetColumnSortable("gender", true)
dtContacts.AddNumberColumn("age", "Age", "")
dtContacts.SetColumnSortable("age", true)
dtContacts.AddColumn("email", "Email Address")
dtContacts.SetTextField("email", false)
dtContacts.SetColumnSortable("email", true)
dtContacts.AddEdit
dtContacts.AddDelete
dtContacts.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)
dtContacts.SetIconDimensions("delete", "", vuetify.COLOR_RED)
dtContacts.SetDataSource(contacts.NewList)
contacts.BindVueTable(dtContacts)
End Sub

Sub dlgContactsok_click(e As BANanoEvent)			'ignoredeadcode 
	'validate the form 
	'Dim bValid As Boolean = vuetify.FormValidate("frmAddtopic") 
	'Log(bValid) 
	 
	'If bValid = False Then Return 
	'get the topic 
	Dim ContactM As Map = contacts.GetData("contact") 
	'Dim stopicname As String = topicm.Get("topicname") 
	'stopicname = stopicname.Trim 
	'If stopicname = "" Then 
	'	vuetify.ShowSnackBarError("The topic name should be specified!") 
	'	Return 
	'End If 
	Select Case Mode 
	Case "A" 
		contacts.RunMethod("CreateContact", ContactM) 
	Case "E"	 
		contacts.RunMethod("UpdateContact", ContactM) 
	End Select 
End Sub

Sub dlgContactscancel_click(e As BANanoEvent)				'ignoredeadcode 
	Mode = "A" 
	'initialize the record 
	contacts.SetData("contact", vuetify.NewMap) 
	'hide the drawer/dialog 
	contacts.SetData("dlgcontactsshow", False) 
End Sub

Sub dtContacts_add_click(e As BANanoEvent)				'ignoredeadcode 
	AddContact 
End Sub

Sub AddContact			'ignoreDeadCode 
	contacts.RunMethod("Loadgenders", Null)
 
	contacts.DialogUpdateTitle("dlgContacts", "Add Contact") 
	Mode = "A" 
	'initialize the record 
	Dim nt As Map = CreateMap() 
	nt.put("userid", -1)
nt.put("username", "")
nt.put("firstname", "")
nt.put("lastname", "")
nt.put("gender", "Male")
nt.put("age", 0)
nt.put("email", "")
 
	contacts.SetData("contact", nt) 
	contacts.SetData("useridshow", false)
 
	contacts.SetData("usernamerequired", True)
contacts.SetData("firstnamerequired", True)
contacts.SetData("lastnamerequired", True)
contacts.SetData("agerequired", True)
contacts.SetData("emailrequired", True)
 
	'show the drawer 
	contacts.SetData("dlgcontactsshow", True) 
	'vuetify.SetFocus("username") 
End Sub

Private Sub dtContacts_edit (item As Map)				'ignoredeadcode 
	contacts.DialogUpdateTitle("dlgContacts", "Edit Contact") 
	Mode = "E" 
	Dim suserid As String = item.Get("userid") 
	contacts.RunMethod("ReadContact", suserid) 
	contacts.SetData("useridshow", false)
 
	contacts.SetData("usernamerequired", True)
contacts.SetData("firstnamerequired", True)
contacts.SetData("lastnamerequired", True)
contacts.SetData("agerequired", True)
contacts.SetData("emailrequired", True)
 
	vuetify.SetFocus("username") 
End Sub

Private Sub dtContacts_delete (item As Map)				'ignoredeadcode 
	Dim susername As String = item.Get("username") 
	Dim suserid As String = item.Get("userid") 
	contacts.SetData("userid", suserid) 
	contacts.ShowConfirm("deletecontact", $"Confirm Delete: ${susername}"$, $"Are you sure you want to delete this contact?<br><br>Please note you will not be able to undo your changes. Continue?"$, "Yes", "No") 
	End Sub

Sub contactsok_click(e As BANanoEvent)			'ignoredeadcode 
	contacts.HideDialog 
	'get the process 
	Dim sconfirm As String = contacts.Confirm 
	Select Case sconfirm 
	Case "deletecontact" 
	'get the saved id 
		Dim suserid As String = contacts.GetData("userid") 
		contacts.RunMethod("DeleteContact", suserid) 
	End Select 
End Sub

Sub contactscancel_click(e As BANanoEvent)			'ignoredeadcode 
	contacts.HideDialog 
	'get the process 
	Dim sconfirm As String = contacts.Confirm 
	Select Case sconfirm 
	End Select 
End Sub

Private Sub dtContacts_clearsort_Click (e As BANanoEvent)		'ignoredeadcode 
	dtContacts.ClearSort(contacts) 
End Sub

Private Sub dtContacts_clearfilter_click (e As BANanoEvent)			'ignoredeadcode 
	dtContacts.ClearFilter(contacts) 
End Sub

Private Sub dtContacts_refresh_click (e As BANanoEvent)			'ignoredeadcode 
contacts.RunMethod("LoadContacts", Null) 
End Sub

Private Sub dtContacts_change (item As Map)				'ignoredeadcode 
	contacts.RunMethod("UpdateContact", item) 
End Sub

Private Sub dtContacts_filter_click(e As BANanoEvent)		'ignoredeadcode 
	dtContacts.ApplyFilter(contacts) 
End Sub

Sub dtContacts_SaveItem (item As Map) 
	contacts.RunMethod("UpdateContact", item) 
End Sub

Private Sub dtContacts_CancelItem (item As Map) 
End Sub

Private Sub dtContacts_OpenItem (item As Map) 
End Sub

Private Sub dtContacts_CloseItem (item As Map) 
End Sub

Private Sub dtContacts_ItemSelected (item As Map) 
End Sub

Private Sub dtContacts_ClickRow (e As BANanoEvent) 
End Sub

Sub CreateDialog
'create a container
Dim dlgContacts As VueElement = vuetify.AddDialogInput(Me, contacts.Here, "dlgContacts", True, "500", "Contacts", "Save", "primary", "Cancel", "error")
dlgContacts.FullScreenOnMobile = True
contacts.BindVueElement(dlgContacts)
'get the container
Dim ContactCont As VueElement = contacts.DialogContainer("dlgContacts")
ContactCont.AddRows1.AddColumns12
ContactCont.AddRows1.AddColumns2x6
ContactCont.AddRows1.AddColumns2x6
ContactCont.AddRows1.AddColumns2x6
ContactCont.BuildGrid

Dim userid As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(1, 1), "userid", "contact.userid", "User No", Null)
userid.VShow = "useridshow"
userid.HideDetails = True
userid.Dense = True
contacts.BindVueElement(userid)
Dim username As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(2, 1), "username", "contact.username", "User Name", Null)
username.HideDetails = True
username.Dense = True
username.Required = ":usernamerequired"
username.Outlined = True
username.Rounded = True
username.Clearable = True
username.AutoFocus = True
contacts.BindVueElement(username)
Dim firstname As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(3, 1), "firstname", "contact.firstname", "First Name", Null)
firstname.HideDetails = True
firstname.Dense = True
firstname.Required = ":firstnamerequired"
firstname.Outlined = True
firstname.Rounded = True
firstname.Clearable = True
contacts.BindVueElement(firstname)
Dim lastname As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(3, 2), "lastname", "contact.lastname", "Last Name", Null)
lastname.HideDetails = True
lastname.Dense = True
lastname.Required = ":lastnamerequired"
lastname.Outlined = True
lastname.Rounded = True
lastname.Clearable = True
contacts.BindVueElement(lastname)
Dim gender As VueElement = vuetify.AddRadioGroup(Me, ContactCont.MatrixID(4, 1), "gender", "contact.gender", "Gender", true, False, "genders", "id", "text", "", Null, Null)
gender.HideDetails = True
gender.Dense = True
gender.Outlined = True
gender.Rounded = True
gender.SetData("genders", contacts.NewList)
contacts.BindVueElement(gender)
Dim age As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(4, 2), "age", "contact.age", "Age", Null)
age.HideDetails = True
age.Dense = True
age.Required = ":agerequired"
age.Outlined = True
age.Rounded = True
age.Clearable = True
contacts.BindVueElement(age)
Dim email As VueElement = vuetify.AddTextField1(Me, ContactCont.MatrixID(2, 2), "email", "contact.email", "Email Address", Null)
email.HideDetails = True
email.Dense = True
email.Required = ":emailrequired"
email.Outlined = True
email.Rounded = True
email.Clearable = True
contacts.BindVueElement(email)

contacts.BindVueElement(ContactCont)
contacts.BindVueElement(dlgContacts)
'initialize the Contact
Dim contact As Map = CreateMap()
contact.put("userid", -1)
contact.put("username", "")
contact.put("firstname", "")
contact.put("lastname", "")
contact.put("gender", "Male")
contact.put("age", 0)
contact.put("email", "")

contacts.SetData("contact", contact)
End Sub


Sub Loadgenders		'ignoredeadcode 
	Dim rsgenders As BANanoMySQLE 
	rsgenders.Initialize("test", "genders", "id", "") 
	rsgenders.SelectAll(Array("id","text"), Array("text")) 
	rsgenders.JSON = banano.CallInlinePHPWait(rsgenders.MethodName, rsgenders.Build) 
	rsgenders.FromJSON 
	Select Case rsgenders.OK 
	Case False 
		contacts.SetData("genders", contacts.NewList) 
		Dim strError As String = rsgenders.Error 
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError) 
		Return 
	End Select 
	contacts.SetData("genders", rsgenders.Result) 
End Sub

