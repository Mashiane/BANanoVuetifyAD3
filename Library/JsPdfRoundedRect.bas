﻿B4J=true
Group=Default Group\PDF
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class
#DesignerProperty: Key: DataX, DisplayName: X, FieldType: String, DefaultValue: , Description: DataX
#DesignerProperty: Key: DataY, DisplayName: Y, FieldType: String, DefaultValue: , Description: DataY
#DesignerProperty: Key: DataW, DisplayName: W, FieldType: String, DefaultValue: , Description: DataW
#DesignerProperty: Key: DataH, DisplayName: H, FieldType: String, DefaultValue: , Description: DataH
#DesignerProperty: Key: DataRX, DisplayName: RX, FieldType: String, DefaultValue: , Description: DataRX
#DesignerProperty: Key: DataRY, DisplayName: RY, FieldType: String, DefaultValue: , Description: DataRY
#DesignerProperty: Key: DataStyle, DisplayName: Style, FieldType: String, DefaultValue: S, Description: DataStyle, List: F|FD|S
#DesignerProperty: Key: DataLineWidth, DisplayName: LineWidth, FieldType: String, DefaultValue: , Description: DataLineWidth
#DesignerProperty: Key: DataDrawColor, DisplayName: DrawColor, FieldType: String, DefaultValue: , Description: DataDrawColor
#DesignerProperty: Key: DataFillColor, DisplayName: FillColor, FieldType: String, DefaultValue: , Description: DataFillColor
#DesignerProperty: Key: ColorChooser, DisplayName: ColorChooser, FieldType: Color, DefaultValue: Null, Description: Use this to select RGB color

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sDataDrawColor As String
	Private sDataFillColor As String
	Private sDataH As String
	Private sDataLineWidth As String
	Private sDataRX As String
	Private sDataRY As String
	Private sDataStyle As String
	Private sDataW As String
	Private sDataX As String
	Private sDataY As String
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
		sDataDrawColor = Props.GetDefault("DataDrawColor", "")
		sDataFillColor = Props.GetDefault("DataFillColor", "")
		sDataH = Props.GetDefault("DataH", "")
		sDataLineWidth = Props.GetDefault("DataLineWidth", "")
		sDataRX = Props.GetDefault("DataRX", "")
		sDataRY = Props.GetDefault("DataRY", "")
		sDataStyle = Props.GetDefault("DataStyle", "S")
		sDataW = Props.GetDefault("DataW", "")
		sDataX = Props.GetDefault("DataX", "")
		sDataY = Props.GetDefault("DataY", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="roundedrect" id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.AddAttr("data-drawcolor", sDataDrawColor)
	VElement.AddAttr("data-fillcolor", sDataFillColor)
	VElement.AddAttr("data-h", sDataH)
	VElement.AddAttr("data-linewidth", sDataLineWidth)
	VElement.AddAttr("data-rx", sDataRX)
	VElement.AddAttr("data-ry", sDataRY)
	VElement.AddAttr("data-style", sDataStyle)
	VElement.AddAttr("data-w", sDataW)
	VElement.AddAttr("data-x", sDataX)
	VElement.AddAttr("data-y", sDataY)
	'VElement.AddStyle("display", "none")
End Sub

