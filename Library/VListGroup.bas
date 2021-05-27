B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.95
@EndOfDesignText@
#IgnoreWarnings:12

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: ActiveClass, DisplayName: ActiveClass, FieldType: String, DefaultValue: , Description: ActiveClass
#DesignerProperty: Key: AppendIcon, DisplayName: AppendIcon, FieldType: String, DefaultValue: , Description: AppendIcon
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Disabled, DisplayName: Disabled, FieldType: String, DefaultValue: , Description: Disabled
#DesignerProperty: Key: Eager, DisplayName: Eager, FieldType: Boolean, DefaultValue: false, Description: Eager
#DesignerProperty: Key: Group, DisplayName: Group, FieldType: String, DefaultValue: , Description: Group
#DesignerProperty: Key: NoAction, DisplayName: NoAction, FieldType: Boolean, DefaultValue: false, Description: NoAction
#DesignerProperty: Key: PrependIcon, DisplayName: PrependIcon, FieldType: String, DefaultValue: , Description: PrependIcon
#DesignerProperty: Key: Ripple, DisplayName: Ripple, FieldType: Boolean, DefaultValue: false, Description: Ripple
#DesignerProperty: Key: SubGroup, DisplayName: SubGroup, FieldType: Boolean, DefaultValue: false, Description: SubGroup
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue: , Description: VModel
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
Private sAppendIcon As String
Private sColor As String
Private sColorIntensity As String
Private sDisabled As String
Private bEager As Boolean
Private sGroup As String
Private bNoAction As Boolean
Private sPrependIcon As String
Private bRipple As Boolean
Private bSubGroup As Boolean
Private sTextColor As String
Private sTextColorIntensity As String
Private sVModel As String
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
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sActiveClass = Props.Get("ActiveClass")
sAppendIcon = Props.Get("AppendIcon")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sDisabled = Props.Get("Disabled")
bEager = Props.Get("Eager")
sGroup = Props.Get("Group")
bNoAction = Props.Get("NoAction")
sPrependIcon = Props.Get("PrependIcon")
bRipple = Props.Get("Ripple")
bSubGroup = Props.Get("SubGroup")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sVModel = Props.Get("VModel")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-list-group id="${mName}"></v-list-group>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-list-group"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr("active-class", sActiveClass)
VElement.AddAttr("append-icon", sAppendIcon)
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.AddAttr("disabled", sDisabled)
VElement.AddAttr(":eager", bEager)
VElement.AddAttr("group", sGroup)
VElement.AddAttr(":no-action", bNoAction)
VElement.AddAttr("prepend-icon", sPrependIcon)
VElement.AddAttr(":ripple", bRipple)
VElement.AddAttr(":sub-group", bSubGroup)
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.AddAttr("v-model", sVModel)
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

public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

Sub AddClass(s As String) As VListGroup
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VListGroup
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VListGroup
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VListGroup
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Collapse(VC As VueComponent, b As Boolean)
	VC.SetData(sVModel, b)
End Sub