B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public manualgrid As VueComponent
	Public path As String
	Public name As String = "manualgrid"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	manualgrid.Initialize(Me, name)
	path = manualgrid.path
	
	'lets create a container to hold our elements
	Dim vcontainer As VueElement
	vcontainer = vuetify.AddContainer(Me, manualgrid.Here, "mangrid", True)
	'lets add a row, it should have 1 column spanning 12
	vcontainer.AddRows(1).AddColumns(1, 12, 12, 12, 12)
	'add 11 + , i.e R2
	vcontainer.AddRows(1).AddColumns(1, 11, 11, 11, 11).AddColumns(1, 1, 1, 1, 1)
	'lets add 10 + 2, we add 2 rows having 2 columns each
	vcontainer.AddRows(1).AddColumns10.AddColumns2
	'lets add 9 + 3 - we use a shortcut
	vcontainer.AddRows(1).AddColumns9p3
	'lets add 8 + 4
	vcontainer.AddRows(1).AddColumns8p4
	'lets add 7 + 5
	vcontainer.AddRows(1).AddColumns7p5
	'6 columns 2 each
	vcontainer.AddRows(1).AddColumns6x2
	'2 columns 6 each
	vcontainer.AddRows(1).AddColumns2x6
	'4 columns 3 each
	vcontainer.AddRows(1).AddColumns4x3
	'3 columns 4 each
	vcontainer.AddRows(1).AddColumns3x4
	'add own columns def
	vcontainer.AddRows(1).AddColumns1.AddColumns3.AddColumns6.AddColumns2
	'1+3+6+2=12
	
	'lets show the grid to guide us
	'vcontainer.ShowGridDesign = True
	'lets build the grid
	vcontainer.BuildGrid
	
	'Add elements after building the grid
	
	'get a column id * after grid is built
	Dim r1c1 As String = vcontainer.MatrixID(1, 1)
	Log(r1c1)
	' now lets add an item
	Dim img As VueElement = vuetify.AddImage(Me, r1c1, "imgx", "./assets/sponge.png", "", "Anele", "200", "200", Null)
	'lets add a text field
	Dim txt1 As VueElement = vuetify.AddTextField(Me, vcontainer.MatrixID(2, 1), "txt1", "firstname", "First Name", "Enter first name", True, "", 20, "", Null)
	txt1.Outlined = True
	manualgrid.BindVueElement(txt1)
	'do data binding for defaults after
	manualgrid.SetData("firstname", "Anele Mbanga (Mashy)")
	
	'
	'add a button
	Dim btn1 As VueElement = vuetify.AddButton(Me, vcontainer.MatrixID(6,1), _
	"btn1", "Check this out", "primary", False, Null)
	manualgrid.BindVueElement(btn1)
	
	'add a checkbox
	Dim chkAgree As VueElement = vuetify.AddCheckBox(Me, vcontainer.MatrixID(6,2), "chkAgree", "agree", "I agree with terms and conditions", "Yes", "No", "primary", Null)
	manualgrid.BindVueElement(chkAgree)
	
	
	'add gender
	Dim genderList As List = manualgrid.NewList
	genderList.Add(CreateMap("id":"m", "text":"Male"))
	genderList.Add(CreateMap("id":"f", "text":"Female"))
	'
	Dim radGender As VueElement = vuetify.AddRadioGroup(Me, vcontainer.MatrixID(3, 1), "gender", "gender", "Choose gender", True, False, "genderlist", "id", "text", "", Null, Null)
	manualgrid.BindVueElement(radGender) 
	
	'do data binding after creation
	manualgrid.SetData("genderlist", genderList)
	
	'add the component as a router
	vuetify.AddRoute(manualgrid)
End Sub

'lets add a click event
Sub btn1_click(e As BANanoEvent)
	'get the firstname
	Dim sfirstname As String = manualgrid.GetData("firstname")
	'show in the global snackbar
	vuetify.ShowSnackBarError(sfirstname)
End Sub

'trap the checkbox click event
Sub chkAgree_click(e As BANanoEvent)
	'get the value
	Dim sagree As String = manualgrid.GetData("agree")
	If sagree = "No" Then
		vuetify.ShowAlert("agreed", "Confirm Agree", "You need to agree with T&Cs", "Aight")
	End If
End Sub
