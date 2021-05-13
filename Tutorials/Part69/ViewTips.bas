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
	Public name As String = "tips"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	
	Dim contTips As VueElement = about.Page.AddContainer("conttips", False)
	contTips.AddRows10.AddColumns2x6
	contTips.BuildGrid
	'
	Dim txtBox As VueElement = contTips.Cell(1, 1).AddEmail1("txtbox1", "txtbox", "Email address", Null)
	txtBox.Solo = True
	txtBox.Rounded = True
	'
	Dim txtappend As VueElement = txtBox.AddSlotAppend("txtbox1template")
	Dim btnSubscribe As VueElement = txtappend.AddButton1("btnSubscribe", "Subscribe", Null)
	btnSubscribe.Value = "Subscribe"
	btnSubscribe.Color = vuetify.COLOR_BLUE & " " & vuetify.INTENSITY_LIGHTEN1
	btnSubscribe.SetTypeButton
	btnSubscribe.Rounded = True
	
	txtBox.BindVueElement(txtappend)
	txtBox.BindVueElement(btnSubscribe)
	about.BindVueElement(txtBox)
	
	Dim txtBox1 As VueElement = contTips.Cell(1, 2).AddEmail1("txtbox2", "", "Answer (optional)", Null)
	txtBox1.Solo = True
	txtBox1.Rounded = True
	
	'
	Dim txtappend1 As VueElement = txtBox1.AddSlotAppend("txtbox2append")
	Dim iconx As VueElement = txtappend1.AddIcon("iconx", "mdi-trash-can-outline", "red", True, Null)
	iconx.MR = 1
	Dim icons As VueElement = txtappend1.AddIcon("iconsearch", "mdi-account-search", "blue", True, Null)
	'
	
	txtBox1.BindVueElement(iconx)
	txtBox1.BindVueElement(icons)
	about.BindVueElement(txtBox1)
	'	
	'define the list of colors
	Dim colors As List = about.NewList
	colors.AddAll(Array("amber", "black", "blue", "light-blue", "blue-grey", "brown",  "cyan"))
	colors.AddAll(Array( "green", "light-green", "grey", "indigo"))
	colors.AddAll(Array("lime", "orange", "deep-orange", "pink", "purple", "deep-purple", "red", "teal", "white", "yellow"))
	'convert all colors to hex values
	colors = vuetify.ListOfColorsToHex(colors)
	
	Dim colorgroup As VueElement = contTips.Cell(2, 1).AddColorGroup("colorgroup", "groupcolor", colors)
	about.BindVueElement(colorgroup)
	about.SetData("groupcolor", "amber")
	'
	contTips.Cell(2, 2).AddParagraph("selcolor", "{{ groupcolor }}", "", "")
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

Sub iconx_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("Trash icon")
End Sub

Sub iconsearch_click(e As BANanoEvent)
	vuetify.ShowSnackBarSuccess("Search icon")
End Sub