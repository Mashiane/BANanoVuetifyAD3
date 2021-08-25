B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

Sub Class_Globals
	Public BANano As BANano
	Public WorkBook As BANanoObject
	Private oxml As BANanoObject
	Private fName As String
	Type OXMLCell(typeOf As String, value As String, formula As String, style As Map)
	Type OXMLRow(rowIndex As Int, columnIndex As Int, values As List, style As Map)
	Type OXMLStyle(bold As Boolean, italic As Boolean, underline As Boolean, strike As Boolean, fontSize As String, _
	fontColor As String, fontName As String, fontFamily As String, scheme As String, numberFrmat As String, _
	borderColor As String, borderThickness As String, hAlignment As String, vAlignment As String, _
	FillPattern As String, FillForeColor As String, FillBackground As String)
	Public const BorderThick As String = "thick"
	Public const BorderNone As String = "none"
	Public const BorderThin As String = "thin"
	Public const BorderMedium As String = "medium"
	Public const BorderDashed As String = "dashed"
	Public const BorderDotted As String = "dotted"
	Public const BorderDouble As String = "double"
	Public const BorderHair As String = "hair"
	Public const BorderMediumDashed As String = "mediumDashed"
	Public const BorderDashDot As String = "dashDot"
	Public const BorderMediumDashDot As String = "mediumDashDot"
	Public const BorderDashDotDot As String = "dashDotDot"
	Public const BorderMediumDashDotDot As String = "mediumDashDotDot"
	Public const BorderSlantDashDot As String = "slantDashDot"
	Public const colors_red As String = "F44336"
	Public const colors_pink As String = "E91E63"
	Public const colors_purple As String = "9C27B0"
	Public const colors_deepPurple As String = "673AB7"
	Public const colors_indigo As String = "3F51B5"
	Public const colors_blue As String = "2196F3"
	Public const colors_lightBlue As String = "03A9F4"
	Public const colors_cyan As String = "00BCD4"
	Public const colors_teal As String = "009688"
	Public const colors_green As String = "4CAF50"
	Public const colors_lightGreen As String = "8BC34A"
	Public const colors_lime As String = "CDDC39"
	Public const colors_yellow As String = "ffe821"
	Public const colors_amber As String = "FFC107"
	Public const colors_orange As String = "FF9800"
	Public const colors_deepOrange As String = "FF5722"
	Public const colors_brown As String = "795548"
	Public const colors_grey As String = "9E9E9E"
	Public const colors_blueGrey As String = "607D8B"
	Public const colors_black As String = "000000"
	Public const colors_white As String = "ffffff"
	Public const colors_transparent As String = "transparent"
	'
	Public const Pattern_darkDown As String = "darkDown"
	Public const Pattern_darkGray As String = "darkGray"
	Public const Pattern_darkGrid As String = "darkGrid"
	Public const Pattern_darkHorizontal As String = "darkHorizontal"
	Public const Pattern_darkTrellis As String = "darkTrellis"
	Public const Pattern_darkUp As String = "darkUp"
	Public const Pattern_darkVertical As String = "darkVertical"
	Public const Pattern_gray0625 As String = "gray0625"
	Public const Pattern_gray125 As String = "gray125"
	Public const Pattern_lightDown As String = "lightDown"
	Public const Pattern_lightGray As String = "lightGray"
	Public const Pattern_lightGrid As String = "lightGrid"
	Public const Pattern_lightHorizontal As String = "lightHorizontal"
	Public const Pattern_lightTrellis As String = "lightTrellis"
	Public const Pattern_lightUp As String = "lightUp"
	Public const Pattern_lightVertical As String  = "lightVertical"
	Public const Pattern_mediumGray As String = "mediumGray"
	Public const Pattern_none As String = "none"
	Public const Pattern_solid As String = "solid"
	Private columns As Map
	Public rows As List
End Sub

'initialize with filename
Sub Initialize(fileName As String)
	BANano.DependsOnAsset("fileSaver.min.js")
	BANano.DependsOnAsset("jszip.min.js")
	BANano.DependsOnAsset("oxml.min.js")
	BANano.DependsOnAsset("xlsx.full.min.js")
		
	oxml.Initialize("oxml")
	WorkBook = oxml.RunMethod("xlsx", Null)
	fName = fileName
	columns.Initialize
	rows.Initialize 
End Sub

'add a column
Sub AddColumn(colName As String, colHeading As String)
	columns.Put(colName, colHeading)
End Sub

'set columns
Sub SetColumns(sheet As BANanoObject, rowPos As Int)
	Dim hdrList As List
	hdrList.Initialize
	Dim colCnt As Int
	Dim colTot As Int = columns.Size - 1
	For colCnt = 0 To colTot
		Dim hdrName As String = columns.GetValueAt(colCnt)
		hdrList.Add(hdrName)
	Next
	SetRow(sheet, rowPos, 1, hdrList)
End Sub


'set rows from data-table
Sub SetRowsFromDataTable(recs As List)
	Dim recCnt As Int = 0
	Dim recTot As Int = recs.Size - 1
	
	'loop through each expense record
	For recCnt = 0 To recTot
		'get each record
		Dim xlrec As Map = recs.Get(recCnt)
		'get the columns from the headers
		Dim xlrpt As List
		xlrpt.Initialize 
		For Each hdrn As String In columns.keys
			hdrn = hdrn.ToLowerCase
			Dim v As String = xlrec.Get(hdrn)
			v = CStr(v)
			v = v.trim
			xlrpt.Add(v)
		Next
		rows.Add(xlrpt)
	Next
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
			'add to headRows
			columns.Put(sDataKey, sTitle)
		End Select
	Next
End Sub



private Sub CStr(o As Object) As String
	Return "" & o
End Sub

'read the 1st worksheet		
Sub ReadFile(data As String) As List
	Dim XLSX As BANanoObject
	XLSX.initialize("XLSX")
	Dim opt As Map = CreateMap()
	opt.put("type", "binary")
	opt.Put("cellDates", True)
	opt.Put("cellText", False)
	'opt.put("raw", True)
	'get the workbook
	Dim WorkBook As BANanoObject = XLSX.RunMethod("read", Array(data, opt))
	'get the worksheet names
	Dim sheetNames As List = WorkBook.getfield("SheetNames").Result
	'fetch the name of first Sheet.
	Dim firstSheet As String = sheetNames.get(0)
	'get the sheets object
	Dim sheets As List = WorkBook.getfield("Sheets").Result
	'get the sheet objetc by name
	Dim sheet As BANanoObject = sheets.Get(firstSheet)
	'Read all rows from first sheet into an JSON Array.
	Dim readOpt As Map = CreateMap()
	readOpt.Put("defval", "")
	readOpt.Put("dateNF", "yyyy-mm-dd hh:mm:ss")
	Dim excelRows As List = XLSX.getfield("utils").RunMethod("sheet_to_row_object_array", Array(sheet, readOpt))
	Return excelRows
End Sub

'read the 1st worksheet		
Sub ReadFileWorkSheet(data As String, ws As Int) As List
	Dim XLSX As BANanoObject
	XLSX.initialize("XLSX")
	Dim opt As Map = CreateMap()
	opt.put("type", "binary")
	opt.Put("cellDates", True)
	opt.Put("cellText", False)
	'opt.put("raw", True)
	'get the workbook
	Dim WorkBook As BANanoObject = XLSX.RunMethod("read", Array(data, opt))
	'get the worksheet names
	Dim sheetNames As List = WorkBook.getfield("SheetNames").Result
	'fetch the name of first Sheet.
	Dim firstSheet As String = sheetNames.get(ws)
	'get the sheets object
	Dim sheets As List = WorkBook.getfield("Sheets").Result
	'get the sheet objetc by name
	Dim sheet As BANanoObject = sheets.Get(firstSheet)
	'Read all rows from first sheet into an JSON Array.
	Dim readOpt As Map = CreateMap()
	readOpt.Put("defval", "")
	readOpt.Put("dateNF", "yyyy-mm-dd hh:mm:ss")
	Dim excelRows As List = XLSX.getfield("utils").RunMethod("sheet_to_row_object_array", Array(sheet, readOpt))
	Return excelRows
End Sub


'create a style
Sub CreateStyle As OXMLStyle
	Dim s As OXMLStyle
	s.Initialize
	s.bold = False
	s.italic = False
	s.underline = False
	s.strike = False
	s.fontSize = False
	s.fontColor = ""
	s.fontName= ""
	s.fontFamily = ""
	s.scheme = ""
	s.numberFrmat = ""
	s.bordercolor = ""
	s.hAlignment = ""
	s.vAlignment = ""
	s.FillPattern =""
	s.FillForeColor = ""
	s.FillBackground = ""
	Return s
End Sub

Sub SetStyleBorder(rc As BANanoObject, borderColor As String, borderThickNess As String) As BANanoOXML
	Dim border As Map = CreateMap()
	border.Put("color", borderColor)
	border.Put("style", borderThickNess)
	Dim obj As Map = CreateMap()
	obj.Put("border", border)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleNumberFormat(rc As BANanoObject, nf As String) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("numberFormat", nf)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleBold(rc As BANanoObject, b As Boolean) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("bold", b)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleItalic(rc As BANanoObject, b As Boolean) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("italic", b)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleUnderline(rc As BANanoObject, b As Boolean) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("underline", b)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleFontSize(rc As BANanoObject, fs As Int) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("fontSize", fs)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleVAlignment(rc As BANanoObject, va As String) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("vAlignment", va)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

Sub SetStyleHAlignment(rc As BANanoObject, ha As String) As BANanoOXML
	Dim obj As Map = CreateMap()
	obj.Put("hAlignment", ha)
	rc.RunMethod("style", Array(obj))
	Return Me
End Sub

'set style
Sub SetStyle(rc As BANanoObject, Style As OXMLStyle)
	Dim obj As Map = CreateMap()
	If Style.bold Then obj.Put("bold", Style.bold)
	If Style.italic Then obj.Put("italic", Style.italic)
	If Style.underline Then obj.Put("underline", Style.underline)
	If Style.strike Then obj.Put("strike", Style.strike)
	If Style.fontSize Then obj.Put("fontSize", Style.fontSize)
	If Style.fontColor <> "" Then obj.Put("fontColor", Style.fontColor)
	If Style.fontName <> "" Then obj.Put("fontName", Style.fontName)
	If Style.fontFamily <> "" Then obj.Put("fontFamily", Style.fontFamily)
	If Style.scheme <> "" Then obj.Put("scheme", Style.scheme)
	If Style.numberFrmat <> "" Then obj.Put("numberFormat", Style.numberFrmat)
	If Style.vAlignment <> "" Then obj.Put("vAlignment", Style.vAlignment)
	If Style.hAlignment <> "" Then obj.Put("hAlignment", Style.hAlignment)
	If Style.borderColor <> "" Or Style.borderThickness <> "" Then
		Dim border As Map = CreateMap()
		border.Put("color", Style.bordercolor)
		border.Put("style", Style.borderthickness)
		obj.Put("border", border)
	End If
	
	If Style.FillPattern <> "" And Style.FillForeColor <> "" And Style.FillBackground <> "" Then
		Dim fill As Map = CreateMap()
		fill.Put("pattern", Style.FillPattern)
		fill.Put("foreColor", Style.FillForeColor)
		fill.Put("backColor", Style.FillBackground)
		obj.Put("fill", fill)
	End If
	rc.RunMethod("style", Array(obj))
End Sub

'merge a collection of cells
Sub Merge(sheet As BANanoObject, range As String) As BANanoOXML
	sheet.RunMethod("merge", Array(range))
	Return Me
End Sub

'get an existing row, should be already defined
Sub GetRow(sheet As BANanoObject, rowPos As Int, colPos As Int) As BANanoObject
	Dim row As BANanoObject = sheet.RunMethod("row", Array(rowPos, colPos))
	Return row
End Sub

'get an existing column, should be already defined
Sub GetColumn(sheet As BANanoObject, rowPos As Int, colPos As Int) As BANanoObject
	Dim colx As BANanoObject = sheet.RunMethod("column", Array(rowPos, colPos))
	Return colx
End Sub

'get an existing cell, should be already defined
Sub GetCell(sheet As BANanoObject, rowPos As Int, colPos As Int) As BANanoObject
	Dim colx As BANanoObject = sheet.RunMethod("cell", Array(rowPos, colPos))
	Return colx
End Sub

'create a row to add rows
Sub CreateRow(rowPos As Int, colPos As Int) As OXMLRow
	Dim row As OXMLRow
	row.Initialize
	row.columnIndex = colPos
	row.rowIndex = rowPos
	row.values.Initialize
	row.style = CreateMap()
	Return row
End Sub

'create a formula cell
private Sub CreateFormula(formula As String) As OXMLCell
	Dim cell As OXMLCell
	cell.Initialize
	cell.typeOf = "formula"
	cell.formula = formula
	cell.style = CreateMap()
	Return cell
End Sub

'create a string cell
private Sub CreateText(value As String) As OXMLCell
	Dim cell As OXMLCell
	cell.Initialize
	cell.typeOf = "string"
	cell.value = value
	cell.style = CreateMap()
	Return cell
End Sub

'create a number cell
private Sub CreateNumber(value As String) As OXMLCell
	Dim cell As OXMLCell
	cell.Initialize
	cell.typeOf = "numeric"
	cell.value = value
	cell.style = CreateMap()
	Return cell
End Sub

'create a sharedText cell
private Sub CreateSharedText(value As String) As OXMLCell
	Dim cell As OXMLCell
	cell.Initialize
	cell.typeOf = "sharedString"
	cell.value = value
	cell.style = CreateMap()
	Return cell
End Sub

'convert an OXML to an object
private Sub Cell2Map(cell As OXMLCell) As Map
	Dim m As Map = CreateMap()
	m.Put("type", cell.typeOf)
	m.Put("value", cell.value)
	If cell.formula <> "" Then
		m.Put("formula", cell.formula)
	End If
	Return m
End Sub

'add a new workbook
Sub WorkSheet(sheetName As String) As BANanoObject
	Dim wkSheet As BANanoObject
	wkSheet = WorkBook.RunMethod("sheet", Array(sheetName))
	Return wkSheet
End Sub

'set row values at a row starting at column
Sub SetRow(sheet As BANanoObject, rowPos As Int, colPos As Int, values As List)
	sheet.RunMethod("row", Array(rowPos, colPos, values))
End Sub

'set column values at a row starting at column
Sub SetColumn(sheet As BANanoObject, rowPos As Int, colPos As Int, values As List)
	sheet.RunMethod("column", Array(rowPos, colPos, values))
End Sub

'set row values based on row banano object
Sub SetRowBO(row As BANanoObject, values As List)
	row.RunMethod("set", values)
End Sub

'set col values based on col banano object
Sub SetColBO(col As BANanoObject, values As List)
	col.RunMethod("set", values)
End Sub

'set row using OXML
Sub SetRow1(sheet As BANanoObject, row As OXMLRow)
	Dim rowPos As Int = row.rowIndex
	Dim colPos As Int = row.columnIndex
	Dim values As List = row.values
	SetRow(sheet, rowPos, colPos, values)
End Sub

'download the file
Sub Download(module As Object, methodName As String)
	Dim res As Map
	Dim err As Map
	Dim prom As BANanoPromise = WorkBook.RunMethod("download", Array(fName))
	BANano.Await(prom)
	prom.Then(res)
	Dim args As List
	prom.CallSub(module, methodName, args)
	prom.Else(err)
	prom.end
End Sub

'set row text
Sub AddRowText(row As OXMLRow, value As String) As BANanoOXML
	Dim cell As Map = Cell2Map(CreateText(value))
	row.values.Add(cell)
	Return Me
End Sub

'set row number
Sub AddRowNumber(row As OXMLRow, value As String) As BANanoOXML
	Dim cell As Map = Cell2Map(CreateNumber(value))
	row.values.Add(cell)
	Return Me
End Sub

'set row shared text
Sub AddRowSharedText(row As OXMLRow, value As String) As BANanoOXML
	Dim cell As Map = Cell2Map(CreateSharedText(value))
	row.values.Add(cell)
	Return Me
End Sub

'set row formula
Sub AddRowFormula(row As OXMLRow, formula As String) As BANanoOXML
	Dim cell As Map = Cell2Map(CreateFormula(formula))
	row.values.Add(cell)
	Return Me
End Sub

'set row formula with value
Sub AddRowFormula1(row As OXMLRow, formula As String, value As String) As BANanoOXML
	Dim cell As OXMLCell = CreateFormula(formula)
	cell.value = value
	Dim cellV As Map = Cell2Map(cell)
	row.values.Add(cellV)
	Return Me
End Sub

'set a string
Sub SetText(sheet As BANanoObject, rowPos As Int, colPos As Int, value As String)
	Dim cell As Map = Cell2Map(CreateText(value))
	sheet.RunMethod("cell", Array(rowPos, colPos)).RunMethod("set", Array(cell))
End Sub

'set a string to existing cell
Sub SetCellText(cellBO As BANanoObject,  value As String)
	Dim cell As Map = Cell2Map(CreateText(value))
	cellBO.RunMethod("set", Array(cell))
End Sub

'set a numeric value
Sub SetCellNumber(cellBO As BANanoObject, value As String)
	Dim cell As Map = Cell2Map(CreateNumber(value))
	cellBO.RunMethod("set", Array(cell))
End Sub

'set a numeric value
Sub SetNumber(sheet As BANanoObject, rowPos As Int, colPos As Int, value As String)
	Dim cell As Map = Cell2Map(CreateNumber(value))
	sheet.RunMethod("cell", Array(rowPos, colPos)).RunMethod("set", Array(cell))
End Sub

'set a shared string
Sub SetCellSharedText(cellBO As BANanoObject, value As String)
	Dim cell As Map = Cell2Map(CreateSharedText(value))
	cellBO.RunMethod("set", Array(cell))
End Sub

'set a shared string
Sub SetSharedText(sheet As BANanoObject, rowPos As Int, colPos As Int, value As String)
	Dim cell As Map = Cell2Map(CreateSharedText(value))
	sheet.RunMethod("cell", Array(rowPos, colPos)).RunMethod("set", Array(cell))
End Sub

'set a formula
Sub SetCellFormula(cellBO As BANanoObject, formula As String)
	Dim cell As Map = Cell2Map(CreateFormula(formula))
	cellBO.RunMethod("set", Array(cell))
End Sub


'set a formula
Sub SetFormula(sheet As BANanoObject, rowPos As Int, colPos As Int, formula As String)
	Dim cell As Map = Cell2Map(CreateFormula(formula))
	sheet.RunMethod("cell", Array(rowPos, colPos)).RunMethod("set", Array(cell))
End Sub

'set a formular with cached result value
Sub SetCellFormula1(cellBO As BANanoObject, formula As String, value As String)
	Dim cell As OXMLCell = CreateFormula(formula)
	cell.value = value
	Dim cellV As Map = Cell2Map(cell)
	cellBO.RunMethod("set", Array(cellV))
End Sub

'set a formular with cached result value
Sub SetFormula1(sheet As BANanoObject, rowPos As Int, colPos As Int, formula As String, value As String)
	Dim cell As OXMLCell = CreateFormula(formula)
	cell.value = value
	Dim cellV As Map = Cell2Map(cell)
	sheet.RunMethod("cell", Array(rowPos, colPos)).RunMethod("set", Array(cellV))
End Sub