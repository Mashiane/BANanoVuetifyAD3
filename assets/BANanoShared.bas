B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.3
@EndOfDesignText@
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano  'ignore
	Dim UnitWords() As String = Array As String( _
        "", "One", "Two", "Three", "Four", _
        "Five", "Six", "Seven", "Eight", "Nine", _
        "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", _
        "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" _
    )
 
	Dim TenWords() As String = Array As String( _
        "", "Ten", "Twenty", "Thirty", "Forty", _
        "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" _
    )
 
	'only need to go up to Pentillions to handle largest Long integer, but while we're here...
	Dim ThousandWords() As String = Array As String( _
        "", "Thousand", "Million", "Billion", "Trillion", _
        "Quadrillion", "Pentillion", "Sexillion", "Septillion", "Octillion" _
    )
	Type FileObject(FileName As String, FileDate As String, FileSize As Long, FileType As String, Status As String, FullPath As String, FileDateOnly As String)
	Private SourceCode As StringBuilder
	Type sequencePair(value As Int, numTimes As Int)
End Sub

'convert named key values of maps inside a list to integers
Sub ListValues2Integers(lst As List, keys2process As List)
	Dim Tot As Int = lst.Size - 1
	Dim Cnt As Int = 0
	For Cnt = 0 To Tot
		Dim m As Map = lst.Get(Cnt)
		For Each k As String In keys2process
			Dim v As String = m.Get(k)
			v = BANano.parseInt(v)
			m.Put(k, v)
		Next
		lst.Set(Cnt, m)
	Next
End Sub


'add an item to a list if the item is not blank
Sub ListAddIfNotBlank(lstName As List, item As String)
	item = item.Trim
	If item = "" Then Return
	lstName.Add(item)
End Sub

'join map keys and return a delimited string
Sub JoinKeys(m As Map, delim As String, props As List) As String
	Dim res As StringBuilder
	res.Initialize 
	For Each prop As String In props
		Dim v As String = m.GetDefault(prop, "")
		res.Append(v).Append(delim)
	Next
	Dim sout As String = res.ToString
	sout = sout.trim
	sout = RemDelim(sout, delim)
	Return sout
End Sub

'return a list item or blank if null
Sub GetListItem(lst As List, pos As Int) As String
	Dim obj As String = lst.Get(pos)
	If BANano.IsUndefined(obj) Or BANano.IsNull(obj) Then obj = ""
	Return obj
End Sub

Sub parseNull(v As Object) As String
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then 
		Return ""
	End If
	v = CStr(v)
	If v = "null" Then Return ""
	If v = "undefined" Then Return ""
	Return v	
End Sub

'parseBool
Sub parseBool(v As Object) As Boolean
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then
		v = False
	End If
	If GetType(v) = "string" Or GetType(v) = "object" Then
		Dim s As String = v & ""
		s = s.tolowercase
		If s = "" Then Return False
		If s = "false" Then Return False
		If S = "true" Then Return True
		If s = "1" Then Return True
		If s = "y" Then Return True
		If s = "0" Then Return False
		If s = "n" Then Return False
		If s = "no" Then Return False
		If s = "yes" Then Return False
	End If
	Return v
End Sub


'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		Return sDate
	Catch
		Return ""
	End Try	
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		item = Val(item)
		item = BANano.parseFloat(item)
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		Return sDate
	Catch
		Return ""
	End Try	
End Sub

Sub FormatFileSize(Bytes As Float) As String					'ignoredeadcode
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub

'trim list items
Sub ListTrimItems(cols As List) As List
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.Trim
		cols.Set(colCnt, strcol)
	Next
	Return cols
End Sub

'list items to integer
Sub ListItemsToInt(cols As List) As List
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.trim
		strcol = BANano.parseInt(strcol)
		cols.Set(colCnt, strcol)
	Next
	Return cols
End Sub

'list items to float
Sub ListItemsToFloat(cols As List) As List
	Dim colTot As Int = cols.Size - 1
	Dim colCnt As Int
	For colCnt = 0 To colTot
		Dim strcol As String = cols.Get(colCnt)
		strcol = strcol.trim
		strcol = BANano.parseFloat(strcol)
		cols.Set(colCnt, strcol)
	Next
	Return cols
End Sub

'increment map key
Sub IncrementMap(m As Map, k As String)
	If m.ContainsKey(k) Then
		Dim lc As Int = m.Get(k)
		lc = BANano.parseInt(lc)
		lc = lc + 1
		m.Put(k, lc)
	Else
		m.Put(k, 1)	
	End If
End Sub

Sub EQOperators(sm As Map) As List  'ignore
	Dim nl As List
	nl.initialize
	For Each k As String In sm.Keys
		nl.Add("=")
	Next
	Return nl
End Sub

Sub YYYYMMDD(sdate As String) As String
	Return FormatDisplayDate(sdate, "YYYY-MM-DD")
End Sub

Sub YYYYMM(sdate As String) As String
	Return FormatDisplayDate(sdate, "YYYY-MM")
End Sub

'return a date with day, month year name
Sub NiceDate(sdate As String) As String				'ignoredeadcode
	Return FormatDisplayDate(sdate, "ddd, DD MMM YYYY")
End Sub

Sub NiceMonth(sdate As String) As String			'ignoredeadcode
	Return FormatDisplayDate(sdate, "MMMM, YYYY")
End Sub

Sub NiceYear(sdate As String) As String			'ignoredeadcode
	Return FormatDisplayDate(sdate, "YYYY")
End Sub


'return a date time
Sub NiceTime(stime As String) As String				'ignoredeadcode
	Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm:ss")
End Sub

'return money
Sub NiceMoney(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0.00")
End Sub

'return thousands
Sub Thousands(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0")
End Sub

'get the html part of a bananoelement and empty the element
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub

'set an interval
Sub SetInterval(Module As Object, methodname As String, ms As Int, args As List) As Object
	methodname = methodname.tolowercase
	Dim cb As BANanoObject = BANano.callback(Module, methodname, args)
	Dim res As Object = BANano.Window.SetInterval(cb, ms)
	Return res
End Sub

'clear an interval
Sub ClearInterval(interval As Object)
	BANano.Window.ClearInterval(interval)
End Sub

'add anything from the appendholder to target
Sub AppendHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTML("appendholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTML("placeholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'return the nice file size
Sub NiceFileSize(fsx As String) As String				'ignoredeadcode
	Return FormatFileSize(fsx)
End Sub

'set basic authorization for http request
Sub BasicAuthorization(username As String, password As String) As Map
	Dim usernamepassword As Object = BANano.ToBase64($"${username}:${password}"$)
	Dim basic As String = $"Basic ${usernamepassword}"$
	Dim m As Map = CreateMap()
	m.Put("Authorization", basic)
	Return m
End Sub

'convert map keys to list
Sub MapKeys2List(m As Map) As List
	Dim mtot As Int = m.Size-1
	Dim mcnt As Int
	Dim nl As List
	nl.Initialize
	For mcnt = 0 To mtot
		Dim v As Object = m.GetKeyAt(mcnt)
		nl.Add(v)
	Next
	Return nl
End Sub

'convert list to object array
Sub List2ObjectArray(lst As List) As Object()
	Dim rTot As Int = lst.size
	Dim rCnt As Int = 0
	Dim xout(rTot) As Object
	For rCnt = 0 To rTot - 1
		xout(rCnt) = lst.Get(rCnt)
	Next
	Return xout
End Sub

'convert map values to object array
Sub MapValues2ObjectArray(m As Map) As Object()
	Dim mtot As Int = m.size
	Dim mcnt As Int
	Dim obj(mtot) As Object
	For mcnt = 0 To mtot - 1
		Dim v As Object = m.GetValueAt(mcnt)
		obj(mcnt) = v
	Next
	Return obj
End Sub

'convert map values to object array
Sub MapKeys2ObjectArray(m As Map) As Object()
	Dim mtot As Int = m.size
	Dim mcnt As Int
	Dim obj(mtot) As Object
	For mcnt = 0 To mtot - 1
		Dim v As Object = m.GetKeyAt(mcnt)
		obj(mcnt) = v
	Next
	Return obj
End Sub

'double quote each item of the multi-value string
Sub MVSingleQuoteItems(delim As String, mvstring As String) As String     
	Dim sbOut As StringBuilder
	sbOut.Initialize
	Dim lItems As List = StrParse(delim, mvstring)
	For Each k As String In lItems
		k = CStr(k)
		k = k.Trim
		sbOut.Append($"'${k}'"$)
		sbOut.Append(delim)
	Next
	Dim sout As String = sbOut.ToString
	sout = RemDelim(sout, delim)
	Return sout
End Sub

'start source code builder
Sub SourceCodeBuilder
	SourceCode.Initialize
End Sub

'add a new line to source code builder
Sub AddNewLine
	SourceCode.append(CRLF)
End Sub

'add code to source code builder
Sub AddCode(scomment As String)
	SourceCode.append(scomment).append(CRLF)
End Sub

'convert yes/no valyes to boolean
Sub YesNoToBoolean(xvalue As String) As Boolean
	Select Case xvalue
		Case "Yes","yes", "y", "1", "YES"
			Return True
		Case Else
			Return False
	End Select
End Sub

'add comment to source code builder
Sub AddComment(sc As String)
	SourceCode.append($"'${sc}"$).append(CRLF)
End Sub

'get the source code from source code builder
Sub GetSourceCode As String
	Dim sout As String = SourceCode.tostring
	sout = sout.Replace("~", "$")
	Return SourceCode.tostring
End Sub

'create a banano element on parent
Sub CreateElement(parent As String, tag As String, id As String,text As String) As BANanoElement
	parent = parent.ToLowerCase
	parent = parent.Replace("#","")
	Dim item As String = $"<${tag} id="${id}"></${tag}>"$
	Dim el As BANanoElement = BANano.GetElement($"#${parent}"$).Append(item).Get($"#${id}"$)
	el.SetText(text)
	Return el
End Sub

'get new date as iso string
Sub DateTimeNowToISOString As String
	Dim obj As BANanoObject
	Dim sdate As String = obj.Initialize2("Date", Null).RunMethod("toISOString", Null).Result
	Return sdate
End Sub

'banano helper class
Sub AddElement(parentID As String, tag As String, id As String, text As String) As BANanoElement
	Return CreateElement(parentID, tag, id, text)
End Sub

'banano helper class
Sub AddElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
	Return CreateElement1(parentID, tag, id, text, props, styles, classes)
End Sub

'banano helper class
Sub CreateElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
	id = id.tolowercase
	parentID = parentID.ToLowerCase
	parentID = parentID.Replace("#","")
	Dim el As BANanoElement = BANano.GetElement($"#${parentID}"$).Append($"<${tag} id="${id}"></${tag}>"$).Get($"#${id}"$)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			el.SetAttr(k, v)
		Next
	End If
	'
	If BANano.IsNull(styles) = False Then
		Dim strStyle As String = BANano.ToJson(styles)
		el.SetStyle(strStyle)
	End If
	'
	If classes <> "" Then el.AddClass(classes)
	el.settext(text)
	Return el
End Sub

'set attributes to banano element
Sub SetAttributes(targetElement As String, props As Map)
	targetElement = targetElement.ToLowerCase
	targetElement = targetElement.Replace("#","")
	Dim el As BANanoElement = BANano.GetElement($"#${targetElement}"$)
	If BANano.IsNull(props) = False Or BANano.IsUndefined(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			el.SetAttr(k, v)
		Next
	End If
End Sub

'set styles to banano element
Sub SetStyles(targetElement As String, styles As Map)
	targetElement = targetElement.ToLowerCase
	targetElement = targetElement.Replace("#","")
	Dim el As BANanoElement = BANano.GetElement($"#${targetElement}"$)
	If BANano.IsNull(styles) = False Or BANano.IsUndefined(styles) = False Then
		Dim strStyle As String = BANano.ToJson(styles)
		el.SetStyle(strStyle)
	End If
End Sub

'helper class for php email
Sub GetEmailResponse(email As String) As String
	Dim respM As Map = BANano.FromJson(email)
	Dim response As String = respM.Get("response")
	Return response
End Sub

'build the map to send an email to use in callinlinephp
Sub BuildEmail(sfrom As String, sto As String, scc As String, ssubject As String, smsg As String) As Map
	Dim se As Map = CreateMap("from":sfrom, "to":sto, "cc":scc, "subject":ssubject, "msg":smsg)
	Return se
End Sub

#if PHP
function EmailSend($from, $to, $cc, $subject, $msg) {
	$hdr  = 'MIME-Version: 1.0' . "\r\n";
	$hdr .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$hdr .= 'X-Mailer:PHP/' . phpversion() . "\r\n";
	$hdr .= "From:" . $from . "\r\n"; 
	$extra = '-f '. $from; 
	$hdr .= "Cc: " . $cc . "\r\n"; 
	$response = (mail($to, $subject, $msg, $hdr, $extra)) ? "success" : "failure"; 
    $output = json_encode(Array("response" => $response)); 
    header('content-type: application/json; charset=utf-8'); 
    echo($output); 
}
#End If


'upload file to server and return success or error
'server should have write permissions
Sub UploadFileWait(fileO As Map) As FileObject
	'get the file details
	Dim fileDet As FileObject = GetFileDetails(fileO)
	'get the file name
	Dim fn As String = fileDet.FileName
	'start uploading the file
	Dim fd As BANanoObject
	fd.Initialize2("FormData", Null)
	fd.RunMethod("append", Array("upload", fileO))
	'
	Dim Res As String = BANano.CallAjaxWait("./assets/upload.php", "POST", "", fd, True, Null)
	Dim result As Map = BANano.FromJson(Res)
	Dim sstatus As String = result.Get("status")
	fileDet.Status = sstatus
	fileDet.FullPath = $"./assets/${fn}"$
	Return fileDet
End Sub

'shuffle a list
Sub ShuffleList(pl As List) As List
	For i = pl.Size - 1 To 0 Step -1
		Dim j As Int
		Dim k As Object
		j = Rnd(0, i + 1)
		k = pl.Get(j)
		pl.Set(j,pl.Get(i))
		pl.Set(i,k)
	Next
	Return pl
End Sub

'explode a list
Sub ExplodeList(lst As List, runs As Int) As List
	Dim nList As List
	nList.Initialize
	Dim oCnt As Int
	For oCnt = 1 To runs
		nList.AddAll(lst)
	Next
	nList = ShuffleList(nList)
	Return nList
End Sub

'initialize a new list
Sub NewList As List
	Dim elx As List
	elx.Initialize 
	Return elx
End Sub

'initialize a new list with items
Sub NewList1(items As List) As List
	Dim nl As List
	nl.Initialize
	nl.AddAll(items)
	Return nl
End Sub


'get id from event
Sub GetIDFromEvent(e As BANanoEvent) As String
	Dim curEve As BANanoElement = BANano.ToElement(e.OtherField("currentTarget"))
	Dim ID As String = curEve.GetField("id").Result
	Return ID
End Sub

'get id from event
Sub GetKeyFromEvent(e As BANanoEvent) As String
	Dim curEve As BANanoElement = BANano.ToElement(e.OtherField("currentTarget"))
	Dim ID As String = curEve.GetField("key").Result
	Return ID
End Sub

'get id from event
Sub GetTargetValueFromEvent(e As BANanoEvent) As String
	Dim oValue As Object = e.OtherField("target").GetField("value").Result
	Return oValue
End Sub

'get target property from event
Sub GetTargetPropertyFromEvent(e As BANanoEvent, prop As String) As String
	Dim oValue As Object = e.OtherField("target").GetField(prop).Result
	Return oValue
End Sub

'get target from event
Sub GetTargetFromEvent(e As BANanoEvent) As BANanoObject
	Dim oValue As BANanoObject = e.OtherField("target")
	Return oValue
End Sub

'get event target property
Sub GetEventTargetProperty(e As BANanoEvent, prop As String) As String
	Dim sid As String = e.OtherField("target").GetField(prop).Result
	Return sid
End Sub

'get file list from target
Sub GetFileListFromTarget(e As BANanoEvent) As List
	Dim files As List = e.OtherField("target").GetField("files").Result
	Return files
End Sub

'get file from target
Sub GetFileFromTarget(e As BANanoEvent) As Map
	Dim files As List = e.OtherField("target").GetField("files").Result
	Dim obj As Map = files.Get(0)
	Return obj
End Sub

'beautify a variable, more like camelCase
Sub BeautifyName(idName As String) As String
	idName = idName.trim
	If idName = "" Then Return ""
	Dim ls As StringBuilder
	ls.Initialize
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			ls.Append("-")
		Else
			ls.Append(mout)
		End If
	Next
	Dim sname As String = ls.tostring
	sname = ProperSubName(sname, False)
	Return sname
End Sub

'return proper sub name
Sub ProperSubName(vx As String, removePref As Boolean) As String
	vx = vx.Replace(":", "-")
	vx = vx.Replace(".", "-")
	Dim varList As List = StrParse("-", vx)
	If removePref Then
		varList.RemoveAt(0)
	End If
	Dim varTot As Int = varList.Size - 1
	Dim varCnt As Int
	For varCnt = 0 To varTot
		Dim varItem As String = varList.Get(varCnt)
		varItem = ProperCase(varItem)
		varList.Set(varCnt, varItem)
	Next
	Dim subName1 As String = Join("",varList)
	Return subName1
End Sub

'capitalize a name
Sub Capitalize(t As String) As String
	Return ProperCase(t)
End Sub

'capitalize a name
Sub CapitalizeEach(t As String, delim As String) As String
	Dim cols As List = StrParse(delim, t)
	'
	Dim items As List
	items.Initialize 
	'
	For Each item As String In cols
		item = ProperCase(item)
		items.Add(item)
	Next
	Dim sout As String = Join(delim, items)
	Return sout
End Sub

'parse a string
Sub StrParse(delim As String, inputString As String) As List
	Dim nl As List
	nl.Initialize
	inputString = CStr(inputString)
	If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
	If inputString = "" Then Return nl
	If inputString.IndexOf(delim) = -1 Then
		nl.Add(inputString)
	Else	
		nl = BANano.Split(delim,inputString)
	End If
	Return nl
End Sub

'parse a string
Sub StrParseComma(delim As String, inputString As String) As List
	inputString = inputString.Replace(",", delim)
	Dim nl As List
	nl.Initialize
	inputString = CStr(inputString)
	If BANano.IsNull(inputString) Or BANano.IsUndefined(inputString) Then inputString = ""
	If inputString = "" Then Return nl
	If inputString.IndexOf(delim) = -1 Then
		nl.Add(inputString)
	Else	
		nl = BANano.Split(delim,inputString)
	End If
	Return nl
End Sub

'join list to mv string
Sub Join(delimiter As String, lst As List) As String
	Dim i As Int
	Dim sbx As StringBuilder
	Dim fld As String
	sbx.Initialize
	fld = lst.Get(0)
	sbx.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sbx.Append(delimiter).Append(fld)
	Next
	Return sbx.ToString
End Sub

'correct a name
Sub CorrectName(oldName As String) As String
	Dim strName As String = StringBreakAtUpperCase(oldName)
	strName = strName.replace(" ", "-")
	strName = strName.tolowercase
	Return strName
End Sub


'double quote each item of the mv
Sub MVQuoteItems(delim As String, mvstring As String) As String
	Dim sbOut As StringBuilder
	sbOut.Initialize
	Dim lItems As List = StrParse(delim, mvstring)
	For Each k As String In lItems
		k = CStr(k)
		k = k.Trim
		sbOut.Append($""${k}""$).Append(delim)
	Next
	Dim sout As String = sbOut.ToString
	sout = RemDelim(sout, delim)
	Return sout
End Sub


'get document ready state
Sub GetReadyState As String
	Dim rs As String = BANano.Window.GetField("document").GetField("readyState").Result
	Return rs
End Sub

'set ready change event
Sub SetOnReadyChange(EventHandler As Object)
	If SubExists(EventHandler, "ReadyChange") = False Then Return
	Dim cb As BANanoObject = BANano.callback(EventHandler, "ReadyChange", Null)
	BANano.Window.GetField("document").AddEventListener("readystatechange", cb, True)
End Sub
'
'detect if date is after
Sub DateIsAfter(date1 As String, date2 As String) As Boolean
	Dim d1 As Int = DateIconv(date1)
	Dim d2 As Int = DateIconv(date2)
	d1 = BANano.parseint(d1)
	d2 = BANano.parseInt(d2)
	Dim b As Boolean = BANano.IIf(d1 > d2, True, False)
	Return b
End Sub

'remove the delimiter from stringbuilder
Sub RemDelim(sValue As String, Delim As String) As String
	Dim sw As Boolean = sValue.EndsWith(Delim)
	If sw Then
		Dim lDelim As Int = Delim.Length
		Dim nValue As String = sValue
		sw = nValue.EndsWith(Delim)
		If sw Then
			nValue = nValue.SubString2(0, nValue.Length-lDelim)
		End If
		Return nValue
	Else
		Return sValue
	End If
End Sub

'break a string at uppercase to have a space
Sub StringBreakAtUpperCase(st As String) As String
	If st.Length = 0 Then Return ""
	Dim k As Int
	Dim s As String
	Dim newst As String = st.CharAt(0)
	For i = 1 To st.Length - 1
		s = st.CharAt(i)
		k = Asc(s)
		If (k > 64) And (k < 91) And (st.CharAt(i-1) <> " ") Then
			newst = newst & " " & s
		Else
			newst = newst & s
		End If
	Next
	Return newst
End Sub


'build the styles
Sub BuildStyle(styles As Map) As String
	If styles.Size = 0 Then Return ""
	Dim sbx As StringBuilder
	sbx.Initialize
	For Each k As String In styles.keys
		Dim v As String = styles.get(k)
		'
		If BANano.IsUndefined(v) Then v = ""
		If BANano.IsNull(v) Then v = ""
		'
		If BANano.IsUndefined(k) Then k = ""
		If BANano.IsNull(k) Then k = ""
		
		k = k.trim
		v = v.trim
		'
		If k = "" Then Continue
		If v = "" Then Continue
		sbx.Append($"${k}:${v};"$)
	Next
	Return sbx.tostring
End Sub

'build classes
Sub BuildClasses(properties As Map) As String
	If properties.Size = 0 Then Return ""
	Dim sbx As StringBuilder
	sbx.Initialize
	For Each k As String In properties.keys
		Dim v As String = properties.get(k)
		'
		If BANano.IsUndefined(v) Then v = ""
		If BANano.IsNull(v) Then v = ""
		'
		If BANano.IsUndefined(k) Then k = ""
		If BANano.IsNull(k) Then k = ""
		'
		If k = "" Then Continue
		If v = "" Then Continue
		'
		sbx.Append(k).Append(" ")
	Next
	Dim sout As String = sbx.ToString
	sout = sout.trim
	Return sout
End Sub


'build attributes
Sub BuildAttributes(properties As Map) As String
	If properties.ContainsKey("tagname") Then
		properties.remove("tagname")
	End If
	If properties.Size = 0 Then Return ""
	Dim sbx As StringBuilder
	sbx.Initialize
	For Each k As String In properties.keys
		Dim v As String = properties.get(k)
		'
		If BANano.IsUndefined(v) Then v = ""
		If BANano.IsNull(v) Then v = ""
		'
		If BANano.IsUndefined(k) Then k = ""
		If BANano.IsNull(k) Then k = ""
		'
		If k = "" Then Continue
		If v = "" Then Continue
			
		If BANano.IsBoolean(v) Then
			sbx.Append($"${k}=${v} "$)
		Else
			k = k.trim
			v = v.trim
			sbx.Append($"${k}="${v}" "$)
		End If
	Next
	Dim sout As String = sbx.ToString
	sout = sout.trim
	Return sout
End Sub

'join map keys
Sub JoinMapKeys(m As Map, delim As String) As String
	If m.Size = 0 Then Return ""
	Dim sb As StringBuilder
	sb.Initialize
	Dim kTot As Int = m.Size - 1
	Dim kCnt As Int
	Dim strKey As String = m.getkeyat(0)
	sb.Append(strKey)
	For kCnt = 1 To kTot
		Dim strKey As String = m.getkeyat(kCnt)
		sb.Append(delim).append(strKey)
	Next
	Return sb.ToString
End Sub

'join map keys
Sub JoinMapKeysQuote(m As Map, delim As String, squote As String) As String
	If m.Size = 0 Then Return ""
	Dim sb As StringBuilder
	sb.Initialize
	Dim kTot As Int = m.Size - 1
	Dim kCnt As Int
	Dim strKey As String = m.getkeyat(0)
	sb.Append(squote & strKey & squote)
	For kCnt = 1 To kTot
		Dim strKey As String = m.getkeyat(kCnt)
		sb.Append(delim).append(squote & strKey & squote)
	Next
	Return sb.ToString
End Sub

'return lorem ipsum
Sub LoremIpsum(count As String) As String
	Return Rand_LoremIpsum(count)
End Sub

Sub Random_Color As String
	Dim colors As List
	colors.Initialize 
	colors.Add("red")
	colors.Add("pink")
	colors.Add("purple")
	colors.Add("deep-purple")
	colors.Add("indigo")
	colors.Add("blue")
	colors.Add("light-blue")
	colors.Add("cyan")
	colors.Add("teal")
	colors.Add("green")
	colors.Add("light-green")
	colors.Add("lime")
	colors.Add("yellow")
	colors.Add("amber")
	colors.Add("orange")
	colors.Add("deep-orange")
	colors.Add("brown")
	colors.Add("grey")
	colors.Add("blue-grey")
	colors.Add("black")
	'explode the colors
	colors = ExplodeList(colors, 2)
	Dim col As String = RandListValue1(colors)
	Return col
End Sub

'return sentences of lorem ipsum
Sub Rand_LoremIpsum(count As Int) As String
	Dim str As String = $"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."$
	Dim sb As StringBuilder
	sb.Initialize
	For i = 1 To count
		sb.Append(str).Append(CRLF)
	Next
	Return sb.tostring
End Sub

'make the keys of the maps to lowercase
Sub ListOfMapsKeysToLowerCase(lst As List)
	Dim recTot As Int = lst.Size - 1
	Dim recCnt As Int
	For recCnt = 0 To recTot
		Dim m As Map = lst.Get(recCnt)
		m = MakeLowerCase(m)
		lst.Set(recCnt, m)
	Next
End Sub

'update a record at position using a particular property and value
Sub ListOfMapsUpdateRecord(lst As List, k As String, v As String, m As Map)
	'get a record map
	Dim recPos As Int = ListOfMapsRecordPos(lst, k, v)
	recPos = BANano.parseInt(recPos)
	If recPos = -1 Then Return
	'get the record at pos
	Dim oldrec As Map = lst.Get(recPos)	
	For Each mk As String In m.Keys
		Dim mv As String = m.Get(mk)
		oldrec.Put(mk, mv)
	Next
	lst.Set(recPos, oldrec)
End Sub

'get the record position from saved items
Sub ListOfMapsRecordPos(lst As List, k As String, v As String) As Int
	v = CStr(v)
	k = CStr(k)
	Dim lTot As Int = lst.Size - 1
	Dim lCnt As Int
	For lCnt = 0 To lTot
		Dim m As Map = lst.Get(lCnt)
		If m.ContainsKey(k) Then
			Dim sk As String = m.GetDefault(k, "")
			sk = CStr(sk)
			If sk.EqualsIgnoreCase(v) Then
				Return lCnt
			End If
		End If
	Next
	Return -1
End Sub

'get distinct values of mv
Sub MvDistinct(delim As String, strmv As String) As String
	Dim items As List = StrParse(delim, strmv)
	Dim mi As Map = CreateMap()
	For Each k As String In items
		mi.Put(k, k)
	Next
	Dim nl As List = NewList
	For Each k As String In mi.Keys
		nl.Add(k)
	Next
	Dim sout As String = Join(delim, nl)
	Return sout
End Sub

'convert delimited values and keys to a map
Sub KeyValues2Map(delim As String, keys As String, values As String) As Map
	Dim rkeys As List = StrParse(delim, keys)
	Dim rvalues As List = StrParse(delim, values)
	'
	Dim optm As Map = CreateMap()
	
	Dim rTot As Int = rkeys.Size -1
	Dim vTot As Int = rvalues.Size - 1
	If rTot <> vTot Then
	Else
		Dim rCnt As Int
		For rCnt = 0 To rTot
			Dim k As String = rkeys.Get(rCnt)
			Dim v As String = rvalues.Get(rCnt)
			optm.put(k, v)
		Next
	End If
	Return optm
End Sub

'initialize a map
Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'javascript getElementById
Sub getElementById(sid As String) As BANanoObject
	Dim el As BANanoObject = BANano.Window.GetField("document").RunMethod("getElementById", Array(sid))
	Return el
End Sub

'date difference
Sub DateDiff(currentDate As String, otherDate As String) As Int
	If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
	If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
	
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
	Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
	'
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "day")).Result
	Return rslt
End Sub

'minute difference
Sub MinuteDiff(currentDate As String, otherDate As String) As Int
	If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
	If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
	
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
	Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
	'
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "minute")).Result
	Return rslt
End Sub

'remove duplicates from a list
Sub ListRemoveDuplicates(lst As List) As List
	Dim nd As Map = CreateMap()
	For Each k As String In lst
		nd.Put(k, k)
	Next
	Dim nl As List
	nl.Initialize
	For Each k As String In nd.Keys
		nl.Add(k)
	Next
	nl.Sort(True)
	Return nl
End Sub

'get file details
Sub GetFileDetails(fileObj As Map) As FileObject
	Dim ff As FileObject
	ff.Initialize
	
	If BANano.IsNull(fileObj) Or BANano.IsUndefined(fileObj) Then Return ff
	
	Dim sname As String = fileObj.Get("name")
	Dim slastModifiedDate As BANanoObject = fileObj.Get("lastModifiedDate")
	Dim ssize As String = fileObj.Get("size")
	Dim stype As String = fileObj.Get("type")
	'
	Dim yyyy As String = slastModifiedDate.RunMethod("getFullYear", Null).Result
	Dim dd As String = slastModifiedDate.RunMethod("getDate", Null).Result
	Dim mm As String = slastModifiedDate.RunMethod("getMonth", Null).Result
	Dim hh As String = slastModifiedDate.RunMethod("getHours", Null).Result
	Dim minutes As String = slastModifiedDate.RunMethod("getMinutes", Null).Result
	'pad the details
	dd = PadRight(dd, 2, "0")
	mm = PadRight(mm, 2, "0")
	hh = PadRight(hh, 2, "0")
	minutes = PadRight(minutes, 2, "0")
	'
	Dim fd As String = $"${yyyy}-${mm}-${dd} ${hh}:${minutes}"$
		
	ff.FileName = sname
	ff.FileDate = fd
	ff.FileDateOnly = $"${yyyy}-${mm}-${dd}"$
	ff.FileSize = ssize
	ff.FileType = stype
	Return ff
End Sub

'beautify source code
Sub BeautifySourceCode(slang As String, sc As String) As String
	Select Case slang
	Case "js"
		Dim res As String = BANano.RunJavascriptMethod("js_beautify", Array(sc))
	Case "css"
		Dim res As String = BANano.RunJavascriptMethod("css_beautify", Array(sc))
	Case "html"
		Dim res As String = BANano.RunJavascriptMethod("html_beautify", Array(sc))
	End Select
	Return res
End Sub


'???? kept
private Sub DoUpload(fileObj As Object) As String   'ignore
	Dim aEvt As Object
	Dim xhr As BANanoXMLHttpRequest
	'define form data
	Dim fd As BANanoObject
	fd.Initialize2("FormData",Null)
	fd.RunMethod("append", Array("upload", fileObj))
	'
	xhr.Initialize
	xhr.Open("POST", "./assets/upload.php")
	xhr.AddEventListenerOpenAsync("onreadystatechange", aEvt)
	If xhr.ReadyState = 4 Then
		If xhr.Status = 200 Then
			BANano.ReturnThen(xhr.ResponseText)
		Else
			Dim err As Map = CreateMap()
			err.Put("status", "error")
			Dim serr As String = BANano.ToJson(err)
			BANano.ReturnElse(serr)
		End If
	End If
	xhr.CloseEventListener
	xhr.Send2(fd)
End Sub

Sub HTTPUpload(fileObj As Object, module As Object, methodname As String)
	Dim promise As BANanoPromise 'ignore
	' some vars to hold our results
	Dim Error As String
	Dim json As String
	
	' call the http request
	promise.CallSub(Me, "DoUpload", Array(fileObj))
	promise.ThenWait(json)
	BANano.CallSub(module, methodname, Array(fileObj, json))
	promise.ElseWait(Error)  'ignore
	BANano.CallSub(module, methodname, Array(fileObj, Error))
	promise.End
End Sub

'get alphabets
Sub GetAlphabets(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

'return a pretty json from something
Sub JSONPretty(m As Object) As String
	Dim pretty As String = BANano.RunJavascriptMethod("JSON.stringify", Array(m, Null, 4))
	Return pretty
End Sub

'create a map subset from list of keys
Sub ExtractMap(source As Map, keys As List) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In keys
		Dim v As Object = source.get(k)
		nm.put(k, v)
	Next
	Return nm
End Sub

'instr
Sub InStr(Text As String, sFind As String) As Int
	Return Text.tolowercase.IndexOf(sFind.tolowercase)
End Sub

'join list to mv string
Sub JoinNonBlanks(delimiter As String, lst As List) As String
	If lst.size = 0 Then Return ""
	'ensure we have non blanks
	Dim nl As List
	nl.Initialize
	For Each str As String In lst
		str = str.Trim
		If str.Length > 0 Then
			nl.Add(str)
		End If
	Next
	If nl.Size = 0 Then Return ""
	'
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = nl.Get(0)
	sb.Append(fld)
	For i = 1 To nl.size - 1
		Dim fld As String = nl.Get(i)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

'extract particular keys from a map and generate a new map
Sub MapExtractKeys(m As Map, mkeys As List) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In mkeys
		Dim v As Object = m.Get(k)
		nm.Put(k, v)
	Next
	Return nm
End Sub


'join list of maps
Sub JoinMaps(lst As List) As Map
	Dim nm As Map = CreateMap()
	If lst.Size = 0 Then Return nm
	For Each mr As Map In lst
		For Each k As String In mr.Keys
			Dim v As Object = mr.Get(k)
			nm.Put(k, v)
		Next
	Next
	Return nm
End Sub

'join lists
Sub JoinLists(lst As List) As List
	Dim nl As List
	nl.Initialize
	For Each lo As List In lst
		For Each k As Object In lo
			nl.Add(k)
		Next
	Next
	Return nl
End Sub

'extract map properties to a list
Sub MapProperty2List(om As List, prop As String) As List
	Dim lst As List
	lst.initialize
	Dim mtot As Int = om.Size - 1
	Dim mcnt As Int = 0
	For mcnt = 0 To mtot
		Dim omm As Map = om.Get(mcnt)
		Dim strvalue As String = omm.GetDefault(prop,"")
		lst.Add(strvalue)
	Next
	Return lst
End Sub

'progress rag
Sub ProgressRAG(dVariance As Double) As String
	If dVariance < 0 Then
		Return "./assets/red.png"
	else if dVariance > 0 Then
		Return "./assets/green.png"
	else if dVariance = 0 Then
		Return "./assets/orange.png"
	Else
		Return "./assets/gray.png"
	End If
End Sub

'expenditure rag
Sub ExpenditureRAG(dVariance As Double) As String
	If dVariance > 0 Then
		Return "./assets/green.png"
	else if dVariance < 0 Then
		Return "./assets/red.png"
	else if dVariance = 0 Then
		Return "./assets/orange.png"
	Else
		Return "./assets/gray.png"
	End If
End Sub

'expected rag
Sub ExpectedRAG(dValue As Double) As String
	If dValue = 0 Then
		Return "./assets/orange.png"
	else if dValue > 0 Then
		Return "./assets/red.png"
	else if dValue < 0 Then
		Return "./assets/green.png"
	Else
		Return "./assets/red.png"
	End If
End Sub

'rsa id to date of birth
Sub RSAIDNumber2DateOfBirth(rsaID As String) As String
	'south african id
	If rsaID.length = 13 Then
		Dim yymmdd As String = LeftS(rsaID, 6)
		Dim yy As String = LeftS(yymmdd,2)
		Dim mm As String = Mid2(yymmdd,3,2)
		Dim dd As String = RightS(yymmdd,2)
		Dim sprefix As String = "19"
		If yy.StartsWith("0") Then
			sprefix = "20"
		End If
		yymmdd = $"${sprefix}${yy}-${mm}-${dd}"$
		Return yymmdd
	Else
		Return ""
	End If
End Sub

'year now
Sub YearNow() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "yyyy"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'month now
Sub MonthNow() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "M"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'add days to date
Sub DateAdd(mDate As String, HowManyDays As Int) As String
	HowManyDays = BANano.parseInt(HowManyDays)
	Dim ConvertDate, NewDateDay As Long
	ConvertDate = DateTime.DateParse(mDate)
	NewDateDay = DateTime.Add(ConvertDate, 0, 0, HowManyDays)
	Return DateTime.Date(NewDateDay)
End Sub

'add months to date
Sub MonthAdd(mDate As String, HowManyMonths As Int) As String
	HowManyMonths = BANano.parseInt(HowManyMonths)
	Dim ConvertDate, NewDateDay As Long
	ConvertDate = DateTime.DateParse(mDate)
	NewDateDay = DateTime.Add(ConvertDate, 0, HowManyMonths, 0)
	Return DateTime.Date(NewDateDay)
End Sub


'Returns the number of days that have passed between two dates.
'Pass the dates as a String
Sub NumberOfDaysBetweenDates(CurrentDate As String, OtherDate As String) As Int
	Dim CurrDate, OthDate As Long
	CurrDate = DateTime.DateParse(CurrentDate)
	OthDate = DateTime.DateParse(OtherDate)
	Dim tpd As Long = DateTime.TicksPerDay
	Dim iOut As Long = (CurrDate - OthDate)/tpd
	Return iOut
End Sub

'double
Sub CDbl(value As String) As Double
	Try
		value = value.Trim
		If value = "" Then value = "0"
		value = value.Replace(",","")
		Dim out As Double = NumberFormat2(value,0,2,2,False)
		Return out
	Catch
		Return value
	End Try
End Sub

'project days
Sub ProjectDays(sDays As String) As String
	Try
		sDays = sDays.trim
		If sDays = "" Then sDays = "0"
		sDays = sDays.Replace(",","")
		sDays = NumberFormat2(sDays,0,0,0,True)
		Return sDays & " Dys"
	Catch
		Return "0 Dys"
	End Try
End Sub

'project date
Sub ProjectDate(sDate As String) As String
	If sDate.Length = 0 Then Return ""
	Try
		DateTime.DateFormat = "yyyy-MM-dd"
		Dim dt As Long = DateTime.DateParse(sDate)
		DateTime.DateFormat = "dd-MMM-yyyy, EEE"
		Return DateTime.Date(dt)
	Catch
		Return ""
	End Try
End Sub

'instr reverse
Sub InStrRev(value As String, search As String) As Long
	Return value.LastIndexOf(search) + 1
End Sub

'get full date
Sub GetFullDate(v As String) As String
	Try
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then v = ""
	If v = "" Then Return v				
	Dim xDate As BANanoObject = v   'ignore
	Dim syear As String = xDate.RunMethod("getFullYear", Null).Result
	Dim smonth As String = xDate.RunMethod("getMonth", Null).Result
	Dim sday As String = xDate.RunMethod("getDate", Null).Result
	smonth = BANano.parseInt(smonth) + 1
	smonth = PadRight(smonth, 2, "0")
	sday = PadRight(sday, 2, "0")
	Dim syyyymmdd As String = $"${syear}-${smonth}-${sday}"$
	Return syyyymmdd
	Catch
		Return v
	End Try
End Sub

'get full time
Sub GetFullTime(v As String) As String
	Try
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then v = ""
	If v = "" Then Return "00:00"
	
	Dim xDate As BANanoObject = v   'ignore
	Dim sHours As String = xDate.RunMethod("getHours", Null).Result
	Dim sMinutes As String = xDate.RunMethod("getMinutes", Null).Result
	sHours = PadRight(sHours, 2, "0")
	sMinutes = PadRight(sMinutes, 2, "0")
	Dim hhmm As String = $"${sHours}:${sMinutes}"$
	Return hhmm
	Catch
		Return v
	End Try
End Sub


'get the length of the string
Sub Len(Text As String) As Int
	Return Text.Length
End Sub

'pad things to the right
Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String
	Value = CStr(Value)
	Dim intOrdNoLen As Int = Len(Value)
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		Value = PadChar & Value
	Next
	Return Value
End Sub

'get list of map properties
Sub GetListOfMapsProperty(lst As List, prop As String) As List
	prop = prop.tolowercase
	Dim kc As List
	kc.initialize
	For Each rec As Map In lst
		Dim v As String = rec.Get(prop)
		kc.add(v)
	Next
	Return kc
End Sub

'sum list of maps property
Sub SumListOfMapsProperty(lst As List, prop As String) As Double
	Dim tsum As Double = 0
	For Each rec As Map In lst
		Dim propv As String = rec.GetDefault(prop,"0")
		propv = Val(propv)
		tsum = tsum + BANano.parseFloat(propv)
	Next
	Return tsum
End Sub

Sub ListSumProperty(lst As List, prop As String) As Double
	Dim tsum As Double = 0
	For Each rec As Map In lst
		Dim propv As String = rec.GetDefault(prop,"0")
		propv = Val(propv)
		tsum = tsum + BANano.parseFloat(propv)
	Next
	Return tsum
End Sub

'extract all numeric values from a string
Sub Val(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = "0"
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789.-", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

'extract all numeric values from a string
Sub GetNumbers(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("0123456789", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub

'get alpha
Sub Alpha(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try
End Sub


'convert list of maps to key,value pairs
Sub List2KeyValues(lst As List, mapvalues As List) As List
	Return List2IDValue(lst, mapvalues)
End Sub

'convest list of maps to id & value
Sub List2IDValue(lst As List, mapValues As List) As List
	Dim mv1 As String = mapValues.get(0)
	Dim mv2 As String = mapValues.get(1)
	Dim nlst As List
	nlst.initialize
	For Each dict As Map In lst
		Dim mk As String = dict.get(mv1)
		Dim mv As String = dict.get(mv2)
		Dim nm As Map = CreateMap()
		nm.Put("id", mk)
		nm.put("value", mv)
		nlst.Add(nm)
	Next
	Return nlst
End Sub


'convert a list to a data source
Sub ListToDataSource(keyName As String, valueName As String, lst As List) As List
	Dim nl As List
	nl.Initialize
	For Each item As String In lst
		Dim nm As Map = CreateMap()
		nm.Put(keyName, item)
		nm.Put(valueName, item)
		nl.Add(nm)
	Next
	Return nl
End Sub

'list to array variable
Sub List2ArrayVariable(lst As List) As String
	If lst.Size = 0 Then
		Return $""""$
	End If
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	fld = $""${fld}""$
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		fld = $""${fld}""$
		sb.Append(",").Append(fld)
	Next
	Return sb.ToString
End Sub

'json values to lowercase
Sub JSONValues2LowerCase(sJSON As String, props As List) As String
	'convert json to map
	Dim jmap As Map = Json2Map(sJSON)
	MapValues2LowerCase(jmap, props)
	Dim nJSON As String = Map2Json(jmap)
	Return nJSON
End Sub


'convert a map to a json string using BANanoJSONGenerator
Sub Map2Json(mp As Map) As String
	Dim JSON As BANanoJSONGenerator
	JSON.Initialize(mp)
	Return JSON.ToString
End Sub

'map to pretty json
Sub Map2JsonPretty(mp As Map) As String
	Dim JSON As BANanoJSONGenerator
	JSON.Initialize(mp)
	Return JSON.ToPrettyString(4)
End Sub


'convert a json string to a map
Sub Json2Map(strJSON As String) As Map
	Dim json As BANanoJSONParser
	Dim Map1 As Map
	Map1.Initialize
	Map1.clear
	Try
		If strJSON.length > 0 Then
			json.Initialize(strJSON)
			Map1 = json.NextObject
		End If
		Return Map1
	Catch
		Return Map1
	End Try
End Sub

'new date
Sub NewDate(year As Int, month As Int, day As Int) As BANanoObject
	Dim dd As BANanoObject
	dd.Initialize2("Date", Array(year, month, day))
	Return dd
End Sub

'new date time
Sub NewDateTime(year As Int, month As Int, day As Int, hour As Int, minute As Int) As BANanoObject
	Dim dd As BANanoObject
	dd.Initialize2("Date", Array(year, month, day, hour, minute))
	Return dd
End Sub

'pad
Sub Pad(Value As String, MaxLen As Int, PadChar As String, bright As Boolean) As String
	Dim  intOrdNoLen As Int = Value.Length
	Dim i As Int
	For i = 1 To (MaxLen - intOrdNoLen) Step 1
		If bright Then
			Value =  Value & PadChar
		Else
			Value = PadChar & Value
		End If
	Next
	Return Value
End Sub

'convert to long
Sub CLng(o As Object) As Long
	Return Floor(o)
End Sub

'convert to int
Sub CInt(o As Object) As Int
	Return Floor(o)
End Sub

'convert a list to json
Sub List2Json(mp As List) As String
	Dim JSON As BANanoJSONGenerator
	JSON.Initialize2(mp)
	Return JSON.ToString
End Sub

' convert a json string to a list
Sub Json2List(strValue As String) As List
	Dim lst As List
	lst.Initialize
	lst.clear
	If strValue.Length = 0 Then
		Return lst
	End If
	Try
		Dim parser As BANanoJSONParser
		parser.Initialize(strValue)
		Return parser.NextArray
	Catch
		Return lst
	End Try
End Sub

'convert map values to lowercase
Sub MapValues2LowerCase(m As Map, props As List)
	For Each prop As String In props
		If m.ContainsKey(prop) Then
			Dim v As String = m.GetDefault(prop,"")
			v = v.tolowercase
			m.Put(prop,v)
		End If
	Next
End Sub

'nice number
Sub NumberSuffix(N As Double) As String
	If N < 0 Then
		Return "-" & NumberSuffix(-N)
	End If
	Dim Suffix() As String = Array As String("", "k", "M", "B", "T")
	Dim iThousands As Int = 0
	Do While N >= 1000 And iThousands < Suffix.Length - 1
		iThousands = iThousands + 1
		N = N / 1000
	Loop
	If iThousands = 0 Then
		Return NumberFormat2(N, 1, 2, 2, False)
	End If
 
	Dim MaxDecimalPlaces As Int = 0
	Do While MaxDecimalPlaces < 5
		Dim RelativeError As Double = Abs(N - Round2(N, MaxDecimalPlaces)) / N
		If RelativeError < 0.007 Then
			Exit
		End If
		MaxDecimalPlaces = MaxDecimalPlaces + 1
	Loop
	Return NumberFormat2(N, 1, 0, MaxDecimalPlaces, False) & Suffix(iThousands)
End Sub

'list 2 array
Sub List2Array (a_lstArgs As List) As String()
	Dim arrArgs(a_lstArgs.Size) As String
	For i = 0 To arrArgs.Length - 1
		arrArgs(i) = a_lstArgs.Get(i)
	Next
	Return arrArgs
End Sub

'random string
Sub RandomString(iLength As Int, bLowerCase As Boolean, bUpperCase As Boolean, bNumbers As Boolean, AdditionalChars As String) As String
	Dim source As String
	If bLowerCase = True Then
		source = source &"abcdefghijklmnopqrstuvwxyz"
	End If
	If bUpperCase = True Then
		source = source &"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	End If
	If bNumbers = True Then
		source = source &"0123456789"
	End If
	If AdditionalChars.Length > 0 Then
		source = source&AdditionalChars
	End If

	Dim SB As StringBuilder
	SB.Initialize
	For i = 1 To iLength
		Dim r As Int = Rnd(0,source.Length-1)
		SB.Append(source.SubString2(r,r+1))
	Next
	Return SB.ToString
End Sub

'generate password
Sub GeneratePassword(IntNum As Int) As String
	Return RandomString(IntNum,True,True,True,"")
End Sub

'remove a delimiter from a string
Sub RemDelimSB(delimiter As String, value As StringBuilder) As StringBuilder
	If value.tostring.EndsWith(delimiter) = True Then
		Dim delimLen As Int = delimiter.length
		value.Remove(value.Length-delimLen,value.Length)
	End If
	Return value
End Sub

'space
Sub Space(HM As Int) As String
	Dim RS As String = ""
	Do While Len(RS) < HM
		RS = RS & " "
	Loop
	Return RS
End Sub

'make money
Sub MakeMoney(sValue As String) As String
	Try
		If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return "0.00"
		If sValue.Length = 0 Then Return "0.00"
		If sValue.IndexOf(",") Then sValue = sValue.Replace(",","")
		sValue = Val(sValue)
		If sValue = "0" Then sValue = "000"
		sValue = Round2(sValue,2)
		Return NumberFormat2(sValue, 1, 2, 2, True)
	Catch
		Return sValue
	End Try
End Sub

'percentage
Sub Percentage(sValue As String) As String
	Try
		If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return "0.00"
		If sValue = "" Then sValue = "0.00"
		If sValue.Length = 0 Then Return "0.00"
		If sValue = "null" Then sValue = "0.00"
		sValue = sValue.Replace(",","")
		sValue = Val(sValue)
		If sValue = "0" Then sValue = "0.00"
		sValue = Round2(sValue,2)
		sValue = sValue & "%"
		Return sValue
	Catch
		Return sValue
	End Try
End Sub

'long date
Sub LongDate(sDate As String) As String
	If sDate.Length = 0 Then Return ""
	Try
		DateTime.DateFormat = "yyyy-MM-dd"
		Dim dt As Long = DateTime.DateParse(sDate)
		DateTime.DateFormat = "EEEE, dd MMMM yyyy"
		Return DateTime.Date(dt)
	Catch
		Return ""
	End Try
End Sub

'long date time
Sub LongDateTime(sDate As String) As String
	If sDate.Length = 0 Then Return ""
	Try
		DateTime.DateFormat = "yyyy-MM-dd HH:mm"
		Dim dt As Long = DateTime.DateParse(sDate)
		DateTime.DateFormat = "EEEE, dd MMMM yyyy HH:mm"
		Return DateTime.Date(dt)
	Catch
		Return ""
	End Try
End Sub

'trim
Sub TrimS(strValue As String) As String
	Return strValue.trim
End Sub

'lowecase
Sub LCaseS(Text As String) As String
	Return Text.ToLowerCase
End Sub

'inquotes
Sub InQuotes(sValue As String) As String
	Return QUOTE & sValue & QUOTE
End Sub

'propercase
Sub ProperCase(myStr As String) As String
	Try
		If myStr.trim.length = 0 Then Return ""
		Dim x As String
		Dim j, k As Int
		myStr = myStr.tolowercase
		x = myStr.ToUpperCase.CharAt(0)
		myStr = x & myStr.SubString2(1, myStr.Length)
		For j = 1 To myStr.Length
			k = myStr.IndexOf2(" ", j + 1)
			If k = -1 Then Exit
			x = myStr.ToUpperCase.CharAt(k + 1)
			myStr = myStr.SubString2(0, k + 1) & x & myStr.SubString2(k + 2, myStr.Length)
		Next
		Return myStr
	Catch
		Return myStr
	End Try
End Sub



'lowercase map keys
Sub MapKeysLowerCaseSingle(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		k = k.tolowercase
		nm.Put(k, v)
	Next
	Return nm
End Sub

'convert a list of map records to lowerase
Sub MapKeysLowerCaseList(lst As List) As List
	Dim nl As List
	nl.Initialize
	For Each rec As Map In lst
		rec = MapKeysLowerCaseSingle(rec)
		nl.Add(rec)
	Next
	Return nl
End Sub

'sort a map by key
Sub SortMap(m As Map) As Map
	Try
		Dim nm As Map
		nm.Initialize
		Dim lst As List
		lst.Initialize
		For Each strkey As String In m.Keys
			lst.Add(strkey)
		Next
		'sort the list keys
		lst.Sort(True)
		For Each strkey As String In lst
			Dim strvalue As Object = m.Get(strkey)
			nm.Put(strkey,strvalue)
		Next
		Return nm
	Catch
		Return m
	End Try
End Sub

'merge maps
Sub Merge(oldm As Map, newm As Map) As Map
	For Each k As String In newm.Keys
		Dim v As Object = newm.Get(k)
		oldm.Put(k, v)
	Next
	Return oldm
End Sub

'merge maps
Sub MergeMaps(oldm As Map, newm As Map) As Map
	Dim om As Map = CreateMap()
	For Each k As String In oldm.Keys
		Dim v As Object = oldm.Get(k)
		om.Put(k, v)
	Next
	'
	For Each k As String In newm.Keys
		Dim v As Object = newm.Get(k)
		om.Put(k, v)
	Next
	Return om
End Sub

'list to map
Sub List2MapSimple(lst As List, bSort As Boolean) As Map
	If bSort Then lst.Sort(True)
	Dim nm As Map = CreateMap()
	For Each k As String In lst
		nm.Put(k, k)	
	Next
	Return nm
End Sub


'convert a list to key value pairs map records
Sub List2Options(lst As List, keyName As String, valueName As String) As Map
	Dim recs As List
	recs.Initialize
	For Each k As String In lst
		Dim nrec As Map = CreateMap()
		nrec.Put(keyName, k)
		nrec.Put(valueName, k)
		recs.Add(nrec)
	Next
	Return recs
End Sub

'convert a list to key value pairs map records
Sub List2Map(lst As List, keyName As String, valueName As String) As Map
	Return List2Options(lst, keyName, valueName)
End Sub

'convert map to a list of maps with key and values
Sub Map2Options(m As Map, keyName As String, valueName As String) As List
	Dim recs As List
	recs.Initialize
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		Dim nrec As Map = CreateMap()
		nrec.Put(keyName, k)
		nrec.Put(valueName, v)
		recs.Add(nrec)
	Next
	Return recs
End Sub

'create a replica of a map
Sub MapClone(oldMap As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In oldMap.keys
		Dim v As Object = oldMap.Get(k)
		nm.Put(k, v)
	Next
	Return nm
End Sub

'create a replica of a map by swap key values
Sub MapCloneSwap(oldMap As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In oldMap.keys
		Dim v As Object = oldMap.Get(k)
		nm.Put(v, k)
	Next
	Return nm
End Sub

'update the background image for the page during runtime
Sub SetBackgroundImage(elid As String, url As String)
	elid = elid.ToLowerCase
	elid = elid.Replace("#","")
	BANano.GetElement($"#${elid}"$).SetStyle(BANano.ToJson(CreateMap("background-image": $"url('${url}')"$, "background-size": "100% 100%")))
End Sub

'set a property in a json string
Sub JSONSetProperty(sjson As String, updates As Map) As String
	Dim m As Map = BANano.FromJson(sjson)
	For Each k As String In updates.Keys
		Dim v As Object = updates.Get(k)
		m.Put(k, v)
	Next
	Dim sout As String = BANano.ToJson(m)
	Return sout
End Sub

'add break
Sub BR As String
	Return "<br>"
End Sub

'add hr
Sub HR As String
	Return "<hr>"
End Sub


#if javascript
function hexToRgb(hexCode) {
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/;
    var matches = patt.exec(hexCode);
    var rgb = "rgb(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + ")";
    return rgb;
}

function hexToRgba(hexCode, opacity) {
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/;
    var matches = patt.exec(hexCode);
    var rgb = "rgba(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + "," + opacity + ")";
    return rgb;
}
#End If

'make px
Sub MakePx(sValue As String) As String
	sValue = sValue.trim
	If sValue.EndsWith("%") Then
		Return sValue
	else If sValue.EndsWith("vm") Then
		Return sValue
	else If sValue.EndsWith("px") Then
		Return sValue
	else If sValue.EndsWith("cm") Then
		Return sValue
	else If sValue.EndsWith("mm") Then
		Return sValue
	else If sValue.EndsWith("in") Then
		Return sValue
	else If sValue.EndsWith("pt") Then
		Return sValue
	else If sValue.EndsWith("pc") Then
		Return sValue
	else If sValue.EndsWith("em") Then
		Return sValue
	else If sValue.EndsWith("ex") Then
		Return sValue
	else If sValue.EndsWith("ch") Then
		Return sValue
	else If sValue.EndsWith("rem") Then
		Return sValue
	else If sValue.EndsWith("vw") Then
		Return sValue
	else If sValue.EndsWith("vh") Then
		Return sValue
	else If sValue.EndsWith("vmin") Then
		Return sValue
	else If sValue.EndsWith("vmax") Then
		Return sValue
	else If sValue.EndsWith(";") Then
		Return sValue
	Else
		sValue = sValue.Replace("px","")
		sValue = $"${sValue}px"$
		If sValue = "px" Then sValue = ""
		Return sValue
	End If
End Sub


'save text to a file
Sub SaveText2File(content As String, fileName As String)
	Dim fc As List
	fc.Initialize
	fc.Add(content)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,fileName))
End Sub

'save binary array to file
Sub SaveBinaryArray2File(iUint8Array As Object, dbName As String)
	Dim fc As List
	fc.Initialize
	fc.Add(iUint8Array)
	'
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "application/octet-stream")))
	BANano.RunJavascriptMethod("saveAs",Array(blob, dbName))
End Sub

'count mv string
Sub MvCount(strMV As String, Delimiter As String) As Int
	Dim spValues() As String = BANano.Split(Delimiter,strMV)
	Return spValues.Length
End Sub

'audit trail diff between maps
Sub AuditTrail(oldM As Map, newM As Map) As Map
	Dim df As Map = CreateMap()
	For Each k As String In oldM.Keys
		Dim v As Object = oldM.Get(k)
		If newM.ContainsKey(k) Then
			Dim nv As Object = newM.Get(k)
			If v <> nv Then
				df.Put(k, nv)
			End If
		End If
	Next
	For Each k As String In newM.Keys
		Dim v As Object = newM.Get(k)
		If oldM.ContainsKey(k) Then
			Dim ov As Object = oldM.Get(k)
			If v <> ov Then
				df.Put(k, v)
			End If
		Else
			df.Put(k, v)	
		End If
	Next
	Return df
End Sub

'time now
Sub TimeNow() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "HH:mm"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'date now
Sub DateNow() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "yyyy-MM-dd"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'date time now
Sub DateTimeNow() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "yyyy-MM-dd HH:mm"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'date time seconds now
Sub Now() As String
	Dim lNow As Long
	Dim dt As String
	lNow = DateTime.Now
	DateTime.DateFormat = "yyyy-MM-dd HH:mm:ss"
	dt = DateTime.Date(lNow)
	Return dt
End Sub

'long date
Sub LongDateTimeToday() As String
	DateTime.DateFormat = "yyyy-MM-dd HH:mm"
	Dim dt As Long = DateTime.now
	DateTime.DateFormat = "dd/MM/yyyy, HH:mm"
	Return DateTime.Date(dt)
End Sub

'copy map using keys
Sub CopyMap(source As Map, keys As List) As Map
	Dim nm As Map = CreateMap()
	If keys.Get(0) = "*" Then
		For Each k As String In source.Keys
			Dim v As Object = source.Get(k)
			nm.Put(k, v)
		Next
	Else
		For Each k As String In keys
			Dim v As Object = source.Get(k)
			nm.Put(k, v)
		Next
	End If
	Return nm
End Sub

Sub CamelCase(idName As String) As String
	idName = idName.trim
	If idName = "" Then Return ""
	Dim ls As StringBuilder
	ls.Initialize
	Dim slen As Int = idName.Length
	Dim i As Int = 0
	For i = 0 To slen - 1
		Dim mout As String = idName.CharAt(i)
		If "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".IndexOf(mout) = -1 Then
			ls.Append("-")
		Else
			ls.Append(mout)
		End If
	Next
	Dim sname As String = ls.tostring
	sname = ProperSubName(sname, False)
	Return sname
End Sub

'get file parent path
Sub GetFileParentPath(Path As String) As String
	Dim Path1 As String
	Dim L As Int
	If Path = "/" Then
		Return "/"
	End If
	L = Path.LastIndexOf("/")
	If L = Path.Length - 1 Then
		'Strip the last slash
		Path1 = Path.SubString2(0,L)
	Else
		Path1 = Path
	End If
	L = Path.LastIndexOf("/")
	If L = 0 Then
		L = 1
	End If
	Return Path1.SubString2(0,L)
End Sub

'get file extension
Sub GetFileExt(FullPath As String) As String
	Return FullPath.SubString(FullPath.LastIndexOf(".")+1)
End Sub

'set prefix
Sub SetPrefix(prefix As String, target As Map) As Map
	Dim nm As Map = CreateMap()
	For Each mk As String In target.Keys
		Dim mv As Object = target.Get(mk)
		Dim mk1 As String = prefix & "_" & mk
		nm.Put(mk1,mv)
	Next
	Return nm
End Sub

'convert object to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'make all keys lowercase
Sub FixRecords(recs As List, trimThese As List, numThese As List, boolThese As List, dateThese As List, dblThese As List)
	Dim rTot As Int = recs.Size - 1
	Dim rCnt As Int
	For rCnt = 0 To rTot
		Dim rec As Map = recs.Get(rCnt)
		'make all keys lowercase
		Dim nrec As Map = CreateMap()
		For Each k As String In rec.keys
			Dim v As Object = rec.Get(k)
			k = k.ToLowerCase
			nrec.Put(k, v)
		Next
		If dateThese <> Null Then MakeDate(nrec,dateThese)
		If trimThese <> Null Then MakeTrim(nrec,trimThese)
		If numThese <> Null Then MakeInteger(nrec, numThese)
		If dblThese <> Null Then MakeDouble(nrec, dblThese)
		If boolThese <> Null Then MakeBoolean(nrec, boolThese)
		recs.Set(rCnt, nrec)	
	Next
End Sub

'make integers for map
Sub MakeInteger(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"")
			v = CStr(v)
			v = v.trim
			If v = "" Then v = "0"
			v = BANano.parseInt(v)
			m.Put(k, v)
		End If
	Next
End Sub

'make double for map
Sub MakeDouble(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"")
			v = CStr(v)
			v = v.trim
			If v = "" Then v = "0"
			v = BANano.parseFloat(v)
			m.Put(k, v)
		End If
	Next
End Sub

'make yes no for map
Sub MakeYesNo(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"No")
			v = CStr(v)
			v = v.trim
			Select Case v
				Case "","0", "false", "False",False,0,"no","No", "n", "NO"
					m.Put(k, "No")
				Case "1", "true", "True",True,1,"yes","Yes", "y", "YES"
					m.Put(k, "Yes")
			End Select
		End If
	Next
End Sub

'make boolean for map
Sub MakeBoolean(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"0")
			v = CStr(v)
			v = v.trim
			Select Case v
			Case "","0", "false", "False",False,0,"no","No"
				m.Put(k, False)
			Case "1", "true", "True",True,1,"yes","Yes"
				m.Put(k, True)
			End Select
		End If
	Next
End Sub

'trim valyes
Sub MakeTrim(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"")
			v = CStr(v)
			v = v.trim
			m.Put(k, v)
		End If
	Next
End Sub

'make lowercase
Sub MakeLowerCase(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		k = k.tolowercase
		nm.Put(k, v)
	Next
	Return nm
End Sub

'make date
Sub MakeDate(m As Map, xkeys As List)
	For Each k As String In xkeys
		If m.ContainsKey(k) Then
			Dim v As String = m.GetDefault(k,"")
			v = CStr(v)
			v = v.trim
			v = MvField(v,1," ")
			m.Put(k, v)
		End If
	Next
End Sub

'create a list
Sub CreateList(Delimiter As String, Values As String) As List
	Dim newLst As List
	newLst.Initialize
	If Values.length > 0 Then
		Dim spV As List = StrParse(Delimiter,Values)
		newLst.AddAll(spV)
	End If
	Return newLst
End Sub

'mvfield sub
Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String
	If sValue.Length = 0 Then Return ""
	Dim xPos As Int = sValue.IndexOf(Delimiter)
	If xPos = -1 Then Return sValue
	Dim mValues As List = StrParse(Delimiter,sValue)
	Dim tValues As Int
	tValues = mValues.size -1
	Select Case iPosition
		Case -1
			Return mValues.get(tValues)
		Case -2
			Return mValues.get(tValues - 1)
		Case -3
			Dim sb As StringBuilder
			sb.Initialize
			Dim startcnt As Int
			sb.Append(mValues.Get(1))
			For startcnt = 2 To tValues
				sb.Append(Delimiter)
				sb.Append(mValues.get(startcnt))
			Next
			Return sb.tostring
		Case Else
			iPosition = iPosition - 1
			If iPosition <= -1 Then
				Return mValues.get(tValues)
			End If
			If iPosition > tValues Then
				Return ""
			End If
			Return mValues.get(iPosition)
	End Select
End Sub


'Returns a random list value from a LIST 
Sub RandListValue(ListX As List) As Object
	ShuffleList(ListX)
	Return ListX.Get(Rnd(0, ListX.Size -1))
End Sub

'Returns a random list value from a LIST 
Sub RandListValue1(ListX As List) As Object
	Return ListX.Get(Rnd(0, ListX.Size -1))
End Sub

'remove from list
Sub RamoveFromList(listX As List, item As String)
	Dim lix As Int = listX.IndexOf(item)
	If lix >= 0 Then listX.RemoveAt(lix)
End Sub
'
'''set the font family
'Sub SetFontFamily(ff As Object)
'	body.SetStyle(BANano.ToJson(CreateMap("font-family": ff)))
'End Sub
'

'return position of a key in the map
private Sub MapKeySearch(nm As Map, s As String) As Int
	Dim mpos As Int = -1
	For Each strKey As String In nm.Keys
		mpos = mpos + 1
		If strKey.EqualsIgnoreCase(s) Then
			Return mpos
		End If
	Next
	Return mpos
End Sub

'0/1 to boolean
Sub ToBoolean(sValue As String) As Boolean
	Return BANano.iif(sValue = "0", False, True)
End Sub

'index of nth
Sub IndexOfNth(occur As Int, query As String, data As String) As Int
	Dim index As Int = data.IndexOf(query)
	Do While index > -1 And occur > 1
		index = data.IndexOf2(query, index + 1)
		occur = occur - 1
	Loop
	Return index
End Sub

'last mv value
Sub MvLast(delim As String, value As String) As String
	Dim tot As Int = MvCount(value,delim)
	Return MvField(value,tot,delim)
End Sub

'remove prefix
Sub RemPrefix(xvalue As String, delim As String) As String
	If xvalue.StartsWith(delim) Then
		xvalue = MidS(xvalue,delim.Length)
		Return xvalue
	End If
	Return xvalue
End Sub

'max of list
Sub MaxOfList(lst As List) As Int
	Dim maxcnt As Int = 0
	Dim curCnt As Int = 0
	For Each strID As String In lst
		curCnt = CInt(strID)
		If curCnt > maxcnt Then 
			maxcnt = curCnt
		End If
	Next
	Return maxcnt
End Sub

'max of map keys
Sub MaxOfMapKeys(lst As Map) As Int
	Dim maxcnt As Int = 0
	Dim curCnt As Int = 0
	For Each strID As String In lst.keys
		curCnt = CInt(strID)
		If curCnt > maxcnt Then 
			maxcnt = curCnt
		End If
	Next
	Return maxcnt
End Sub

'min of list
Sub MinOfList(lst As List) As Int
	'lets get the first value
	Dim fValue As String = lst.Get(0)
	Dim maxcnt As Int = CInt(fValue)
	Dim curCnt As Int = 0
	For Each strID As String In lst
		curCnt = CInt(strID)
		If curCnt < maxcnt Then 
			maxcnt = curCnt
		End If
	Next
	Return maxcnt
End Sub

'get record from json
Sub GetRecordFromJSONList(jsonValue As String, sPrimaryKey As String, sPrimaryValue As String) As Map
	Dim outList As Map
	outList.Initialize
	If sPrimaryKey.Length = 0 Then 
		Return outList
	End If
	Dim lItems As List = Json2List(jsonValue)
	For Each recMap As Map In lItems
		Dim strKey As String = recMap.GetDefault(sPrimaryKey.tolowercase,"")
		If strKey.EqualsIgnoreCase(sPrimaryValue) Then
			Return recMap
		End If
	Next
	Return outList
End Sub

'extract a particular key value from a list of maps in JSON format
Sub ExtraListFromJSONMaps(strJSON As String, Property As String) As List
	Property = Property.tolowercase
	Dim lstNew As List
	lstNew.initialize
	Dim lst As List = Json2List(strJSON)
	For Each m As Map In lst
		Dim sprop As String = m.GetDefault(Property,"")
		If sprop.Length > 0 Then 
			lstNew.add(sprop)
		End If
	Next
	Return lstNew
End Sub

'extract a particular key value from a list of maps
Sub ExtraPropertyFromListOfMaps(lst As List, Property As String) As List
	Property = Property.tolowercase
	Dim lstNew As List
	lstNew.initialize
	For Each m As Map In lst
		Dim sprop As String = m.GetDefault(Property,"")
		If sprop.Length > 0 Then 
			lstNew.add(sprop)
		End If
	Next
	Return lstNew
End Sub

'add map to json
Sub AddMap2Json(strJSON As String, m As Map) As String
	Dim lst As List = Json2List(strJSON)
	lst.Add(m)
	Dim sjson As String = List2Json(lst)
	Return sjson
End Sub

'list of maps extract keys
Sub ListOfMapsExtractKey(lst As List, skey As String) As List
	Dim nm As List
	nm.Initialize
	For Each oldm As Map In lst
		Dim svalue As Object = oldm.Get(skey.tolowercase)
		nm.Add(svalue)
	Next
	Return nm
End Sub

'list of maps extract property
Sub ListOfMapsGetProperty(lst As List, skey As String, bDuplicates As Boolean) As List
	Dim nm As List
	nm.Initialize
	For Each oldm As Map In lst
		Dim svalue As Object = oldm.Get(skey.tolowercase)
		If bDuplicates Then
			nm.Add(svalue)
		Else
			Dim oldPos As Int = nm.IndexOf(svalue)
			If oldPos = -1 Then
				nm.Add(svalue)
			End If
		End If	
	Next
	Return nm
End Sub

'sum value values
Sub SumMapValues(m As Map) As Double
	Dim itv As Double = 0
	For Each strKey As String In m.keys
		Dim intValue As Double = m.Get(strKey)
		itv = itv + intValue
	Next
	Return itv
End Sub

'list has a value
Sub ListHas(data As String, listObj As List) As Boolean
	Dim i As Int = listObj.IndexOf(data)
	Return (i > -1)
End Sub

'list does not have
Sub ListDoesNotHave(data As String, listObj As List) As Boolean
	Dim i As Boolean = listObj.IndexOf(data)
	Return (i = -1)
End Sub

'on the list
Sub OnList(searchList As List, searchValue As String) As Boolean
	'If searchList.IsInitialized = False Then Return False
	For Each strTable As String In searchList
		If strTable.EqualsIgnoreCase(searchValue) = True Then
			Return True
		End If
	Next
	Return False
End Sub

'extract a particular key value from a list of maps
Sub ExtraPropertyFromListOfMaps1(lst As List, Property As String) As Map
	Property = Property.tolowercase
	Dim lstNew As Map
	lstNew.initialize
	For Each m As Map In lst
		Dim sprop As String = m.GetDefault(Property,"")
		If sprop.Length > 0 Then lstNew.put(sprop,m)
	Next
	Return lstNew
End Sub

'add an item to a delimited string
Sub MvAdd(oldValue As String, delim As String, item As String) As String
	Dim lst As List = StrParse(delim, oldValue)
	lst.Add(item)
	oldValue = Join(delim, lst)
	Return oldValue
End Sub

'get the rest of the mv data from a particular position
Sub MvRest(delim As String, svalue As String, startPos As String) As String
	Dim spItems() As String = BANano.Split(delim, svalue)
	Dim lst As List
	lst.initialize
	Dim rCnt As Int = startPos-1
	Dim rTot As Int = spItems.Length - 1
	For rCnt = (startPos-1) To rTot
		lst.Add(spItems(rCnt))
	Next
	Return Join(delim,lst)
End Sub

'random password
Sub GenerateRandomPassword(numChars As Int, numbers As Boolean, lowercase As Boolean, uppercase As Boolean, symbols As Boolean) As String
	Dim uppercaseArray() As String = Array As String ("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
	Dim lowercaseArray() As String = Array As String ("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
	Dim numbersArray()   As String = Array As String ("0","1","2","3","4","5","6","7","8","9")
	Dim symbolsArray() As String = Array As String ("@","$","%","&","?","#","!","*","+","-",";","_")
  
	Dim charList As List
	charList.Initialize
  
	If numbers   Then charList.AddAll(numbersArray)
	If lowercase Then charList.AddAll(lowercaseArray)
	If uppercase Then charList.AddAll(uppercaseArray)
	If symbols   Then charList.AddAll(symbolsArray)

	Dim newPassword As StringBuilder
	newPassword.Initialize
  
	For i = 1 To numChars
		newPassword.Append(charList.Get(Rnd(0, charList.Size)))
	Next
	Return newPassword
End Sub

'after today
Sub AfterTodayRG(dVariance As Long) As String
	If dVariance <= 0 Then
		Return "./assets/green.png"
	else if dVariance > 0 Then
		Return "./assets/red.png"
	Else
		Return "./assets/gray.png"
	End If
End Sub

'priority
Sub PriorityRAG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/green.png"
		Case 1
			Return "./assets/orange.png"
		Case 2
			Return "./assets/red.png"
		Case Else
			Return "./assets/gray.png"
	End Select
End Sub

'rag
Sub RAG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/red.png"
		Case 1
			Return "./assets/orange.png"
		Case 2
			Return "./assets/green.png"
		Case Else
			Return "./assets/gray.png"
	End Select
End Sub

'gar
Sub GAR(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/green.png"
		Case 1
			Return "./assets/orange.png"
		Case 2
			Return "./assets/red.png"
		Case Else
			Return "./assets/gray.png"
	End Select
End Sub

'status
Sub StatusRAG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/red.png"
		Case 1
			Return "./assets/orange.png"
		Case 2
			Return "./assets/green.png"
		Case Else
			Return "./assets/gray.png"
	End Select
End Sub

'face
Sub FaceRAG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/sadface.png"
		Case 1
			Return "./assets/neutralface.png"
		Case 2
			Return "./assets/happyface.png"
		Case Else
			Return "./assets/sadface.png"
	End Select
End Sub

'face
Sub FaceRG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/sadface.png"
		Case 1
			Return "./assets/happyface.png"
		Case Else
			Return "./assets/sadface.png"
	End Select
End Sub

'face
Sub FaceRG1(dValue As Int) As String
	Select Case dValue
		Case 1
			Return "./assets/sadface.png"
		Case 0
			Return "./assets/happyface.png"
		Case Else
			Return "./assets/sadface.png"
	End Select
End Sub

'face
Sub FaceDone(dValue As Int) As String
	Select Case dValue
		Case 100
			Return "./assets/happyface.png"
		Case Else
			Return "./assets/sadface.png"
	End Select
End Sub

'progress
Sub ProgressStatus(dValue As Int) As Int
	Select Case dValue
		Case 100
			Return 1
		Case Else
			Return 0
	End Select
End Sub

'status
Sub StatusRG(dValue As Int) As String
	Select Case dValue
		Case 0
			Return "./assets/red.png"
		Case 1
			Return "./assets/green.png"
		Case Else
			Return "./assets/red.png"
	End Select
End Sub

'escapefield
Sub EscapeField(f As String) As String
	Return $"[${f}]"$
End Sub

'join list to multi value string
Sub JoinFields(delimiter As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	fld = EscapeField(fld)
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		fld = EscapeField(fld)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

'join list to multi value string with a quote
Sub JoinFields1(delimiter As String, sQuote As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	Dim xfld As String = $"${fld}"$
	xfld = sQuote & xfld & sQuote
	sb.Append(xfld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		Dim xfld As String = $"${fld}"$
		xfld = sQuote & xfld & sQuote
		sb.Append(delimiter).Append(xfld)
	Next
	Return sb.ToString
End Sub

'get options from key value pairs
Sub GetOptionsFromKV(delim As String, k As String, v As String) As Map
	k = CStr(k)
	v = CStr(v)
	Dim no As Map = CreateMap()
	Dim rkeys() As String = BANano.Split(delim, k)
	Dim rvalues() As String = BANano.Split(delim, v)
	'
	Dim rTot As Int = rkeys.Length - 1
	Dim vTot As Int = rvalues.Length - 1
	'
	If rTot <> vTot Then Return no
	'
	Dim rCnt As Int
	For rCnt = 0 To rTot
		Dim k1 As String = rkeys(rCnt)
		Dim v1 As String = rvalues(rCnt)
		no.put(k1, v1)
	Next
	Return no
End Sub


'unflatten as list of map objects using id, parentid, data attributes
Sub Unflatten(tdata As List, childname As String) As List
	'id, parentid, data
	Dim tree As List
	Dim mappedArr As Map
	'
	tree.Initialize
	mappedArr.Initialize
	'
	'create a temp map to hold everything with 'children' as 'data'
	For Each arrElem As Map In tdata
		Dim dID As String = arrElem.Get("id")
		'
		Dim cdata As List
		cdata.Initialize
		arrElem.Put(childname, cdata)
		'
		mappedArr.Put(dID, arrElem)
	Next
	'
	For Each dID As String In mappedArr.Keys
		Dim mappedElem As Map = mappedArr.Get(dID)
		Dim parentid As String = mappedElem.Get("parentid")
		' If the element is at the root level, add it to first level elements list.
		If parentid = "" Or parentid = "0" Then
			tree.Add(mappedElem)
		Else
			'If the element is not at the root level, add it to its parent list of children.
			Dim parentElem As Map = mappedArr.Get(parentid)
			Dim children As List = parentElem.Get(childname)
			children.Add(mappedElem)
			parentElem.Put(childname, children)
			mappedArr.Put(parentid, parentElem)
		End If
	Next
	'
	For Each mk As String In mappedArr.Keys
		Dim mi As Map = mappedArr.Get(mk)
		Dim childs As List = mi.Get(childname)
		If childs.Size = 0 Then mi.Remove(childname)
	Next
	Return tree
End Sub

'read as text
Sub readAsText(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
		
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsText"))
	Return promise
End Sub

'read as binary string
Sub readAsBinaryString(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
		
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsBinaryString"))
	Return promise
End Sub

'read as data url
Sub readAsDataURL(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
		
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsDataURL"))
	Return promise
End Sub

'read as array buffer
Sub readAsArrayBuffer(fr As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
		
	' calling a single upload
	promise.CallSub(Me, "ReadFile", Array(fr, "readAsArrayBuffer"))
	Return promise
End Sub

'read as data url
Sub readAsDataURLFromBlob(blb As Map) As BANanoPromise
	Dim promise As BANanoPromise 'ignore
		
	' calling a single upload
	promise.CallSub(Me, "ReadBlob", Array(blb))
	Return promise
End Sub


'read blob
private Sub ReadBlob(blb As Object)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", BANano.CallBack(Me, "OnLoad1", Array(event)))
	FileReader.SetField("onerror", BANano.CallBack(Me, "OnError1", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod("readAsBinaryString", blb)
End Sub

'read file
private Sub ReadFile(FileToRead As Object, MethodName As String)
	' make a filereader
	Dim FileReader As BANanoObject
	FileReader.Initialize2("FileReader", Null)
	' attach the file (to get the name later)
	FileReader.SetField("file", FileToRead)
	
	' make a callback for the onload event
	' an onload of a FileReader requires a 'event' param
	Dim event As Map
	FileReader.SetField("onload", BANano.CallBack(Me, "OnLoad", Array(event)))
	FileReader.SetField("onerror", BANano.CallBack(Me, "OnError", Array(event)))
	' start reading the DataURL
	FileReader.RunMethod(MethodName, FileToRead)
End Sub

private Sub OnLoad(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	' return to the then of the UploadFileAndGetDataURL
	BANano.ReturnThen(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.Getfield("result")))
End Sub

private Sub OnError(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim UploadedFile As BANanoObject = FileReader.GetField("file")
	Dim Abort As Boolean = False
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	
	BANano.ReturnElse(CreateMap("name": UploadedFile.GetField("name"), "result": FileReader.GetField("error"), "abort": Abort))
End Sub
'
private Sub OnLoad1(event As Map) As String 'IgnoreDeadCode
	' getting our file again (set in UploadFileAndGetDataURL)
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.Getfield("result")
	' return to the then of the UploadFileAndGetDataURL
	BANano.ReturnThen(result)
End Sub

private Sub OnError1(event As Map) As String 'IgnoreDeadCode
	Dim FileReader As BANanoObject = event.Get("target")
	Dim result As Object = FileReader.GetField("error")
	' uncomment this if you want to abort the whole operatio
	' Abort = true
	' FileReader.RunMethod("abort", Null)
	BANano.ReturnElse(result)
End Sub

'
'join list to multi value string with a quote
Sub JoinItems(delimiter As String, sQuote As String, lst As List) As String
	If lst.Size = 0 Then Return ""
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	Dim xfld As String = $"${fld}"$
	xfld = sQuote & xfld & sQuote
	sb.Append(xfld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		Dim xfld As String = $"${fld}"$
		xfld = sQuote & xfld & sQuote
		sb.Append(delimiter).Append(xfld)
	Next
	Return sb.ToString
End Sub




'format the text
Sub FormatText(sText As String) As String
	Dim RM As Map
	RM.Initialize
	RM.clear
	RM.Put("{U}", "<ins>")
	RM.Put("{/U}", "</ins>")
	RM.Put("¢","&cent;")
	RM.put("£","&pound;")
	RM.Put("{SUP}", "<sup>")
	RM.Put("{/SUP}", "</sup>")
	RM.Put("¥","&yen;")
	RM.Put("€","&euro;")
	RM.put("©","&copy;")
	RM.Put("®","&reg;")
	RM.put("{COPYRIGHT}", "&copy;")
	RM.Put("{TRADEMARK}", "&reg;")
	RM.Put("{POUND}","&pound;")
	RM.Put("{/B}", "</b>")
	RM.Put("{I}", "<i>")
	RM.Put("{YEN}","&yen;")
	RM.Put("{EURO}","&euro;")
	RM.Put("{CODE}","<code>")
	RM.Put("{/CODE}","</code>")
	RM.put("{COPYRIGHT}","&copy;")
	RM.Put("{REGISTERED}","&reg;")
	RM.Put("{B}", "<b>")
	RM.Put("{SMALL}", "<small>")
	RM.Put("{/SMALL}", "</small>")
	RM.Put("{EM}", "<em>")
	RM.Put("{/EM}", "</em>")
	RM.Put("{MARK}", "<mark>")
	RM.Put("{/MARK}", "</mark>")
	RM.Put("{/I}", "</i>")
	RM.Put("{SUB}", "<sub>")
	RM.Put("{/SUB}", "</sub>")
	RM.Put("{BR}", "<br/>")
	RM.Put("{WBR}","<wbr>")
	RM.Put("{STRONG}", "<strong>")
	RM.Put("{/STRONG}", "</strong>")
	RM.Put("{NBSP}", "&nbsp;")
	RM.Put("“","")
	RM.Put("”","")
	RM.Put("’","'")
	Dim kTot As Int = RM.Size - 1
	Dim kCnt As Int
	For kCnt = 0 To kTot
		Dim strValue As String = RM.GetKeyAt(kCnt)
		Dim strRep As String = RM.Get(strValue)
		sText = sText.Replace(strValue, strRep)
	Next
	sText = BANano.SF(sText)
	Return sText
End Sub
'
'hide an element
Sub HideElement(elID As String)
	Dim stylem As Map = CreateMap("visibility":"hidden")
	BANano.GetElement($"#${elID}"$).SetStyle(BANano.ToJson(stylem))
End Sub

'show an element
Sub ShowElement(elID As String)
	Dim stylem As Map = CreateMap("visibility":"visible")
	BANano.GetElement($"#${elID}"$).SetStyle(BANano.ToJson(stylem))
End Sub

'age
Sub Age(sdob As String) As Long
	DateTime.dateformat = "yyyy-MM-dd"
	Dim ldob As Long = DateTime.DateParse(sdob)
	Dim diff As Long = DateTime.now - ldob
	Dim tpd As Long = DateTime.TicksPerDay
	Dim p1 As Long = diff / tpd
	Dim p2 As Long = p1 / 365
	p2 = NumberFormat(p2,0,0)
	Return p2
End Sub

'get alpga numeric
Sub GetAlphaNumeric(value As String) As String
	value = CStr(value)
	Try
		value = value.Trim
		If value = "" Then value = ""
		Dim sout As String = ""
		Dim mout As String = ""
		Dim slen As Int = value.Length
		Dim i As Int = 0
		For i = 0 To slen - 1
			mout = value.CharAt(i)
			If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", mout) <> -1 Then
				sout = sout & mout
			End If
		Next
		Return sout
	Catch
		Return value
	End Try	
End Sub

'list of maps to strings
Sub ListOfMap2Strings(lst As List) As List
	Dim nl As List
	nl = NewList
	For Each m As Map In lst
		Dim nm As Map = Map2Strings(m)
		nl.Add(nm)
	Next
	Return nl
End Sub


'ensure record meets the form requirements for display
Sub Map2Strings(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.keys
		Dim v As Object = m.get(k)
		If BANano.IsNull(v) Then v = ""
		If BANano.IsUndefined(v) Then v = ""
		Dim vv As String = CStr(v)
		nm.put(k, vv)
	Next
	Return nm
End Sub

'convert data type to field type
Sub DataType2FieldType(fldtype As String) As String
	fldtype = fldtype.ToUpperCase
	If fldtype.Endswith(" UNSIGNED") Then
    	fldtype = fldtype.replace(" UNSIGNED", "")
		fldtype = fldtype.trim
	End If		
					
	If fldtype.EqualsIgnoreCase("integer") Then fldtype = "INT"
	If fldtype.EqualsIgnoreCase("long") Then fldtype = "INT"
	If fldtype.EqualsIgnoreCase("short") Then fldtype = "INT"
	If fldtype.EqualsIgnoreCase("datetime") Then fldtype = "TEXT"
	If fldtype.EqualsIgnoreCase("decimal") Then fldtype = "DOUBLE"
	If fldtype.EqualsIgnoreCase("float") Then fldtype = "DOUBLE"
	If fldtype.EqualsIgnoreCase("enumyn") Then fldtype = "TEXT"
	If fldtype.EqualsIgnoreCase("set") Then fldtype = "TEXT"
	If fldtype.EqualsIgnoreCase("bool") Then fldtype = "INT"
	If fldtype.EqualsIgnoreCase("fixed") Then fldtype = "DOUBLE"
	If fldtype.EqualsIgnoreCase("numeric") Then fldtype = "DOUBLE"
	If fldtype.EqualsIgnoreCase("dec") Then fldtype = "DOUBLE"
	If fldtype.EqualsIgnoreCase("boolean") Then fldtype = "INT"	
	If fldtype.EqualsIgnoreCase("bit") Then fldtype = "BLOB"	
	If fldtype.EqualsIgnoreCase("interval") Then fldtype = "TEXT"
	'
	If fldtype.endswith("INT") Then fldtype = "INT"
	If fldtype.endswith("CHAR") Then fldtype = "TEXT"
	If fldtype.endswith("TEXT") Then fldtype = "TEXT"
	If fldtype.endswith("REAL") Then fldtype = "DOUBLE"
	If fldtype.endswith("BIT") Then fldtype = "BLOB"
	If fldtype.endswith("BLOB") Then fldtype = "BLOB"
	If fldtype.EndsWith("BINARY") Then fldtype = "BLOB"
	If fldtype.EndsWith("SIGNED") Then fldtype = "INT"
	If fldtype.EndsWith("DOUBLE") Then fldtype = "DOUBLE"
	If fldtype.EndsWith("SERIAL") Then fldtype = "INT"	
	'
	If fldtype.StartsWith("YEAR") Then fldtype = "TEXT"
	If fldtype.StartsWith("DATE") Then fldtype = "TEXT"
	If fldtype.StartsWith("TIME") Then fldtype = "TEXT"
	If fldtype.StartsWith("YEAR") Then fldtype = "TEXT"
	If fldtype.StartsWith("CHARACTER") Then fldtype = "TEXT"
	'
	fldtype = fldtype.tolowercase
	fldtype = fldtype.replace("text", "string")
	fldtype = fldtype.replace("none", "string")
	Return fldtype
End Sub

'map remove prefix
Sub MapRemovePrefix(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.keys
		Dim v As String = m.Get(k)
		k = MvField(k,2,"_")
		nm.Put(k, v)
	Next
	Return nm
End Sub

'map remove keys
Sub MapRemoveKeys(m As Map, remkeys As List)
	For Each k As String In remkeys
		If m.ContainsKey(k) Then
			m.Remove(k)
		End If
	Next
End Sub


'set the background image style
Sub SetCoverImage(imgURL As String)
	If BANano.IsUndefined(imgURL) Or BANano.IsNull(imgURL) Then Return
	Dim opt As Map = CreateMap()
	If imgURL = "none" Then
		opt.Put("background-image", "none")
	Else
		opt.Put("background", $"url('${imgURL}')"$)
		opt.Put("position", "absolute")
		opt.Put("height", "100%")
		opt.Put("width", "100%")
		opt.Put("top", "0")
		opt.Put("bottom", "0")
		opt.Put("right", "0")
		opt.Put("left", "0")
		opt.Put("z-index", "0")
	End If
	Dim sjson As String = BANano.ToJson(opt)
	BANano.GetElement("#body").SetStyle(sjson)
End Sub


'get the result of the file upload
Sub GetUploadResult(fileName As String, rslt As Object) As String
	'get the result of the upload
	Dim sFileName As String
	Dim res As Map = BANano.fromjson(rslt)
	Dim sResult As String = res.get("status")
	Select Case sResult
		Case "success"
			sFileName = $"./assets/${fileName}"$
		Case "error"
			sFileName = ""
	End Select
	Return sFileName
End Sub

'on file change
Sub GetFileAsText(e As BANanoEvent) As BANanoPromise
	Dim promise As BANanoPromise
	Dim fileList As List = GetFileListFromTarget(e)
	'no file is selected
	If fileList.size = 0 Then Return promise
	'only process 1 file
	Dim fr As Map = fileList.get(0)
	'
	promise = readAsText(fr)
	Return promise
End Sub


'get the file name from file_change(e)
Sub GetUploadFileName(e As BANanoEvent) As String
	'get selected file(s)
	Dim fileList As List = GetFileListFromTarget(e)
	If fileList.size = 0 Then Return ""
	'get the file to upload
	Dim fileO As Map = fileList.Get(0)
	'
	Dim fo As FileObject = GetFileDetails(fileO)
	Dim sFileName As String = fo.FileName
	Return sFileName
End Sub

'get the file name from file_change(e)
Sub GetSelectedFileObject(e As BANanoEvent) As FileObject
	'get selected file(s)
	Dim fileList As List = GetFileListFromTarget(e)
	If fileList.size = 0 Then Return Null
	'get the file to upload
	Dim fileO As Map = fileList.Get(0)
	Dim fo As FileObject = GetFileDetails(fileO)
	Return fo
End Sub

'generate nano id - found in forum
Sub GenerateNanoID() As String
	' for IE
	Dim crypto As BANanoObject
	If Not(BANano.Window.GetField("crypto")) Then
		crypto = BANano.Window.GetField("msCrypto")
	Else
		crypto = BANano.Window.GetField("crypto")
	End If
	
	Dim nanoID As String
	Dim tmpInts As BANanoObject
	tmpInts.Initialize2("Uint8Array", 21)
	Dim Randoms(21) As Byte = crypto.RunMethod("getRandomValues", tmpInts)
	For i = 20 To 0 Step -1
		Dim n As BANanoObject = Bit.And(63, Randoms(i)) 'ignore
		If n < 36 Then
			nanoID = nanoID & n.RunMethod("toString", 36).Result
		else if n < 62 Then
			n = n - 26 'ignore
			Dim tmpN As String = n.RunMethod("toString", 36).Result
			nanoID = nanoID & tmpN.ToUpperCase
		Else if n < 63 Then
			nanoID = nanoID & "_"
		Else
			nanoID = nanoID & "-"
		End If
	Next
	Return nanoID
End Sub

'number to words
Sub NumberToWords(N As Long) As String
 	If N < 0 Then
		Return "Minus " & NumberToWordsPositive(-N)
	Else
		Return NumberToWordsPositive(N)    'including zero
	End If
End Sub

'number to words helper
private Sub NumberToWordsPositive(N As Long) As String
	If N = 0 Then
		Return "Zero"    'that gets rid of that pesky special case
	End If
 
	Dim GroupsOfThree(10) As Int
 
	Dim NumGroupsOfThree As Int = 0
 
	Do While N <> 0
		GroupsOfThree(NumGroupsOfThree) = N Mod 1000
		NumGroupsOfThree = NumGroupsOfThree + 1
     
		N = N / 1000
	Loop
 
	Dim Temp As String = ""
	For GroupOfThree = NumGroupsOfThree - 1 To 0 Step -1
		Dim ThisGroup As Int = GroupsOfThree(GroupOfThree)
     
		If ThisGroup <> 0 Then
			If Temp.Length <> 0 Then
				If GroupOfThree = 0 And ThisGroup < 100 Then
					Temp = Temp & " and "
				Else
					Temp = Temp & ", "
				End If
			End If
         
			Temp = Temp & NumberToWords1000(ThisGroup)
         
			If GroupOfThree <> 0 Then
				Temp = Temp & " " & ThousandWords(GroupOfThree)
			End If
		End If
	Next
 
	Return Temp

End Sub

'number to words helper
private Sub NumberToWords1000(N As Int) As String
 
	If N < 100 Then
		Return NumberToWords100(N)
	End If
 
	Dim Hundreds As String = UnitWords(N / 100) & " Hundred"    'Hundreds always non-blank since N < 100 already done
	Dim TensUnits As String = NumberToWords100(N Mod 100)    'TensUnits could be blank if digits are 00
 
	If TensUnits.Length = 0 Then
		Return Hundreds
	Else
		Return Hundreds & " and " & TensUnits
	End If
 
End Sub

'number to words helper
private Sub NumberToWords100(N As Int) As String 
	If N < 20 Then
		Return UnitWords(N)
	End If
 
	Dim Tens As String = TenWords(N / 10)    'Tens always non-blank since N < 20 already done
	Dim Units As String = UnitWords(N Mod 10)    'Units could be blank if digit is 0
 
	If Units.Length = 0 Then
		Return Tens
	Else
		Return Tens & "-" & Units
	End If
 
End Sub

'custom tag
Sub CustomTag(parentID As String, elTag As String, elID As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, elTag, elID,"")
	Return el
End Sub

'add an anchor
Sub Anchor(parentID As String, elid As String, text As String, href As String, target As String) As BANanoElement
	Dim opt As Map = CreateMap()
	If href <> "" Then opt.put("href", href)
	If target <> "" Then opt.put("target", target)
	Dim el As BANanoElement = AddElement1(parentID, "a", elid, text, opt,Null,"")
	Return el
End Sub

'add a mailto link
Sub MailTo(parentID As String, elid As String, text As String, emailaddress As String) As BANanoElement
	Dim opt As Map = CreateMap()
	opt.put("href", $"mailto:${emailaddress}"$)
	opt.put("target", "_target")
	opt.Put("rel", "noopener")
	Dim el As BANanoElement = AddElement1(parentID, "a", elid, text, opt,Null,"")
	Return el
End Sub

'add a download link
Sub Download(parentID As String, elid As String, text As String, href As String) As BANanoElement
	Dim opt As Map = CreateMap()
	opt.put("href", href)
	opt.Put("download", text)
	opt.Put("rel", "noopener")
	Dim el As BANanoElement = AddElement1(parentID, "a", elid, text, opt,Null,"")
	Return el
End Sub

'ordered list
Sub OL(parentID As String, elID As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "ol", elID, "")
	Return el
End Sub

'list item
Sub LI(parentID As String, elID As String, text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "li", elID, text)
	Return el
End Sub

'unordered list
Sub UL(parentID As String, elID As String, text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "ul", elID, text)
	Return el
End Sub

'h1
Sub H1(parentID As String, elID As String, text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h1", elID, text)
	Return el
End Sub

'h2
Sub H2(parentID As String, elID As String, text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h2", elID,text)
	Return el
End Sub

'h3
Sub H3(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h3", elID, text)
	Return el
End Sub

'h4
Sub H4(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h4", elID,text)
	Return el
End Sub

'h5
Sub H5(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h5", elID,text)
	Return el
End Sub

'h6
Sub H6(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "h6", elID,text)
	Return el
End Sub

'paragraph
Sub P(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "p", elID,text)
	Return el
End Sub

'span
Sub SPAN(parentID As String, elID As String, text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "span", elID,text)
	Return el
End Sub

'div
Sub DIV(parentID As String, elID As String,text As String) As BANanoElement
	Dim el As BANanoElement  = AddElement(parentID, "div", elID,text)
	Return el
End Sub

'get html from source and append it on target
Sub BANanoMoveHTML(source As String, target As String)
	source = source.tolowercase
	target = target.tolowercase
	Dim ssource As String = BANanoGetHTML(source)
	'append the html to the target
	BANano.GetElement($"#${target}"$).Append(ssource)
End Sub

'add html element
Sub AddHTMLElement(Module As Object, parentID As String, elID As String, tag As String, props As Map, styleProps As Map, classNames As String, Text As String)
	parentID = parentID.ToLowerCase
	elID = elID.tolowercase
	parentID = parentID.Replace("#","")
	elID = elID.Replace("#","")
	'
	Dim elIT As VueElement
	elIT.Initialize(Module, elID, tag)
	elIT.Append(Text)
	'
	If props <> Null Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If styleProps <> Null Then
		For Each k As String In styleProps.Keys
			Dim v As String = styleProps.get(k)
			elIT.SetAttr(k, v)
		Next
	End If
	If classNames <> "" Then
		elIT.AddClass(classNames)
	End If
	'add to the parent element
	Dim sElement As String = elIT.tostring
	BANano.GetElement($"#${parentID}"$).Append(sElement)
End Sub


'build the map to send an email to use in callinlinephp
Sub BuildPHPEmail(sfrom As String, sto As String, scc As String, ssubject As String, smsg As String) As Map
	Dim se As Map = CreateMap("from":sfrom, "to":sto, "cc":scc, "subject":ssubject, "msg":smsg)
	Return se
End Sub

'append element
Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement
	parent = parent.ToLowerCase
	parent = parent.Replace("#","")
	Dim item As String = $"<${tag} id="${id}"></${tag}>"$
	Dim el As BANanoElement = BANano.GetElement($"#${parent}"$).Append(item).Get($"#${id}"$)
	el.SetText(text)
	Return el
End Sub

'banano helper class
Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement
	parentID = parentID.ToLowerCase
	parentID = parentID.Replace("#","")
	id = id.tolowercase
	Dim el As BANanoElement = BANano.GetElement($"#${parentID}"$).Append($"<${tag} id="${id}"></${tag}>"$).Get($"#${id}"$)
	If BANano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			el.SetAttr(k, v)
		Next
	End If
	'
	If BANano.IsNull(styles) = False Then
		Dim strStyle As String = BANano.ToJson(styles)
		el.SetStyle(strStyle)
	End If
	'
	If classes <> "" Then el.AddClass(classes)
	el.settext(text)
	Return el
End Sub

'get the html part of a bananoelement
Sub BANanoGetHTMLOnly(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	Return xTemplate
End Sub

'remove items in a list containing this property value
Sub ListRemoveItemsWithProp(olst As List, prop As String, value As String) As List
	Dim nflds As List
	nflds.Initialize 
	For Each fldm As Map In olst
		Dim ofldname As String = fldm.Get(prop)
		If ofldname.EqualsIgnoreCase(value) Then
		Else
			nflds.Add(fldm)
		End If
	Next
	Return nflds
End Sub

'get sequences of the sizes to add
Sub ListGetSequences(lst As List) As List
	Dim l As List
	l.Initialize
	l.AddAll(lst)
	Dim l2 As List = FindSequences(l)
	Return l2
End Sub


'detect sequences within the list of sizes to add: thanks to JordiCP for this
private Sub FindSequences(srcList As List) As List
	Dim dstList As List
	dstList.initialize
	Dim currentSequencePair As sequencePair
	currentSequencePair.initialize
	currentSequencePair.value = srcList.Get(0)
	currentSequencePair.numTimes = 1
	For k = 1 To srcList.size - 1  '<-- edited!! (originally was 0)
		Dim newVal As Int=srcList.Get(k)
		If newVal=currentSequencePair.value Then
			currentSequencePair.numTimes = currentSequencePair.numTimes + 1
		Else
			dstList.Add(currentSequencePair)
			Dim currentSequencePair As sequencePair
			currentSequencePair.initialize
			currentSequencePair.value = newVal
			currentSequencePair.numTimes=1
		End If
	Next
	If currentSequencePair.numTimes > 0 Then 
		dstList.add(currentSequencePair)
	End If
	Return dstList
End Sub

'map 2 map
Sub Map2Map(readFrom As Map, putIn As Map, keys As List, bLower As Boolean)
	Dim value As Object
	For Each strKey As String In keys
		If bLower = True Then strKey = strKey.ToLowerCase
		If readFrom.ContainsKey(strKey) Then
			value = readFrom.Get(strKey)
			putIn.Put(strKey,value)
		End If
	Next
End Sub

'break a string at uppercase to have a space
Sub BreakAtUpperCase(st As String) As String
	If st.Length = 0 Then Return ""
	Dim k As Int
    Dim s As String
    Dim newst As String = st.CharAt(0)
    For i = 1 To st.Length - 1
        s = st.CharAt(i)
        k = Asc(s)
        If k>64 And k < 91 And st.CharAt(i-1) <> " " Then
            newst = newst & " " & s
        Else
            newst = newst & s
        End If
    Next
	Return newst
End Sub

'Returns the number of days that have passed between two dates.
'Pass the dates as a String
Sub DateNOD(CurrentDate As String, OtherDate As String) As Int
	Dim CurrDate, OthDate As Long
	CurrDate = DateTime.DateParse(CurrentDate)
	OthDate = DateTime.DateParse(OtherDate)
	Dim i As Int = (CurrDate - OthDate) / DateTime.TicksPerDay
	Return i
End Sub

'map lower keps
Sub MapLowerKeys(m As Map) As Map
	Dim nm As Map
	nm.initialize
	For Each strKey As String In m.Keys
		Dim objValue As Object = m.Get(strKey)
		If BANano.IsNull(objValue) Then objValue = ""
		nm.Put(strKey.ToLowerCase,objValue)
	Next
	Return nm
End Sub

'position of
Sub At(Text As String, sInStr As String) As Int
	Return Text.IndexOf(sInStr)
End Sub

'ltrim
Sub LTrim(Text As String) As String
	Do While LeftS(Text, 1) =" "
		Text = RightS(Text, Len(Text)-1)
	Loop
	Return Text
End Sub

'rtrim
Sub RTrim(Text As String) As String
	Do While RightS(Text, 1) =" "
		Text = LeftS(Text, Len(Text)-1)
	Loop
	Return Text
End Sub

'random
Sub RndChrGen(Howmany As Int, CT As Int) As String
	Dim a As String =""
	Dim l As Int
	Dim u As Int
	Dim ha As Int
	If CT = 0 Then
		L=65
		U=122
	Else If CT=1 Then
		L=65
		U=90
	Else
		L=97
		U=122
	End If
	For x=1 To Howmany
		Do While Len(a) < Howmany
			ha = Rnd(L, U)
			If ha>=91 And ha<=96 Then
			Else
				a = a & Chr(ha)
			End If
		Loop
	Next
	Return a
End Sub

'mid2
Sub Mid2(Text As String, istart As Int, xLength As Int) As String
	Dim x As String = Text.SubString2(istart - 1, istart + xLength - 1)
	Return x
End Sub

'mid
Sub MidS(Text As String, iStart As Int) As String
	Dim x As String = Text.SubString(iStart - 1)
	Return x
End Sub

'list remove item
Sub ListRemoveItem(lst As List, item As String)
	Dim lPos As Int = lst.IndexOf(item)
	If lPos <> -1 Then lst.RemoveAt(lPos)
End Sub

'mv remove duplicates
Sub MvRemoveDuplicates(sValue As String, Delim As String) As String
	Dim nMap As Map
	nMap.Initialize
	Dim spValues As List = StrParse(Delim,sValue)
	For Each strvalue As String In spValues
		If strvalue <> "" Then 
			nMap.Put(strvalue,"")
		End If
	Next
	Dim sb As StringBuilder
	sb.Initialize
	For Each strKey As String In nMap.Keys
		sb.Append(strKey).Append(Delim)
	Next
	Dim strOutput As String = sb.ToString
	strOutput = RemDelim(strOutput,Delim)
	Return strOutput
End Sub

'mv remove blanks
Sub MvRemoveBlanks(sValue As String, Delim As String) As String
	Dim nMap As Map
	nMap.Initialize
	Dim spValues As List = StrParse(Delim,sValue)
	For Each strvalue As String In spValues
		If strvalue.Trim.Length > 0 Then 
			nMap.Put(strvalue,"")
		End If
	Next
	'
	Dim sb As StringBuilder
	sb.Initialize
	For Each strKey As String In nMap.Keys
		sb.Append(strKey)
		sb.Append(Delim)
	Next
	Dim strOutput As String = sb.ToString
	strOutput = RemDelim(strOutput,Delim)
	Return strOutput
End Sub

'n to zero
Sub YesNo2ZeroOne(value As String) As String
	If value = "N" Or value = "" Then
		Return "0"
	Else
		Return "1"
	End If
End Sub

'zero to n
Sub ZeroOne2YN(value As String) As String
	If value = "0" Or value = "" Then
		Return "N"
	Else
		Return "Y"
	End If
End Sub

'left
Sub LeftS(Text As String, xLength As Long)As String
	If xLength > Text.Length Then 
		xLength = Text.Length
	End If
	Dim x As String = Text.SubString2(0, xLength)
	Return x
End Sub

'sort string array
Sub SortStringArray(sa() As String) As String()
	Dim lst As List
	Dim aTot As Int
	Dim aCnt As Int
	Dim aStr As String
	
	lst.Initialize
	lst.AddAll(sa)
	lst.SortCaseInsensitive(True)
	aTot = lst.Size - 1
	For aCnt = 0 To aTot
		aStr = lst.Get(aCnt)
		sa(aCnt) = aStr
	Next
	Return sa
End Sub

'get extension
Sub GetExtension(fil As String) As String
	Return MvField(fil,-1,".")
End Sub
'
'ends with
Sub EndsWithS(svalue As String, sfind As String) As Boolean
	Return svalue.EndsWith(sfind)
End Sub

'starts with
Sub StartsWithS(svalue As String, sfind As String) As Boolean
	Return svalue.StartsWith(sfind)
End Sub

'replace
Sub ReplaceS(Text As String, sFind As String, sReplaceWith As String) As String
	Return Text.Replace(sFind, sReplaceWith)
End Sub

'mvfrom array
Sub MvFromArray(varArry() As String, delim As String) As String
	Dim lTot As Int
	Dim lCnt As Int
	Dim str As StringBuilder
	str.Initialize 
	lTot = varArry.Length -1
	For lCnt = 0 To lTot
		str.Append(varArry(lCnt)).append(delim)
	Next
	Return str.tostring
End Sub

'map sorted keys
Sub SortedKeys(m As Map) As List
	Dim lst As List
	lst.Initialize
	For Each strkey As String In m.Keys
		lst.Add(strkey)
	Next
	'sort the list keys
	lst.Sort(True)
	Return lst
End Sub

' return a quoted string
Sub InQuotes1(sValue As String) As String
	sValue = RemDelim(sValue,QUOTE)
	sValue = RemPrefix(sValue,QUOTE)
	If sValue = QUOTE Then sValue = ""
	Return "$" & QUOTE & sValue & QUOTE & "$"
End Sub

' remove some unwanted characters from a string
Sub CleanValue(sValue As String) As String
	sValue = sValue.replace(" ","")
	sValue = sValue.Replace(".","")
	sValue = sValue.Replace("-","")
	sValue = sValue.Replace("&","")
	sValue = sValue.trim
	Return sValue
End Sub

'mv search
Sub MvSearch(delimiter As String, Mv As String, searchfor As String) As Boolean
	Mv = Mv.tolowercase
	searchfor = searchfor.ToLowerCase
	Dim spItems As List = StrParse(delimiter, Mv)
	Return OnList(spItems,searchfor)
End Sub

'mv pos
Sub MvPos(delimiter As String, mv As String, searchfor As String) As Int
	mv = mv.tolowercase
	searchfor = searchfor.ToLowerCase
	Dim spItems As List = StrParse(delimiter, mv)
	Return spItems.indexof(searchfor)
End Sub

'mv quote each
Sub MvQuoteEach(strMV As String, delim As String) As String
	strMV = strMV.Replace(QUOTE,"")
	Dim sp As List = StrParse(delim,strMV)
	Dim lst As List
	lst.Initialize
	For Each strItem As String In sp
		strItem = InQuotes(strItem)
		lst.add(strItem)
	Next
	Return Join(",", lst)
End Sub

'list single quote
Sub ListSingleQuote(lst As List)
	Dim lstTot As Int = lst.Size - 1
	Dim lstCnt As Int
	For lstCnt = 0 To lstTot
		Dim strItem As String = lst.Get(lstCnt)
		strItem = "'" & strItem & "'"
		lst.Set(lstCnt,strItem)
	Next
End Sub

'mv from keys
Sub MvFromKeys(lst As Map, Delim As String) As String
	Dim lStr As StringBuilder
	lStr.Initialize
	For Each strKey As String In lst.Keys
		lStr.Append(strKey).Append(Delim)
	Next
	lStr.Remove(lStr.Length-Delim.Length,lStr.Length)
	Return lStr.tostring
End Sub

'join array
Sub JoinArray(Delimiter As String, varArray() As String) As String
	Dim sb As StringBuilder
	sb.Initialize
	For Each strLine As String In varArray
		sb.Append(strLine).Append(Delimiter)
	Next
	If sb.ToString.EndsWith(Delimiter) Then
		sb.Remove(sb.Length-Delimiter.Length,sb.Length)
	End If
	Return sb.tostring
End Sub

'list search
Sub ListSearch(lst As List, searchFor As String) As Boolean
	searchFor = LCaseS(searchFor)
	For Each strItem As String In lst
		strItem = strItem.Trim.tolowercase
		If strItem = searchFor Then
			Return True
			Exit
		End If
	Next
	Return False
End Sub

'mvfrom list
Sub MvFromListSingleQuote(lst As List, Delim As String) As String
	Dim lTot As Int
	Dim lCnt As Int
	Dim lStr As StringBuilder
	lStr.Initialize
	lTot = lst.Size - 1
	For lCnt = 0 To lTot
		lStr.Append("'")
		lStr.Append(lst.Get(lCnt))
		lStr.Append("'")
		If lCnt <> lTot Then 
			lStr.Append(Delim)
		End If
	Next
	Return lStr.tostring
End Sub

'right
Sub RightS(Text As String, xLength As Long) As String
	If xLength > Text.Length Then
		xLength = Text.Length
	End If
	Dim x As String = Text.SubString(Text.Length - xLength)
	Return x
End Sub

'convert a string to a date
Sub DateIconv(sDate As String) As Long
	Dim lng As Long
	Dim OrigFormat As String=DateTime.DateFormat
	DateTime.DateFormat = "yyyy-MM-dd"
	DateTime.DateFormat = "HH:mm:ss"
	lng = DateTime.Dateparse(sDate)
	DateTime.DateFormat=OrigFormat
	Return lng
End Sub

'convert a date to a string
Sub DateOconv(lDate As Long, withTime As Boolean) As String
	Dim OrigFormat As String=DateTime.DateFormat
	If withTime Then
		DateTime.DateFormat="yyyy-MM-dd'T'HH:mm:ss"
	Else
		DateTime.DateFormat="yyyy-MM-dd"
	End If
	Dim MyDate As String =DateTime.Date(lDate)
	DateTime.DateFormat=OrigFormat
	Return MyDate
End Sub

'map property
Sub MapProperty2ListQuote(om As List,prop As String,def As String) As List
	Dim lst As List: lst.initialize
	Dim mtot As Int = om.Size - 1
	Dim mcnt As Int = 0
	For mcnt = 0 To mtot
		Dim omm As Map = om.Get(mcnt)
		Dim strvalue As String = omm.GetDefault(prop,def)
		lst.Add(QUOTE & strvalue & QUOTE)
	Next
	Return lst
End Sub

'Verify if an import is valid
Sub IsImportValid(m As Map, fields As List) As Boolean
	Dim vCnt As Int = 0
	If (fields.Size - 1) = 0 Then Return True
	For Each strField As String In fields
		Dim strValue As String = m.GetDefault(strField.ToLowerCase,"")
		If strValue.Length = 0 Then
			vCnt = vCnt + 1
		End If
	Next
	If vCnt = 0 Then
		Return True
	Else
		Return False
	End If
End Sub

'de duplicate map
Sub DeDuplicateMap(oldMap As Map) As Map
	Dim nMap As Map
	Dim strValue As Object
	nMap.Initialize
	For Each strKey As String In oldMap.Keys
		strValue = oldMap.Get(strKey)
		strKey = strKey.ToLowerCase
		nMap.Put(strKey,strValue)
	Next
	Return nMap
End Sub

'map values 2 list
Sub MapValues2List(m As Map) As List
	Dim mtot As Int = m.Size-1
	Dim mcnt As Int
	Dim nl As List
	nl.Initialize 
	For mcnt = 0 To mtot
		Dim v As Object = m.GetValueAt(mcnt)
		nl.Add(v)
	Next
	Return nl
End Sub

'map values to mv
Sub MapValues2MV(m As Map, delim As String, keys As List) As String
	Dim nl As List
	nl.Initialize
	For Each k As String In keys
		If m.ContainsKey(k) Then
			Dim v As Object = m.Get(k)
			nl.Add(v)
		End If
	Next
	Dim sout As String = Join(delim, nl)
	Return sout
End Sub

'args to object array
Sub Args2ObjectArray(m As List) As Object()
	Dim mtot As Int = m.size
	Dim mcnt As Int
	Dim obj(mtot) As Object
	For mcnt = 0 To mtot - 1
		Dim v As Object = m.Get(mcnt)
		obj(mcnt) = v
	Next
	Return obj
End Sub

'push if exists
Sub PushIfExist(nl As List, item As String) As List
	item = item.Trim
	If item <> "" Then 
		nl.Add(item)
	End If
	Return nl
End Sub

Sub ListOfMapsSortBy(lst As List, sortby As List) As List
	'will store the sort order as key and each records
	Dim mkeys As Map = CreateMap()
	For Each item As Map In lst
		'build the sort key
		Dim mkey As StringBuilder
		mkey.Initialize 
		For Each fld As String In sortby
			Dim v As String = item.Get(fld)
			mkey.Append(v)
		Next
		Dim thisKey As String = mkey.ToString
		thisKey = thisKey.ToUpperCase
		'store each record in its sort order key
		Dim items As List
		items.Initialize 
		If mkeys.ContainsKey(thisKey) Then
			items = mkeys.Get(thisKey)
		End If
		items.Add(item)
		mkeys.Put(thisKey, items)
	Next
	'we need to sort the keys
	Dim sortKeys As List
	sortKeys.Initialize 
	For Each k As String In mkeys.Keys
		sortKeys.Add(k)
	Next
	sortKeys.Sort(True)
	'we need to rebuild the lists
	Dim newlst As List
	newlst.Initialize 
	For Each k As String In sortKeys
		Dim oxl As List = mkeys.Get(k)
		For Each oxlm As Map In oxl
			newlst.Add(oxlm)
		Next
	Next
	Return newlst
End Sub

'copy a map
Sub MapCopy(sourceM As Map, sourceKeys As List) As Map
	Dim nm As Map = CreateMap()
	If sourceKeys.Get(0) = "*" Then
		For Each k As String In sourceM.Keys
			Dim v As Object = sourceM.Get(k)
			nm.Put(k, v)
		Next
	Else
		For Each k As String In sourceKeys
			Dim v As Object = sourceM.Get(k)
			nm.Put(k, v)
		Next
	End If
	Return nm
End Sub

'set default values to a map if they dont exist
Sub MapSetDefaults(orig As Map, defvalues As Map)
	For Each k As String In defvalues.keys
		Dim v As Object = defvalues.Get(k)
		If orig.ContainsKey(k) Then
			Dim o As Object = orig.Get(k)
			If BANano.IsNull(o) Or BANano.IsUndefined(o) Then
				orig.Put(k, v)
			End If
		Else
			orig.Put(k, v)
		End If
	Next
End Sub

'convert a list to a map
Sub ListToMap(lst As List) As Map
	Dim nm As Map = CreateMap()
	For Each item As String In lst
		nm.Put(item, item)
	Next
	Return nm
End Sub

'clean nulls 
Sub CleanNulls(m As Map) As Map
	Dim nm As Map = CreateMap()
	For Each k As String In m.Keys
		Dim v As String = m.GetDefault(k, "")
		v = CStr(v)
		v = v.Replace("null", "")
		v = v.Replace("undefined", "")
		nm.Put(k, v)
	Next
	Return nm
End Sub

'run a recursive method
Sub RunRecursive(data As Map, path As String) As Object
	Dim prevObj As BANanoObject = data
	Dim items As List = BANano.Split(".", path)
	Dim iTot As Int = items.Size
	Dim iCnt As Int
	'
	Dim strprev As String = ""
	Dim prtObj As BANanoObject
	Dim litem As String = items.Get(iTot - 1)
	'
	For iCnt = 1 To iTot - 1
		'get the previos path
		strprev = items.Get(iCnt - 1)
		'the parent object
		prtObj = prevObj.GetField(strprev)
		'this does not exist, return
		If BANano.IsUndefined(prtObj) Then
			Return Null
		Else
			prevObj = prtObj
		End If
	Next
	Dim res As Object = prevObj.RunMethod(litem, Null).Result
	If BANano.IsUndefined(res) Then
		res = Null
	End If
	Return res
End Sub

'get recursive data from a map
Sub GetRecursive(data As Map, path As String) As Object
	Dim prevObj As BANanoObject = data
	Dim items As List = BANano.Split(".", path)
	Dim iTot As Int = items.Size
	Dim iCnt As Int
	'
	Dim strprev As String = ""
	Dim prtObj As BANanoObject
	Dim litem As String = items.Get(iTot - 1)
	'
	For iCnt = 1 To iTot - 1
		'get the previos path
		strprev = items.Get(iCnt - 1)
		'the parent object
		prtObj = prevObj.GetField(strprev)
		'this does not exist, return
		If BANano.IsUndefined(prtObj) Then
			Return Null
		Else
			prevObj = prtObj
		End If
	Next
	Dim res As Object = prevObj.GetField(litem)
	If BANano.IsUndefined(res) Then
		res = Null
	End If
	Return res
End Sub

'put recursive object to a map
Sub PutRecursive(data As Map, path As String, value As Object)
	If BANano.IsNull(path) Or BANano.IsUndefined(path) Then
		path = ""
	End If
	If path = "" Then Return
	Dim prevObj As BANanoObject = data
	Dim items As List = BANano.Split(".", path)
	Dim iTot As Int = items.Size
	Dim iCnt As Int
	'
	Dim strprev As String = ""
	Dim prtObj As BANanoObject
	Dim litem As String = items.Get(iTot - 1)
	'
	For iCnt = 1 To iTot - 1
		'get the previos path
		strprev = items.Get(iCnt - 1)
		'the parent object
		prtObj = prevObj.GetField(strprev)
		'this does not exist, create it
		If BANano.IsUndefined(prtObj) Then
			Dim no As Object
			prevObj.SetField(strprev, no)
			prevObj = prevObj.GetField(strprev)
		Else
			prevObj = prtObj
		End If
	Next
	prevObj.SetField(litem, value)
End Sub

'make a single map of all records using a key
Sub ListOfMapsToSingleMap(source As List, prop As String) As Map
	Dim xmap As Map = CreateMap()
	For Each rec As Map In source
		Dim k As String = rec.Get(prop)
		xmap.Put(k, rec)
	Next
	Return xmap
End Sub

'convert a list of maps to key value pairs using id and text
Sub ListOfMapsToOptions(source As List, key As String, value As String) As List
	Dim xlist As List
	xlist.Initialize
	For Each rec As Map In source
		Dim k As String = rec.Get(key)
		Dim v As String = rec.get(value)
		Dim nr As Map = CreateMap()
		nr.Put("id", k)
		nr.Put("text", v)
		xlist.Add(nr)
	Next
	Return xlist
End Sub