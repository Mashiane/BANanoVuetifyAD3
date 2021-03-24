B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Public rows As List
	Public columns As List
	Private ocolumns As Map
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
	Public CONST PAGE_BREAK_AUTO As String = "auto"
	Public CONST PAGE_BREAK_AVOID As String = "avoid"
	Public CONST PAGE_BREAK_ALWAYS As String = "always"
	Private tableLineColor As List
	Private tableLineWidth As Double
	Private BANano As BANano
	Type StylesObj (font As String, lineWidth As Double, lineColor As List, fillColor As List, fontSize As Int, _
	cellPadding As Int, fontStyle As String,overflow As String, textColor As List, halign As String, valign As String, _
	fillStyle As String, rowHeight As Int, columnWidth As String)
	Public styles As StylesObj
	Public headerStyles As StylesObj
	Public alternateRowStyles As StylesObj
	Public BodyStyles As StylesObj
	Type MarginObj(top As Int, bottom As Int, left As Int, right As Int, width As Int)
	Public Margin As MarginObj
End Sub

'initialize the autoTable
Public Sub Initialize(eventHandler As Object)
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
	tableLineColor.Initialize
	alternateRowStylesM.Initialize 
	
	styles = StyleInit
	headerStyles = StyleInit
	alternateRowStyles = StyleInit
	BodyStyles = StyleInit
End Sub

private Sub StyleInit As StylesObj
	Dim stylesx As StylesObj
	stylesx.Initialize 
	stylesx.font = ""
	stylesx.linewidth = 0
	stylesx.lineColor.Initialize 
	stylesx.fillColor.Initialize 
	stylesx.fontSize = 0
	stylesx.cellPadding = 0
	stylesx.fontStyle = ""
	stylesx.overflow = ""
	stylesx.textColor.Initialize 
	stylesx.halign = ""
	stylesx.valign = ""
	stylesx.fillStyle = ""
	stylesx.rowHeight = 0
	stylesx.columnWidth = 0
	Return stylesx
End Sub

Sub addColumnStyle(colName As String, style As StylesObj)
	Dim cm As Map = CreateMap()
	CopyStyles(style, cm)
	ColumnStylesM.Put(colName, cm) 
End Sub

'set the text color
Sub setTextColor(s As StylesObj, r As Int, g As Int, b As Int)
	s.textColor.Add(r)
	s.textColor.Add(g)
	s.textColor.Add(b)
End Sub

'set the style line color
Sub setLineColor(s As StylesObj, r As Int, g As Int, b As Int)
	s.lineColor.Add(r)
	s.lineColor.Add(g)
	s.lineColor.Add(b)
End Sub

'set style fill color
Sub setFillColor(s As StylesObj, r As Int, g As Int, b As Int)
	s.fillColor.Add(r)
	s.fillColor.Add(g)
	S.fillColor.Add(b)
End Sub

'set table line width
Sub setTableLineWidth(t As Double)
	tableLineWidth = t
	options.Put("tableLineWidth", tableLineWidth)
End Sub

'set table line color
Sub setTableLineColor(r As Int, g As Int, b As Int)
	tableLineColor.AddAll(Array As Int(r, g, b))
	options.Put("tableLineColor", tableLineColor)
End Sub

'set rows from a data-table
Sub SetRowsFromDataTable(xrows As List)
	rows = xrows
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
			nc.Put("title", sTitle)
			nc.Put("dataKey", sDataKey)
			xcols.Add(nc)
		End Select
		'
		'Case "image", "avatarimg"
			
	Next
	columns = xcols
End Sub

'event on createdHeaderCell 
Sub createdHeaderCell(methodName As String, cell As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(cell, data))
	options.Put("createdHeaderCell", cb)
End Sub
	
'event on createdCell	
Sub createdCell(methodName As String, cell As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(cell, data))
	options.Put("createdCell", cb)
End Sub	

'event on drawHeaderRow
Sub drawHeaderRow(methodName As String, row As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(row, data))
	options.Put("drawHeaderRow", cb)
End Sub	

'event on drawRow
Sub drawRow(methodName As String, row As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(row, data))
	options.Put("drawRow", cb)
End Sub	

'event on drawHeaderCell
Sub drawHeaderCell(methodName As String, cell As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(cell, data))
	options.Put("drawHeaderCell", cb)
End Sub	

'event on drawCell
Sub drawCell(methodName As String, cell As Object, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(cell, data))
	options.Put("drawCell", cb)
End Sub	

'event on beforePageContent
Sub beforePageContent(methodName As String, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(data))
	options.Put("beforePageContent", cb)
End Sub	

'event on afterPageContent
Sub afterPageContent(methodName As String, data As Object)
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(data))
	options.Put("afterPageContent", cb)
End Sub	

private Sub CopyStyles(source As StylesObj, target As Map)
	If source.font <> "" Then 
		target.Put("font", source.font)
	End If
	If source.linewidth <> 0 Then 
		target.Put("lineWidth", source.lineWidth)
	End If
	If source.lineColor.Size > 0 Then 
		target.Put("lineColor", source.lineColor)
	End If
	If source.fontSize <> 0 Then
		target.Put("fontSize", source.fontSize)
	End If
	If source.fillColor.Size > 0 Then
		target.Put("fillColor", source.fillColor)
	End If
	If source.cellPadding <> 0 Then
		target.Put("cellPadding", source.cellPadding)
	End If
	If source.columnWidth <> 0 Then
		target.Put("columnWidth", source.columnWidth)
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
		target.Put("textColor", source.textColor)
	End If
End Sub

'do not all this directly
Sub BuildOptions
	If columns.Size = 0 Or rows.Size = 0 Then Return
	'
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
		options.put("headerStyles", HeaderStylesM)
	End If
	'
	'** ALTERNATE STYLES
	CopyStyles(alternateRowStyles, alternateRowStylesM)
	If alternateRowStylesM.Size > 0 Then
		options.Put("alternateRowStyles", alternateRowStylesM)
	End If
	'
	'*** BODY STYLES
	CopyStyles(BodyStyles, BodyStylesM)
	If BodyStylesM.Size > 0 Then
		options.Put("bodyStyles", BodyStylesM)
	End If
	'
	'COLUMN STYLES
	If ColumnStylesM.Size > 0 Then
		options.Put("columnStyles", ColumnStylesM)
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
