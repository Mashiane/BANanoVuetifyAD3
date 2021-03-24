B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private fname As String
	Private jsPDF As BANanoObject
	Private mCallBack As Object
	Private BANano As BANano
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
	Public const OVERFLOW_LINEBREAK As String = "ellipsize"
	'
	Public const PAGE_A0 As String = "a0"
	Public const PAGE_A2 As String = "a2"
	Public const PAGE_A4 As String = "a4"
	Public const PAGE_A6 As String = "a6"
	Public const PAGE_A8 As String = "a8"
	Public const PAGE_A10 As String = "a10"
	Public const PAGE_B1 As String = "b1"
	Public const PAGE_B3 As String = "b3"
	Public const PAGE_B5 As String = "b5"
	Public const PAGE_B7 As String = "b7"
	Public const PAGE_B9 As String = "b9"
	Public const PAGE_C0 As String = "c0"
	Public const PAGE_C2 As String = "c2"
	Public const PAGE_C4 As String = "c4"
	Public const PAGE_C6 As String = "c6"
	Public const PAGE_C8 As String = "c8"
	Public const PAGE_C10 As String = "c10"
	Public const PAGE_LETTER As String = "letter"
	Public const PAGE_GOVERNMENT_LETTER As String = "government-letter"
	Public const PAGE_LEGAL As String = "legal"
	Public const PAGE_JUNIOR_LEGAL As String = "junior-legal"
	Public const PAGE_LEDGER As String = "ledger"
	Public const PAGE_TABLOID As String = "tabloid"
	Public const PAGE_CREDIT_CARD As String = "credit-card"	
	Public const UNIT_MM As String = "mm"
	Public const UNIT_PT As String = "pt"
	
	Private mOrientation As String
	Private mUnits As String
	Private encryption As Map
	Private userPermissions As List
	Private mpageSize As String
	Private pdfOptions As Map
	Private marginM As Map
	Public Margin As MarginObj
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(eventHandler As Object, fileName As String)
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
End Sub

Sub setPageSize(ps As String)
	mpageSize = ps
End Sub

Sub CanPrint
	userPermissions.Add("print")
End Sub

Sub CanModify
	userPermissions.Add("modify")
End Sub

Sub CanCopy
	userPermissions.Add("copy")
End Sub

Sub CanAnnotForms
	userPermissions.Add("annot-forms")
End Sub

Sub setUserPassword(pwd As String)
	encryption.put("userPassword", pwd)
End Sub

Sub SetOwnerPassword(pwd As String)
	encryption.Put("ownerPassword", pwd)
End Sub

Sub setUnit(u As String)
	mUnits = u
End Sub

Sub setOrientation(o As String)
	mOrientation = o
End Sub

Sub moveTo(x As Int, y As Int)
	jsPDF.RunMethod("moveTo", Array(x, y))
End Sub

Sub lineTo(x As Int, y As Int)
	jsPDF.RunMethod("lineTo", Array(x, y))
End Sub

Sub addPage
	jsPDF.RunMethod("addPage", Null)
End Sub

Sub rect(x As Int, y As Int, w As Int, h As Int, style As String)
	jsPDF.RunMethod("rect", Array(x, y, w, h, style))
End Sub

Sub roundedRect(x As Int, y As Int, w As Int, h As Int, rx As Int, ry As Int, style As String)
	jsPDF.RunMethod("roundedRect", Array(x, y, w, h, rx, ry, style))
End Sub	

Sub line(x1 As Int, y1 As Int, x2 As Int, y2 As Int, style As String)
	jsPDF.RunMethod("line", Array(x1, y1, x2, y2, style))
End Sub

Sub ellipse(x As Int, y As Int, rx As Int, ry As Int, style As String)
	jsPDF.RunMethod("ellipse", Array(x, y, rx, ry, style))
End Sub

Sub curveTo(x1 As Int, y1 As Int, x2 As Int, y2 As Int, x3 As Int, y3 As Int)
	jsPDF.RunMethod("curveTo", Array(x1, y1, x2, y2, x3, y3))
End Sub

Sub setFillColor(r As Int, g As Int, b As Int)
	jsPDF.RunMethod("setFillColor", Array(r, g, b))
End Sub

Sub setLineWidth(l As Int)
	jsPDF.RunMethod("setLineWidth", Array(l))
End Sub

Sub setDrawColor(c As Int)
	jsPDF.RunMethod("setDrawColor", Array(c))
End Sub

Sub circle(x As Int, y As Int, r As Int, style As String)
	jsPDF.runmethod("circle", Array(x, y, r, style))
End Sub	

Sub setText(X As Int, Y As Int, txt As String)
	jsPDF.RunMethod("text", Array(txt, x, y))
End Sub

Sub setTextColor(c As Int)
	jsPDF.RunMethod("setTextColor", Array(c))
End Sub

Sub setText1(txt As String, x As Int, y As Int, opt As Map)
	jsPDF.RunMethod("text", Array(txt, x, y, opt ))
End Sub

Sub setTextColor1(r As Int, g As Int, b As Int)
	jsPDF.RunMethod("setTextColor", Array(r, g, b))
End Sub

Sub triangle(x1 As Int, y1 As Int, x2 As Int, y2 As Int, x3 As Int, y3 As Int, style As String)
	jsPDF.RunMethod("triangle", Array(x1, y1, x2, y2, x3, y3, style))
End Sub

Sub setFontType(fs As String)
	jsPDF.RunMethod("setFontType", Array(fs))
End Sub

Sub setFontStyle(fs As String)
	jsPDF.RunMethod("setFontStyle", Array(fs))
End Sub

Sub setFontSize(fs As Int)
	jsPDF.runmethod("setFontSize", Array(fs))
End Sub

Sub setFont(fs As String)
	jsPDF.runmethod("setFont", Array(fs))
End Sub

Sub CopyMargin(source As MarginObj, target As Map)
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

Sub Start
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
End Sub

'print table via javascript
Sub autoTable(tbl As BANanoJSPDFTable)
	tbl.buildoptions
	jsPDF.RunMethod("autoTable", Array(tbl.columns, tbl.rows, tbl.options))
End Sub

'print the table directly
Sub autoTable1(tableID As String)
	tableID = tableID.ToLowerCase
	Dim opt As Map = CreateMap()
	opt.Put("html", $"#${tableID}"$)
	jsPDF.RunMethod("autoTable", Array(opt))
End Sub

Sub Save
	jsPDF.RunMethod("save", Array(fname))
End Sub

Sub addImage(imgData As String, imgType As String, X As Int, Y As Int, iWidth As Int, iHeight As Int)
	jsPDF.RunMethod("addImage", Array(imgData, imgType, X, Y, iWidth, iHeight))
End Sub

Sub ToBase64 As String
	'get the output
	Dim out As Object = jsPDF.RunMethod("output", Null)
	Dim xout As String = BANano.RunJavascriptMethod("btoa", Array(out))
	Dim res As String = $"data:application/pdf;base64,${xout}"$
	Return res
End Sub

Sub autoPrint
	jsPDF.RunMethod("autoPrint", Null)
End Sub

Sub addFont(url As String, fontName As String, fontType As String)
	jsPDF.RunMethod("addFont", Array(url, fontName, fontType))
End Sub

Sub setPage(pg As Int)
	jsPDF.RunMethod("setPage", Array(pg))
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
Sub getNumberOfPages As Int
	Dim noOfPages As Int = jsPDF.GetField("internal").RunMethod("getNumberOfPages", Null).Result
	Return noOfPages
End Sub

'get current page width
Sub getPageWidth As Int
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").RunMethod("getWidth", Null).result
	Return pw
End Sub

'get current page height
Sub getPageHeight As Int
	Dim pw As Int = jsPDF.GetField("internal").GetField("pageSize").RunMethod("getHeight", Null).result
	Return pw
End Sub