B4J=true
Group=Default Group\PDF
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12, 9
Sub Class_Globals
	Public rows As List
	Public columns As List
	Public head As List
	Private ocolumns As Map   'ignore
	Private StylesM As Map
	Private ColumnStylesM As Map
	Private MarginM As Map
	Public Theme As String
	Private HeaderStylesM As Map
	Private BodyStylesM As Map
	Private alternateRowStylesM As Map
	Public StartY As Object
	Public PageBreak As String
	Public TableWidth As String
	Private mCallBack As Object
	Public options As Map
	Public CONST THEME_STRIPED As String = "striped"
	Public CONST THEME_GRID As String = "grid"
	Public CONST THEME_PLAIN As String = "plain"
	Public CONST THEME_CSS As String = "css"
	Public CONST PAGE_BREAK_AUTO As String = "auto"
	Public CONST PAGE_BREAK_AVOID As String = "avoid"
	Public CONST PAGE_BREAK_ALWAYS As String = "always"
	Private mtableLineColor As List
	Private mtableLineWidth As Double
	Private BANano As BANano 'ignore
	Type styleDef (font As String, lineWidth As Double, lineColor As List, fillColor As List, fontSize As Int, _
	cellPadding As Object, fontStyle As String,overflow As String, textColor As List, halign As String, valign As String, _
	fillStyle As String, rowHeight As Int, minCellWidth As Int, minCellHeight As Int, cellWidth As String)
	Public styles As styleDef
	Public headerStyles As styleDef
	Public alternateRowStyles As styleDef
	Public bodyStyles As styleDef
	Type MarginObj(top As Int, bottom As Int, left As Int, right As Int, width As Int)
	Public Margin As MarginObj
	Type CellDef(content As String, rowSpan As Int, colSpan As Int, styles As styleDef)
	Private headRows As Map
	Private footRows As Map
	Private FooterStyleM As Map
	Public footerStyles As styleDef
	Private ColumnAlign As Map
	Public ShowLog As Boolean
	Public includeHiddenHtml As Boolean
		'
	Type pdfStyle(cellPadding As Int, cellWidth As String, fillColor As Object, _
	font As String, fontSize As Int, fontStyle As String, halign As String, lineColor As Object, _
	lineWidth As Int, minCellHeight As Int, minCellWidth As Int, overflow As String, textColor As Object, _
	valign As String)
	'
	Type pdfCell(colSpan As Int, contentHeight As Float, contentWidth As Float, height As Float, _
minReadableWidth As Float, minWidth As Int, raw As String, rowSpan As Int, section As String, x As Int, y As Int, styles As pdfStyle, text As Object)
	'
	Type pdfColumn(dataKey As String, index As Int, minReadableWidth As Float, minWidth As Float, _
	width As Float, wrappedWidth As Float)
	'
	Type pdfCursor(x As Float, y As Float)
	'
	Type pdfRow(height As Float, index As Int, section As String, spansMultiplePages As Boolean, raw As Map)
	'
	Type pdfMargin(bottom As Int, top As Int, right As Int, left As Int)
	'
	Type pdfSettings(horizontalPageBreak As Boolean, includeHiddenHtml As Boolean, PageBreak As String, _
	rowPageBreak As String, showFoot As String, showHead As String, StartY As Float, _
	TableLineColor As Object, tableLineWidth As Int, TableWidth As String, Theme As String, useCss As Boolean, Margin As pdfMargin)
	'
	Type pdfData(cell As pdfCell, column As pdfColumn, cursor As pdfCursor, row As pdfRow, settings As pdfSettings)
End Sub

'initialize the autoTable
Sub Initialize(eventHandler As Object)
	mCallBack = eventHandler
	options.Initialize 
	StylesM.Initialize 
	ColumnStylesM.Initialize 
	Margin.Initialize
	Margin.top = 0
	Margin.left = 0
	Margin.width = 0
	Margin.bottom = 0
	Margin.right = 0 
	Theme = ""
	HeaderStylesM.Initialize 
	BodyStylesM.Initialize 
	StartY = False
	PageBreak = "auto"
	TableWidth = "auto"
	mtableLineColor.Initialize
	alternateRowStylesM.Initialize 
	
	styles = NewStyleDef
	headerStyles = NewStyleDef
	alternateRowStyles = NewStyleDef
	bodyStyles = NewStyleDef
	footerStyles = NewStyleDef
	headRows.Initialize 
	footRows.Initialize 
	head.Initialize 
	FooterStyleM.Initialize 
	ColumnAlign.Initialize
	rows.Initialize 
	columns.Initialize
	includeHiddenHtml = False
	'
	TableWidth = "wrap"
    styles.overflow = "linebreak"
	styles.cellWidth = "auto"
	ShowLog = True
	Dim table As Object
	didParseCell(Me, "didParseCellInternal", table) 
End Sub

'initialize the style
Sub NewStyleDef As styleDef
	Dim stylesx As styleDef
	stylesx.Initialize 
	stylesx.font = "helvetica"
	stylesx.linewidth = 0
	stylesx.lineColor.Initialize 
	stylesx.fillColor.Initialize 
	stylesx.fontSize = 10
	stylesx.cellPadding = 10
	stylesx.fontStyle = "normal"
	stylesx.overflow = "linebreak"
	stylesx.textColor.Initialize 
	stylesx.halign = "left"
	stylesx.valign = "top"
	stylesx.fillStyle = ""
	stylesx.rowHeight = 0
	stylesx.minCellWidth = 10
	stylesx.minCellHeight = 0
	stylesx.cellWidth = "wrap"
	Return stylesx
End Sub

'convert a BE to a style
Sub BEToStyle(be As BANanoElement)
	If ShowLog Then
		Log($"BEToStyle.${be.name}"$)
	End If
	Dim ns As styleDef
	ns.Initialize
	ns.fillColor.Initialize  
	ns.lineColor.Initialize
	ns.textColor.Initialize  
	
	Dim sDataApplyTo As String = be.GetData("applyto")
	If BANano.IsNull(sDataApplyTo) Then sDataApplyTo = ""
	
	Dim sDataColumnName As String = be.GetData("columnname")
	If BANano.IsNull(sDataColumnName) Then sDataColumnName = ""

	Dim sDataCellWidth As String = be.GetData("cellwidth")
	If BANano.IsNull(sDataCellWidth) Then sDataCellWidth = ""
	If sDataCellWidth <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.cellWidth.${sDataCellWidth}"$)
		End If
		ns.cellWidth = sDataCellWidth
	End If
	'
	Dim sDataCellWidthOwn As String = be.GetData("cellwidthown")
	If BANano.IsNull(sDataCellWidthOwn) Then sDataCellWidthOwn = ""
	If sDataCellWidthOwn <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.cellWidth.${sDataCellWidthOwn}"$)
		End If
		sDataCellWidthOwn = BANano.parseInt(sDataCellWidthOwn)
		ns.cellWidth = sDataCellWidthOwn
	End If
	'	
	Dim sDataFillColor As String = be.GetData("fillcolor")
	If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""
	If sDataFillColor <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.fillColor.${sDataFillColor}"$)
		End If
		sDataFillColor = sDataFillColor.Replace(",", ";")
		Dim fc As List = BANanoShared.StrParse(";", sDataFillColor)
		fc = BANanoShared.ListItemsToInt(fc)
		ns.fillColor = fc
	End If

	Dim sDataFontSize As String = be.GetData("fontsize")
	If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""
	If sDataFontSize <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.fontSize.${sDataFontSize}"$)
		End If
		sDataFontSize = BANano.parseInt(sDataFontSize)
		ns.fontSize = sDataFontSize
	End If

	Dim sDataFontName As String = be.GetData("fontname")
	If BANano.IsNull(sDataFontName) Then sDataFontName = ""
	If sDataFontName <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.font.${sDataFontName}"$)
		End If
		ns.font = sDataFontName
	End If
	'
	Dim sDataFontStyle As String = be.GetData("fontstyle")
	If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""
	If sDataFontStyle <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.fontStyle.${sDataFontStyle}"$)
		End If
		ns.fontStyle = sDataFontStyle
	End If
	'
	Dim sDataHAlign As String = be.GetData("halign")
	If BANano.IsNull(sDataHAlign) Then sDataHAlign = ""
	If sDataHAlign <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.hAlign.${sDataHAlign}"$)
		End If
		ns.halign = sDataHAlign
	End If
	
	'
	Dim sDataLineColor As String = be.GetData("linecolor")
	If BANano.IsNull(sDataLineColor) Then sDataLineColor = ""
	If sDataLineColor <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.lineColor.${sDataLineColor}"$)
		End If
		sDataLineColor = sDataLineColor.Replace(",", ";")
		Dim lc As List = BANanoShared.StrParse(";", sDataLineColor)
		lc = BANanoShared.ListItemsToInt(lc)
		ns.lineColor = lc
	End If
		
	Dim sDataLineWidth As String = be.GetData("linewidth")
	If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""
	If sDataLineWidth <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.lineWidth.${sDataLineWidth}"$)
		End If
		sDataLineWidth = BANano.parseInt(sDataLineWidth)
		ns.lineWidth = sDataLineWidth
	End If
	'
	Dim sDataMinCellHeight As String = be.GetData("mincellheight")
	If BANano.IsNull(sDataMinCellHeight) Then sDataMinCellHeight = ""
	If sDataMinCellHeight <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.minCellHeight.${sDataMinCellHeight}"$)
		End If
		sDataMinCellHeight = BANano.parseInt(sDataMinCellHeight)
		ns.minCellHeight = sDataMinCellHeight
	End If
	'
	Dim sDataMinCellWidth As String = be.GetData("mincellwidth")
	If BANano.IsNull(sDataMinCellWidth) Then sDataMinCellWidth = ""
	If sDataMinCellWidth <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.minCellWidth.${sDataMinCellWidth}"$)
		End If
		sDataMinCellWidth = BANano.parseInt(sDataMinCellWidth)
		ns.minCellWidth = sDataMinCellWidth
	End If
	'
	Dim sDataOverFlow As String = be.GetData("overflow")
	If BANano.IsNull(sDataOverFlow) Then sDataOverFlow = ""
	If sDataOverFlow <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.overflow.${sDataOverFlow}"$)
		End If
		ns.overflow = sDataOverFlow
	End If
	'
	Dim sDataPadding As String = be.GetData("padding")
	If BANano.IsNull(sDataPadding) Then sDataPadding = ""
	If sDataPadding <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.cellPadding.${sDataPadding}"$)
		End If
		sDataPadding = sDataPadding.Replace(",", ";")
		Dim pd As List = BANanoShared.StrParse(";", sDataPadding)
		pd = BANanoShared.ListItemsToFloat(pd)
		Select Case pd.Size
		Case 1
			sDataPadding = BANano.parseFloat(sDataPadding)
			ns.cellPadding = sDataPadding
		Case 4
			Dim t As Float = pd.Get(0)
			Dim r As Float = pd.Get(1)
			Dim b As Float = pd.Get(2)
			Dim l As Float = pd.Get(3)
			'
			Dim t As Float = BANano.parseFloat(t)
			Dim r As Float = BANano.parseFloat(r)
			Dim b As Float = BANano.parseFloat(b)
			Dim l As Float = BANano.parseFloat(l)
			'
			Dim po As Map = CreateMap()
			po.Put("top",  t)
			po.Put("right",  r)
			po.Put("bottom", b)
			po.Put("left", l)	
			ns.cellPadding = po
		Case Else
			Log($"BEToStyle.You need to fix margins for ${be.Name} it's ${pd.size}, but can be 1 or 4."$)	
		End Select
	End If

	Dim sDataTextColor As String = be.GetData("textcolor")
	If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""
	If sDataTextColor <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.textColor.${sDataTextColor}"$)
		End If
		sDataTextColor = sDataTextColor.Replace(",", ";")
		Dim tc As List = BANanoShared.StrParse(";", sDataTextColor)
		tc = BANanoShared.ListItemsToInt(tc)
		ns.textColor = tc
	End If
	
	Dim sDataVAlign As String = be.GetData("valign")
	If BANano.IsNull(sDataVAlign) Then sDataVAlign = ""
	If sDataVAlign <> "" Then
		If ShowLog Then
			Log($"BEToStyle.${be.name}.valign.${sDataVAlign}"$)
		End If
		ns.valign = sDataVAlign
	End If
	'
	Select Case sDataApplyTo
	Case "alternaterows"
		alternateRowStyles = ns
	Case "body"
	    bodyStyles = ns
	Case "column"
		If sDataColumnName = "" Then
			Log($"BEToStyle.${be.name} - You need to specify the column name."$)	
		Else
			If headRows.ContainsKey(sDataColumnName) Then
				addColumnStyle(sDataColumnName, ns)
			Else
				Log($"BEToStyle.${be.name} - Column does not exist: '${sDataColumnName}'"$)	
			End If		
		End If
	Case "footer"
		footerStyles = ns
	Case "header"
		headerStyles = ns
	Case "table"
		styles = ns
	End Select
End Sub

'will right align columns
private Sub didParseCellInternal(table As Map)
	AlignHeaders(table)
End Sub

'add a column style
Sub addColumnStyle(colName As String, style As styleDef)
	Dim cm As Map = CreateMap()
	CopyStyles(style, cm)
	ColumnStylesM.Put(colName, cm) 
	'get the column title that should be right aligned
	If headRows.ContainsKey(colName) Then
		Dim tit As String = headRows.Get(colName)
		ColumnAlign.Put(tit, style)
	End If
End Sub

'right align the table columns
Sub AlignHeaders(table As Map)
	'get the section
	Dim ssection As String = table.Get("section")
	If ssection <> "head" Then Return
	'we want to align the column header
	Dim cellM As Map = table.Get("cell")
	Dim raw As String = cellM.Get("raw")
	Dim mstyles As Map = cellM.Get("styles")
	If ColumnAlign.ContainsKey(raw) Then
		Dim hstyle As styleDef = ColumnAlign.Get(raw)
		mstyles.Put("halign", hstyle.halign)
		mstyles.Put("valign", hstyle.valign)	
	End If
End Sub

'set the text color
Sub setTextColor(s As styleDef, r As Int, g As Int, b As Int)
	s.textColor.Add(r)
	s.textColor.Add(g)
	s.textColor.Add(b)
End Sub

'set the style line color
Sub setLineColor(s As styleDef, r As Int, g As Int, b As Int)
	s.lineColor.Add(r)
	s.lineColor.Add(g)
	s.lineColor.Add(b)
End Sub

'set style fill color
Sub setFillColor(s As styleDef, r As Int, g As Int, b As Int)
	s.fillColor.Add(r)
	s.fillColor.Add(g)
	S.fillColor.Add(b)
End Sub

'set useCSS
Sub setHTML(s As String)
	s = s.Replace("#", "")
	s = s.ToLowerCase
	options.Put("html", $"#${s}"$)
End Sub

'set useCSS
Sub setuseCSS(b As Boolean)
	If b Then options.Put("useCss", b)
End Sub

'set table line width
Sub setTableLineWidth(t As Double)
	mtableLineWidth = t
	mtableLineWidth = BANano.parseFloat(mtableLineWidth)
	options.Put("tableLineWidth", mtableLineWidth)
End Sub

'set table line color
Sub TableLineColor(r As Int, g As Int, b As Int)
	mtableLineColor.AddAll(Array As Int(r, g, b))
	options.Put("tableLineColor", mtableLineColor)
End Sub

'set table line color using rgb string
Sub TableLineColor1(rgb As String)
	If rgb = "" Then Return
	Dim strcol1 As String
	Dim strcol2 As String
	Dim strcol3 As String
	'
	rgb = rgb.Replace(";", ",")
	Dim cols As List = BANanoShared.StrParse(",", rgb)
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.Trim
		cols.Set(colCnt, strcol)
	Next
	colTot = cols.size
	Select Case colTot
	Case 1
		strcol1 = cols.Get(0)
		strcol1 = BANano.parseInt(strcol1)
		options.Put("tableLineColor", strcol1)
	Case 2
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		Dim colours As List
		colours.Initialize 
		colours.Add(strcol1)
		colours.Add(strcol2)
		options.Put("tableLineColor", colours)
	Case 3
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		Dim colours As List
		colours.Initialize 
		colours.Add(strcol1)
		colours.Add(strcol2)
		colours.Add(strcol3)
		options.Put("tableLineColor", colours)
	End Select	
End Sub


'set rows from a data-table
Sub SetRows(xrows As List)
	rows = xrows
End Sub

'set rows from data-table
Sub SetRowsFromDataTable(xRows As List)
	rows = xRows
End Sub

'set columns
Sub SetColumns(xcolumns As List)
	columns = xcolumns
End Sub

'set columns from a data-table
Sub SetColumnsFromDataTable(xcolumns As List)
	Dim xcols As List
	xcols.Initialize 
	'
	Dim colTot As Int = xcolumns.Size - 1
	Dim colCnt As Int 
	For colCnt = 0 To colTot
		Dim hdr As DataTableColumn = xcolumns.Get(colCnt)
		Dim sDataKey As String = hdr.value
		Dim sTitle As String = hdr.text
		'
		Select Case hdr.ColType
		Case "action", "edit", "delete", "print", "delete", "clone", "save", "cancel", "button"
		Case Else		
			Dim nc As Map = CreateMap()
			nc.Put("header", sTitle)
			nc.Put("dataKey", sDataKey)
			xcols.Add(nc)
			'add to headRows
			headRows.Put(sDataKey, sTitle)
		End Select
	Next
	columns = xcols
End Sub

'add a column
Sub addColumn(fld As String, title As String)
	Dim nc As Map = CreateMap()
	nc.Put("header", title)
	nc.Put("dataKey", fld)
	columns.Add(nc)
	headRows.Put(fld, title)
End Sub

'add a row
Sub addRow(row As Map)
	rows.Add(row)
End Sub

'event on didDrawPage
Sub didDrawPage(Module As Object, methodName As String, data As Object)
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
		options.Put("didDrawPage", cb)
	End If
End Sub
'
'This hook is called just before the column width and other features are computed.
Sub didParseCell(Module As Object, methodName As String, data As Object)
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
		options.Put("didParseCell", cb)
	End If
End Sub
'	
'event on willDrawCell	
Sub willDrawCell(Module As Object, methodName As String, data As Object)
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
		options.Put("willDrawCell", cb)
	End If
End Sub	
'
'Use for adding content to the cells after they are drawn. This could be images or links.
Sub didDrawCell(Module As Object, methodName As String, data As Object)
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
		options.Put("didDrawCell", cb)
	End If
End Sub	

'event on beforePageContent
Sub beforePageContent(Module As Object, methodName As String, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
	options.Put("beforePageContent", cb)
End Sub	

'event on afterPageContent
Sub afterPageContent(Module As Object, methodName As String, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(data))
	options.Put("afterPageContent", cb)
End Sub	

private Sub CopyStyles(source As styleDef, target As Map)
	If source.font <> "" Then 
		target.Put("font", source.font)
	End If
	If source.linewidth <> 0 Then 
		target.Put("lineWidth", source.lineWidth)
	End If
	If source.lineColor.Size > 0 Then
		If source.lineColor.Size = 1 Then
			Dim lc As String = source.lineColor.Get(0)
			target.Put("lineColor", lc)
		Else	 
			target.Put("lineColor", source.lineColor)
		End If
	End If
	If source.fontSize <> 0 Then
		target.Put("fontSize", source.fontSize)
	End If
	If source.fillColor.Size > 0 Then
		If source.fillColor.Size = 1 Then
			Dim fc As String = source.fillColor.Get(0)
			target.Put("fillColor", fc)
		Else
			target.Put("fillColor", source.fillColor)
		End If
	End If
	If source.cellPadding <> Null Then
		target.Put("cellPadding", source.cellPadding)
	End If
	If source.cellWidth <> "" Then
		target.Put("cellWidth", source.cellWidth)
	End If
	If source.rowHeight <> 0 Then
		target.Put("rowHeight", source.rowHeight)
	End If
	If source.fontStyle <> "" Then 
		target.Put("fontStyle", source.fontStyle)
	End If
	If source.overflow <> "" Then 
		target.Put("overflow", source.overflow)
	End If
	If source.halign <> "" Then 
		target.Put("halign", source.halign)
	End If
	If source.valign <> "" Then 
		target.Put("valign", source.valign)
	End If
	If source.fillStyle <> "" Then 
		target.Put("fillStyle", source.fillStyle)
	End If
	If source.textColor.Size > 0 Then
		If source.textColor.Size = 1 Then
			Dim tc As String = source.textColor.Get(0)
			target.Put("textColor", tc)
		Else
			target.Put("textColor", source.textColor)
		End If
	End If
	target.Put("minCellWidth", source.minCellWidth)
	target.Put("minCellHeight", source.minCellHeight)
End Sub

'set head
Sub setHead(heads As List)
	options.Put("head", heads)
End Sub

'set foot
Sub setFoot(foots As List)
	options.Put("foot", foots)
End Sub

'set body
Sub setBody(body As List)
	options.Put("body", body)
End Sub

'set padding
Sub setPadding(p As Object)
	options.Put("padding", p)
End Sub

'set font size
Sub setFontSize(fs As Object)
	options.Put("fontSize", fs)
End Sub

'set line height
Sub setlineHeight(lh As Object)
	options.Put("lineHeight", lh)
End Sub

'set row page break
Sub setrowPageBreak(rpb As String)
	options.Put("rowPageBreak", rpb)
End Sub

'set show head
Sub setshowHead(sh As String)
	options.Put("showHead", sh)
End Sub

'set horizontalPageBreakRepeat
Sub sethorizontalPageBreakRepeat(v As Object)
	options.Put("horizontalPageBreakRepeat", v)
End Sub

'set horizontalPageBreak
Sub sethorizontalPageBreak(v As Boolean)
	options.Put("horizontalPageBreak", v)
End Sub

'set show foot
Sub setshowFoot(sf As String)
	options.Put("showFoot", sf)
End Sub

'do not all this directly
Sub BuildOptions
	If columns.Size = 0 Or rows.Size = 0 Then Return
	'
	head.Add(headRows)
	'
	options.Put("includeHiddenHtml", includeHiddenHtml)
	options.Put("head", head)
	options.Put("columns", columns)
	options.Put("body", rows)
	If Theme <> "" Then 
		options.Put("theme", Theme)
	End If
	'*** STYLES
	CopyStyles(styles, StylesM)
	If StylesM.Size > 0 Then 
		options.Put("styles", StylesM)
	End If
	'
	'*** HEADER STYLES
	CopyStyles(headerStyles, HeaderStylesM)
	If HeaderStylesM.Size > 0 Then
		options.put("headStyles", HeaderStylesM)
	End If
	'
	'** ALTERNATE STYLES
	CopyStyles(alternateRowStyles, alternateRowStylesM)
	If alternateRowStylesM.Size > 0 Then
		options.Put("alternateRowStyles", alternateRowStylesM)
	End If
	'
	'*** BODY STYLES
	CopyStyles(bodyStyles, BodyStylesM)
	If BodyStylesM.Size > 0 Then
		options.Put("bodyStyles", BodyStylesM)
	End If
	'
	'COLUMN STYLES
	If ColumnStylesM.Size > 0 Then
		options.Put("columnStyles", ColumnStylesM)
	End If
	
	'footer styles
	CopyStyles(footerStyles, FooterStyleM)
	If FooterStyleM.Size > 0 Then
		options.Put("footStyles", FooterStyleM)
	End If
	'
	CopyMargin(Margin, MarginM)
	If MarginM.Size > 0 Then
		options.put("margin", MarginM)
	End If
	'
	options.Put("startY", StartY)
	options.Put("pageBreak", PageBreak)
	options.Put("tableWidth", TableWidth)
End Sub

'copy margins
private Sub CopyMargin(source As MarginObj, target As Map)
	If source.top <> 0 Then 
		target.Put("top", source.top)
	End If
	If source.left <> 0 Then 
		target.Put("left", source.left)
	End If
	If source.right <> 0 Then 
		target.Put("right", source.right)
	End If
	If source.bottom <> 0 Then 
		target.Put("bottom", source.bottom)
	End If
	If source.width <> 0 Then 
		target.Put("width", source.width)
	End If
End Sub

Sub SetBorders(width As Int, r As Int, g As Int, b As Int)
	setTableLineWidth(width)
	TableLineColor(r, g, b)
	styles.lineColor.Add(r)
	styles.lineColor.Add(g)
	styles.lineColor.Add(b)
	styles.lineWidth = width
	bodyStyles.lineColor.Add(r)
	bodyStyles.lineColor.Add(g)
	bodyStyles.lineColor.Add(b)
	bodyStyles.lineWidth = width
End Sub


