B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private banano As BANano	
End Sub


''new list item
'Sub NewListItem(VC As VueComponent, elID As String, DataSource As String, Key As String, numLines As Int, props As Map)
'	Dim EventHandler As Object = VC.mCallBack
'	elID = elID.tolowercase
'	elID = elID.Replace("#","")
'	elID = elID.tolowercase
'	
'	DataSource = DataSource.tolowercase
'	'get the parent
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	Ret = banano.LoadLayoutArray($"#${elID}"$, "mlistitem", False)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlistitem", Ret)
'	
'	'
'	Dim vtemplate As VueElement = AllViews.Get("vtemplate")
'	vtemplate.id = $"${elID}template"$
'	vtemplate.vfor = $"(item, index) in ${DataSource}"$
'	vtemplate.bindkey($"item.${Key}"$)
'	'
'	
'	Dim vsubheader As VueElement = AllViews.get("vsubheader")
'	vsubheader.ID = $"${elID}subheader"$
'	vsubheader.VIf = "item.header"
'	vsubheader.BindKey("item.header")
'	vsubheader.Caption = vsubheader.ItemInMoustache("header")
'	'
'	Dim vlistitemdivider As VueElement = AllViews.get("vlistitemdivider")
'	vlistitemdivider.VElseIf = "item.divider"
'	vlistitemdivider.BindKey("index")
'	vlistitemdivider.Bind("inset", $"item.inset"$)
'	'
'	'
'	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
'	vlistitem.ID = $"${elID}listitem"$
'	vlistitem.VElse = True
'	vlistitem.BindKey($"item.${Key}"$)
'	'
'	Select Case numLines
'	Case 2
'		vlistitem.AddAttr(":two-line", True)
'	Case 3
'		vlistitem.AddAttr(":three-line", True)
'	End Select
'	'
'	vlistitem.SetOnEventOwn(EventHandler, $"${elID}_click"$, "click", $"item.${Key}"$)
'	'
'	Dim vlistitemactionleft As VueElement = AllViews.Get("vlistitemactionleft")
'	vlistitemactionleft.id = $"${elID}listitemactionleft"$
'	Dim sleftmethod As String = $"${elID}_leftclick"$
'	vlistitemactionleft.SetOnOwnEventAttr(EventHandler, sleftmethod, "click.stop", $"item.${Key}"$)
'	Dim args As List
'	vlistitem.SetMethod1(EventHandler, sleftmethod, args)
'	
'	Dim vrighticonbtn As VueElement = AllViews.Get("vrighticonbtn")
'	vrighticonbtn.ID = $"${elID}righticonbtn"$
'	'
'	Dim vlistitemactionlefticon As VueElement = AllViews.Get("vlistitemactionlefticon")
'	vlistitemactionlefticon.ID = $"${elID}listitemactionlefticon"$
'	'
'	Dim vlistitemavatar As VueElement = AllViews.Get("vlistitemavatar")
'	vlistitemavatar.id = $"${elID}listitemavatar"$
'	'
'	Dim vlistitemavatarimg As VueElement = AllViews.get("vlistitemavatarimg")
'	vlistitemavatarimg.ID = $"${elID}listitemavatarimg"$
'	'
'	Dim vavataricon As VueElement = AllViews.Get("vavataricon")
'	vavataricon.ID = $"${elID}avataricon"$
'	'
'	Dim vleftactionbtn As VueElement = AllViews.Get("vleftactionbtn")
'	vleftactionbtn.ID = $"${elID}leftactionbtn"$
'	'	
'	Dim vlistitemicon As VueElement = AllViews.Get("vlistitemicon")
'	vlistitemicon.ID = $"${elID}listitemicon"$
'	'
'	Dim vlistitemiconicon As VueElement = AllViews.Get("vlistitemiconicon")
'	vlistitemiconicon.ID = $"${elID}listitemiconicon"$
'	'
'	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
'	vlistitemcontent.ID = $"${elID}listitemcontent"$
'	'
'	Dim vlistitemtitle As VueElement = AllViews.get("vlistitemtitle")
'	vlistitemtitle.ID = $"${elID}listitemtitle"$
'	'
'	Dim vlistitemsubtitle As VueElement = AllViews.Get("vlistitemsubtitle")
'	vlistitemsubtitle.ID = $"${elID}listitemsubtitle1"$
'	'
'	Dim vlistitemsubtitle1 As VueElement = AllViews.Get("vlistitemsubtitle1")
'	vlistitemsubtitle1.ID = $"${elID}listitemsubtitle1"$
'	'	
'	Dim vlistitemactionright As VueElement = AllViews.Get("vlistitemactionright")
'	vlistitemactionright.ID = $"${elID}listitemactionright"$
'	Dim srightmethod As String = $"${elID}_rightclick"$
'	vlistitemactionright.SetOnOwnEventAttr(EventHandler, srightmethod, "click.stop", $"item.${Key}"$)
'	vlistitem.SetMethod1(EventHandler, srightmethod, args)
'	
'	Dim vlistitemactiontext As VueElement = AllViews.Get("vlistitemactiontext")
'	vlistitemactiontext.ID = $"${elID}listitemactiontext"$
'	'
'	Dim vlistitemactionrighticon As VueElement = AllViews.Get("vlistitemactionrighticon")
'	vlistitemactionrighticon.id = $"${elID}listitemactionrighticon"$
'	
'	'default field names
'	Dim savatar As String = "avatar"
'	Dim sicon As String = "icon"
'	Dim ssubtitle As String = "subtitle"
'	Dim ssubtitle1 As String = "subtitle1"
'	Dim stitle As String = "title"
'	Dim siconright As String = "iconright"
'	Dim siconleft As String = "iconleft"
'	Dim siconleftclass As String = ""
'	Dim savatarclass As String = ""
'	Dim siconclass As String = ""
'	Dim siconcolor As String = "iconcolor"
'	Dim siconrightclass As String = ""
'	Dim stextright As String = "textright"
'	Dim sroute As String = "route"
'	Dim savataricon As String = "avataricon"
'	Dim svavatariconclass As String = ""
'	Dim savatariconcolor As String = "avatariconcolor"
'		
'	'read specified
'	If banano.IsNull(props) Or banano.IsUndefined(props) Then
'	Else
'		If props.ContainsKey("iconleft") Then siconleft = props.Get("iconleft")
'		If props.ContainsKey("iconleftclass") Then siconleftclass = props.Get("iconleftclass")
'		'
'		If props.ContainsKey("avatar") Then	savatar = props.Get("avatar")
'		If props.ContainsKey("avatarclass") Then savatarclass = props.Get("avatarclass")
'		If props.ContainsKey("avataricon") Then savataricon = props.Get("avataricon")
'		If props.ContainsKey("avatariconclass") Then svavatariconclass = props.Get("avatariconclass")
'		If props.ContainsKey("avatariconcolor") Then savatariconcolor = props.Get("avatariconcolor")
'		'
'		If props.ContainsKey("icon") Then sicon = props.Get("icon")
'		If props.ContainsKey("iconclass") Then siconclass = props.Get("iconclass")
'		If props.ContainsKey("iconcolor") Then siconcolor = props.Get("iconcolor")
'		'
'		If props.ContainsKey("title") Then stitle = props.Get("title")
'		If props.ContainsKey("subtitle") Then ssubtitle = props.Get("subtitle")
'		If props.ContainsKey("subtitle1") Then ssubtitle1 = props.Get("subtitle1")
'		'
'		If props.ContainsKey("iconright") Then siconright = props.Get("iconright")
'		If props.ContainsKey("iconrightclass") Then siconrightclass = props.Get("iconrightclass")
'			
'		If props.ContainsKey("textright") Then stextright = props.get("textright")
'		If props.ContainsKey("route") Then sroute = props.get("route")
'	End If
'	'
''
'	Dim itemName As String = "item"
'	vlistitem.Bind("to", $"item.${sroute}"$)
'	'	left icon
'	vlistitemactionleft.vif = $"${itemName}.${siconleft}"$
'	vlistitemactionlefticon.AddClass(siconleftclass)
'	vlistitemactionlefticon.vtext = $"${itemName}.${siconleft}"$
'	
'	'	turn visibility based on fields
'	vlistitemavatar.vif = $"${itemName}.${savatar} || item.${savataricon}"$
'	'
'	vlistitemavatar.AddClass(savatarclass)
'	vlistitemavatarimg.Bind("src", $"${itemName}.${savatar}"$)
'	vlistitemavatarimg.vif = $"${itemName}.${savatar}"$
''	'
'	vavataricon.vIf = $"${itemName}.${savataricon}"$
'	vavataricon.AddClass(svavatariconclass)
'	vavataricon.Bind("class", $"item.${savatariconcolor}"$)
'	vavataricon.Dark = True
'	vavataricon.vtext = $"${itemName}.${savataricon}"$
'	'
'	vlistitemicon.vif = $"${itemName}.${sicon}"$
'	vlistitemiconicon.Addclass(siconclass)
'	vlistitemiconicon.Bind("color", $"${itemName}.${siconcolor}"$)
'	vlistitemiconicon.vtext = $"${itemName}.${sicon}"$
''	
'	vlistitemtitle.vif = $"${itemName}.${stitle}"$
'	vlistitemtitle.vtext = $"${itemName}.${stitle}"$
'	
'	vlistitemsubtitle.vif = $"${itemName}.${ssubtitle}"$
'	vlistitemsubtitle.vtext = $"${itemName}.${ssubtitle}"$
'	
'	vlistitemsubtitle1.vif = $"${itemName}.${ssubtitle1}"$
'	vlistitemsubtitle1.vtext = $"${itemName}.${ssubtitle1}"$
''	
'	vlistitemactionright.vif = $"${itemName}.${siconright} || item.${stextright}"$
'	vlistitemactionrighticon.vif = $"${itemName}.${siconright}"$
'	vlistitemactionrighticon.vtext = $"${itemName}.${siconright}"$
'	vlistitemactionrighticon.AddClass(siconrightclass)
'	'
'	vlistitemactiontext.vif = $"${itemName}.${stextright}"$
'	vlistitemactiontext.vtext = $"${itemName}.${stextright}"$
'	'
'	VC.BindVueElement(vlistitem)
'	VC.BindVueElement(vlistitemactionleft)
'	VC.BindVueElement(vtemplate)
'	VC.BindVueElement(vlistitemactionlefticon)
'	VC.BindVueElement(vlistitemavatar)
'	VC.BindVueElement(vlistitemavatarimg)
'	VC.BindVueElement(vlistitemicon)
'	VC.BindVueElement(vlistitemiconicon)
'	VC.BindVueElement(vlistitemcontent)
'	VC.BindVueElement(vlistitemtitle)
'	VC.BindVueElement(vlistitemsubtitle)
'	VC.BindVueElement(vlistitemsubtitle1)
'	VC.BindVueElement(vlistitemactionright)
'	VC.BindVueElement(vlistitemactionrighticon)
'	VC.BindVueElement(vlistitemactiontext)
'End Sub


Sub NewCard(VC As VueComponent, elID As String, Title As String, SubTitle As String) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   	'
	Dim titlename As String = $"${elID}title"$
	Dim subtitlename As String = $"${elID}subtitle"$
	
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mdatatable", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdatatable", Ret)
	'
	Dim vtablecard As VueElement = AllViews.Get("vtablecard")
	Dim vtablecardtitle As VueElement = AllViews.Get("vtablecardtitle")
	Dim vtablesubtitle As VueElement = AllViews.Get("vtablesubtitle")
	Dim vtablecardtext As VueElement = AllViews.Get("vtablecardtext")
	'
	vtablecard.id = $"${elID}card"$
	'
	vtablecardtitle.id = $"${elID}cardtitle"$
	vtablecardtitle.Caption = $"{{ ${titlename} }}"$
	vtablecardtitle.SetData(titlename, Title)
	'
	vtablesubtitle.id = $"${elID}cardsubtitle"$
	vtablesubtitle.Caption = $"{{ ${subtitlename} }}"$
	vtablesubtitle.SetData(subtitlename, SubTitle)
	'
	vtablecardtext.id = $"${elID}cardtext"$
	'
	VC.BindVueElement(vtablecard)
	VC.BindVueElement(vtablecardtitle)
	VC.BindVueElement(vtablesubtitle)
	VC.BindVueElement(vtablecardtext)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

'
'
''add a dialog to a component
'Sub NewDialog(VC As VueComponent, Persistent As Boolean, Width As Int, OkColor As String, CancelColor As String)
'	Dim EventHandler As Object = VC.mCallBack
'	Dim elID As String = VC.ID
'	elID = elID.tolowercase
'	Dim Ret As Long
'	Dim AllViews As Map
'	'
'    Dim dialogShow As String = $"${elID}show"$
'	Dim dialogTitle As String = $"${elID}title"$
'	Dim dialogMessage As String = $"${elID}message"$
'	Dim dialogcanceltitle As String = $"${elID}canceltitle"$
'	Dim dialogoktitle As String = $"${elID}oktitle"$
'	Dim dialogokcolor As String = $"${elID}okcolor"$
'	Dim dialogcancelcolor As String = $"${elID}cancelcolor"$
'	Dim dialogokshow As String = $"${elID}okshow"$
'	Dim dialogcancelshow As String = $"${elID}cancelshow"$
'	Dim dialogwidth As String = $"${elID}width"$
'	Dim dialogpersistent As String = $"${elID}persistent"$
'	
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray("#appendholder", "mdialog", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdialog", Ret)
'	
'	Dim vdialog As VueElement = AllViews.Get("vdialog")
'	vdialog.ID = elID
'	vdialog.VModel = dialogShow
'	vdialog.Bind("width", dialogwidth)
'	vdialog.Bind("persistent", dialogpersistent)
'	
'	Dim vcard As VueElement = AllViews.Get("vcard")
'	vcard.id = $"${elID}card"$
'	'
'	Dim vcardtitle As VueElement = AllViews.Get("vcardtitle")
'	vcardtitle.ID = $"${elID}cardtitle"$
'	vcardtitle.Caption = $"{{ ${dialogTitle} }}"$
'	
'	Dim vcardtext As VueElement = AllViews.Get("vcardtext")
'	vcardtext.ID = $"${elID}cardtext"$
'	vcardtext.vhtml = dialogMessage
'	
'	Dim vdivider As VueElement = AllViews.Get("vdivider")
'	vdivider.ID = $"${elID}divider"$
'	
'	Dim vcardactions As VueElement = AllViews.Get("vcardactions")
'	vcardactions.ID = $"${elID}cardactions"$
'	
'	Dim vspacer As VueElement = AllViews.Get("vspacer")
'	vspacer.ID = $"${elID}spacer"$
'	
'	Dim vbtnOk As VueElement = AllViews.Get("vbtnok")
'	vbtnOk.ID = $"${elID}ok"$
'	vbtnOk.Caption = $"{{ ${dialogoktitle} }}"$
'	vbtnOk.AddAttr(":color", dialogokcolor)
'	vbtnOk.VShow = dialogokshow
'	'
'	vbtnOk.SetOnEvent(EventHandler, "click", "")
'	
'	Dim vbtncancel As VueElement = AllViews.Get("vbtncancel")
'	vbtncancel.ID = $"${elID}cancel"$
'	vbtncancel.Caption = $"{{ ${dialogcanceltitle} }}"$
'	vbtncancel.AddAttr(":color", dialogcancelcolor)
'	vbtncancel.VShow = dialogcancelshow
'	'
'	vbtncancel.SetOnEvent(EventHandler, "click", "")
'	
'	VC.BindVueElement(vdialog)
'	VC.BindVueElement(vbtnOk)
'	VC.BindVueElement(vbtncancel)
'	'
'	VC.UsesDialog
'	'
'	VC.SetData(dialogcancelcolor, CancelColor)
'	VC.SetData(dialogokcolor, OkColor)
'	VC.SetData(dialogwidth, Width)
'	VC.SetData(dialogpersistent, Persistent)
'	'add to the page template
'	VC.AppendHolder
'End Sub

'a list with items that have a checkbox and a title
Sub NewListCheckoxTitle(VC As VueComponent, elID As String, DataSource As String, KeySource As String, TitleSource As String, ToSource As String, listProps As Map, itemProps As Map, titleProps As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	DataSource = DataSource.ToLowerCase
	KeySource = KeySource.ToLowerCase
	TitleSource = TitleSource.tolowercase
	If ToSource <> "" Then ToSource = ToSource.tolowercase
	'
	Dim listID As String = $"${elID}list"$
	Dim checkboxID As String = $"${elID}checkbox"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim templateID As String = $"${elID}template"$
	Dim listitemactionID As String = $"${elID}listitemaction"$
	Dim listitemcontentID As String = $"${elID}listitemcontent"$
	Dim listitemtitleID As String = $"${elID}listitemtitle"$
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mlistcheckboxtitle", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlistcheckboxtitle", Ret)
	'
	' get each element and change its ID to be unique
	Dim vlist As VueElement = AllViews.Get("vlist")
	vlist.ID = listID
	'set props for the list
	If banano.IsNull(listProps) = False Then
		For Each k As String In listProps.Keys
			Dim v As Object = listProps.Get(k)
			vlist.AddAttr(k, v)
		Next
	End If
	'
	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
	vlistitem.ID = listitemID
	vlistitem.VFor = $"item in ${DataSource}"$
	vlistitem.BindKey($"item.${KeySource}"$)
	If ToSource <> "" Then vlistitem.BindTo($"item.${ToSource}"$)
	'set props for the list-item
	If banano.IsNull(itemProps) = False Then
		For Each k As String In itemProps.Keys
			Dim v As Object = itemProps.Get(k)
			vlistitem.AddAttr(k, v)
		Next
	End If
	'
	Dim vtemplate As VueElement = AllViews.get("vtemplate")
	vtemplate.ID = templateID
	'
	Dim vlistitemaction As VueElement = AllViews.Get("vlistitemaction")
	vlistitemaction.ID = listitemactionID
	'
	Dim vcheckbox As VueElement = AllViews.Get("vcheckbox")
	vcheckbox.id = checkboxID
	'
	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
	vlistitemcontent.id = listitemcontentID
	'
	Dim vlistitemtitle As VueElement = AllViews.Get("vlistitemtitle")
	vlistitemtitle.ID = listitemtitleID
	vlistitemtitle.Caption = $"{{ item.${TitleSource} }}"$
	'set props for the list-item
	If banano.IsNull(titleProps) = False Then
		For Each k As String In titleProps.Keys
			Dim v As Object = titleProps.Get(k)
			vlistitemtitle.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vlist)
	VC.BindVueElement(vlistitem)
	VC.BindVueElement(vtemplate)
	VC.BindVueElement(vlistitemaction)
	VC.BindVueElement(vcheckbox)
	VC.BindVueElement(vlistitemcontent)
	VC.BindVueElement(vlistitemtitle)
	
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


'a list with items that have an icon and a title
'Sub NewListIconTitle(VC As VueComponent, elID As String, DataSource As String, KeySource As String, IconSource As String, TitleSource As String, ToSource As String, listProps As Map, itemProps As Map, iconProps As Map, titleProps As Map) As BANanoElement
'	Dim EventHandler As Object = VC.mCallBack
'	elID = elID.tolowercase
'	DataSource = DataSource.ToLowerCase
'	KeySource = KeySource.ToLowerCase
'	TitleSource = TitleSource.tolowercase
'	IconSource = IconSource.tolowercase
'	If ToSource <> "" Then ToSource = ToSource.tolowercase
'	'
'	Dim listID As String = $"${elID}list"$
'	Dim listitemID As String = $"${elID}listitem"$
'	Dim templateID As String = $"${elID}template"$
'	Dim listitemactionID As String = $"${elID}listitemaction"$
'	Dim iconID As String = $"${elID}icon"$
'	Dim listitemcontentID As String = $"${elID}listitemcontent"$
'	Dim listitemtitleID As String = $"${elID}listitemtitle"$
'	'
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray("#appendholder", "mlisticontitle", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlisticontitle", Ret)
'	'
'	' get each element and change its ID to be unique
'	Dim vlist As VueElement = AllViews.Get("vlist")
'	vlist.ID = listID
'	'set props for the list
'	If banano.IsNull(listProps) = False Then
'		For Each k As String In listProps.Keys
'			Dim v As Object = listProps.Get(k)
'			vlist.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
'	vlistitem.ID = listitemID
'	vlistitem.VFor = $"item in ${DataSource}"$
'	vlistitem.BindKey($"item.${KeySource}"$)
'	If ToSource <> "" Then vlistitem.BindTo($"item.${ToSource}"$)
'	vlistitem.SetOnEventOwn(EventHandler, $"${elID}_click"$, "click", $"item.${KeySource}"$)
'	'
'	'set props for the list-item
'	If banano.IsNull(itemProps) = False Then
'		For Each k As String In itemProps.Keys
'			Dim v As Object = itemProps.Get(k)
'			vlistitem.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vtemplate As VueElement = AllViews.get("vtemplate")
'	vtemplate.ID = templateID
'	'
'	Dim vlistitemaction As VueElement = AllViews.Get("vlistitemaction")
'	vlistitemaction.ID = listitemactionID
'	'
'	Dim vicon As VueElement = AllViews.Get("vicon")
'	vicon.id = iconID
'	vicon.Caption = $"{{ item.${IconSource} }}"$
'	'set props for the list-item
'	If banano.IsNull(iconProps) = False Then
'		For Each k As String In iconProps.Keys
'			Dim v As Object = iconProps.Get(k)
'			vicon.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
'	vlistitemcontent.id = listitemcontentID
'	'
'	Dim vlistitemtitle As VueElement = AllViews.Get("vlistitemtitle")
'	vlistitemtitle.ID = listitemtitleID
'	vlistitemtitle.Caption = $"{{ item.${TitleSource} }}"$
'	'set props for the list-item
'	If banano.IsNull(titleProps) = False Then
'		For Each k As String In titleProps.Keys
'			Dim v As Object = titleProps.Get(k)
'			vlistitemtitle.AddAttr(k, v)
'		Next
'	End If
'	
'	VC.BindVueElement(vlist)
'	VC.BindVueElement(vlistitem)
'	VC.BindVueElement(vtemplate)
'	VC.BindVueElement(vlistitemaction)
'	VC.BindVueElement(vicon)
'	VC.BindVueElement(vlistitemcontent)
'	VC.BindVueElement(vlistitemtitle)
'	
'	Dim ah As BANanoElement
'	ah.Initialize("#appendholder")
'	Return ah
'End Sub


'a list with items that have an icon and a title
'Sub NewListIconTitleOnApp(app As VuetifyApp, parentID As String, elID As String, DataSource As String, KeySource As String, IconSource As String, TitleSource As String, ToSource As String, listProps As Map, itemProps As Map, iconProps As Map, titleProps As Map)
'	elID = elID.tolowercase
'	DataSource = DataSource.ToLowerCase
'	KeySource = KeySource.ToLowerCase
'	TitleSource = TitleSource.tolowercase
'	IconSource = IconSource.tolowercase
'	If ToSource <> "" Then ToSource = ToSource.tolowercase
'	parentID = parentID.tolowercase
'	'
'	Dim listID As String = $"${elID}list"$
'	Dim listitemID As String = $"${elID}listitem"$
'	Dim templateID As String = $"${elID}template"$
'	Dim listitemactionID As String = $"${elID}listitemaction"$
'	Dim iconID As String = $"${elID}icon"$
'	Dim listitemcontentID As String = $"${elID}listitemcontent"$
'	Dim listitemtitleID As String = $"${elID}listitemtitle"$
'	'
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray("#appendholder", "mlisticontitle", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlisticontitle", Ret)
'	'
'	' get each element and change its ID to be unique
'	Dim vlist As VueElement = AllViews.Get("vlist")
'	vlist.ID = listID
'	'set props for the list
'	If banano.IsNull(listProps) = False Then
'		For Each k As String In listProps.Keys
'			Dim v As Object = listProps.Get(k)
'			vlist.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
'	vlistitem.ID = listitemID
'	vlistitem.VFor = $"item in ${DataSource}"$
'	vlistitem.BindKey($"item.${KeySource}"$)
'	If ToSource <> "" Then vlistitem.BindTo($"item.${ToSource}"$)
'	vlistitem.SetOnEventOwn(app.EventHandler, $"${elID}_click"$, "click", $"item.${KeySource}"$)
'	
'	'set props for the list-item
'	If banano.IsNull(itemProps) = False Then
'		For Each k As String In itemProps.Keys
'			Dim v As Object = itemProps.Get(k)
'			vlistitem.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vtemplate As VueElement = AllViews.get("vtemplate")
'	vtemplate.ID = templateID
'	'
'	Dim vlistitemaction As VueElement = AllViews.Get("vlistitemaction")
'	vlistitemaction.ID = listitemactionID
'	'
'	Dim vicon As VueElement = AllViews.Get("vicon")
'	vicon.id = iconID
'	vicon.Caption = $"{{ item.${IconSource} }}"$
'	'set props for the list-item
'	If banano.IsNull(iconProps) = False Then
'		For Each k As String In iconProps.Keys
'			Dim v As Object = iconProps.Get(k)
'			vicon.AddAttr(k, v)
'		Next
'	End If
'	'
'	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
'	vlistitemcontent.id = listitemcontentID
'	'
'	Dim vlistitemtitle As VueElement = AllViews.Get("vlistitemtitle")
'	vlistitemtitle.ID = listitemtitleID
'	vlistitemtitle.Caption = $"{{ item.${TitleSource} }}"$
'	'set props for the list-item
'	If banano.IsNull(titleProps) = False Then
'		For Each k As String In titleProps.Keys
'			Dim v As Object = titleProps.Get(k)
'			vlistitemtitle.AddAttr(k, v)
'		Next
'	End If
'	
'	app.BindVueElement(vlist)
'	app.BindVueElement(vlistitem)
'	app.BindVueElement(vtemplate)
'	app.BindVueElement(vlistitemaction)
'	app.BindVueElement(vicon)
'	app.BindVueElement(vlistitemcontent)
'	app.BindVueElement(vlistitemtitle)
'	'
'	parentID = parentID.Replace("#","")
'	Dim stemplate As String = app.BANanoGetHTMLAsIs("appendholder")
'	Dim elx As BANanoElement
'	elx.Initialize($"#${parentID}"$)
'	elx.append(stemplate)
'End Sub


'Sub NewDatePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement
'	Dim eventhandler As Object = VC.mCallBack
'	elID = elID.tolowercase
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray("#appendholder", "mdatepicker", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdatepicker", Ret)
'	'
'	Dim vdatepicker As VueElement
'	Dim vdatepickercancel As VueElement
'	Dim vdatepickerclear As VueElement
'	Dim vdatepickermenu As VueElement
'	Dim vdatepickerok As VueElement
'	Dim vdatepickertemplate As VueElement
'	Dim vdatepickertextfield As VueElement
'	'
'	vdatepickermenu = AllViews.Get("vdatepickermenu")
'	vdatepickertextfield = AllViews.Get("vdatepickertextfield")
'	vdatepicker = AllViews.Get("vdatepicker")
'	vdatepickerclear = AllViews.Get("vdatepickerclear")
'	vdatepickercancel = AllViews.Get("vdatepickercancel")
'	vdatepickertemplate = AllViews.Get("vdatepickertemplate")
'	vdatepickerok = AllViews.Get("vdatepickerok")
'	'
'	Dim menuKey As String = $"${vmodel}dtmenu"$
'	
'	vdatepickermenu.AddAttr("ref", menuKey)
'	vdatepickermenu.AddAttr(":return-value.sync", vmodel)
'	vdatepickermenu.VModel = menuKey
'	vdatepickermenu.AddAttr("min-width", "460px")
'	vdatepickermenu.AddAttr("max-width", "460px")
'	vdatepickermenu.AddAttr(":nudge-right", "40")
'	'
'	vdatepickertextfield.Label = slabel
'	vdatepickertextfield.VModel = vmodel
'	vdatepickertextfield.PrependIcon = sPrependIcon
'	vdatepickertextfield.Placeholder = splaceholder
'	vdatepickertextfield.Required = bRequired
'	vdatepickertextfield.Hint = sHint
'	vdatepickertextfield.ref = vmodel
'	vdatepickertextfield.id = elID
'	vdatepickertextfield.AddAttr("autocomplete", "off")
'	'
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:append", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:prepend", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:append-outer", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:prepend-inner", "")
'	
'	vdatepicker.VModel = vmodel
'	vdatepicker.AddAttr("landscape", True)
'	'
'	vdatepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
'	vdatepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
'	vdatepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
'	vdatepickerclear.Outlined = True
'	vdatepickercancel.Outlined = True
'	vdatepickerok.Outlined = True
'	'
'	If banano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As Object = props.Get(k)
'			vdatepickertextfield.AddAttr(k, v)
'		Next
'	End If
'	
'	' merge bindings
'	VC.BindVueElement(vdatepickermenu)
'	VC.BindVueElement(vdatepickertextfield)
'	VC.BindVueElement(vdatepicker)
'	VC.BindVueElement(vdatepickerclear)
'	VC.BindVueElement(vdatepickercancel)
'	VC.BindVueElement(vdatepickerok)
'	VC.BindVueElement(vdatepickertemplate)
'	'
'	Dim ah As BANanoElement
'	ah.Initialize("#appendholder")
'	Return ah
'End Sub


'Sub NewDatePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map)
'	Dim eventhandler As Object = app.EventHandler
'	elID = elID.tolowercase
'	Dim Ret As Long
'	Dim AllViews As Map
'	parentid = parentid.Replace("#","")
'	
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray($"#${parentid}"$, "mdatepicker", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdatepicker", Ret)
'	'
'	Dim vdatepicker As VueElement
'	Dim vdatepickercancel As VueElement
'	Dim vdatepickerclear As VueElement
'	Dim vdatepickermenu As VueElement
'	Dim vdatepickerok As VueElement
'	Dim vdatepickertemplate As VueElement
'	Dim vdatepickertextfield As VueElement
'	'
'	vdatepickermenu = AllViews.Get("vdatepickermenu")
'	vdatepickertextfield = AllViews.Get("vdatepickertextfield")
'	vdatepicker = AllViews.Get("vdatepicker")
'	vdatepickerclear = AllViews.Get("vdatepickerclear")
'	vdatepickercancel = AllViews.Get("vdatepickercancel")
'	vdatepickertemplate = AllViews.Get("vdatepickertemplate")
'	vdatepickerok = AllViews.Get("vdatepickerok")
'	'
'	Dim menuKey As String = $"${vmodel}dtmenu"$
'	
'	vdatepickermenu.AddAttr("ref", menuKey)
'	vdatepickermenu.AddAttr(":return-value.sync", vmodel)
'	vdatepickermenu.VModel = menuKey
'	vdatepickermenu.AddAttr("min-width", "460px")
'	vdatepickermenu.AddAttr("max-width", "460px")
'	vdatepickermenu.AddAttr(":nudge-right", "40")
'	'
'	vdatepickertextfield.Label = slabel
'	vdatepickertextfield.VModel = vmodel
'	vdatepickertextfield.PrependIcon = sPrependIcon
'	vdatepickertextfield.Placeholder = splaceholder
'	vdatepickertextfield.Required = bRequired
'	vdatepickertextfield.Hint = sHint
'	vdatepickertextfield.ref = vmodel
'	vdatepickertextfield.id = elID
'	vdatepickertextfield.AddAttr("autocomplete", "off")
'	'
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:append", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:prepend", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:append-outer", "")
'	vdatepickertextfield.SetOnEvent(eventhandler, "click:prepend-inner", "")
'	
'	vdatepicker.VModel = vmodel
'	vdatepicker.AddAttr("landscape", True)
'	'
'	vdatepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
'	vdatepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
'	vdatepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
'	vdatepickerclear.Outlined = True
'	vdatepickercancel.Outlined = True
'	vdatepickerok.Outlined = True
'	'
'	If banano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As Object = props.Get(k)
'			vdatepickertextfield.AddAttr(k, v)
'		Next
'	End If
'	
'	' merge bindings
'	app.BindVueElement(vdatepickermenu)
'	app.BindVueElement(vdatepickertextfield)
'	app.BindVueElement(vdatepicker)
'	app.BindVueElement(vdatepickerclear)
'	app.BindVueElement(vdatepickercancel)
'	app.BindVueElement(vdatepickerok)
'	app.BindVueElement(vdatepickertemplate)
'End Sub


'Sub NewTimePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement
'	Dim eventhandler As Object = VC.mcallback
'	elID = elID.tolowercase
'	Dim Ret As Long
'	Dim AllViews As Map
'   
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray("#appendholder", "mtimepicker", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtimepicker", Ret)
'	'
'	Dim vtimepicker As VueElement
'	Dim vtimepickercancel As VueElement
'	Dim vtimepickerclear As VueElement
'	Dim vtimepickermenu As VueElement
'	Dim vtimepickerok As VueElement
'	Dim vtimepickertemplate As VueElement
'	Dim vtimepickertextfield As VueElement
'	'
'	vtimepickermenu = AllViews.Get("vtimepickermenu")
'	vtimepickertextfield = AllViews.Get("vtimepickertextfield")
'	vtimepicker = AllViews.Get("vtimepicker")
'	vtimepickerclear = AllViews.Get("vtimepickerclear")
'	vtimepickercancel = AllViews.Get("vtimepickercancel")
'	vtimepickertemplate = AllViews.Get("vtimepickertemplate")
'	vtimepickerok = AllViews.Get("vtimepickerok")
'	'
'	Dim menuKey As String = $"${vmodel}dtmenu"$
'	
'	vtimepickermenu.AddAttr("ref", menuKey)
'	vtimepickermenu.AddAttr(":return-value.sync", vmodel)
'	vtimepickermenu.VModel = menuKey
'	vtimepickermenu.AddAttr("min-width", "460px")
'	vtimepickermenu.AddAttr("max-width", "460px")
'	vtimepickermenu.AddAttr(":nudge-right", "40")
'	'
'	'
'	vtimepickertextfield.Label = slabel
'	vtimepickertextfield.VModel = vmodel
'	vtimepickertextfield.PrependIcon = sPrependIcon
'	vtimepickertextfield.Placeholder = splaceholder
'	vtimepickertextfield.Required = bRequired
'	vtimepickertextfield.Hint = sHint
'	vtimepickertextfield.Ref = vmodel
'	vtimepickertextfield.id = elID
'	vtimepickertextfield.AddAttr("autocomplete", "off")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:append", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:prepend", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:append-outer", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:prepend-inner", "")
'	'
'	vtimepicker.VModel = vmodel
'	vtimepicker.AddAttr("landscape", True)
'	'
'	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
'	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
'	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
'	'
'	'
'	vtimepickerclear.Outlined = True
'	vtimepickercancel.Outlined = True
'	vtimepickerok.Outlined = True
'	'
'	If banano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As Object = props.Get(k)
'			vtimepickertextfield.AddAttr(k, v)
'		Next
'	End If
'	
'	' merge bindings
'	VC.BindVueElement(vtimepickermenu)
'	VC.BindVueElement(vtimepickertextfield)
'	VC.BindVueElement(vtimepicker)
'	VC.BindVueElement(vtimepickerclear)
'	VC.BindVueElement(vtimepickercancel)
'	VC.BindVueElement(vtimepickerok)
'	VC.BindVueElement(vtimepickertemplate)
'	'
'	Dim ah As BANanoElement
'	ah.Initialize("#appendholder")
'	Return ah
'End Sub

'Sub NewTimePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map)
'	Dim eventhandler As Object = app.EventHandler
'	elID = elID.tolowercase
'	Dim Ret As Long
'	Dim AllViews As Map
'	parentid = parentid.Replace("#","")
'   
'	'load the layout in a temporal holder
'	Ret = banano.LoadLayoutArray($"#${parentid}"$, "mtimepicker", True)
'	' ret returns a unique number you can use to get all views
'	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtimepicker", Ret)
'	'
'	Dim vtimepicker As VueElement
'	Dim vtimepickercancel As VueElement
'	Dim vtimepickerclear As VueElement
'	Dim vtimepickermenu As VueElement
'	Dim vtimepickerok As VueElement
'	Dim vtimepickertemplate As VueElement
'	Dim vtimepickertextfield As VueElement
'	'
'	vtimepickermenu = AllViews.Get("vtimepickermenu")
'	vtimepickertextfield = AllViews.Get("vtimepickertextfield")
'	vtimepicker = AllViews.Get("vtimepicker")
'	vtimepickerclear = AllViews.Get("vtimepickerclear")
'	vtimepickercancel = AllViews.Get("vtimepickercancel")
'	vtimepickertemplate = AllViews.Get("vtimepickertemplate")
'	vtimepickerok = AllViews.Get("vtimepickerok")
'	'
'	Dim menuKey As String = $"${vmodel}dtmenu"$
'	
'	vtimepickermenu.AddAttr("ref", menuKey)
'	vtimepickermenu.AddAttr(":return-value.sync", vmodel)
'	vtimepickermenu.VModel = menuKey
'	vtimepickermenu.AddAttr("min-width", "460px")
'	vtimepickermenu.AddAttr("max-width", "460px")
'	vtimepickermenu.AddAttr(":nudge-right", "40")
'	'
'	'
'	vtimepickertextfield.Label = slabel
'	vtimepickertextfield.VModel = vmodel
'	vtimepickertextfield.PrependIcon = sPrependIcon
'	vtimepickertextfield.Placeholder = splaceholder
'	vtimepickertextfield.Required = bRequired
'	vtimepickertextfield.Hint = sHint
'	vtimepickertextfield.Ref = vmodel
'	vtimepickertextfield.id = elID
'	vtimepickertextfield.AddAttr("autocomplete", "off")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:append", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:prepend", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:append-outer", "")
'	vtimepickertextfield.SetOnEvent(eventhandler, "click:prepend-inner", "")
'	'
'	vtimepicker.VModel = vmodel
'	vtimepicker.AddAttr("landscape", True)
'	'
'	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
'	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
'	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
'	'
'	'
'	vtimepickerclear.Outlined = True
'	vtimepickercancel.Outlined = True
'	vtimepickerok.Outlined = True
'	'
'	If banano.IsNull(props) = False Then
'		For Each k As String In props.Keys
'			Dim v As Object = props.Get(k)
'			vtimepickertextfield.AddAttr(k, v)
'		Next
'	End If
'	
'	' merge bindings
'	app.BindVueElement(vtimepickermenu)
'	app.BindVueElement(vtimepickertextfield)
'	app.BindVueElement(vtimepicker)
'	app.BindVueElement(vtimepickerclear)
'	app.BindVueElement(vtimepickercancel)
'	app.BindVueElement(vtimepickerok)
'	app.BindVueElement(vtimepickertemplate)
'End Sub


'clear the items for this
Sub Items_Clear(records As List)
	records.Initialize
End Sub

'add a header to the lust
Sub Items_AddHeader(records As List, txt As String)
	Dim rec As Map = CreateMap()
	rec.Put("header", txt)
	records.Add(rec)
End Sub

Sub Items_AddIconTitle1(records As List, sid As String, sicon As String, siconcolor As String, stitle As String, ssubtitle As String, slinkto As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", sid)
	If sicon <> "" Then rec.Put("icon", sicon)
	If siconcolor <> "" Then rec.put("iconcolor", siconcolor)
	If stitle <> "" Then rec.Put("title", stitle)
	If ssubtitle <> "" Then rec.Put("subtitle", ssubtitle)
	If slinkto <> "" Then rec.Put("to", slinkto)
	records.Add(rec)
End Sub


Sub Items_AddIconTitle(records As List, sid As String, sicon As String, stitle As String, slinkto As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", sid)
	If sicon <> "" Then rec.Put("icon", sicon)
	If stitle <> "" Then rec.Put("title", stitle)
	If slinkto <> "" Then rec.Put("to", slinkto)
	records.Add(rec)
End Sub

Sub Items_AddAvatarTitleSubTitle(records As List, sid As String, savatar As String, stitle As String, ssubtitle As String, rightaction As String, slinkto As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", sid)
	If savatar <> "" Then rec.Put("avatar", savatar)
	If stitle <> "" Then rec.Put("title", stitle)
	If ssubtitle <> "" Then rec.Put("subtitle", ssubtitle)
	If slinkto <> "" Then rec.Put("to", slinkto)
	If rightaction <> "" Then rec.put("iconright", rightaction)
	records.Add(rec)
End Sub


'add an item
Sub Items_Add(records As List, sid As String, siconleft As String, savatar As String, savataricon As String, sicon As String, siconcolor As String, stitle As String, ssubtitle As String, ssubtitle1 As String, slinkto As String, siconright As String, stextright As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", sid)
	If siconleft <> "" Then rec.Put("iconleft", siconleft)
	If savatar <> "" Then rec.Put("avatar", savatar)
	If sicon <> "" Then rec.Put("icon", sicon)
	If siconcolor <> "" Then rec.put("iconcolor", siconcolor)
	If stitle <> "" Then rec.Put("title", stitle)
	If ssubtitle <> "" Then rec.Put("subtitle", ssubtitle)
	If ssubtitle1 <> "" Then rec.Put("subtitle1", ssubtitle1)
	If siconright <> "" Then rec.Put("iconright", siconright)
	If stextright <> "" Then rec.Put("textright", stextright)
	If savataricon <> "" Then rec.Put("avataricon", savataricon)
	If slinkto <> "" Then rec.Put("to", slinkto)
	records.Add(rec)
End Sub

'add avatar icon, title and subtitle
Sub Items_AddAvatarIconTitleSubTitle(records As List, sid As String, icon As String, iconcolor As String, title As String, subtitle As String, rightaction As String, sto As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", sid)
	If icon <> "" Then rec.Put("avataricon", icon)
	If iconcolor <> "" Then rec.Put("avatariconcolor", iconcolor)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If rightaction <> "" Then rec.Put("iconright", rightaction)
	If sto <> "" Then rec.Put("to", sto)
	records.Add(rec)
End Sub

'add a divider
Sub Items_AddDivider(records As List, binset As Boolean)
	Dim rec As Map = CreateMap()
	rec.Put("divider", True)
	If binset Then rec.Put("inset", binset)
	records.Add(rec)
End Sub


private Sub CleanParent(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

