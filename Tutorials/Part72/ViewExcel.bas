B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "excel"
	Private banano As BANano
	Private spreadS As BANanoObject
	Private excel As VueExcel
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	Dim contexcel As VueElement = about.Page.AddContainer("contexcel", True)
	'
	excel.Initialize(Me, "contexcel", "excel")
	excel.RowLength = 15
	excel.ColLength = 10
	'excel.Height = 500
	about.BindVueExcel(excel)
	'
	about.SetMounted(Me, "oncreate", Null)
	'
	'add the component as a router
	vuetify.AddRoute(about) 
	
End Sub

Sub excel_change(data As Map)
	Log(data)
End Sub


Sub oncreate
	excel.Ready
	excel.CellText(0, 0, "Mashy Mbanga")
	excel.Refresh
	'
	'Dim style As BANanoObject = excel.cellStyle(0, 0)
	'Log("style...")
	'Log(style)
	'
	Dim data As Map = excel.GetData
	Log("data")
	Log(data)
End Sub