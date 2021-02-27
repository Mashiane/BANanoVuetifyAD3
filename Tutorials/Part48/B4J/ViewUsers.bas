B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@

'static code module
Sub Process_Globals
	Public vuetify As VuetifyApp 
	Public users As VueComponent 
	Public path As String 
	Public name As String = "users" 
	Private banano As BANano 
	Private dtUsers As VueTable 
	Private dlgUsers As VueElement 
	Private msgBox As VueElement 
	Private Mode As String  
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	''initialize the component
	users.Initialize(Me, name)
	users.vuetify = vuetify
	path = users.path
	'
	''add a msgbox dialog for this page
	msgBox = users.AddMsgBox(True, 500, "success", "error")
	'
	CreateTable
	CreateDialog
	'
	'as soon as we have mounted, show the users
	Dim args As List = users.newlist
	users.SetMounted(Me, "LoadUsers", args)
	'add supporting CRUD methods...
	users.SetMethod(Me, "Createuser", args)
	users.SetMethod(Me, "Deleteuser", args)
	users.SetMethod(Me, "Updateuser", args)
	users.SetMethod(Me, "Readuser", args)
	''add the component as a router
	vuetify.AddRoute(users)
End Sub


Sub LoadUsers		'ignoredeadcode 
	'Show progress loader 
	dtUsers.UpdateLoading(True)
	
	Dim read As BANanoAxios
	read.Initialize("https://jsonplaceholder.typicode.com/users")
	Dim data As List = banano.Await(read.GetWait)
	If read.Status <> "200" Then
		dtUsers.UpdateLoading(False)
		'clear content
		dtUsers.Reload(users.NewList)
		vuetify.ShowSnackBarError("The records could not be loaded.")
		Return
	End If
	dtUsers.Reload(data) 
	'hide progress loader 
	dtUsers.UpdateLoading(False) 
End Sub

Sub ReadUser(sid As String)			'ignoredeadcode
	Dim read As BANanoAxios
	read.Initialize($"https://jsonplaceholder.typicode.com/users/${sid}"$)
	Dim data As Map = banano.Await(read.GetWait)
	If read.Status <> "200" Then
		vuetify.ShowSnackBarError("An error took place whilst reading the user.")
		Return
	End If
	vuetify.ShowSnackBarSuccess(read.StatusText)
	users.SetData("dlgusersshow", True)
	users.SetData("user", data)
End Sub

Sub UpdateUser(userM As Map)			'ignoredeadcode 
	Dim sid As String = userM.Get("id")
	Dim update As BANanoAxios
	update.Initialize($"https://jsonplaceholder.typicode.com/users/${sid}"$)
	banano.Await(update.PutWait(userM))
	If update.Status <> "200" Then
		vuetify.ShowSnackBarError("An error took place whilst updating the user.")
		Return
	End If
	vuetify.ShowSnackBarSuccess(update.StatusText)
	'hide modal form
	users.SetData("dlgusersshow", False)
	users.RunMethod("LoadUsers", Null)
End Sub

Sub CreateUser(userM As Map)			'ignoredeadcode 
	'remove the auto-increment key field 
	userM.Remove("id")
	
	Dim create As BANanoAxios
	create.Initialize("https://jsonplaceholder.typicode.com/users")
	banano.Await(create.PostWait(userM))
	If create.Status <> "201" Then
		vuetify.ShowSnackBarError("An error took place whilst adding the user.")
		Return
	End If
	vuetify.ShowSnackBarSuccess(create.StatusText)
	'hide modal form
	users.SetData("dlgusersshow", False)
	users.RunMethod("LoadUsers", Null)
End Sub

Sub DeleteUser(sid As String)			'ignoredeadcode
	Dim delete As BANanoAxios
	delete.Initialize($"https://jsonplaceholder.typicode.com/todos/${sid}"$)
	banano.Await(delete.DeleteWait)
	
	
	If delete.Status <> "200" Then
		vuetify.ShowSnackBarError("An error took place whilst deleting the user.")
		Return
	End If
	vuetify.ShowSnackBarSuccess(delete.statustext) 
	users.RunMethod("LoadUsers", Null) 
End Sub

Sub CreateTable
'add a container to hold the users 
	Dim contuser As VueElement = vuetify.AddContainer(Me, users.Here, "contuser", True) 
	contuser.AddRows2.AddColumns12 
	contuser.BuildGrid 
	' 
	users.BindVueElement(contuser)
	dtUsers = vuetify.AddDataTable(Me, contuser.MatrixID(1,1), "dtUsers")
	dtUsers.ParentComponent = users
	dtUsers.Title = "Users"
	dtUsers.ItemKey = "id"
	dtUsers.ItemsPerPage = 10
	dtUsers.MustSort = True
	dtUsers.MultiSort = True
	dtUsers.AddSpacer
	dtUsers.AddSearch
	dtUsers.AddDivider
	dtUsers.AddNew
	dtUsers.AddDivider
	dtUsers.AddClearSort
	dtUsers.AddDivider
	dtUsers.AddFilter("primary--text")
	dtUsers.AddDivider
	dtUsers.AddClearFilter
	dtUsers.AddDivider
	dtUsers.AddRefresh
	dtUsers.AddDivider
	dtUsers.SetFilterable(Array("name","username","email","phone"))
	dtUsers.AddColumn("id", "ID")
	dtUsers.SetTextField("id", False)
	dtUsers.SetColumnSortable("id", False)
	dtUsers.AddColumn("name", "Name")
	dtUsers.SetTextField("name", False)
	dtUsers.SetColumnSortable("name", True)
	dtUsers.AddColumn("username", "User Name")
	dtUsers.SetTextField("username", False)
	dtUsers.SetColumnSortable("username", True)
	dtUsers.AddColumn("email", "Email")
	dtUsers.SetTextField("email", False)
	dtUsers.SetColumnSortable("email", True)
	dtUsers.AddColumn("phone", "Phone")
	dtUsers.SetTextField("phone", False)
	dtUsers.SetColumnSortable("phone", True)
	dtUsers.AddEdit
	dtUsers.AddDelete
	dtUsers.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)
	dtUsers.SetIconDimensions("delete", "", vuetify.COLOR_RED)
	dtUsers.SetDataSource(users.NewList)
	users.BindVueTable(dtUsers)
End Sub

Sub dlgUsersok_click(e As BANanoEvent)			'ignoredeadcode 
	'get the current $refs 
	users.refs = vuetify.GetRefs 
	'validate the page 
	Dim fValid As Boolean = users.DialogValidate("dlgUsers") 
	If fValid = False Then  
		vuetify.ShowSnackBarError("Please ensure that you complete all information.") 
		Return 
	End If 
	'get the topic 
	Dim userM As Map = users.GetData("user") 
	Select Case Mode 
	Case "A" 
		users.RunMethod("Createuser", userM) 
	Case "E"	 
		users.RunMethod("Updateuser", userM) 
	End Select 
End Sub

Sub dlgUserscancel_click(e As BANanoEvent)				'ignoredeadcode 
	Mode = "A" 
	'initialize the record 
	users.SetData("user", vuetify.NewMap) 
	'hide the drawer/dialog 
	users.SetData("dlgusersshow", False) 
End Sub

Sub dtUsers_add_click(e As BANanoEvent)				'ignoredeadcode 
	Adduser 
End Sub

Sub Adduser			'ignoreDeadCode 
	users.DialogUpdateTitle("dlgUsers", "Add User") 
	Mode = "A" 
	'initialize the record 
	Dim nt As Map = CreateMap() 
	nt.put("id", -1)
	nt.put("name", "")
	nt.put("username", "")
	nt.put("email", "")
	nt.put("phone", "")
 	users.SetData("user", nt) 
	 
	users.SetData("idrequired", True)
	users.SetData("namerequired", True)
	users.SetData("usernamerequired", True)
	users.SetData("emailrequired", True)
	users.SetData("phonerequired", True)
 
	'show the drawer 
	users.SetData("dlgusersshow", True) 
	'get the current $refs
	'users.refs = vuetify.GetRefs
	'users.SetFocus("name") 
End Sub

Private Sub dtUsers_edit (item As Map)				'ignoredeadcode 
	users.DialogUpdateTitle("dlgUsers", "Edit User") 
	Mode = "E" 
	Dim sid As String = item.Get("id") 
	users.RunMethod("Readuser", sid) 
	 
	users.SetData("idrequired", True)
	users.SetData("namerequired", True)
	users.SetData("usernamerequired", True)
	users.SetData("emailrequired", True)
	users.SetData("phonerequired", True)
	'get the current $refs
	'users.refs = vuetify.GetRefs
	'users.SetFocus("name") 
End Sub

Private Sub dtUsers_delete (item As Map)				'ignoredeadcode 
	Dim sname As String = item.Get("name") 
	Dim sid As String = item.Get("id") 
	users.SetData("id", sid) 
	users.ShowConfirm("deleteuser", $"Confirm Delete: ${sname}"$, $"Are you sure you want to delete this user?<br><br>Please note you will not be able to undo your changes. Continue?"$, "Yes", "No") 
	End Sub

Sub usersok_click(e As BANanoEvent)			'ignoredeadcode 
	users.HideDialog 
	'get the process 
	Dim sconfirm As String = users.Confirm 
	Select Case sconfirm 
	Case "deleteuser" 
	'get the saved id 
		Dim sid As String = users.GetData("id") 
		users.RunMethod("Deleteuser", sid) 
	End Select 
End Sub

Sub userscancel_click(e As BANanoEvent)			'ignoredeadcode 
	users.HideDialog 
	'get the process 
	Dim sconfirm As String = users.Confirm 
	Select Case sconfirm 
	End Select 
End Sub

Private Sub dtUsers_clearsort_Click (e As BANanoEvent)		'ignoredeadcode 
	dtUsers.ClearSort 
End Sub

Private Sub dtUsers_clearfilter_click (e As BANanoEvent)			'ignoredeadcode 
	dtUsers.ClearFilter 
End Sub

Private Sub dtUsers_refresh_click (e As BANanoEvent)			'ignoredeadcode 
	users.RunMethod("LoadUsers", Null) 
End Sub

Private Sub dtUsers_change (item As Map)				'ignoredeadcode 
	users.RunMethod("Updateuser", item) 
End Sub

Private Sub dtUsers_filter_click(e As BANanoEvent)		'ignoredeadcode 
	dtUsers.ApplyFilter 
End Sub

Sub dtUsers_SaveItem (item As Map) 
	users.RunMethod("Updateuser", item) 
End Sub

Private Sub dtUsers_CancelItem (item As Map) 
End Sub

Private Sub dtUsers_OpenItem (item As Map) 
End Sub

Private Sub dtUsers_CloseItem (item As Map) 
End Sub

Private Sub dtUsers_ItemSelected (item As Map) 
End Sub

Private Sub dtUsers_ClickRow (e As BANanoEvent) 
End Sub

Sub idrule(v As String) As Object	'ignoredeadcode
	If v = "" Then
		Return "The ID is required!"
	Else
		Return True
	End If
End Sub

Sub namerule(v As String) As Object	'ignoredeadcode
	If v = "" Then
	Return "The Name is required!"
	Else
	Return True
	End If
End Sub

Sub usernamerule(v As String) As Object	'ignoredeadcode
	If v = "" Then
	Return "The User Name is required!"
	Else
	Return True
	End If
End Sub

Sub emailrule(v As String) As Object	'ignoredeadcode
	If v = "" Then
	Return "The Email is required!"
	Else
	Return True
	End If
End Sub

Sub phonerule(v As String) As Object	'ignoredeadcode
	If v = "" Then
	Return "The Phone is required!"
	Else
	Return True
	End If
End Sub

Sub CreateDialog
	'create a container
	Dim dlgUsers As VueElement = vuetify.AddDialogInput(Me, users.Here, "dlgUsers", True, "700", "Users", "Save", "primary", "Cancel", "error")
	dlgUsers.FullScreenOnMobile = True
	users.BindVueElement(dlgUsers)
	'get the container
	Dim userCont As VueElement = users.DialogContainer("dlgUsers")
	userCont.LazyValidation = True
	userCont.VModel = "dlgUsersvalid"
	userCont.AddRows1.AddColumns12
	userCont.AddRows1.AddColumns2x6
	userCont.AddRows1.AddColumns2x6
	userCont.BuildGrid

	Dim id As VueElement = vuetify.AddTextField1(Me, userCont.MatrixID(1, 1), "id", "user.id", "ID", Null)
	id.Required = ":idrequired"
	id.AddRule("idrule")
	id.Outlined = True
	'id.Rounded = True
	id.Clearable = True
	users.BindVueElement(id)

	Dim xname As VueElement = vuetify.AddTextField1(Me, userCont.MatrixID(2, 1), "name", "user.name", "Name", Null)
	xname.Required = ":namerequired"
	xname.AddRule("namerule")
	xname.Outlined = True
	'xname.Rounded = True
	xname.Clearable = True
	xname.AutoFocus = True
	users.BindVueElement(xname)

	Dim username As VueElement = vuetify.AddTextField1(Me, userCont.MatrixID(2, 2), "username", "user.username", "User Name", Null)
	username.Required = ":usernamerequired"
	username.AddRule("usernamerule")
	username.Outlined = True
	'username.Rounded = True
	username.Clearable = True
	users.BindVueElement(username)

	Dim email As VueElement = vuetify.AddTextField1(Me, userCont.MatrixID(3, 1), "email", "user.email", "Email", Null)
	email.Required = ":emailrequired"
	email.AddRule("emailrule")
	email.Outlined = True
	'email.Rounded = True
	email.Clearable = True
	users.BindVueElement(email)

	Dim phone As VueElement = vuetify.AddTextField1(Me, userCont.MatrixID(3, 2), "phone", "user.phone", "Phone", Null)
	phone.Required = ":phonerequired"
	phone.AddRule("phonerule")
	phone.Outlined = True
	'phone.Rounded = True
	phone.Clearable = True
	users.BindVueElement(phone)

	users.BindVueElement(userCont)
	users.BindVueElement(dlgUsers)
	users.SetData("dlgusersvalid", True)
	'initialize the user
	Dim user As Map = CreateMap()
	user.put("id", -1)
	user.put("name", "")
	user.put("username", "")
	user.put("email", "")
	user.put("phone", "")

	users.SetData("user", user)
End Sub
