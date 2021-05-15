B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Public SS As BANanoObject
	Private options As Map
	Private rowSettings As Map
	Private colSettings As Map
	Private styleSettings As Map
	Private fontSettings As Map
	Private mCallBack As Object
	Private mEvent As String
	Public methods As Map
	Private BANano As BANano
	Private viewSettings As Map
	Private pID As String
	Public bindings As Map
	Private mElement As BANanoElement
End Sub

'initialize to the component you want to load to
Public Sub Initialize(Module As Object, elID As String, eventName As String)
	mCallBack = Module
	pID = elID
	pID = pID.tolowercase
	mEvent = eventName.tolowercase
	options.Initialize 
	rowSettings.Initialize 
	colSettings.Initialize 
	styleSettings.Initialize 
	fontSettings.Initialize 
	methods.Initialize 
	viewSettings.Initialize 
	bindings.Initialize
	mElement = BANano.GetElement($"#${pID}"$) 
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
		prop = ""
	End If
	If prop = "" Then Return
	prop = prop.tolowercase
	bindings.put(prop, value)
End Sub


'when a change takes place
private Sub OnChange
	Dim methodName As String = $"${mEvent}_change"$
	If SubExists(mCallBack, methodName) = False Then Return
	Dim data As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(data))
	methods.Put(methodName, cb)
End Sub

'get cell
Sub cell(row As Int, col As Int) As BANanoObject
	Dim bo As BANanoObject = SS.RunMethod("cell", Array(row, col))
	Return bo
End Sub

'get cell style
Sub cellStyle(row As Int, col As Int) As BANanoObject
	Dim bo As BANanoObject = SS.RunMethod("cellStyle", Array(row, col))
	Return bo
End Sub

'set cellText
Sub cellText(row As Int, col As Int, text As Object)
	SS.RunMethod("cellText", Array(row, col, text))
End Sub

're-render
Sub Refresh
	SS.RunMethod("reRender", Null)
End Sub

'getData
Sub GetData As Map
	Dim obj As Map = SS.RunMethod("getData", Null).Result
	Return obj
End Sub

'set minwidth
Sub setColMinWidth(minWidth As Int)
	colSettings.Put("minWidth", minWidth)
End Sub

'set indexWidth
Sub setColIndexWidth(indexWidth As Int)
	colSettings.Put("indexWidth", indexWidth)
End Sub

'set column width
Sub setColWidth(colWidthx As Int)
	colSettings.Put("width", colWidthx)
End Sub

'set column length
Sub setColLength(colLengthx As Int)
	colSettings.Put("len", colLengthx)
End Sub

'set row height
Sub setRowHeight(rowHeightx As Int)
	rowSettings.Put("height", rowHeightx)
End Sub

'set row length
Sub setRowLength(rowLengthx As Int)
	rowSettings.Put("len", rowLengthx)
End Sub

'ensure the spreadsheet is ready
Sub Ready
	'refresh with settings
	If fontSettings.Size >= 1 Then
		styleSettings.Put("font", fontSettings)
	End If
	If viewSettings.Size >= 1 Then
		styleSettings.Put("view", viewSettings)
	End If
	If rowSettings.Size >= 1 Then
		styleSettings.Put("row", rowSettings)
	End If
	If colSettings.Size >= 1 Then
		styleSettings.Put("col", colSettings)
	End If
	OnChange
	'
	pID = CleanID(pID)
	'initialize the spreadsheet
	SS.Initialize2("x_spreadsheet", Array(pID, styleSettings))
End Sub	


'set height
Sub setHeight(Heightx As Int)
	viewSettings.Put("height", Heightx)
End Sub

'set width
Sub setWidth(Widthx As Int)
	viewSettings.Put("width", Widthx)
End Sub

'set italic
Sub setFontItalic(FontItalicx As Boolean)
	fontSettings.Put("italic", FontItalicx)
End Sub

'set font bold
Sub setFontBold(FontBoldx As Boolean)
	fontSettings.Put("bold", FontBoldx)
End Sub

'set font size
Sub setFontSize(FontSizex As Int)
	fontSettings.Put("size", FontSizex)
End Sub

'set fontName
Sub setFontName(FontNamex As String)
	fontSettings.Put("name", FontNamex)
End Sub

'set color
Sub setColor(colorx As String)
	styleSettings.Put("color", colorx)
End Sub

'set underline
Sub setUnderline(underlinex As Boolean)
	styleSettings.Put("underline", underlinex)
End Sub

'set strike
Sub setStrike(strikex As Boolean)
	styleSettings.Put("strike", strikex)
End Sub

'set textwrap
Sub setTextWrap(textwrapx As Boolean)
	styleSettings.Put("textwrap", textwrapx)
End Sub

'set valign
Sub setVAlign(valignx As String)
	styleSettings.Put("valign", valignx)
End Sub

'set align
Sub setAlign(alignx As String)
	styleSettings.Put("align", alignx)
End Sub

'set background color
Sub setBGColor(bgcolorx As String)
	styleSettings.Put("bgcolor", bgcolorx)
End Sub

'mode, read, edit
Sub setMode(s As String)
	options.Put("mode", s)
End Sub

'show the toolbar
Sub setShowToolbar(b As Boolean)
	options.Put("showToolbar", b)
End Sub

'show the grid
Sub setShowGrid(b As Boolean)
	options.Put("showGrid", b)
End Sub

'show context menu
Sub setShowContextmenu(b As Boolean)
	options.Put("showContextmenu", b)
End Sub

'add a class
public Sub AddClass(varClass As String) 
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then 
		mElement.AddClass(varClass)
	End If
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

'validate the sheet
Sub validate
	SS.RunMethod("validate", Null)
End Sub

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("hidden-sm-only")
End Sub
	
Sub HiddenMDOnly
	AddClass("hidden-md-only")
End Sub
	
Sub HiddenLGOnly
	AddClass("hidden-lg-only")
End Sub
	
Sub HiddenXLOnly
	AddClass("hidden-xl-only")
End Sub
'
Sub HiddenXSAndDown
	AddClass("hidden-xs-and-down")
End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
Sub HiddenXLAndDown
	AddClass("hidden-xl-and-down")
End Sub
'
Sub HiddenXSAndUp
	AddClass("hidden-xs-and-up")
End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
Sub HiddenXLAndUp
	AddClass("hidden-xl-and-up")
End Sub	

Sub HideOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("d-none d-sm-flex")
End Sub

Sub HideOnlyOnSM
	AddClass("d-sm-none d-md-flex")
End Sub

Sub HideOnlyOnMD
	AddClass("d-md-none d-lg-flex")
End Sub

Sub HideOnlyOnLG
	AddClass("d-lg-none d-xl-flex")
End Sub

Sub HideOnlyOnXL
	AddClass("d-xl-none")
End Sub

Sub VisibleOnAll
	AddClass("d-flex")
End Sub

Sub VisibleOnlyOnXS
	AddClass("d-flex d-sm-none")
End Sub

Sub VisibleOnlyOnSM
	AddClass("d-none d-sm-flex d-md-none")
End Sub

Sub VisibleOnlyOnMD
	AddClass("d-none d-md-flex d-lg-none")
End Sub

Sub VisibleOnlyOnLG
	AddClass("d-none d-lg-flex d-xl-none")
End Sub

Sub VisibleOnlyOnXL
	AddClass("d-none d-xl-flex")
End Sub