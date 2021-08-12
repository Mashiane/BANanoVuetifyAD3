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
#DesignerProperty: Key: DataApplyTo, DisplayName: ApplyTo, FieldType: String, DefaultValue: column, Description: DataApplyTo, List: alternaterows|body|column|footer|header|table
#DesignerProperty: Key: DataColumnName, DisplayName: ColumnName, FieldType: String, DefaultValue: , Description: DataColumnName
#DesignerProperty: Key: DataPadding, DisplayName: CellPadding ATRBL (;), FieldType: String, DefaultValue: 10, Description: DataPadding
#DesignerProperty: Key: DataCellWidth, DisplayName: CellWidth, FieldType: String, DefaultValue: auto, Description: DataCellWidth, List: auto|own|wrap
#DesignerProperty: Key: DataCellWidthOwn, DisplayName: CellWidthOwn, FieldType: String, DefaultValue: , Description: DataCellWidthOwn
#DesignerProperty: Key: DataTextColor, DisplayName: TextColor RGB (;), FieldType: String, DefaultValue: 20, Description: DataTextColor
#DesignerProperty: Key: DataFillColor, DisplayName: FillColor RGB (;), FieldType: String, DefaultValue: , Description: DataFillColor
#DesignerProperty: Key: ColorChooser, DisplayName: ColorChooser, FieldType: Color, DefaultValue: Null, Description: Use this to select RGB color
#DesignerProperty: Key: DataFontName, DisplayName: FontName, FieldType: String, DefaultValue: , Description: DataFontName
#DesignerProperty: Key: DataFontSize, DisplayName: FontSize, FieldType: String, DefaultValue: 10, Description: DataFontSize
#DesignerProperty: Key: DataFontStyle, DisplayName: FontStyle, FieldType: String, DefaultValue: normal, Description: DataFontStyle, List: bold|bolditalic|italic|normal
#DesignerProperty: Key: DataHAlign, DisplayName: H-Align, FieldType: String, DefaultValue: left, Description: DataHAlign, List: center|left|right
#DesignerProperty: Key: DataVAlign, DisplayName: V-Align, FieldType: String, DefaultValue: top, Description: DataVAlign, List: bottom|middle|top
#DesignerProperty: Key: DataLineColor, DisplayName: LineColor, FieldType: String, DefaultValue: 10, Description: DataLineColor
#DesignerProperty: Key: DataLineWidth, DisplayName: LineWidth, FieldType: String, DefaultValue: 1, Description: DataLineWidth
#DesignerProperty: Key: DataMinCellHeight, DisplayName: MinCellHeight, FieldType: String, DefaultValue: 0, Description: DataMinCellHeight
#DesignerProperty: Key: DataMinCellWidth, DisplayName: MinCellWidth, FieldType: String, DefaultValue: 10, Description: DataMinCellWidth
#DesignerProperty: Key: DataOverFlow, DisplayName: OverFlow, FieldType: String, DefaultValue: normal, Description: DataOverFlow, List: ellipsize|hidden|linebreak|normal|visible

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sDataApplyTo As String
	Private sDataCellWidth As String
	Private sDataCellWidthOwn As String
	Private sDataColumnName As String
	Private sDataFillColor As String
	Private sDataFontSize As String
	Private sDataFontName As String
	Private sDataFontStyle As String
	Private sDataHAlign As String
	Private sDataLineColor As String
	Private sDataLineWidth As String
	Private sDataMinCellHeight As String
	Private sDataMinCellWidth As String
	Private sDataOverFlow As String
	Private sDataPadding As String
	Private sDataTextColor As String
	Private sDataVAlign As String
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
		sDataApplyTo = Props.GetDefault("DataApplyTo", "column")
		sDataCellWidth = Props.GetDefault("DataCellWidth", "auto")
		sDataCellWidthOwn = Props.GetDefault("DataCellWidthOwn", "")
		sDataColumnName = Props.GetDefault("DataColumnName", "")
		sDataFillColor = Props.GetDefault("DataFillColor", "")
		sDataFontSize = Props.GetDefault("DataFontSize", "10")
		sDataFontName = Props.GetDefault("DataFontName", "")
		sDataFontStyle = Props.GetDefault("DataFontStyle", "normal")
		sDataHAlign = Props.GetDefault("DataHAlign", "left")
		sDataLineColor = Props.GetDefault("DataLineColor", "10")
		sDataLineWidth = Props.GetDefault("DataLineWidth", "0")
		sDataMinCellHeight = Props.GetDefault("DataMinCellHeight", "0")
		sDataMinCellWidth = Props.GetDefault("DataMinCellWidth", "10")
		sDataOverFlow = Props.GetDefault("DataOverFlow", "normal")
		sDataPadding = Props.GetDefault("DataPadding", "10")
		sDataTextColor = Props.GetDefault("DataTextColor", "20")
		sDataVAlign = Props.GetDefault("DataVAlign", "top")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="pdfstyle" id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	VElement.AddStyle("display", "none")
	VElement.AddAttr("data-applyto", sDataApplyTo)
	VElement.AddAttr("data-cellwidth", sDataCellWidth)
	VElement.AddAttr("data-cellwidthown", sDataCellWidthOwn)
	VElement.AddAttr("data-columnname", sDataColumnName)
	VElement.AddAttr("data-fillcolor", sDataFillColor)
	VElement.AddAttr("data-fontsize", sDataFontSize)
	VElement.AddAttr("data-fontname", sDataFontName)
	VElement.AddAttr("data-fontstyle", sDataFontStyle)
	VElement.AddAttr("data-halign", sDataHAlign)
	VElement.AddAttr("data-linecolor", sDataLineColor)
	VElement.AddAttr("data-linewidth", sDataLineWidth)
	VElement.AddAttr("data-mincellheight", sDataMinCellHeight)
	VElement.AddAttr("data-mincellwidth", sDataMinCellWidth)
	VElement.AddAttr("data-overflow", sDataOverFlow)
	VElement.AddAttr("data-padding", sDataPadding)
	VElement.AddAttr("data-textcolor", sDataTextColor)
	VElement.AddAttr("data-valign", sDataVAlign)
End Sub