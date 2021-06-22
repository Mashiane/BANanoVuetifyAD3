B4J=true
Group=Default Group\PDF
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: FileName, DisplayName: URL, FieldType: String, DefaultValue: , Description: URL
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
	Private bHidden As Boolean
	Private sFileName As String
	Private sVIf As String
	Private sVShow As String
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
	sVShow = $"${mName}show"$
	sVModel = $"${mName}src"$
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		mClasses = Props.GetDefault("Classes", "") 
		mStyles = Props.GetDefault("Styles", "") 
		mAttributes = Props.GetDefault("Attributes","") 
		bHidden = Props.GetDefault("Hidden", False)
		sFileName = Props.GetDefault("FileName", "")
		sVIf = Props.GetDefault("VIf", "")
		'sVShow = Props.GetDefault("VShow", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div"
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes 
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	VElement.AddAttr("width", "100%")
	VElement.AddAttr("height", "100%")
	VElement.AddStyle("width", "100%")
	VElement.AddStyle("height", "100%")
	VElement.AddStyle("max-width", "100%")
	VElement.AddStyle("max-height", "100%")
	'
	'add the iframe
	Dim sIFrame As String = $"${mName}iframe"$
	VElement.Append($"<iframe id="${sIFrame}"></iframe>"$)
	Dim iframe As VueElement
	iframe.Initialize(mCallBack, sIFrame, sIFrame)
	iframe.AddAttr("width", "100%")
	iframe.AddAttr("height", "100%")
	iframe.AddStyle("width", "100%")
	iframe.AddStyle("height", "100%")
	iframe.AddStyle("max-width", "100%")
	iframe.AddStyle("max-height", "100%")
	iframe.AddAttr("scrolling", "no")
	iframe.AddAttr("frameborder", "0")
	iframe.AddStyle("border", "0")
	iframe.AddStyle("top", "0px")
	iframe.AddStyle("left", "0px")
	iframe.AddStyle("bottom", "0px")
	iframe.AddStyle("right", "0px")
	iframe.AddAttr(":allowfullscreen", True)
	iframe.Bind("src", sVModel)
	iframe.SetData(sVModel, sFileName )
	VElement.BindVueElement(iframe)
	VElement.BindAllEvents
End Sub

public Sub Remove() 
	mTarget.Empty 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) 
	VElement.AddClass(s) 
End Sub

Sub AddAttr(p As String, v As Object) 
	VElement.SetAttr(p, v) 
End Sub

Sub AddStyle(p As String, v As String) 
	VElement.AddStyle(p, v) 
End Sub

Sub RemoveAttr(p As String) 
	VElement.RemoveAttr(p) 
End Sub

Sub UpdateVisible(VC As VueComponent, b As Boolean) 
	VC.SetData(sVIf, b) 
	VC.SetData(sVShow, b) 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'change the file name
Sub SetValue(VC As VueComponent, vVModel As Object) 
	VC.SetData(sVModel, vVModel) 
End Sub
