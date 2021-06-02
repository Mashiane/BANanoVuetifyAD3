B4J=true
Group=Default Group\ToolBars
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Divider, DisplayName: Divider, FieldType: String, DefaultValue: /, Description: Divider
#DesignerProperty: Key: Items, DisplayName: Items, FieldType: String, DefaultValue: , Description: Items
#DesignerProperty: Key: Large, DisplayName: Large, FieldType: Boolean, DefaultValue: false, Description: Large
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
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
	Private bDark As Boolean
	Private sDivider As String
	Private sItems As String
	Private bLarge As Boolean
	Private bLight As Boolean
	Private sTextColor As String
	Private sTextColorIntensity As String
	Private sVIf As String
	Private sVShow As String
	Private xitems As List
	Private bHidden As Boolean
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
	xitems.Initialize 
	sVShow = $"${mName}show"$
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bDark = Props.Get("Dark")
sDivider = Props.Get("Divider")
sItems = Props.Get("Items")
bLarge = Props.Get("Large")
bLight = Props.Get("Light")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sVIf = Props.Get("VIf")
bHidden = Props.Get("Hidden")
sVShow = Props.Get("VShow")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-breadcrumbs id="${mName}"></v-breadcrumbs>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-breadcrumbs"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Dark = bDark
VElement.AddAttr("divider", sDivider)
VElement.Bind("items", sItems)
VElement.Large = bLarge
VElement.Light = bLight
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.TextColorIntensity = sTextColorIntensity
VElement.VIf = sVIf
VElement.VShow = sVShow
VElement.SetData(sItems, VElement.NewList)
velement.SetData(sVShow, Not(bHidden))
VElement.BindAllEvents
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VBreadCrumbs
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VBreadCrumbs
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VBreadCrumbs
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VBreadCrumbs
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VBreadCrumbs
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub Clear(VC As VueComponent)
	VC.SetData(sItems, VC.NewList)
	xitems.Initialize 
End Sub

Sub AddItem(sID As String, sText As String, sTo As String, sHref As String, bExact As Boolean, bLink As Boolean,  bDisabled As Boolean) 
	Dim ni As Map = CreateMap()
	ni.Put("disabled", bDisabled)
	ni.Put("exact", bExact)
	ni.Put("href", sHref)
	ni.Put("link", bLink)
	ni.Put("text", sText)
	ni.Put("to", sTo)
	ni.Put("id", sID)
	xitems.Add(ni)
End Sub

Sub Refresh(VC As VueComponent)
	VC.SetData(sItems, xitems)
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub
