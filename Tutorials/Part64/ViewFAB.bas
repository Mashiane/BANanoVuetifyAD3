B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public vfab As VueComponent
	Public path As String
	Public name As String = "vfab"
	Private banano As BANano
	Private fcont As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	vfab.Initialize(Me, name)
	path = vfab.path
	'
	fcont = vfab.Page.AddContainer("fcont", True)
	
	'
	Dim fcard As VueElement = fcont.AddCard("fcard", "", Null)
	fcard.Width = 400
	fcard.Height = 500
	fcard.ML = 14
	fcard.MT = 14
	vfab.BindVueElement(fcard)
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
			  
	'add the component as a router
	vuetify.AddRoute(vfab) 
End Sub
