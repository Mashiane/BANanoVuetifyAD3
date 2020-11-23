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

Sub NewTimePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement
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
	
	'
	vtimepicker.VModel = vmodel
	vtimepicker.AddAttr("landscape", True)
	'
	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
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
