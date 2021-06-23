B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class
#DesignerProperty: Key: SourceTable, DisplayName: Source Table, FieldType: String, DefaultValue: , Description: SourceTable
#DesignerProperty: Key: SourceKey, DisplayName: Source Key, FieldType: String, DefaultValue: , Description: SourceKey
#DesignerProperty: Key: ForeignTable, DisplayName: Foreign Table, FieldType: String, DefaultValue: , Description: ForeignTable
#DesignerProperty: Key: ForeignKey, DisplayName: Foreign Key, FieldType: String, DefaultValue: , Description: ForeignKey
#DesignerProperty: Key: ForeignFields, DisplayName: Foreign Fields (;), FieldType: String, DefaultValue: , Description: ForeignFields
#DesignerProperty: Key: DisplayFormat, DisplayName: Display Format, FieldType: String, DefaultValue: , Description: DisplayFormat

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sDisplayFormat As String
	Private sForeignFields As String
	Private sForeignKey As String
	Private sForeignTable As String
	Private sSourceKey As String
	Private sSourceTable As String
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
		sDisplayFormat = Props.GetDefault("DisplayFormat", "")
		sForeignFields = Props.GetDefault("ForeignFields", "")
		sForeignKey = Props.GetDefault("ForeignKey", "")	
		sForeignTable = Props.GetDefault("ForeignTable", "")
		sSourceKey = Props.GetDefault("SourceKey", "")
		sSourceTable = Props.GetDefault("SourceTable", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="bdsrelationship" id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.AddStyle("display", "none")
	VElement.AddAttr("data-displayformat", sDisplayFormat)
	VElement.AddAttr("data-foreignfields", sForeignFields)
	VElement.AddAttr("data-foreignkey", sForeignKey)
	VElement.AddAttr("data-foreigntable", sForeignTable)
	VElement.AddAttr("data-sourcekey", sSourceKey)
	VElement.AddAttr("data-sourcetable", sSourceTable)
End Sub

