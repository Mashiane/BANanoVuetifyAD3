B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public chips As VueComponent
	Public path As String
	Public name As String = "chips"
	Private banano As BANano
	Private vchips As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	chips.Initialize(Me, name)
	path = chips.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vchips")
	'
'	Dim cai1 As BANanoElement = BVAD3.NewChipAvatarImage(chips, "cai1", "./assets/sponge.png", "Anele Mbanga (Mashy)", True, True, "green", Null, Null, Null)
'	vchips.Matrix(1, 1).Empty.Append(cai1.gethtml)
	'
	Dim r1c2 As String = vchips.MatrixID(1, 2)
	Dim cai2 As VueElement = vuetify.AddChipWithAvatar(Me, r1c2, "cai1", "./assets/sponge.png", "Anele Mbanga (Mashy)", True, True, "green", Null, Null, Null)
	chips.BindVueElement(cai2)
	
	'
'	Dim ci1 As BANanoElement = BVAD3.NewChipIcon(chips, "ci1", "mdi-nature", "Nature", False, True, "indigo", Null, Null)
'	vchips.Matrix(1, 2).Empty.Append(ci1.GetHTML)
	
	Dim r2c1 As String = vchips.matrixID(2, 1)
	Dim ci2 As VueElement = vuetify.AddChipWithIcon(Me, r2c1, "ci2", "mdi-nature", "Nature", False, True, "indigo", Null, Null)
	chips.BindVueElement(ci2)
	'
	'Dim cg1 As BANanoElement = BVAD3.NewChipGroup(chips, "cg1", "cg1selected", "primary--text", False, True, True, "cg1items", "id", "text", _
	'CreateMap(":column":True), Null)
	'vchips.Matrix(2, 1).Empty.Append(cg1.GetHTML)
	'
	Dim r3c1 As String = vchips.MatrixID(3, 1)
	
	Dim cg2 As VueElement = vuetify.AddChipGroup(Me, r3c1, "cg2", "cg2selected", "", False, True, True, "cg1items", "id", "text", Null, Null)
	chips.BindVueElement(cg2)
	'
	Dim items As List = chips.NewList
	items = BANanoShared.ListToDataSource("id", "text", Array("Work", "Home Improvement", "Vacation", "Food", "Drawers", "Shopping", "Art", "Tech", "Creative Writing"))
	chips.SetData("cg1items", items)
	
	'add the component as a router
	vuetify.AddRoute(chips)

		
End Sub

Sub cg2_change(e As BANanoEvent)
	Dim scg2selected As String = chips.GetData("cg2selected")
	vuetify.ShowSnackBarSuccess(scg2selected)
End Sub

Sub cai1_click(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub

Sub cai1_clickclose(item As String)
	vuetify.ShowSnackBarError(item)
End Sub


Sub ci1_click(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub

Sub ci1_clickclose(item As String)
	vuetify.ShowSnackBarError(item)
End Sub


Sub ci2_click(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub

Sub ci2_clickclose(item As String)
	vuetify.ShowSnackBarError(item)
End Sub