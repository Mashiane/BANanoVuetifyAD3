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
#DesignerProperty: Key: AspectRatio, DisplayName: AspectRatio, FieldType: String, DefaultValue: 1.0, Description: AspectRatio
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: 2, Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: 100%, Description: Height
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: 100%, Description: Width
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
	Private bHidden As Boolean
	Private sFileName As String
	Private sVIf As String
	Private sVShow As String
	Private sVModel As String
	Private sAspectRatio As String
	Private sElevation As String
	Private sHeight As String
	Private sWidth As String
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
		sAspectRatio = Props.GetDefault("AspectRatio", "1.0")
		sElevation = Props.GetDefault("Elevation", "")
		sHeight = Props.GetDefault("Height", "500px")
		sWidth = Props.GetDefault("Width", "100%")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<v-responsive id="${mName}"><iframe id="${mName}iframe" scrolling="no" frameborder="0"/></v-responsive>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-responsive"
	VElement.Classes = mClasses 
	VElement.Styles = mStyles 
	VElement.Attributes = mAttributes
	VElement.AddAttr("aspect-ratio", sAspectRatio)
	VElement.Elevation = sElevation
	VElement.AddStyle("height", sHeight) 
	VElement.AddAttr("v-if", sVIf)
	VElement.AddAttr("v-show", sVShow)
	VElement.SetData(sVShow, Not(bHidden))
	VElement.AddStyle("width", sWidth)
	VElement.GetIframe.AddAttr(":src", sVModel)
	VElement.GetIframe.AddStyle("background-color", "transparent")
  	VElement.GetIFrame.AddStyle("border", "none")
  	VElement.GetIFrame.AddStyle("height", "1px")
	VElement.GetIframe.AddStyle("min-height", "100%")
  	VElement.GetIFrame.AddStyle("width", "1px")
  	VElement.GetIFrame.AddStyle("min-width", "100%")
	VElement.GetIFrame.AddStyle("top", "0px")
	VElement.GetIFrame.AddStyle("left", "0px")
	VElement.GetIFrame.AddStyle("bottom", "0px")
	VElement.GetIFrame.AddStyle("right", "0px")
	VElement.GetIFrame.AddAttr(":allowfullscreen", True)
	VElement.SetData(sVModel, sFileName )
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
