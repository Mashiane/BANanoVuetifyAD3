B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Private BANano As BANano
	Private vsnackbar As VueElement
	Private routerview As VueElement
	Private vappbar As VueElement
	Private vappbarnavicon As VueElement
	Private vmain As VueElement
	Private vnavigationdrawer As VueElement
	Private vtoolbartitle As VueElement
	Private vlogo As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'initialize and import the component
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vbaseline")
	vuetify.BindVueElement(vsnackbar)
	vuetify.BindVueElement(routerview)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vappbarnavicon)
	vuetify.BindVueElement(vmain)
	vuetify.BindVueElement(vtoolbartitle)
	vuetify.BindVueElement(vnavigationdrawer)
	vuetify.BindVueElement(vlogo)
	'
	vuetify.SetData("apptitle", Main.AppTitle)
	vnavigationdrawer.Width = 350
	
	' set up snack bar stuff: depends on the vsnackbar layout
	vuetify.SnackBarInitialize
	'add a list to the navdrawer
	Dim vlist As VueElement = NewList("vnavigationdrawer", "navlist", Null)
	vlist.Shaped = True
	'add a template to the drawer list
	Dim vlistitem As VueElement = NewListItem("navlist", "navlistitem", "page", "iconleft", "pages", 0, CreateMap("inset":True, "avatarclass":"mr-2", "iconclass":"mr-2"))
	vuetify.BindVueElement(vlistitem)
	
	CompHome.Initialize
	'
	PageLinks
	'
	'show the drawer
	vuetify.SetData("appdrawer", True)
	
	'render the ux
	vuetify.Serve
End Sub

'this Is linkes To the list
Sub navlist_click(item As String)
	vuetify.ShowSnackBarSuccess(item)
End Sub

	

Sub PageLinks
	Dim pages As List = vuetify.NewList
	pages.Add(CreateMap("icon": "mdi-inbox-arrow-down", "iconright": "mdi-inbox-arrow-down", "iconleft": "mdi-inbox-arrow-down", "title":"Inbox", "subtitle":"Incoming emails","avatar":"./assets/1.jpg"))
	pages.Add(CreateMap("icon": "mdi-send", "iconright": "mdi-send", "iconleft": "mdi-send", "title": "Sent","subtitle":"Sent emails","avatar":"./assets/2.jpg"))
	pages.Add(CreateMap("icon": "mdi-delete", "iconright": "mdi-delete", "iconleft": "mdi-delete", "title": "Trash","subtitle":"Deleted emails","avatar":"./assets/3.jpg"))
	pages.Add(CreateMap("icon": "mdi-alert-octagon", "iconright": "mdi-alert-octagon", "iconleft": "mdi-alert-octagon", "title": "Spam","subtitle":"Spam emails","avatar":"./assets/4.jpg"))
	vuetify.SetData("pages", pages)
End Sub


Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub


Sub navlist_RightClick (item As Object)
	vuetify.ShowSnackBarWarning(item)	
End Sub

Sub navlist_LeftClick (item As Object)
	vuetify.ShowSnackBarPrimary(item)
End Sub


'***** HELPER FUNCTIONS

Sub NewList(parentid As String, refID As String, props As Map) As VueElement
	parentid = parentid.tolowercase
	refID = refID.tolowercase
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = BANano.LoadLayoutArray($"#${parentid}"$, "vlist", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vlist", Ret)
	'
	Dim vlist As VueElement = AllViews.Get("vlist")
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			vlist.AddAttr(k, v)
		Next
	End If
	vlist.AddAttr("ref", refID)
	vlist.AddAttr("id", refID)
	vlist.Element = BANano.GetElement($"#${refID}"$)
	Return vlist
End Sub
'
Sub NewListItem(parentID As String, refid As String, itemName As String, itemKey As String, datasource As String, numLines As Int, props As Map) As VueElement
	parentID = parentID.tolowercase
	refid = refid.tolowercase
	itemName = itemName.tolowercase
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = BANano.LoadLayoutArray($"#${parentID}"$, "vlistitemtemplate", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vlistitemtemplate", Ret)
	'
	Dim vtemplate As VueElement = AllViews.Get("vtemplate")
	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
	'
	Dim vlistitemactionleft As VueElement = AllViews.Get("vlistitemactionleft")
	Dim vlistitemactionlefticon As VueElement = AllViews.Get("vlistitemactionlefticon")
	'
	Dim vlistitemavatar As VueElement = AllViews.Get("vlistitemavatar")
	Dim vlistitemavatarimg As VueElement = AllViews.get("vlistitemavatarimg")
	'
	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
	Dim vlistitemtitle As VueElement = AllViews.get("vlistitemtitle")
	Dim vlistitemsubtitle As VueElement = AllViews.Get("vlistitemsubtitle")
	Dim vlistitemsubtitle1 As VueElement = AllViews.Get("vlistitemsubtitle1")
	
	Dim vlistitemicon As VueElement = AllViews.Get("vlistitemicon")
	Dim vlistitemiconicon As VueElement = AllViews.Get("vlistitemiconicon")
	
	Dim vlistitemactionrighticon As VueElement = AllViews.Get("vlistitemactionrighticon")
	Dim vlistitemactionright As VueElement = AllViews.Get("vlistitemactionright")
		
	Dim vlistitemdivider As VueElement = AllViews.get("vlistitemdivider")
		'
	vtemplate.AddAttr("ref", refid)
	vtemplate.AddAttr("id", refid)
	vtemplate.AddAttr("v-for", $"(${itemName}, idx) in ${datasource}"$)
	vtemplate.AddAttr(":key", itemKey)
	
	vlistitem.AddAttr("ref", $"${refid}item"$)
	vlistitem.AddAttr("id", $"${refid}item"$)
	'
	Dim smethod As String = $"${parentID}_click"$
	If BANano.SubExists(Me, smethod) Then
		Dim clickKey As String = $"${itemName}.${itemKey}"$
		Dim clickSub As String = $"${smethod}(${clickKey})"$
		vlistitem.AddAttr("v-on:click", clickSub)
		'arguments for the event
		Dim e As Object 'ignore
		Dim cb As BANanoObject = BANano.CallBack(Me, smethod, Array(e))
		vlistitem.SetCallBack(smethod, cb)
	End If
	'
	Dim srightmethod As String = $"${parentID}_rightclick"$
	If BANano.SubExists(Me, srightmethod) Then
		Dim clickKey As String = $"${itemName}.${itemKey}"$
		Dim clickSub As String = $"${srightmethod}(${clickKey})"$
		vlistitemactionright.AddAttr("v-on:click.stop", clickSub)
		'arguments for the event
		Dim e As Object 'ignore
		Dim cbr As BANanoObject = BANano.CallBack(Me, srightmethod, Array(e))
		vlistitem.SetCallBack(srightmethod, cbr)
	End If
	'
	Dim sleftmethod As String = $"${parentID}_leftclick"$
	If BANano.SubExists(Me, sleftmethod) Then
		Dim clickKey As String = $"${itemName}.${itemKey}"$
		Dim clickSub As String = $"${sleftmethod}(${clickKey})"$
		vlistitemactionleft.AddAttr("v-on:click.stop", clickSub)
		'arguments for the event
		Dim e As Object 'ignore
		Dim cbl As BANanoObject = BANano.CallBack(Me, sleftmethod, Array(e))
		vlistitem.SetCallBack(sleftmethod, cbl)
	End If
	'
	Select Case numLines
	Case 2
		vlistitem.AddAttr("two-line", True)
	Case 3		
		vlistitem.AddAttr("three-line", True)
	End Select
	'
	vlistitemdivider.AddAttr(":key",$"`divider-${itemKey}`"$)
	
	'default field names
	Dim savatar As String = "avatar"
	Dim sicon As String = "icon"
	Dim ssubtitle As String = "subtitle"
	Dim ssubtitle1 As String = "subtitle1"
	Dim stitle As String = "title"
	Dim siconright As String = "iconright"
	Dim siconleft As String = "iconleft"
	Dim siconleftclass As String = ""
	Dim savatarclass As String = ""
	Dim siconclass As String = ""
	Dim siconcolor As String = "iconcolor"
	Dim siconrightclass As String = ""
	
	'read specified
	If BANano.IsNull(props) Or BANano.IsUndefined(props) Then
	Else	
		If props.ContainsKey("iconleft") Then siconleft = props.Get("iconleft")
		If props.ContainsKey("iconleftclass") Then siconleftclass = props.Get("iconleftclass")
		'
		If props.ContainsKey("avatar") Then	savatar = props.Get("avatar")
		If props.ContainsKey("avatarclass") Then savatarclass = props.Get("avatarclass")
		'
		If props.ContainsKey("icon") Then sicon = props.Get("icon")
		If props.ContainsKey("iconclass") Then siconclass = props.Get("iconclass")
		If props.ContainsKey("iconcolor") Then siconcolor = props.Get("iconcolor")
		'
		If props.ContainsKey("title") Then stitle = props.Get("title")
		If props.ContainsKey("subtitle") Then ssubtitle = props.Get("subtitle")
		If props.ContainsKey("subtitle1") Then ssubtitle1 = props.Get("subtitle1")
		'
		If props.ContainsKey("iconright") Then siconright = props.Get("iconright")
		If props.ContainsKey("iconrightclass") Then siconrightclass = props.Get("iconrightclass")
		'
		If props.ContainsKey("inset") Then vlistitemdivider.AddAttr("inset", True)
	End If
	'	left icon
	vlistitemactionleft.AddAttr("v-if", $"${itemName}.${siconleft}"$)
	vlistitemactionlefticon.AddAttr("v-if", $"${itemName}.${siconleft}"$)
	vlistitemactionlefticon.AddClass(siconleftclass)
	vlistitemactionlefticon.AddAttr("v-text", $"${itemName}.${siconleft}"$)
	
	'	turn visibility based on fields
	vlistitemavatar.AddAttr("v-if", $"${itemName}.${savatar}"$)
	vlistitemavatar.AddClass(savatarclass)
	vlistitemavatarimg.AddAttr(":src", $"${itemName}.${savatar}"$)
	vlistitemavatarimg.AddAttr("v-if", $"${itemName}.${savatar}"$)
'	icon
	Dim vlistitemicon As VueElement = AllViews.Get("vlistitemicon")
	Dim vlistitemiconicon As VueElement = AllViews.Get("vlistitemiconicon")
	
	vlistitemicon.AddAttr("v-if", $"${itemName}.${sicon}"$)
	vlistitemiconicon.AddAttr("v-if", $"${itemName}.${sicon}"$)
	vlistitemiconicon.AddClass(siconclass)
	vlistitemiconicon.AddAttr(":color", $"${itemName}.${siconcolor}"$)
	vlistitemiconicon.AddAttr("v-text", $"${itemName}.${sicon}"$)
'	
	vlistitemtitle.AddAttr("v-if", $"${itemName}.${stitle}"$)
	vlistitemtitle.AddAttr("v-text", $"${itemName}.${stitle}"$)
	
	vlistitemsubtitle.AddAttr("v-if", $"${itemName}.${ssubtitle}"$)
	vlistitemsubtitle.AddAttr("v-text", $"${itemName}.${ssubtitle}"$)
	
	vlistitemsubtitle1.AddAttr("v-if", $"${itemName}.${ssubtitle1}"$)
	vlistitemsubtitle1.AddAttr("v-text", $"${itemName}.${ssubtitle1}"$)
'	
	vlistitemactionrighticon.AddAttr("v-if", $"${itemName}.${siconright}"$)
	vlistitemactionright.AddAttr("v-if", $"${itemName}.${siconright}"$)
	vlistitemactionrighticon.AddAttr("v-text", $"${itemName}.${siconright}"$)
	vlistitemactionrighticon.AddClass(siconrightclass)
	'
	Return vlistitem
End Sub

'
'Sub LoadLayoutButtonIcon(EventName As String, btnID As String, iconName As String, btnprops As Map, iconprops As Map)
'	btnID = btnID.tolowercase
'	'
'	'get the parent
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load button icon and clear the placeholder
'	Ret = BANano.LoadLayoutArray("#appendholder", "vbtnvicon", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vbtnvicon", Ret)
'	'
'	Dim vbtn As VueElement = AllViews.Get("vbtn")
'	'
'	If BANano.IsNull(btnprops) = False Then
'		For Each k As String In btnprops.Keys
'			Dim v As String = btnprops.Get(k)
'			vbtn.AddAttr(k, v)
'		Next
'	End If
'	vbtn.AddAttr("data-id", btnID)
'	'
'	If btnID <> "" Then
'		vbtn.OnMulti(EventName, vuetify.EVENT_Click, $"'${btnID}'"$)
'	End If
'	'
'	vuetify.BindVueElement(vbtn)
'	'
'	Dim vicon As VueElement = AllViews.Get("vicon")
'	If iconName <> "" Then vicon.Caption = iconName
'	'
'	If BANano.IsNull(iconprops) = False Then
'		For Each k As String In iconprops.Keys
'			Dim v As String = iconprops.Get(k)
'			vicon.AddAttr(k, v)
'		Next
'	End If
'	'
'	vuetify.BindVueElement(vicon)
'End Sub
'
'Sub LoadLayoutIcon(iconID As String, iconName As String, iconprops As Map) As VueElement
'	'get the parent
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load button icon and clear the placeholder
'	Ret = BANano.LoadLayoutArray("#appendholder", "vicon", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vicon", Ret)
'	'
'	Dim vicon As VueElement = AllViews.Get("vicon")
'	If iconName <> "" Then vicon.Caption = iconName
'	vicon.SetAttr("data-id", iconID)
'	'
'	If BANano.IsNull(iconprops) = False Then
'		For Each k As String In iconprops.Keys
'			Dim v As String = iconprops.Get(k)
'			vicon.AddAttr(k, v)
'		Next
'	End If
'	'
'	vuetify.BindVueElement(vicon)
'	vicon.Element = vicon.GetElementByData("id", iconID)
'	Return vicon
'End Sub
'
'Sub LoadLayoutButton(EventName As String, btnID As String, btnLabel As String, btnprops As Map) As VueElement
'	btnID = btnID.tolowercase
'	'
'	'get the parent
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load button icon and clear the placeholder
'	Ret = BANano.LoadLayoutArray("#appendholder", "vbtn", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vbtn", Ret)
'	'
'	Dim vbtn As VueElement = AllViews.Get("vbtn")
'	'
'	If BANano.IsNull(btnprops) = False Then
'		For Each k As String In btnprops.Keys
'			Dim v As String = btnprops.Get(k)
'			vbtn.AddAttr(k, v)
'		Next
'	End If
'	vbtn.AddAttr("data-id", btnID)
'	'
'	If btnID <> "" Then
'		vbtn.OnMulti(EventName, vuetify.EVENT_Click, $"'${btnID}'"$)
'	End If
'	'
'	vbtn.caption = btnLabel
'	vuetify.BindVueElement(vbtn)
'	vbtn.Element = vicon.GetElementByData("id", btnID)
'	Return vbtn
'End Sub
'
'
'Sub LoadLayoutSpacer(props As Map) As VueElement
'	'get the parent
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load button icon and clear the placeholder
'	Ret = BANano.LoadLayoutArray("#appendholder", "vspacer", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vspacer", Ret)
'	'
'	Dim vspacer As VueElement = AllViews.Get("vspacer")
'	'
'	If BANano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As String = props.Get(k)
'			vspacer.AddAttr(k, v)
'		Next
'	End If
'	vuetify.BindVueElement(vspacer)
'	Return vspacer
'End Sub
