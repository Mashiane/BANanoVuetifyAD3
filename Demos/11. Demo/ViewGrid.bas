B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public grid As VueComponent
	Public name As String = "grid"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vgridcontainer As VueElement
	Private homer3c2 As VueElement
End Sub


Sub Initialize
	vuetify = pgIndex.vuetify
	grid.Initialize(Me, name)
	path = grid.path
	'
	BANano.LoadLayout("#placeholder", "vgridcontainer")
	grid.BindVueElement(vgridcontainer)
	
	vgridcontainer.Matrix(3, 2).LoadLayout("vhomer3c2")
	grid.BindVueElement(homer3c2)
	homer3c2.Matrix(1, 1).AddClass("text-center green")
	homer3c2.Matrix(1, 2).AddClass("text-center orange")
	'
	homer3c2.Matrix(2, 1).AddClass("text-center blue")
	homer3c2.Matrix(2, 2).AddClass("text-center yellow")
	
	vgridcontainer.Matrix(1, 1).AddClass("text-center success")
	vgridcontainer.Matrix(1, 2).AddClass("text-center warning")
	vgridcontainer.Matrix(1, 3).AddClass("text-center error")
	
	grid.AppendPlaceHolder
	vuetify.AddRoute(grid)
End Sub
