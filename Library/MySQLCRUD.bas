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
	Public DT_HasRefresh As Boolean
	Public HasDialog As Boolean
	Public DT_HasMenu As Boolean
	Public DT_HasDownload As Boolean
	Public DT_HasPrint As Boolean
	Public DT_HasSave As Boolean
	Public DT_HasCancel As Boolean
	Private dtCode As StringBuilder
	Private DT_HasEditDialog As Boolean
	Public DialogWidth As String
	Private dtCont As StringBuilder
	Private SingularClean As String
	Private PluralClean As String
End Sub

'initialize the crud class
Public Sub Initialize As MySQLCRUD
	Fields.Initialize
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
	HasDialog = False
	DT_HasMenu = False
	DT_HasDownload = False
	DT_HasPrint = False
	DT_HasSave = False
	DT_HasCancel = False
	DT_HasEditDialog = False
	dtCode.Initialize
	DialogWidth = "600"
	dtCont.Initialize
	Return Me
End Sub

Sub Diag_AddParagraph(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddParagraph(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub


Sub Diag_AddH6(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH6(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub


Sub Diag_AddH5(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH5(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub


Sub Diag_AddH4(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH4(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

Sub Diag_AddH3(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH3(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

Sub Diag_AddH2(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH2(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub


Sub Diag_AddH1(fldName As String, row As Int, col As Int, vmodel As String, Caption As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddH1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), ${fldName}, "{{ ${SingularClean.tolowercase}.${vmodel} }}", "", "")"$).Append(CRLF)
	dtCont.Append($"${ComponentName}.setdata("${SingularClean.tolowercase}.${vmodel}", "${Caption}")"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a text field to the dialog
Sub Diag_AddTextField(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTextField1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a text area to the dialog
Sub Diag_AddTextArea(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTextArea1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a time picker dialog
Sub Diag_AddTimePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddTimePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a date picker to the dialog
Sub Diag_AddDatePicker(fldName As String, row As Int, col As Int, vmodel As String, title As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddDatePickerInput1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a file input to the dialog
Sub Diag_AddFileInput(fldName As String, row As Int, col As Int, vmodel As String, title As String, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddFileInput(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "", ${bMultiple}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a password to the dialog
Sub Diag_AddPassword(fldName As String, row As Int, col As Int, vmodel As String, title As String, maxLen As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddPassword(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "", False, "", ${maxLen}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a combo to the dialog
Sub Diag_AddCombo(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddComboBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a select to the dialog
Sub Diag_AddSelect(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddSelect(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add an avatar to the dialog
Sub Diag_AddAvatar(fldName As String, row As Int, col As Int, url As String, avatarSize As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAvatar(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${url}", ${avatarSize}, Null)"$)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add an avatar to the dialog with binding
Sub Diag_AddAvatar1(fldName As String, row As Int, col As Int, vmodel As String, avatarSize As Int)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAvatar1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${vmodel}", ${avatarSize}, Null)"$)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub


'add an auto complete to the dialog
Sub Diag_AddAutoComplete(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bReturnObject As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddAutoComplete(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", False, ${bMultiple}, "", "${DataSource}", "${Key}", "${Value}", ${bReturnObject}, "", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a checkbox to the dialog
Sub Diag_AddCheckBox(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddCheckBox(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "primary", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a switch to the dialog
Sub Diag_AddSwitch(fldName As String, row As Int, col As Int, vmodel As String, title As String, YesValue As Object, NoValue As Object, bInset As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddSwitch(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${title}", "${YesValue}", "${NoValue}", "primary", ${bInset}, null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add a radio group to the dialog
Sub Diag_AddRadioGroup(fldName As String, row As Int, col As Int, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bRow As Boolean, bMultiple As Boolean)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddRadioGroup(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${SingularClean.tolowercase}.${vmodel}", "${Title}", ${bRow}, False, "${DataSource}", "${Key}", "${Value}", "", Null, Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add an image to the dialog
Sub Diag_AddImage(fldName As String, row As Int, col As Int, url As String, lazysrc As String,  alt As String, width As String, height As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddImage(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${url}", "${lazysrc}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
End Sub

'add an image to the dialog with binding
Sub Diag_AddImage1(fldName As String, row As Int, col As Int, vmodel As String, alt As String, width As String, height As String)
	dtCont.Append($"Dim ${fldName} As VueElement = vuetify.AddImage1(Me, ${SingularClean}Cont.MatrixID(${row}, ${col}), "${fldName}", "${vmodel}", "${alt}", "${height}", "${width}", Null)"$).Append(CRLF)
	If Visibility.ContainsKey(fldName) Then
		dtCont.Append($"${fldName}.VShow = "${fldName}show""$).Append(CRLF)
	End If
	dtCont.Append($"${ComponentName}.BindVueElement(${fldName})"$).Append(CRLF)
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
End Sub

'add a progress linear column to the data-table
Sub DT_AddProgressLinear(colField As String, colTitle As String)
	dtCode.Append($"${dtName}.AddProgressLinear("${colField}", "${colTitle}")"$).Append(CRLF)
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
Sub DT_AddDateTimeColumnDate(colName As String, colTitle As String, colFormat As String)
	dtCode.Append($"${dtName}.AddDateTimeColumnDate("${colName}", "${colTitle}", "${colFormat}")"$).Append(CRLF)
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
Sub Prepare As MySQLCRUD
	SingularClean = Singular.Replace(" ", "")
	SingularClean = SingularClean.trim
	PluralClean = Plural.Replace(" ", "")
	PluralClean = PluralClean.trim
	'
	rsTB = $"rs${PluralClean}"$
	dtName = $"dt${PluralClean}"$
	ModalName = $"dlg${PluralClean}"$
	ModalShow = $"${ModalName}show"$
	Return Me
End Sub

'add field data types - strings
Sub AddStrings(stringNames As List)
	For Each k As String In stringNames
		Strings.Add(k)
	Next
End Sub

'add columns to filter
Sub AddFilters(fltName As List)
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
private Sub LoadCode As MySQLCRUD
	sb.Append($"Sub Load${PluralClean}		'ignoredeadcode
	Dim ${rsTB} As BANanoMySQLE
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	${rsTB}.SelectAll(Array("*"), Array("${SortBy}"))
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
	'clear content
		${dtName}.Reload(${ComponentName}, ${ComponentName}.NewList)
		Dim strError As String = ${rsTB}.Error
		vuetify.ShowSnackBarError("An error took place whilst running the command. " & strError)
		Return
	End Select
	${dtName}.Reload(${ComponentName}, ${rsTB}.Result)
End Sub"$).Append(CRLF).Append(CRLF)
	Return Me
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
	Dim ${rsTB} As BANanoMySQLE
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Read(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
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
	Dim s${PrimaryKey} As String = ${SingularClean}M.Get("${PrimaryKey}")
	Dim ${rsTB} As BANanoMySQLE
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Update1(${SingularClean}M, s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
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

'create code
private Sub CreateCode()
	Dim sbSchemas As String = BuildSchemas
	'
	sb.Append($"Sub Create${SingularClean}(${SingularClean}M As Map)			'ignoredeadcode
	'remove the auto-increment key field
	${SingularClean}M.Remove("${AutoIncrement}")
	Dim ${rsTB} As BANanoMySQLE
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	'insert current record
	${rsTB}.Insert1(${SingularClean}M)
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
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
	Dim ${rsTB} As BANanoMySQLE
	${rsTB}.Initialize("${DatabaseName}", "${TableName}", "${PrimaryKey}", "${AutoIncrement}")
	'add field types
	${sbSchemas}
	${rsTB}.Delete(s${PrimaryKey})
	${rsTB}.JSON = banano.CallInlinePHPWait(${rsTB}.MethodName, ${rsTB}.Build)
	${rsTB}.FromJSON
	Select Case ${rsTB}.OK
	Case False
		Dim strError As String = ${rsTB}.Error
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
	
	AddCode($"${dtName}.Title = "${Plural}""$)
	AddCode($"${dtName}.ItemKey = "${PrimaryKey}""$)
	AddCode($"${dtName}.ItemsPerPage = ${DT_ItemsPerPage}"$)

	AddCode($"${dtName}.AddSpacer"$)
	'
	If DT_HasSearch Then
		AddCode($"${dtName}.AddSearch"$)
		sb.Append($"${dtName}.AddDivider"$).Append(CRLF)
	End If
	
	If DT_HasAddNew Then
		AddCode($"${dtName}.AddNew(${ComponentName})"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasClearSort Then
		AddCode($"${dtName}.AddClearSort(${ComponentName})"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasFilter Then
		AddCode($"${dtName}.AddFilter(${ComponentName}, "primary--text")"$)
		AddCode($"${dtName}.AddDivider"$)
		AddCode($"${dtName}.AddClearFilter(${ComponentName})"$)
		AddCode($"${dtName}.AddDivider"$)
	End If
	
	If DT_HasRefresh Then
		AddCode($"${dtName}.AddTitleIcon(${ComponentName}, "btnRefresh", "mdi-cloud-refresh", "purple")"$)
	End If
	'
	If Filters.Size > 0 Then
		Dim arrx As String = BANanoShared.List2ArrayVariable(Filters)
		sb.Append($"${dtName}.SetFilterable(Array(${arrx}))"$).Append(CRLF)
	End If
	'
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
	AddComment("statis code module")
	AddCode("Sub Process_Globals")
	
	sb.Append($"Public vuetify As VuetifyApp
Public ${ComponentName} As VueComponent
Public path As String
Public name As String = "${ComponentName}"
Private banano As BANano
Private ${dtName} As VueTable
Private ${ModalName} As VueElement
Private Mode As String 
End Sub"$).append(CRLF).append(CRLF)
	'
	
	AddCode("Sub Initialize")
	AddCode("'establish a reference to the app")
	AddCode("vuetify = pgIndex.vuetify")
	AddComment("'initialize the component")
	AddCode($"${ComponentName}.Initialize(Me, name)"$)
	AddCode($"path = ${ComponentName}.path"$)
	AddComment("")
	AddComment("'add a dialog for this page")
	AddCode($"Dim dlg As VueElement = vuetify.AddDialogAlertPrompt(Me, ${ComponentName}.Here, name, True, 500, "primary", "error")"$)
	AddCode($"${ComponentName}.BindVueElement(dlg)"$)
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
	AddComment("'add the component as a router")
	AddCode($"vuetify.AddRoute(${ComponentName})"$)
	AddCode("End Sub")
	sb.Append(CRLF).Append(CRLF)
End Sub

private Sub CreateDialogCode
	AddCode($"Sub CreateDialog"$)
	AddComment("create a container")
	AddCode($"Dim ${ModalName} As VueElement = vuetify.AddDialogInput(Me, ${ComponentName}.Here, "${ModalName}", True, "${DialogWidth}", "${Plural}", "Save", "primary", "Cancel", "error")"$)
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)
	'
	AddComment("get the container")
	AddCode($"Dim ${SingularClean}Cont As VueElement = ${ComponentName}.DialogContainer("${ModalName}")"$)
	AddCode($"${SingularClean}Cont.AddRows1.AddColumns12"$)
	AddCode($"${SingularClean}Cont.BuildGrid"$)
	'
	sb.Append(dtCont.ToString).Append(CRLF)
	'
	AddCode($"${ComponentName}.BindVueElement(${SingularClean}Cont)"$)
	AddCode($"${ComponentName}.BindVueElement(${ModalName})"$)
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
	'REFRESH RECORDS
	sb.Append($"Sub btnRefresh_click(e As BANanoEvent)			'ignoredeadcode
${ComponentName}.RunMethod("Load${PluralClean}", Null)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'SAVE RECORD
	sb.Append($"Sub ${ModalName}ok_click(e As BANanoEvent)			'ignoredeadcode
	'validate the form
	'Dim bValid As Boolean = vuetify.FormValidate("frmAddtopic")
	'Log(bValid)
	
	'If bValid = False Then Return
	'get the topic
	Dim ${SingularClean}M As Map = ${ComponentName}.GetData("${SingularClean.tolowercase}")
	'Dim stopicname As String = topicm.Get("topicname")
	'stopicname = stopicname.Trim
	'If stopicname = "" Then
	'	vuetify.ShowSnackBarError("The topic name should be specified!")
	'	Return
	'End If
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
	sb.Append($"Sub ${dtName}_add_click(e As BANanoEvent)				'ignoredeadcode
	Add${SingularClean}
End Sub"$).Append(CRLF).Append(CRLF)
	'
	Dim xDefaults As String = BuildDefaults("nt")
	
	'ADD RECORD
	sb.Append($"Sub Add${SingularClean}			'ignoreDeadCode
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Add ${Singular}")
	Mode = "A"
	'initialize the record
	Dim nt As Map = CreateMap()
	${xDefaults}
	${ComponentName}.SetData("${SingularClean.tolowercase}", nt)
	${BuildVisibility}
	'show the drawer
	${ComponentName}.SetData("${ModalShow.tolowercase}", True)
	vuetify.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)
	'
	'TABLE EDIT
	sb.Append($"Private Sub ${dtName}_edit (item As Map)				'ignoredeadcode
	${ComponentName}.DialogUpdateTitle("${ModalName}", "Edit ${Singular}")
	Mode = "E"
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.RunMethod("Read${SingularClean}", s${PrimaryKey})
	${BuildVisibility}
	vuetify.SetFocus("${FocusOn}")
End Sub"$).Append(CRLF).Append(CRLF)

	'
	'TABLE DELETE
	sb.Append($"Private Sub ${dtName}_delete (item As Map)				'ignoredeadcode
	Dim s${DisplayField} As String = item.Get("${DisplayField}")
	Dim s${PrimaryKey} As String = item.Get("${PrimaryKey}")
	${ComponentName}.SetData("${PrimaryKey.tolowercase}", s${PrimaryKey})
	${ComponentName}.ShowConfirm("delete${SingularClean.tolowercase}", ~"Confirm Delete: ~{s${DisplayField}}"~, ~"Are you sure you want to delete this ${Singular.tolowercase}?<br><br>Please note you will not be able to undo your changes. Continue?"~, "Yes", "No")
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
	'
	'OTHER TABLE STUFF
	If DT_HasClearSort Then
		sb.Append($"Private Sub ${dtName}_clearsort_Click (e As BANanoEvent)		'ignoredeadcode
	${dtName}.ClearSort(${ComponentName})
End Sub"$).append(CRLF).append(CRLF)
	End If

	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_clearfilter_click (e As BANanoEvent)			'ignoredeadcode
	${dtName}.ClearFilter(${ComponentName})
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	sb.Append($"Private Sub ${dtName}_change (item As Map)				'ignoredeadcode
	${ComponentName}.RunMethod("Update${SingularClean}", item)
	${ComponentName}.SetData("${ModalShow.tolowercase}", False)
End Sub"$).Append(CRLF).Append(CRLF)
	'
	If DT_HasFilter Then
		sb.Append($"Private Sub ${dtName}_filter_click(e As BANanoEvent)		'ignoredeadcode
	${dtName}.ApplyFilter(${ComponentName})
End Sub"$).Append(CRLF).Append(CRLF)
	End If
	'
	If DT_HasSave Then
		sb.Append($"Sub ${dtName}_save (item As Map)
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
	End Sub"$).Append(CRLF).Append(CRLF)
	End If

	If DT_HasEditDialog Then
		sb.Append($"Sub ${dtName}_SaveItem (item As Map)
	${ComponentName}.RunMethod("Update${SingularClean}", item)
	${ComponentName}.SetData("${ModalShow.tolowercase}", False)
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

'convert to string
Sub ToString As String
	InitilizeCode
	LoadCode
	ReadCode
	UpdateCode
	CreateCode
	DeleteCode
	CreateTableCode
	SupportCode
	CreateDialogCode
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