B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public DatabaseName As String
	Public TableName As String
	Public PrimaryKey As String
	Public Fields As List
	Public Singular As String
	Public Plural As String
	Public sb As StringBuilder
	Public SortBy As String
	Private dtName As String
	Public ComponentName As String
	Public AutoIncrement As String
	Private rsTB As String
	Private Integers As List
	Private Strings As List
	Private Doubles As List
	Private Blobs As List
	Private ModalName As String
	Private ModalShow As String
	Private Defaults As Map
	Private Visibility As Map
	Public FocusOn As String
	Public DisplayField As String
	Private Filters As List
	Public DT_HasPrint As Boolean
	Public DT_HasClone As Boolean
	Public DT_HasEdit As Boolean
	Public DT_HasDelete As Boolean
	Public DT_HasSearch As Boolean
	Public DT_HasAddNew As Boolean
	Public DT_ItemsPerPage As String
	Public DT_HasClearSort As Boolean
	Public DT_HasFilter As Boolean
	Public DT_HasBack As Boolean
	Public DT_HasRefresh As Boolean
	Public DT_ShowGroupBy As Boolean
	Public HasDialog As Boolean
	Public DT_HasMenu As Boolean
	Public DT_HasDownload As Boolean
	Public DT_HasPrint As Boolean
	Public DT_HasSave As Boolean
	Public DT_HasCancel As Boolean
	Public DT_ShowSelect As Boolean
	Public DT_SingleSelect As Boolean
	Private dtCode As StringBuilder
	Private DT_HasEditDialog As Boolean
	Public DT_Dense As Boolean
	Public DT_MustSort As Boolean
	Public DT_MultiSort As Boolean
	Public Diag_Width As String
	Private dtCont As StringBuilder
	Private SingularClean As String
	Private PluralClean As String
	Type DBRelationship(source As String, key As String, value As String, vmodel As String)
	Private relationships As List
	Private className As String
	Private addedFiles As List
	Private matrix As List
	Private matrixMap As Map
	Private BANano As BANano
	Private HideDetailsM As Map
	Private DenseM As Map
	Private RequiredM As Map
	Private ReadOnlyM As Map
	Private DisabledM As Map
	Private OutlinedM As Map
	Private RoundedM As Map
	Private ClearableM As Map
	Private AutoFocusM As Map
	Private FilledM As Map
	Private ShapedM As  Map
	Public Diag_FullScreenOnMobile As Boolean
	Public Diag_LazyValidation As Boolean
	Public DB_CreateTable As String
End Sub

'initialize the crud class
Public Sub Initialize(clsName As String) As MySQLCRUD
	Fields.Initialize
	className = clsName
	sb.Initialize
	DatabaseName = ""
	TableName = ""
	PrimaryKey = ""
	Singular = ""
	Plural = ""
	SortBy = ""
	dtName = ""
	ComponentName = ""
	AutoIncrement = ""
	Integers.Initialize
	Strings.Initialize
	Doubles.Initialize
	Blobs.Initialize
	ModalName = ""
	ModalShow = ""
	Defaults.Initialize
	Visibility.Initialize
	FocusOn = ""
	DisplayField = ""
	Filters.Initialize
	DT_HasPrint = False
	DT_HasClone = False
	DT_HasEdit = False
	DT_HasDelete = False
	DT_HasSearch = False
	DT_HasAddNew = False
	DT_ItemsPerPage = 10
	DT_HasClearSort = False
	DT_HasFilter = False
	DT_HasRefresh = False
	DT_HasBack = False
	HasDialog = False
	DT_HasMenu = False
	DT_HasDownload = False
	DT_HasPrint = False
	DT_HasSave = False
	DT_HasCancel = False
	DT_HasEditDialog = False
	DT_ShowGroupBy = False
	DT_ShowSelect = False
	DT_SingleSelect = False
	dtCode.Initialize
	Diag_Width = "600"
	dtCont.Initialize
	relationships.Initialize 
	addedFiles.Initialize 
	matrix.initialize
	matrixMap.initialize
	HideDetailsM.Initialize
	DenseM.Initialize
	RequiredM.Initialize
	ReadOnlyM.Initialize
	DisabledM.Initialize
	OutlinedM.Initialize
	RoundedM.Initialize
	ClearableM.Initialize
	AutoFocusM.Initialize
	FilledM.Initialize
	ShapedM.Initialize
	DT_Dense = False
	DT_MustSort = False
	DT_MultiSort = False
	Diag_FullScreenOnMobile = False
	DB_CreateTable = ""
	Return Me
End Sub

'set dialog element to filled
Sub Diag_SetFilled(fldname As String, b As Boolean)
	If b = False Then Return
	FilledM.Put(fldname, fldname)
End Sub

'set dialog elemnt to shaped
Sub Diag_SetShaped(fldname As String, b As Boolean)
	If b = False Then Return
	ShapedM.Put(fldname, fldname)
End Sub

'set dialog element tp auto focus
Sub Diag_SetAutoFocus(fldname As String, b As Boolean)
	If b = False Then Return
	AutoFocusM.Put(fldname, fldname)
End Sub

'set dialog element to clearable
Sub Diag_SetClearable(fldname As String, b As Boolean)
	If b = False Then Return
	ClearableM.Put(fldname, fldname)
End Sub

'set dialog element to hide details
Sub Diag_SetHideDetails(fldName As String, b As Boolean)
	If b = False Then Return
	HideDetailsM.Put(fldName, fldName)
End Sub

'set dialog element to dense
Sub Diag_SetDense(fldName As String, b As Boolean)
	If b = False Then Return
	DenseM.Put(fldName, fldName)
End Sub

'set dialog element to required
Sub Diag_SetRequired(fldName As String, title As String, b As Boolean)
	If b = False Then Return
	RequiredM.Put(fldName, title)
End Sub

'set dialog element to read only
Sub Diag_SetReadOnly(fldName As String, b As Boolean)
	If b = False Then Return
	ReadOnlyM.Put(fldName, fldName)
End Sub

'set dialog element to disabled
Sub Diag_SetDisabled(fldName As String, b As Boolean)
	If b = False Then Return
	DisabledM.Put(fldName, fldName)
End Sub

'set dialog element tp outlined
Sub Diag_SetOutlined(fldName As String, b As Boolean)
	If b = False Then Return
	OutlinedM.Put(fldName, fldName)
End Sub

'set dialog element to rounded
Sub Diag_SetRounded(fldName As String, b As Boolean)
	If b = False Then Return
	RoundedM.Put(fldName, fldName)
End Sub

'set properties
private Sub SetProperties(fldNAme As String)
	If HideDetailsM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.HideDetails = True"$).Append(CRLF)
	End If
	If DenseM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Dense = True"$).Append(CRLF)
	End If
	If RequiredM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Required = ":${fldNAme}required""$).Append(CRLF)
		dtCont.Append($"${fldNAme}.AddRule("${fldNAme.tolowercase}rule")"$).Append(CRLF)
	End If
	If ReadOnlyM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.ReadOnly = ":${fldNAme}readonly""$).Append(CRLF)
	End If
	If DisabledM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Disabled = ":${fldNAme}disabled""$).Append(CRLF)
	End If
	If OutlinedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Outlined = True"$).Append(CRLF)
	End If
	If RoundedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Rounded = True"$).Append(CRLF)
	End If
	If ClearableM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Clearable = True"$).Append(CRLF)
	End If
	If AutoFocusM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.AutoFocus = True"$).Append(CRLF)
	End If
	If FilledM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Filled = True"$).Append(CRLF)
	End If
	If ShapedM.ContainsKey(fldNAme) Then
		dtCont.Append($"${fldNAme}.Shaped = True"$).Append(CRLF)
	End If
End Sub

'build properties
private Sub BuildProperties As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In RequiredM.keys
		Dim ks As String = $"${k}required"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	For Each k As String In ReadOnlyM.keys
		Dim ks As String = $"${k}readonly"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	For Each k As String In DisabledM.keys
		Dim ks As String = $"${k}disabled"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", True)"$).Append(CRLF)
	Next
	Return xb.tostring
End Sub

'add paragraph to dialog
Sub Diag_AddParagraph(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddParagraph(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'update the grid matrix
private Sub UpdateMatrix(row As Int, col As Int)
	Dim scol As String = BANanoShared.PadRight(col, 2, "0")
	Dim srow As String = BANanoShared.PadRight(row, 2, "0")
	Dim skey As String = $"${srow}.${scol}"$
	matrix.Add(skey)
End Sub

'add h6 element to dialog
Sub Diag_AddH6(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH6(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h5 element to dialog
Sub Diag_AddH5(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH5(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h4 element to dialog
Sub Diag_AddH4(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH4(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.Setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h3 element to dialog
Sub Diag_AddH3(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH3(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h2 element to dialog
Sub Diag_AddH2(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH2(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add h1 element to dialog
Sub Diag_AddH1(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a text field to the dialog
Sub Diag_AddTextField(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTextField1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a telephone field to the dialog
Sub Diag_AddTelephone(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTelephone1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub


'add a text area to the dialog
Sub Diag_AddTextArea(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTextArea1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a time picker dialog
Sub Diag_AddTimePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTimePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a date picker to the dialog
Sub Diag_AddDatePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddDatePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a slider to the dialog
Sub Diag_AddSlider(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddSlider(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", 0, 100, 1, True, False, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a rating to the dialog
Sub Diag_AddRating(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddRating(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", 0, 0, True, "blue", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a progress circular to the dialog
Sub Diag_AddProgressCircular(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddProgressCircular(Me, ${xpos}, "${fldName}", "${xvmodel}", "${title}: {{ ${xvmodel} }}", "blue", Null)"$).Append(CRLF)
	dtCont.Append($"'${fldName}.Size = 32"$).Append(CRLF)
	dtCont.Append($"'${fldName}.Width = 4"$).Append(CRLF)
	'
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a progress linear to the dialog
Sub Diag_AddProgressLinear(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddProgressLinear(Me, ${xpos}, "${fldName}", "${xvmodel}", "blue", Null)"$).Append(CRLF)
	dtCont.Append($"'${fldName}.Striped = True"$).Append(CRLF)
	dtCont.Append($"'${fldName}.Height = 4"$).Append(CRLF)
	dtCont.Append($"'${fldName}.Indeterminate = False"$).Append(CRLF)
	'
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a file input to the dialog
Sub Diag_AddFileInput(fldName As String, row As Int, col As Int, vmodel As String, title As String, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddFileInput(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "", "${title}", "", ${bMultiple}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	'to remove from adding
	'addedFiles.Add(vmodel)
	
	'file upload code
	Select Case bMultiple
	Case True
		AddCode($"Sub ${fldName}_change(fileList As List)"$)
		AddCode($"If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return"$)
		AddCode("vuetify.ShowProgressLoader")
		AddCode($"Dim uploads As List = ${ComponentName}.NewList"$)
		AddCode("for each fileObj As Map in fileList")
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode($"uploads.Add(fp)"$)
		AddCode("next")
		AddCode("vuetify.HideProgressLoader")
		AddCode($"End Sub"$)
	Case False	
		AddCode($"Sub ${fldName}_change(fileObj As Map)"$)
		AddCode($"If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return"$)
		AddCode("vuetify.ShowProgressLoader")
		AddComment("get file details")
		AddCode($"Dim fileDet As FileObject"$)
		AddCode($"fileDet = BANanoShared.GetFileDetails(fileObj)"$)
		AddCode($"Dim fn As String = fileDet.FileName"$)
		AddComment("you can check the size here")
		AddComment("start uploading the file")
		AddCode($"fileDet = BANanoShared.UploadFileWait(fileObj)"$)
		AddCode($"Dim sstatus As String = fileDet.Status"$)
		AddCode($"Select Case sstatus"$)
		AddCode($"Case "error""$)
		AddCode("vuetify.HideProgressLoader")
		AddCode($"vuetify.ShowSnackBarError(~"The file '~{fn}' was not uploaded successfully!"~)"$)
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", "")"$)
		AddCode("Return")
		AddCode($"Case "success""$)
		AddCode($"vuetify.ShowSnackBarSuccess(~"The file '~{fn}' was uploaded successfully!"~)"$)
		AddCode($"End Select"$)
		AddCode($"Dim fp As String = fileDet.FullPath"$)
		AddCode("Dim fd As String = fileDet.FileDate")
		AddCode("Dim fs As String = fileDet.FileSize")
		AddComment("update state of some element")
		AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}.${vmodel}", fp)"$)
		AddCode("vuetify.HideProgressLoader")
		AddCode($"End Sub"$)
	End Select
	UpdateMatrix(row, col)
End Sub

'add a password to the dialog
Sub Diag_AddPassword(fldName As String, row As Int, col As Int, vmodel As String, title As String, maxLen As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddPassword(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "", False, "", ${maxLen}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a combo to the dialog
Sub Diag_AddComboBox(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddComboBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${fldName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	Dim rel As DBRelationship
	rel.Initialize 
	rel.key = Key
	rel.value = Value
	rel.source = DataSource
	rel.vmodel = vmodel
	relationships.Add(rel)
	UpdateMatrix(row, col)
End Sub

'add a select to the dialog
Sub Diag_AddSelect(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddSelect(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${fldName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = Key
	rel.value = Value
	rel.source = DataSource
	rel.vmodel = vmodel
	relationships.Add(rel)
	UpdateMatrix(row, col)
End Sub

'add a chip group
Sub Diag_AddChipGroup(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddChipGroup(Me, ${xpos}, "${fldName}", "${xvmodel}", "", ${bMultiple}, True, True, "${DataSource}", "${Key}", "${Value}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${fldName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = Key
	rel.value = Value
	rel.source = DataSource
	rel.vmodel = vmodel
	relationships.Add(rel)
	UpdateMatrix(row, col)
End Sub

'add an chip to the dialog with binding
Sub Diag_AddChipAvatar(fldName As String, row As Int, col As Int, vmodel As String, stitle As String, avatarSize As Int)
	Dim xvmodel As String = $"${SingularClean.tolowercase}.${vmodel}"$
	Dim xpos As String = $"${SingularClean}Cont.MatrixID(${row}, ${col})"$
	'
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddChipWithAvatar(Me, ${xpos}, "${fldName}", ":${xvmodel}", "${stitle}", True, False, "blue", Null, Null, Null)"$).Append(CRLF)
	dtCont.Append($"${SingularClean}Cont.GetAvatar("${fldName}").size = "${avatarSize}""$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an avatar to the dialog
Sub Diag_AddAvatar(fldName As String, row As Int, col As Int, url As String, avatarSize As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAvatar(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${url}", ${avatarSize}, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an avatar to the dialog with binding
Sub Diag_AddAvatar1(fldName As String, row As Int, col As Int, vmodel As String, avatarSize As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAvatar1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${vmodel}", ${avatarSize}, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub


'add an auto complete to the dialog
Sub Diag_AddAutoComplete(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAutoComplete(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${fldName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	'
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = Key
	rel.value = Value
	rel.source = DataSource
	rel.vmodel = vmodel
	relationships.Add(rel)
	UpdateMatrix(row, col)
End Sub

'add a checkbox to the dialog
Sub Diag_AddCheckBox(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddCheckBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a switch to the dialog
Sub Diag_AddSwitch(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object, bInset As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddSwitch(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "", ${bInset}, null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add a radio group to the dialog
Sub Diag_AddRadioGroup(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bRow As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddRadioGroup(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", ${bRow}, False, "${DataSource}", "${Key}", "${Value}", "", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	dtCont.Append($"${fldName}.SetData("${DataSource}", ${ComponentName}.NewList)"$).Append(CRLF)
	
	Dim rel As DBRelationship
	rel.Initialize
	rel.key = Key
	rel.value = Value
	rel.source = DataSource
	rel.vmodel = vmodel
	relationships.Add(rel)
	UpdateMatrix(row, col)
End Sub

'add an image to the dialog
Sub Diag_AddImage(fldName As String, row As Int, col As Int, url As String, lazysrc As String,  alt As String, width As String, height As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddImage(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${url}", "${lazysrc}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub

'add an image to the dialog with binding
Sub Diag_AddImage1(fldName As String, row As Int, col As Int, vmodel As String, alt As String, width As String, height As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddImage1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${vmodel}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	SetProperties(fldName)
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
	UpdateMatrix(row, col)
End Sub


'set a text area data-table edit dialog
Sub DT_SetTextArea(colName As String, bLarge As Boolean)
	dtCode.Append($"${dtName}.SetTextArea("${colName}", ${bLarge})"$).Append(CRLF)
	DT_HasEditDialog = True
End Sub

'set a text field data-table edit dialog
Sub DT_SetTextField(colName As String, bLarge As Boolean)
	dtCode.Append($"${dtName}.SetTextField("${colName}", ${bLarge})"$).Append(CRLF)
	DT_HasEditDialog = True
End Sub

Sub DT_SetColumnSortable(colName As String, b As Boolean)
	dtCode.Append($"${dtName}.SetColumnSortable("${colName}", ${b})"$).Append(CRLF)
End Sub

Sub DT_SetColumnPreDisplay(colName As String, PreDisplay As String)
	dtCode.Append($"${dtName}.SetColumnPreDisplay("${colName}", "${PreDisplay}")"$).Append(CRLF)
End Sub

'add an icon to the data-table toolbar
Sub DT_AddTitleIcon(elID As String, eIcon As String, btnColor As String)
	dtCode.Append($"${dtName}.AddTitleIcon(${ComponentName}, "${elID}", "${eIcon}", "${btnColor}""$).Append(CRLF)
End Sub

'add an action column to the data-table
Sub DT_AddAction(colField As String, colTitle As String, colIcon As String)
	dtCode.Append($"${dtName}.AddAction("${colField}", "${colTitle}", "${colIcon}")"$).Append(CRLF)
End Sub

'add an icon view column to the data-table
Sub DT_AddIconView(colField As String, colTitle As String, colColor As String)
	dtCode.Append($"${dtName}.AddIconView("${colField}", "${colTitle}", "${colColor}")"$).Append(CRLF)
End Sub

'add a chip column to the data-table
Sub DT_AddChip(colField As String, colTitle As String, colColor As String)
	dtCode.Append($"${dtName}.AddChip("${colField}", "${colTitle}", "${colColor}")"$).Append(CRLF)
End Sub

'add a switch column to the data-table
Sub DT_AddSwitch(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddSwitch("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a checkbox column to the data-table
Sub DT_AddCheckBox(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddCheckBox("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add an image column to the data-table
Sub DT_AddImage(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddImage("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a file size column to the data-table
Sub DT_AddFileSize(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddFileSizeColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a time column to the data-table
Sub DT_AddTime(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddTimeColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub


'add a money column to the data-table
Sub DT_AddMoney(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddMoneyColumn("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub


'add a link column to the data-table
Sub DT_AddLink(colField As String, colTitle As String, target As String)
	dtCode.Append($"${dtName}.AddLink("${colField}", "${colTitle}", "${target}")"$).Append(CRLF)
End Sub

'add an avatar column to the data-table
Sub DT_AddAvatarImg(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddAvatarImg("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a rating column to the data-table
Sub DT_AddRating(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddRating("${colField}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a progress circular column to the data-table
Sub DT_AddProgressCircular(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddProgressCircular("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetProgressCircularDimensions("${colField}", vuetify.color_blue, "-90", "32", "4")"$).Append(CRLF)
End Sub

'add a progress linear column to the data-table
Sub DT_AddProgressLinear(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddProgressLinear("${colField}", "${colTitle}")"$).Append(CRLF)
	dtCode.Append($"${dtName}.SetProgressLinearDimensions("${colField}", vuetify.COLOR_BLUE, 32, True)"$).Append(CRLF)
End Sub

'add a column to the data-table
Sub DT_AddColumn(colName As String, colTitle As String)
	dtCode.Append($"${dtName}.AddColumn("${colName}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a date column to the data-table
Sub DT_AddDateColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddDateColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a date time column to the data-table
Sub DT_AddDateTimeColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddDateTimeColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a number column to the data-table
Sub DT_AddNumberColumn(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddNumberColumn("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
End Sub

'add a button column to the data-table
Sub DT_AddButtonColumn(colName As String, colTitle As String)
	dtCode.Append($"${dtName}.AddButtonColumn("${colName}", "${colTitle}")"$).Append(CRLF)
End Sub

'add a link column to the data-table
Sub DT_AddLinkColumn(colName As String, colTitle As String, target As String)
	dtCode.Append($"${dtName}.AddLinkColumn("${colName}", "${colTitle}", "${target}")"$).Append(CRLF)
End Sub

'add a column to the data-table
Sub DT_AddColumn1(colName As String, colTitle As String, colType As String, colWidth As Int, colSortable As Boolean, colAlign As String)
	dtCode.Append($"${dtName}.AddColumn1("${colName}", "${colTitle}", "${colType}", ${colWidth}, ${colSortable}, "${colAlign}")"$).Append(CRLF)
End Sub

'set dault value for a field
Sub AddDefaults(fld As String, def As String)
	Defaults.Put(fld, def)
End Sub

'set visibility for a field
Sub AddVisibility(fld As String, bVisibility As Boolean)
	Visibility.Put(fld, bVisibility)
End Sub

'prepare for execution
Sub Prepare
	SingularClean = Singular.Replace(" ", "")
	SingularClean = SingularClean.trim
	PluralClean = Plural.Replace(" ", "")
	PluralClean = PluralClean.trim
	'
	rsTB = $"rs${PluralClean}"$
	dtName = $"dt${PluralClean}"$
	ModalName = $"dlg${PluralClean}"$
	ModalShow = $"${ModalName}show"$
End Sub

'add a blob field
Sub AddBlob(v As String)
	Blobs.Add(v)
End Sub

'add a string field
Sub AddString(v As String)
	Strings.Add(v)
End Sub

'add a double field
Sub AddDouble(v As String)
	Doubles.Add(v)
End Sub

'add an integer field
Sub AddInteger(v As String)
	Integers.Add(v)
End Sub

'add field data types - strings
Sub AddStrings(stringNames As List)
	For Each k As String In stringNames
		Strings.Add(k)
	Next
End Sub

'add a filter field
Sub DT_AddFilter(flt As String)
	Filters.Add(flt)
End Sub

'add columns to filter
Sub DT_AddFilters(fltName As List)
	For Each k As String In fltName
		Filters.Add(k)
	Next
End Sub

'add field data types - integers
Sub AddIntegers(integerNames As List)
	For Each k As String In integerNames
		Integers.Add(k)
	Next
End Sub

'add field data types - doubles
Sub AddDoubles(doubleNames As List)
	For Each k As String In doubleNames
		Doubles.Add(k)
	Next
End Sub

'add field data types - blobs
Sub AddBlobs(blobNames As List)
	For Each k As String In blobNames
		Blobs.Add(k)
	Next
End Sub

'loading code
private Sub LoadCode
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Load${PluralClean}		'ignoredeadcode
	'Show progress loader
	${dtName}.UpdateLoading(True)
	${dtName}.Reload(${ComponentName}.NewList)
	'Dim db As BANanoSQL
	'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.SelectAll(Array("*"), Array("${SortBy}"))
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	'${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
	'clear content
		'hide progress loader
		${dtName}.UpdateLoading(False)
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	${dtName}.Reload(${rsTB}.Result)
	'hide progress loader
	${dtName}.UpdateLoading(False)
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'build the relationships
private Sub RelationshipsCode
	If relationships.Size = 0 Then Return
	For Each rec As DBRelationship In relationships
		Dim ssource As String = rec.source
		Dim skey As String = rec.key
		Dim svmodel As String = rec.vmodel 
		Dim svalue As String = rec.value
		'
		Dim xfields As List
		xfields.Initialize 
		xfields.Add(skey)
		xfields.Add(svalue)
		Dim xarri As String = BANanoShared.List2ArrayVariable(xfields)
		Dim tbName As String = $"rs${ssource}"$
		'
		sb.Append($"Sub Load${ssource}		'ignoredeadcode
		'Dim db As BANanoSQL
		'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${tbName} As ${className}
	${tbName}.Initialize("${DatabaseName}", "${ssource}", "${skey}", "")
	${tbName}.SelectAll(Array(${xarri}), Array("${svalue}"))
	${tbName}.JSON = BANano.CallInlinePHPWait(${tbName}.MethodName, ${tbName}.Build)
	'${tbName}.Result = db.ExecuteWait(${tbName}.query, ${tbName}.args)
	${tbName}.FromJSON
	Select Case ${tbName}.OK
	Case False
		${ComponentName}.SetData("${ssource}", ${ComponentName}.NewList)
		Dim strError As String = ${tbName}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	${ComponentName}.SetData("${ssource}", ${tbName}.Result)
	For Each relmap As Map In ${tbName}.Result
		Dim s${skey} As String = relmap.GetDefault("${skey}", "")
		Dim s${svalue} As String = relmap.GetDefault("${svalue}", "")
		foreign${ssource}.put(s${skey}, s${svalue})
	Next
End Sub"$).Append(CRLF).Append(CRLF)  

	AddCode($"Sub Get${ssource}(sValue As String) As String   'IgnoreDeadCode"$)
	AddCode($"if foreign${ssource}.ContainsKey(sValue) Then"$)
	AddCode($"Dim xValue As String = foreign${ssource}.get(sValue)"$)
	AddCode("return xValue")
	AddCode("else")
	AddCode("return sValue")
	AddCode("end if")
	AddCode("End Sub")
	AddCode(CRLF)
	AddCode(CRLF)
	Next
End Sub

'build schemas
private Sub BuildSchemas As String
	Dim sbSchemas As StringBuilder
	sbSchemas.Initialize
	If Integers.Size > 0 Then
		Dim arri As String = BANanoShared.List2ArrayVariable(Integers)
		sbSchemas.Append($"${rsTB}.SchemaAddInt(Array(${arri}))"$).Append(CRLF)
	End If
	If Doubles.Size > 0 Then
		Dim arrd As String = BANanoShared.List2ArrayVariable(Doubles)
		sbSchemas.Append($"${rsTB}.SchemaAddFloat(Array(${arrd}))"$).Append(CRLF)
	End If
	If Strings.Size > 0 Then
		Dim arrs As String = BANanoShared.List2ArrayVariable(Strings)
		sbSchemas.Append($"${rsTB}.SchemaAddText(Array(${arrs}))"$).Append(CRLF)
	End If
	If Blobs.Size > 0 Then
		Dim arrb As String = BANanoShared.List2ArrayVariable(Blobs)
		sbSchemas.Append($"${rsTB}.SchemaAddBlob(Array(${arrb}))"$).Append(CRLF)
	End If
	Return sbSchemas.tostring
End Sub

'read code
private Sub ReadCode As MySQLCRUD
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Read${SingularClean}(s${PrimaryKey} As String)			'ignoredeadcode
	${LoadRelationships}
	'Dim db As BANanoSQL
	'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Read(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	'${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strerror)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	Dim ${SingularClean}M As Map = ${rsTB}.result.Get(0)
	'show the drawer
	${ComponentName}.SetData("${ModalShow.tolowercase}", True)
	${ComponentName}.SetData("${SingularClean.tolowercase}", ${SingularClean}M)
End Sub"$).Append(CRLF).Append(CRLF)
	
	Return Me
End Sub

'update code
private Sub UpdateCode As MySQLCRUD
	Dim sbSchemas As String = BuildSchemas
	sb.Append($"Sub Update${SingularClean}(${SingularClean}M As Map)			'ignoredeadcode
	${RemoveFiles}
	Dim s${PrimaryKey} As String = ${SingularClean}M.Get("${PrimaryKey}")
	'Dim db As BANanoSQL
	'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Update1(${SingularClean}M, s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	'${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strerror)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} has been updated successfully!")
		'hide modal form
		${ComponentName}.SetData("${ModalShow.tolowercase}", False)
		'load records
		${ComponentName}.RunMethod("Load${PluralClean}", Null)
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
	Return Me
End Sub

'remove file vmodels
private Sub RemoveFiles As String
	Dim sbr As StringBuilder
	sbr.Initialize 
	For Each fn As String In addedFiles
		sbr.Append($"${Singular}M.Remove("${fn}")"$).Append(CRLF)
	Next
	Return sbr.tostring
End Sub

'create code
private Sub CreateCode()
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Create${SingularClean}(${SingularClean}M As Map)			'ignoredeadcode
	'remove the auto-increment key field
	${SingularClean}M.Remove("${AutoIncrement}")
	${RemoveFiles}
	'Dim db As BANanoSQL
	'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Insert1(${SingularClean}M)
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	'${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} has been added successfully!")
		'hide modal form
		${ComponentName}.SetData("${ModalShow.tolowercase}", False)
		'Load records
		${ComponentName}.RunMethod("Load${PluralClean}", Null)
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'delete code
private Sub DeleteCode()
	Dim sbSchemas As String = BuildSchemas
	
	sb.Append($"Sub Delete${SingularClean}(s${PrimaryKey} As String)			'ignoredeadcode
	'Dim db As BANanoSQL
	'db.OpenWait("${DatabaseName}", "${DatabaseName}")
	Dim ${rsTB} As ${className}
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Delete(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	'${rsTB}.Result = db.ExecuteWait(${rsTB}.query, ${rsTB}.args)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
		log(strError)
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	Case Else
		vuetify.ShowSnackBarSuccess("The ${Singular.tolowercase} was deleted successfully!")
	End Select
	${ComponentName}.RunMethod("Load${PluralClean}", Null)
End Sub"$).Append(CRLF).Append(CRLF)
End Sub

'create table code
private Sub CreateTableCode()
	sb.Append("Sub CreateTable").Append(CRLF)
	sb.Append($"'add a container to hold the ${Plural.tolowercase}
	Dim cont${SingularClean} As VueElement = vuetify.AddContainer(Me, ${ComponentName}.Here, "cont${SingularClean}", True)
	cont${SingularClean}.AddRows1.AddColumns12
	cont${SingularClean}.BuildGrid
	'
	${ComponentName}.BindVueElement(cont${SingularClean})"$).Append(CRLF)
	
	AddCode($"${dtName} = vuetify.AddDataTable(Me, cont${SingularClean}.MatrixID(1,1), "${dtName}")"$)
	AddCode($"${dtName}.ParentComponent = ${ComponentName}"$)
	AddCode($"${dtName}.Title = "${Plural}""$)
	AddCode($"${dtName}.ItemKey = "${PrimaryKey}""$)
	AddCode($"${dtName}.ItemsPerPage = ${DT_ItemsPerPage}"$)
	
	If DT_Dense Then
		AddCode($"${dtName}.Dense = True"$)
	End If
	
	If DT_MustSort Then
		AddCode($"${dtName}.MustSort = True"$)
	End If
	
	If DT_MultiSort Then
		AddCode($"${dtName}.MultiSort = True"$)
	End If
		
	AddCode($"${dtName}.AddSpacer"$)
	'
	If DT_ShowGroupBy Then
		AddCode($"${dtName}.ShowGroupBy = True"$)
	End If
	
	If DT_ShowSelect Then
		AddCode($"${dtName}.ShowSelect = True"$)
	End If
	
	If DT_SingleSelect Then
		AddCode($"${dtName}.SingleSelect = True"$)
	End If
		
	If DT_HasSearch Then
		AddCode($"${dtName}.AddSearch"$)
		sb.Append($"${dtName}.AddDivider"$).Append(CRLF)
	End If
	
	If DT_HasAddNew Then
		AddCode($"${dtName}.AddNew"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasClearSort Then
		AddCode($"${dtName}.AddClearSort"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasFilter Then
		AddCode($"${dtName}.AddFilter("primary--text")"$)
		AddCode($"${dtName}.AddDivider"$)
		AddCode($"${dtName}.AddClearFilter"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasRefresh Then
		AddCode($"${dtName}.AddRefresh"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasBack Then
		AddCode($"${dtName}.AddBack"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	'
	If Filters.Size > 0 Then
		Dim arrx As String = BANanoShared.List2ArrayVariable(Filters)
		sb.Append($"${dtName}.SetFilterable(Array(${arrx}))"$).Append(CRLF)
	End If
	'
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			Dim svmodel As String = rec.vmodel
			DT_SetColumnPreDisplay(svmodel, $"Get${ssource}"$)
		Next
	End If
	
	sb.Append(dtCode.ToString)
	
	If DT_HasEdit Then
		AddCode($"${dtName}.AddEdit"$)
	End If
	
	If DT_HasDelete Then
		AddCode($"${dtName}.AddDelete"$)
	End If
	
	If DT_HasClone Then
		AddCode($"${dtName}.AddClone"$)
	End If
	
	If DT_HasPrint Then
		AddCode($"${dtName}.AddPrint"$)
	End If
	
	If DT_HasSave Then
		AddCode($"${dtName}.AddSave"$)
	End If
	
	If DT_HasCancel Then
		AddCode($"${dtName}.AddCancel"$)
	End If
	
	If DT_HasDownload Then
		AddCode($"${dtName}.AddDownload"$)
	End If
	
	If DT_HasMenu Then
		AddCode($"${dtName}.AddMenuV"$)
	End If
	'
	If DT_HasEdit Then
		sb.Append($"${dtName}.SetIconDimensions("edit", "", vuetify.COLOR_GREEN)"$).Append(CRLF)
	End If
	
	If DT_HasDelete Then
		sb.Append($"${dtName}.SetIconDimensions("delete", "", vuetify.COLOR_RED)"$).Append(CRLF)
	End If
	
	If DT_HasClone Then
		AddCode($"${dtName}.SetIconDimensions("clone", "", vuetify.COLOR_AMBER)"$)
	End If
	
	If DT_HasPrint Then
		AddCode($"${dtName}.SetIconDimensions("print", "", vuetify.COLOR_BLUE)"$)
	End If
	
	If DT_HasSave Then
		AddCode($"${dtName}.SetIconDimensions("save", "", vuetify.COLOR_BLUEGREY)"$)
	End If
	
	If DT_HasCancel Then
		AddCode($"${dtName}.SetIconDimensions("cancel", "", vuetify.COLOR_BROWN)"$)
	End If
	
	If DT_HasDownload Then
		AddCode($"${dtName}.SetIconDimensions("download", "", vuetify.COLOR_CYAN)"$)
	End If
	
	If DT_HasMenu Then
		AddCode($"${dtName}.SetIconDimensions("menu", "", vuetify.COLOR_INDIGO)"$)
	End If
	'
	sb.Append($"${dtName}.SetDataSource(${ComponentName}.NewList)"$).Append(CRLF)
	sb.Append($"${ComponentName}.BindVueTable(${dtName})"$).Append(CRLF)
	sb.Append("End Sub").Append(CRLF).Append(CRLF)
End Sub

'initialize code
private Sub InitilizeCode
	AddComment("static code module")
	AddCode("Sub Process_Globals")
	
	sb.Append($"Public vuetify As VuetifyApp
Public ${ComponentName} As VueComponent
Public path As String
Public name As String = "${ComponentName}"
Private Banano As BANano
Private ${dtName} As VueTable
Private ${ModalName} As VueElement
Private msgBox As VueElement
Private Mode As String
${BuildForeignLinks} 
End Sub"$).append(CRLF).append(CRLF)
	'
	
	AddCode("Sub Initialize")
	AddCode("'establish a reference to the app")
	AddCode("vuetify = pgIndex.vuetify")
	AddComment("'initialize the component")
	AddCode($"${ComponentName}.Initialize(Me, name)"$)
	AddCode($"${ComponentName}.vuetify = vuetify"$)
	AddCode($"path = ${ComponentName}.path"$)
	AddComment("")
	AddComment("'add a msgbox dialog for this page")
	AddCode($"msgBox = ${ComponentName}.AddMsgBox(True, 500, "success", "error")"$)
	AddComment("")
	AddCode("CreateTable")
	AddCode("CreateDialog")
	AddComment("")
	AddComment($"as soon as we have mounted, show the ${Plural.tolowercase}"$)
	AddCode($"Dim args As List = ${ComponentName}.newlist"$)
	AddCode($"${ComponentName}.SetMounted(Me, "Load${PluralClean}", args)"$)
	AddComment("add supporting CRUD methods...")
	AddCode($"${ComponentName}.SetMethod(Me, "Create${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Delete${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Update${SingularClean}", args)"$)
	AddCode($"${ComponentName}.SetMethod(Me, "Read${SingularClean}", args)"$)
		
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			AddCode($"${ComponentName}.SetMethod(Me, "Load${ssource}", args)"$)
			AddCode($"${ComponentName}.SetMethod(Me, "Get${ssource}", args)"$)
		Next
	End If	
	
	AddComment("'add the component as a router")
	AddCode($"vuetify.AddRoute(${ComponentName})"$)
	AddCode("End Sub")
	sb.Append(CRLF).Append(CRLF)
End Sub

Sub BuildForeignLinks As String
	Dim sbx As StringBuilder
	sbx.Initialize
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			sbx.Append($"Private foreign${ssource} As Map"$).Append(CRLF)
		Next
	End If
	Return sbx.tostring
End Sub

'load relationships
private Sub LoadRelationships As String
	Dim xb As StringBuilder
	xb.Initialize
	If relationships.Size > 0 Then
		For Each rec As DBRelationship In relationships
			Dim ssource As String = rec.source
			xb.Append($"${ComponentName}.RunMethod("Load${ssource}", Null)"$).Append(CRLF)
		Next
	End If
	Return xb.tostring
End Sub

'create dialog code
private Sub CreateDialogCode
	AddCode($"Sub CreateDialog"$)
	AddComment("create a container")
	AddCode($"Dim ${ModalName} As VueElement = vuetify.AddDialogInput(Me, ${ComponentName}.Here, "${ModalName}", True, "${Diag_Width}", "${Plural}", "Save", "primary", "Cancel", "error")"$)
	'
	If Diag_FullScreenOnMobile Then
		AddCode($"${ModalName}.FullScreenOnMobile = True"$)
	End If
	'
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)	
	'
	AddComment("get the container")
	AddCode($"Dim ${SingularClean}Cont As VueElement = ${ComponentName}.DialogForm("${ModalName}")"$)
	If Diag_LazyValidation Then
		AddCode($"${SingularClean}Cont.LazyValidation = True"$)
		AddCode($"${SingularClean}Cont.VModel = "${ModalName}valid""$)
	End If
	sb.Append(BuildGrid)
	'AddCode($"${SingularClean}Cont.AddRows1.AddColumns12"$)
	AddCode($"${SingularClean}Cont.BuildGrid"$)
	AddCode("")
	'
	sb.Append(dtCont.ToString).Append(CRLF)
	'
	AddCode($"${ComponentName}.BindVueElement(${SingularClean}Cont)"$)
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)
	
	If Diag_LazyValidation Then
		AddCode($"${ComponentName}.SetData("${ModalName.tolowercase}valid", True)"$)
	End If
	'
	AddComment($"initialize the ${Singular}"$)
	AddCode($"Dim ${SingularClean.tolowercase} As Map = CreateMap()"$)
	sb.Append(BuildDefaults(SingularClean.tolowercase))
	sb.append(CRLF)
	AddCode($"${ComponentName}.SetData("${SingularClean.tolowercase}", ${SingularClean.tolowercase})"$)
	
	AddCode("End Sub")
	sb.Append(CRLF).Append(CRLF)
End Sub

'support code
private Sub SupportCode
	'SAVE RECORD
	sb.Append($"Sub ${ModalName}ok_click(e As BANanoEvent)			'ignoredeadcode
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	'validate the page
	Dim fValid As Boolean = ${ComponentName}.DialogValidate("${ModalName}")
	If fValid = False Then 
		vuetify.ShowSnackBarError("Please ensure that you complete all information.")
		Return
	End If
	'get the topic
	Dim ${SingularClean}M As Map = ${ComponentName}.GetData("${SingularClean.tolowercase}")
	Select Case Mode
	Case "A"
		${ComponentName}.RunMethod("Create${SingularClean}", ${SingularClean}M)
	Case "E"	
		${ComponentName}.RunMethod("Update${SingularClean}", ${SingularClean}M)
	End Select
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'CANCEL ADDING
	sb.Append($"Sub ${ModalName}cancel_click(e As BANanoEvent)				'ignoredeadcode
	Mode = "A"
	'initialize the record
	${ComponentName}.SetData("${SingularClean.tolowercase}", vuetify.NewMap)
	'hide the drawer/dialog
	${ComponentName}.SetData("${ModalShow.tolowercase}", False)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'TABLE ADD
	If DT_HasAddNew Then
	sb.Append($"Sub ${dtName}_add_click(e As BANanoEvent)				'ignoredeadcode
	Add${SingularClean}
End Sub"$).Append(CRLF).Append(CRLF)
	'
	Dim xDefaults As String = BuildDefaults("nt")
	
	'ADD RECORD
	sb.Append($"Sub Add${SingularClean}			'ignoreDeadCode
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	${LoadRelationships}
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Add ${Singular}")
	Mode = "A"
	'initialize the record
	Dim nt As Map = CreateMap()
	${xDefaults}
	${ComponentName}.SetData("${SingularClean.tolowercase}", nt)
	${BuildVisibility}
	${BuildProperties}
	'show the drawer
	${ComponentName}.SetData("${ModalShow.tolowercase}", True)
	'vuetify.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)
End If
	'
	'TABLE EDIT
	If DT_HasEdit Then
	sb.Append($"Private Sub ${dtName}_edit (item As Map)				'ignoredeadcode
	'get the current $refs
	${ComponentName}.refs = vuetify.GetRefs
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Edit ${Singular}")
	Mode = "E"
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.RunMethod("Read${SingularClean}", s${PrimaryKey})
	${BuildVisibility}
	${BuildProperties}
	vuetify.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	'
	'TABLE DELETE
	If DT_HasDelete Then
	sb.Append($"Private Sub ${dtName}_delete (item As Map)				'ignoredeadcode
	Dim s${DisplayField} As String = item.Get("${DisplayField}")
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.SetData("${PrimaryKey.tolowercase}", s${PrimaryKey})
	${ComponentName}.ShowConfirm("delete${SingularClean.tolowercase}", _
	~"Confirm Delete: ~{s${DisplayField}}"~, _
	~"Are you sure you want to delete this ${Singular.tolowercase}?<br><br>Please note you will not be able to undo your changes. Continue?"~, "Yes", "No")
	End Sub"$).append(CRLF).append(CRLF)
	
	'CONFIRM DELETE
	sb.Append($"Sub ${ComponentName}ok_click(e As BANanoEvent)			'ignoredeadcode
	${ComponentName}.HideDialog
	'get the process
	Dim sconfirm As String = ${ComponentName}.Confirm
	Select Case sconfirm
	Case "delete${SingularClean.tolowercase}"
	'get the saved id
		Dim s${PrimaryKey} As String = ${ComponentName}.GetData("${PrimaryKey}")
		${ComponentName}.RunMethod("Delete${SingularClean}", s${PrimaryKey})
	End Select
End Sub"$).append(CRLF).append(CRLF)
	'
	'CANCEL
	sb.Append($"Sub ${ComponentName}cancel_click(e As BANanoEvent)			'ignoredeadcode
	${ComponentName}.HideDialog
	'get the process
	Dim sconfirm As String = ${ComponentName}.Confirm
	Select Case sconfirm
	End Select
End Sub"$).append(CRLF).append(CRLF)
	End If
	'
	'OTHER TABLE STUFF
	If DT_HasClearSort Then
		sb.Append($"Private Sub ${dtName}_clearsort_Click (e As BANanoEvent)		'ignoredeadcode
	${dtName}.ClearSort
End Sub"$).append(CRLF).append(CRLF)
	End If

	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_clearfilter_click (e As BANanoEvent)			'ignoredeadcode
	${dtName}.ClearFilter
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	If DT_HasRefresh Then
sb.Append($"Private Sub ${dtName}_refresh_click (e As BANanoEvent)			'ignoredeadcode
${ComponentName}.RunMethod("Load${PluralClean}", Null)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasBack Then
sb.Append($"Private Sub ${dtName}_back_click (e As BANanoEvent)			'ignoredeadcode
vuetify.NavigateTo(-1)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	
	'
	sb.Append($"Private Sub ${dtName}_change (item As Map)				'ignoredeadcode
	${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_filter_click(e As BANanoEvent)		'ignoredeadcode
	${dtName}.ApplyFilter
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasSave Then
sb.Append($"Sub ${dtName}_save (item As Map)
${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).append(CRLF).append(CRLF)
	End If
	'
	If DT_HasPrint Then
		sb.Append($"Sub ${dtName}_print (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasCancel Then
		sb.Append($"Sub ${dtName}_cancel (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasDownload Then
		sb.Append($"Sub ${dtName}_download (item As Map)
End Sub"$).Append(CRLF).append(CRLF)
	End If
	'
	If DT_HasMenu Then
		sb.Append($"Sub ${dtName}_menu (item As Map)
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasClone Then
sb.Append($"Sub ${dtName}_clone (item As Map)
Dim rec As Map = BANanoShared.CopyMap(item, array("*"))
${ComponentName}.RunMethod("Create${SingularClean}", rec)
End Sub"$).Append(CRLF).Append(CRLF)
	End If

	If DT_HasEditDialog Then
		sb.Append($"Sub ${dtName}_SaveItem (item As Map)
	${ComponentName}.RunMethod("Update${SingularClean}", item)
End Sub"$).append(CRLF).append(CRLF)
		'
sb.Append($"Private Sub ${dtName}_CancelItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)
'
sb.Append($"Private Sub ${dtName}_OpenItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)
'
sb.Append($"Private Sub ${dtName}_CloseItem (item As Map)
End Sub"$).append(CRLF).append(CRLF)

sb.Append($"Private Sub ${dtName}_ItemSelected (item As Map)
End Sub"$).append(CRLF).append(CRLF)

sb.Append($"Private Sub ${dtName}_ClickRow (e As BANanoEvent)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'add code for required
	For Each req As String In RequiredM.Keys
		Dim v As String = RequiredM.Get(req)
		sb.Append($"Sub ${req}rule(v As String) As Object	'ignoredeadcode"$).Append(CRLF)
		sb.Append($"If v = "" Then"$).Append(CRLF)
		sb.Append($"Return "The ${v} is required!""$).Append(CRLF)
		sb.Append("Else").Append(CRLF)
		sb.Append("Return True").Append(CRLF)
		sb.Append("End If").Append(CRLF)
		sb.append("End Sub").Append(CRLF).Append(CRLF)
	Next
	End If
End Sub

'build visibility
private Sub BuildVisibility As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In Visibility.keys
		Dim v As Object = Visibility.Get(k)
		Dim ks As String = $"${k}show"$
		ks = ks.tolowercase
		xb.Append($"${ComponentName}.SetData("${ks}", ${v})"$).Append(CRLF)
	Next
	Return xb.tostring
End Sub


'build defaults
private Sub BuildDefaults(mapName As String) As String
	Dim xb As StringBuilder
	xb.Initialize
	For Each k As String In Defaults.Keys
		Dim v As Object = Defaults.Get(k)
		Dim instrings As Int = Strings.IndexOf(k)
		If instrings >= 0 Then
			xb.Append($"${mapName}.put("${k}", "${v}")"$).Append(CRLF)
		End If
		Dim inintegers As Int = Integers.IndexOf(k)
		If inintegers >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
		Dim inDoubles As Int = Doubles.IndexOf(k)
		If inDoubles >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
		Dim inBlobs As Int = Blobs.IndexOf(k)
		If inBlobs >= 0 Then
			xb.Append($"${mapName}.put("${k}", ${v})"$).Append(CRLF)
		End If
	Next
	Return xb.tostring
End Sub

'build the grid
private Sub BuildGrid As String
	matrixMap.Initialize 
	'sort the matrix
	matrix.Sort(True)
	For Each entryx As String In matrix
		Dim srow As String = BANanoShared.MvField(entryx, 1, ".")
		Dim scol As String = BANanoShared.MvField(entryx, 2, ".")
		'convert to integers
		srow = BANano.parseInt(srow)
		scol = BANano.parseInt(scol)
		If matrixMap.ContainsKey(srow) Then
			Dim lastCol As Int = matrixMap.Get(srow)
			lastCol = BANano.ParseInt(lastCol)
			If scol > lastCol Then
				matrixMap.Put(srow, scol)
			End If
		Else
			matrixMap.Put(srow, scol)	
		End If
	Next
	Dim sba As StringBuilder
	sba.Initialize
	For Each k As String In matrixMap.Keys
		Dim v As Int = matrixMap.Get(k)
		sba.Append($"${SingularClean}Cont.AddRows1"$)
		Select Case v
		Case 1
			'add columns12
			sba.Append(".AddColumns12")
		Case 2
			'add columns2x6
			sba.Append(".AddColumns2x6")
		Case 3
			'addcolumns3x4
			sba.Append(".AddColumns3x4")
		Case 4
			'addcolumns4x3
			sba.Append(".AddColumns4x3")
		Case 5
			sba.Append(".AddColumns5x2")
		Case 6
			'addcolumns6x2
			sba.Append(".AddColumns6x2")
		Case 7
			sba.Append(".AddColumns7x1")
		Case 8
			sba.Append(".AddColumns8x1")
		Case 9
			sba.Append(".AddColumns9x1")
		Case 10
			sba.Append(".AddColumns10x1")
		Case 11
			sba.Append(".AddColumns11x1")
		Case 12
			'addcolumns12x1	
			sba.Append(".AddColumns12x1")	
		End Select
		sba.Append(CRLF)
	Next
	Return sba.ToString
End Sub

'convert to string
Sub ToString As String
	AddCode(DB_CreateTable)
	AddCode("")
	'
	InitilizeCode
	LoadCode
	ReadCode
	UpdateCode
	CreateCode
	DeleteCode
	CreateTableCode
	SupportCode
	CreateDialogCode
	RelationshipsCode
	'
	Dim sout As String = sb.ToString
	sout = sout.Replace("~","$")
	Return sout
End Sub

'add comment to code
private Sub AddComment(code As String)
	sb.Append($"'${code}"$).Append(CRLF)
End Sub

'add code
private Sub AddCode(code As String)
	sb.Append(code).Append(CRLF)
End Sub

'save the generated source code
Sub Save
	Dim sout As String = ToString
	BANanoShared.SaveText2File(sout, TableName & ".txt")
End Sub