B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vappbar As VueElement
	Private menubutton As VueElement
	Private menuicon As VueElement
	Private menulist As VueElement
	Private menulistitem As VueElement
	Private menulistitemtitle As VueElement
	Private menutemplate As VueElement
	Private menutext As VueElement
	Private vmenu As VueElement
	Private vappdrawer As VueElement
	Private vappbarnavicon As VueElement
	Private vdrawerlistitem As VueElement
	Private vdrawerlistitemactionicon As VueElement
	Private vdrawerlistitemtitle As VueElement
	Private vdrawerlist As VueElement
	Private vdrawerlistitemaction As VueElement
	Private vdrawerlistitemcontent As VueElement
End Sub

#if css
	.border {
  		border-left: 6px solid #0ba518;
	}
	
	.v-list .v-list-item:hover {
  		background-color: rgba(96, 125, 139, 0.4);
	}

	.v-list .v-list-item {
  		border-radius: 6px;
  		margin: 3px;
	}
#End If

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'create a list of items to use
	Dim links As List = vuetify.NewList
	links.Add(CreateMap("icon": "mdi-view-dashboard", "title": "Home", "to": "/"))
	links.Add(CreateMap("icon": "mdi-account", "title": "Users", "to": "/users"))
	links.Add(CreateMap("icon": "mdi-note", "title": "Questions", "to": "/questions"))
	'save to state
	vuetify.SetData("links", links)
	
	BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	'load the menu to a placeholder
	BANano.LoadLayout(vuetify.PlaceHolderName, "vbuttonmenu")
	'define the menu list
	menulistitem.vfor = "item in links"
	menulistitem.Key = ":item.title"
	menulistitem.To = ":item.to"
	menulistitem.ActiveClass = "border"
	menulistitemtitle.Caption = "{{ item.title }}"
	
	'add the menu to the v-app-bar
	vappbar.AppendPlaceHolder
	'add logout button to v-app-bar
	BANano.LoadLayout(vuetify.PlaceHolderName, "vbuttoniconright")
	vappbar.AppendPlaceholder
	'
	AddRouters
	'bind the drawer
	vuetify.BindVueElement(vappdrawer)
	'bind the hamburger
	vuetify.BindVueElement(vappbarnavicon)
	'
	'load the list layout to the drawer
	BANano.LoadLayout(vuetify.PlaceHolderName, "vdrawerlisticontitle")
	'define the source of the drawer list items
	vdrawerlistitem.VFor = "item in links"
	vdrawerlistitem.Key = ":item.title"
	vdrawerlistitem.To = ":item.to"
	vdrawerlistitem.ActiveClass = "border"
	vdrawerlistitemactionicon.VText = "item.icon"
	vdrawerlistitemactionicon.Classes = "white--text"
	vdrawerlistitemtitle.VText = "item.title"
	vdrawerlistitemtitle.Classes = "white--text"
	'bind the element
	vuetify.BindVueElement(vdrawerlistitem)
	vuetify.BindVueElement(vdrawerlistitemactionicon)
	vuetify.BindVueElement(vdrawerlistitemtitle)
	'add the list to the drawer
	vappdrawer.AppendPlaceHolder
	'render the ux
	vuetify.Serve
End Sub


Sub AddRouters
	ViewHome.Initialize 
	ViewAbout.Initialize 
	ViewUsers.Initialize 
	ViewQuestions.Initialize 
End Sub

Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("appdrawer")
End Sub