B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public vfabx As VueComponent
	Public path As String
	Public name As String = "vfab"
	Private banano As BANano
	Private fcont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	vfabx.Initialize(Me, name)
	path = vfabx.path
	'
	fcont = vfabx.Page.AddContainer("fcont", True)
	
	'
	Dim fcard As VueElement = fcont.AddCard("fcard", "", Null)
	fcard.Width = 400
	fcard.Height = 500
	fcard.ML = 14
	fcard.MT = 14
	vfabx.BindVueElement(fcard)
	'
	Dim tleft As VueElement = fcard.AddFab1("tleft", "mdi-plus", "orange")
	tleft.TopLeft
	tleft.Absolute = True
	'
	Dim tright As VueElement = fcard.AddFab1("tright", "mdi-plus", "green")
	tright.TopRight
	tright.Absolute = True
	'
	Dim bright As VueElement = fcard.AddFab1("bright", "mdi-plus", "pink")
	bright.BottomRight
	bright.Absolute = True
	'
	Dim bleft As VueElement = fcard.AddFab1("bleft", "mdi-plus", "blue")
	bleft.BottomLeft
	bleft.Absolute = True
	
	'
	Dim sd As VueElement = fcont.AddSpeedDial("sd1", "mdi-account-circle", "mdi-close", "sdvalue", "blue")
	vfabx.BindVueElement(sd)
	sd.BottomRight
	sd.OpenOnHover = True
	sd.Absolute = True
	Dim sdedit As VueElement = sd.AddSpeedDialItem("sdedit", "mdi-pencil", "green")
	Dim sdadd As VueElement = sd.AddSpeedDialItem("sdadd", "mdi-plus", "indigo")
	Dim sddelete As VueElement = sd.AddSpeedDialItem("sddelete", "mdi-delete", "red")
	vfabx.BindVueElement(sdedit)
	vfabx.BindVueElement(sdadd)
	vfabx.BindVueElement(sddelete)
			  
	'add the component as a router
	vuetify.AddRoute(vfabx) 
End Sub

Sub sdedit_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("edit")
End Sub

Sub sdadd_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("add")
End Sub

Sub sddelete_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("delete")
End Sub