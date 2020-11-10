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
	Private vnavigationdrawer As VueElement
	Private vapp As VueElement
	Private vappbar As VueElement
	Private vmain As VueElement
	Private vavatar As VueElement
	Private vbtn As VueElement
	Private vicon As VueElement
	Private vcol As VueElement
	Private vcontainer As VueElement
	Private vrow As VueElement
	Private vsystembar As VueElement
	Private vcol1 As VueElement
	Private vsheet As VueElement
	Private vstrong As VueElement
	Private vtemplate As VueElement
	Private vlist As VueElement
	Private vlistitem As VueElement
	Private vlistitemcontent As VueElement
	Private vlistitemicon As VueElement
	Private vlistitemtitle As VueElement
	Private vminidrawer As VueElement
	Private vlistitem1 As VueElement
	Private vfooter As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vbaseline")
	'
	'add icons to appbar
	LoadLayoutIcon("icnsquare", "mdi-square", CreateMap("color":"red"))
	vsystembar.AppendHolder
	'
	LoadLayoutIcon("icncircle", "mdi-circle", CreateMap("color":"yellow"))
	vsystembar.AppendHolder
	'
	LoadLayoutIcon("icntriangle", "mdi-triangle", CreateMap("color":"blue"))
	vsystembar.AppendHolder
	'
	BANano.LoadLayout("#placeholder", "vsearch")
	vappbar.AppendPlaceHolder
	'
	BANano.loadlayout("#placeholder", "vminidrawer")
	vnavigationdrawer.AppendPlaceHolder
	
	BANano.loadlayout("#placeholder", "vrestdrawer")
	vnavigationdrawer.AppendPlaceHolder
	
	BANano.loadlayout("#placeholder", "vitemtitle")
	vlistitem.VFor = "n in 5"
	vlistitem.AddAttr("link", True)
	vlistitem.AddAttr(":key", "n")
	vlistitemtitle.Caption = "Item {{ n }}"
	vlist.AppendPlaceHolder
	'
	BANano.loadlayout("#placeholder", "vdrawerright")
	vapp.AppendPlaceHolder
	'
	BANano.loadlayout("#placeholder", "vfooter")
	vapp.AppendPlaceHolder
	
	
'	'
'	BANano.LoadLayout("#placeholder", "uprofile")
'	vnavigationdrawer.AppendPlaceHolder
'	'
'	BANano.LoadLayout("#placeholder", "vdivider")
'	vnavigationdrawer.AppendPlaceHolder
'	'
'	BANano.loadlayout("#placeholder", "vlist")
'	vnavigationdrawer.AppendPlaceHolder
'	
'	BANano.LoadLayout("#placeholder", "vlistitemicontitle")
'	vlist.AppendPlaceHolder
'	'
'	BANano.LoadLayout("#placeholder", "vinbox")
'	vmain.AppendPlaceHolder
	
	
	'BANano.LoadLayout("#placeholder", "vbtnvicon")
	'vicon.Caption = "mdi-file-document-multiple"
	
	'add a v-container to v-main
'	BANano.LoadLayout("#placeholder", "vcontainer")
'	vmain.AppendPlaceHolder
'	vcol1.AddAttr(":key", "`${n}${j}`")
'
	vuetify.BindVueElement(vnavigationdrawer)
	'vuetify.BindVueElement(vlist)
	'vuetify.BindVueElement(vlistitem)
	vuetify.BindVueElement(vappbar)
	vuetify.BindVueElement(vminidrawer)
	vuetify.BindVueElement(vlistitem)
	vuetify.BindVueElement(vlistitem1)
	
		
'	vuetify.BindVueElement(vtoolbartitle)
'	vuetify.BindVueElement(vapp)
'	vuetify.BindVueElement(vappbar)
'	vuetify.BindVueElement(vmain)
'	vuetify.BindVueElement(vavatar)
	'vuetify.BindVueElement(vbtn)
	'vuetify.BindVueElement(vicon)
'	vuetify.BindVueElement(vsystembar)
	'vuetify.BindVueElement(vcol)
'	vuetify.BindVueElement(vcol1)
'	vuetify.BindVueElement(vcontainer)
'	vuetify.BindVueElement(vrow)
'	vuetify.BindVueElement(vsheet)
'	vuetify.BindVueElement(vsystembar)
'	vuetify.BindVueElement(vstrong)
'	vuetify.BindVueElement(vtemplate)
	'
	vuetify.SetData("appdrawer", True)
	'
'	Dim links As List = vuetify.NewList
'	links.Add(CreateMap("icon": "mdi-inbox-arrow-down", "text":"Inbox"))
'	links.Add(CreateMap("icon": "mdi-send", "text": "Send"))
'	links.Add(CreateMap("icon": "mdi-delete", "text": "Trash"))
'	links.Add(CreateMap("icon": "mdi-alert-octagon", "text": "Spam"))
'	vuetify.SetData("links", links)
'	'
'	Dim cards As List = vuetify.NewList
'	cards.Add("Today")
'	cards.Add("Yesterday")
'	vuetify.SetData("cards", cards)
	
	'render the ux
	vuetify.Serve
	'
	Log(vuetify.Template)
End Sub

Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	vuetify.Toggle("appdrawer")
End Sub
'
'click on navbar
Sub navbar_click(item As String)
	Log(item)	
End Sub

Sub LoadLayoutButtonIcon(EventName As String, btnID As String, iconName As String, btnprops As Map, iconprops As Map)
	btnID = btnID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	'load button icon and clear the placeholder
	Ret = BANano.LoadLayoutArray("#appendholder", "vbtnvicon", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vbtnvicon", Ret)
	'
	Dim vbtn As VueElement = AllViews.Get("vbtn")
	'
	If BANano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As String = btnprops.Get(k)
			vbtn.AddAttr(k, v)	
		Next
	End If
	vbtn.AddAttr("data-id", btnID)
	'
	If btnID <> "" Then
		vbtn.OnMulti(EventName, vuetify.EVENT_Click, $"'${btnID}'"$)
	End If
	'
	vuetify.BindVueElement(vbtn)
	'
	Dim vicon As VueElement = AllViews.Get("vicon")
	If iconName <> "" Then vicon.Caption = iconName
	'
	If BANano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As String = iconprops.Get(k)
			vicon.AddAttr(k, v)
		Next
	End If
	'
	vuetify.BindVueElement(vicon)
End Sub

Sub LoadLayoutIcon(iconID As String, iconName As String, iconprops As Map) As VueElement
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	'load button icon and clear the placeholder
	Ret = BANano.LoadLayoutArray("#appendholder", "vicon", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vicon", Ret)
	'
	Dim vicon As VueElement = AllViews.Get("vicon")
	If iconName <> "" Then vicon.Caption = iconName
	vicon.SetAttr("data-id", iconID)
	'
	If BANano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As String = iconprops.Get(k)
			vicon.AddAttr(k, v)
		Next
	End If
	'
	vuetify.BindVueElement(vicon)
	vicon.Element = vicon.GetElementByData("id", iconID)
	Return vicon
End Sub

Sub LoadLayoutButton(EventName As String, btnID As String, btnLabel As String, btnprops As Map) As VueElement
	btnID = btnID.tolowercase
	'
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	'load button icon and clear the placeholder
	Ret = BANano.LoadLayoutArray("#appendholder", "vbtn", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vbtn", Ret)
	'
	Dim vbtn As VueElement = AllViews.Get("vbtn")
	'
	If BANano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As String = btnprops.Get(k)
			vbtn.AddAttr(k, v)	
		Next
	End If
	vbtn.AddAttr("data-id", btnID)
	'
	If btnID <> "" Then
		vbtn.OnMulti(EventName, vuetify.EVENT_Click, $"'${btnID}'"$)
	End If
	'
	vbtn.caption = btnLabel
	vuetify.BindVueElement(vbtn)
	vbtn.Element = vicon.GetElementByData("id", btnID)
	Return vbtn
End Sub


Sub LoadLayoutSpacer(props As Map) As VueElement
	'get the parent
	Dim Ret As Long
	Dim AllViews As Map
   
	'load button icon and clear the placeholder
	Ret = BANano.LoadLayoutArray("#appendholder", "vspacer", True)
	' ret returns a unique number you can use to get all views
	AllViews = BANano.GetAllViewsFromLayoutArray(Me, "vspacer", Ret)
	'
	Dim vspacer As VueElement = AllViews.Get("vspacer")
	'
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			vspacer.AddAttr(k, v)	
		Next
	End If
	vuetify.BindVueElement(vspacer)
	Return vspacer
End Sub
