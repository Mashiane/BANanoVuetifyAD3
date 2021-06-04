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
	Public name As String = "adappbar"
	Private banano As BANano
	Private cardsr1 As VRow
	Private VCard3 As VCard
	Private appbarx As VAppBar
	Private appbarz As VAppBar
	Private appcard As VCard
	Private apphamburgerz As VAppBarNavIcon
	Private apptoolbara As VToolBar
	Private apptoolbarz As VToolBarTitle
	Private btnicon1 As VBtn
	Private btnicon2 As VBtn
	Private cardaa As VCard
	Private divapp As VLabel
	Private hamb1 As VAppBarNavIcon
	Private mapcard As VCard
	Private menux As VBtn
	Private spacer1 As VLabel
	Private spacer123 As VLabel
	Private tblbar1 As VToolBarTitle
	Private VBtn1 As VBtn
	Private VBtn2 As VBtn
	Private VBtn3 As VBtn
	Private VToolBar1 As VToolBar
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "myappbars")
	'
	about.BindVueElement(cardsr1.VElement)
	about.BindVueElement(VCard3.VElement)
	about.BindVueElement(appbarx.VElement)
	about.BindVueElement(appbarz.VElement)
	about.BindVueElement(appcard.VElement)
	about.BindVueElement(apphamburgerz.VElement)
	about.BindVueElement(apptoolbara.VElement)
	about.BindVueElement(apptoolbarz.VElement)
	about.BindVueElement(btnicon1.VElement)
	about.BindVueElement(btnicon2.VElement)
	about.BindVueElement(cardaa.VElement)
	about.BindVueElement(divapp.VElement)
	about.BindVueElement(hamb1.VElement)
	about.BindVueElement(mapcard.VElement)
	about.BindVueElement(menux.VElement)
	about.BindVueElement(spacer1.VElement)
	about.BindVueElement(spacer123.VElement)
	about.BindVueElement(tblbar1.VElement)
	about.BindVueElement(VBtn1.VElement)
	about.BindVueElement(VBtn2.VElement)
	about.BindVueElement(VBtn3.VElement)
	about.BindVueElement(VToolBar1.VElement)
		
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub

