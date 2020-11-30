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

'add an h1 to a location
Sub AddH1(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh1", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh1", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh1")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub
'
'add an h1 to a location
Sub AddH2(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh2", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh2", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh2")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub

'add an h1 to a location
Sub AddH3(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh3", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh3", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh3")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub

'add an h1 to a location
Sub AddH4(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh4", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh4", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh4")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub

'add an h1 to a location
Sub AddH5(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh5", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh5", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh5")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub


'add an h1 to a location
Sub AddH6(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mh6", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mh6", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mh6")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub


'add an h1 to a location
Sub AddParagraph(vc As VueComponent, parentID As String, elID As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map)
	parentID = parentID.tolowercase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mpara", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mpara", Ret)
	'
	Dim mh1 As VueElement = AllViews.Get("mpara")
	mh1.ID = elID
	mh1.Caption = Caption
	mh1.TextColor = TextColor
	mh1.TextColorIntensity = TextColorIntensity
	mh1.LoremIpsum = bLoremIpsum
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			mh1.AddAttr(k, v)
		Next
	End If
	'
	vc.BindVueElement(mh1)
End Sub


'list
Sub NewList(VC As VueComponent, parentID As String,  refID As String, props As Map)
	refID = refID.tolowercase
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${parentID}"$, "mlist", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlist", Ret)
	'
	Dim vlist As VueElement = AllViews.Get("vlist")
	vlist.id = refID
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			vlist.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vlist)
End Sub
'
'new list item
Sub NewListItem(VC As VueComponent, elID As String, DataSource As String, Key As String, numLines As Int, props As Map)
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	elID = elID.tolowercase
	
	DataSource = DataSource.tolowercase
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	Ret = banano.LoadLayoutArray($"#${elID}"$, "mlistitem", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlistitem", Ret)
	'
	Dim vtemplate As VueElement = AllViews.Get("vtemplate")
	vtemplate.id = $"${elID}template"$
	vtemplate.vfor = $"(item, index) in ${DataSource}"$
	vtemplate.bindkey($"item.${Key}"$)
	'
	
	Dim vsubheader As VueElement = AllViews.get("vsubheader")
	vsubheader.ID = $"${elID}subheader"$
	vsubheader.VIf = "item.header"
	vsubheader.BindKey("item.header")
	vsubheader.Caption = vsubheader.ItemInMoustache("header")
	'
	Dim vlistitemdivider As VueElement = AllViews.get("vlistitemdivider")
	vlistitemdivider.VElseIf = "item.divider"
	vlistitemdivider.BindKey("index")
	vlistitemdivider.Bind("inset", $"item.inset"$)
	'
	'
	Dim vlistitem As VueElement = AllViews.Get("vlistitem")
	vlistitem.ID = $"${elID}listitem"$
	vlistitem.VElse = True
	vlistitem.BindKey($"item.${Key}"$)
	'
	Select Case numLines
	Case 2
		vlistitem.AddAttr(":two-line", True)
	Case 3
		vlistitem.AddAttr(":three-line", True)
	End Select
	'
	Dim clickEvent As String = $"${elID}_click"$
	vlistitem.SetOnEvent(EventHandler, clickEvent, "click", $"item.${Key}"$)
	'
	Dim vlistitemactionleft As VueElement = AllViews.Get("vlistitemactionleft")
	vlistitemactionleft.id = $"${elID}listitemactionleft"$
	Dim sleftmethod As String = $"${elID}_leftclick"$
	vlistitemactionleft.SetOnEventAttr(EventHandler, sleftmethod, "click.stop", $"item.${Key}"$)
	Dim args As List
	vlistitem.SetMethod1(EventHandler, sleftmethod, args)
	
	Dim vrighticonbtn As VueElement = AllViews.Get("vrighticonbtn")
	vrighticonbtn.ID = $"${elID}righticonbtn"$
	'
	Dim vlistitemactionlefticon As VueElement = AllViews.Get("vlistitemactionlefticon")
	vlistitemactionlefticon.ID = $"${elID}listitemactionlefticon"$
	'
	Dim vlistitemavatar As VueElement = AllViews.Get("vlistitemavatar")
	vlistitemavatar.id = $"${elID}listitemavatar"$
	'
	Dim vlistitemavatarimg As VueElement = AllViews.get("vlistitemavatarimg")
	vlistitemavatarimg.ID = $"${elID}listitemavatarimg"$
	'
	Dim vavataricon As VueElement = AllViews.Get("vavataricon")
	vavataricon.ID = $"${elID}avataricon"$
	'
	Dim vleftactionbtn As VueElement = AllViews.Get("vleftactionbtn")
	vleftactionbtn.ID = $"${elID}leftactionbtn"$
	'	
	Dim vlistitemicon As VueElement = AllViews.Get("vlistitemicon")
	vlistitemicon.ID = $"${elID}listitemicon"$
	'
	Dim vlistitemiconicon As VueElement = AllViews.Get("vlistitemiconicon")
	vlistitemiconicon.ID = $"${elID}listitemiconicon"$
	'
	Dim vlistitemcontent As VueElement = AllViews.Get("vlistitemcontent")
	vlistitemcontent.ID = $"${elID}listitemcontent"$
	'
	Dim vlistitemtitle As VueElement = AllViews.get("vlistitemtitle")
	vlistitemtitle.ID = $"${elID}listitemtitle"$
	'
	Dim vlistitemsubtitle As VueElement = AllViews.Get("vlistitemsubtitle")
	vlistitemsubtitle.ID = $"${elID}listitemsubtitle1"$
	'
	Dim vlistitemsubtitle1 As VueElement = AllViews.Get("vlistitemsubtitle1")
	vlistitemsubtitle1.ID = $"${elID}listitemsubtitle1"$
	'	
	Dim vlistitemactionright As VueElement = AllViews.Get("vlistitemactionright")
	vlistitemactionright.ID = $"${elID}listitemactionright"$
	Dim srightmethod As String = $"${elID}_rightclick"$
	vlistitemactionright.SetOnEventAttr(EventHandler, srightmethod, "click.stop", $"item.${Key}"$)
	vlistitem.SetMethod1(EventHandler, srightmethod, args)
	
	Dim vlistitemactiontext As VueElement = AllViews.Get("vlistitemactiontext")
	vlistitemactiontext.ID = $"${elID}listitemactiontext"$
	'
	Dim vlistitemactionrighticon As VueElement = AllViews.Get("vlistitemactionrighticon")
	vlistitemactionrighticon.id = $"${elID}listitemactionrighticon"$
	
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
	Dim stextright As String = "textright"
	Dim sroute As String = "route"
	Dim savataricon As String = "avataricon"
	Dim svavatariconclass As String = ""
	Dim savatariconcolor As String = "avatariconcolor"
		
	'read specified
	If banano.IsNull(props) Or banano.IsUndefined(props) Then
	Else
		If props.ContainsKey("iconleft") Then siconleft = props.Get("iconleft")
		If props.ContainsKey("iconleftclass") Then siconleftclass = props.Get("iconleftclass")
		'
		If props.ContainsKey("avatar") Then	savatar = props.Get("avatar")
		If props.ContainsKey("avatarclass") Then savatarclass = props.Get("avatarclass")
		If props.ContainsKey("avataricon") Then savataricon = props.Get("avataricon")
		If props.ContainsKey("avatariconclass") Then svavatariconclass = props.Get("avatariconclass")
		If props.ContainsKey("avatariconcolor") Then savatariconcolor = props.Get("avatariconcolor")
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
			
		If props.ContainsKey("textright") Then stextright = props.get("textright")
		If props.ContainsKey("route") Then sroute = props.get("route")
	End If
	'
'
	Dim itemName As String = "item"
	vlistitem.Bind("to", $"item.${sroute}"$)
	'	left icon
	vlistitemactionleft.vif = $"${itemName}.${siconleft}"$
	vlistitemactionlefticon.AddClass(siconleftclass)
	vlistitemactionlefticon.vtext = $"${itemName}.${siconleft}"$
	
	'	turn visibility based on fields
	vlistitemavatar.vif = $"${itemName}.${savatar} || item.${savataricon}"$
	'
	vlistitemavatar.AddClass(savatarclass)
	vlistitemavatarimg.Bind("src", $"${itemName}.${savatar}"$)
	vlistitemavatarimg.vif = $"${itemName}.${savatar}"$
'	'
	vavataricon.vIf = $"${itemName}.${savataricon}"$
	vavataricon.AddClass(svavatariconclass)
	vavataricon.Bind("class", $"item.${savatariconcolor}"$)
	vavataricon.Dark = True
	vavataricon.vtext = $"${itemName}.${savataricon}"$
	'
	vlistitemicon.vif = $"${itemName}.${sicon}"$
	vlistitemiconicon.Addclass(siconclass)
	vlistitemiconicon.Bind("color", $"${itemName}.${siconcolor}"$)
	vlistitemiconicon.vtext = $"${itemName}.${sicon}"$
'	
	vlistitemtitle.vif = $"${itemName}.${stitle}"$
	vlistitemtitle.vtext = $"${itemName}.${stitle}"$
	
	vlistitemsubtitle.vif = $"${itemName}.${ssubtitle}"$
	vlistitemsubtitle.vtext = $"${itemName}.${ssubtitle}"$
	
	vlistitemsubtitle1.vif = $"${itemName}.${ssubtitle1}"$
	vlistitemsubtitle1.vtext = $"${itemName}.${ssubtitle1}"$
'	
	vlistitemactionright.vif = $"${itemName}.${siconright} || item.${stextright}"$
	vlistitemactionrighticon.vif = $"${itemName}.${siconright}"$
	vlistitemactionrighticon.vtext = $"${itemName}.${siconright}"$
	vlistitemactionrighticon.AddClass(siconrightclass)
	'
	vlistitemactiontext.vif = $"${itemName}.${stextright}"$
	vlistitemactiontext.vtext = $"${itemName}.${stextright}"$
	'
	VC.BindVueElement(vlistitem)
	VC.BindVueElement(vlistitemactionleft)
	VC.BindVueElement(vtemplate)
	VC.BindVueElement(vlistitemactionlefticon)
	VC.BindVueElement(vlistitemavatar)
	VC.BindVueElement(vlistitemavatarimg)
	VC.BindVueElement(vlistitemicon)
	VC.BindVueElement(vlistitemiconicon)
	VC.BindVueElement(vlistitemcontent)
	VC.BindVueElement(vlistitemtitle)
	VC.BindVueElement(vlistitemsubtitle)
	VC.BindVueElement(vlistitemsubtitle1)
	VC.BindVueElement(vlistitemactionright)
	VC.BindVueElement(vlistitemactionrighticon)
	VC.BindVueElement(vlistitemactiontext)
End Sub



'a button with an icon on the right
Sub NewButtonIconRight(VC As VueComponent, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbtniconright", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbtniconright", Ret)
	'
	Dim vbtnright As VueElement = AllViews.Get("vbtnright")
	Dim viconright As VueElement = AllViews.Get("viconright")
	Dim vspanleft As VueElement = AllViews.Get("vspanleft")

	vspanleft.Caption = eLabel
	'
	viconright.Caption = eIcon
	viconright.Dark = True
	'
	vbtnright.AddAttr("id", elID)
	vbtnright.Dark = True
	vbtnright.Color = eColor
	If bOutlined Then vbtnright.Outlined = True
	'
	If banano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As Object = btnprops.Get(k)
			vbtnright.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As Object = iconprops.Get(k)
			viconright.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	vbtnright.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(vbtnright)
	VC.BindVueElement(viconright)
	VC.BindVueElement(vspanleft)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

'a button with an icon on the left
Sub NewButtonIconLeft(VC As VueComponent, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbtniconleft", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbtniconleft", Ret)
	'
	Dim vbtnright As VueElement = AllViews.Get("vbtnleft")
	Dim viconright As VueElement = AllViews.Get("viconleft")
	Dim vspanleft As VueElement = AllViews.Get("vspanright")

	vspanleft.Caption = eLabel
	'
	viconright.Caption = eIcon
	viconright.Dark = True
	'
	vbtnright.AddAttr("id", elID)
	vbtnright.Dark = True
	vbtnright.Color = eColor
	If bOutlined Then vbtnright.Outlined = True
	'
	If banano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As Object = btnprops.Get(k)
			vbtnright.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As Object = iconprops.Get(k)
			viconright.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	vbtnright.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(vbtnright)
	VC.BindVueElement(viconright)
	VC.BindVueElement(vspanleft)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewAvatarBadge(VC As VueComponent, elID As String, badgeColor As String, imgURL As String, avatarSize As Int, avatarprops As Map, badgeprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mavatarbadge", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mavatarbadge", Ret)
	'
	Dim vbadge As VueElement = AllViews.Get("mbadge")
	Dim img As VueElement = AllViews.Get("mbadgeavatarimg")
	Dim avatar As VueElement = AllViews.Get("mbadgeavatar")
	'
	avatar.AddAttr("size", avatarSize)
	avatar.AddAttr("id", $"${elID}avatar"$)
	'
	img.Src = imgURL
	img.AddAttr("id", elID)
	vbadge.Color = badgeColor
	vbadge.AddAttr("id", $"${elID}badge"$)
	
	If banano.IsNull(avatarprops) = False Then
		For Each k As String In avatarprops.Keys
			Dim v As Object = avatarprops.Get(k)
			avatar.AddAttr(k, v)
		Next
	End If
	
	If banano.IsNull(badgeprops) = False Then
		For Each k As String In badgeprops.Keys
			Dim v As Object = badgeprops.Get(k)
			vbadge.AddAttr(k, v)
		Next
	End If
	
	Dim clickEvent As String = $"${elID}_click"$
	img.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(img)
	VC.BindVueElement(vbadge)
	VC.BindVueElement(avatar)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


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
	vtablecard.AddAttr("id", $"${elID}card"$)
	'
	vtablecardtitle.AddAttr("id", $"${elID}cardtitle"$)
	vtablecardtitle.Caption = $"{{ ${titlename} }}"$
	vtablecardtitle.SetData(titlename, Title)
	'
	vtablesubtitle.AddAttr("id", $"${elID}cardsubtitle"$)
	vtablesubtitle.Caption = $"{{ ${subtitlename} }}"$
	vtablesubtitle.SetData(subtitlename, SubTitle)
	'
	vtablecardtext.AddAttr("id", $"${elID}cardtext"$)
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

'a button with a badge
Sub NewButtonBadge(VC As VueComponent, elID As String, elLabel As String, btnproperties As Map, badgeproperties As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbtnbadge", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbtnbadge", Ret)
	'
	Dim mbadge As VueElement = AllViews.Get("mbadge")
	Dim mbadgebtn As VueElement = AllViews.Get("mbadgebtn")
	'
	mbadgebtn.AddAttr("id", elID)
	mbadgebtn.Caption = elLabel
	
	Dim clickEvent As String = $"${elID}_click"$
	mbadgebtn.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	If banano.IsNull(btnproperties) = False Then
		For Each k As String In btnproperties.Keys
			Dim v As Object = btnproperties.Get(k)
			mbadgebtn.AddAttr(k, v)
		Next
	End If
	
	If banano.IsNull(badgeproperties) = False Then
		For Each k As String In badgeproperties.Keys
			Dim v As Object = badgeproperties.Get(k)
			mbadge.AddAttr(k, v)
		Next
	End If
	
	VC.BindVueElement(mbadge)
	VC.BindVueElement(mbadgebtn)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

'a button with an icon on the left
Sub NewButtonIconBadge(VC As VueComponent, elID As String, eLabel As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map, badgeprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbtniconbadge", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbtniconbadge", Ret)
	'
	Dim mbadge As VueElement = AllViews.Get("mbadge")
	Dim mbadgebtn As VueElement = AllViews.Get("mbadgebtn")
	Dim mbadgeicon As VueElement = AllViews.Get("mbadgeicon")

	mbadgeicon.Caption = eIcon
	mbadgeicon.Dark = True
	'
	mbadgebtn.AddAttr("id", elID)
	mbadgebtn.dark = True
	mbadgebtn.Color = btnColor
	If eLabel <> "" Then mbadgebtn.Caption = eLabel
	'
	If banano.IsNull(badgeprops) = False Then
		For Each k As String In badgeprops.Keys
			Dim v As Object = badgeprops.Get(k)
			mbadge.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As Object = btnprops.Get(k)
			mbadgebtn.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As Object = iconprops.Get(k)
			mbadgeicon.AddAttr(k, v)
		Next
	End If
	'
	
	
	Dim clickEvent As String = $"${elID}_click"$
	mbadgebtn.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(mbadgebtn)
	VC.BindVueElement(mbadge)
	VC.BindVueElement(mbadgeicon)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewIconBadge(VC As VueComponent, elID As String, vModel As String, eIcon As String, iconprops As Map, badgeprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "miconbadge", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "miconbadge", Ret)
	'
	Dim vbadge As VueElement = AllViews.Get("vbadge")
	Dim vbadgeicon As VueElement = AllViews.Get("vbadgeicon")
	
	vbadge.AddAttr(":value", vModel)
	vbadge.AddAttr(":content", vModel)
	If banano.IsNull(badgeprops) = False Then
		For Each k As String In badgeprops.Keys
			Dim v As Object = badgeprops.Get(k)
			vbadge.AddAttr(k, v)
		Next
	End If
	
	vbadgeicon.Caption = eIcon
	vbadgeicon.AddAttr("id", elID)
	If banano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As Object = iconprops.Get(k)
			vbadgeicon.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	vbadgeicon.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(vbadgeicon)
	VC.BindVueElement(vbadge)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewFab(VC As VueComponent, elID As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement
	Dim np As Map = CreateMap()
	np.Put(":fab", True)
	np.Put(":outlined", bOutlined)
	If banano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As String = btnprops.Get(k)
			np.Put(k, v)
		Next
	End If
	
	Dim btn As BANanoElement = NewButtonIcon(VC, elID, eIcon, "", np, iconprops)
	Return btn
End Sub

'a button with an icon on the left
Sub NewButtonIcon(VC As VueComponent, elID As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbtnicon", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbtnicon", Ret)
	'
	Dim mbtn As VueElement = AllViews.Get("mbtn")
	Dim micon As VueElement = AllViews.Get("micon")

	micon.Caption = eIcon
	micon.Dark = True
	'
	mbtn.AddAttr("id", elID)
	mbtn.dark = True
	mbtn.Color = btnColor
	'
	If banano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As Object = btnprops.Get(k)
			mbtn.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As Object = iconprops.Get(k)
			micon.AddAttr(k, v)
		Next
	End If
	
		
	Dim clickEvent As String = $"${elID}_click"$
	mbtn.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(mbtn)
	VC.BindVueElement(micon)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

'add a dialog to a component
Sub NewDialog(VC As VueComponent, Persistent As Boolean, Width As Int, OkColor As String, CancelColor As String)
	Dim EventHandler As Object = VC.mCallBack
	Dim elID As String = VC.ID
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
	'
    Dim dialogShow As String = $"${elID}show"$
	Dim dialogTitle As String = $"${elID}title"$
	Dim dialogMessage As String = $"${elID}message"$
	Dim dialogcanceltitle As String = $"${elID}canceltitle"$
	Dim dialogoktitle As String = $"${elID}oktitle"$
	Dim dialogokcolor As String = $"${elID}okcolor"$
	Dim dialogcancelcolor As String = $"${elID}cancelcolor"$
	Dim dialogokshow As String = $"${elID}okshow"$
	Dim dialogcancelshow As String = $"${elID}cancelshow"$
	Dim dialogwidth As String = $"${elID}width"$
	Dim dialogpersistent As String = $"${elID}persistent"$
	
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mdialog", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdialog", Ret)
	
	Dim vdialog As VueElement = AllViews.Get("vdialog")
	vdialog.ID = elID
	vdialog.VModel = dialogShow
	vdialog.Bind("width", dialogwidth)
	vdialog.Bind("persistent", dialogpersistent)
	
	Dim vcard As VueElement = AllViews.Get("vcard")
	vcard.id = $"${elID}card"$
	'
	Dim vcardtitle As VueElement = AllViews.Get("vcardtitle")
	vcardtitle.ID = $"${elID}cardtitle"$
	vcardtitle.Caption = $"{{ ${dialogTitle} }}"$
	
	Dim vcardtext As VueElement = AllViews.Get("vcardtext")
	vcardtext.ID = $"${elID}cardtext"$
	vcardtext.vhtml = dialogMessage
	
	Dim vdivider As VueElement = AllViews.Get("vdivider")
	vdivider.ID = $"${elID}divider"$
	
	Dim vcardactions As VueElement = AllViews.Get("vcardactions")
	vcardactions.ID = $"${elID}cardactions"$
	
	Dim vspacer As VueElement = AllViews.Get("vspacer")
	vspacer.ID = $"${elID}spacer"$
	
	Dim vbtnOk As VueElement = AllViews.Get("vbtnok")
	vbtnOk.ID = $"${elID}ok"$
	vbtnOk.Caption = $"{{ ${dialogoktitle} }}"$
	vbtnOk.AddAttr(":color", dialogokcolor)
	vbtnOk.VShow = dialogokshow
	'
	Dim clickEvent As String = $"${elID}_okclick"$
	vbtnOk.SetOnEvent(EventHandler, clickEvent, "click", "")
	
	Dim vbtncancel As VueElement = AllViews.Get("vbtncancel")
	vbtncancel.ID = $"${elID}cancel"$
	vbtncancel.Caption = $"{{ ${dialogcanceltitle} }}"$
	vbtncancel.AddAttr(":color", dialogcancelcolor)
	vbtncancel.VShow = dialogcancelshow
	'
	Dim clickEvent As String = $"${elID}_cancelclick"$
	vbtncancel.SetOnEvent(EventHandler, clickEvent, "click", "")
	
	VC.BindVueElement(vdialog)
	VC.BindVueElement(vbtnOk)
	VC.BindVueElement(vbtncancel)
	'
	VC.UsesDialog
	'
	VC.SetData(dialogcancelcolor, CancelColor)
	VC.SetData(dialogokcolor, OkColor)
	VC.SetData(dialogwidth, Width)
	VC.SetData(dialogpersistent, Persistent)
	'add to the page template
	VC.AppendHolder
End Sub

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
Sub NewListIconTitle(VC As VueComponent, elID As String, DataSource As String, KeySource As String, IconSource As String, TitleSource As String, ToSource As String, listProps As Map, itemProps As Map, iconProps As Map, titleProps As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	DataSource = DataSource.ToLowerCase
	KeySource = KeySource.ToLowerCase
	TitleSource = TitleSource.tolowercase
	IconSource = IconSource.tolowercase
	If ToSource <> "" Then ToSource = ToSource.tolowercase
	'
	Dim listID As String = $"${elID}list"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim templateID As String = $"${elID}template"$
	Dim listitemactionID As String = $"${elID}listitemaction"$
	Dim iconID As String = $"${elID}icon"$
	Dim listitemcontentID As String = $"${elID}listitemcontent"$
	Dim listitemtitleID As String = $"${elID}listitemtitle"$
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mlisticontitle", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlisticontitle", Ret)
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
	Dim vicon As VueElement = AllViews.Get("vicon")
	vicon.id = iconID
	vicon.Caption = $"{{ item.${IconSource} }}"$
	'set props for the list-item
	If banano.IsNull(iconProps) = False Then
		For Each k As String In iconProps.Keys
			Dim v As Object = iconProps.Get(k)
			vicon.AddAttr(k, v)
		Next
	End If
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
	
	VC.BindVueElement(vlist)
	VC.BindVueElement(vlistitem)
	VC.BindVueElement(vtemplate)
	VC.BindVueElement(vlistitemaction)
	VC.BindVueElement(vicon)
	VC.BindVueElement(vlistitemcontent)
	VC.BindVueElement(vlistitemtitle)
	
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


'a list with items that have an icon and a title
Sub NewListIconTitleOnApp(app As VuetifyApp, parentID As String, elID As String, DataSource As String, KeySource As String, IconSource As String, TitleSource As String, ToSource As String, listProps As Map, itemProps As Map, iconProps As Map, titleProps As Map)
	elID = elID.tolowercase
	DataSource = DataSource.ToLowerCase
	KeySource = KeySource.ToLowerCase
	TitleSource = TitleSource.tolowercase
	IconSource = IconSource.tolowercase
	If ToSource <> "" Then ToSource = ToSource.tolowercase
	parentID = parentID.tolowercase
	'
	Dim listID As String = $"${elID}list"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim templateID As String = $"${elID}template"$
	Dim listitemactionID As String = $"${elID}listitemaction"$
	Dim iconID As String = $"${elID}icon"$
	Dim listitemcontentID As String = $"${elID}listitemcontent"$
	Dim listitemtitleID As String = $"${elID}listitemtitle"$
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mlisticontitle", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mlisticontitle", Ret)
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
	Dim vicon As VueElement = AllViews.Get("vicon")
	vicon.id = iconID
	vicon.Caption = $"{{ item.${IconSource} }}"$
	'set props for the list-item
	If banano.IsNull(iconProps) = False Then
		For Each k As String In iconProps.Keys
			Dim v As Object = iconProps.Get(k)
			vicon.AddAttr(k, v)
		Next
	End If
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
	
	app.BindVueElement(vlist)
	app.BindVueElement(vlistitem)
	app.BindVueElement(vtemplate)
	app.BindVueElement(vlistitemaction)
	app.BindVueElement(vicon)
	app.BindVueElement(vlistitemcontent)
	app.BindVueElement(vlistitemtitle)
	'
	parentID = parentID.Replace("#","")
	Dim stemplate As String = app.BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement
	elx.Initialize($"#${parentID}"$)
	elx.append(stemplate)
End Sub

Sub NewButton(VC As VueComponent, elID As String, sLabel As String, eColor As String, bOutlined As Boolean,  props As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mbutton", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mbutton", Ret)
	'
	Dim mbutton As VueElement = AllViews.Get("mbutton")
	mbutton.Caption = sLabel
	mbutton.AddAttr("id", elID)
	If bOutlined Then mbutton.Outlined = True
	mbutton.color = eColor
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			mbutton.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	mbutton.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(mbutton)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub



Sub NewDatePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement
	Dim eventhandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mdatepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdatepicker", Ret)
	'
	Dim vdatepicker As VueElement
	Dim vdatepickercancel As VueElement
	Dim vdatepickerclear As VueElement
	Dim vdatepickermenu As VueElement
	Dim vdatepickerok As VueElement
	Dim vdatepickertemplate As VueElement
	Dim vdatepickertextfield As VueElement
	'
	vdatepickermenu = AllViews.Get("vdatepickermenu")
	vdatepickertextfield = AllViews.Get("vdatepickertextfield")
	vdatepicker = AllViews.Get("vdatepicker")
	vdatepickerclear = AllViews.Get("vdatepickerclear")
	vdatepickercancel = AllViews.Get("vdatepickercancel")
	vdatepickertemplate = AllViews.Get("vdatepickertemplate")
	vdatepickerok = AllViews.Get("vdatepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vdatepickermenu.AddAttr("ref", menuKey)
	vdatepickermenu.AddAttr(":return-value.sync", vmodel)
	vdatepickermenu.VModel = menuKey
	vdatepickermenu.AddAttr("min-width", "460px")
	vdatepickermenu.AddAttr("max-width", "460px")
	vdatepickermenu.AddAttr(":nudge-right", "40")
	'
	vdatepickertextfield.Label = slabel
	vdatepickertextfield.VModel = vmodel
	vdatepickertextfield.PrependIcon = sPrependIcon
	vdatepickertextfield.Placeholder = splaceholder
	vdatepickertextfield.Required = bRequired
	vdatepickertextfield.Hint = sHint
	vdatepickertextfield.ref = vmodel
	vdatepickertextfield.AddAttr("id", elID)
	vdatepickertextfield.AddAttr("autocomplete", "off")
	'
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append"$, "click:append", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	vdatepicker.VModel = vmodel
	vdatepicker.AddAttr("landscape", True)
	'
	vdatepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vdatepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vdatepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	vdatepickerclear.Outlined = True
	vdatepickercancel.Outlined = True
	vdatepickerok.Outlined = True
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vdatepickertextfield.AddAttr(k, v)
		Next
	End If
	
	' merge bindings
	VC.BindVueElement(vdatepickermenu)
	VC.BindVueElement(vdatepickertextfield)
	VC.BindVueElement(vdatepicker)
	VC.BindVueElement(vdatepickerclear)
	VC.BindVueElement(vdatepickercancel)
	VC.BindVueElement(vdatepickerok)
	VC.BindVueElement(vdatepickertemplate)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewDatePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map)
	Dim eventhandler As Object = app.EventHandler
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
	parentid = parentid.Replace("#","")
	
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray($"#${parentid}"$, "mdatepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mdatepicker", Ret)
	'
	Dim vdatepicker As VueElement
	Dim vdatepickercancel As VueElement
	Dim vdatepickerclear As VueElement
	Dim vdatepickermenu As VueElement
	Dim vdatepickerok As VueElement
	Dim vdatepickertemplate As VueElement
	Dim vdatepickertextfield As VueElement
	'
	vdatepickermenu = AllViews.Get("vdatepickermenu")
	vdatepickertextfield = AllViews.Get("vdatepickertextfield")
	vdatepicker = AllViews.Get("vdatepicker")
	vdatepickerclear = AllViews.Get("vdatepickerclear")
	vdatepickercancel = AllViews.Get("vdatepickercancel")
	vdatepickertemplate = AllViews.Get("vdatepickertemplate")
	vdatepickerok = AllViews.Get("vdatepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vdatepickermenu.AddAttr("ref", menuKey)
	vdatepickermenu.AddAttr(":return-value.sync", vmodel)
	vdatepickermenu.VModel = menuKey
	vdatepickermenu.AddAttr("min-width", "460px")
	vdatepickermenu.AddAttr("max-width", "460px")
	vdatepickermenu.AddAttr(":nudge-right", "40")
	'
	vdatepickertextfield.Label = slabel
	vdatepickertextfield.VModel = vmodel
	vdatepickertextfield.PrependIcon = sPrependIcon
	vdatepickertextfield.Placeholder = splaceholder
	vdatepickertextfield.Required = bRequired
	vdatepickertextfield.Hint = sHint
	vdatepickertextfield.ref = vmodel
	vdatepickertextfield.AddAttr("id", elID)
	vdatepickertextfield.AddAttr("autocomplete", "off")
	'
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append"$, "click:append", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vdatepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	vdatepicker.VModel = vmodel
	vdatepicker.AddAttr("landscape", True)
	'
	vdatepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vdatepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vdatepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	vdatepickerclear.Outlined = True
	vdatepickercancel.Outlined = True
	vdatepickerok.Outlined = True
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vdatepickertextfield.AddAttr(k, v)
		Next
	End If
	
	' merge bindings
	app.BindVueElement(vdatepickermenu)
	app.BindVueElement(vdatepickertextfield)
	app.BindVueElement(vdatepicker)
	app.BindVueElement(vdatepickerclear)
	app.BindVueElement(vdatepickercancel)
	app.BindVueElement(vdatepickerok)
	app.BindVueElement(vdatepickertemplate)
End Sub


Sub NewTimePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement
	Dim eventhandler As Object = VC.mcallback
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtimepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtimepicker", Ret)
	'
	Dim vtimepicker As VueElement
	Dim vtimepickercancel As VueElement
	Dim vtimepickerclear As VueElement
	Dim vtimepickermenu As VueElement
	Dim vtimepickerok As VueElement
	Dim vtimepickertemplate As VueElement
	Dim vtimepickertextfield As VueElement
	'
	vtimepickermenu = AllViews.Get("vtimepickermenu")
	vtimepickertextfield = AllViews.Get("vtimepickertextfield")
	vtimepicker = AllViews.Get("vtimepicker")
	vtimepickerclear = AllViews.Get("vtimepickerclear")
	vtimepickercancel = AllViews.Get("vtimepickercancel")
	vtimepickertemplate = AllViews.Get("vtimepickertemplate")
	vtimepickerok = AllViews.Get("vtimepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vtimepickermenu.AddAttr("ref", menuKey)
	vtimepickermenu.AddAttr(":return-value.sync", vmodel)
	vtimepickermenu.VModel = menuKey
	vtimepickermenu.AddAttr("min-width", "460px")
	vtimepickermenu.AddAttr("max-width", "460px")
	vtimepickermenu.AddAttr(":nudge-right", "40")
	'
	'
	vtimepickertextfield.Label = slabel
	vtimepickertextfield.VModel = vmodel
	vtimepickertextfield.PrependIcon = sPrependIcon
	vtimepickertextfield.Placeholder = splaceholder
	vtimepickertextfield.Required = bRequired
	vtimepickertextfield.Hint = sHint
	vtimepickertextfield.Ref = vmodel
	vtimepickertextfield.AddAttr("id", elID)
	vtimepickertextfield.AddAttr("autocomplete", "off")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append"$, "click:append", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	'
	vtimepicker.VModel = vmodel
	vtimepicker.AddAttr("landscape", True)
	'
	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	'
	'
	vtimepickerclear.Outlined = True
	vtimepickercancel.Outlined = True
	vtimepickerok.Outlined = True
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtimepickertextfield.AddAttr(k, v)
		Next
	End If
	
	' merge bindings
	VC.BindVueElement(vtimepickermenu)
	VC.BindVueElement(vtimepickertextfield)
	VC.BindVueElement(vtimepicker)
	VC.BindVueElement(vtimepickerclear)
	VC.BindVueElement(vtimepickercancel)
	VC.BindVueElement(vtimepickerok)
	VC.BindVueElement(vtimepickertemplate)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewTimePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map)
	Dim eventhandler As Object = app.EventHandler
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
	parentid = parentid.Replace("#","")
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray($"#${parentid}"$, "mtimepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtimepicker", Ret)
	'
	Dim vtimepicker As VueElement
	Dim vtimepickercancel As VueElement
	Dim vtimepickerclear As VueElement
	Dim vtimepickermenu As VueElement
	Dim vtimepickerok As VueElement
	Dim vtimepickertemplate As VueElement
	Dim vtimepickertextfield As VueElement
	'
	vtimepickermenu = AllViews.Get("vtimepickermenu")
	vtimepickertextfield = AllViews.Get("vtimepickertextfield")
	vtimepicker = AllViews.Get("vtimepicker")
	vtimepickerclear = AllViews.Get("vtimepickerclear")
	vtimepickercancel = AllViews.Get("vtimepickercancel")
	vtimepickertemplate = AllViews.Get("vtimepickertemplate")
	vtimepickerok = AllViews.Get("vtimepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vtimepickermenu.AddAttr("ref", menuKey)
	vtimepickermenu.AddAttr(":return-value.sync", vmodel)
	vtimepickermenu.VModel = menuKey
	vtimepickermenu.AddAttr("min-width", "460px")
	vtimepickermenu.AddAttr("max-width", "460px")
	vtimepickermenu.AddAttr(":nudge-right", "40")
	'
	'
	vtimepickertextfield.Label = slabel
	vtimepickertextfield.VModel = vmodel
	vtimepickertextfield.PrependIcon = sPrependIcon
	vtimepickertextfield.Placeholder = splaceholder
	vtimepickertextfield.Required = bRequired
	vtimepickertextfield.Hint = sHint
	vtimepickertextfield.Ref = vmodel
	vtimepickertextfield.AddAttr("id", elID)
	vtimepickertextfield.AddAttr("autocomplete", "off")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append"$, "click:append", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vtimepickertextfield.SetOnEvent(eventhandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	'
	vtimepicker.VModel = vmodel
	vtimepicker.AddAttr("landscape", True)
	'
	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	'
	'
	vtimepickerclear.Outlined = True
	vtimepickercancel.Outlined = True
	vtimepickerok.Outlined = True
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtimepickertextfield.AddAttr(k, v)
		Next
	End If
	
	' merge bindings
	app.BindVueElement(vtimepickermenu)
	app.BindVueElement(vtimepickertextfield)
	app.BindVueElement(vtimepicker)
	app.BindVueElement(vtimepickerclear)
	app.BindVueElement(vtimepickercancel)
	app.BindVueElement(vtimepickerok)
	app.BindVueElement(vtimepickertemplate)
End Sub


Sub NewSearch(VC As VueComponent, elID As String, vmodel As String, slabel As String, sAppendIcon As String, props As Map) As BANanoElement
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.AppendIcon = sAppendIcon
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.AddAttr(":single-line", True)
	vtextfield.AddAttr(":hide-details", True)
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewTextField(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append"$, "click:append", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewSlider(VC As VueComponent, elID As String, vmodel As String, slabel As String, iminvalue As Object, imaxvalue As Object, iStep As Int,  bShowThumb As Boolean,  bVertical As Boolean, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mslider", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mslider", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vslider As VueElement = AllViews.get("vslider")
	vslider.Label = slabel
	vslider.VModel = vmodel
	vslider.ID = elID
	If bShowThumb Then vslider.AddAttr("thumb-label", "always")
	vslider.AddAttr(":vertical", bVertical)
	vslider.AddAttr("min", iminvalue)
	vslider.AddAttr("max", imaxvalue)
	If iStep > 0 Then vslider.AddAttr("step", iStep)
	vslider.SetOnEvent(eventHandler, $"${elID}_click:append"$, "click:append", "")
	vslider.SetOnEvent(eventHandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vslider.SetOnEvent(eventHandler, $"${elID}_click"$, "click", "")
	vslider.SetOnEvent(eventHandler, $"${elID}_start"$, "start", "")
	vslider.SetOnEvent(eventHandler, $"${elID}_end"$, "end", "")
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vslider.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vslider)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewParallax(VC As VueComponent, elID As String, sheight As String, src As String, alt As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mparallax", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mparallax", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vparallax As VueElement = AllViews.get("vparallax")
	vparallax.ID = elID
	vparallax.Src = src
	vparallax.Height = sheight
	vparallax.Alt = alt
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vparallax.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vparallax)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewFileInput(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bMultiple As Boolean, sHint As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mfileinput", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mfileinput", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vfileinput As VueElement = AllViews.get("vfileinput")
	vfileinput.Label = slabel
	vfileinput.Placeholder = splaceholder
	vfileinput.Hint = sHint
	vfileinput.VModel = vmodel
	vfileinput.AddAttr("type", "file")
	vfileinput.Ref = vmodel
	vfileinput.AddAttr("id", elID)
	vfileinput.AddAttrOnConditionTrue("multiple", bMultiple, True)
	vfileinput.SetOnEvent(eventHandler, $"${elID}_change"$, "change", "")
	vfileinput.SetOnEvent(eventHandler, $"${elID}_click:append"$, "click:append", "")
	vfileinput.SetOnEvent(eventHandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vfileinput.SetOnEvent(eventHandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vfileinput.SetOnEvent(eventHandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vfileinput.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vfileinput)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewTextArea(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtextarea", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtextarea", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("mtextarea")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append"$, "click:append", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewPassword(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement
	Dim eventhandler As Object = VC.mcallback
	elID = elID.tolowercase
	
	Dim Ret As Long
	Dim AllViews As Map
    Dim bshowPassword As String = $"${elID}ShowPassword"$
	bshowPassword = bshowPassword.tolowercase
	VC.SetData(bshowPassword, False)
	'
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.AddAttr(":type", $"${bshowPassword} ? 'text' : 'password'"$)
	vtextfield.AddAttr(":append-icon", $"${bshowPassword} ? 'mdi-eye' : 'mdi-eye-off'"$)
	vtextfield.AddAttr("v-on:click:append", $"${bshowPassword} = !${bshowPassword}"$)
	vtextfield.AddAttr("autocomplete", "off")
	'
	
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewSelect(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mselect", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mselect", Ret)
	'
	Dim vselect As VueElement = AllViews.Get("vselect")
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.AddAttr("id", elID)
	'
	If bMultiple Then
		Dim lst As List = VC.NewList
		VC.SetData(vmodel, lst)
	Else
		VC.SetData(vmodel, Null)
	End If
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vselect.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_change"$
	vselect.SetOnEvent(eventHandler, clickEvent, "change", "")
	'
	VC.BindVueElement(vselect)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewComboBox(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mcombobox", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mcombobox", Ret)
	'
	Dim vselect As VueElement = AllViews.Get("vcombobox")
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.AddAttr("id", elID)
	'
	If bMultiple Then
		Dim lst As List = VC.NewList
		VC.SetData(vmodel, lst)
	Else
		VC.SetData(vmodel, Null)
	End If
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vselect.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_change"$
	vselect.SetOnEvent(eventHandler, clickEvent, "change", "")
	'
	VC.BindVueElement(vselect)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewAutoComplete(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mautocomplete", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mautocomplete", Ret)
	'
	Dim vselect As VueElement = AllViews.Get("vautocomplete")
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.AddAttr("id", elID)
	'
	If bMultiple Then
		Dim lst As List = VC.NewList
		VC.SetData(vmodel, lst)
	Else
		VC.SetData(vmodel, Null)	
	End If
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vselect.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_change"$
	vselect.SetOnEvent(eventHandler, clickEvent, "change", "")
	'
	VC.BindVueElement(vselect)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewSwitch(VC As VueComponent, sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, bInset As Boolean, props As Map) As BANanoEvent
	Dim eventHandler As Object = VC.mCallBack
	sid = sid.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mswitch", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mswitch", Ret)
	'
	Dim vswitch As VueElement = AllViews.Get("vswitch")
	vswitch.VModel = vmodel
	vswitch.label = slabel
	vswitch.Value = truevalue
	vswitch.AddAttr("true-value", truevalue)
	vswitch.AddAttr("false-value", falsevalue)
	vswitch.AddAttr(":inset", bInset)
	vswitch.Color = color
	vswitch.ID = sid
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vswitch.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${sid}_change"$
	vswitch.SetOnEvent(eventHandler, clickEvent, "change", "")
	'
	VC.BindVueElement(vswitch)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewRating(VC As VueComponent, sid As String, vmodel As String, slength As Int, ssize As Int, bHover As Boolean, color As String, props As Map) As BANanoEvent
	Dim eventHandler As Object = VC.mCallBack
	sid = sid.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mrating", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mrating", Ret)
	'
	Dim vrating As VueElement = AllViews.Get("vrating")
	vrating.VModel = vmodel
	vrating.AddAttr("length", slength)
	vrating.AddAttr("size", ssize)
	vrating.AddAttr(":hover", bHover)
	vrating.Color = color
	vrating.ID = sid
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vrating.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${sid}_input"$
	vrating.SetOnEvent(eventHandler, clickEvent, "input", "")
	'
	VC.BindVueElement(vrating)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewCheckBox(VC As VueComponent, sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, props As Map) As BANanoEvent
	Dim eventHandler As Object = VC.mCallBack
	sid = sid.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mcheckbox", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mcheckbox", Ret)
	'
	Dim vcheckbox As VueElement = AllViews.Get("vcheckbox")
	vcheckbox.VModel = vmodel
	vcheckbox.label = slabel
	vcheckbox.Value = truevalue
	vcheckbox.AddAttr("true-value", truevalue)
	vcheckbox.AddAttr("false-value", falsevalue)
	vcheckbox.Color = color
	vcheckbox.ID = sid
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vcheckbox.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${sid}_click"$
	vcheckbox.SetOnEvent(eventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(vcheckbox)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


'creating radio groups
Sub NewRadioGroup(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRow As Boolean, bMultiple As Boolean, sourceTable As String, key As String, value As String, colorField As String, radiogroupprops As Map, radioprops As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	sourceTable = sourceTable.ToLowerCase
	key = key.ToLowerCase
	value = value.ToLowerCase
	colorField = colorField.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mradiogroup", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mradiogroup", Ret)
	'
	Dim vradiogroup As VueElement = AllViews.Get("vradiogroup")
	vradiogroup.label = sLabel
	vradiogroup.Multiple = bMultiple
	vradiogroup.AddAttr(":row", bRow)
	vradiogroup.AddAttr(":column", Not(bRow))
	vradiogroup.VModel = vmodel
	vradiogroup.ID = elID
	'
	If banano.IsNull(radiogroupprops) = False Then
		For Each k As String In radiogroupprops.Keys
			Dim v As Object = radiogroupprops.Get(k)
			vradiogroup.AddAttr(k, v)
		Next
	End If
	
	'
	Dim vradio As VueElement = AllViews.Get("vradio")
	vradio.ID = $"${elID}radio"$
	vradio.VFor = $"item in ${sourceTable}"$
	vradio.BindKey($"item.${key}"$)
	vradio.Bind("label", $"item.${value}"$)
	vradio.Bind("value", $"item.${key}"$)
	If colorField <> "" Then vradio.Bind("color", $"item.${colorField}"$)
	'
	If banano.IsNull(radioprops) = False Then
		For Each k As String In radioprops.Keys
			Dim v As Object = radioprops.Get(k)
			vradio.AddAttr(k, v)
		Next
	End If
	'
	If bMultiple Then
		Dim lst As List = VC.NewList
		VC.SetData(vmodel, lst)
	Else
		VC.SetData(vmodel, Null)	
	End If
	'
	Dim clickEvent As String = $"${elID}_change"$
	vradiogroup.SetOnEvent(eventHandler, clickEvent, "change", "")
	'
	VC.BindVueElement(vradiogroup)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewTel(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "tel")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append"$, "click:append", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend"$, "click:prepend", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:append-outer"$, "click:append-outer", "")
	vtextfield.SetOnEvent(eventHandler, $"${elID}_click:prepend-inner"$, "click:prepend-inner", "")
	
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vtextfield.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewImage(VC As VueComponent, elID As String, src As String, lazysrc As String, alt As String, sheight As String, swidth As String, props As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mimage", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mimage", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vimg As VueElement = AllViews.get("mimage")
	Dim vtemplate As VueElement = AllViews.Get("vtemplate")
	vtemplate.ID = $"${elID}template"$
	Dim vrow As VueElement = AllViews.Get("vrow")
	vrow.ID = $"${elID}row"$
	Dim vprogresscircular As VueElement = AllViews.Get("vprogresscircular")
	vprogresscircular.ID = $"${elID}pc"$
	'
	vimg.Height = sheight
	vimg.Width = swidth
	vimg.Src = src
	vimg.Alt = alt
	vimg.AddAttr("lazy-src", lazysrc)
	vimg.ID = elID
	vimg.AddAttr(":aspect-ratio", "1")
	'
	vimg.SetOnEvent(eventHandler, $"${elID}_click"$, "click", "")
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vimg.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vimg)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewChipAvatarImage(VC As VueComponent, elID As String, src As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, avatarprops As Map, imgprops As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mchipavatarimg", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mchipavatarimg", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement = AllViews.get("vchip")
	vchip.ID = elID
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	vchip.Color = color
	'
	Dim vavatar As VueElement = AllViews.Get("vavatar")
	vavatar.ID = $"${elID}avatar"$
	'
	Dim vimg As VueElement = AllViews.Get("vimg")
	vimg.ID = $"${elID}img"$
	vimg.Src = src
	vimg.lazysrc = src
	'
	Dim span As VueElement = AllViews.Get("span")
	span.ID = $"${elID}span"$
	span.Caption = label
	'
	vchip.SetOnEvent(eventHandler, $"${elID}_click"$, "click", $"'${elID}'"$)
	vchip.SetOnEvent(eventHandler, $"${elID}_clickclose"$, "click:close", $"'${elID}'"$)
	
	'
	If banano.IsNull(chipprops) = False Then
		For Each k As String In chipprops.Keys
			Dim v As Object = chipprops.Get(k)
			vchip.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vchip)
	VC.BindVueElement(vavatar)
	VC.BindVueElement(vimg)	
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub


Sub NewChipIcon(VC As VueComponent, elID As String, sicon As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, iconprops As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mchipicon", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mchipicon", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement = AllViews.get("vchip")
	vchip.ID = elID
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	vchip.Color = color
	'
	Dim vicon As VueElement = AllViews.Get("vicon")
	vicon.ID = $"${elID}icon"$
	vicon.caption = sicon
	'
	Dim span As VueElement = AllViews.Get("span")
	span.ID = $"${elID}span"$
	span.Caption = label
	'
	vchip.SetOnEvent(eventHandler, $"${elID}_click"$, "click", $"'${elID}'"$)
	vchip.SetOnEvent(eventHandler, $"${elID}_clickclose"$, "click:close", $"'${elID}'"$)
	
	'
	If banano.IsNull(chipprops) = False Then
		For Each k As String In chipprops.Keys
			Dim v As Object = chipprops.Get(k)
			vchip.AddAttr(k, v)
		Next
	End If
	'
	VC.BindVueElement(vchip)
	VC.BindVueElement(vicon)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewChipGroup(VC As VueComponent, elID As String, vModel As String,  activeClass As String, bMultiple As Boolean, bShowArrows As Boolean, bFilter As Boolean, DataSource As String, Key As String, Value As String, _
	chipgroupprops As Map, chipprops As Map) As BANanoElement
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "mchipgroup", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mchipgroup", Ret)
	'
	'get the text field, there is only 1 element on the layout
	Dim vchipgroup As VueElement = AllViews.get("vchipgroup")
	vchipgroup.Bind("show-arrows", bShowArrows)
	vchipgroup.VModel = vModel
	vchipgroup.Multiple = bMultiple
	vchipgroup.ID = elID
	vchipgroup.AddAttr("active-class", activeClass)
	
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement = AllViews.get("vchip")
	vchip.ID = $"${elID}chip"$
	vchip.VFor = $"item in ${DataSource}"$
	vchip.BindKey($"item.${Key}"$)
	vchip.Caption = vchip.ItemInMoustache(Value)
	vchip.AddAttr(":filter", bFilter)
	'
	vchipgroup.SetOnEvent(eventHandler, $"${elID}_change"$, "change", "")
	'
	If banano.IsNull(chipgroupprops) = False Then
		For Each k As String In chipgroupprops.Keys
			Dim v As Object = chipgroupprops.Get(k)
			vchipgroup.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(chipprops) = False Then
		For Each k As String In chipprops.Keys
			Dim v As Object = chipprops.Get(k)
			vchip.AddAttr(k, v)
		Next
	End If
	
	'
	VC.BindVueElement(vchipgroup)
	VC.BindVueElement(vchip)
	VC.SetData(vModel, VC.NewList)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

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


Sub AddChipGroup(VC As VueComponent, parentID As String, elID As String, vModel As String,  activeClass As String, bMultiple As Boolean, bShowArrows As Boolean, bFilter As Boolean, DataSource As String, Key As String, Value As String, chipgroupprops As Map, chipprops As Map)
	Dim eventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	parentID = CleanParent(parentID)
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray(parentID, "mchipgroup", False)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "mchipgroup", Ret)
	'
	'get the text field, there is only 1 element on the layout
	Dim vchipgroup As VueElement = AllViews.get("vchipgroup")
	vchipgroup.Bind("show-arrows", bShowArrows)
	vchipgroup.VModel = vModel
	vchipgroup.Multiple = bMultiple
	vchipgroup.ID = elID
	vchipgroup.AddAttr("active-class", activeClass)
	
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement = AllViews.get("vchip")
	vchip.ID = $"${elID}chip"$
	vchip.VFor = $"item in ${DataSource}"$
	vchip.BindKey($"item.${Key}"$)
	vchip.Caption = vchip.ItemInMoustache(Value)
	vchip.AddAttr(":filter", bFilter)
	'
	vchipgroup.SetOnEvent(eventHandler, $"${elID}_change"$, "change", "")
	'
	If banano.IsNull(chipgroupprops) = False Then
		For Each k As String In chipgroupprops.Keys
			Dim v As Object = chipgroupprops.Get(k)
			vchipgroup.AddAttr(k, v)
		Next
	End If
	'
	If banano.IsNull(chipprops) = False Then
		For Each k As String In chipprops.Keys
			Dim v As Object = chipprops.Get(k)
			vchip.AddAttr(k, v)
		Next
	End If
	
	'
	VC.BindVueElement(vchipgroup)
	VC.BindVueElement(vchip)
	VC.SetData(vModel, VC.NewList)
End Sub