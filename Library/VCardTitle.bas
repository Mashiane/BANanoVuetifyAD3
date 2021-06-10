B4J=true
Group=Default Group\Card
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Text, DisplayName: Caption, FieldType: String, DefaultValue: Card Title, Description: Text
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: , Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Textcolor, FieldType: String, DefaultValue: , Description: Textcolor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Textcolorintensity, FieldType: String, DefaultValue: , Description: Textcolorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Align, DisplayName: Vertical Align, FieldType: String, DefaultValue: normal, Description: Align, List: normal|start|center|end|baseline|stretch
#DesignerProperty: Key: Justify, DisplayName: Horizontal Align, FieldType: String, DefaultValue: normal, Description: Justify, List: normal|start|center|end|space-between|space-around
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
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private sColor As String
Private sColorintensity As String
Private sTextcolor As String
Private sTextcolorintensity As String
Private sText As String
Private mAlign As String = ""
	Private mJustify As String = ""
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
		mVShow = Props.Get("VShow")
		mVIf = Props.Get("VIf")
		sColor = Props.Get("Color")
sColorintensity = Props.Get("ColorIntensity")
sTextcolor = Props.Get("TextColor")
sTextcolorintensity = Props.Get("TextColorIntensity")
sText = Props.Get("Text")
mAlign = Props.Get("Align")
		mJustify = Props.Get("Justify")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-card-title id="${mName}"></v-card-title>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-card-title"
	VElement.Caption = sText
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.VShow = mVShow
	VElement.VIf = mVIf
	VElement.Color = VElement.BuildColor(sColor, sColorintensity)
	VElement.TextColor = VElement.BuildColor(sTextcolor, sTextcolorintensity)
	VElement.setAlign(mAlign)	
	VElement.setJustify(mJustify)
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

Sub AddClass(s As String) As VCardTitle
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VCardTitle
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VCardTitle
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VCardTitle
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VCardTitle
	VC.SetData(mVIf, b)
	VC.SetData(mVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub