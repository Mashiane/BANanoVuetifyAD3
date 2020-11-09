B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private banano As BANano
End Sub
'
Sub LoadLayoutButtonIcon(Module As Object, btnID As String, iconID As String, iconName As String, props As Map)
	btnID = btnID.tolowercase
	iconID = iconID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	'load button icon and clear the placeholder
	Ret = banano.LoadLayoutArray("#appendholder", "vbtnvicon", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Module, "vbtnvicon", Ret)
	Log(AllViews)
	
	'
	'Dim vbtn As VueElement = AllViews.Get("vbtn")
	'If btnID <> "" Then vbtn.ID = btnID
	'
	'Dim vicon As VueElement = AllViews.Get("vicon")
	'If iconID <> "" Then vicon.ID = iconID
	'If iconName <> "" Then vicon.Caption = iconName
End Sub