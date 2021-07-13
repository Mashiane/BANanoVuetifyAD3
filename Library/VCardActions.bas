B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Action_Click (id As String)

#DesignerProperty: Key: ItemType, DisplayName: ItemType, FieldType: String, DefaultValue:  none, Description: Item Type, List: button|fab|icon-right|icon-left|none
#DesignerProperty: Key: ItemKeys, DisplayName: Item Keys (;), FieldType: String, DefaultValue:  add; edit; delete, Description: Item Icons
#DesignerProperty: Key: ItemIcons, DisplayName: Item Icons (;), FieldType: String, DefaultValue:  mdi-plus; mdi-pencil; mdi-delete, Description: Item Icons
#DesignerProperty: Key: ItemColors, DisplayName: Item Colors (;), FieldType: String, DefaultValue:  green; amber; red, Description: Item Colors
#DesignerProperty: Key: ItemTexts, DisplayName: Item Texts (;), FieldType: String, DefaultValue:  Add; Edit; Delete, Description: Item Texts

#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Textcolor, FieldType: String, DefaultValue: , Description: Textcolor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Textcolorintensity, FieldType: String, DefaultValue: , Description: Textcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
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
	'Private mVShow As String = ""
	Private mVIf As String = ""
	Private sColor As String
	Private sColorintensity As String
	Private sTextcolor As String
	Private sTextcolorintensity As String
	Private sItemKeys As String
	Private sItemIcons As String
	Private sItemColors As String
	Private sItemType As String
	Private sButtons As String
	Private sItemTexts As String
	Private bHasButtons As Boolean
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
	'mVShow = $"${mName}show"$
	sButtons = $"${mName}buttons"$
	bHasButtons = False
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mVIf = Props.Get("VIf")
		sColor = Props.Get("Color")
		sColorintensity = Props.Get("ColorIntensity")
		sTextcolor = Props.Get("TextColor")
		sTextcolorintensity = Props.Get("TextColorIntensity")
		sItemKeys = Props.GetDefault("ItemKeys","")
		sItemIcons = Props.GetDefault("ItemIcons","")
		sItemColors = Props.GetDefault("ItemColors","")
		sItemType = Props.GetDefault("ItemType", "none")
		sItemTexts = Props.GetDefault("ItemTexts", "")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-card-actions ref="${mName}" id="${mName}"></v-card-actions>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-card-actions"
	'
	Dim rs As List
	rs.Initialize 
		'
	sItemKeys = sItemKeys.Replace(",", ";")
	sItemIcons = sItemIcons.Replace(",", ";")
	sItemColors = sItemColors.Replace(",", ";")
	sItemTexts = sItemTexts.Replace(",", ";")
	
	Dim xkeys As List = BANanoShared.StrParse(";", sItemKeys)
	Dim xicons As List = BANanoShared.StrParse(";", sItemIcons)
	Dim xcolors As List = BANanoShared.StrParse(";", sItemColors)
	Dim xtexts As List = BANanoShared.StrParse(";", sItemTexts)
		'
	xkeys = BANanoShared.ListTrimItems(xkeys)
	xicons = BANanoShared.ListTrimItems(xicons)
	xcolors = BANanoShared.ListTrimItems(xcolors)
		'
	Dim tItems As Int = xkeys.Size - 1
	If tItems >= 0 Then
		bHasButtons = True
	End If
	For itemCnt = 0 To tItems
		Dim iKey As String = xkeys.Get(itemCnt)
		Dim iIco As String = xicons.Get(itemCnt)
		Dim iCol As String = xcolors.Get(itemCnt)
		Dim iTxt As String = xtexts.Get(itemCnt)
		'
		Dim nm As Map = CreateMap()
		nm.Put("id", iKey)
		nm.Put("icon", iIco)
		nm.Put("color", iCol)
		nm.Put("text", iTxt)
		rs.Add(nm)
	Next	
	'
	If sItemType = "none" Then 
		bHasButtons = False
	End If
	 
	If bHasButtons Then
		VElement.Append($"<v-btn id="${mName}button" class="mx-2" v-for="item in ${sButtons}" :key="item.id" fab dark small :color="item.color">
        	<v-icon v-html=item.icon></v-icon>
      	</v-btn>"$)
		If SubExists(mCallBack, $"${mName}_action_click"$) Then  
			VElement.GetButton.SetOnEventOwn(mCallBack, $"${mName}_action_click"$, "click", "item.id")
			Dim args As List
			VElement.SetMethod(mCallBack, $"${mName}_action_click"$, args)
			Dim btnt As VueElement = VElement.GetButton
			VElement.BindVueElement(btnt)
		End If
		VElement.SetData(sButtons, rs)
	End If
		
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	'VElement.VShow = mVShow
	'VElement.SetData(mVShow, True)
	VElement.VIf = mVIf
	VElement.Color = VElement.BuildColor(sColor, sColorintensity)
	VElement.TextColor = sTextcolor
	VElement.TextColorIntensity = sTextcolorintensity
	VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VCardActions
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VCardActions
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VCardActions
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VCardActions
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VCardActions
	VC.SetData(mVIf, b)
	'VC.SetData(mVShow, b)
	Return Me
End Sub

Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub

Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		VC.SetCallBack(k, cb)
	Next
End Sub