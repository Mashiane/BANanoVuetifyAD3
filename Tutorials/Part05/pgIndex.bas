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
End Sub

#if css
	.border {
  		border-left: 6px solid #0ba518;
	}
#End If

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'create a list of items to use
	Dim links As List = vuetify.NewList
	links.Add(CreateMap("icon": "dashboard", "title": "Home", "to": "/"))
	links.Add(CreateMap("icon": "person", "title": "Users", "to": "/users"))
	links.Add(CreateMap("icon": "event_note", "title": "Questions", "to": "/questions"))
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
	'
	AddRouters
	'
	'render the ux
	vuetify.Serve
End Sub


Sub AddRouters
	ViewHome.Initialize 
	ViewAbout.Initialize 
	ViewUsers.Initialize 
	ViewQuestions.Initialize 
End Sub