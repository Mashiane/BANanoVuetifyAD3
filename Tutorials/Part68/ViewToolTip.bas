B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public pgtiptap As VueComponent
	Public path As String
	Public name As String = "tooltips"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	pgtiptap.Initialize(Me, name)
	path = pgtiptap.path
	
	Dim ttcont As VueElement = pgtiptap.Page.AddContainer("ttcont", False)
	ttcont.AddRows10.AddColumns2x6
	ttcont.BuildGrid
	
	Dim btnb As VueElement = ttcont.Cell(1, 1).AddButton1("btnb", "Left", Null)
	btnb.MicroTipLeft("Click me quick!")
	pgtiptap.BindVueElement(btnb)
	'
	Dim btnr As VueElement = ttcont.Cell(1, 2).AddButton1("btnr", "Right", Null)
	btnr.MicroTipRight("Click me quick!")
	pgtiptap.BindVueElement(btnr)
	'
	Dim btnbtbt As VueElement = ttcont.Cell(2, 1).AddButton1("btnbtbt", "Bottom", Null)
	btnbtbt.MicroTipBottom("Click me quick!")
	pgtiptap.BindVueElement(btnbtbt)
	'
	Dim btntop As VueElement = ttcont.Cell(2, 2).AddButton1("btntop", "Top", Null)
	btntop.MicroTipTop("Click me quick!")
	pgtiptap.BindVueElement(btntop)
	'
	Dim btnx As VueElement = ttcont.Cell(3, 1).AddButton1("btnx", "Bottom Left", Null)
	btnx.MicroTipBottomLeft("Click me quick!")
	pgtiptap.BindVueElement(btnx)
	'
	Dim btnmicro As VueElement = ttcont.Cell(3, 2).AddButton1("btnmicro", "Bottom Right", Null)
	btnmicro.MicroTipBottomRight("This is a micro tooltip!")
	pgtiptap.BindVueElement(btnmicro)
	'
	Dim btnmicrotl As VueElement = ttcont.Cell(4, 1).AddButton1("btnmicrotl", "Top Left", Null)
	btnmicrotl.MicroTipTopLeft("Click me")
	pgtiptap.BindVueElement(btnmicrotl)
	'
	Dim btnmicrotl As VueElement = ttcont.Cell(4, 2).AddButton1("btnmicrotr", "Top Right", Null)
	btnmicrotl.MicroTipTopRight("Click me")
	pgtiptap.BindVueElement(btnmicrotl)
	
	'add the component as a router
	vuetify.AddRoute(pgtiptap) 
End Sub

