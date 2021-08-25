B4J=true
Group=Default Group\PDF
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
'http://raw.githack.com/MrRio/jsPDF/master/docs/index.html

Sub Class_Globals
	Private fname As String
	Private jsPDF As BANanoObject
	Private BANano As BANano  'ignore
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
	Public const UNIT_CM As String = "cm"
	Public const UNIT_M As String = "m"
	Public const UNIT_PX As String = "px"
	
	Private mOrientation As String
	Private mUnits As String
	Private encryption As Map
	Private userPermissions As List
	Private mpageSize As String
	Private pdfOptions As Map
	Private marginM As Map
	Public margin As MarginObj
	Public putOnlyUsedFonts As Boolean = False
	Public compress As Boolean = False
	Public precision As Int = 16
	Public userUnit As Double = 1.0
	Public floatPrecision As Int = 16
	Public Title As String = ""
	Private dOptions As Map
	
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
	
	Type flagsT(noBOM As Boolean, autoencode As Boolean)
	Type TextOptions(align As String, baseline As String, rotationDirection As Int, charSpace As Int, lineHeightFactor As Double, maxWidth As Int, renderingMode As String, angle As Int, url As String, pageNumber As Int, flags As flagsT)
	'
	Public const OUTPUT_ARRAY_BUFFER As String = "arraybuffer"
	Public const OUTPUT_BLOB As String = "blob"
	Public const OUTPUT_BLOB_URI As String = "bloburi"
	Public const OUTPUT_BLOB_URL As String = "bloburl"
	Public const OUTPUT_DATA_URI_STRING As String = "datauristring"
	Public const OUTPUT_DATA_URL_STRING As String = "dataurlstring"
	Public const OUTPUT_DATA_URI As String = "datauri"
	Public const OUTPUT_DATA_URL As String = "dataurl"
	Public const OUTPUT_DATA_URL_NEW_WINDOW As String = "dataurlnewwindow"
	Public const OUTPUT_PDF_OBJECT_NEW_WINDOW As String = "pdfobjectnewwindow"
	Public const OUTPUT_PDFJS_NEW_WINDOW As String = "pdfjsnewwindow"
	Public ParentComponent As VueComponent
	Public ShowLog As Boolean
End Sub

'new text options
Sub NewTextOptions As TextOptions
	Dim flags As Map = CreateMap()
	flags.Put("noBOM", True)
	flags.Put("autoencode", True)
	'
	Dim nt As TextOptions
	nt.Initialize 
	nt.align = ALIGN_LEFT
	nt.baseline = BASELINE_ALPHABETIC
	nt.angle = 0
	nt.rotationDirection = ROTATION_COUNTERCLOCKWISE
	nt.charSpace = 0
	nt.lineHeightFactor = 1.15
	nt.maxWidth = 0
	nt.renderingMode = TEXT_FILL
	nt.flags.Initialize 
	nt.flags.noBOM = True
	nt.flags.autoencode = True
	nt.url = ""
	nt.pageNumber = 0
	Return nt
End Sub

'Initializes the object. You can add parameters to this method if needed.
Sub Initialize(eventHandler As Object, fileName As String) As BANanoJSPDF
	BANano.DependsOnAsset("jspdf.umd.min.js")
	BANano.DependsOnAsset("jspdf.plugin.autotable.min.js")
	BANano.DependsOnAsset("html2canvas.min.js")
	
	mCallBack = eventHandler
	fname = fileName	
	encryption.Initialize 
	userPermissions.Initialize 
	pdfOptions.Initialize 
	mUnits = UNIT_MM
	mpageSize = PAGE_A4
	mOrientation = ORIENTATION_POTRAIT
	marginM.Initialize
	margin.Initialize
	margin.top = 0
	margin.left = 0
	margin.width = 0
	margin.bottom = 0
	margin.right = 0  
	dOptions.Initialize 
	ShowLog = True
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
	If pwd = "" Then Return Me
	encryption.put("userPassword", pwd)
	Return Me
End Sub

'set owner password
Sub SetOwnerPassword(pwd As String) As BANanoJSPDF
	If pwd = "" Then Return Me
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
Sub moveTo(x As String, y As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.moveTo(${x}, ${y})"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		If x = "" Or y = "" Then Return Me
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		jsPDF.RunMethod("moveTo", Array(x, y))
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'draw a line to
Sub lineTo(x As String, y As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.lineTo(${x}, ${y})"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		If x = "" Or y = "" Then Return Me
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		jsPDF.RunMethod("lineTo", Array(x, y))
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'add a page
Sub addPage As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.addPage"$)
	End If
	jsPDF.RunMethod("addPage", Null)
	Return Me
End Sub

'add a page
Sub addPage1(sFormat As String, sOrientation As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.addPage("${sFormat}", "${sOrientation}")"$)
	End If
	jsPDF.RunMethod("addPage", Array(sFormat, sOrientation))
	Return Me
End Sub

'draw a rect
Sub rect(x As String, y As String, w As String, h As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.rect(${x}, ${y}, ${w}, ${h}, "${style}")"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		w = w.Trim
		h = h.Trim
		style = style.Trim
		If x = "" Or y = "" Or w = "" Or h = "" Or style = "" Then Return Me	
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		w = BANano.parseInt(w)
		h = BANano.parseInt(h)
		jsPDF.RunMethod("rect", Array(x, y, w, h, style))
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'draw a rounded rect
Sub roundedRect(x As String, y As String, w As String, h As String, rx As String, ry As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.roundedRect(${x}, ${y}, ${w}, ${h}, ${rx}, ${ry}, "${style}")"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		w = w.Trim
		h = h.Trim
		rx = rx.Trim
		ry = ry.Trim
		style = style.Trim
		'
		If x="" Or y="" Or w="" Or h="" Or rx="" Or ry="" Or style = "" Then Return Me
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		w = BANano.parseInt(w)
		h = BANano.parseInt(h)
		rx = BANano.parseInt(rx)
		ry = BANano.parseInt(ry)
		jsPDF.RunMethod("roundedRect", Array(x, y, w, h, rx, ry, style))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub	

'setDisplayMode
Sub setDisplayMode(z As String, l As String, p As String)
	If ShowLog Then
		Log($"pdf.setDisplayMode("${z}", "${l}", "${l}")"$)
	End If
	Try
		z = z.Trim
		l = l.Trim
		p = p.Trim
		If z = "" Or l = "" Or p = "" Then Return 
		jsPDF.RunMethod("setDisplayMode", Array(z, l, p))
	Catch
		Log(LastException)
	End Try
End Sub


'draw a line
Sub line(x1 As String, y1 As String, x2 As String, y2 As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.line(${x1}, ${y1}, ${x2}, ${y2}, "${style}")"$)
	End If
	Try
		x1 = x1.trim
		y1 = y1.trim
		x2 = x2.trim
		y2 = y2.trim
		style = style.trim
		If x1 = "" Or x2 = "" Or y1 = "" Or y2 = "" Or style = "" Then Return Me
		x1 = BANano.parseInt(x1)
		x2 = BANano.parseInt(x2)
		y1 = BANano.parseInt(y1)
		y2 = BANano.parseInt(y2)
		jsPDF.RunMethod("line", Array(x1, y1, x2, y2, style))
		
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'draw an ellipse
Sub ellipse(x As String, y As String, rx As String, ry As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.ellipse(${x}, ${y}, ${rx}, ${ry}, "${style}")"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		rx = rx.Trim
		ry = ry.Trim
		style = style.Trim
		If x = "" Or y = "" Or rx = "" Or ry = "" Or style = "" Then Return Me
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		rx = BANano.parseInt(rx)
		ry = BANano.parseInt(ry)
		jsPDF.RunMethod("ellipse", Array(x, y, rx, ry, style))
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'draw a triangle
Sub triangle(x1 As String, y1 As String, x2 As String, y2 As String, x3 As String, y3 As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.triangle(${x1}, ${y1}, ${x2}, ${y2}, ${x3}, ${y3}, "${style}")"$)
	End If
	Try
		x1 = x1.Trim
		x2 = x2.Trim
		x3 = x3.Trim
		y1 = y1.Trim
		y2 = y2.Trim
		y3 = y3.Trim
		style = style.Trim
		If y1 = "" Or y2 = "" Or y3 = "" Or x1 = "" Or x2 = "" Or x3 = "" Or style = "" Then Return Me
		x1 = BANano.parseInt(x1)
		x2 = BANano.parseInt(x2)
		x3 = BANano.parseInt(x3)
		y1 = BANano.parseInt(y1)
		y2 = BANano.parseInt(y2)
		y3 = BANano.parseInt(y3)
		jsPDF.RunMethod("triangle", Array(x1, y1, x2, y2, x3, y3, style))
		
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

'set line width
Sub SetLineWidth(l As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.setLineWidth(${l})"$)
	End If
	Try
		l = l.Trim
		If l = "" Then Return Me
		l = BANano.parseFloat(l)
		jsPDF.RunMethod("setLineWidth", Array(l))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'draw a circle
Sub circle(x As String, y As String, r As String, style As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.circle(${x}, ${y}, ${r}, "${style}")"$)
	End If
	Try
		x = x.Trim
		y = y.Trim
		r = r.Trim
		style = style.trim
		If x = "" Or y = "" Or r = "" Or style = "" Then Return Me
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		r = BANano.parseInt(r)
		jsPDF.runmethod("circle", Array(x, y, r, style))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub	

Sub BEToLink(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToLink.${be.name}"$)
	End If
	Try
		Dim sDataFontName As String = be.GetData("fontname")
		If BANano.IsNull(sDataFontName) Then sDataFontName = ""

		Dim sDataFontSize As String = be.GetData("fontsize")
		If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""

		Dim sDataFontStyle As String = be.GetData("fontstyle")
		If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""

		Dim sDataFontWeight As String = be.GetData("fontweight")
		If BANano.IsNull(sDataFontWeight) Then sDataFontWeight = ""

		Dim sDataH As String = be.GetData("h")
		If BANano.IsNull(sDataH) Then sDataH = ""
		sDataH = BANano.parseInt(sDataH)

		Dim sDataPageNumber As String = be.GetData("pagenumber")
		If BANano.IsNull(sDataPageNumber) Then sDataPageNumber = ""
		sDataPageNumber = BANano.parseInt(sDataPageNumber)

		Dim sDataTextColor As String = be.GetData("textcolor")
		If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""

		Dim sDataUrl As String = be.GetData("url")
		If BANano.IsNull(sDataUrl) Then sDataUrl = ""

		Dim sDataW As String = be.GetData("w")
		If BANano.IsNull(sDataW) Then sDataW = ""
		sDataW = BANano.parseInt(sDataW)
		
		Dim sDataX As String = be.GetData("x")
		If BANano.IsNull(sDataX) Then sDataX = ""
		sDataX = BANano.parseInt(sDataX)
		
		Dim sDataY As String = be.GetData("y")
		If BANano.IsNull(sDataY) Then sDataY = ""
		sDataY = BANano.parseInt(sDataY)
		'
		'set the font name
		SetFontStyleWeight(sDataFontName, sDataFontStyle, sDataFontWeight)
		'set the font size
		SetFontSize(sDataFontSize)
		'set text color using rgb
		SetTextColor(sDataTextColor)
		'
		link(sDataX, sDataY, sDataW,sDataH, sDataPageNumber, sDataUrl)
	Catch
		Log(LastException)
	End Try
End Sub

'set page from BANanoElement
Sub BEToPage(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToPage.${be.name}"$)
	End If
	Dim sDataFormat As String = be.getdata("format")
	If BANano.IsNull(sDataFormat) Then sDataFormat = ""
	'
	Dim sDataOrientation As String = be.GetData("orientation")
	If BANano.IsNull(sDataOrientation) Then sDataOrientation = ""
	'
	Dim sDataPosition As String = be.GetData("position")
	If BANano.IsNull(sDataPosition) Then sDataPosition = ""
	'
	Dim sDataFontName As String = be.GetData("fontname")
	If BANano.IsNull(sDataFontName) Then sDataFontName = ""
	'
	Dim sDataFontSize As String = be.GetData("fontsize")
	If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""
	
	Dim sDataFontStyle As String = be.getdata("fontstyle")
	If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""
	If sDataFontStyle = "none" Then sDataFontStyle = ""
	'
	Dim sDataFontWeight As String = be.getdata("fontweight")
	If BANano.IsNull(sDataFontWeight) Then sDataFontWeight = ""
	'
	Dim sDataZoom As String = be.GetData("zoom")
	If BANano.IsNull(sDataZoom) Then sDataZoom = ""
	'
	Dim sDatalayout As String = be.GetData("layout")
	If BANano.IsNull(sDatalayout) Then sDatalayout = ""
	'
	Dim sDatapmode As String = be.GetData("pmode")
	If BANano.IsNull(sDatapmode) Then sDatapmode = ""
	'
	Dim sDataTextColor As String = be.GetData("textcolor")
	If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""
		
	'add the page
	addPage1(sDataFormat, sDataOrientation)
	'
	setDisplayMode(sDataZoom, sDatalayout, sDatapmode)
	'set the font name
	'SetFont(sDataFontName)
	'set font type
	'SetFontType(sDataFontStyle)
	SetFontStyleWeight(sDataFontName, sDataFontStyle, sDataFontWeight)
	'set the font size
	SetFontSize(sDataFontSize)
	'set the text color
	SetTextColor(sDataTextColor)
	'add children
	BEToPageChildren(be)
End Sub

'Sub BEScanImages(be As BANanoElement) As Boolean
'	'get the children in the document
'	Dim children() As BANanoElement = be.Children("")
'	Dim pgTot As Int = children.Length - 1
'	Dim pgCnt As Int
'	For pgCnt = 0 To pgTot
'		'get the banano element
'		Dim child As BANanoElement = children(pgCnt)
'		'get the data-type
'		Dim edt As String = child.GetData("type")
'		'validate the element
'		If BANano.IsNull(edt) Then edt = ""
'		'
'		Select Case edt
'		Case "image"
'			BANano.Await(BEPreloadImage(child))
'		Case "page"	
'			BANano.Await(BEScanImages(child))
'		End Select
'	Next
'	BANano.ReturnThen(True)
'End Sub

Sub BEToPageChildren(BE As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToPageChildren.${BE.name}"$)
	End If
	'get the children in the document
	Dim children() As BANanoElement = BE.Children("")
	Dim pgTot As Int = children.Length - 1
	Dim pgCnt As Int
	For pgCnt = 0 To pgTot
		'get the banano element
		Dim child As BANanoElement = children(pgCnt)
		'get the data-type
		Dim edt As String = child.GetData("type")
		'validate the element
		If BANano.IsNull(edt) Then edt = ""
		
		'we have a page
		Select Case edt
		Case "page"
			BEToPage(child)
		Case "text"
			BEToText(child)
		Case "image"
			BEToImage(child)
		Case "line"
			BEToLine(child)	
		Case "circle"
			BEToCircle(child)			
		Case "ellipse"
			BEToEllipse(child)
		Case "rect"
			BEToRect(child)
		Case "triangle"
			BEToTriangle(child)	
		Case "curveto"
			BEToCurveTo(child)	
		Case "roundedrect"
			BEToRoundedRect(child)
		Case "link"
			BEToLink(child)		
		Case "annotation"
			BEToAnnotation(child)
		Case "pdfautotable"
			BEToPDFAutoTable(child)			
		End Select
	Next
End Sub

Sub BEToPDFAutoTable(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToPDFAutoTable.${be.name}"$)
	End If
	Dim sDataID As String = be.Name
	'
	Dim bDataAllSectionHooks As String = be.GetData("allsectionhooks")
	If BANano.IsNull(bDataAllSectionHooks) Then bDataAllSectionHooks = ""

	'column keys
	Dim sDataDataKey As String = be.GetData("keys")
	If BANano.IsNull(sDataDataKey) Then sDataDataKey = ""

	Dim sDataFontName As String = be.GetData("fontname")
	If BANano.IsNull(sDataFontName) Then sDataFontName = ""

	Dim sDataFontSize As String = be.GetData("fontsize")
	If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""

	Dim sDataFontStyle As String = be.GetData("fontstyle")
	If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""

	Dim sDataHeader As String = be.GetData("header")
	If BANano.IsNull(sDataHeader) Then sDataHeader = ""

	Dim sDataHorizontalPageBreak As String = be.GetData("horizontalpagebreak")
	If BANano.IsNull(sDataHorizontalPageBreak) Then sDataHorizontalPageBreak = ""

	Dim sDataHorizontalPageBreakRepeat As String = be.GetData("horizontalpagebreakrepeat")
	If BANano.IsNull(sDataHorizontalPageBreakRepeat) Then sDataHorizontalPageBreakRepeat = ""

	Dim sDataHtml As String = be.GetData("html")
	If BANano.IsNull(sDataHtml) Then sDataHtml = ""

	Dim bDataIncludeHiddenHtml As String = be.GetData("includehiddenhtml")
	If BANano.IsNull(bDataIncludeHiddenHtml) Then bDataIncludeHiddenHtml = ""

	Dim sDataMarginBottom As String = be.GetData("marginbottom")
	If BANano.IsNull(sDataMarginBottom) Then sDataMarginBottom = ""
	sDataMarginBottom = BANano.parseInt(sDataMarginBottom)
	
	Dim sDataMarginLeft As String = be.GetData("marginleft")
	If BANano.IsNull(sDataMarginLeft) Then sDataMarginLeft = ""
	sDataMarginLeft = BANano.parseInt(sDataMarginLeft)
	
	Dim sDataMarginRight As String = be.GetData("marginright")
	If BANano.IsNull(sDataMarginRight) Then sDataMarginRight = ""
	sDataMarginRight = BANano.parseInt(sDataMarginRight)
	
	Dim sDataMarginTop As String = be.GetData("margintop")
	If BANano.IsNull(sDataMarginTop) Then sDataMarginTop = ""
	sDataMarginTop = BANano.parseInt(sDataMarginTop)
	
	Dim sDataPaddingBottom As String = be.GetData("paddingbottom")
	If BANano.IsNull(sDataPaddingBottom) Then sDataPaddingBottom = ""
	sDataPaddingBottom = BANano.parseInt(sDataPaddingBottom)
	
	Dim sDataPaddingLeft As String = be.GetData("paddingleft")
	If BANano.IsNull(sDataPaddingLeft) Then sDataPaddingLeft = ""
	sDataPaddingLeft = BANano.parseInt(sDataPaddingLeft)
	
	Dim sDataPaddingRight As String = be.GetData("paddingright")
	If BANano.IsNull(sDataPaddingRight) Then sDataPaddingRight = ""
	sDataPaddingRight = BANano.parseInt(sDataPaddingRight)
	
	Dim sDataPaddingTop As String = be.GetData("paddingtop")
	If BANano.IsNull(sDataPaddingTop) Then sDataPaddingTop = ""
	sDataPaddingTop = BANano.parseInt(sDataPaddingTop)
	
	Dim sDataPageBreak As String = be.GetData("pagebreak")
	If BANano.IsNull(sDataPageBreak) Then sDataPageBreak = ""

	Dim sDataRowPageBreak As String = be.GetData("rowpagebreak")
	If BANano.IsNull(sDataRowPageBreak) Then sDataRowPageBreak = ""

	Dim sDataShowFoot As String = be.GetData("showfoot")
	If BANano.IsNull(sDataShowFoot) Then sDataShowFoot = ""

	Dim sDataShowHead As String = be.GetData("showhead")
	If BANano.IsNull(sDataShowHead) Then sDataShowHead = ""

	Dim sDataStartY As String = be.GetData("starty")
	If BANano.IsNull(sDataStartY) Then sDataStartY = ""

	Dim sDataStartyFinalYPlus As String = be.GetData("startyfinalyplus")
	If BANano.IsNull(sDataStartyFinalYPlus) Then sDataStartyFinalYPlus = 0
	sDataStartyFinalYPlus = BANano.parseInt(sDataStartyFinalYPlus)
	
	Dim sDataTableLineColor As String = be.GetData("tablelinecolor")
	If BANano.IsNull(sDataTableLineColor) Then sDataTableLineColor = ""

	Dim sDataTableLineWidth As String = be.GetData("tablelinewidth")
	If BANano.IsNull(sDataTableLineWidth) Then sDataTableLineWidth = ""
	sDataTableLineWidth = BANano.parseFloat(sDataTableLineWidth)

	Dim sDataTableWidth As String = be.GetData("tablewidth")
	If BANano.IsNull(sDataTableWidth) Then sDataTableWidth = ""

	Dim sDataTextColor As String = be.GetData("textcolor")
	If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""

	Dim sDataTheme As String = be.GetData("theme")
	If BANano.IsNull(sDataTheme) Then sDataTheme = ""
	If sDataTheme = "none" Then sDataTheme = ""

	Dim bDataUseCss As String = be.GetData("usecss")
	If BANano.IsNull(bDataUseCss) Then bDataUseCss = ""
	'
	Dim sDataFontWeight As String = be.GetData("fontweight")
	If BANano.IsNull(sDataFontWeight) Then sDataFontWeight = ""
	'
	Dim sDataSource As String = be.GetData("datasource")
	If BANano.IsNull(sDataSource) Then sDataSource = ""
	'
	'set the font name
	SetFontStyleWeight(sDataFontName, sDataFontStyle, sDataFontWeight)
	'set the font size
	SetFontSize(sDataFontSize)
	'set text color using rgb
	SetTextColor(sDataTextColor)
	'
	'GENERATE THE TABLE
	Dim pdfTable As BANanoJSPDFTable
	pdfTable.Initialize(mCallBack)
	pdfTable.ShowLog = ShowLog
	'
	If sDataStartY <> "" Then
		sDataStartY = BANano.parseInt(sDataStartY)
		pdfTable.StartY = sDataStartY
	End If
	
	'get the last position
	If sDataStartyFinalYPlus <> 0 Then
		'get the last position
		sDataStartY = GetLastAutoTableFinalY
		sDataStartY = BANano.parseInt(sDataStartY) + BANano.parseInt(sDataStartyFinalYPlus)
		pdfTable.starty = sDataStartY	
	End If
	
	pdfTable.theme = sDataTheme
	pdfTable.showHead = sDataShowHead
	pdfTable.showFoot = sDataShowFoot
	pdfTable.rowPageBreak = sDataRowPageBreak
	pdfTable.PageBreak = sDataPageBreak
	pdfTable.Margin.Top = sDataMarginTop
	pdfTable.Margin.left = sDataMarginLeft
	pdfTable.Margin.right = sDataMarginRight
	pdfTable.Margin.bottom = sDataMarginBottom
	pdfTable.tableWidth = sDataTableWidth
	pdfTable.IncludeHiddenHtml = bDataIncludeHiddenHtml
    pdfTable.horizontalPageBreak = sDataHorizontalPageBreak
	pdfTable.horizontalPageBreakRepeat = sDataHorizontalPageBreakRepeat
	pdfTable.UseCss = bDataUseCss
	pdfTable.TableLineWidth = sDataTableLineWidth
	pdfTable.TableLineColor1(sDataTableLineColor)
	'
	If sDataHtml <> "" Then
		'draw from html
		pdfTable.HTML = sDataHtml
	End If
	'
	'add the columns
	Dim k As String
	Dim h As String
	If sDataDataKey <> "" And sDataHeader <> "" Then
		Dim lKeys As List = BANanoShared.StrParse(";", sDataDataKey)
		Dim lHeaders As List = BANanoShared.StrParse(";", sDataHeader)
		'
		Dim kTot As Int = lKeys.Size
		Dim hTot As Int = lHeaders.Size
		'
		If kTot <> hTot Then
			Log("BEToPDFAutoTable.The dataKeys do not match with the Header!")
			Return
		End If
		'
		Dim kCnt As Int
		For kCnt = 0 To kTot - 1
			k = lKeys.Get(kCnt)
			h = lHeaders.Get(kCnt)
			k = k.trim
			h = h.trim
			pdfTable.addColumn(k, h) 
		Next
	Else
		Log("BEToPDFAutoTable.You need to specify the column names and titles!")
		Return
	End If
	'add the data
	If sDataSource <> "" Then
		'get the data from the source
		Dim dRows As List = ParentComponent.GetData(sDataSource)
		pdfTable.SetRows(dRows)
	End If
	'
	'do we have any styles inside this table
	Dim children() As BANanoElement = be.Children("")
	Dim pgTot As Int = children.Length - 1
	Dim pgCnt As Int
	For pgCnt = 0 To pgTot
		'get the banano element
		Dim child As BANanoElement = children(pgCnt)
		'get the data-type
		Dim edt As String = child.GetData("type")
		'validate the element
		If BANano.IsNull(edt) Then edt = ""
		Select Case edt
		Case "pdfstyle"
			'we have found a style, then apply it	
			pdfTable.BEToStyle(child)
		End Select
	Next
	'
	Dim data As Map
	Dim sDidDrawPage As String = $"${sDataID}_didDrawPage"$
	pdfTable.didDrawPage(mCallBack, sDidDrawPage, data)
	Dim sdidParseCell As String = $"${sDataID}_didParseCell"$
	pdfTable.didParseCell(mCallBack, sdidParseCell, data)
	Dim swillDrawCell As String = $"${sDataID}_willDrawCell"$
	pdfTable.willDrawCell(mCallBack, swillDrawCell, data)
	Dim sdidDrawCell As String = $"${sDataID}_didDrawCell"$
	pdfTable.didDrawCell(mCallBack, sdidDrawCell, data)
	'plot the table
	autoTable(pdfTable)
	
End Sub


Sub BEToRoundedRect(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToRoundedRect.${be.name}"$)
	End If
	Try

		Dim sDataDrawColor As String = be.GetData("drawcolor")
		If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

		Dim sDataFillColor As String = be.GetData("fillcolor")
		If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

		Dim sDataH As String = be.GetData("h")
		If BANano.IsNull(sDataH) Then sDataH = ""

		Dim sDataLineWidth As String = be.GetData("linewidth")
		If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

		Dim sDataRX As String = be.GetData("rx")
		If BANano.IsNull(sDataRX) Then sDataRX = ""

		Dim sDataRY As String = be.GetData("ry")
		If BANano.IsNull(sDataRY) Then sDataRY = ""

		Dim sDataStyle As String = be.GetData("style")
		If BANano.IsNull(sDataStyle) Then sDataStyle = ""

		Dim sDataW As String = be.GetData("w")
		If BANano.IsNull(sDataW) Then sDataW = ""

		Dim sDataX As String = be.GetData("x")
		If BANano.IsNull(sDataX) Then sDataX = ""

		Dim sDataY As String = be.GetData("y")
		If BANano.IsNull(sDataY) Then sDataY = ""
		'
		SetDrawColor(sDataDrawColor)
		SetFillColor(sDataFillColor)
		SetLineWidth(sDataLineWidth)
		'
		roundedRect(sDataX, sDataY, sDataW, sDataH, sDataRX, sDataRY, sDataStyle)
	Catch
		Log(LastException)
	End Try
End Sub


Sub BEToCurveTo(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToCurveTo.${be.name}"$)
	End If
	Try
		Dim sDataDrawColor As String = be.GetData("drawcolor")
		If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

		Dim sDataFillColor As String = be.GetData("fillcolor")
		If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

		Dim sDataLineWidth As String = be.GetData("linewidth")
		If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

		Dim sDataX1 As String = be.GetData("x1")
		If BANano.IsNull(sDataX1) Then sDataX1 = ""

		Dim sDataX2 As String = be.GetData("x2")
		If BANano.IsNull(sDataX2) Then sDataX2 = ""

		Dim sDataX3 As String = be.GetData("x3")
		If BANano.IsNull(sDataX3) Then sDataX3 = ""

		Dim sDataY1 As String = be.GetData("y1")
		If BANano.IsNull(sDataY1) Then sDataY1 = ""

		Dim sDataY2 As String = be.GetData("y2")
		If BANano.IsNull(sDataY2) Then sDataY2 = ""

		Dim sDataY3 As String = be.GetData("y3")
		If BANano.IsNull(sDataY3) Then sDataY3 = ""
		'
		SetDrawColor(sDataDrawColor)
		SetFillColor(sDataFillColor)
		SetLineWidth(sDataLineWidth)
		'
		curveTo(sDataX1, sDataY1, sDataX2, sDataY2, sDataX3, sDataY3)
	Catch
		Log(LastException)
	End Try	
End Sub

Sub BEToTriangle(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToTriangle.${be.name}"$)
	End If
	Try
		Dim sDataDrawColor As String = be.GetData("drawcolor")
		If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

		Dim sDataFillColor As String = be.GetData("fillcolor")
		If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

		Dim sDataLineWidth As String = be.GetData("linewidth")
		If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

		Dim sDataStyle As String = be.GetData("style")
		If BANano.IsNull(sDataStyle) Then sDataStyle = ""

		Dim sDataX1 As String = be.GetData("x1")
		If BANano.IsNull(sDataX1) Then sDataX1 = ""

		Dim sDataX2 As String = be.GetData("x2")
		If BANano.IsNull(sDataX2) Then sDataX2 = ""

		Dim sDataX3 As String = be.GetData("x3")
		If BANano.IsNull(sDataX3) Then sDataX3 = ""

		Dim sDataY1 As String = be.GetData("y1")
		If BANano.IsNull(sDataY1) Then sDataY1 = ""

		Dim sDataY2 As String = be.GetData("y2")
		If BANano.IsNull(sDataY2) Then sDataY2 = ""

		Dim sDataY3 As String = be.GetData("y3")
		If BANano.IsNull(sDataY3) Then sDataY3 = ""
		
		SetDrawColor(sDataDrawColor)
		SetFillColor(sDataFillColor)
		SetLineWidth(sDataLineWidth)
		'
		triangle(sDataX1, sDataY1, sDataX2, sDataY2, sDataX3, sDataY3, sDataStyle)
	Catch
		Log(LastException)
	End Try	
End Sub


Sub BEToRect(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToRect.${be.name}"$)
	End If
	Try
		Dim sDataDrawColor As String = be.GetData("drawcolor")
		If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""
		
		Dim sDataFillColor As String = be.GetData("fillcolor")
		If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

		Dim sDataH As String = be.GetData("h")
		If BANano.IsNull(sDataH) Then sDataH = ""

		Dim sDataLineWidth As String = be.GetData("linewidth")
		If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

		Dim sDataStyle As String = be.GetData("style")
		If BANano.IsNull(sDataStyle) Then sDataStyle = ""

		Dim sDataW As String = be.GetData("w")
		If BANano.IsNull(sDataW) Then sDataW = ""

		Dim sDataX As String = be.GetData("x")
		If BANano.IsNull(sDataX) Then sDataX = ""

		Dim sDataY As String = be.GetData("y")
		If BANano.IsNull(sDataY) Then sDataY = ""
		'
		SetDrawColor(sDataDrawColor)
		SetFillColor(sDataFillColor)
		SetLineWidth(sDataLineWidth)
		
		rect(sDataX, sDataY, sDataW, sDataH, sDataStyle)
	Catch
		Log(LastException)
	End Try	
End Sub



Sub BEToEllipse(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToEllipse.${be.name}"$)
	End If
	Dim sDataDrawColor As String = be.GetData("drawcolor")
	If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

	Dim sDataFillColor As String = be.GetData("fillcolor")
	If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

	Dim sDataLineWidth As String = be.GetData("linewidth")
	If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

	Dim sDataRX As String = be.GetData("rx")
	If BANano.IsNull(sDataRX) Then sDataRX = ""

	Dim sDataRY As String = be.GetData("ry")
	If BANano.IsNull(sDataRY) Then sDataRY = ""

	Dim sDataStyle As String = be.GetData("style")
	If BANano.IsNull(sDataStyle) Then sDataStyle = ""

	Dim sDataX As String = be.GetData("x")
	If BANano.IsNull(sDataX) Then sDataX = ""

	Dim sDataY As String = be.GetData("y")
	If BANano.IsNull(sDataY) Then sDataY = ""
	'
	SetDrawColor(sDataDrawColor)
	SetFillColor(sDataFillColor)
	SetLineWidth(sDataLineWidth)
	'
	ellipse(sDataX, sDataY, sDataRX, sDataRY, sDataStyle)
End Sub


Sub BEToCircle(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToCircle.${be.name}"$)
	End If
	Dim sDataDrawColor As String = be.GetData("drawcolor")
	If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

	Dim sDataFillColor As String = be.GetData("fillcolor")
	If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

	Dim sDataLineWidth As String = be.GetData("linewidth")
	If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

	Dim sDataR As String = be.GetData("r")
	If BANano.IsNull(sDataR) Then sDataR = ""

	Dim sDataStyle As String = be.GetData("style")
	If BANano.IsNull(sDataStyle) Then sDataStyle = ""

	Dim sDataX As String = be.GetData("x")
	If BANano.IsNull(sDataX) Then sDataX = ""

	Dim sDataY As String = be.GetData("y")
	If BANano.IsNull(sDataY) Then sDataY = ""
	'
	SetDrawColor(sDataDrawColor)
	SetFillColor(sDataFillColor)
	SetLineWidth(sDataLineWidth)
	'
	circle(sDataX, sDataY, sDataR, sDataStyle)
End Sub



Sub BEToLine(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToLine.${be.name}"$)
	End If
	Dim sDataDrawColor As String = be.GetData("drawcolor")
	If BANano.IsNull(sDataDrawColor) Then sDataDrawColor = ""

	Dim sDataFillColor As String = be.GetData("fillcolor")
	If BANano.IsNull(sDataFillColor) Then sDataFillColor = ""

	Dim sDataLineWidth As String = be.GetData("linewidth")
	If BANano.IsNull(sDataLineWidth) Then sDataLineWidth = ""

	Dim sDataStyle As String = be.GetData("style")
	If BANano.IsNull(sDataStyle) Then sDataStyle = ""

	Dim sDataX1 As String = be.GetData("x1")
	If BANano.IsNull(sDataX1) Then sDataX1 = ""

	Dim sDataX2 As String = be.GetData("x2")
	If BANano.IsNull(sDataX2) Then sDataX2 = ""

	Dim sDataY1 As String = be.GetData("y1")
	If BANano.IsNull(sDataY1) Then sDataY1 = ""

	Dim sDataY2 As String = be.GetData("y2")
	If BANano.IsNull(sDataY2) Then sDataY2 = ""
	'
	SetDrawColor(sDataDrawColor)
	SetFillColor(sDataFillColor)
	SetLineWidth(sDataLineWidth)
	'
	line(sDataX1, sDataY1, sDataX2, sDataY2, sDataStyle)
End Sub

Sub BEToImage(BE As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToImage.${BE.name}"$)
	End If
	Try
		Dim sDataAlias As String = BE.GetData("alias")
		If BANano.IsNull(sDataAlias) Then sDataAlias = ""
		
		Dim sDataCompression As String = BE.GetData("compression")
		If BANano.IsNull(sDataCompression) Then sDataCompression = ""

		Dim sDataFormat As String = BE.GetData("format")
		If BANano.IsNull(sDataFormat) Then sDataFormat = ""

		Dim sDataHeight As String = BE.GetData("height")
		If BANano.IsNull(sDataHeight) Then sDataHeight = 0
		sDataHeight = BANano.parseInt(sDataHeight)

		Dim sDataImageData As String = BE.GetData("imagedata")
		If BANano.IsNull(sDataImageData) Then sDataImageData = ""
		'
		Dim sDataRotation As String = BE.GetData("rotation")
		If BANano.IsNull(sDataRotation) Then sDataRotation = 0
		sDataRotation = BANano.parseInt(sDataRotation)

		Dim sDataWidth As String = BE.GetData("width")
		If BANano.IsNull(sDataWidth) Then sDataWidth = 0
		sDataWidth = BANano.parseInt(sDataWidth)

		Dim sDataX As String = BE.GetData("x")
		If BANano.IsNull(sDataX) Then sDataX = 0
		sDataX = BANano.parseInt(sDataX)

		Dim sDataY As String = BE.GetData("y")
		If BANano.IsNull(sDataY) Then sDataY = 0
		sDataY = BANano.parseInt(sDataY)
		
		If ShowLog Then
			Log($"pdf.addImage("${sDataImageData}", "${sDataFormat}", ${sDataX}, ${sDataY}, ${sDataWidth}, ${sDataHeight}, "${sDataAlias}", "${sDataCompression}", ${sDataRotation})"$)
		End If		
		jsPDF.RunMethod("addImage", Array(sDataImageData, sDataFormat, sDataX, sDataY, sDataWidth, sDataHeight, sDataAlias, sDataCompression, sDataRotation))
	Catch ExitApplication
		Log(LastException)
	End Try
End Sub

'set text from bananoElement
Sub BEToText(BE As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToText.${BE.name}"$)
	End If

	Try
	Dim sDataAlign As String = BE.GetData("align")
	If BANano.IsNull(sDataAlign) Then sDataAlign = ""
	'
	Dim sDataAngle As String = BE.GetData("angle")
	If BANano.IsNull(sDataAngle) Then sDataAngle = ""
	sDataAngle = BANano.parseInt(sDataAngle)
	'
	Dim sDataBaseline As String = BE.getdata("baseline")
	If BANano.IsNull(sDataBaseline) Then sDataBaseline = ""
	'
	Dim sDataCharSpace As String = BE.GetData("charspace")
	If BANano.IsNull(sDataCharSpace) Then sDataCharSpace = ""
	'
	Dim sDataColor As String = BE.GetData("color")
	If BANano.IsNull(sDataColor) Then sDataColor = ""
	If sDataColor = "none" Then sDataColor = ""
	'
	Dim sDataFontName As String = BE.GetData("fontname")
	If BANano.IsNull(sDataFontName) Then sDataFontName = ""
	'
	Dim sDataFontSize As String = BE.GetData("fontsize")
	If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""
	'
	Dim sDataFontStyle As String = BE.GetData("fontstyle")
	If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""
	If sDataFontStyle = "none" Then sDataFontStyle = ""
	'
	Dim sDataLineHeightFactor As String = BE.GetData("lineheightfactor")
	If BANano.IsNull(sDataLineHeightFactor) Then sDataLineHeightFactor = ""
	'
	sDataLineHeightFactor = BANano.parseFloat(sDataLineHeightFactor)
	If BANano.IsNull(sDataLineHeightFactor) Then sDataLineHeightFactor = ""
	
	Dim sDataMaxWidth As String = BE.GetData("maxwidth")
	If BANano.IsNull(sDataMaxWidth) Then sDataMaxWidth = ""
	sDataMaxWidth = BANano.parseInt(sDataMaxWidth)
	'
	Dim sDataRotationDirection As String = BE.GetData("rotationdirection")
	If BANano.IsNull(sDataRotationDirection) Then sDataRotationDirection = ""
	'
	Dim sDataRenderingMode As String = BE.GetData("renderingmode")
	If BANano.IsNull(sDataRenderingMode) Then sDataRenderingMode = ""
	Select Case sDataRotationDirection
	Case "clockwise"
		sDataRotationDirection = 0
	Case "counterclockwise"
		sDataRotationDirection = 1		
	End Select
	sDataRotationDirection = BANano.parseInt(sDataRotationDirection)
	
	Dim sDataText As String = BE.GetData("text")
	If BANano.IsNull(sDataText) Then sDataText = ""
	'
	Dim sDataTextColor As String = BE.getdata("textcolor")
	If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""
	'
	Dim sDataTransform As String = BE.GetData("transform")
	If BANano.IsNull(sDataTransform) Then sDataTransform = ""
	'
	Dim sDataFontWeight As String = BE.GetData("fontweight")
	If BANano.IsNull(sDataFontWeight) Then sDataFontWeight = ""
	
	Dim sDataX As Int = BE.getdata("x")
	If BANano.IsNull(sDataX) Then sDataX = 0
	sDataX = BANano.parseint(sDataX)
	'
	Dim sDataY As Int = BE.getdata("y")
	If BANano.IsNull(sDataY) Then sDataY = 0
	sDataY = BANano.parseint(sDataY)
	'
	Dim bDataWithLink As String = BE.GetData("withlink")
	If BANano.IsNull(bDataWithLink) Then bDataWithLink = False
	'
	Dim sDataPageNumber As String = BE.GetData("pagenumber")
	If BANano.IsNull(sDataPageNumber) Then sDataPageNumber = 0
	sDataPageNumber = BANano.parseInt(sDataPageNumber)

	Dim sDataUrl As String = BE.GetData("url")
	If BANano.IsNull(sDataUrl) Then sDataUrl = ""
	
	'set the font name
	SetFontStyleWeight(sDataFontName, sDataFontStyle, sDataFontWeight)
	'set the font size
	SetFontSize(sDataFontSize)
	'set text color using rgb
	SetTextColor(sDataTextColor)
	
	Dim nto As TextOptions = NewTextOptions
	nto.align = sDataAlign
	nto.baseline = sDataBaseline
	nto.angle = BANano.parseInt(sDataAngle)
	nto.rotationDirection = BANano.parseInt(sDataRotationDirection)
	nto.flags.autoencode = True
	nto.flags.noBOM = True
	nto.charSpace = sDataCharSpace
	nto.lineHeightFactor = BANano.parseFloat(sDataLineHeightFactor)
	nto.maxWidth = BANano.parseInt(sDataMaxWidth)
	nto.renderingMode = sDataRenderingMode
	nto.url = sDataUrl
	nto.pageNumber = BANano.parseInt(sDataPageNumber)
	'
	sDataTransform = BANano.IIf(sDataTransform="", Null, sDataTransform)
	'
	sDataX = BANano.parseInt(sDataX)
	sDataY = BANano.parseInt(sDataY)
	
	If bDataWithLink Then
		SetTextWithLink1(sDataText, sDataX, sDataY, nto, sDataTransform)
	Else
		SetText2(sDataText, sDataX, sDataY, nto, sDataTransform)
	End If	
	Catch
		Log(LastException)
	End Try	
End Sub



Sub BEToAnnotation(be As BANanoElement)
	If ShowLog Then
		Log($"pdf.BEToAnnotation.${be.name}"$)
	End If
	Try
		Dim sDataColorHex As String = be.GetData("colorhex")
		If BANano.IsNull(sDataColorHex) Then sDataColorHex = ""

		Dim sDataContents As String = be.GetData("contents")
		If BANano.IsNull(sDataContents) Then sDataContents = ""

		Dim sDataFontName As String = be.GetData("fontname")
		If BANano.IsNull(sDataFontName) Then sDataFontName = ""

		Dim sDataFontSize As String = be.GetData("fontsize")
		If BANano.IsNull(sDataFontSize) Then sDataFontSize = ""
		sDataFontSize = BANano.parseint(sDataFontSize)

		Dim sDataFontStyle As String = be.GetData("fontstyle")
		If BANano.IsNull(sDataFontStyle) Then sDataFontStyle = ""

		Dim sDataFontWeight As String = be.GetData("fontweight")
		If BANano.IsNull(sDataFontWeight) Then sDataFontWeight = ""

		Dim sDataH As String = be.GetData("h")
		If BANano.IsNull(sDataH) Then sDataH = 0
		sDataH = BANano.parseInt(sDataH)

		Dim bDataOpen As String = be.GetData("open")
		If BANano.IsNull(bDataOpen) Then bDataOpen = False

		Dim sDataTextColor As String = be.GetData("textcolor")
		If BANano.IsNull(sDataTextColor) Then sDataTextColor = ""

		Dim sDataTitle As String = be.GetData("title")
		If BANano.IsNull(sDataTitle) Then sDataTitle = ""

		Dim sDataType As String = be.GetData("annottype")
		If BANano.IsNull(sDataType) Then sDataType = ""

		Dim sDataW As String = be.GetData("w")
		If BANano.IsNull(sDataW) Then sDataW = 0
		sDataW = BANano.parseInt(sDataW)

		Dim sDataX As String = be.GetData("x")
		If BANano.IsNull(sDataX) Then sDataX = 0
		sDataX = BANano.parseInt(sDataX)

		Dim sDataY As String = be.GetData("y")
		If BANano.IsNull(sDataY) Then sDataY = 0
		sDataY = BANano.parseInt(sDataY)

		'set the font name
		SetFontStyleWeight(sDataFontName, sDataFontStyle, sDataFontWeight)
		'set the font size
		SetFontSize(sDataFontSize)
		'set text color using rgb
		SetTextColor(sDataTextColor)
		'
		createAnnotation(sDataTitle, sDataContents, sDataType, sDataX, _
		sDataY, sDataW, sDataH, bDataOpen, sDataColorHex)
	Catch
		Log(LastException)
	End Try
End Sub

'set text XY Text
Sub SetText(X As String, Y As String, txt As String) As BANanoJSPDF
	Try
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
	If ShowLog Then
		Log($"pdf.text(${x}, ${y}, "${txt}")"$)
	End If
	jsPDF.RunMethod("text", Array(x, y, txt))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set text Text XY
Sub SetText1(txt As String, X As String, Y As String) As BANanoJSPDF
	Try
	x = BANano.parseInt(x)
	y = BANano.parseInt(y)
		
	If ShowLog Then
		Log($"pdf.text("${txt}", ${x}, ${y})"$)
	End If
	jsPDF.RunMethod("text", Array(txt, x, y))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub


private Sub BuildTextOptions(opt As TextOptions) As Map
	Dim flags As Map = CreateMap()
	flags.Put("noBOM", opt.flags.noBOM)
	flags.Put("autoencode", opt.flags.autoencode)
	'
	opt.angle = BANano.parseInt(opt.angle)
	opt.rotationDirection = BANano.parseInt(opt.rotationDirection)
	opt.charSpace = BANano.parseInt(opt.charSpace)
	opt.lineHeightFactor = BANano.parseFloat(opt.lineHeightFactor)
	opt.maxWidth = BANano.parseInt(opt.maxWidth)
	opt.pageNumber = BANano.parseInt(opt.pageNumber)
	'
	Dim options As Map = CreateMap()
	options.Put("align", opt.align)
	options.Put("baseline", opt.baseline)
	options.Put("angle", opt.angle)
	options.Put("rotationDirection", opt.rotationDirection)
	options.Put("charSpace", opt.charSpace)
	options.Put("lineHeightFactor", opt.lineHeightFactor)
	options.Put("flags", flags)
	options.Put("maxWidth", opt.maxWidth)
	options.Put("renderingMode", opt.renderingMode)
	'
	If opt.url <> "" Then
		options.Put("url", opt.url)
	End If
	If opt.pageNumber <> 0 Then
		options.put("pageNumber", opt.pageNumber)
	End If
	Return options
End Sub

'set text with options and transform
Sub SetText2(txt As String, x As String, y As String, opt As TextOptions, sDataTransform As String) As BANanoJSPDF
	Try
	Dim options As Map = BuildTextOptions(opt)
	sDataTransform = BANano.IIf(sDataTransform="", Null, sDataTransform)
	'
	x = BANano.parseInt(x)
	y = BANano.parseInt(y)
	'	
	If ShowLog Then
		Log($"pdf.text("${txt}", ${x}, ${y}, ${BANano.ToJson(options)})"$)
	End If
	jsPDF.RunMethod("text", Array(txt, x, y, options, sDataTransform))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set text with link extended
Sub SetTextWithLink1(txt As String, x As String, y As String, opt As TextOptions, sDataTransform As String) As BANanoJSPDF
	Try
		Dim options As Map = BuildTextOptions(opt)
				'
		sDataTransform = BANano.IIf(sDataTransform="", Null, sDataTransform)
		'
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		
		If ShowLog Then
			Log($"pdf.textWithLink("${txt}", ${x}, ${y}, ${BANano.ToJson(options)})"$)
		End If
		jsPDF.RunMethod("textWithLink", Array(txt, x, y, options, sDataTransform))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set text with link simple
Sub SetTextWithLink(txt As String, x As String, y As String, sDataURL As String, sPageNumber As String) As BANanoJSPDF
	Try
		Dim nto As TextOptions = NewTextOptions
		nto.url = sDataURL
		nto.pageNumber = BANano.parseInt(sPageNumber)
		'
		Dim options As Map = BuildTextOptions(nto)
		'
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		
		If ShowLog Then
			Log($"pdf.textWithLink("${txt}", ${x}, ${y}, ${BANano.ToJson(options)})"$)
		End If
		jsPDF.RunMethod("textWithLink", Array(txt, x, y, options))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set the text color
Sub SetTextColor(rgba As String) As BANanoJSPDF
	If rgba = "" Then Return Me
	Try
	Dim strcol1 As String
	Dim strcol2 As String
	Dim strcol3 As String
	Dim strcol4 As String
	'
	rgba = rgba.Replace(",", ";")
	Dim cols As List = BANanoShared.StrParse(";", rgba)
	cols = BANanoShared.ListItemsToInt(cols)
	Dim colTot As Int = cols.size
	Select Case colTot
	Case 1
		strcol1 = cols.Get(0)
		strcol1 = BANano.parseInt(strcol1)
		If ShowLog Then
			Log($"pdf.setTextColor(${strcol1})"$)
		End If
		jsPDF.RunMethod("setTextColor", Array(strcol1))
	Case 2
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		If ShowLog Then
			Log($"pdf.setTextColor(${strcol1}, ${strcol2})"$)
		End If
		jsPDF.RunMethod("setTextColor", Array(strcol1, strcol2))
	Case 3
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		If ShowLog Then
			Log($"pdf.setTextColor(${strcol1}, ${strcol2}, ${strcol3})"$)
		End If
		jsPDF.RunMethod("setTextColor", Array(strcol1, strcol2, strcol3))
	Case 4				
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol4 = cols.Get(3)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		strcol4 = BANano.parseInt(strcol4)
		If ShowLog Then
			Log($"pdf.setTextColor(${strcol1}, ${strcol2}, ${strcol3}, ${strcol4})"$)
		End If
		jsPDF.RunMethod("setTextColor", Array(strcol1, strcol2, strcol3, strcol4))
	End Select
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set the fill color
Sub SetFillColor(rgba As String) As BANanoJSPDF
	If rgba = "" Then Return Me
	Try
	Dim strcol1 As String
	Dim strcol2 As String
	Dim strcol3 As String
	Dim strcol4 As String
	'
	rgba = rgba.Replace(",", ";")
	Dim cols As List = BANanoShared.StrParse(";", rgba)
	cols = BANanoShared.ListItemsToInt(cols)
	Dim colTot As Int = cols.size
	Select Case colTot
	Case 1
		strcol1 = cols.Get(0)
		strcol1 = BANano.parseInt(strcol1)
		If ShowLog Then
			Log($"pdf.setFillColor(${strcol1})"$)
		End If
		jsPDF.RunMethod("setFillColor", Array(strcol1))
	Case 2
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		jsPDF.RunMethod("setFillColor", Array(strcol1, strcol2))
		If ShowLog Then
			Log($"pdf.setFillColor(${strcol1}, ${strcol2})"$)
		End If
	Case 3
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		jsPDF.RunMethod("setFillColor", Array(strcol1, strcol2, strcol3))
		If ShowLog Then
			Log($"pdf.setFillColor(${strcol1}, ${strcol2}, ${strcol3})"$)
		End If
	Case 4				
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol4 = cols.Get(3)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		strcol4 = BANano.parseInt(strcol4)
		If ShowLog Then
			Log($"pdf.setFillColor(${strcol1}, ${strcol2}, ${strcol3}, ${strcol4})"$)
		End If
		jsPDF.RunMethod("setFillColor", Array(strcol1, strcol2, strcol3, strcol4))
	End Select
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub


'set the draw color
Sub SetDrawColor(rgba As String) As BANanoJSPDF
	If rgba = "" Then Return Me
	Try
	Dim strcol1 As String
	Dim strcol2 As String
	Dim strcol3 As String
	Dim strcol4 As String
	'
	rgba = rgba.Replace(",", ";")
	Dim cols As List = BANanoShared.StrParse(";", rgba)
	cols = BANanoShared.ListItemsToInt(cols)
	Dim colTot As Int = cols.size
	Select Case colTot
	Case 1
		strcol1 = cols.Get(0)
		strcol1 = BANano.parseInt(strcol1)
		jsPDF.RunMethod("setDrawColor", Array(strcol1))
		If ShowLog Then
			Log($"pdf.setDrawColor(${strcol1})"$)
		End If
	Case 2
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		If ShowLog Then
			Log($"pdf.setDrawColor(${strcol1}, ${strcol2})"$)
		End If
		jsPDF.RunMethod("setDrawColor", Array(strcol1, strcol2))
	Case 3
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		If ShowLog Then
			Log($"pdf.setDrawColor(${strcol1}, ${strcol2}, ${strcol3})"$)
		End If
		jsPDF.RunMethod("setDrawColor", Array(strcol1, strcol2, strcol3))
	Case 4				
		strcol1 = cols.Get(0)
		strcol2 = cols.Get(1)
		strcol3 = cols.Get(2)
		strcol4 = cols.Get(3)
		strcol1 = BANano.parseInt(strcol1)
		strcol2 = BANano.parseInt(strcol2)
		strcol3 = BANano.parseInt(strcol3)
		strcol4 = BANano.parseInt(strcol4)
		If ShowLog Then
			Log($"pdf.setDrawColor(${strcol1}, ${strcol2}, ${strcol3}, ${strcol4})"$)
		End If
		jsPDF.RunMethod("setDrawColor", Array(strcol1, strcol2, strcol3, strcol4))
	End Select
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'draw a curveTo
Sub curveTo(x1 As String, y1 As String, x2 As String, y2 As String, x3 As String, y3 As String) As BANanoJSPDF
	Try
		x1 = x1.Trim
		x2 = x2.Trim
		x3 = x3.Trim
		y1 = y1.Trim
		y2 = y2.Trim
		y3 = y3.Trim
		If y1 = "" Or y2 = "" Or y3 = "" Or x1 = "" Or x2 = "" Or x3 = "" Then Return Me
		x1 = BANano.parseInt(x1)
		x2 = BANano.parseInt(x2)
		x3 = BANano.parseInt(x3)
		y1 = BANano.parseInt(y1)
		y2 = BANano.parseInt(y2)
		y3 = BANano.parseInt(y3)
		If ShowLog Then
			Log($"pdf.curveTo(${x1}, ${y1}, ${x2}, ${y2}, ${x3}, ${y3})"$)
		End If
		jsPDF.RunMethod("curveTo", Array(x1, y1, x2, y2, x3, y3))
		
	Catch
		Log(LastException)
	End Try
	Return Me
End Sub

''set the font type
'Sub SetFontType(fs As String) As BANanoJSPDF
'	If fs = "" Then Return Me
'	If fs = "none" Then Return Me
'	jsPDF.RunMethod("setFontType", Array(fs))
'	Return Me
'End Sub

'set the font size
Sub SetFontSize(fs As String) As BANanoJSPDF
	Try
	fs = fs & "" 
	fs = BANano.parseInt(fs)
	If fs = 0 Then Return Me
	fs = BANano.parseInt(fs)
	If ShowLog Then
		Log($"pdf.setFontSize(${fs})"$)
	End If
	jsPDF.runmethod("setFontSize", Array(fs))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set the font
Sub SetFont(fs As String) As BANanoJSPDF
	Try
	If fs = "" Then Return Me
	If ShowLog Then
		Log($"pdf.setFont(${fs})"$)
	End If
	jsPDF.runmethod("setFont", Array(fs))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'set the font name and style
Sub SetFontStyle(fn As String, fs As String) As BANanoJSPDF
	Try
	If fn = "" Then Return Me
	If ShowLog Then
		Log($"pdf.setFont("${fn}", "${fs}")"$)
	End If
	jsPDF.runmethod("setFont", Array(fn, fs))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

''set the font And style
Sub SetFontStyleWeight(fn As String, fs As String, fw As String) As BANanoJSPDF
	Try
		fn = fn.Trim
		fs = fs.Trim
		fw = fw.Trim
		'
		If fn = "" Then Return Me
		If ShowLog Then
			Log($"pdf.setFont("${fn}", "${fs}", "${fw}")"$)
		End If
		jsPDF.runmethod("setFont", Array(fn, fs, fw))
	Catch
		Log(LastException)
	End Try	
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
	Try
	If ShowLog Then
		Log($"pdf.Start"$)
	End If
	userUnit = BANano.parseFloat(userUnit)
	precision = BANano.parseInt(precision)
	'
	pdfOptions.Put("putOnlyUsedFonts", putOnlyUsedFonts)
	pdfOptions.Put("compress", compress)
	pdfOptions.Put("orientation", mOrientation)
	pdfOptions.Put("precision", precision)
	pdfOptions.Put("userUnit", userUnit)
	pdfOptions.Put("format", mpageSize)
	pdfOptions.Put("unit", mUnits)
	pdfOptions.Put("floatPrecision", floatPrecision)
	
	If encryption.Size > 0 Then
		If userPermissions.Size > 0 Then
			encryption.Put("userPermissions", userPermissions)
		End If
		pdfOptions.Put("encryption", encryption)
	End If
	CopyMargin(margin, marginM)
	If marginM.Size > 0 Then
		pdfOptions.put("margin", marginM)
	End If
	If ShowLog Then
		Log($"pdf.new jsPDF(${BANano.ToJson(pdfOptions)})"$)
	End If
	jsPDF.Initialize2("jsPDF", Array(pdfOptions))
	autoTableSetDefaults
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'autoTableSetDefaults
Sub autoTableSetDefaults
	If ShowLog Then
		Log($"pdf.autoTableSetDefaults"$)
	End If
	jsPDF.RunMethod("autoTableSetDefaults", Null)
End Sub

'add table from BANanoJSPDFTable
Sub autoTable(tbl As BANanoJSPDFTable) As BANanoJSPDF
	Try
	tbl.buildoptions
	If ShowLog Then
		Log($"pdf.autoTable(${BANano.ToJson(tbl.options)})"$)
	End If
	jsPDF.RunMethod("autoTable", Array(tbl.options))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'add table from html element
Sub autoTable1(tableID As String) As BANanoJSPDF
	Try
	tableID = tableID.ToLowerCase
	Dim opt As Map = CreateMap()
	opt.Put("html", $"#${tableID}"$)
	If ShowLog Then
		Log($"pdf.autoTable(${BANano.ToJson(opt)})"$)
	End If
	jsPDF.RunMethod("autoTable", Array(opt))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'save the pdf document
Sub Save
	Try
	If ShowLog Then
		Log($"pdf.save"$)
	End If
	jsPDF.RunMethod("save", Array(fname))
	Catch
		Log(LastException)
	End Try	
End Sub

'get the output of the document
Sub getOutput(objType As String) As String
	Dim opt As Map = CreateMap()
	opt.Put("filename", fname)
	If ShowLog Then
		Log($"res = pdf.output("${objType}", ${opt})"$)
	End If
	Dim res As String = jsPDF.RunMethod("output", Array(objType, opt)).Result
	Return res
End Sub

'return data url
Sub DataURL As String
	Dim res As String = getOutput("dataurl")
	Return res
End Sub

'add base 64 image
Sub addImage(imgData As String, imgType As String, X As Int, Y As Int, iWidth As Int, iHeight As Int) As BANanoJSPDF
	Try
	If ShowLog Then
		Log($"pdf.addImage("${imgData}", "${imgType}", ${x}, ${y}, ${iWidth}, ${iHeight})"$)
	End If
	x = BANano.parseInt(X)
	Y = BANano.parseInt(Y)
	iHeight = BANano.parseInt(iHeight)
	iWidth = BANano.parseInt(iWidth)
	jsPDF.RunMethod("addImage", Array(imgData, imgType, X, Y, iWidth, iHeight))
	Catch
		Log(LastException)
	End Try	
	Return Me
End Sub

'add base 64 image
Sub addImage1(imgData As String, imgType As String, X As Int, Y As Int, iWidth As Int, iHeight As Int, sAlias As String, sCompression As String, iRotation As Int) As BANanoJSPDF
	Try
	If ShowLog Then
		Log($"pdf.addImage("${imgData}", "${imgType}", ${x}, ${y}, ${iWidth}, ${iHeight}, "${sAlias}", "${sCompression}", ${iRotation})"$)
	End If
	x = BANano.parseInt(X)
	Y = BANano.parseInt(Y)
	iHeight = BANano.parseInt(iHeight)
	iWidth = BANano.parseInt(iWidth)
	jsPDF.RunMethod("addImage", Array(imgData, imgType, X, Y, iWidth, iHeight, sAlias, sCompression, iRotation))
	Catch
		Log(LastException)
	End Try	
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
	If ShowLog Then
		Log($"pdf.autoPrint"$)
	End If
	jsPDF.RunMethod("autoPrint", Null)
End Sub

'add a font
Sub addFont(url As String, fontName As String, fontType As String) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.addFont("${url}", "${fontName}", "${fontType}")"$)
	End If
	jsPDF.RunMethod("addFont", Array(url, fontName, fontType))
	Return Me
End Sub

'set active page
Sub SetPage(pg As Int) As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.setPage(${pg})"$)
	End If
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
	If ShowLog Then
		Log($"noOfPages = pdf.internal.getNumberOfPages()"$)
	End If
	Dim noOfPages As Int = jsPDF.GetField("internal").RunMethod("getNumberOfPages", Null).Result
	Return noOfPages
End Sub

'get current page width
Sub GetPageWidth As Int
	If ShowLog Then
		Log($"pw = pdf.internal.pageSize.width()"$)
	End If
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").getfield("width").result
	Return pw
End Sub

'get current page height
Sub GetPageHeight As Int
	If ShowLog Then
		Log($"ph = pdf.internal.pageSize.height()"$)
	End If
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").Getfield("height").result
	Return pw
End Sub

'get finalY after table insert
Sub GetPreviousAutoTableFinalY As Int
	If ShowLog Then
		Log($"fY = pdf.previousAutoTable.finalY"$)
	End If
	Dim res As Int = jsPDF.GetField("previousAutoTable").GetField("finalY").Result
	Return res
End Sub

'set the footer page numbers
Sub SetPageNumbers As BANanoJSPDF
	If ShowLog Then
		Log($"pdf.SetPageNumbers"$)
	End If
	Dim pageCount As Int = GetNumberOfPages
	SetFontSize(8)
	Dim pgCnt As Int 
	For pgCnt = 1 To pageCount
		SetPage(pgCnt)
		Dim halfWidth As Int = GetPageWidth / 2
		Dim halfHeight As Int = GetPageHeight
		Dim txtOpt As TextOptions = NewTextOptions
		txtOpt.align = ALIGN_CENTER
		SetText2($"Page ${pgCnt} of ${pageCount}"$, halfWidth, halfHeight - 15, txtOpt, Null)	
	Next
	Return Me
End Sub

'delete a particular page
Sub deletePage(pg As Int)
	If ShowLog Then
		Log($"pdf.deletePage(${pg})"$)
	End If
	jsPDF.RunMethod("deletePage", Array(pg))
End Sub

'clip
Sub clip
	If ShowLog Then
		Log($"pdf.clip("evenodd")"$)
	End If
	jsPDF.RunMethod("clip", Array("evenodd"))
End Sub

'clipEvenOdd
Sub clipEvenOdd
	If ShowLog Then
		Log($"pdf.clipEvenOdd()"$)
	End If
	jsPDF.runmethod("clipEvenOdd", Null)
End Sub

'close
Sub close
	If ShowLog Then
		Log($"pdf.close()"$)
	End If
	jsPDF.RunMethod("close", Null)
End Sub

'comment
Sub comment(txt As String)
	If ShowLog Then
		Log($"pdf.comment("${txt}")"$)
	End If
	jsPDF.RunMethod("comment", Array(txt))
End Sub

'discardPath
Sub discardPath
	If ShowLog Then
		Log($"pdf.discardPath()"$)
	End If
	jsPDF.RunMethod("discardPath", Null)
End Sub

'insertPage
Sub insertPage(pg As Int)
	If ShowLog Then
		Log($"pdf.insertPage(${pg})"$)
	End If
	jsPDF.RunMethod("insertPage", Array(pg))
End Sub

' movePage
Sub movePage(targetPage As String, beforePage As String)
	Try
		targetPage = targetPage.Trim
		beforePage = beforePage.Trim
		If targetPage = "" Or beforePage = "" Then Return
		If ShowLog Then
			Log($"pdf.movePage(${targetPage}, ${beforePage})"$)
		End If
		jsPDF.RunMethod("movePage", Array(targetPage, beforePage))		 
	Catch
		Log(LastException)
	End Try
	
End Sub

'setLineHeightFactor
Sub setLineHeightFactor(lf As String)
	Try
		lf = lf.Trim
		If lf = "" Then Return
		If ShowLog Then
			Log($"pdf.setLineHeightFactor(${lf})"$)
		End If
		jsPDF.RunMethod("setLineHeightFactor", Array(lf))
	Catch
		Log(LastException)
	End Try
End Sub

'setR2L
Sub setR2L(b As Boolean)
	If ShowLog Then
		Log($"pdf.setR2L"$)
	End If
	jsPDF.RunMethod("setR2L", Array(b))
End Sub

'stroke
Sub stroke
	If ShowLog Then
		Log($"pdf.stroke"$)
	End If
	jsPDF.RunMethod("stroke", Null)
End Sub

'link
Sub link(x As String, y As String, w As String, h As String, pageNumber As String, url As String)
	Try
		url = url.trim
		'
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		h = BANano.parseInt(h)
		w = BANano.parseInt(w)
		'
		Dim opt As Map = CreateMap()
		If url <> "" Then
			opt.Put("url", url)
		End If
		If pageNumber <> "" Then
			pageNumber = BANano.parseInt(pageNumber)
			opt.put("pageNumber", pageNumber)
		End If
		If ShowLog Then
			Log($"pdf.link(${x}, ${y}, ${h}, ${opt})"$)
		End If
		jsPDF.RunMethod("link", Array(x, y, w, h, opt))
	Catch
		Log(LastException)
	End Try	
End Sub

'createAnnotation
Sub createAnnotation(annotTitle As String, contents As String, annotType As String,  x As String, y As String, w As String, h As String,  bOpen As String, annotColor As String)
	Try
		annotType = annotType.Trim
		annotTitle = annotTitle.Trim
		annotColor = annotColor.trim
		annotTitle = annotTitle.trim
		'
		x = BANano.parseInt(x)
		y = BANano.parseInt(y)
		w = BANano.parseInt(w)
		h = BANano.parseInt(h)
		'
		Dim bounds As Map = CreateMap()
		bounds.Put("x", x)
		bounds.Put("y", y)
		bounds.Put("w", w)
        bounds.Put("h", h)
		'
		Dim opt As Map = CreateMap()
		opt.Put("type", annotType)
		If annotTitle <> "" Then 
			opt.Put("title",  annotTitle)
		End If
		opt.Put("contents", contents)
		opt.Put("open", bOpen)
		opt.Put("bounds", bounds)
		If annotColor <> "" Then 
			opt.Put("color", annotColor)
		End If
		'
		If ShowLog Then
			Log($"pdf.createAnnotation(${BANano.ToJson(opt)})"$)
		End If
		jsPDF.RunMethod("createAnnotation", Array(opt))		
	Catch
		Log(LastException)
	End Try
End Sub

'addSvgAsImage
Sub addSvgAsImage
	
End Sub

'get last auto table
Sub GetLastAutoTableFinalY As Int
	If ShowLog Then
		Log($"fY = pdf.lastAutoTable.finalY"$)
	End If
	Dim res As Int = jsPDF.GetField("lastAutoTable").GetField("finalY").Result
	Return res
End Sub

'data.settings.margin.left
Sub GetDataSettingsMarginLeft(data As Map) As Int
	Dim xsettings As Map = data.Get("settings")
	Dim xmargin As Map = xsettings.Get("margin")
	Dim xleft As Int = xmargin.Get("left")
	xleft = BANano.parseint(xleft)
	Return xleft 
End Sub


'get DataRow
private Sub getDataRow(data As Map) As pdfRow
	Dim xrow As Map = data.Get("row")
	Dim c As pdfRow
	c.Initialize
	c.spansMultiplePages = xrow.Get("spansMultiplePages")
	c.height = xrow.Get("height")
	c.index = xrow.Get("index")
	c.section = xrow.Get("section")
	c.raw = xrow.Get("raw")
	Return c
End Sub

'get DataSettings
private Sub getDataSettings(data As Map) As pdfSettings
	Dim xsetting As Map = data.Get("settings")
	Dim xmargin As Map = xsetting.Get("margin")
	Dim c As pdfSettings
	c.Initialize 
	c.margin.Initialize 
	c.horizontalPageBreak = xsetting.Get("horizontalPageBreak")
	c.includeHiddenHtml = xsetting.Get("includeHiddenHtml")
	c.pageBreak = xsetting.Get("pageBreak")
	c.rowPageBreak = xsetting.Get("rowPageBreak")
	c.showFoot = xsetting.Get("showFoot")
	c.showHead = xsetting.Get("showHead")
	c.startY = xsetting.Get("startY")
	c.tableLineColor = xsetting.Get("tableLineColor")
	c.tableLineWidth = xsetting.Get("tableLineWidth")
	c.tableWidth = xsetting.Get("tableWidth")
	c.theme = xsetting.Get("theme")
	c.useCss = xsetting.Get("useCss")
	c.margin.bottom = xmargin.Get("bottom")
	c.margin.right = xmargin.Get("right")
	c.margin.left = xmargin.Get("left")
	c.margin.top = xmargin.Get("top")
	Return c
End Sub

'get DataCursor
private Sub getDataCursor(data As Map) As pdfCursor
	Dim c As pdfCursor
	c.Initialize 
	Dim xcursor As Map = data.Get("cursor")
	If BANano.IsNull(xcursor) = False Then
		c.x = xcursor.Get("x")
		c.y = xcursor.Get("y")
	End If
	Return c
End Sub

'get DataColumn
private Sub getDataColumn(data As Map) As pdfColumn
	Dim xcolumn As Map = data.get("column")
	Dim c As pdfColumn
	c.initialize
	c.dataKey = xcolumn.get("dataKey")
	c.index = xcolumn.get("index")
	c.minReadableWidth = xcolumn.get("minReadableWidth")
	c.minWidth = xcolumn.get("minWidth")
	c.width = xcolumn.get("width")
	c.wrappedWidth = xcolumn.get("wrappedWidth")
	Return c
End Sub

'get DataCell
private Sub getDataCell(data As Map) As pdfCell
	Dim xcell As Map = data.Get("cell")
	Dim xstyles As Map = xcell.Get("styles")
	Dim c As pdfCell
	c.Initialize
	c.styles.initialize 
	c.colSpan = xcell.Get("colSpan")
	c.contentHeight = xcell.Get("contentHeight")
	c.contentWidth = xcell.Get("contentWidth")
	c.height = xcell.Get("height")
	c.minReadableWidth = xcell.Get("minReadableWidth")
	c.minWidth = xcell.Get("minWidth")
	c.raw = xcell.Get("raw")
	c.rowSpan = xcell.Get("rowSpan")
	c.section = xcell.Get("section")
	c.x = xcell.get("x")
	c.y = xcell.get("y")
	c.text = xcell.Get("text")
	c.styles.cellPadding = xstyles.Get("cellPadding")
	c.styles.cellWidth = xstyles.Get("cellWidth")
	c.styles.fillColor = xstyles.Get("fillColor")
	c.styles.font = xstyles.Get("font")
	c.styles.fontSize = xstyles.Get("fontSize")
	c.styles.fontStyle = xstyles.Get("fontStyle")
	c.styles.halign = xstyles.Get("halign")
	c.styles.lineColor = xstyles.Get("lineColor")
	c.styles.lineWidth = xstyles.Get("lineWidth")
	c.styles.minCellHeight = xstyles.Get("minCellHeight")
	c.styles.minCellWidth = xstyles.Get("minCellWidth")
	c.styles.overflow = xstyles.Get("overflow")
	c.styles.textColor = xstyles.Get("textColor")
	c.styles.valign = xstyles.Get("valign")
	Return c
End Sub

'get the data on the table
Sub getData(data As Map) As pdfData
	Dim c As pdfData
	c.Initialize 
	c.cell.Initialize
	c.cell = getDataCell(data)
	' 
	c.column.Initialize 
	c.column = getDataColumn(data)
	'
	c.cursor.Initialize 
	c.cursor = getDataCursor(data)
	'
	c.row.Initialize 
	c.row = getDataRow(data)
	'
	c.settings.Initialize 
	c.settings = getDataSettings(data)
	'
	Return c	
End Sub

