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
	vuetify.Initialize(Me, "inspire")
	'BANano.GetElement("#body").AddClass("md-scrollbar")
	AddRouters
		
	'initialize the snack bar
	BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	Dim appDialog As VueElement = vuetify.AddDialogAlertPrompt(Me, "vapp", "inspire", True, 400, "primary", "error")
	vuetify.BindVueElement(appDialog)
	
	vuetify.BindVueElement(appsnackbar)
	'initialize the snackbar
	vuetify.SnackBarInitialize
	
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
	
	'inject a list tp the vapp drawer
	Dim drwlist As VueElement = vuetify.AddList(Me, "vappdrawer", "drwlist", True, False, True, Null)
	vuetify.BindVueElement(drwlist)
	
	'initialize the listview options, we use the default options
	'to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	drwlistOptions.key = "title"
	
	'add the template to the list
	Dim drwlistTemplate As VueElement = vuetify.AddListViewTemplate(Me, "drwlist", 0, drwlistOptions)
	'bind the template
	vuetify.BindVueElement(drwlistTemplate)
	
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
	links.Add(CreateMap("icon": "mdi-cog", "title": "Grids", "to": ViewGrid.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Grids 2", "to": ViewGrid2.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Form Controls", "to": ViewFormControls.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Page Dialogs", "to": ViewPageDialog.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Radio Groups", "to": ViewRadioGroup.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Switches", "to": ViewSwitches.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Text Area", "to": ViewTextArea.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Check Boxes", "to": ViewCheckBoxes.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "File Inputs", "to": ViewFileInput.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Sliders", "to": ViewSliders.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Chips", "to": ViewChips.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Lists", "to": ViewList.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Parallax", "to": ViewParallax.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Rating", "to": ViewRating.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Images", "to": ViewImage.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Progress Linear & Circular", "to": ViewProgress.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Manual Grid", "to": ViewManualGrid.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Input Dialogs", "to": ViewInputDialog.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Stepper", "to": ViewStepper.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "Tabs", "to": ViewTabs.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "SQLite PHP", "to": ViewPHPSQLite.path))
	links.Add(CreateMap("icon": "mdi-cog", "title": "MySQL PHP", "to": ViewMySQL.path))
	
	'
	vuetify.SetData("links", links)
	'close the drawer
	vuetify.SetData("appdrawer", False)
	'render the ux
	vuetify.Serve
	
	
End Sub

'a list item on the drawer is clicked
Sub drwlist_click(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub

Sub AddRouters
	ViewMySQL.Initialize 
	ViewPHPSQLite.Initialize 
	ViewInputDialog.Initialize 
	ViewImage.Initialize 
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
	ViewGrid.Initialize 
	ViewGrid2.Initialize 
	ViewFormControls.Initialize
	ViewPageDialog.Initialize 
	ViewRadioGroup.Initialize 
	ViewSwitches.Initialize 
	ViewTextArea.Initialize 
	ViewCheckBoxes.Initialize 
	ViewFileInput.Initialize 
	ViewSliders.Initialize 
	ViewChips.Initialize 
	ViewList.Initialize 
	ViewParallax.Initialize
	ViewRating.Initialize 
	ViewProgress.Initialize 
	ViewManualGrid.Initialize 
	ViewStepper.Initialize 
	ViewTabs.Initialize  
End Sub

Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("appdrawer")
End Sub

Sub inspireok_Click (e As BANanoEvent)
	'hide the active dialog box
	vuetify.HideDialog
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

Sub inspirecancel_Click (e As BANanoEvent)
	vuetify.HideDialog
	Dim sconfirm As String = vuetify.Confirm
	vuetify.ShowSnackBarError(sconfirm & "-cancel")
End Sub