B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12


#Event: Click (item As Map)
#Event: RightClick (item As Map)
#Event: LeftClick (item As Map)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Bench, DisplayName: Bench, FieldType: String, DefaultValue: , Description: Bench
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: ItemHeight, DisplayName: ItemHeight, FieldType: String, DefaultValue: 64, Description: ItemHeight
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
'
#DesignerProperty: Key: UseLeftAction, DisplayName: UseLeftAction, FieldType: Boolean, DefaultValue: True, Description: UseLeftAction
#DesignerProperty: Key: UseLeftActionButton, DisplayName: UseLeftActionButton, FieldType: Boolean, DefaultValue: True, Description: UseLeftActionButton
#DesignerProperty: Key: UseLeftActionCheckBox, DisplayName: UseLeftActionCheckBox, FieldType: Boolean, DefaultValue: True, Description: UseLeftActionCheckBox
#DesignerProperty: Key: UseLeftActionSwitch, DisplayName: UseLeftActionSwitch, FieldType: Boolean, DefaultValue: True, Description: UseLeftActionSwitch

#DesignerProperty: Key: UseLeftAvatar, DisplayName: UseLeftAvatar, FieldType: Boolean, DefaultValue: True, Description: UseLeftAvatar
#DesignerProperty: Key: UseLeftAvatarImage, DisplayName: UseLeftAvatarImage, FieldType: Boolean, DefaultValue: True, Description: UseLeftAvatarImage
#DesignerProperty: Key: UseLeftAvatarIcon, DisplayName: UseLeftAvatarIcon, FieldType: Boolean, DefaultValue: True, Description: UseLeftAvatarIcon
#DesignerProperty: Key: UseLeftAvatarText, DisplayName: UseLeftAvatarText, FieldType: Boolean, DefaultValue: True, Description: UseLeftAvatarText

#DesignerProperty: Key: UseIcon, DisplayName: UseIcon, FieldType: Boolean, DefaultValue: True, Description: UseIcon
#DesignerProperty: Key: UseTitle, DisplayName: UseTitle, FieldType: Boolean, DefaultValue: True, Description: UseTitle
#DesignerProperty: Key: UseSubTitle, DisplayName: UseSubTitle, FieldType: Boolean, DefaultValue: True, Description: UseSubTitle
#DesignerProperty: Key: UseSubTitle1, DisplayName: UseSubTitle1, FieldType: Boolean, DefaultValue: True, Description: UseSubTitle1
#DesignerProperty: Key: UseSubTitle2, DisplayName: UseSubTitle2, FieldType: Boolean, DefaultValue: True, Description: UseSubTitle2
#DesignerProperty: Key: UseSubTitle3, DisplayName: UseSubTitle3, FieldType: Boolean, DefaultValue: True, Description: UseSubTitle3
#DesignerProperty: Key: UseSubTitle4, DisplayName: UseSubTitle4, FieldType: Boolean, DefaultValue: True, Description: UseSubTitle4

#DesignerProperty: Key: UseRightAvatar, DisplayName: UseRightAvatar, FieldType: Boolean, DefaultValue: True, Description: UseRightAvatar
#DesignerProperty: Key: UseRightAvatarIcon, DisplayName: UseRightAvatarIcon, FieldType: Boolean, DefaultValue: True, Description: UseRightAvatarIcon
#DesignerProperty: Key: UseRightAvatarImage, DisplayName: UseRightAvatarImage, FieldType: Boolean, DefaultValue: True, Description: UseRightAvatarImage
#DesignerProperty: Key: UseRightAvatarText, DisplayName: UseRightAvatarText, FieldType: Boolean, DefaultValue: True, Description: UseRightAvatarText

#DesignerProperty: Key: UseRightChip, DisplayName: UseRightChip, FieldType: Boolean, DefaultValue: True, Description: UseRightChip

#DesignerProperty: Key: UseRightAction, DisplayName: UseRightAction, FieldType: Boolean, DefaultValue: True, Description: UseRightAction
#DesignerProperty: Key: UseRightActionButton, DisplayName: UseRightActionButton, FieldType: Boolean, DefaultValue: True, Description: UseRightActionButton
#DesignerProperty: Key: UseRightActionCheckBox, DisplayName: UseRightActionCheckBox, FieldType: Boolean, DefaultValue: True, Description: UseRightActionCheckBox
#DesignerProperty: Key: UseRightActionRating, DisplayName: UseRightActionRating, FieldType: Boolean, DefaultValue: True, Description: UseRightActionRating
#DesignerProperty: Key: UseRightActionSwitch, DisplayName: UseRightActionSwitch, FieldType: Boolean, DefaultValue: True, Description: UseRightActionSwitch
#DesignerProperty: Key: UseRightActionText, DisplayName: UseRightActionText, FieldType: Boolean, DefaultValue: True, Description: UseRightActionText

#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
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
	Private sBench As String
	Private sHeight As String
	Private sItemHeight As String
	Private sItems As String
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private sWidth As String
	Private bUseIcon As Boolean
	Private bUseLeftAction As Boolean
	Private bUseLeftActionButton As Boolean
	Private bUseLeftActionCheckBox As Boolean
	Private bUseLeftActionSwitch As Boolean
	Private bUseLeftAvatar As Boolean
	Private bUseLeftAvatarIcon As Boolean
	Private bUseLeftAvatarImage As Boolean
	Private bUseLeftAvatarText As Boolean
	Private bUseRightAction As Boolean
	Private bUseRightActionButton As Boolean
	Private bUseRightActionCheckBox As Boolean
	Private bUseRightActionRating As Boolean
	Private bUseRightActionSwitch As Boolean
	Private bUseRightActionText As Boolean
	Private bUseRightAvatar As Boolean
	Private bUseRightAvatarIcon As Boolean
	Private bUseRightAvatarImage As Boolean
	Private bUseRightAvatarText As Boolean
	Private bUseRightChip As Boolean
	Private bUseSubTitle As Boolean
	Private bUseSubTitle1 As Boolean
	Private bUseSubTitle2 As Boolean
	Private bUseSubTitle3 As Boolean
	Private bUseSubTitle4 As Boolean
	Private bUseTitle As Boolean 
	Private xTemplate As String
	Private bHidden As Boolean
	Private svshow As String
	private sVIf as string
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
	bUseIcon = True
	bUseLeftAction = True
	bUseLeftActionButton = True
	bUseLeftActionCheckBox = True
	bUseLeftActionSwitch = True
	bUseLeftAvatar = True
	bUseLeftAvatarIcon = True
	bUseLeftAvatarImage = True
	bUseLeftAvatarText = True
	bUseRightAction = True
	bUseRightActionButton = True
	bUseRightActionCheckBox = True
	bUseRightActionRating = True
	bUseRightActionSwitch = True
	bUseRightActionText = True
	bUseRightAvatar = True
	bUseRightAvatarIcon = True
	bUseRightAvatarImage = True
	bUseRightAvatarText = True
	bUseRightChip = True
	bUseSubTitle = True
	bUseSubTitle1 = True
	bUseSubTitle2 = True
	bUseSubTitle3 = True
	bUseSubTitle4 = True
	bUseTitle = True
	svshow = $"${mname}show"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		sBench = Props.GetDefault("Bench", "")
		sHeight = Props.GetDefault("Height", "")
		sItemHeight = Props.GetDefault("ItemHeight", "")
		sMaxHeight = Props.GetDefault("MaxHeight", "")
		sMaxWidth = Props.GetDefault("MaxWidth", "")
		sMinHeight = Props.GetDefault("MinHeight", "")
		sMinWidth = Props.GetDefault("MinWidth", "")
		sWidth = Props.GetDefault("Width", "")
		'
		bUseIcon = Props.GetDefault("UseIcon", True)
		bUseIcon = BANanoShared.parseBool(bUseIcon)
		bUseLeftAction = Props.GetDefault("UseLeftAction", True)
		bUseLeftAction = BANanoShared.parseBool(bUseLeftAction)
		bUseLeftActionButton = Props.GetDefault("UseLeftActionButton", True)
		bUseLeftActionButton = BANanoShared.parseBool(bUseLeftActionButton)
		bUseLeftActionCheckBox = Props.GetDefault("UseLeftActionCheckBox", True)
		bUseLeftActionCheckBox = BANanoShared.parseBool(bUseLeftActionCheckBox)
		bUseLeftActionSwitch = Props.GetDefault("UseLeftActionSwitch", True)
		bUseLeftActionSwitch = BANanoShared.parseBool(bUseLeftActionSwitch)
		bUseLeftAvatar = Props.GetDefault("UseLeftAvatar", True)
		bUseLeftAvatar = BANanoShared.parseBool(bUseLeftAvatar)
		bUseLeftAvatarIcon = Props.GetDefault("UseLeftAvatarIcon", True)
		bUseLeftAvatarIcon = BANanoShared.parseBool(bUseLeftAvatarIcon)
		bUseLeftAvatarImage = Props.GetDefault("UseLeftAvatarImage", True)
		bUseLeftAvatarImage = BANanoShared.parseBool(bUseLeftAvatarImage)
		bUseLeftAvatarText = Props.GetDefault("UseLeftAvatarText", True)
		bUseLeftAvatarText = BANanoShared.parseBool(bUseLeftAvatarText)
		bUseRightAction = Props.GetDefault("UseRightAction", True)
		bUseRightAction = BANanoShared.parseBool(bUseRightAction)
		bUseRightActionButton = Props.GetDefault("UseRightActionButton", True)
		bUseRightActionButton = BANanoShared.parseBool(bUseRightActionButton)
		bUseRightActionCheckBox = Props.GetDefault("UseRightActionCheckBox", True)
		bUseRightActionCheckBox = BANanoShared.parseBool(bUseRightActionCheckBox)
		bUseRightActionRating = Props.GetDefault("UseRightActionRating", True)
		bUseRightActionRating = BANanoShared.parseBool(bUseRightActionRating)
		bUseRightActionSwitch = Props.GetDefault("UseRightActionSwitch", True)
		bUseRightActionSwitch = BANanoShared.parseBool(bUseRightActionSwitch)
		bUseRightActionText = Props.GetDefault("UseRightActionText", True)
		bUseRightActionText = BANanoShared.parseBool(bUseRightActionText)
		bUseRightAvatar = Props.GetDefault("UseRightAvatar", True)
		bUseRightAvatar = BANanoShared.parseBool(bUseRightAvatar)
		bUseRightAvatarIcon = Props.GetDefault("UseRightAvatarIcon", True)
		bUseRightAvatarIcon = BANanoShared.parseBool(bUseRightAvatarIcon)
		bUseRightAvatarImage = Props.GetDefault("UseRightAvatarImage", True)
		bUseRightAvatarImage = BANanoShared.parseBool(bUseRightAvatarImage)
		bUseRightAvatarText = Props.GetDefault("UseRightAvatarText", True)
		bUseRightAvatarText = BANanoShared.parseBool(bUseRightAvatarText)
		bUseRightChip = Props.GetDefault("UseRightChip", True)
		bUseRightChip = BANanoShared.parseBool(bUseRightChip)
		bUseSubTitle = Props.GetDefault("UseSubTitle", True)
		bUseSubTitle = BANanoShared.parseBool(bUseSubTitle)
		bUseSubTitle1 = Props.GetDefault("UseSubTitle1", True)
		bUseSubTitle1 = BANanoShared.parseBool(bUseSubTitle1)
		bUseSubTitle2 = Props.GetDefault("UseSubTitle2", True)
		bUseSubTitle2 = BANanoShared.parseBool(bUseSubTitle2)
		bUseSubTitle3 = Props.GetDefault("UseSubTitle3", True)
		bUseSubTitle3 = BANanoShared.parseBool(bUseSubTitle3)
		bUseSubTitle4 = Props.GetDefault("UseSubTitle4", True)
		bUseSubTitle4 = BANanoShared.parseBool(bUseSubTitle4)
		bUseTitle = Props.GetDefault("UseTitle", True)
		bUseTitle = BANanoShared.parseBool(bUseTitle)
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden) 
		sVIf = Props.GetDefault("VIf","")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-virtual-scroll ref="${mName}" id="${mName}"></v-virtual-scroll>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-virtual-scroll" 
	'
	VElement.Append($"<v-template id="${mName}template" v-slot:default="{ item }"></v-template>"$)
	
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("bench", sBench)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr("item-height", sItemHeight)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr("width", sWidth)
	VElement.VShow = svshow
	VElement.SetData(svshow, Not(bHidden))
	VElement.BindAllEvents
End Sub

'set options from definition
Sub SetOptions(opt As VListOptions)
	Dim tmp As ListViewItemOptions = opt.Options
	xTemplate = opt.Template
	Select Case xTemplate
	Case "none"
	Case "list"
		'AddListViewTemplate(tmp)
	Case "list-item-group"
		'AddListItemGroupTemplate(tmp)
	Case "tree"
		'AddListViewGroupTemplate(tmp)
	End Select
	VElement.setdata(tmp.dataSource, VElement.NewList)
	VElement.AddAttr(":items", tmp.dataSource)
End Sub


public Sub Remove() 
	mElement.Empty 
	BANano.SetMeToNull 
End Sub


Sub AddClass(s As String) As VVirtualScroll 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VVirtualScroll 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VVirtualScroll 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VVirtualScroll 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VVirtualScroll 
	VC.SetData(sVIf, b) 
	VC.SetData(svshow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub
