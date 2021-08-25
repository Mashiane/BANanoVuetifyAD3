B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (item As Map)
#Event: RightClick (item As Map)
#Event: LeftClick (item As Map)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Bench, DisplayName: Bench, FieldType: String, DefaultValue: , Description: Bench
#DesignerProperty: Key: PlaceAtBottom, DisplayName: PlaceAtBottom, FieldType: Boolean, DefaultValue: False, Description: Place List At Bottom
#DesignerProperty: Key: VirtualScroll, DisplayName: VirtualScroll, FieldType: Boolean, DefaultValue: False, Description: Virtual Scroll
#DesignerProperty: Key: TwoLine, DisplayName: TwoLine, FieldType: Boolean, DefaultValue: false, Description: Two Line
#DesignerProperty: Key: ThreeLine, DisplayName: ThreeLine, FieldType: Boolean, DefaultValue: false, Description: Three Line
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: false, Description: Dense
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: Boolean, DefaultValue: False, Description: Disabled
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Expand, DisplayName: Expand, FieldType: Boolean, DefaultValue: false, Description: Expand
#DesignerProperty: Key: Flat, DisplayName: Flat, FieldType: Boolean, DefaultValue: false, Description: Flat
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width

#DesignerProperty: Key: ItemHeight, DisplayName: ItemHeight, FieldType: String, DefaultValue: , Description: ItemHeight
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue: , Description: Key
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: Min Height
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: Max Height
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: Min Width
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: Max Width
#DesignerProperty: Key: Nav, DisplayName: Nav, FieldType: Boolean, DefaultValue: false, Description: Nav
#DesignerProperty: Key: Outlined, DisplayName: Outlined, FieldType: Boolean, DefaultValue: false, Description: Outlined
#DesignerProperty: Key: Rounded, DisplayName: Rounded, FieldType: Boolean, DefaultValue: false, Description: Rounded, List: none|rounded-0|rounded|rounded-sm|rounded-lg|rounded-xl|rounded-t-xl|rounded-r-xl|rounded-b-xl|rounded-l-xl|rounded-tl-xl|rounded-tr-xl|rounded-br-xl|rounded-bl-xl|rounded-pill|rounded-circle
#DesignerProperty: Key: Shaped, DisplayName: Shaped, FieldType: Boolean, DefaultValue: false, Description: Shaped
#DesignerProperty: Key: Subheader, DisplayName: Subheader, FieldType: Boolean, DefaultValue: false, Description: Subheader
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4

#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: VBind, DisplayName: VBind, FieldType: String, DefaultValue: , Description: VBind
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue: , Description: VFor
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VOn, DisplayName: VOn, FieldType: String, DefaultValue: , Description: VOn
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =

Sub Class_Globals
    Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bDense As Boolean
	Private sDisabled As String
	Private sElevation As String
	Private bExpand As Boolean
	Private bFlat As Boolean
	Private sHeight As String
	Private sKey As String
	Private bLight As Boolean
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private bNav As Boolean
	Private bOutlined As Boolean
	Private bRounded As Boolean
	Private bShaped As Boolean
	Private bSubheader As Boolean
	Private sTextColor As String
	Private sTextColorIntensity As String
	Private bThreeLine As Boolean
	Private bTile As Boolean
	Private bTwoLine As Boolean
	Private sVBind As String
	Private sVFor As String
	Private sVIf As String
	Private sVOn As String
	Private sVShow As String
	Private sWidth As String
	Public Records As List
	Public DataSource As String
	Private numLines As Int
	Private xTemplate As String
	Private bDisabled As Boolean
	Private bHidden As Boolean
	Private bPlaceAtBottom As Boolean
	Private VC As VueComponent
	Private Options As ListViewItemOptions
	Private bVirtualScroll As Boolean
	Private sBench As String
	Private sItemHeight As String
End Sub
	
Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mName = Name.tolowercase
	mEventName = EventName.ToLowerCase
	mCallBack = CallBack	
	mName = mName.Replace("#","")
	mEventName = mEventName.Replace("#","")
	If mName <> "" Then
		Dim fKey As String = $"#${mName}"$
		If BANano.Exists(fKey) Then 
			mElement = BANano.GetElement(fKey)
		End If
	End If
	Records.Initialize 
	DataSource = ""
	numLines = 0
	sDisabled = $"${mName}disabled"$
	sVShow = $"${mName}show"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bDense = Props.Get("Dense")
		bDisabled = Props.GetDefault("Disabled",False)
		sElevation = Props.Get("Elevation")
		bExpand = Props.Get("Expand")
		bFlat = Props.Get("Flat")
		sHeight = Props.Get("Height")
		sKey = Props.Get("Key")
		bLight = Props.Get("Light")
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		bNav = Props.Get("Nav")
		bOutlined = Props.Get("Outlined")
		bRounded = Props.Get("Rounded")
		bShaped = Props.Get("Shaped")
		bSubheader = Props.Get("Subheader")
		sTextColor = Props.Get("TextColor")
		sTextColorIntensity = Props.Get("TextColorIntensity")
		bThreeLine = Props.Get("ThreeLine")
		bTile = Props.Get("Tile")
		bTwoLine = Props.Get("TwoLine")
		sVBind = Props.Get("VBind")
		sVFor = Props.Get("VFor")
		sVIf = Props.Get("VIf")
		sVOn = Props.Get("VOn")
		bHidden = Props.GetDefault("Hidden", False)
		sWidth = Props.Get("Width")
		bPlaceAtBottom = Props.GetDefault("PlaceAtBottom", False)
		sItemHeight = Props.GetDefault("ItemHeight", "")
		bVirtualScroll = Props.GetDefault("VirtualScroll", False)
		bVirtualScroll = BANanoShared.parseBool(bVirtualScroll)
		sBench = Props.GetDefault("Bench", "")
	End If
	'
	bDark = BANanoShared.parseBool(bDark)
bDense = BANanoShared.parseBool(bDense)
bDisabled = BANanoShared.parseBool(bDisabled)
bExpand = BANanoShared.parseBool(bExpand)
bFlat = BANanoShared.parseBool(bFlat)
bLight = BANanoShared.parseBool(bLight)
bNav = BANanoShared.parseBool(bNav)
bOutlined = BANanoShared.parseBool(bOutlined)
bRounded = BANanoShared.parseBool(bRounded)
bShaped = BANanoShared.parseBool(bShaped)
bSubheader = BANanoShared.parseBool(bSubheader)
bThreeLine = BANanoShared.parseBool(bThreeLine)
bTile = BANanoShared.parseBool(bTile)
bTwoLine = BANanoShared.parseBool(bTwoLine)
bHidden = BANanoShared.parseBool(bHidden)
bPlaceAtBottom = BANanoShared.parseBool(bPlaceAtBottom)
bDisabled = BANanoShared.parseBool(bDisabled)

	Dim xtag As String = "v-list"
	If bVirtualScroll Then
		xtag = "v-virtual-scroll"
	End If
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<${xtag} ref="${mName}" id="${mName}"></${xtag}>"$).Get("#" & mName)
	End If
		
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-list"
	If bVirtualScroll Then
		VElement.TagName = "v-virtual-scroll"
		VElement.Append($"<v-template id="${mName}template" v-slot:default="{ item }"></v-template>"$)
		VElement.AddAttr("bench", sBench)
		VElement.AddAttr("item-height", sItemHeight)
	End If
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr(":dense", bDense)
VElement.AddAttr(":disabled", sDisabled)
VElement.SetData(sDisabled, bDisabled)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr(":expand", bExpand)
VElement.AddAttr(":flat", bFlat)
VElement.AddAttr("height", sHeight)
VElement.AddAttr("key", sKey)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":nav", bNav)
VElement.AddAttr(":outlined", bOutlined)
VElement.AddAttr(":rounded", bRounded)
VElement.AddAttr(":shaped", bShaped)
VElement.AddAttr(":subheader", bSubheader)
VElement.TextColor = sTextColor
VElement.TextColorIntensity = sTextColorIntensity
VElement.AddAttr(":three-line", bThreeLine)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr(":two-line", bTwoLine)
VElement.AddAttr("v-bind", sVBind)
VElement.AddAttr("v-for", sVFor)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-on", sVOn)
If bHidden Then
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
End If
VElement.AddAttr("width", sWidth)
numLines = 0
If bThreeLine Then numLines = 3
If bTwoLine Then numLines = 2
If bPlaceAtBottom Then
	VElement.AddStyle("position", "absolute")
	VElement.AddStyle("bottom", "0")
	VElement.AddClass("ml-3")
End If
VElement.BindAllEvents
End Sub

'set options from definition before bindstate and create the structure of each list item
Sub SetOptions(opt As VListOptions)
	Options = opt.Options
	xTemplate = opt.Template
	Select Case xTemplate
	Case "none"
	Case "list"
		AddListViewTemplate(Options)
	Case "list-item-group"
		AddListItemGroupTemplate(Options)
	Case "tree"
		AddListViewGroupTemplate(Options)
	End Select
	VElement.setdata(opt.dataSource, VElement.NewList)
End Sub

Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VList
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VList
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VList
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VList
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VList
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateDisabled(C As VueComponent, b As Boolean)
	bDisabled = b
	C.SetData(sDisabled, b)
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VList
	C.SetData(sVIf, b)
	C.SetData(sVShow, b)
	Return Me
End Sub

Sub UpdateDisabledOnApp(C As VuetifyApp, b As Boolean)
	bDisabled = b
	C.SetData(sDisabled, b)
End Sub

Sub getHere As String
	Return $"#${mName}"$
End Sub

Sub getID As String
	Return mName
End Sub

Sub Clear(C As VueComponent)
	Records.Initialize
	C.SetData(DataSource, Records)
End Sub

Sub ClearOnApp(app As VuetifyApp)
	Records.Initialize 
	app.SetData(DataSource, Records)
End Sub

Sub Refresh(C As VueComponent)
	Select Case xTemplate
	Case "tree"
		Dim recs As List = BANanoShared.Unflatten(Records, "items")
		C.SetData(DataSource, recs)	
	Case Else
		C.setdata(DataSource, Records)
	End Select
End Sub

Sub RefreshOnApp(app As VuetifyApp)
	Select Case xTemplate
	Case "tree"
		Dim recs As List = BANanoShared.Unflatten(Records, "items")
		app.SetData(DataSource, recs)	
	Case Else
		app.setdata(DataSource, Records)
	End Select
End Sub


'add a header to the list
Sub AddHeader(txt As String)
	Dim rec As Map = CreateMap()
	rec.Put("header", txt)
	Records.Add(rec)
End Sub

'add a divider
Sub AddDivider(binset As Boolean)
	Dim rec As Map = CreateMap()
	rec.Put("divider", True)
	If binset Then 
		rec.Put("inset", binset)
	End If
	Records.Add(rec)
End Sub


private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

'add a list item template to draw item
Sub AddListItemGroupTemplate(props As ListViewItemOptions)
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	Dim templateID As String = $"${elID}template"$
	'Dim headerID As String = $"${elID}header"$
	'Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimage"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim subtitle2ID As String = $"${elID}subtitle2"$
	Dim subtitle3ID As String = $"${elID}subtitle3"$
	Dim subtitle4ID As String = $"${elID}subtitle4"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	Dim xsubtitle2 As String = props.subtitle2
	Dim xsubtitle3 As String = props.subtitle3
	Dim xsubtitle4 As String = props.subtitle4
	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	DataSource = props.dataSource
	DataSource = DataSource.ToLowerCase
	Dim key As String = props.key
	key = key.ToLowerCase
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	Dim xhref As String = props.href
	Dim xtarget As String = props.target
	Dim xvisible As String = props.visible
	'
	If xhref = "" Then xhref = "href"
	If xtarget = "" Then xtarget = "target"
	If xvisible = "" Then xvisible = "visible"
	
	Dim xrightitemavatarclass As String = props.rightitemavatarclass
	
	Dim sTemplate As String = $"<v-list-item-group id="${templateID}" active-class="${xactiveclass}">
	<v-template v-for="(item, index) in ${DataSource}">
<v-list-item id="${listitemID}" :key="item.${key}" :to="item.${xurl}" v-show="item.${xvisible}" :href="item.${xhref}" :target="item.${xtarget}">
<v-list-item-action id="${leftactionID}" v-if="item.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="item.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="item.${xlefticoncolor}" v-html="item.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="item.${xleftcheckbox}" :input-value="item.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xleftswitch}" :input-value="item.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="item.${xavatar} || item.${xavataricon} || item.${props.avatartext}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="item.${xavatar}" class="${xavatarclass}" v-if="item.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="item.${xavataricon}" :color="item.${xavatariconcolor}" class="${xavatariconclass}" v-html="item.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-html="item.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="item.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="item.${xiconcolor}" class="${xiconclass}" v-html="item.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="item.${xtitle} || item.${xsubtitle} || item.${xsubtitle1} || item.${xsubtitle2} || item.${xsubtitle3} || item.${xsubtitle4}">
<v-list-item-title id="${titleID}" v-if="item.${xtitle}" v-html="item.${xtitle}"></v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="item.${xsubtitle}" v-html="item.${xsubtitle}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-if="item.${xsubtitle1}" v-html="item.${xsubtitle1}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle2ID}" v-if="item.${xsubtitle2}" v-html="item.${xsubtitle2}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle3ID}" v-if="item.${xsubtitle3}" v-html="item.${xsubtitle3}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle4ID}" v-if="item.${xsubtitle4}" v-html="item.${xsubtitle4}"></v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${xrightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-html="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-html="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-list-item-action id="${rightactionID}" v-if="item.${xrighticon} || item.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch} || item.${xrightchip}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="item.${xrighttext}" v-html="item.${xrighttext}"></v-list-item-action-text>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="item.${xrightchip}" :color="item.${xrightchipcolor}" dark small v-html="item.${xrightchip}"></v-chip>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="item.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-html="item.${xrighticon}" class="${xrighticonclass}" :color="item.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="item.${xrightcheckbox}" :input-value="item.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="item.${xrightrating}" :value="item.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xrightswitch}" :input-value="item.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>
</v-template>
</v-list-item-group>"$
	
	'
	sTemplate = sTemplate.Replace("~","$")
	
	BANano.GetElement(parentID).Append(sTemplate)
	'
	Dim vlistitemx As VueElement
	vlistitemx.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
	Case 2
		vlistitemx.AddAttr(":two-line", True)
	Case 3
		vlistitemx.AddAttr(":three-line", True)
	End Select
	vlistitemx.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "item")
	'left action
	'
'	Dim vleftcheckbox As VueElement
'	vleftcheckbox.Initialize(mCallBack, leftcheckboxID, leftcheckboxID)
'	If xshowleftcheckboxes Then
'		vleftcheckbox.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
'	End If
	'
'	Dim vrightcheckbox As VueElement
'	vrightcheckbox.Initialize(mCallBack, rightcheckboxID, rightcheckboxID)
'	If xshowrightcheckboxes Then
'		vrightcheckbox.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
'	End If
	
	Dim vleftlistitemaction As VueElement
	vleftlistitemaction.Initialize(mCallBack, leftactionID, leftactionID)
	'If xshowleftcheckboxes = False And xshowleftswitch = False Then
		vleftlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
	'End If
	'
	Dim vrightlistitemaction As VueElement
	vrightlistitemaction.Initialize(mCallBack, rightactionID, rightactionID)
	'If xshowrightcheckboxes = False And xshowrightswitch = False Then
		vrightlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
	'End If
	'
'	Dim vleftswitch As VueElement
'	vleftswitch.Initialize(mCallBack, leftswitchID, leftswitchID)
'	'If xshowleftswitch Then 
	'	vleftswitch.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "change.stop", "item")
	'End If
	'
'	Dim vrightswitch As VueElement
'	vrightswitch.Initialize(mCallBack, rightswitchID, rightswitchID)
	'If xshowrightswitch Then
	'	vrightswitch.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "change.stop", "item")
	'End If
	
	VElement.SetData(DataSource, VElement.NewList)
	VElement.BindVueElement(vlistitemx)
	VElement.BindVueElement(vleftlistitemaction)
	VElement.BindVueElement(vrightlistitemaction)
'	vlistitem.BindVueElement(vleftcheckbox)
'	vlistitem.BindVueElement(vrightcheckbox)
'	vlistitem.BindVueElement(vrightswitch)
'	vlistitem.BindVueElement(vleftswitch)
	CleanUp
End Sub

'add a list item template to draw item
Sub AddListViewGroupTemplate(props As ListViewItemOptions)
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	'Dim templateID As String = $"${elID}template"$
	'Dim headerID As String = $"${elID}header"$
	'Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimg"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim subtitle2ID As String = $"${elID}subtitle2"$
	Dim subtitle3ID As String = $"${elID}subtitle3"$
	Dim subtitle4ID As String = $"${elID}subtitle4"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	
	'
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	Dim xsubtitle2 As String = props.subtitle2
	Dim xsubtitle3 As String = props.subtitle3
	Dim xsubtitle4 As String = props.subtitle4

	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	DataSource = props.dataSource
	Dim key As String = props.key
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	Dim xhref As String = props.href
	Dim xtarget As String = props.target
	Dim xvisible As String = props.visible
	'
	If xhref = "" Then xhref = "href"
	If xtarget = "" Then xtarget = "target"
	If xvisible = "" Then xvisible = "visible"
	
	DataSource = DataSource.ToLowerCase
	key = key.ToLowerCase
		'
	Dim sTemplate As StringBuilder
	sTemplate.Initialize
	sTemplate.Append($"<v-template v-for="item in ${DataSource}">"$)
	sTemplate.Append($"<v-list-group v-if="item.items" :key="item.${key}" v-show="item.${xvisible}" v-model="item.model" no-action active-class="${xactiveclass}">"$)
	sTemplate.Append($"<v-icon id="${iconID}" slot="prependIcon" ${props.iconattr} :color="item.${xiconcolor}" v-html="item.${xicon}"></v-icon>"$)
	'
	sTemplate.Append($"<v-template v-slot:activator>"$)
	sTemplate.Append($"<v-list-item-content id="${contentID}">"$)
	sTemplate.Append($"<v-list-item-title id="${titleID}" v-html="item.${xtitle}"></v-list-item-title>"$)
	sTemplate.Append($"</v-list-item-content>"$)
	sTemplate.Append($"</v-template>"$)

	sTemplate.Append($"<v-template v-for="child in item.items">"$)
sTemplate.Append($"<v-list-item id="${listitemID}" :key="child.${key}" :to="child.${xurl}" v-show="child.${xvisible}" active-class="${xactiveclass}" :href="child.${xhref}" :target="child.${xtarget}">
<v-list-item-action id="${leftactionID}" v-if="child.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="child.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="child.${xlefticoncolor}" v-html="child.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="child" v-model="child.${xleftcheckbox}" :input-value="child.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="child" v-model="child.${xleftswitch}" :input-value="child.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="child.${xavatar} || child.${xavataricon}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="child.${xavatar}" class="${xavatarclass}" v-if="child.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="child.${xavataricon}" :color="child.${xavatariconcolor}" class="${xavatariconclass}" v-html="child.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="child.${props.avatartextcolor}" class="${props.avatartextclass}" v-html="child.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="child.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="child.${xiconcolor}" class="${xiconclass}" v-html="child.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="child.${xtitle} || child.${xsubtitle} || child.${xsubtitle1} || child.${xsubtitle2} || child.${xsubtitle3} || child.${xsubtitle4}">
<v-list-item-title id="${titleID}" v-if="child.${xtitle}" v-html="child.${xtitle}"></v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="child.${xsubtitle}" v-html="child.${xsubtitle}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-if="child.${xsubtitle1}" v-html="child.${xsubtitle1}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle2ID}" v-if="child.${xsubtitle2}" v-html="child.${xsubtitle2}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle3ID}" v-if="child.${xsubtitle3}" v-html="child.${xsubtitle3}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle4ID}" v-if="child.${xsubtitle4}" v-html="child.${xsubtitle4}"></v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${props.rightitemavatarclass}" v-if="child.${props.rightavatar} || child.${props.rightavataricon} || child.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="child.${props.rightavatar}" class="${props.rightavatarclass}" v-if="child.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="child.${props.rightavataricon}" :color="child.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-html="child.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="child.${props.rightavatartext}" :color="child.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-html="child.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-list-item-action id="${rightactionID}" v-if="child.${xrighticon} || child.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch} || item.${xrightchip}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="child.${xrighttext}" v-html="child.${xrighttext}"></v-list-item-action-text>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="child.${xrightchip}" :color="child.${xrightchipcolor}" dark small v-html="child.${xrightchip}"></v-chip>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="child.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-html="child.${xrighticon}" class="${xrighticonclass}" :color="child.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="child" v-model="child.${xrightcheckbox}" :input-value="child.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="child.${xrightrating}" :value="child.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="child" v-model="child.${xrightswitch}" :input-value="child.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>
</v-template>
</v-list-group>"$)
'
sTemplate.Append($"<v-list-item v-else id="${listitemID}" :key="item.${key}" v-show="item.${xvisible}" :to="item.${xurl}" active-class="${xactiveclass}" :href="item.${xhref}" :target="item.${xtarget}">
<v-list-item-action id="${leftactionID}" v-if="item.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="item.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="item.${xlefticoncolor}" v-html="item.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="item.${xleftcheckbox}" :input-value="item.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xleftswitch}" :input-value="item.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="item.${xavatar} || item.${xavataricon}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="item.${xavatar}" class="${xavatarclass}" v-if="item.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="item.${xavataricon}" :color="item.${xavatariconcolor}" class="${xavatariconclass}" v-html="item.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-html="item.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="item.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="item.${xiconcolor}" class="${xiconclass}" v-html="item.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="item.${xtitle} || item.${xsubtitle} || item.${xsubtitle1} || item.${xsubtitle2} || item.${xsubtitle3} || item.${xsubtitle4}">
<v-list-item-title id="${titleID}" v-if="item.${xtitle}" v-html="item.${xtitle}"></v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="item.${xsubtitle}" v-html="item.${xsubtitle}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-if="item.${xsubtitle1}" v-html="item.${xsubtitle1}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle2ID}" v-if="item.${xsubtitle2}" v-html="item.${xsubtitle2}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle3ID}" v-if="item.${xsubtitle3}" v-html="item.${xsubtitle3}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle4ID}" v-if="item.${xsubtitle4}" v-html="item.${xsubtitle4}"></v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${props.rightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-html="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-html="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-list-item-action id="${rightactionID}" v-if="item.${xrighticon} || item.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch} || item.${xrightchip}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="item.${xrighttext}" v-html="item.${xrighttext}"></v-list-item-action-text>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="item.${xrightchip}" :color="item.${xrightchipcolor}" dark small v-html="item.${xrightchip}"></v-chip>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="item.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-html="item.${xrighticon}" class="${xrighticonclass}" :color="item.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="item.${xrightcheckbox}" :input-value="item.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="item.${xrightrating}" :value="item.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xrightswitch}" :input-value="item.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>"$)
sTemplate.Append("</v-template>")
	'
	BANano.GetElement(parentID).Append(sTemplate.tostring)
	'
	Dim vlistitemx As VueElement
	vlistitemx.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
	Case 2
		vlistitemx.AddAttr(":two-line", True)
	Case 3
		vlistitemx.AddAttr(":three-line", True)
	End Select
	vlistitemx.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "child")
	'left action
	'
	VElement.SetData("child" , Null)
	VElement.SetData(DataSource, VElement.NewList)
	VElement.BindVueElement(vlistitemx)
	CleanUp
End Sub

'add a list item template to draw item
Sub AddListViewTemplate(props As ListViewItemOptions) 
	Dim elID As String = mName.ToLowerCase
	Dim parentID As String = CleanID(mName)
	'
	Dim templateID As String = $"${elID}template"$
	Dim headerID As String = $"${elID}header"$
	Dim dividerID As String = $"${elID}divider"$
	Dim listitemID As String = $"${elID}listitem"$
	Dim leftactionID As String = $"${elID}leftaction"$
	Dim leftactionBtnID As String = $"${elID}leftactionbtn"$
	Dim leftactionIconID As String = $"${elID}leftactionicon"$
	Dim leftcheckboxID As String = $"${elID}leftcheckbox"$
	Dim rightcheckboxID As String = $"${elID}rightcheckbox"$
	Dim avatarID As String = $"${elID}avatar"$
	Dim avatarImgID As String = $"${elID}avatarimage"$
	Dim avatarIconID As String = $"${elID}avataricon"$
	Dim itemiconID As String = $"${elID}itemicon"$
	Dim iconID As String = $"${elID}icon"$
	Dim contentID As String = $"${elID}content"$
	Dim titleID As String = $"${elID}title"$
	Dim subtitleID As String = $"${elID}subtitle"$
	Dim subtitle1ID As String = $"${elID}subtitle1"$
	Dim subtitle2ID As String = $"${elID}subtitle2"$
	Dim subtitle3ID As String = $"${elID}subtitle3"$
	Dim subtitle4ID As String = $"${elID}subtitle4"$
	Dim rightactionID As String = $"${elID}rightaction"$
	Dim rightactiontextID As String = $"${elID}rightactiontext"$
	Dim rightactionBtnID As String = $"${elID}rightactionbtn"$
	Dim rightactionIconID As String = $"${elID}rightactionicon"$
	Dim rightratingID As String = $"${elID}rightrating"$
	Dim leftswitchID As String = $"${elID}leftswitch"$
	Dim rightswitchID As String = $"${elID}rightswitch"$
	Dim rightchipID As String = $"${elID}rightchip"$
	'
	Dim rightavatarID As String = $"${elID}rightavatar"$
	Dim rightavatarImgID As String = $"${elID}rightavatarimage"$
	Dim rightavatarIconID As String = $"${elID}rightavataricon"$
	Dim rightavatarTextID As String = $"${elID}rightavatartext"$
	Dim avatarTextID As String = $"${elID}avatartext"$
	
	'in case the pointers are changed
	Dim xurl As String = props.url
	Dim xlefticon As String = props.lefticon
	Dim xlefticoncolor As String = props.lefticoncolor
	Dim xlefticonclass As String = props.lefticonclass
	'
	Dim xavatar As String = props.avatar
	Dim xavatarclass As String = props.avatarclass
	
	Dim xavataricon As String = props.avataricon
	Dim xavatariconcolor As String = props.avatariconcolor
	Dim xavatariconclass As String = props.avatariconclass
	
	Dim xicon As String = props.icon
	Dim xiconclass As String = props.iconclass
	Dim xiconcolor As String = props.iconcolor
	
	Dim xtitle As String = props.title
	Dim xsubtitle As String = props.subtitle
	Dim xsubtitle1 As String = props.subtitle1
	Dim xsubtitle2 As String = props.subtitle2
	Dim xsubtitle3 As String = props.subtitle3
	Dim xsubtitle4 As String = props.subtitle4

	'
	Dim xrighticon As String = props.righticon
	Dim xrighticonclass As String = props.righticonclass
	Dim xrighttext As String = props.righttext
	Dim xrighticoncolor As String = props.righticoncolor
	DataSource = props.dataSource
	Dim key As String = props.key
	
	Dim xactiveclass As String = props.activeclass
	Dim xleftcheckbox As String = props.leftcheckbox
	Dim xrightcheckbox As String = props.rightcheckbox
	Dim xshowleftcheckboxes As Boolean = props.showleftcheckboxes
	Dim xshowrightcheckboxes As Boolean = props.showrightcheckboxes
	Dim xshowrightrating As Boolean = props.showrightrating
	Dim xrightrating As String = props.rightrating
	'
	Dim xleftswitch As String = props.leftswitch
	Dim xshowleftswitch As Boolean = props.showleftswitches
	Dim xrightswitch As String = props.rightswitch
	Dim xshowrightswitch As Boolean = props.showrightswitches
	Dim xswitchinset As Boolean = props.switchinset
	Dim xitemavatarclass As String = props.itemavatarclass
	'
	Dim xrightchip As String = props.rightchip
	Dim xrightchipcolor As String = props.rightchipcolor
	Dim xvisible As String = props.visible
	'
	DataSource = DataSource.ToLowerCase
	key = key.ToLowerCase
	Dim xrightitemavatarclass As String = props.rightitemavatarclass
	Dim xhref As String = props.href
	Dim xtarget As String = props.target
	If xhref = "" Then xhref = "href"
	If xtarget = "" Then xtarget = "target"
	If xvisible = "" Then xvisible = "visible"
	'
	Dim sTemplate As String = $"<v-template id="${templateID}" v-for="(item, index) in ${DataSource}">
<v-subheader id="${headerID}" v-if="item.header">{{ item.header }}</v-subheader>
<v-divider id="${dividerID}" v-else-if="item.divider" :inset="item.inset"></v-divider>
<v-list-item id="${listitemID}" v-else="true" :key="item.${key}" :to="item.${xurl}" v-show="item.${xvisible}" :href="item.${xhref}" :target="item.${xtarget}"  active-class="${xactiveclass}">
<v-list-item-action id="${leftactionID}" v-if="item.${xlefticon} || ${xshowleftcheckboxes} || ${xshowleftswitch}">
<v-btn id="${leftactionBtnID}" :icon="true" v-if="item.${xlefticon}">
<v-icon id="${leftactionIconID}" ${props.lefticonattr} :color="item.${xlefticoncolor}" v-html="item.${xlefticon}" class="${xlefticonclass}"></v-icon>
</v-btn>
<v-checkbox id="${leftcheckboxID}" ${props.leftcheckboxattr} v-if="${xshowleftcheckboxes}" :item="item" v-model="item.${xleftcheckbox}" :input-value="item.${xleftcheckbox}"></v-checkbox>
<v-switch id="${leftswitchID}" ${props.leftswitchattr} v-if="${xshowleftswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xleftswitch}" :input-value="item.${xleftswitch}"></v-switch>
</v-list-item-action>
<v-list-item-avatar id="${avatarID}" class="${xitemavatarclass}" v-if="item.${xavatar} || item.${xavataricon} || item.${props.avatartext}">
<v-img id="${avatarImgID}" ${props.avatarattr} :src="item.${xavatar}" class="${xavatarclass}" v-if="item.${xavatar}"></v-img>
<v-icon id="${avatarIconID}" ${props.avatariconattr} v-if="item.${xavataricon}" :color="item.${xavatariconcolor}" class="${xavatariconclass}" v-html="item.${xavataricon}"></v-icon>
<span id="${avatarTextID}" v-if="item.${props.avatartext}" :color="item.${props.avatartextcolor}" class="${props.avatartextclass}" v-html="item.${props.avatartext}"></span>
</v-list-item-avatar>
<v-list-item-icon id="${itemiconID}" v-if="item.${xicon}">
<v-icon id="${iconID}" ${props.iconattr} :color="item.${xiconcolor}" class="${xiconclass}" v-html="item.${xicon}"></v-icon>
</v-list-item-icon>
<v-list-item-content id="${contentID}" v-if="item.${xtitle} || item.${xsubtitle} || item.${xsubtitle1} || item.${xsubtitle2} || item.${xsubtitle3} || item.${xsubtitle4}">
<v-list-item-title id="${titleID}" v-if="item.${xtitle}" v-html="item.${xtitle}"></v-list-item-title>
<v-list-item-subtitle id="${subtitleID}" v-if="item.${xsubtitle}" v-html="item.${xsubtitle}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle1ID}" v-if="item.${xsubtitle1}" v-html="item.${xsubtitle1}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle2ID}" v-if="item.${xsubtitle2}" v-html="item.${xsubtitle2}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle3ID}" v-if="item.${xsubtitle3}" v-html="item.${xsubtitle3}"></v-list-item-subtitle>
<v-list-item-subtitle id="${subtitle4ID}" v-if="item.${xsubtitle4}" v-html="item.${xsubtitle4}"></v-list-item-subtitle>
</v-list-item-content>
<v-list-item-avatar id="${rightavatarID}" class="${xrightitemavatarclass}" v-if="item.${props.rightavatar} || item.${props.rightavataricon} || item.${props.rightavatartext}">
<v-img id="${rightavatarImgID}" ${props.rightavatarattr} :src="item.${props.rightavatar}" class="${props.rightavatarclass}" v-if="item.${props.rightavatar}"></v-img>
<v-icon id="${rightavatarIconID}" ${props.rightavatariconattr} v-if="item.${props.rightavataricon}" :color="item.${props.rightavatariconcolor}" class="${props.rightavatariconclass}" v-html="item.${props.rightavataricon}"></v-icon>
<span id="${rightavatarTextID}" v-if="item.${props.rightavatartext}" :color="item.${props.rightavatartextcolor}" class="${props.rightavatartextclass}" v-html="item.${props.rightavatartext}"></span>
</v-list-item-avatar>
<v-list-item-action id="${rightactionID}" v-if="item.${xrighticon} || item.${xrighttext} || ${xshowrightcheckboxes} || ${xshowrightrating} || ${xshowrightswitch} || item.${xrightchip}">
<v-list-item-action-text ${props.righttextattr} id="${rightactiontextID}" v-if="item.${xrighttext}" v-html="item.${xrighttext}"></v-list-item-action-text>
<v-chip id="${rightchipID}" ${props.rightchipattr} v-if="item.${xrightchip}" :color="item.${xrightchipcolor}" dark small v-html="item.${xrightchip}"></v-chip>
<v-btn id="${rightactionBtnID}" :icon="true" v-if="item.${xrighticon}">
<v-icon id="${rightactionIconID}" ${props.righticonattr} v-html="item.${xrighticon}" class="${xrighticonclass}" :color="item.${xrighticoncolor}"></v-icon>
</v-btn>
<v-checkbox id="${rightcheckboxID}" ${props.rightcheckboxattr} v-if="${xshowrightcheckboxes}" :item="item" v-model="item.${xrightcheckbox}" :input-value="item.${xrightcheckbox}"></v-checkbox>
<v-rating id="${rightratingID}" ${props.rightratingattr} length="1" v-if="${xshowrightrating}" v-model="item.${xrightrating}" :value="item.${xrightrating}"></v-rating>
<v-switch id="${rightswitchID}" ${props.rightswitchattr} v-if="${xshowrightswitch}" :inset="${xswitchinset}" :item="item" v-model="item.${xrightswitch}" :input-value="item.${xrightswitch}"></v-switch>
</v-list-item-action>
</v-list-item>
<v-divider v-if="${props.hasdivider}" :inset="${props.insetdivider}"></v-divider>
</v-template>"$
	
	'
	sTemplate = sTemplate.Replace("~","$")
	
	BANano.GetElement(parentID).Append(sTemplate)
	'
	Dim vlistitemx As VueElement
	vlistitemx.Initialize(mCallBack, listitemID, listitemID)
	Select Case numLines
	Case 2
		vlistitemx.AddAttr(":two-line", True)
	Case 3
		vlistitemx.AddAttr(":three-line", True)
	End Select
	vlistitemx.SetOnEventOwn(mCallBack, $"${elID}_click"$, "click", "item")
	'left action
	'
'	Dim vleftcheckbox As VueElement
'	vleftcheckbox.Initialize(mCallBack, leftcheckboxID, leftcheckboxID)
'	If xshowleftcheckboxes Then
'		vleftcheckbox.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
'	End If
	'
'	Dim vrightcheckbox As VueElement
'	vrightcheckbox.Initialize(mCallBack, rightcheckboxID, rightcheckboxID)
'	If xshowrightcheckboxes Then
'		vrightcheckbox.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
'	End If
	
	Dim vleftlistitemaction As VueElement
	vleftlistitemaction.Initialize(mCallBack, leftactionID, leftactionID)
	'If xshowleftcheckboxes = False And xshowleftswitch = False Then
		vleftlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "click.stop", "item")
	'End If
	'
	Dim vrightlistitemaction As VueElement
	vrightlistitemaction.Initialize(mCallBack, rightactionID, rightactionID)
	'If xshowrightcheckboxes = False And xshowrightswitch = False Then
		vrightlistitemaction.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "click.stop", "item")
	'End If
	'
'	Dim vleftswitch As VueElement
'	vleftswitch.Initialize(mCallBack, leftswitchID, leftswitchID)
'	'If xshowleftswitch Then 
	'	vleftswitch.SetOnEventOwn(mCallBack, $"${elID}_leftclick"$, "change.stop", "item")
	'End If
	'
'	Dim vrightswitch As VueElement
'	vrightswitch.Initialize(mCallBack, rightswitchID, rightswitchID)
	'If xshowrightswitch Then
	'	vrightswitch.SetOnEventOwn(mCallBack, $"${elID}_rightclick"$, "change.stop", "item")
	'End If
	
	VElement.SetData(DataSource, VElement.NewList)
	VElement.BindVueElement(vlistitemx)
	VElement.BindVueElement(vleftlistitemaction)
	VElement.BindVueElement(vrightlistitemaction)
'	vlistitem.BindVueElement(vleftcheckbox)
'	vlistitem.BindVueElement(vrightcheckbox)
'	vlistitem.BindVueElement(vrightswitch)
'	vlistitem.BindVueElement(vleftswitch)
	CleanUp
End Sub

private Sub CleanUp
	
If Options.UsesVisible = False Then
	ListItem.RemoveAttr("v-show")		
End If

If Options.UseIcon = False Then
		ListItemIcon1.Remove
End If

If Options.UseLeftAction = False Then
		ListItemLeftAction.Remove
Else
	If  Options.UseLeftActionButton = False Then
		ListItemLeftButton.Remove
	End If
	If  Options.UseLeftActionCheckBox = False Then
		ListItemLeftCheckBox.Remove
	End If
	If  Options.UseLeftActionSwitch = False Then
		ListItemLeftSwitch.Remove
	End If
End If

If  Options.UseLeftAvatar = False Then
	ListItemAvatar.Remove
Else
	If  Options.UseLeftAvatarIcon = False Then
		ListItemAvatarIcon.Remove
	End If
	If  Options.UseLeftAvatarImage = False Then
		ListItemAvatarImage.Remove	
	End If
	If  Options.UseLeftAvatarText = False Then
		ListItemAvatarText.Remove
	End If
End If

If  Options.UseRightAction = False Then
	ListItemRightAction.Remove
Else
	If  Options.UseRightActionButton = False Then
		ListItemRightButton.Remove
	End If
	If  Options.UseRightActionCheckBox = False Then
		ListItemRightCheckBox.Remove
	End If
	If  Options.UseRightActionRating = False Then
		ListItemRightRating.Remove
	End If
	If  Options.UseRightActionSwitch = False Then
		ListItemRightSwitch.Remove
	End If	
	If  Options.UseRightActionText = False Then
		ListItemRightText.Remove
	End If
	If  Options.UseRightChip = False Then
		ListItemRightChip.Remove
	End If
End If

If  Options.UseRightAvatar = False Then
	ListItemRightAvatar.Remove
Else
	If  Options.UseRightAvatarIcon = False Then
		ListItemRightAvatarIcon.remove
	End If
	If  Options.UseRightAvatarImage = False Then
		ListItemRightAvatarImage.Remove
	End If
	If  Options.UseRightAvatarText = False Then
		ListItemRightAvatarText.Remove
	End If
End If
If Options.UseSubTitle = False Then
	ListItemSubTitle.Remove
End If
If Options.UseSubTitle1 = False Then
	ListItemSubTitle1.Remove
End If
If Options.UseSubTitle2 = False Then
	ListItemSubTitle2.remove
End If
If Options.UseSubTitle3 = False Then
	ListItemSubTitle3.remove
End If
If Options.UseSubTitle4 = False Then
	ListItemSubTitle4.remove
End If
If Options.UseTitle = False Then
	ListItemTitle.Remove
End If
End Sub

'get the item title to change attributes and styles
Sub ListItemTitle As VueElement
	Return VElement.GetVueElement($"${mName}title"$)
End Sub

'get the item subtitle to change attributes, styles and classes
Sub ListItemSubTitle As VueElement
	Return VElement.GetVueElement($"${mName}subtitle"$)
End Sub

'get the sub title 1 to change attributes, styles and classes
Sub ListItemSubTitle1 As VueElement
	Return VElement.GetVueElement($"${mName}subtitle1"$)
End Sub

'get the sub title 2 to change attributes, styles and classes
Sub ListItemSubTitle2 As VueElement
	Return VElement.GetVueElement($"${mName}subtitle2"$)
End Sub

'get the sub title 3 to change attributes, styles and classes
Sub ListItemSubTitle3 As VueElement
	Return VElement.GetVueElement($"${mName}subtitle3"$)
End Sub

'get the sub title 4 to change attributes, styles and classes
Sub ListItemSubTitle4 As VueElement
	Return VElement.GetVueElement($"${mName}subtitle4"$)
End Sub

'get the right chip to change attributes, styles and classes
Sub ListItemRightChip As VueElement
	Return VElement.GetVueElement($"${mName}rightchip"$)
End Sub

'get the right rating to change attributes, styles and classes
Sub ListItemRightRating As VueElement
	Return VElement.GetVueElement($"${mName}rightrating"$)
End Sub


'get the right text to change attributes, styles and classes
Sub ListItemRightText As VueElement
	Return VElement.GetVueElement($"${mName}rightactiontext"$)
End Sub

'get the left item action icon to change attributes, styles and classes
Sub ListItemLeftIcon As VueElement
	Return VElement.GetVueElement($"${mName}leftactionicon"$)
End Sub

'get the left check box to change attributes, styles and classes
Sub ListItemLeftCheckBox As VueElement
	Return VElement.GetVueElement($"${mName}leftcheckbox"$)
End Sub

'get the right check box to change attributes, styles and classes
Sub ListItemRightCheckBox As VueElement
	Return VElement.GetVueElement($"${mName}rightcheckbox"$)
End Sub

'get the left v-icon to change attributes, styles and classes
Sub ListItemIcon As VueElement
	Return VElement.GetVueElement($"${mName}icon"$)
End Sub

'get the list item icon to change attributes, styles and classes
Sub ListItemIcon1 As VueElement
	Return VElement.GetVueElement($"${mName}itemicon"$)
End Sub

'get the right icon to change attributes, styles and classes
Sub ListItemRightIcon As VueElement
	Return VElement.GetVueElement($"${mName}rightactionicon"$)
End Sub

'get the left switch to change attributes, styles and classes
Sub ListItemLeftSwitch As VueElement
	Return VElement.GetVueElement($"${mName}leftswitch"$)
End Sub

'get the right switch to change attributes, styles and classes
Sub ListItemRightSwitch As VueElement
	Return VElement.GetVueElement($"${mName}rightswitch"$)
End Sub

'get the list item to change attributes, styles and classes
Sub ListItem As VueElement
	Return VElement.GetVueElement($"${mName}listitem"$)
End Sub

'get the list left action to change attributes, styles and classes
Sub ListItemLeftAction As VueElement
	Return VElement.GetVueElement($"${mName}leftaction"$)
End Sub

'get the right action to change attributes, styles and classes
Sub ListItemRightAction As VueElement
	Return VElement.GetVueElement($"${mName}rightaction"$)
End Sub

'get the item avatar to change attributes, styles and classes
Sub ListItemAvatar As VueElement
	Return VElement.GetVueElement($"${mName}avatar"$)
End Sub

Sub ListItemAvatarImage As VueElement
	Return VElement.GetVueElement($"${mName}avatarimage"$)
End Sub

'get the avatar icon to change attributes, styles and classes
Sub ListItemAvatarIcon As VueElement
	Return VElement.GetVueElement($"${mName}avataricon"$)
End Sub

'get the item content to change attributes, styles and classes
Sub ListItemContent As VueElement
	Return VElement.GetVueElement($"${mName}content"$)
End Sub

'get right avatar to change attributes, styles and classes
Sub ListItemRightAvatar As VueElement
	Return VElement.GetVueElement($"${mName}rightavatar"$)
End Sub

'get the right avatar image to change attributes, styles and classes
Sub ListItemRightAvatarImage As VueElement
	Return VElement.GetVueElement($"${mName}rightavatarimage"$)
End Sub

'get right avatar icon to change attributes, styles and classes
Sub ListItemRightAvatarIcon As VueElement
	Return VElement.GetVueElement($"${mName}rightavataricon"$)
End Sub

'get avatar text to change attributes, styles and classes
Sub ListItemAvatarText As VueElement
	Return VElement.GetVueElement($"${mName}avatartext"$)
End Sub

'get right avatar text to change attributes, styles and classes
Sub ListItemRightAvatarText As VueElement
	Return VElement.GetVueElement($"${mName}rightavatartext"$)
End Sub

'get left button to change attributes, styles and classes
Sub ListItemLeftButton As VueElement
	Return VElement.GetVueElement($"${mName}leftactionbtn"$)
End Sub

'get right button to change attributes, styles and classes
Sub ListItemRightButton As VueElement
	Return VElement.GetVueElement($"${mName}rightactionbtn"$)
End Sub


'add a list view item
Sub AddItem(parent As String, key As String, iconName As String, iconColor As String, title As String, url As String) As VList
	parent = parent.ToLowerCase
	key = key.ToLowerCase
	'
	Dim nitem As Map = CreateMap()
	nitem.Put("id", key)
	If iconName <> "" Then nitem.Put("icon", iconName)
	If iconColor <> "" Then nitem.Put("iconcolor", iconColor)
	If title <> "" Then nitem.Put("title", title)
	If url <> "" Then nitem.Put("to", url)
	nitem.Put("parentid", parent)
	nitem.Put("visible", True)
	Records.Add(nitem)
	Return Me
End Sub

'add a list view item
Sub AddAvatar(parent As String, key As String, avatarImg As String, title As String, url As String) As VList
	parent = parent.ToLowerCase
	key = key.ToLowerCase
	'
	Dim nitem As Map = CreateMap()
	nitem.Put("id", key)
	If avatarImg <> "" Then nitem.Put("avatar", avatarImg)
	If title <> "" Then nitem.Put("title", title)
	If url <> "" Then nitem.Put("to", url)
	nitem.Put("parentid", parent)
	nitem.Put("visible", True)
	Records.Add(nitem)
	Return Me
End Sub

'the url should be replaced
Sub SetItemVisible(itemID As String, bVisible As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("visible", bVisible)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'the url should be replaced
Sub SetItemReplace(itemID As String) As VList
	Dim m As Map = CreateMap()
	m.Put("replace", True)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'the url should be appended
Sub SetItemAppend(itemID As String) As VList
	Dim m As Map = CreateMap()
	m.Put("append", True)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'update an icon in the list
Sub SetItemIcon(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("icon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'update an iconcolor in the list
Sub SetItemIconColor(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("iconcolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'add a header to the lust
Sub AddItemHeader(txt As String)
	Dim rec As Map = CreateMap()
	rec.Put("header", txt)
	Records.Add(rec)
End Sub

'add a divider
Sub AddItemDivider(binset As Boolean)
	Dim rec As Map = CreateMap()
	rec.Put("divider", True)
	If binset Then 
		rec.Put("inset", binset)
	End If
	Records.Add(rec)
End Sub

Sub SetItemRightChip(itemID As String, sValue As String) As VList
	Dim m As Map = CreateMap()
	m.Put("rightchip", sValue)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightChipColor(itemID As String, xColor As String) As VList
	Dim m As Map = CreateMap()
	m.Put("rightchipcolor", xColor)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemAvatar(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("avatar", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemTitle(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("title", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemSubTitle(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("subtitle", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemHREF(itemID As String, sHREF As String) As VList
	Dim m As Map = CreateMap()
	m.Put("href", sHREF)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemTarget(itemID As String, sTarget As String) As VList
	Dim m As Map = CreateMap()
	m.Put("target", sTarget)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemSubTitle1(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("subtitle1", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightIcon(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("righticon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightText(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("righttext", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightIconColor(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("righticoncolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightRating(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("rightrating", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemTo(itemID As String, sTo As String) As VList
	Dim m As Map = CreateMap()
	m.Put("to", sTo)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemLeftIcon(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("lefticon", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemLeftIconColor(itemID As String, sIcon As String) As VList
	Dim m As Map = CreateMap()
	m.Put("lefticoncolor", sIcon)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemLeftCheckBox(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("leftcheckbox", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemLeftSwitch(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("leftswitch", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightSwitch(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("rightswitch", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemRightCheckBox(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("rightcheckbox", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub AddItemLeftCheckBox(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	rec.Put("leftcheckbox", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	rec.Put("visible", True)
	Records.Add(rec)
End Sub

Sub AddItemLeftSwitch(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	rec.Put("leftswitch", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	rec.Put("visible", True)
	Records.Add(rec)
End Sub

Sub AddItemRightSwitch(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	rec.Put("rightswitch", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	rec.Put("visible", True)
	Records.Add(rec)
End Sub

Sub AddItemRightCheckBox(id As String, bChecked As Boolean, title As String, subtitle As String, subtitle1 As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", id)
	rec.Put("rightcheckbox", bChecked)
	If title <> "" Then rec.Put("title", title)
	If subtitle <> "" Then rec.Put("subtitle", subtitle)
	If subtitle1 <> "" Then rec.Put("subtitle1", subtitle1)
	rec.Put("visible", True)
	Records.Add(rec)
End Sub

'get checked / unchecked preferences
Sub GetPreferencesChecked(C As VueComponent, bShouldBe As Boolean) As List
	Dim nl As List
	nl.Initialize 
	Dim ds As String = DataSource
	Dim rs1 As List = C.GetData(ds)
	For Each rsm As Map In rs1
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If rsm.ContainsKey("leftcheckbox") Then
			brs = rsm.Get("leftcheckbox")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			brs = rsm.Get("rightcheckbox")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("rightswitch") Then
			brs = rsm.Get("rightswitch")
			If brs = bShouldBe Then nl.Add(sid)
		End If
		If rsm.ContainsKey("leftswitch") Then
			brs = rsm.Get("leftswitch")
			If brs = bShouldBe Then nl.Add(sid)
		End If
	Next
	Return nl
End Sub

'Check/Uncheck preferences
Sub SetPreferencesChecked(C As VueComponent, bShouldBe As Boolean)
	Dim ds As String = DataSource
	Dim rs1 As List = C.GetData(ds)
	Dim rsTot As Int = rs1.Size - 1
	Dim rsCnt As Int
	For rsCnt = 0 To rsTot
		Dim rsm As Map = rs1.Get(rsCnt)
		If rsm.ContainsKey("leftcheckbox") Then
			rsm.put("leftcheckbox", bShouldBe)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			rsm.put("rightcheckbox", bShouldBe)
		End If
		If rsm.ContainsKey("rightswitch") Then
			rsm.put("rightswitch", bShouldBe)
		End If
		If rsm.ContainsKey("leftswitch") Then
			rsm.put("leftswitch", bShouldBe)
		End If
		rs1.Set(rsCnt, rsm)
	Next
	C.SetData(ds, rs1)
End Sub

Sub GetPreferences(C As VueComponent) As Map
	Dim nm As Map = CreateMap()
	Dim ds As String = DataSource
	Dim rs1 As List = C.GetData(ds)
	For Each rsm As Map In rs1
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If rsm.ContainsKey("leftcheckbox") Then
			brs = rsm.Get("leftcheckbox")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("rightcheckbox") Then
			brs = rsm.Get("rightcheckbox")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("rightswitch") Then
			brs = rsm.Get("rightswitch")
			nm.Put(sid, brs)
		End If
		If rsm.ContainsKey("leftswitch") Then
			brs = rsm.Get("leftswitch")
			nm.Put(sid, brs)
		End If
	Next
	Return nm
End Sub

Sub SetPreferences(C As VueComponent, prefM As Map)
	Dim ds As String = DataSource
	Dim rs1 As List = C.GetData(ds)
	Dim rsTot As Int = rs1.Size - 1
	Dim rsCnt As Int
	For rsCnt = 0 To rsTot
		Dim rsm As Map = rs1.Get(rsCnt)
		Dim sid As String = rsm.Get("id")
		Dim brs As Boolean = False
		If prefM.ContainsKey(sid) Then
			brs = prefM.Get(sid)
			If rsm.ContainsKey("leftcheckbox") Then 
				rsm.Put("leftcheckbox", brs)
			End If	
			If rsm.ContainsKey("rightcheckbox") Then 
				rsm.Put("rightcheckbox", brs)
			End If
			If rsm.ContainsKey("rightswitch") Then 
				rsm.Put("rightswitch", brs)
			End If
			If rsm.ContainsKey("leftswitch") Then
				rsm.Put("leftswitch", brs)
			End If
			rs1.Set(rsCnt, rsm)
		End If
	Next
	C.SetData(ds, rs1)
End Sub

Sub SetItemAvatarIcon(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("avataricon", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

Sub SetItemAvatarIconColor(itemID As String, bChecked As Boolean) As VList
	Dim m As Map = CreateMap()
	m.Put("avatariconcolor", bChecked)
	BANanoShared.ListOfMapsUpdateRecord(Records, "id", itemID,  m)
	Return Me
End Sub

'create a BVAD3ListItem
Sub CreateListItem(id As String) As BVAD3ListItem
	Dim item As BVAD3ListItem
	item.Initialize(id)
	Return item
End Sub

'add an item to the listview usin BVAD3ListItem
Sub AddItem1(item As BVAD3ListItem) As VList
	Dim rec As Map = item.Item
	Records.Add(rec)
	Return Me
End Sub

'add an item using a map
Sub AddItem2(rec As Map) As VList
	Records.Add(rec)
	Return Me
End Sub

Sub BindVueElement(VE As VueElement)
	VElement.BindVueElement(VE)
End Sub

'add an item at realtime
Sub AddItem3(C As VueComponent, rowData As Map)
	rowData.Put("visible", True)
	C.SetDataPush(DataSource, rowData)
End Sub

'add a new row at the end of the items in realtime
Sub RealTimeAddItem(V As VueComponent, rowdata As Map)
	V.SetDataPush(DataSource, rowdata)
End Sub

'add a new row at the end of the items in realtime
Sub RealTimeAddItemOnApp(V As VuetifyApp, rowdata As Map)
	V.SetDataPush(DataSource, rowdata)
End Sub

'add a row at the top of the list
Sub RealTimeAddItemOnTop(V As VueComponent, rowdata As Map)
	V.SetDataUnshift(DataSource, rowdata)
End Sub

Sub RealTimeAddItemOnTopOnApp(V As VuetifyApp, rowdata As Map)
	V.SetDataUnshift(DataSource, rowdata)
End Sub

'remove item at position
Sub RealTimeRemoveItemAtPosition(C As VueComponent, pos As Int)
	C.RealTimeRemoveItemAtPosition(DataSource, pos)
End Sub

'remove item at position
Sub RealTimeRemoveItemAtPositionOnApp(C As VuetifyApp, pos As Int)
	C.RealTimeRemoveItemAtPosition(DataSource, pos)
End Sub

'remove an item where
Sub RealTimeRemoveItem(C As VueComponent, prop As String, value As String)
	C.RealTimeRemoveItem(DataSource, prop, value)
End Sub

Sub RealTimeRemoveItemOnApp(C As VuetifyApp, prop As String, value As String)
	C.RealTimeRemoveItem(DataSource, prop, value)
End Sub

'update item where
Sub RealTimeUpdateItem(C As VueComponent, prop As String, value As String, item As Map)
	C.RealTimeUpdateItem(DataSource, prop, value, item)
End Sub

Sub RealTimeUpdateItemOnApp(C As VuetifyApp, prop As String, value As String, item As Map)
	C.RealTimeUpdateItem(DataSource, prop, value, item)
End Sub

'update item where
Sub RealTimeUpdateItemAtPosition(C As VueComponent, pos As Int, item As Map)
	C.RealTimeUpdateItemAtPosition(DataSource, pos, item)
End Sub

Sub RealTimeUpdateItemAtPositionOnApp(C As VuetifyApp, pos As Int, item As Map)
	C.RealTimeUpdateItemAtPosition(DataSource, pos, item)
End Sub

'get data where
Sub RealTimeFindItem(C As VueComponent, whereMap As Map) As Map
	Return C.RealTimeFindItem(DataSource, whereMap)
End Sub

Sub RealTimeFindItemOnApp(C As VuetifyApp, whereMap As Map) As Map
	Return C.RealTimeFindItem(DataSource, whereMap)
End Sub

'find item at position
Sub RealTimeFindItemAtPosition(C As VueComponent, pos As Int) As Map
	Return C.RealTimeFindItemAtPosition(DataSource, pos)
End Sub


Sub RealTimeFindItemAtPositionOnApp(C As VuetifyApp, pos As Int) As Map
	Return C.RealTimeFindItemAtPosition(DataSource, pos)
End Sub


'find item position
Sub RealTimeFindItemPosition(C As VueComponent, whereMap As Map) As Int
	Return C.RealTimeFindItemPosition(DataSource, whereMap)
End Sub

Sub RealTimeFindItemPositionOnApp(C As VuetifyApp, whereMap As Map) As Int
	Return C.RealTimeFindItemPosition(DataSource, whereMap)
End Sub

'read an item where
Sub RealTimeReadItem(V As VueComponent, prop As String, value As String) As Map
	Return V.RealTimeReadItem(DataSource, prop, value)
End Sub

Sub RealTimeReadItemOnApp(V As VuetifyApp, prop As String, value As String) As Map
	Return V.RealTimeReadItem(DataSource, prop, value)
End Sub


Sub BindState(C As VueComponent)
	VC = c
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			C.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		C.SetCallBack(k, cb)
	Next
End Sub

Sub BindStateOnApp(c As VuetifyApp)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			C.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		C.SetCallBack(k, cb)
	Next
End Sub

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("d-sm-none d-md-flex")
End Sub
	
Sub HiddenMDOnly
	AddClass("d-md-none d-lg-flex")
End Sub
	
Sub HiddenLGOnly
	AddClass("d-lg-none d-xl-flex")
End Sub
	
Sub HiddenXLOnly
	AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
	
'End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
'Sub HiddenXLAndDown
	
'End Sub
'
'Sub HiddenXSAndUp
	
'End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
'Sub HiddenXLAndUp
	
'End Sub	

Sub HiddenOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("hidden-xs-only")
End Sub

Sub HideOnlyOnSM
	AddClass("d-sm-none d-md-flex")
End Sub

Sub HideOnlyOnMD
	AddClass("d-md-none d-lg-flex")
End Sub

Sub HideOnlyOnLG
	AddClass("d-lg-none d-xl-flex")
End Sub

Sub HideOnlyOnXL
	AddClass("d-xl-none")
End Sub

Sub VisibleOnAll
	AddClass("d-flex")
End Sub

Sub VisibleOnlyOnXS
	AddClass("d-flex d-sm-none")
End Sub

Sub VisibleOnlyOnSM
	AddClass("d-none d-sm-flex d-md-none")
End Sub

Sub VisibleOnlyOnMD
	AddClass("d-none d-md-flex d-lg-none")
End Sub

Sub VisibleOnlyOnLG
	AddClass("d-none d-lg-flex d-xl-none")
End Sub

Sub VisibleOnlyOnXL
	AddClass("d-none d-xl-flex")
End Sub

'get the items
Sub GetItems(C As VueComponent) As List
	Dim res As List = C.GetData(DataSource)
	Return res
End Sub

'get the items
Sub GetItemsOnApp(C As VuetifyApp) As List
	Dim res As List = C.GetData(DataSource)
	Return res
End Sub

'set the items
Sub SetItems(C As VueComponent, lst As List)
	Records = lst
	C.SetData(DataSource, lst)
End Sub

'set the items
Sub SetItemsOnApp(C As VuetifyApp, lst As List)
	Records = lst
	C.SetData(DataSource, lst)
End Sub

'set the items
Sub UpdateItems(C As VueComponent, lst As List)
	Records = lst
	C.SetData(DataSource, lst)
End Sub

'set the items
Sub UpdateItemsOnApp(C As VuetifyApp, lst As List)
	Records = lst
	C.SetData(DataSource, lst)
End Sub

Sub Hide
	UpdateVisible(VC, False)
End Sub

Sub Show
	UpdateVisible(VC, True)
End Sub

Sub Enable
	UpdateDisabled(VC, False)
End Sub

Sub Disable
	UpdateDisabled(VC, True)
End Sub

'add right icons on each item of the list, before setting the list items
Sub AddRightIcon(recs As List, iconName As String, iconColor As String) As List
	'add delete icon to each item
	Dim ctot As Int = recs.Size - 1
	Dim cCnt As Int
	For cCnt = 0 To ctot
		Dim obj As Map = recs.Get(cCnt)
		obj.Put("righticon", iconName)
		obj.Put("righticoncolor", iconColor)
		recs.Set(cCnt, obj)
	Next
	Return recs
End Sub

'add an avatar to each item in the list
Sub AddAvatar1(recs As List, avatar As String)
	'add delete icon to each item
	Dim ctot As Int = recs.Size - 1
	Dim cCnt As Int
	For cCnt = 0 To ctot
		Dim obj As Map = recs.Get(cCnt)
		obj.Put("avatar", avatar)
		recs.Set(cCnt, obj)
	Next
End Sub