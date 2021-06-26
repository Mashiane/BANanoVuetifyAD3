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
#Event: didDrawPage (data As Map)
#Event: didParseCell (data As Map)
#Event: willDrawCell (data As Map)
#Event: didDrawCell (data As Map)

#DesignerProperty: Key: DataStartY, DisplayName: StartY, FieldType: String, DefaultValue: , Description: DataStartY
#DesignerProperty: Key: DataStartyFinalYPlus, DisplayName: StartYFinalYPlus, FieldType: String, DefaultValue: 0, Description: DataStartyFinalYPlus
#DesignerProperty: Key: DataSource, DisplayName: DataSource, FieldType: String, DefaultValue: , Description: DataTheme
#DesignerProperty: Key: DataTheme, DisplayName: Theme, FieldType: String, DefaultValue: striped, Description: DataTheme, List: none|css|grid|plain|striped
#DesignerProperty: Key: DataUseCss, DisplayName: UseCss, FieldType: Boolean, DefaultValue: False, Description: DataUseCss
#DesignerProperty: Key: DataDataKey, DisplayName: Keys (;), FieldType: String, DefaultValue: , Description: DataDataKey
#DesignerProperty: Key: DataHeader, DisplayName: Headers (;), FieldType: String, DefaultValue: , Description: DataHeader
#DesignerProperty: Key: DataHorizontalPageBreak, DisplayName: HorizontalPageBreak, FieldType: Boolean, DefaultValue: True, Description: DataHorizontalPageBreak
#DesignerProperty: Key: DataHorizontalPageBreakRepeat, DisplayName: HorizontalPageBreakRepeat, FieldType: String, DefaultValue: , Description: DataHorizontalPageBreakRepeat
#DesignerProperty: Key: DataHtml, DisplayName: Html, FieldType: String, DefaultValue: , Description: DataHtml
#DesignerProperty: Key: DataIncludeHiddenHtml, DisplayName: IncludeHiddenHtml, FieldType: Boolean, DefaultValue: False, Description: DataIncludeHiddenHtml
#DesignerProperty: Key: DataRowPageBreak, DisplayName: RowPageBreak, FieldType: String, DefaultValue: auto, Description: DataRowPageBreak, List: auto|avoid
#DesignerProperty: Key: DataShowFoot, DisplayName: ShowFoot, FieldType: String, DefaultValue: everyPage, Description: DataShowFoot, List: everyPage|lastPage|never
#DesignerProperty: Key: DataShowHead, DisplayName: ShowHead, FieldType: String, DefaultValue: everyPage, Description: DataShowHead, List: everyPage|firstPage|never
#DesignerProperty: Key: DataPageBreak, DisplayName: PageBreak, FieldType: String, DefaultValue: , Description: DataPageBreak, List: always|auto|avoid
#DesignerProperty: Key: DataTableLineColor, DisplayName: TableLineColor, FieldType: String, DefaultValue: 200, Description: DataTableLineColor
#DesignerProperty: Key: DataTableLineWidth, DisplayName: TableLineWidth, FieldType: String, DefaultValue: 1, Description: DataTableLineWidth
#DesignerProperty: Key: DataTableWidth, DisplayName: TableWidth, FieldType: String, DefaultValue: auto, Description: DataTableWidth, List: auto|wrap
#DesignerProperty: Key: DataMarginBottom, DisplayName: MarginBottom, FieldType: String, DefaultValue: 40, Description: DataMarginBottom
#DesignerProperty: Key: DataMarginLeft, DisplayName: MarginLeft, FieldType: String, DefaultValue: 40, Description: DataMarginLeft
#DesignerProperty: Key: DataMarginRight, DisplayName: MarginRight, FieldType: String, DefaultValue: 40, Description: DataMarginRight
#DesignerProperty: Key: DataMarginTop, DisplayName: MarginTop, FieldType: String, DefaultValue: 40, Description: DataMarginTop
'#DesignerProperty: Key: DataPaddingBottom, DisplayName: PaddingBottom, FieldType: String, DefaultValue: , Description: DataPaddingBottom
'#DesignerProperty: Key: DataPaddingLeft, DisplayName: PaddingLeft, FieldType: String, DefaultValue: , Description: DataPaddingLeft
'#DesignerProperty: Key: DataPaddingRight, DisplayName: PaddingRight, FieldType: String, DefaultValue: , Description: DataPaddingRight
'#DesignerProperty: Key: DataPaddingTop, DisplayName: PaddingTop, FieldType: String, DefaultValue: , Description: DataPaddingTop
#DesignerProperty: Key: ColorChooser, DisplayName: ColorChooser, FieldType: Color, DefaultValue: Null, Description: Use this to select RGB color
#DesignerProperty: Key: DataTextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: DataTextColor
#DesignerProperty: Key: DataFontName, DisplayName: FontName, FieldType: String, DefaultValue: , Description: DataFontName
#DesignerProperty: Key: DataFontSize, DisplayName: FontSize, FieldType: String, DefaultValue: , Description: DataFontSize
#DesignerProperty: Key: DataFontStyle, DisplayName: FontStyle, FieldType: String, DefaultValue: normal, Description: DataFontStyle, List: bold|bolditalic|italic|normal
#DesignerProperty: Key: DataFontWeight, DisplayName: FontWeight, FieldType: String, DefaultValue: , Description: DataFontWeight, List: 100|200|300|400|500|600|700|800|900


Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private bDataAllSectionHooks As Boolean
	Private sDataDataKey As String
	Private sDataFontName As String
	Private sDataFontSize As String
	Private sDataFontStyle As String
	Private sDataHeader As String
	Private bDataHorizontalPageBreak As Boolean
	Private sDataHorizontalPageBreakRepeat As String
	Private sDataHtml As String
	Private bDataIncludeHiddenHtml As Boolean
	Private sDataMarginBottom As String
	Private sDataMarginLeft As String
	Private sDataMarginRight As String
	Private sDataMarginTop As String
	Private sDataPaddingBottom As String
	Private sDataPaddingLeft As String
	Private sDataPaddingRight As String
	Private sDataPaddingTop As String
	Private sDataPageBreak As String
	Private sDataRowPageBreak As String
	Private sDataShowFoot As String
	Private sDataShowHead As String
	Private sDataStartY As String
	Private sDataStartyFinalYPlus As String
	Private sDataTableLineColor As String
	Private sDataTableLineWidth As String
	Private sDataTableWidth As String
	Private sDataTextColor As String
	Private sDataTheme As String
	Private bDataUseCss As Boolean
	Private sDataFontWeight As String
	Public Rows As List
	Private sDataSource As String
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
	Rows.Initialize 
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bDataAllSectionHooks = Props.GetDefault("DataAllSectionHooks", False)
		bDataAllSectionHooks = BANanoShared.parseBool(bDataAllSectionHooks)
		sDataDataKey = Props.GetDefault("DataDataKey", "")
		sDataFontName = Props.GetDefault("DataFontName", "")
		sDataFontSize = Props.GetDefault("DataFontSize", "")
		sDataFontStyle = Props.GetDefault("DataFontStyle", "normal")
		sDataHeader = Props.GetDefault("DataHeader", "")
		bDataHorizontalPageBreak = Props.GetDefault("DataHorizontalPageBreak", False)
		bDataHorizontalPageBreak = BANanoShared.parseBool(bDataHorizontalPageBreak)
		sDataHorizontalPageBreakRepeat = Props.GetDefault("DataHorizontalPageBreakRepeat", "")
		sDataHtml = Props.GetDefault("DataHtml", "")
		bDataIncludeHiddenHtml = Props.GetDefault("DataIncludeHiddenHtml", False)
		bDataIncludeHiddenHtml = BANanoShared.parseBool(bDataIncludeHiddenHtml)
		sDataMarginBottom = Props.GetDefault("DataMarginBottom", "")
		sDataMarginLeft = Props.GetDefault("DataMarginLeft", "")
		sDataMarginRight = Props.GetDefault("DataMarginRight", "")
		sDataMarginTop = Props.GetDefault("DataMarginTop", "")
		sDataPaddingBottom = Props.GetDefault("DataPaddingBottom", "")
		sDataPaddingLeft = Props.GetDefault("DataPaddingLeft", "")
		sDataPaddingRight = Props.GetDefault("DataPaddingRight", "")
		sDataPaddingTop = Props.GetDefault("DataPaddingTop", "")
		sDataPageBreak = Props.GetDefault("DataPageBreak", "")
		sDataRowPageBreak = Props.GetDefault("DataRowPageBreak", "auto")
		sDataShowFoot = Props.GetDefault("DataShowFoot", "everyPage")
		sDataShowHead = Props.GetDefault("DataShowHead", "everyPage")
		sDataStartY = Props.GetDefault("DataStartY", "")
		sDataStartyFinalYPlus = Props.GetDefault("DataStartyFinalYPlus", "")
		sDataTableLineColor = Props.GetDefault("DataTableLineColor", "")
		sDataTableLineWidth = Props.GetDefault("DataTableLineWidth", "")
		sDataTableWidth = Props.GetDefault("DataTableWidth", "auto")
		sDataTextColor = Props.GetDefault("DataTextColor", "")
		sDataTheme = Props.GetDefault("DataTheme", "striped")
		bDataUseCss = Props.GetDefault("DataUseCss", False)
		bDataUseCss = BANanoShared.parseBool(bDataUseCss)
		sDataFontWeight = Props.GetDefault("DataFontWeight", "400")
		sDataSource = Props.GetDefault("DataSource", "")
	End If 
	' 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append($"<div data-type="pdfautotable" id="${mName}"></div>"$).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "div" 
	'VElement.AddStyle("display", "none")
	VElement.AddAttr("data-allsectionhooks", bDataAllSectionHooks)
	VElement.AddAttr("data-keys", sDataDataKey)
	VElement.AddAttr("data-fontname", sDataFontName)
	VElement.AddAttr("data-fontsize", sDataFontSize)
	VElement.AddAttr("data-fontstyle", sDataFontStyle)
	VElement.AddAttr("data-header", sDataHeader)
	VElement.AddAttr("data-horizontalpagebreak", bDataHorizontalPageBreak)
	VElement.AddAttr("data-horizontalpagebreakrepeat", sDataHorizontalPageBreakRepeat)
	VElement.AddAttr("data-html", sDataHtml)
	VElement.AddAttr("data-includehiddenhtml", bDataIncludeHiddenHtml)
	VElement.AddAttr("data-marginbottom", sDataMarginBottom)
	VElement.AddAttr("data-marginleft", sDataMarginLeft)
	VElement.AddAttr("data-marginright", sDataMarginRight)
	VElement.AddAttr("data-margintop", sDataMarginTop)
	VElement.AddAttr("data-paddingbottom", sDataPaddingBottom)
	VElement.AddAttr("data-paddingleft", sDataPaddingLeft)
	VElement.AddAttr("data-paddingright", sDataPaddingRight)
	VElement.AddAttr("data-paddingtop", sDataPaddingTop)
	VElement.AddAttr("data-pagebreak", sDataPageBreak)
	VElement.AddAttr("data-rowpagebreak", sDataRowPageBreak)
	VElement.AddAttr("data-showfoot", sDataShowFoot)
	VElement.AddAttr("data-showhead", sDataShowHead)
	VElement.AddAttr("data-starty", sDataStartY)
	VElement.AddAttr("data-startyfinalyplus", sDataStartyFinalYPlus)
	VElement.AddAttr("data-tablelinecolor", sDataTableLineColor)
	VElement.AddAttr("data-tablelinewidth", sDataTableLineWidth)
	VElement.AddAttr("data-tablewidth", sDataTableWidth)
	VElement.AddAttr("data-textcolor", sDataTextColor)
	VElement.AddAttr("data-theme", sDataTheme)
	VElement.AddAttr("data-usecss", bDataUseCss)
	VElement.AddAttr("data-fontweight", sDataFontWeight)
	VElement.AddAttr("data-datasource", sDataSource)
	VElement.SetData(sDataSource, Rows)
End Sub

Sub getDataSource As String
	Return sDataSource
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'clear the rows
Sub Clear(VC As VueComponent)
	Rows.Initialize
	VC.SetData(sDataSource, Rows) 
End Sub

'add a new row
Sub AddRow(row As Map)
	Rows.Add(row)
End Sub

'add row list using data keys
Sub AddRow2(rowList As List)
	Dim dk As List = BANanoShared.StrParse(";", sDataDataKey)
	Dim nr As Map = CreateMap()
	Dim dkTot As Int = dk.Size - 1
	Dim dkCnt As Int
	For dkCnt = 0 To dkTot
		Dim k As String = dk.Get(dkCnt)
		Dim v As String = rowList.Get(dkCnt)
		k = k.Trim
		nr.Put(k, v)
	Next
	Rows.Add(nr)
End Sub


'add a new row at the end of the items in realtime
Sub AddRow1(VC As VueComponent, rowdata As Map)
	VC.SetDataPush(sDataSource, rowdata)
End Sub

'refresh the rows
Sub Refresh(VC As VueComponent)
	VC.SetData(sDataSource, Rows) 
End Sub

'set data
Sub UpdateDataSource(VC As VueComponent, source As List)
	VC.SetData(sDataSource, source)
	Rows = VC.GetData(sDataSource) 
End Sub