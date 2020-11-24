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
	Private appdialogcancel As VueElement
	Private appdialogok As VueElement
	Private vapp As VueElement
	Private appsnackbar As VueElement
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
	'BANano.GetElement("#body").AddClass("md-scrollbar")
	AddRouters
	
	
	'create a list of items to use
	Dim links As List = vuetify.NewList
	links.Add(CreateMap("icon": "mdi-view-dashboard", "title": "Home", "to": "/"))
	links.Add(CreateMap("icon": "mdi-account", "title": "Users", "to": "/users"))
	links.Add(CreateMap("icon": "mdi-note", "title": "Questions", "to": "/questions"))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Alert", "to": "/alerts"))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Avatars", "to": "/avatars"))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Badges", "to": ViewBadges.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Buttons", "to": ViewButtons.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Dialogs", "to": "/dialogs"))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Date Picker", "to": ViewDatePicker.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Text Fields", "to": ViewTextFields.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Tables", "to": ViewTable.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Selects", "to": ViewSelects.path))
	'
	'
	'save to state
	vuetify.SetData("links", links)
	'initialize the snack bar
	BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	'add the dialog
	BANano.LoadLayout(vuetify.PlaceHolderName, "appdialog")
	'bind the buttons
	vuetify.BindVueElement(appdialogcancel)
	vuetify.BindVueElement(appdialogok)
	vuetify.BindVueElement(appsnackbar)
	'initialize the snackbar
	vuetify.SnackBarInitialize
	'initialize the dialog
	vuetify.DialogInitialize
	'add dialog to v-app
	vapp.AppendPlaceHolder
	
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
	'bind the drawer
	vuetify.BindVueElement(vappdrawer)
	'bind the hamburger
	vuetify.BindVueElement(vappbarnavicon)
	'
	'add the drawer profile
	BANano.LoadLayout(vuetify.PlaceHolderName, "vdrawerprofile")
	vappdrawer.AppendPlaceHolder
	
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
	ViewAvatars.Initialize
	ViewAlert.Initialize  
	ViewDialog.Initialize 
	ViewTextFields.Initialize 
	ViewBadges.Initialize 
	ViewDatePicker.Initialize 
	ViewButtons.Initialize 
	ViewTable.Initialize 
	ViewSelects.Initialize 
End Sub

Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("appdrawer")
End Sub

Sub appdialogok_Click (e As BANanoEvent)
	'hide the active dialog box
	vuetify.ShowDialog(False)
	'get the dialog process being executed
	Dim sconfirm As String = vuetify.Confirm
	'process accordingly
	Select Case sconfirm
	Case "alert"
	Case "dialog_age"
		'get the prompt value
		Dim svalue As String = vuetify.GetPromptValue
		'run a sub on originating code module
		BANano.CallSub(ViewDialog, "GetAge", Array(svalue))	
	Case Else		
		vuetify.ShowSnackBarSuccess(sconfirm & "-ok")
	End Select
End Sub

Sub appdialogcancel_Click (e As BANanoEvent)
	vuetify.ShowDialog(False)
	Dim sconfirm As String = vuetify.Confirm
	vuetify.ShowSnackBarError(sconfirm & "-cancel")
End Sub