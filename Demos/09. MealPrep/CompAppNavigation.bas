B4J=true
Group=Default Group\Components
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public appnavigation As VueComponent
	Public name As String = "app-navigation"
	Private banano As BANano
	Private vappbar As VueElement
	Private vappbarnavicon As VueElement
	Private vnavigationdrawer As VueElement
	Private vtoolbartitle As VueElement
	Private vuetify As VuetifyApp
	Private vdivider As VueElement
	Private vlistitem As VueElement
	Private btnmenu As VueElement
	Private btnlogout As VueElement
End Sub

#if css
a {
    color: white;
    text-decoration: none;
}
#End If

Sub Initialize
	vuetify = pgIndex.vuetify
	'initialize the app navigation component
	appnavigation.Initialize(Me, name, $"/${name}"$)
	'
	banano.LoadLayout("#placeholder", "vappnavigation")
	'
	banano.LoadLayout("#appendholder", "vauthenticated")
	vappbar.AppendHolder
	'
	'bind the elements
	appnavigation.BindVueElement(vnavigationdrawer)
	appnavigation.BindVueElement(vappbar)
	appnavigation.BindVueElement(vappbarnavicon)
	appnavigation.BindVueElement(vtoolbartitle)
	appnavigation.BindVueElement(vlistitem)
	appnavigation.BindVueElement(vdivider)
	appnavigation.BindVueElement(btnlogout)
	'
	appnavigation.AppendPlaceHolder
	
	'hide the drawer
	appnavigation.SetData("appdrawer", True)
	'initialize the menu items
	Dim items As List = appnavigation.newlist
	items.Add(CreateMap("title": "Menu", "url": "/menu"))
	items.Add(CreateMap("title": "Profile", "url": "/about"))
	items.Add(CreateMap("title": "Sign In", "url": "/signin"))
	items.Add(CreateMap("title": "Sign Up", "url": "/signup"))
	'initialize the items
	appnavigation.SetData("items", items)
	'initialize the app title state
	appnavigation.SetData("apptitle", "BANanoVuetifyAD3 Meal Prep")
	'
	appnavigation.SetComputed("isAuthenticated", Me, "isAuthenticated", Null)
	'appnavigation.SetMethod(Me, "btnlogout_Click", Null)
End Sub

Sub isAuthenticated As Boolean				'IgnoreDeadCode
	Dim bisAuthenticated As Boolean = vuetify.GetStore("isAuthenticated")
	Return bisAuthenticated
End Sub

'when hamburger is clicked
'toggle the drawer
Sub vappbarnavicon_ClickStop (e As BANanoEvent)				'IgnoreDeadCode
	appnavigation.Toggle("appdrawer")
End Sub


Sub btnlogout_Click (e As BANanoEvent)    'IgnoreDeadCode
	vuetify.RunMethod("userSignOut", Null)
End Sub