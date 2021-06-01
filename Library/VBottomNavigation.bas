B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Change (item As Object)

#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: App, DisplayName: App, FieldType: Boolean, DefaultValue: True, Description: App
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue: , Description: BackgroundColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundColorIntensity, DisplayName: BackgroundColorIntensity, FieldType: String, DefaultValue: , Description: BackgroundColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Fixed, DisplayName: Fixed, FieldType: Boolean, DefaultValue: false, Description: Fixed
#DesignerProperty: Key: Grow, DisplayName: Grow, FieldType: Boolean, DefaultValue: false, Description: Grow
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 56 , Description: Height
#DesignerProperty: Key: HideOnScroll, DisplayName: HideOnScroll, FieldType: Boolean, DefaultValue: false, Description: HideOnScroll
#DesignerProperty: Key: Horizontal, DisplayName: Horizontal, FieldType: Boolean, DefaultValue: false, Description: Horizontal
#DesignerProperty: Key: InputValue, DisplayName: InputValue, FieldType: Boolean, DefaultValue: True, Description: InputValue
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Mandatory, DisplayName: Mandatory, FieldType: Boolean, DefaultValue: false, Description: Mandatory
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: ScrollTarget, DisplayName: ScrollTarget, FieldType: String, DefaultValue: , Description: ScrollTarget
#DesignerProperty: Key: ScrollThreshold, DisplayName: ScrollThreshold, FieldType: String, DefaultValue: , Description: ScrollThreshold
#DesignerProperty: Key: Shift, DisplayName: Shift, FieldType: Boolean, DefaultValue: false, Description: Shift
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private sActiveClass As String
	Private bApp As Boolean
	Private sBackgroundColor As String
	Private sBackgroundColorIntensity As String
	Private sColor As String
	Private sColorIntensity As String
	Private bDark As Boolean
	Private bFixed As Boolean
	Private bGrow As Boolean
	Private sHeight As String
	Private bHideOnScroll As Boolean
	Private bHorizontal As Boolean
	Private bInputValue As Boolean
	Private bLight As Boolean
	Private bMandatory As Boolean
	Private sMaxHeight As String
	Private sMaxWidth As String
	Private sMinHeight As String
	Private sMinWidth As String
	Private sScrollTarget As String
	Private sScrollThreshold As String
	Private bShift As Boolean
	Private sVIf As String
	Private sVShow As String
	Private sValue As String
	Private sWidth As String
	Private xitems As List
	Private itemsName As String
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
	itemsName = $"${mName}items"$
End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
		bApp = Props.Get("App")
		sBackgroundColor = Props.Get("BackgroundColor")
		sBackgroundColorIntensity = Props.Get("BackgroundColorIntensity")
		sColor = Props.Get("Color")
		sColorIntensity = Props.Get("ColorIntensity")
		bDark = Props.Get("Dark")
		bFixed = Props.Get("Fixed")
		bGrow = Props.Get("Grow")
		sHeight = Props.Get("Height")
		bHideOnScroll = Props.Get("HideOnScroll")
		bHorizontal = Props.Get("Horizontal")
		bInputValue = Props.Get("InputValue")
		bLight = Props.Get("Light")
		bMandatory = Props.Get("Mandatory")
		sMaxHeight = Props.Get("MaxHeight")
		sMaxWidth = Props.Get("MaxWidth")
		sMinHeight = Props.Get("MinHeight")
		sMinWidth = Props.Get("MinWidth")
		sScrollTarget = Props.Get("ScrollTarget")
		sScrollThreshold = Props.Get("ScrollThreshold")
		bShift = Props.Get("Shift")
		sVIf = Props.Get("VIf")
		sVShow = Props.Get("VShow")
		sValue = Props.Get("Value")
		sWidth = Props.Get("Width")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-bottom-navigation id="${mName}"></v-bottom-navigation>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-bottom-navigation"
	'
	'add buttons for navigation
	VElement.Append($"<v-btn :key="item.id" :value="item.value" :to="item.to" :color="item.color" id="${mName}button" v-for="(item, i) in ${itemsName}">
	<span id="${mName}text">{{ item.caption }}</span>
	<v-icon id="${mName}icon">{{ item.icon }}</v-icon>
	</v-btn>"$)
	
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
	VElement.AddAttr(":app", bApp)
	VElement.BackgroundColorAttr = VElement.BuildColor(sBackgroundColor, sBackgroundColorIntensity)
	VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
	VElement.AddAttr(":dark", bDark)
	VElement.AddAttr(":fixed", bFixed)
	VElement.AddAttr(":grow", bGrow)
	VElement.AddAttr("height", sHeight)
	VElement.AddAttr(":hide-on-scroll", bHideOnScroll)
	VElement.AddAttr(":horizontal", bHorizontal)
	VElement.AddAttr(":input-value", bInputValue)
	VElement.AddAttr(":light", bLight)
	VElement.AddAttr(":mandatory", bMandatory)
	VElement.AddAttr("max-height", sMaxHeight)
	VElement.AddAttr("max-width", sMaxWidth)
	VElement.AddAttr("min-height", sMinHeight)
	VElement.AddAttr("min-width", sMinWidth)
	VElement.AddAttr("scroll-target", sScrollTarget)
	VElement.AddAttr("scroll-threshold", sScrollThreshold)
	VElement.AddAttr(":shift", bShift)
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-show", sVShow)
	VElement.AddAttr("value", sValue)
	VElement.AddAttr("width", sWidth)
	VElement.SetData(itemsName, VElement.NewList)
	VElement.SetData(sValue, "")
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

Sub AddClass(s As String) As VBottomNavigation
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VBottomNavigation
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VBottomNavigation
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VBottomNavigation
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VBottomNavigation
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub Clear(VC As VueComponent)
	VC.SetData(itemsName, VC.NewList)
	xitems.Initialize 
End Sub

Sub AddItem(elID As String, caption As String, color As String, iconName As String, goTo As String) As VBottomNavigation
	Dim nm As Map = CreateMap()
	nm.Put("id", elID)
	nm.Put("value", elID)
	If color <> "" Then nm.Put("color", color)
	If goTo <> "" Then nm.Put("to", goTo)
	If iconName <> "" Then nm.Put("icon", iconName)
	nm.Put("caption", caption)
	xitems.Add(nm)
	Return Me
End Sub

Sub Refresh(VC As VueComponent)
	VC.SetData(itemsName, xitems)
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub