B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private fname As String
	Private jsPDF As BANanoObject
	Private BANano As BANano
	Private mCallBack As Object
	Public const ORIENTATION_LANDSCAPE As String = "landscape"
	Public const ORIENTATION_POTRAIT As String = "potrait"
	Public const IMAGE_JPEG As String = "JPEG"
	Public const IMAGE_PNG As String = "PNG"
	Public const IMAGE_WEBP As String = "WEBP"
	Public const FONT_TYPE_NORMAL As String = "normal"
	Public const FONT_TYPE_ITALIC As String = "italic"
	Public const FONT_TYPE_BOLD As String = "bold"
	Public const FONT_TYPE_BOLDITALIC As String = "bolditalic"
	Public const ALIGN_LEFT As String = "left"
	Public const ALIGN_CENTER As String = "center"
	Public const ALIGN_RIGHT As String = "right"
	Public const ALIGN_JUSTIFY As String = "justify"
	Public const STYLE_STROKE As String = "S"
	Public const STYLE_FILL As String = "F"
	Public const STYLE_FD As String = "FD"
	Public const OVERFLOW_ELLIPSIZE As String = "ellipsize"
	Public const OVERFLOW_VISIBLE As String = "visible"
	Public const OVERFLOW_HIDDEN As String = "hidden"
	Public const OVERFLOW_LINEBREAK As String = "linebreak"
	Public const CELL_WIDTH_AUTO As String = "auto"
	Public const CELL_WIDTH_WRAP As String = "wrap"
	Public const CELL_WIDTH_AUTO As String = "auto"
	Public CONST OVERFLOW_NORMAL As String = "normal"
	'
	Public const HALIGN_TOP As String = "top"
	Public const HALIGN_MIDDLE As String = "middle"
	Public const HALIGN_BOTTOM As String = "bottom"
	'
	Public const PAGE_A0 As String = "a0"
	Public const PAGE_A1 As String = "a1"
	Public const PAGE_A2 As String = "a2"	
	Public const PAGE_A3 As String = "a3"
	Public const PAGE_A4 As String = "a4"
	Public const PAGE_A5 As String = "a5"	
	Public const PAGE_A6 As String = "a6"
	Public const PAGE_A7 As String = "a7"	
	Public const PAGE_A8 As String = "a8"
	Public const PAGE_A9 As String = "a9"	
	Public const PAGE_A10 As String = "a10"
	'
	Public const PAGE_B0 As String = "b0"
	Public const PAGE_B1 As String = "b1"
	Public const PAGE_B2 As String = "b2"
	Public const PAGE_B3 As String = "b3"
	Public const PAGE_B4 As String = "b4"	
	Public const PAGE_B5 As String = "b5"
	Public const PAGE_B6 As String = "b6"	
	Public const PAGE_B7 As String = "b7"
	Public const PAGE_B8 As String = "b8"	
	Public const PAGE_B9 As String = "b9"
	Public const PAGE_B10 As String = "b10"
	
	Public const PAGE_C0 As String = "c0"
	Public const PAGE_C1 As String = "c1"
	Public const PAGE_C2 As String = "c2"
	Public const PAGE_C3 As String = "c3"	
	Public const PAGE_C4 As String = "c4"
	Public const PAGE_C5 As String = "c5"	
	Public const PAGE_C6 As String = "c6"
	Public const PAGE_C7 As String = "c7"	
	Public const PAGE_C8 As String = "c8"
	Public const PAGE_C9 As String = "c9"	
	Public const PAGE_C10 As String = "c10"
	Public const PAGE_DL As String = "dl"	
	Public const PAGE_LETTER As String = "letter"
	Public const PAGE_GOVERNMENT_LETTER As String = "government-letter"
	Public const PAGE_LEGAL As String = "legal"
	Public const PAGE_JUNIOR_LEGAL As String = "junior-legal"
	Public const PAGE_LEDGER As String = "ledger"
	Public const PAGE_TABLOID As String = "tabloid"
	Public const PAGE_CREDIT_CARD As String = "credit-card"	
	'
	Public const UNIT_MM As String = "mm"
	Public const UNIT_PT As String = "pt"
	Public const UNIT_IN As String = "in"
		
	Private mOrientation As String
	Private mUnits As String
	Private encryption As Map
	Private userPermissions As List
	Private mpageSize As String
	Private pdfOptions As Map
	Private marginM As Map
	Public Margin As MarginObj
	
	Public const BASELINE_ALPHABETIC As String = "alphabetic"
	Public const BASELINE_IDEOGRAPHIC As String = "ideographic"
	Public const BASELINE_BOTTOM As String = "bottom"
	Public const BASELINE_TOP As String = "top"
	Public const BASELINE_MIDDLE As String = "middle"
	Public const BASELINE_HANGING As String = "hanging"
	'
	Public Const ROTATION_CLOCKWISE As String = "0"
	Public const ROTATION_COUNTERCLOCKWISE As String = "1"
	
	Public const TEXT_FILL As String = "fill"
	Public const TEXT_STROKE As String = "stroke"
	Public const TEXT_FILLTHENSTROKE As String = "fillThenStroke"
	Public const TEXT_INVISIBLE As String = "invisible"
	Public const TEXT_FILLANDADDFORCLIPPING As String = "fillAndAddForClipping"
	Public const TEXT_STROKEANDADDPATHFORCLIPPING As String = "strokeAndAddPathForClipping"
	Public const TEXT_FILLTHENSTROKEANDADDTOPATHFORCLIPPING As String = "fillThenStrokeAndAddToPathForClipping"
	Public const TEXT_ADDTOPATHFORCLIPPING As String = "addToPathForClipping"
	
	Type TextOptions(align As String, baseline As String, rotationDirection As String, charSpace As String, lineHeightFactor As String, maxWidth As String, renderingMode As String, angle As String)
End Sub

'new text options
Sub NewTextOptions As TextOptions
	Dim nt As TextOptions
	nt.Initialize 
	nt.align = ALIGN_LEFT
	nt.baseline = BASELINE_ALPHABETIC
	nt.angle = "0"
	nt.rotationDirection = ROTATION_COUNTERCLOCKWISE
	nt.charSpace = "0"
	nt.lineHeightFactor = "1.15"
	nt.maxWidth = "0"
	nt.renderingMode = TEXT_FILL
	Return nt
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(eventHandler As Object, fileName As String) As BANanoJSPDF
	mCallBack = eventHandler
	fname = fileName	
	encryption.Initialize 
	userPermissions.Initialize 
	pdfOptions.Initialize 
	mUnits = UNIT_PT
	mpageSize = PAGE_A4
	mOrientation = ORIENTATION_POTRAIT
	marginM.Initialize
	Margin.Initialize
	Margin.top = 0
	Margin.left = 0
	Margin.width = 0
	Margin.bottom = 0
	Margin.right = 0  
	Return Me
End Sub

'set page size
Sub setPageSize(ps As String)
	mpageSize = ps
End Sub

'can print
Sub CanPrint As BANanoJSPDF
	userPermissions.Add("print")
	Return Me
End Sub

'can modify
Sub CanModify As BANanoJSPDF
	userPermissions.Add("modify")
	Return Me
End Sub

'can copy
Sub CanCopy As BANanoJSPDF
	userPermissions.Add("copy")
	Return Me
End Sub

'can annotate forms
Sub CanAnnotForms As BANanoJSPDF
	userPermissions.Add("annot-forms")
	Return Me
End Sub

'set user password
Sub SetUserPassword(pwd As String) As BANanoJSPDF
	encryption.put("userPassword", pwd)
	Return Me
End Sub

'set owner password
Sub SetOwnerPassword(pwd As String) As BANanoJSPDF
	encryption.Put("ownerPassword", pwd)
	Return Me
End Sub

'set the unit
Sub setUnit(u As String) 
	mUnits = u
End Sub

'set orientation
Sub setOrientation(o As String)
	mOrientation = o
End Sub

'move to
Sub moveTo(x As Int, y As Int) As BANanoJSPDF
	jsPDF.RunMethod("moveTo", Array(x, y))
	Return Me
End Sub

'draw a line to
Sub lineTo(x As Int, y As Int) As BANanoJSPDF
	jsPDF.RunMethod("lineTo", Array(x, y))
	Return Me
End Sub

'add a page
Sub addPage As BANanoJSPDF
	jsPDF.RunMethod("addPage", Null)
	Return Me
End Sub

'draw a rect
Sub rect(x As Int, y As Int, w As Int, h As Int, style As String) As BANanoJSPDF
	jsPDF.RunMethod("rect", Array(x, y, w, h, style))
	Return Me
End Sub

'draw a rounded rect
Sub roundedRect(x As Int, y As Int, w As Int, h As Int, rx As Int, ry As Int, style As String) As BANanoJSPDF
	jsPDF.RunMethod("roundedRect", Array(x, y, w, h, rx, ry, style))
	Return Me
End Sub	

'draw a line
Sub line(x1 As Int, y1 As Int, x2 As Int, y2 As Int, style As String) As BANanoJSPDF
	jsPDF.RunMethod("line", Array(x1, y1, x2, y2, style))
	Return Me
End Sub

'draw an ellipse
Sub ellipse(x As Int, y As Int, rx As Int, ry As Int, style As String) As BANanoJSPDF
	jsPDF.RunMethod("ellipse", Array(x, y, rx, ry, style))
	Return Me
End Sub

'draw a curve
Sub curveTo(x1 As Int, y1 As Int, x2 As Int, y2 As Int, x3 As Int, y3 As Int) As BANanoJSPDF
	jsPDF.RunMethod("curveTo", Array(x1, y1, x2, y2, x3, y3))
	Return Me
End Sub

'set fill color
Sub SetFillColor(r As Int, g As Int, b As Int) As BANanoJSPDF
	jsPDF.RunMethod("setFillColor", Array(r, g, b))
	Return Me
End Sub

'set line width
Sub SetLineWidth(l As Int) As BANanoJSPDF
	jsPDF.RunMethod("setLineWidth", Array(l))
	Return Me
End Sub

'set draw color
Sub SetDrawColor(c As Int) As BANanoJSPDF
	jsPDF.RunMethod("setDrawColor", Array(c))
	Return Me
End Sub

'draw a circle
Sub circle(x As Int, y As Int, r As Int, style As String) As BANanoJSPDF
	jsPDF.runmethod("circle", Array(x, y, r, style))
	Return Me
End Sub	

'set text
Sub SetText(X As Int, Y As Int, txt As String) As BANanoJSPDF
	jsPDF.RunMethod("text", Array(x, y, txt))
	Return Me
End Sub

'set text with alignment
Sub SetTextAlignRight(X As Int, Y As Int, txt As String) As BANanoJSPDF
	jsPDF.RunMethod("text", Array(x, y, txt, "right"))
	Return Me
End Sub

'set text with alignment
Sub SetTextAlignCenter(X As Int, Y As Int, txt As String) As BANanoJSPDF
	jsPDF.RunMethod("text", Array(x, y, txt, "center"))
	Return Me
End Sub

'set the text color
Sub SetTextColor(c As Int) As BANanoJSPDF
	jsPDF.RunMethod("setTextColor", Array(c))
	Return Me
End Sub

'set text with options
Sub SetTextOptions(txt As String, x As Int, y As Int, opt As TextOptions) As BANanoJSPDF
	Dim options As Map = CreateMap()
	options.Put("align", opt.align)
	options.Put("baseline", opt.baseline)
	options.Put("angle", opt.angle)
	options.Put("rotationDirection", opt.rotationDirection)
	options.Put("charSpace", opt.charSpace)
	options.Put("lineHeightFactor", opt.lineHeightFactor)
	options.Put("maxWidth", opt.maxWidth)
	options.Put("renderingMode", opt.renderingMode)
	jsPDF.RunMethod("text", Array(txt, x, y, options))
	Return Me
End Sub

'set the text color
Sub SetTextColor1(r As Int, g As Int, b As Int) As BANanoJSPDF
	jsPDF.RunMethod("setTextColor", Array(r, g, b))
	Return Me
End Sub

'draw a triangle
Sub triangle(x1 As Int, y1 As Int, x2 As Int, y2 As Int, x3 As Int, y3 As Int, style As String) As BANanoJSPDF
	jsPDF.RunMethod("triangle", Array(x1, y1, x2, y2, x3, y3, style))
	Return Me
End Sub

'set the font type
Sub SetFontType(fs As String) As BANanoJSPDF
	jsPDF.RunMethod("setFontType", Array(fs))
	Return Me
End Sub

'set the font style
Sub SetFontStyle(fs As String) As BANanoJSPDF
	jsPDF.RunMethod("setFontStyle", Array(fs))
	Return Me
End Sub

'set the font size
Sub SetFontSize(fs As Int) As BANanoJSPDF
	jsPDF.runmethod("setFontSize", Array(fs))
	Return Me
End Sub

'set the font
Sub SetFont(fs As String) As BANanoJSPDF
	jsPDF.runmethod("setFont", Array(fs))
	Return Me
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

'initialize the pdf engine
Sub Start As BANanoJSPDF
	If encryption.Size > 0 Then
		If userPermissions.Size > 0 Then
			encryption.Put("userPermissions", userPermissions)
		End If
		pdfOptions.Put("encryption", encryption)
	End If
	CopyMargin(Margin, marginM)
	If marginM.Size > 0 Then
		pdfOptions.put("margin", marginM)
	End If
	jsPDF.Initialize2("jsPDF", Array(mOrientation, mUnits, mpageSize, pdfOptions))
	autoTableSetDefaults
	Return Me
End Sub

Sub autoTableSetDefaults
	jsPDF.RunMethod("autoTableSetDefaults", Null)
End Sub

'add table from BANanoJSPDFTable
Sub autoTable(tbl As BANanoJSPDFTable) As BANanoJSPDF
	tbl.buildoptions
	'jsPDF.RunMethod("autoTable", Array(tbl.columns, tbl.rows, tbl.options))
	jsPDF.RunMethod("autoTable", Array(tbl.options))
	Return Me
End Sub

'add table from html element
Sub autoTable1(tableID As String) As BANanoJSPDF
	tableID = tableID.ToLowerCase
	Dim opt As Map = CreateMap()
	opt.Put("html", $"#${tableID}"$)
	jsPDF.RunMethod("autoTable", Array(opt))
	Return Me
End Sub

'save the pdf document
Sub Save
	jsPDF.RunMethod("save", Array(fname))
End Sub

'add base 64 image
Sub addImage(imgData As String, imgType As String, X As Int, Y As Int, iWidth As Int, iHeight As Int) As BANanoJSPDF
	jsPDF.RunMethod("addImage", Array(imgData, imgType, X, Y, iWidth, iHeight))
	Return Me
End Sub

'return convert pdf to base 64
Sub ToBase64 As String
	'get the output
	Dim out As Object = jsPDF.RunMethod("output", Null)
	Dim xout As String = BANano.RunJavascriptMethod("btoa", Array(out))
	Dim res As String = $"data:application/pdf;base64,${xout}"$
	Return res
End Sub

'autoprint
Sub autoPrint
	jsPDF.RunMethod("autoPrint", Null)
End Sub

'add a font
Sub addFont(url As String, fontName As String, fontType As String) As BANanoJSPDF
	jsPDF.RunMethod("addFont", Array(url, fontName, fontType))
	Return Me
End Sub

'set active page
Sub SetPage(pg As Int) As BANanoJSPDF
	jsPDF.RunMethod("setPage", Array(pg))
	Return Me
End Sub

'Sub fromHTML(elID As String)
'	elID = elID.ToLowerCase
'	Dim elKey As String = $"#${elID}"$
'	If BANano.Exists(elKey) Then
'		Dim elbo As BANanoObject = BANano.GetElement(elKey).ToObject
'		jsPDF.RunMethod("html", Array(elbo))
'	End If	
'End Sub


'get number of pages
Sub GetNumberOfPages As Int
	Dim noOfPages As Int = jsPDF.GetField("internal").RunMethod("getNumberOfPages", Null).Result
	Return noOfPages
End Sub

'get current page width
Sub GetPageWidth As Int
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").getfield("width").result
	Return pw
End Sub

'get current page height
Sub GetPageHeight As Int
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").Getfield("height").result
	Return pw
End Sub

'get finalY after table insert
Sub GetPreviousAutoTableFinalY As Int
	Dim res As Int = jsPDF.GetField("previousAutoTable").GetField("finalY").Result
	Return res
End Sub

'set the footer page numbers
Sub SetPageNumbers As BANanoJSPDF
	Dim pageCount As Int = GetNumberOfPages
	SetFontSize(8)
	Dim pgCnt As Int 
	For pgCnt = 1 To pageCount
		SetPage(pgCnt)
		Dim halfWidth As Int = GetPageWidth / 2
		Dim halfHeight As Int = GetPageHeight
		Dim txtOpt As TextOptions
		txtOpt = NewTextOptions
		txtOpt.align = ALIGN_CENTER
		SetTextOptions($"Page ${pgCnt} of ${pageCount}"$, halfWidth, halfHeight - 15, txtOpt)	
	Next
	Return Me
End Sub