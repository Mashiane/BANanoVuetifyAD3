B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private BANano As BANano 'ignore
	Public mName As String 'ignore
	Public mCallBack As Object 'ignore
	'
	Public jsString As BANanoObject
	Public jsNumber As BANanoObject
	Public jsBoolean As BANanoObject
	Public jsArray As BANanoObject
	Public jsObject As BANanoObject
	Public beforeEnter As BANanoObject
	Public checkBeforeEnter As Boolean
	
	Public data As Map
	Private opt As Map
	Public methods As Map
	Public computed As Map
	Public watches As Map
	Public filters As Map
	Public components As Map
	Public mprops As Map
	Private query As Map
	Public Template As VueElement
	Public Path As String = ""
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	Public Here As String = "#placeholder"
	Public meta As Map
		'
	Private dialogShow As String 
	Private dialogTitle As String
	Private dialogMessage As String
	Private dialogcanceltitle As String 
	Private dialogoktitle As String 
	Private dialogokshow As String 
	Private dialogcancelshow As String
	Private dialogwidth As String    'ignore
	Private dialogpersistent As String   'ignore
	Private dialogokcolor As String   'ignore
	Private dialogcancelcolor As String  'ignore
	Private dialogpromptlabel As String
	Private dialogpromptvalue As String
	Private dialogprompthint As String
	Private dialogpromptplaceholder As String
	Private dialogpromptshow As String
	Private dialogtexttype As String
	Public vuetify As VuetifyApp
	Public refs As BANanoObject
	Public This As BANanoObject
	Public ProgressLoaderName As String
	Private vHeartBeat As Long
End Sub

'start a heartbeat to save the user session
Sub StartHeartBeat(persist As Boolean, seconds As Long)
	If persist Then
		'request storage persistence
		Log("Requesting persistent storage...")
		Dim res As Boolean = BANano.Await(StoragePersistWait)		'ignore
		'what is the quota left
		Dim sq As StorageQuota = BANano.Await(StorageEstimateWait)
		Log("Remaining Storage Size: " & FormatFileSize(sq.remaining))
	End If
	Dim cb As BANanoObject = BANano.CallBack(Me, "savesession", Null)
	Dim resi As Int = BANano.Window.SetInterval(cb, seconds)
	vHeartBeat = resi
End Sub

'delete the session data for the page
Sub DeleteSession
	BANano.EmptyLocalStorage(mName)
End Sub

'request persist of storage
Sub StoragePersistWait As Boolean
	Dim ispersisted As BANanoPromise = BANano.Navigator.GetField("storage").RunMethod("persist", Null)
	Dim res As Boolean = BANano.Await(ispersisted)
	Return res
End Sub

'check storage estimate
Sub StorageEstimateWait As StorageQuota
	Dim obj As BANanoPromise = BANano.Navigator.GetField("storage").RunMethod("estimate", Null)
	Dim res As Map = BANano.Await(obj)
	Dim q As StorageQuota = StorageToQuota(res)
	Return q
End Sub

'get storage quota
private Sub StorageToQuota(m As Map) As StorageQuota
	Dim sq As StorageQuota
	sq.Initialize
	sq.quota = m.get("quota")
	sq.usage = m.get("usage")
	sq.percentUsed = (sq.usage / sq.quota) * 100
	sq.remaining = sq.quota - sq.usage
	Return sq
End Sub


'stop the heartbeat to save session state
Sub StopHeartBeat
	BANano.Window.ClearInterval(vHeartBeat)
End Sub

'save session data to cookie jar as long as the internet
'is active
Sub SaveSession
	Dim bonline As Boolean = BANano.CheckInternetConnectionWait
	If bonline Then
		Dim jsonData As String = BANano.ToJson(data)
		BANano.SetLocalStorage(mName, jsonData)
	End If
End Sub

'load session data from cookie using component name
Sub ReadSession
	Dim cookiejar As String = BANano.GetLocalStorage(mName)
	If BANano.IsNull(cookiejar) Then Return
	Dim cookiem As Map = BANano.FromJson(cookiejar)
	For Each k As String In cookiem.Keys
		Dim v As Object = cookiem.Get(k)
		SetData(k, v)
	Next
End Sub

'set as the start page
Sub StartPage
	Path = "/"
End Sub

'link the progress loader to the app
Sub FindProgressLoaderOn(appBar As VAppBar)
	ProgressLoaderName = appBar.ProgressLoader
End Sub

'show the progress loader
Sub PagePause
	SetData(ProgressLoaderName, True)
End Sub

'hide the appbar progress loader
Sub PageResume
	SetData(ProgressLoaderName, False)
End Sub

'get the file contents
Sub readAsText(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(BANanoShared.readAsText(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try	
End Sub

'get the file contents
Sub readAsBinaryString(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(BANanoShared.readAsBinaryString(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try	
End Sub

'get the file contents
Sub readAsDataURL(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(BANanoShared.readAsDataURL(fr))
		Dim sname As String = fd.Get("name")			'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try	
End Sub

'get the file contents
Sub readAsArrayBuffer(fr As Map) As String
	Try
		Dim fd As Map = BANano.Await(BANanoShared.readAsArrayBuffer(fr))
		Dim sname As String = fd.Get("name")		'ignore
		Dim sresult As String = fd.Get("result")
		Return sresult
	Catch
		Return ""
	End Try	
End Sub

'return ths vue instance
Sub Page As VueElement
	Return GetVueElement(mCallBack, Here)
End Sub

'get the date from date time picker
Sub FormatDateTime(elName As String, svModel As String)
	Dim res1 As String = GetData(elName & "date")
	Dim res2 As String = GetData(elName & "time")
	Dim xDate As String = ""
	If res1 <> "" Then
		xDate = NiceDate(res1)
	End If
	Dim res As String = $"${xDate} ${res2}"$
	res = res.Trim
	Dim resx As String = $"${svModel}fmt"$
	SetData(resx, res)
End Sub

'set formmated date
Sub FormatDate(svModel As String)
	Dim sDate As String = GetData(svModel)
	If sDate = "" Then Return
	Dim xDate As String = NiceDate(sDate)
	Dim res As String = $"${svModel}fmt"$
	SetData(res, xDate)
End Sub

'SetBeforeEnter
'<code>
'X.SetBeforeEnter("checkThis")
'Sub checkThis(boTo As Object, boFrom as Object, boNext as Object)
'log(boTo)
'log(boFrom)
'log(boNext)
'End Sub
'</code>
Sub SetBeforeEnter(MethodName As String)
	checkBeforeEnter = True
	MethodName = MethodName.tolowercase
	'
	Dim xto As Object
	Dim xfrom As Object
	Dim xnext As Object
	beforeEnter = BANano.CallBack(mCallBack, MethodName, Array(xto, xfrom, xnext))
End Sub

Sub AddContainer(contID As String, bFluid As Boolean) As VueElement
	Dim elx As VueElement = Page.AddContainer(contID, bFluid)
	Return elx
End Sub

'get a tab item
Sub GetTabItem(elID As String) As VueElement
	Dim tabID As String = $"tab${elID}"$
	tabID = tabID.tolowercase
	Dim ti As VueElement
	ti.Initialize(mCallBack, tabID, tabID)
	Return ti
End Sub

'Sub UseFlowy
'	If components.ContainsKey("flowy") = False Then
'		Dim FlowyVue As BANanoObject = BANano.Window.GetField("flowy-vue")
'		Dim boFlowy As BANanoObject = FlowyVue.GetField("default")
'		components.Put("flowy", boFlowy)
'	End If	
'End Sub	

'get a tab icon
Sub GetTabIcon(elID As String) As VueElement
	Dim tabID As String = $"${elID}icon"$
	tabID = tabID.tolowercase
	Dim ti As VueElement
	ti.Initialize(mCallBack, tabID, tabID)
	Return ti
End Sub

'click a reference
Sub Click(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'click a reference
Sub ClickFile(refID As String)
	refID = refID.tolowercase
	Dim fileRefs As BANanoObject = refs.GetField(refID)
	'get refs
	Dim xref As String = "$refs"
	Dim fr As BANanoObject = fileRefs.GetField(xref)
	Dim input As BANanoObject = fr.GetField("input")
	input.RunMethod("click", Null)
End Sub

'focus on a ref
Sub SetFocus(refID As String)
	Try
		refID = refID.tolowercase
		refs.GetField(refID).RunMethod("focus", Null)
	Catch
		Log(LastException)
	End Try
End Sub

'reset a form
Sub FormReset(formName As String)
	formName = formName.ToLowerCase
	refs.GetField(formName).runmethod("reset", Null)
End Sub

'resetValidation a form
Sub FormResetValidation(formName As String)
	formName = formName.ToLowerCase
	refs.GetField(formName).runmethod("resetValidation", Null)
End Sub

'validate a form
Sub FormValidate(formName As String) As Boolean
	formName = formName.ToLowerCase
	Dim b As Boolean = refs.GetField(formName).runmethod("validate", Null).Result
	Return b
End Sub

Sub DialogValidate(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormValidate(dialogContainerID)
End Sub

Sub DialogResetValidation(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormResetValidation(dialogContainerID)
End Sub

Sub DialogReset(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormReset(dialogContainerID)
End Sub


Sub Initialize (CallBack As Object, Name As String) As VueComponent
	mName = Name.tolowercase
	mCallBack = CallBack
	opt.Initialize
	data.Initialize
	mprops.Initialize
	methods.Initialize
	computed.Initialize
	watches.Initialize
	filters.Initialize
	query.Initialize
	components.initialize
	checkBeforeEnter = False
	Path = $"/${mName}"$
	'
	jsString.Initialize("String")
	jsNumber.Initialize("Number")
	jsBoolean.Initialize("Boolean")
	jsArray.Initialize("Array")
	jsObject.Initialize("Object")
	meta.Initialize 
	'
	'add the placeholder div to the app
	Template.Initialize(mCallBack, "placeholder", "placeholder")
	Template.Empty
	'
	dialogShow = $"${mName}show"$
	dialogTitle = $"${mName}caption"$
	dialogMessage = $"${mName}message"$
	dialogcanceltitle = $"${mName}canceltitle"$
	dialogoktitle = $"${mName}oktitle"$
	dialogokshow = $"${mName}okshow"$
	dialogcancelshow = $"${mName}cancelshow"$
	dialogwidth = $"${mName}width"$
	dialogpersistent = $"${mName}persistent"$
	dialogpromptlabel = $"${mName}promptlabel"$
	dialogpromptvalue = $"${mName}promptvalue"$
	dialogprompthint = $"${mName}prompthint"$
	dialogpromptplaceholder = $"${mName}promptplaceholder"$
	dialogpromptshow = $"${mName}promptshow"$
	dialogtexttype = $"${mName}type"$
	
	getPlaceHolderNode.empty
	getAppendHolderNode.empty
	'
	Dim x As Object, y As Object, z As Object, a As Object
	SetMethod(Me, "nicedate", Array(x))
	SetMethod(Me, "nicetime", Array(x))
	SetMethod(Me, "NiceTimeOnly", Array(x))
	SetMethod(Me, "nicemoney", Array(x))
	SetMethod(Me, "nicefilesize", Array(x))
	SetMethod(Me, "thousands", Array(x))
	SetMethod(Me, "nicemonth", Array(x))
	SetMethod(Me, "niceyear", Array(x))
	SetMethod(Me, "json2list", Array(x))
	SetMethod(Me, "getdateformat", Array(x, y))
	SetMethod(Me, "getmoneyformat", Array(x, y))
	SetMethod(Me, "getfilesize", Array(x))
	SetMethod(Me, "FormatDisplayDate", Array(x, y))
	SetMethod(Me, "FormatDisplayNumber", Array(x, y))
	SetMethod(Me, "FormatFileSize", Array(x))
	SetMethod(Me, "RagSmiley", Array(x, y, z, a))
	SetMethod(Me, "Reactions", Array(x))
	SetMethod(Me, "RagCircles", Array(x))
	SetMethod(Me, "GenderAvatar", Array(x))
	SetMethod(Me, "UpDown", Array(x))
	Return Me
End Sub

Sub OnComputed(k As String, methodName As String) 
	SetComputed(k, mCallBack, methodName, Null)
End Sub

Sub OnWatch(k As String, bImmediate As Boolean, bDeep As Boolean, methodName As String) 
	SetWatch(k, bImmediate, bDeep, mCallBack, methodName, Null) 
End Sub

'return an image path for a variance (up, down, same)
Public Sub UpDown(variance As String) As String		'ignore
	Select Case variance
	Case 1
		Return "./assets/up.png"
	Case 2
		Return "./assets/down.png"
	End Select
End Sub

'for computation
Sub RagSmiley(item As String) As String  'ignore
	Select Case item
	Case 1
		Return "./assets/sadface.png"
	Case 2
		Return "./assets/neutralface.png"	
	Case 3
		Return "./assets/happyface.png"
	End Select
End Sub

Sub Reactions(item As String) As String  'ignore
	Select Case item
	Case 1
		Return "./assets/like.png"
	Case 2
		Return "./assets/love.png"	
	Case 3
		Return "./assets/haha.png"
	Case 4
		Return "./assets/wow.png"
	Case 5
		Return "./assets/sad.png"
	Case 6
		Return "./assets/angry.png"
	End Select
End Sub

Public Sub RagCircles(dVariance As Int) As String   'ignore
    Select Case dVariance
    Case 1
		Return "./assets/red.png"
    Case 3
         Return "./assets/green.png"
    Case 2
		Return "./assets/orange.png"
    Case 4 
		Return "./assets/gray.png"
    End Select
End Sub	

Public Sub GenderAvatar(gender As String) As String		'ignore
    Select Case gender
    Case 1
		Return "./assets/female.png"
    Case 2
		Return "./assets/male.png"
    End Select
End Sub

Sub GetDefault(m As Map, prop As String, def As String) As String
	prop = prop.tolowercase
	Return m.getdefault(prop,def)
End Sub

Sub SetDefault(m As Map, prop As String, def As Object) As Map
	prop = prop.tolowercase
	m.put(prop,def)
	Return m
End Sub

Public Sub ExpenditureRAG(dVariance As Double) As String
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

Public Sub ExpectedRAG(dValue As Double) As String
    If dValue = 0 Then
            Return "./assets/orange.png"
    else if dValue > 0 Then
            Return "./assets/red.png"
    else if dValue < 0 Then
            Return "/assets/green.png"
    Else 
            Return "./assets/red.png"
    End If
End Sub

private Sub getdateformat(item As String, sFormat As String) As String		'ignoredeadcode
	Dim str As String = RunMethod("FormatDisplayDate", Array(item, sFormat)).Result
	Return str
End Sub


private Sub getmoneyformat(item As String, sformat As String) As String		'ignoredeadcode
	Dim str As String = RunMethod("FormatDisplayNumber", Array(item, sformat)).Result
	Return str
End Sub

private Sub getfilesize(item As String) As String							'ignoredeadcode
	Dim str As String = RunMethod("FormatFileSize", Array(item)).Result
	Return str
End Sub

Sub ComponentExists(compName As String) As Boolean
	If components.ContainsKey(compName) Then
		Return True
	Else
		Return False	
	End If
End Sub


'Sub UseVueDraggable
'	If components.ContainsKey("vuedraggable") = False Then
'		Dim vuedraggable As BANanoObject
'		vuedraggable.Initialize("vuedraggable")
'		components.put("draggable", vuedraggable)
'	End If
'End Sub

'Sub ImportKanBan(Vue As BANanoObject)
'	
'	Dim kanbanx As VueComponent
'	kanbanx.Initialize(mCallBack, "kanban")
'	kanbanx.AddProperty1("headertext", kanbanx.jsString, "Header", False)
'	kanbanx.AddProperty1("headercolor", kanbanx.jsString, "pink", False)
'	'
'	Dim m As Map
'	m.Initialize 
'	Dim l As List
'	l.Initialize 
'	'
'	kanbanx.AddProperty1("options", kanbanx.jsObject, m, False)
'	kanbanx.AddProperty1("list", kanbanx.jsArray, l, False)
'	kanbanx.AddProperty1("toolbardense", kanbanx.jsBoolean, False, False)
'	'add the html of the component
'	
'	Dim scontent As String = $"<v-col cols="6" sm="3" md="2">
'    <v-card>
'      <v-app-bar dark :color="headercolor" :dense="toolbardense">
'        <v-toolbar-side-icon />
'        <v-toolbar-title>{{ headertext }}</v-toolbar-title>
'        <v-spacer />
'        <v-btn icon>
'          <v-icon>mdi-dots-vertical</v-icon>
'        </v-btn>
'      </v-app-bar>
'
'      <draggable :list="list" :class="options.class" :group="options.group">
'        <template v-for="(item, index) in list">
'          <div :key="item.id">
'            <v-list-item avatar ripple>
'              <v-list-item-content>
'                <v-list-item-title>
'                  {{ item.title }} {{ index }}
'                </v-list-item-title>
'                <v-list-item-subtitle class="text--primary">
'                  {{ item.headline }}
'                </v-list-item-subtitle>
'                <v-list-item-subtitle>
'                  {{ item.subtitle }}
'                </v-list-item-subtitle>
'              </v-list-item-content>
'
'              <v-list-item-action>
'                <v-list-item-action-text>
'                  {{ item.action }}
'                </v-list-item-action-text>
'              </v-list-item-action>
'            </v-list-item>
'            <v-divider v-if="index + 1 < list.length" :key="index" />
'          </div>
'        </template>
'      </draggable>
'    </v-card>
'  </v-col>"$
'	kanbanx.AddHTML(scontent)
'	Import(Vue, kanbanx)
'End Sub


Sub ImportLeafLet
	'get the leaflet map from the windows object
	Dim Vue2Leaflet As BANanoObject = BANano.Window.GetField("Vue2Leaflet")
	Dim LMap As BANanoObject = Vue2Leaflet.GetField("LMap")
	Dim LTileLayer As BANanoObject = Vue2Leaflet.GetField("LTileLayer")
	Dim LMarker As BANanoObject = Vue2Leaflet.GetField("LMarker")
	Dim LPopup As BANanoObject = Vue2Leaflet.GetField("LPopup")
	Dim LTooltip As BANanoObject = Vue2Leaflet.GetField("LTooltip")
	Dim LPolyline As BANanoObject = Vue2Leaflet.GetField("LPolyline")
	Dim LCircle As BANanoObject = Vue2Leaflet.GetField("LCircle")
	Dim LPolygon As BANanoObject = Vue2Leaflet.GetField("LPolygon")
	Dim LRectangle As BANanoObject = Vue2Leaflet.GetField("LRectangle")
	Dim LGeoJson As BANanoObject = Vue2Leaflet.GetField("LGeoJson")
	Dim LIcon As BANanoObject = Vue2Leaflet.GetField("LIcon")
	'
	components.Put("l-map", LMap)
	components.Put("l-tile-layer", LTileLayer)
	components.Put("l-marker", LMarker)
	components.Put("l-tooltip", LTooltip)
	components.Put("l-popup", LPopup)
	components.Put("l-polyline", LPolyline)
	components.Put("l-circle", LCircle)
	components.Put("l-polygon", LPolygon)
	components.Put("l-rectangle", LRectangle)
	components.Put("l-geo-json", LGeoJson)
	components.Put("l-icon", LIcon)
End Sub

Sub json2list(content As String) As List
	Dim lcontent As List = BANano.FromJson(content)
	Return lcontent
End Sub

Sub AddMsgBox(bPersistent As Boolean, width As Int, okColor As String, cancelColor As String) As VueElement
	'**** this page needs to use its own dialog, lets add it
	Dim fbDialog As VueElement = vuetify.AddDialogAlertPrompt(mCallBack, Here, mName, bPersistent, width, okColor, cancelColor)
	BindVueElement(fbDialog)
	Return fbDialog
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

Sub GetVueElement(Module As Object, elID As String) As VueElement
	elID = CleanID(elID)
	If BANano.Exists(elID) Then
		Dim ve As VueElement
		ve.Initialize(Module, elID, elID)
		Return ve
	Else
		Return Null
	End If
End Sub

Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'update the title of the table
Sub TableSetTitle(tableName As String, Title As String)
	Dim titleX As String = $"${tableName}titletext"$
	SetData(titleX, Title)
End Sub

'return the dialog card title
Sub DialogCardTitle(dlgID As String) As VueElement
	Dim dialogTitleID As String = $"${dlgID}title"$
	Return GetVueElement(mCallBack, dialogTitleID)
End Sub

'return the dialog card container
Sub DialogContainer(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}container"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

'return the dialog card container
Sub DialogForm(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

Sub DialogUpdateTitle(dlgID As String, title As String)
	Dim dlgTitle As String = $"${dlgID}caption"$
	SetData(dlgTitle, title)
End Sub

Sub DialogCancelShowHide(eliD As String, b As Boolean)
	Dim dialogcancelshow As String = $"${eliD}cancelshow"$
	SetData(dialogcancelshow, b)
	SetData($"${eliD}key"$, DateTime.now)
End Sub

Sub DialogOkShowHide(elID As String, b As Boolean)
	Dim dialogokshow As String = $"${elID}okshow"$
	SetData(dialogokshow, b)
	SetData($"${elID}key"$, DateTime.now)
End Sub

'return the dialog card title
Sub DialogActions(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}actions"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

Sub DialogOK(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}ok"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

'return the dialog card title
Sub DialogCancel(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}cancel"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub



'show confirm dialog
Sub ShowConfirm(process As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, Message)
	SetData(dialogoktitle, ConfirmText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptshow, False)
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	Try
		item = "" & item
		If item = "" Then Return ""
		If sFormat = "" Then sFormat = "YYYY-MM-DD"
		If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
		Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
		Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
		If sDate = "Invalid Date" Then Return ""
		Return sDate
	Catch
		Log(LastException)
		Return ""
	End Try		
End Sub

Sub DateDisplayFormat(vmodel As String, sformat As String) As String   'IgnoreDeadCode
	Try
		'get the saved model
		Dim rdate As String = GetData(vmodel)
		If rdate = "" Then Return ""
		Dim str As String = RunMethod("FormatDisplayDate", Array(rdate, sformat)).Result
		Return str
	Catch
		Return ""
	End Try
End Sub

Sub YYYYMMDD(sdate As String) As String
	Return FormatDisplayDate(sdate, "YYYY-MM-DD")
End Sub

Sub YYYYMM(sdate As String) As String
	Return FormatDisplayDate(sdate, "YYYY-MM")
End Sub

Sub NiceMonth(sdate As String) As String			'ignoredeadcode
	Return FormatDisplayDate(sdate, "MMMM, YYYY")
End Sub

Sub NiceYear(sdate As String) As String			'ignoredeadcode
	Return FormatDisplayDate(sdate, "YYYY")
End Sub

'return a date with day, month year name
Sub NiceDate(sdate As String) As String				'ignoredeadcode
	Return FormatDisplayDate(sdate, "ddd, DD MMM YYYY")
End Sub

Sub NiceTime(stime As String) As String				'ignoredeadcode
	Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm:ss")
End Sub

Sub NiceTimeOnly(stime As String) As String				'ignoredeadcode
	Return FormatDisplayDate(stime, "HH:mm")
End Sub

Sub NiceMoney(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0.00")
End Sub

Sub Thousands(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0")
End Sub


Sub NiceFileSize(fsx As String) As String				'ignoredeadcode
	Return FormatFileSize(fsx)
End Sub

Sub FormatFileSize(Bytes As Float) As String			'ignoredeadcode		'ignoredeadcode
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

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	item = BANanoShared.Val(item)
	item = BANano.parseFloat(item)
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

Sub ShowAlert(process As String, title As String, Message As String, OkTitle As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogShow, True)
	SetData(dialogTitle, title)
	SetData(dialogMessage, Message)
	SetData(dialogoktitle, OkTitle)
	SetData(dialogokshow, True)
	SetData(dialogcancelshow, False)
	SetData(dialogpromptshow, False)
End Sub

''remove an item where ignoringCase
Sub SetDataRemoveWhere1(dsname As String, prop As String, value As String)
	dsname = dsname.tolowercase
	Dim cl As List = GetData(dsname)
	'
	Dim nflds As List
	nflds.Initialize
	For Each fldm As Map In cl
		Dim ofldname As String = fldm.Get(prop)
		If ofldname.EqualsIgnoreCase(value) Then
		Else
			nflds.Add(fldm)
		End If
	Next
	SetData(dsname, nflds)
End Sub


'get the placeholder node
Sub getPlaceHolderNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#placeholder")
	Return el
End Sub

'get the appendholder node
Sub getAppendHolderNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#appendholder")
	Return el
End Sub


'get the template node
Sub getTemplateNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#apptemplate")
	Return el
End Sub

'show confirm dialog
Sub ShowPrompt(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, "")
	SetData(dialogoktitle, OkText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptlabel, Label)
	SetData(dialogpromptplaceholder, Placeholder)
	SetData(dialogprompthint, Hint)
	SetData(dialogpromptvalue, DefaultValue)
	SetData(dialogpromptshow, True)
	SetData(dialogtexttype, "text")
End Sub

'show confirm dialog
Sub ShowPrompt1(process As String, InputType As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, "")
	SetData(dialogoktitle, OkText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptlabel, Label)
	SetData(dialogpromptplaceholder, Placeholder)
	SetData(dialogprompthint, Hint)
	SetData(dialogpromptvalue, DefaultValue)
	SetData(dialogpromptshow, True)
	SetData(dialogtexttype, InputType)
End Sub

'get prompt value
Sub getPromptValue As String
	Dim sapppromptvalue As String = GetData(dialogpromptvalue)
	sapppromptvalue = sapppromptvalue.trim
	Return sapppromptvalue
End Sub

'query string for router path
Sub AddQuery(k As String, v As String)
	query.Put(k, v)
End Sub

''bind VueExcel
'Sub BindVueExcel(el As VueExcel)
'	Dim mbindings As Map = el.bindings
'	Dim mmethods As Map = el.methods
'	'apply the binding for the control
'	For Each k As String In mbindings.Keys
'		Dim v As Object = mbindings.Get(k)
'		Select Case k
'		Case "key"
'		Case Else
'			SetData(k, v)
'		End Select
'	Next
'	'apply the events
'	For Each k As String In mmethods.Keys
'		Dim cb As BANanoObject = mmethods.Get(k)
'		SetCallBack(k, cb)
'	Next
'End Sub

'bind VueFlowy
Sub BindVueFlowy(el As VueFlowy)
	Dim mbindings As Map = el.VElement.bindings
	Dim mmethods As Map = el.velement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub



''bind VueSimpleWizard
'Sub BindVueSimpleWizard(el As VueSimpleWizard)
'	Dim mbindings As Map = el.bindings
'	Dim mmethods As Map = el.methods
'	'apply the binding for the control
'	For Each k As String In mbindings.Keys
'		Dim v As Object = mbindings.Get(k)
'		Select Case k
'		Case "key"
'		Case Else
'			SetData(k, v)
'		End Select
'	Next
'	'apply the events
'	For Each k As String In mmethods.Keys
'		Dim cb As BANanoObject = mmethods.Get(k)
'		SetCallBack(k, cb)
'	Next
'End Sub


'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'add html of component to app and this binds events and states
Sub BindInfoBox(el As VueInfoBox)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'add html of component to app and this binds events and states
Sub BindVueTable(el As VueTable)
	el.Refresh
	Dim mbindings As Map = el.VElement.bindings
	Dim mmethods As Map = el.VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
	BindVueElement(el.VElement)
End Sub

Sub BindVueGMap(el As VueGMap)
	Dim mbindings As Map = el.VElement.bindings
	Dim mmethods As Map = el.VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub
'
'Sub BindVueGCharts(el As VueGCharts)
'	BindVueElement(el.GChart)
'End Sub

Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

Sub NewList1(itms As List) As List
	Dim elx As List
	elx.Initialize
	elx.AddAll(itms)
	Return elx
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

'import a component, the module should have the Initilize method without parameters
Sub Import(Vue As BANanoObject, comp As VueComponent)
	Dim compname As String = comp.mName
	compname = compname.tolowercase
	If compname = "" Then
		Log("Import: Please specify the name of the Component!")
	End If
	comp.AppendPlaceHolder
	If components.ContainsKey(compname) = True Then Return
	Dim compx As BANanoObject = Vue.RunMethod("component", Array(compname, comp.component))
	comp.This = compx
	'Dim compx As Map = comp.Component
	components.Put(compname, compx)
End Sub

Sub AddElement1(elTag As String, elID As String, elText As String, elprops As Map, mstyles As Map, lclasses As List, loose As List)
	Template.AddElement(elID, elTag, elprops, mstyles, lclasses, loose, elText)
End Sub

Sub AddCustomElement(eltag As String, elid As String, elprops As Map, eltext As String)
	Template.AddElement(elid, eltag, elprops, Null, Null, Null, eltext)
End Sub

'import a bananoobject component
Sub ImportBO(compName As String, comp As BANanoObject)
	If components.ContainsKey(compName) = True Then Return
	components.Put(compName, comp)
End Sub

Sub ImportVJSF
	If components.ContainsKey("v-jsf") = False Then
		Dim boVJsf As BANanoObject
		boVJsf.Initialize("VJsf")
		Dim boVJsf As BANanoObject = boVJsf.GetField("default")
		components.Put("v-jsf", boVJsf)
	End If	
End Sub	

Sub UsePrism
	If components.ContainsKey("prism") = False Then
		Dim PC As BANanoObject
		PC.Initialize("PrismComponent")
		components.Put("prism", PC)
	End If
End Sub

'add an element inside the placeholder
Sub AddElement(ve As VueElement)
	Template.Append(ve.ToString)
	BindVueElement(ve)
End Sub

'add an element inside the placeholder
Sub AddHTML(html As String)
	Template.Append(html)
End Sub

Sub OnMounted(methodName As String, args As List)
	SetMounted(mCallBack, methodName, args)
End Sub

'set mounted
Sub SetMounted(Module As Object,methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetMounted: ${methodName} not found!"$)
		Return Me
	End If
	Dim mounted As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("mounted", mounted)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set updated
Sub OnUpdated(methodName As String, args As List)
	SetUpdated(mCallBack, methodName, args)
End Sub

'set updated
Sub SetUpdated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetUpdated: ${methodName} not found!"$)
		Return Me
	End If
	Dim updated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("updated", updated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub OnBeforeMount(methodName As String, args As List)
	SetBeforeMount(mCallBack, methodName, args)
End Sub

'set beforemount
Sub SetBeforeMount(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetBeforeMount: ${methodName} not found!"$)
		Return Me
	End If
	Dim BeforeMount As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeMount", BeforeMount)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set beforeupdate
Sub OnBeforeUpdate(methodName As String, args As List)
	SetBeforeUpdate(mCallBack, methodName, args)
End Sub

'set beforeupdate
Sub SetBeforeUpdate(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetBeforeUpdate: ${methodName} not found!"$)
		Return Me
	End If
	Dim beforeUpdate As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeUpdate", beforeUpdate)
	SetMethod(Module, methodName,args)
	Return Me
End Sub

'set before destroy
Sub OnBeforeDestroy(methodName As String, args As List)
	SetBeforeDestroy(mCallBack, methodName, args)
End Sub

'set before destroy
Sub SetBeforeDestroy(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetBeforeDestroy: ${methodName} not found!"$)
		Return Me
	End If
	Dim beforeDestroy As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeDestroy", beforeDestroy)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub OnBeforeCreate(methodName As String, args As List)
	SetBeforeCreate(mCallBack, methodName, args)
End Sub

'set before created
Sub SetBeforeCreate(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetBeforeCreate: ${methodName} not found!"$)
		Return Me
	End If
	Dim beforeCreate As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeCreate", beforeCreate)
	SetMethod(Module, methodName, args)
	Return Me
End Sub


Sub OnCreated(methodName As String, args As List)
	SetCreated(mCallBack, methodName, args)
End Sub

'set created
Sub SetCreated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetCreated: ${methodName} not found!"$)
		Return Me
	End If
	Dim created As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("created", created)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub OnDestroyed(methodName As String, args As List)
	SetDestroyed(mCallBack, methodName, args)
End Sub

'set destroyed
Sub SetDestroyed(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetDestroyed: ${methodName} not found!"$)
		Return Me
	End If
	Dim destroyed As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("destroyed", destroyed)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub OnActivated(methodName As String, args As List)
	SetActivated(mCallBack, methodName, args)
End Sub

'set activated
Sub SetActivated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetActivated: ${methodName} not found!"$)
		Return Me
	End If
	Dim activated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("activated", activated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub AddPropertyArray(propName As String, propDefault As Object, propRequired As Boolean)
	AddProperty1(propName, jsArray, propDefault, propRequired)
End Sub

Sub AddPropertyNumber(propName As String, propDefault As Object, propRequired As Boolean)
	AddProperty1(propName, jsNumber, propDefault, propRequired)
End Sub

Sub AddPropertyBoolean(propName As String, propDefault As Object, propRequired As Boolean)
	AddProperty1(propName, jsBoolean, propDefault, propRequired)
End Sub

Sub AddPropertyObject(propName As String, propDefault As Object, propRequired As Boolean)
	AddProperty1(propName, jsObject, propDefault, propRequired)
End Sub

Sub AddPropertyString(propName As String, propDefault As Object, propRequired As Boolean)
	AddProperty1(propName, jsString, propDefault, propRequired)
End Sub

Sub AddProperty1(propName As String, propType As BANanoObject, propDefault As Object, propRequired As Boolean)
	Dim mprop As Map = CreateMap()
	If BANano.IsNull(propType) = False Then mprop.Put("type", propType)
	If BANano.IsNull(propDefault) = False Then mprop.Put("default", propDefault)
	If BANano.IsNull(propRequired) = False Then mprop.Put("required", propRequired)
	mprops.Put(propName, mprop)
End Sub

Sub AddRouteProperty(propName As String, propValue As String)
	mprops.Put(propName, propValue)
End Sub

Sub OnDeActivated(methodName As String, args As List)
	SetDeActivated(mCallBack, methodName, args)
End Sub

'set deactivated
Sub SetDeActivated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then 
		Log($"${mName}.SetDeActivated: ${methodName} not found!"$)
		Return Me
	End If
	Dim deactivated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("deactivated", deactivated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set the path for router
Sub SetPath(sPath As String) As VueComponent
	Path = sPath
	Return Me
End Sub

' returns the tag id
Sub getID() As String
	Return mName
End Sub

'change the id of the element, ONLY execute this after a manual Initialize
Sub setID(varText As String) As VueComponent
	mName = varText
	Return Me
End Sub

Sub SetDataFreeze(prop As String, xvalue As Object) As VueComponent
	Dim obj As BANanoObject
	obj.Initialize("Object")
	Dim res As List = obj.RunMethod("freeze", Array(xvalue))
	SetData(prop, res)
	Return Me
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then Return
	prop = CStr(prop)
	prop = prop.Trim
	prop = prop.ToLowerCase
	If prop = "" Then Return
	BANanoShared.PutRecursive(data, prop, value)
End Sub


'update the state
'Sub SetData1(prop As String, xvalue As Object) As VueComponent
'	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
'		prop = ""
'	End If
'	If prop = "" Then Return Me
'	prop = prop.tolowercase
'	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
'	If dotPos >= 0 Then
'		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
'		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
'		Dim oEL As Map
'		If data.ContainsKey(pEL) Then
'			oEL = data.Get(pEL)
'		Else
'			oEL.Initialize
'		End If	
'		oEL.Put(cEL, xvalue)
'		data.Put(pEL, oEL) 
'	Else
'		data.put(prop, xvalue)
'	End If
'	Return Me
'End Sub

'add item at end of the list
Sub SetDataPush(listName As String, item As Object)
	listName = listName.ToLowerCase
	Dim dat As BANanoObject = data
	dat.GetField(listName).RunMethod("push", item)
End Sub

'remove an item with
Sub SetDataRemoveWhere(listname As String, whereMap As Map)
	'find the item
	Dim recpos As Int = GetDataPositionWhere(listname, whereMap)
	If recpos = -1 Then Return
	SetDataSpliceRemove(listname, recpos, 1)
End Sub

'get data where
Sub GetDataWhere(lstName As String, whereMap As Map) As Map
	Dim rm As Map = CreateMap()
	'find the item
	Dim recpos As Int = GetDataPositionWhere(lstName, whereMap)
	If recpos = -1 Then Return rm
	Dim recs As List = GetData(lstName)
	Dim rec As Map = recs.Get(recpos)
	Return rec
End Sub

Sub SetDataRemoveAtPosition(lstName As String, pos As Int)
	SetDataSpliceRemove(lstName, pos, 1)
End Sub

'insert an item at a position
Sub SetDataInsert(lstname As String, pos As Int, obj As Object)
	SetDataSplice(lstname, pos, 0, obj)
End Sub

'splice an array, add item at a position
Sub SetDataSplice(lstname As String, pos As Int, removeHowMany As Int, obj As Object)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany, obj))
End Sub

'splice an array, remove an item at a position
Sub SetDataSpliceRemove(lstname As String, pos As Int, removeHowMany As Int)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany))
End Sub

'slice an array
Sub GetDataSlice(lstname As String, startPos As Int) As List
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	Dim lst As List = dat.GetField(lstname).RunMethod("slice", Array(startPos)).Result
	Return lst
End Sub

'get the data at the position
Sub GetDataAtPosition(lstName As String, pos As Int) As Map
	lstName = lstName.tolowercase
	Dim res As List = data.Get(lstName)
	Dim out As Map = res.Get(pos)
	Return out
End Sub

'return the position of the data with these properties
Sub GetDataPositionWhere(lstName As String, props As Map) As Int
	lstName = lstName.tolowercase
	Dim res As List = data.Get(lstName)
	Dim rCnt As Int = 0
	Dim rTot As Int = res.Size - 1
	Dim pTot As Int = props.size
	For rCnt = 0 To rTot
		Dim iFound As Int = 0
		'get the record at the position
		Dim rec As Map = res.Get(rCnt)
		'loop through each position
		For Each k As String In props.Keys
			Dim v As String = props.GetDefault(k,"")
			'does the field at that position match
			If rec.ContainsKey(k) Then
				Dim recvalue As String = rec.GetDefault(k, "")
				v = BANanoShared.CStr(v)
				recvalue = BANanoShared.CStr(recvalue)
				If recvalue.EqualsIgnoreCase(v) Then
					iFound = iFound + 1
				End If
			End If
		Next
		If iFound = pTot Then
			Return rCnt
		End If
	Next
	Return -1
End Sub

'remove item at beginning of list
Sub SetDataShift(lstname As String)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("shift", Null)
End Sub

'remove an item from the end of the list
Sub SetDataPop(lstname As String)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("pop", Null)
End Sub

'add item at beginning of list
Sub SetDataUnshift(lstname As String, obj As Object)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("unshift", obj)
End Sub

Sub RequiresAuthentication(b As Boolean)
	AddMeta("authrequired", b)
End Sub

'add a meta tag to the property
Sub AddMeta(prop As String, value As String)
	meta.Put(prop, value)
End Sub

'change the loading status of an element
Sub SetLoading(elID As String, b As Boolean)
	elID = elID.ToLowerCase
	Dim loadid As String = $"${elID}loading"$
	SetData(loadid, b)
End Sub

'return the component
Sub Component As Map
	Dim sTemplate As String = Template.ToString
	sTemplate = $"<span>${sTemplate}</span>"$
	sTemplate = sTemplate.Replace("v-template", "template")
	sTemplate = sTemplate.Replace("v-td", "td")
	Dim cb As BANanoObject = BANano.CallBack(Me, "returndata", Null)
	opt.Put("data", cb.Result)
	opt.Put("methods", methods)
	opt.Put("computed", computed)
	opt.Put("watch", watches)
	opt.Put("props", mprops)
	opt.Put("filters", filters)
	opt.Put("template", sTemplate)
	opt.Put("components", components)
	opt.Put("name", mName)
	Return opt
End Sub

'use for components
private Sub returndata As Map			'ignoredeadcode	
	Return data
End Sub

'remove state data
Sub RemoveData(key As String)
	key = key.ToLowerCase
	data.Remove(key)
End Sub

'Sub GetData1(prop As String) As Object
'	prop = prop.tolowercase
'	Dim obj As Object = Null
'	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
'	If dotPos >= 0 Then
'		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
'		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
'		Dim oEL As Map
'		If data.ContainsKey(pEL) Then
'			oEL = data.Get(pEL)
'			If oEL.ContainsKey(cEL) Then
'				obj = oEL.Get(cEL)
'			End If
'		End If
'	Else
'		If data.ContainsKey(prop) Then
'			obj = data.get(prop)
'		End If
'	End If
'	If BANano.IsNull(obj) Or BANano.IsUndefined(obj) Then obj = CStr(obj)
'	Return obj
'End Sub

Sub GetData(prop As String) As Object
	prop = prop.tolowercase
	Dim obj As Object = BANanoShared.GetRecursive(data, prop)
	If BANano.IsNull(obj) Or BANano.IsUndefined(obj) Then 
		obj = CStr(obj)
	End If
	Return obj
End Sub


'add a string property
Sub AddProperty(propName As String)
	Dim mprop As Map = CreateMap()
	mprop.Put("type", jsString)
	mprop.Put("default", "")
	mprops.Put(propName, mprop)
End Sub

'add a property to the component
Sub AddProperties(propsList As List)
	For Each k As String In propsList
		AddProperty(k)
	Next
End Sub

Sub AddFilter(methodName As String)
	SetFilter(mCallBack, methodName)
End Sub

'set direct method
Sub SetFilter(Module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim value As Object
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(value))
		filters.Put(methodName, cb)
	Else
		Log($"SetFilter.${methodName} could not be found!"$)
	End If
End Sub

'set computed
Sub AddComputed(k As String, methodName As String)
	SetComputed(k, mCallBack, methodName, Null)
End Sub

'set computed
Sub SetComputed(k As String, Module As Object, methodName As String, args As List)
	k = k.tolowercase
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		computed.Put(k, cb.Result)
		methods.Put(methodName, cb)
		data.Remove(methodName)
	End If
End Sub

Sub AddWatch(k As String, bImmediate As Boolean, bDeep As Boolean, methodName As String)
	SetWatch(k, bImmediate, bDeep, mCallBack, methodName, Null)
End Sub

'set watches 
Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, Module As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	k = k.tolowercase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		Dim deepit As Map = CreateMap()
		deepit.Put("handler", methodName)
		deepit.Put("deep", bDeep)
		deepit.Put("immediate", bImmediate)
		watches.Put(k, deepit)
		methods.Put(methodName, cb)
		data.Remove(methodName)
	End If
End Sub

Sub AddMethod(methodName As String, args As List)
	SetMethod(mCallBack, methodName, args)
End Sub

'set direct method
Sub SetMethod(Module As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		methods.Put(methodName, cb)
		data.Remove(methodName)
	End If
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
	data.Remove(methodName)
End Sub


'set the state
Sub SetState(m As Map)
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		k = k.tolowercase
		SetData(k, v)
	Next
End Sub

'return if state exists
Sub HasState(k As String) As Boolean
	k = k.tolowercase
	Return data.ContainsKey(k)
End Sub

'get the state
Sub GetState(k As String, v As Object) As Object
	k = k.tolowercase
	If data.ContainsKey(k) Then
		Dim out As Object = data.GetDefault(k,v)
		Return out
	Else
		Log("GetState: First set the v-model for " & k)
		Return ""
	End If
End Sub

'toggle a state
Sub ToggleState(stateName As String)
	Dim bcurrent As Boolean = GetState(stateName,"")
	bcurrent = Not(bcurrent)
	Dim optx As Map = CreateMap()
	optx.Put(stateName, bcurrent)
	SetState(optx)
End Sub


Sub Toggle(stateID As String)
	ToggleState(stateID)	
End Sub

'check if we have state
Sub StateExists(stateName As String) As Boolean
	stateName = stateName.tolowercase
	Return data.ContainsKey(stateName)
End Sub

'set state object
Sub SetStateMap(mapKey As String, mapValues As Map)
	mapKey = mapKey.tolowercase
	Dim optm As Map = CreateMap()
	optm.Put(mapKey, mapValues)
	SetState(optm)
End Sub

'set state list
Sub SetStateList(mapKey As String, mapValues As List)
	mapKey = mapKey.tolowercase
	Dim optm As Map = CreateMap()
	optm.Put(mapKey, mapValues)
	SetState(optm)
End Sub

'set multiple states to blank
Sub SetStateListValues(mapValues As List)
	For Each lstValue As String In mapValues
		lstValue = lstValue.tolowercase
		Dim optm As Map = CreateMap()
		optm.Put(lstValue, "")
		SetState(optm)
	Next
End Sub

'get states as a map
Sub GetStates(lst As List) As Map
	Dim smm As Map = CreateMap()
	For Each lstrec As String In lst
		lstrec = lstrec.tolowercase
		Dim state As Object = GetState(lstrec, Null)
		smm.Put(lstrec, state)
	Next
	Return smm
End Sub

'set state to true
Sub SetStateTrue(k As String)
	SetStateSingle(k,True)
End Sub

'set state to false
Sub SetStateFalse(k As String)
	SetStateSingle(k,False)
End Sub

'a single state change
Sub SetStateSingle(k As String, v As Object)
	k = k.tolowercase
	Dim optx As Map = CreateMap()
	optx.Put(k, v)
	SetState(optx)
End Sub

Sub NotState(stateName As String) As Boolean
	Dim bcurrent As Boolean = GetState(stateName,False)
	If BANano.IsNull(bcurrent) Then bcurrent = True
	bcurrent = Not(bcurrent)
	Return bcurrent
End Sub

Sub Increment(k As String) As VueComponent
	Dim oldV As String = GetState(k, "0")
	If BANano.IsNull(oldV) Or oldV = "" Then oldV = 0
	oldV = BANano.parseInt(oldV) + 1
	SetStateSingle(k, oldV)
	Return Me
End Sub

Sub Decrement(k As String) As VueComponent
	Dim oldV As String = GetState(k, "0")
	If BANano.IsNull(oldV) Or oldV = "" Then oldV = 0
	oldV = BANano.parseInt(oldV) - 1
	SetStateSingle(k, oldV)
	Return Me
End Sub

Sub Enable(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, False)
End Sub

Sub Disable(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, True)
End Sub

'set an item to enabled
Sub SetEnabled(elID As String, b As Boolean)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, b)
End Sub

'hide an element using v-show
Sub Hide(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}show"$, False)
End Sub

'show an element using v-show
Sub Show(elID As String)
	SetStateSingle($"${elID}show"$, True)
End Sub

Sub SetMessage(elID As String, msg As String)
	SetStateSingle($"${elID}message"$, msg)
End Sub

'nullify the file select
Sub NullifyFileSelect(refID As String)
	RefNull(refID)
End Sub

Sub RefNull(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).SetField("value", Null)
End Sub


'click a reference
Sub RefClick(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'show a file select when a button is clicked
Sub ShowFileSelect(fsName As String)
	RefClick(fsName)
End Sub

'refresh the key of the element
Sub RefreshKey(keyName As String) As VueComponent
	keyName = keyName.ToLowerCase
	SetData(keyName, DateTime.now)
	Return Me
End Sub

'add a rule
'Me.AddRule("ruleName", "methodName")
'<code>
'Sub AddRule(v As String) As Object	'ignoredeadcode
'If v = "" Then
'return "This is required!"
'Else
'Return True
'End If
'End Sub
'</code>
Sub AddRule(ruleName As String, MethodName As String)
	If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = ""
	ruleName = ruleName.ToLowerCase
	If ruleName = "" Then Return
	MethodName = MethodName.ToLowerCase
	Dim rules As List
	If data.ContainsKey(ruleName) Then
		rules = data.Get(ruleName)
	Else
		rules = NewList
	End If
	'
	Dim v As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, MethodName, Array(v))
	If SubExists(mCallBack, MethodName) Then
		rules.Add(cb.Result)
	End If
	data.put(ruleName, rules)
End Sub

'open an input dialog
Sub OpenDialog(dldID As String)
	Dim dialogShow As String = $"${dldID}show"$
	dialogShow = dialogShow.tolowercase
	SetData(dialogShow, True)
End Sub

'close own dialog
Sub CloseDialog(dldID As String)
	Dim dialogShow As String = $"${dldID}show"$
	dialogShow = dialogShow.tolowercase
	SetData(dialogShow, False)
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTMLAsIs(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub

'get the confirm key
Sub getConfirm As String
	Dim s As String = GetData("confirmkey")
	Return s
End Sub

'get the confirm key
Sub getPromptProcess As String
	Dim s As String = GetData("confirmkey")
	Return s
End Sub

'show a dialog linked to this component
Sub ShowDialog
	SetData(dialogShow, True)
End Sub

'hide a dialog linked to this component
Sub HideDialog
	SetData(dialogShow, False)
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	'xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub

'add anything from the appendholder
Sub AppendHolder 
	Template.AppendPlaceHolder
End Sub

'add anything from the appendholder
Sub AppendHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolder
	'Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	'Template.Append(stemplate)
	Template.AppendPlaceHolder
End Sub

#End Region

#Region Internal Events

#End Region

'get all the table data
Sub GetTableData(tblName As VueTable) As List
	Dim recs As List = GetData(tblName.itemsname)
	Return recs
End Sub


'get all the table data selected
Sub GetTableDataSelected(tblName As VueTable) As List
	Dim recs As List = GetData(tblName.selected)
	Return recs
End Sub

Sub CallMethod(methodName As String)
	methodName = methodName.tolowercase
	Dim bo As BANanoObject = Component
	bo.GetField("methods").RunMethod(methodName, Null)
End Sub

Sub RunMethod(methodName As String, args As Object) As BANanoObject
	methodName = methodName.tolowercase
	Dim bo As BANanoObject = Component
	Return bo.GetField("methods").RunMethod(methodName, args)
End Sub

Sub getHTML As String
	Return Template.ToString
End Sub


'convert object to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

Sub IsVisible1(ve As VueElement, bShow As Boolean)
	Dim vkey As String = ve.VShow
	SetData(vkey, bShow)
End Sub


'reset the validation and perform validation
Sub FormValidate1(formName As String) As Boolean
	FormResetValidation(formName)
	Return FormValidate(formName)
End Sub

Sub SetInterval(methodname As String, ms As Int, args As List) As Object
	methodname = methodname.tolowercase
	Dim cb As BANanoObject = BANano.callback(mCallBack, methodname, args)
	Dim res As Object = BANano.Window.SetInterval(cb, ms)
	Return res
End Sub

Sub ClearInterval(interval As Object)
	BANano.Window.ClearInterval(interval)
End Sub

Sub UpdateSRC(elID As String, src As String)
	Dim key As String = $"${elID}src"$
	SetData(key, src)
End Sub

'update item where
Sub RealTimeUpdateItemAtPosition(lstName As String, pos As Int, item As Map)
	If pos >= 0 Then
		Dim recs As List = GetData(lstName)
		Dim rec As Map = recs.Get(pos)
		For Each k As String In item.Keys
			Dim v As Object = item.Get(k)
			rec.Put(k, v)
		Next
		SetDataSplice(lstName, pos, 1, rec)
	End If
End Sub

Sub RealTimeRemoveItemAtPosition(lstName As String, pos As Int)
	If pos >= 0 Then
		SetDataSpliceRemove(lstName, pos, 1)
	End If
End Sub

'find item at position
Sub RealTimeFindItemAtPosition(lstName As String, pos As Int) As Map
	Dim recs As List = GetData(lstName)
	Dim rec As Map = recs.Get(pos)
	Return rec
End Sub

Sub RealTimeFindItemPosition(lstName As String, whereMap As Map) As Int
	Dim mpos As Int = GetDataPositionWhere(lstName, whereMap)
	Return mpos
End Sub

Sub RealTimeAddItem(lstName As String, rowData As Map)
	SetDataPush(lstName, rowData)
End Sub

'remove an item where
Sub RealTimeRemoveItem(lstName As String, prop As String, value As String)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(lstName, m)
	If mpos >= 0 Then
		SetDataSpliceRemove(lstName, mpos, 1)
	End If
End Sub

'update item where
Sub RealTimeUpdateItem(lstName As String, prop As String, value As String, item As Map)
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(lstName, m)
	If mpos >= 0 Then
		'get existing record
		Dim recs As List = GetData(lstName)
		Dim rec As Map = recs.Get(mpos)
		For Each k As String In item.Keys
			Dim v As Object = item.Get(k)
			rec.Put(k, v)
		Next
		SetDataSplice(lstName, mpos, 1, rec)
	End If
End Sub

Sub RealTimeReadItem(lstName As String, prop As String, value As String) As Map
	Dim wh As Map = CreateMap()
	wh.Put(prop, value)
	Return RealTimeFindItem(lstName, wh)
End Sub

'get data where
Sub RealTimeFindItem(lstName As String, whereMap As Map) As Map
	Dim rm As Map = CreateMap()
	'find the item
	Dim recpos As Int = GetDataPositionWhere(lstName, whereMap)
	If recpos = -1 Then Return rm
	Dim recs As List = GetData(lstName)
	Dim rec As Map = recs.Get(recpos)
	Return rec
End Sub

Sub IsLoading(elID As String, b As Boolean)
	Dim lkey As String = $"${elID}loading"$
	SetData(lkey, b)
End Sub

Sub IsReadOnly(elID As String, b As Boolean)
	Dim lkey As String = $"${elID}readonly"$
	SetData(lkey, b)
End Sub

Sub IsDisabled(elID As String, b As Boolean)
	Dim lkey As String = $"${elID}disabled"$
	SetData(lkey, b)
End Sub

Sub IsRequired(elID As String, b As Boolean)
	Dim lkey As String = $"${elID}required"$
	SetData(lkey, b)
End Sub

Sub IsVisible(elID As String, b As Boolean)
	Dim lkey As String = $"${elID}show"$
	SetData(lkey, b)
End Sub

Sub MapNiceDates(m As Map, flds As List)
	For Each k As String In flds
		Dim v As String = m.Get(k)
		v = NiceDate(v)
		m.Put(k, v)
	Next
End Sub


'return the theme color
Sub GetThemeColor(color As String, intensity As String) As String
	Dim s As String = $"${color} ${intensity}"$
	s = s.trim
	Return s
End Sub

'convert map values to nice money
Sub MapNiceMoney(m As Map, flds As List)
	For Each k As String In flds
		Dim v As String = m.Get(k)
		v = NiceMoney(v)
		m.Put(k, v)
	Next
End Sub

'convert map values to thousands
Sub MapThousands(m As Map, flds As List)
	For Each k As String In flds
		Dim v As String = m.Get(k)
		v = Thousands(v)
		m.Put(k, v)
	Next
End Sub

'convert map values to nice months
Sub MapNiceMonths(m As Map, flds As List)
	For Each k As String In flds
		Dim v As String = m.Get(k)
		v = NiceMonth(v)
		m.Put(k, v)
	Next
End Sub

'convert map values to vals
Sub MapVal(m As Map, flds As List)
	For Each k As String In flds
		Dim v As String = m.Get(k)
		v = BANanoShared.Val(v)
		m.Put(k, v)
	Next
End Sub

'set the active items for the treeview
Sub SetActiveItems(elID As String, lst As List)
	Dim ai As String = $"${elID}active"$
	SetData(ai, lst)
End Sub

Sub SetOpenItems(elID As String, lst As List)
	Dim ai As String = $"${elID}open"$
	SetData(ai, lst)
End Sub

'get all items that are open in the treeview
Sub GetOpen(elID As String) As List
	Dim ai As String = $"${elID}open"$
	Dim lst As List = GetData(ai)
	Return lst
End Sub

'get all items that are active from the treeview
Sub GetActive(elID As String) As List
	Dim ai As String = $"${elID}active"$
	Dim lst As List = GetData(ai)
	Return lst
End Sub

'get selected item from a treeview using the vmodel
Sub GetSelected(vmodel As String) As List
	Dim lst As List = GetData(vmodel)
	Return lst
End Sub

Sub VJSFAdd(parent As Map, vmodel As String, eType As String, eTitle As String, eDescription As String, props As Map)
	Dim el As Map = CreateMap()
	el.Put("type", eType)
	el.Put("title", eTitle)
	el.Put("description", eDescription)
	If BANano.IsNull(props) Or BANano.IsUndefined(props) Then
	Else	
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			el.Put(k, v)
		Next
	End If
	parent.Put(vmodel, el)
End Sub

Sub TreeViewRefresh(tv As VueElement)
	'unflatten the data
	Dim unflat As List = BANanoShared.Unflatten(tv.Records, "children")
	Dim itmName As String = tv.Items
	SetData(itmName, unflat)
	Dim openitems As List = tv.openitems
	If openitems.Size > 0 Then
		SetOpenItems(tv.id, openitems)
	End If
End Sub

Sub ShowSnackBarError(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "error")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBarSuccess(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "success")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBarPrimary(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "primary")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBarSecondary(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "secondary")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBarInfo(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "info")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBarWarning(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "warning")
	SetData($"${elID}show"$, True)
End Sub

Sub ShowSnackBar(elID As String, Message As String)
	If BANano.IsNull(Message) Then Return
	SetData($"${elID}message"$, Message)
	SetData($"${elID}color"$, "")
	SetData($"${elID}show"$, True)
End Sub

Sub HideSnackBar(elID As String)
	SetData($"${elID}show"$, False)
End Sub

Sub SetTimeOut(MethodName As String, ms As Int)
	Dim cb As BANanoObject = BANano.callback(mCallBack, MethodName, Null)
	BANano.Window.SetTimeout(cb, ms)
End Sub


Sub GetBindingCode(sVariables As String) As String
	Dim sb As StringBuilder
	sb.Initialize 
	Dim splines As List = BANanoShared.StrParse(CRLF, sVariables)
	For Each strLine As String In splines
		strLine = strLine.Trim
		Dim strIT As String = BANanoShared.MvField(strLine, 2, " ")
		strIT = strIT.Trim
		sb.Append($"${mName}.BindVueElement(${strIT}.VElement)"$).append(CRLF)
	Next
	Return sb.tostring
End Sub

Sub UseVJSF
	If components.ContainsKey("v-jsf") = False Then
		Dim VJsf As BANanoObject
		VJsf.Initialize("VJsf")
		Dim boVJsf As BANanoObject = VJsf.GetField("default")
		components.Put("v-jsf", boVJsf)
	End If	
End Sub

'add html of component to app and this binds events and states
Sub BindState(elx As VueElement)
	Dim mbindings As Map = elx.bindings
	Dim mmethods As Map = elx.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

'find item at position
Sub FindItemAtPosition(dsName As String, pos As Int) As Map
	Dim recs As List = GetData(dsName)
	Dim rec As Map = recs.Get(pos)
	Return rec
End Sub


'toggle the password
Sub TogglePassword(elID As String)
	Dim sShowEyes As String = $"${elID}eyes"$
	Toggle(sShowEyes)
End Sub

'update the items of a list
Sub UpdateItems(elID As String, items As List)
	Dim xitems As String = $"${elID}items"$
	SetData(xitems, items)
End Sub


'add a new row at the end of the items in realtime
Sub AddItem(elID As String, rowdata As Map)
	Dim xitems As String = $"${elID}items"$
	SetDataPush(xitems, rowdata)
End Sub

'remove an item where
Sub RemoveItem(elID As String, prop As String, value As String)
	Dim xitems As String = $"${elID}items"$
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(xitems, m)
	If mpos >= 0 Then
		SetDataSpliceRemove(xitems, mpos, 1)
	End If
End Sub

'update item where
Sub UpdateItem(elID As String, prop As String, value As String, item As Map)
	Dim xitems As String = $"${elID}items"$
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(xitems, m)
	If mpos >= 0 Then
		Dim oldm As Map = FindItemAtPosition(xitems, mpos)
		oldm = BANanoShared.Merge(oldm, item)
		SetDataSplice(xitems, mpos, 1, oldm)
	End If
End Sub

'get data where
Sub FindItem(elID As String, whereMap As Map) As Map
	Dim xitems As String = $"${elID}items"$
	Dim rm As Map = CreateMap()
	'find the item
	Dim recpos As Int = GetDataPositionWhere(xitems, whereMap)
	If recpos = -1 Then Return rm
	Dim recs As List = GetData(xitems)
	Dim rec As Map = recs.Get(recpos)
	Return rec
End Sub


'read an item where
Sub ReadItem(elID As String, prop As String, value As String) As Map
	Dim xitems As String = $"${elID}items"$
	Dim m As Map = CreateMap()
	m.Put(prop, value)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(elID, m)
	Dim res As Map = CreateMap()
	If mpos >= 0 Then
		res = FindItemAtPosition(xitems, mpos)
	End If
	Return res
End Sub

'remove an item where
Sub RealTimeRemoveItemWhere(lstName As String, wm As Map)
	'find the record at a position
	Dim mpos As Int = GetDataPositionWhere(lstName, wm)
	If mpos >= 0 Then
		SetDataSpliceRemove(lstName, mpos, 1)
	End If
End Sub

Sub OnTimeOut(MethodName As String, ms As Int)
	SetTimeOut(MethodName, ms)
End Sub

Sub OnInterval(MethodName As String, ms As Int) As Int
	Return SetInterval(MethodName, ms, Null)
End Sub

'returns whether a map exists in a list based on a property
Sub ListContains(listname As String, prop As String, value As String) As Boolean
	Dim lst As List = GetData(listname)
	Dim collection As BANanoCollectJS
	collection.Initialize(lst)
	Dim bExist As Boolean = collection.exists(prop, value)
	Return bExist
End Sub

'returns the map based on a property
Sub ListFind(listname As String, prop As String, value As String) As Map
	Dim lst As List = GetData(listname)
	Dim collection As BANanoCollectJS
	collection.Initialize(lst)
	Dim mExist As Map = collection.firstWhere(prop, value)
	Return mExist
End Sub

'returns the index based on a property
Sub ListIndexOf(listname As String, prop As String, value As String) As Long
	Dim lst As List = GetData(listname)
	Dim collection As BANanoCollectJS
	collection.Initialize(lst)
	Dim mExist As Map = collection.firstWhere(prop, value)
	If BANano.IsNull(mExist) Or BANano.IsUndefined(mExist) Then Return -1
	Dim pos As Object = collection.search(mExist)
	If pos = False Then Return -1
	Return pos
End Sub

'update field visibility
Sub UpdateFieldVisibile(cName As String, b As Boolean)
	Dim fKey As String = $"${cName}show"$
	Dim iKey As String = $"${cName}vif"$
	SetData(fKey, b)
	SetData(iKey, b)
End Sub

'update read only
Sub UpdateFieldReadOnly(cName As String, b As Boolean)
	Dim fKey As String = $"${cName}readonly"$
	SetData(fKey, b)
End Sub

'update required
Sub UpdateFieldRequired(cName As String, b As Boolean)
	Dim fKey As String = $"${cName}required"$
	SetData(fKey, b)
End Sub

'update disabled
Sub UpdateFieldDisabled(cName As String, b As Boolean)
	Dim fKey As String = $"${cName}disabled"$
	SetData(fKey, b)
End Sub

'update loading
Sub UpdateFieldLoading(cName As String, b As Boolean)
	Dim fKey As String = $"${cName}loading"$
	SetData(fKey, b)
End Sub

'updating caption
Sub UpdateFieldCaption(cName As String, s As String)
	Dim fKey As String = $"${cName}caption"$
	SetData(fKey, s)
End Sub

'update items using list of objects
Sub UpdateFieldItems(cName As String, items As List)
	Dim fKey As String = $"${cName}items"$
	SetData(fKey, items)
End Sub

'clear the items in the list
Sub UpdateFieldClearItems(cName As String)
	Dim items As List
	items.Initialize 
	Dim fKey As String = $"${cName}items"$
	SetData(fKey, items)
End Sub

'add items from a map to the autocomplete, combo or select
Sub UpdateFieldAddItems(cName As String, items As Map)
	Dim fKey As String = $"${cName}items"$
	Dim itemvalue As String = GetData($"${cName}itemvalue"$)
	Dim itemtext As String = GetData($"${cName}itemtext"$)
	'get existing items
	Dim oitems As List = GetData(fKey)
	For Each ik As String In items.keys
		Dim iv As String = items.Get(ik)	
		Dim ni As Map = CreateMap()
		ni.Put(itemvalue, ik)
		ni.Put(itemtext, iv)
		oitems.Add(ni)
	Next
	SetData(fKey, oitems)
End Sub

'add a map with colors you want
Sub UpdateFieldAddColors(cName As String, items As Map)
	Dim fKey As String = $"${cName}items"$
	Dim itemvalue As String = GetData($"${cName}itemvalue"$)
	Dim itemtext As String = GetData($"${cName}itemtext"$)
	
	'get existing items
	Dim oitems As List = GetData(fKey)
	For Each ik As String In items.keys
		Dim iv As String = items.Get(ik)	
		Dim ni As Map = CreateMap()
		ni.Put(itemvalue, ik)
		ni.Put(itemtext, iv)
		oitems.Add(ni)
	Next
	SetData(fKey, oitems)
End Sub

'add a person
Sub UpdateFieldAddPerson(cName As String, value As String, text As String, avatar As String)
	Dim fKey As String = $"${cName}items"$
	Dim itemvalue As String = GetData($"${cName}itemvalue"$)
	Dim itemtext As String = GetData($"${cName}itemtext"$)
	Dim itemavatar As String = GetData($"${cName}itemavatar"$)
	
	'get existing items
	Dim oitems As List = GetData(fKey)
	Dim ni As Map = CreateMap()
	ni.Put(itemvalue, value)
	ni.Put(itemtext, text)
	ni.Put(itemavatar, avatar)
	oitems.Add(ni)
	SetData(fKey, oitems)
End Sub

'update the color
Sub UpdateFieldColor(cName As String, cColor As String, cColorIntensity As String)
	'the binding class
	Dim xbindclass As String = $"${cName}class"$
	Dim items As List = GetData(xbindclass)
	'remove existing colors
	For Each tc As String In BANanoShared.Colors
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	'remove existing intensities
	For Each ti As String In BANanoShared.Intensities
		items = BANanoShared.ListRemoveItem(items, ti)
	Next
	'add the text color we want
	Dim ntc As String = BANanoShared.NormalizeColor(cColor)
	If ntc <> "" Then items.add(ntc)
	'add the intensity
	Dim nti As String = BANanoShared.NormalizeIntensity(cColorIntensity)
	If nti <> "" Then items.add(nti)
	SetData(xbindclass, items)
End Sub

'update the text color
Sub UpdateFieldTextColor(cName As String, cColor As String, cColorIntensity As String)
	'the binding class
	Dim xbindclass As String = $"${cName}class"$
	Dim items As List = GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.TextColors
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	'remove existing text intensities
	For Each ti As String In BANanoShared.TextColorIntensities
		items = BANanoShared.ListRemoveItem(items, ti)
	Next
	'add the text color we want
	Dim ntc As String = BANanoShared.NormalizeTextColor(cColor)
	If ntc <> "" Then items.add(ntc)
	'add the intensity
	Dim nti As String = BANanoShared.NormalizeTextIntensity(cColorIntensity)
	If nti <> "" Then items.add(nti)
	SetData(xbindclass, items)
End Sub

'update an image source
Sub UpdateFieldImage(cName As String, src As String)
	Dim bsrc As String = GetData($"${cName}src"$)
	SetData(bsrc, src)
End Sub

'update the lazy image src
Sub UpdateFieldLazyImage(cName As String, src As String)
	Dim bsrc As String = GetData($"${cName}lazysrc"$)
	SetData(bsrc, src)
End Sub

'toggle the password eyes
Sub UpdateFieldTogglePassword(elID As String)
	Dim sShowEyes As String = $"${elID}eyes"$
	Toggle(sShowEyes)
End Sub

Sub UpdateFieldRemoveClass(sitem As String, sClass As String)
	Dim xbindclass As String = $"${sitem}class"$
	Dim items As List = GetData(xbindclass)
	items = BANanoShared.ListRemoveItem(items, sClass)
	SetData(xbindclass, items)
End Sub

'set text alignment
Sub UpdateFieldTextAlign(sitem As String, ta As String)
	ta = ta.replace("none","")
	Dim xbindclass As String = $"${sitem}class"$
	Dim items As List = GetData(xbindclass)
	For Each tax As String In BANanoShared.TextAlign
		items = BANanoShared.ListRemoveItem(items, tax)
	Next
	If ta <> "" Then
		items.add(ta)
	End If
	SetData(xbindclass, items)
End Sub

'update text decoration
Sub UpdateFieldTextDecoration(sItem As String, s As String)
	'the binding class
	Dim xbindclass As String = $"${sItem}class"$
	Dim items As List = GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.TextDecoration
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.Add(s)
	SetData(xbindclass, items)
End Sub

'truncate
Sub UpdateFieldTruncate(sitem As String, b As Boolean)
	Dim xbindclass As String = $"${sitem}class"$
	Dim eClass As List = GetData(xbindclass)
	Select Case b
	Case True
		eClass = BANanoShared.ListAddDistinctItem(eClass, "d-inline-block")
		eClass = BANanoShared.ListAddDistinctItem(eClass, "text-truncate")
	Case False
		eClass = BANanoShared.ListRemoveItem(eClass, "d-inline-block")
		eClass = BANanoShared.ListRemoveItem(eClass, "text-truncate")
	End Select
	SetData(xbindclass, eClass)
End Sub

'line through
Sub UpdateFieldLineThrough(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "text-decoration-line-through")
	Case False
		UpdateFieldRemoveClass( sitem, "text-decoration-line-through")
	End Select
End Sub

'font thin
Sub UpdateFieldFontThin(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "font-weight-thin")
	Case False
		UpdateFieldRemoveClass( sitem, "font-weight-thin")
	End Select
End Sub

'font light
Sub UpdateFieldFontLight(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "font-weight-light")
	Case False
		UpdateFieldRemoveClass( sitem, "font-weight-light")
	End Select
End Sub

'underline
Sub UpdateFieldUnderLine(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "text-decoration-underline")
	Case False
		UpdateFieldRemoveClass( sitem, "text-decoration-underline")
	End Select
End Sub

'overline
Sub UpdateFieldOverline(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "text-decoration-overline")
	Case False
		UpdateFieldRemoveClass( sitem, "text-decoration-overline")
	End Select
End Sub

'bold
Sub UpdateFieldBold(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "font-weight-bold")
	Case False
		UpdateFieldRemoveClass( sitem, "font-weight-bold")
	End Select
End Sub

'update font weight black
Sub UpdateFieldFontWeightBlack(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "font-weight-black")
	Case False
		UpdateFieldRemoveClass( sitem, "font-weight-black")
	End Select
End Sub

'update italic for an element
Sub UpdateFieldItalic(sitem As String, b As Boolean)
	Select Case b
	Case True
		UpdateFieldAddClass( sitem, "font-italic")
	Case False
		UpdateFieldRemoveClass( sitem, "font-italic")
	End Select
End Sub

'bind an attribute and set its default
Sub FieldBindDefault(sitem As String, prop As String, varName As String, def As Object)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.SetAttr($":${prop.tolowercase}"$, varName)
	SetData(varName, def)
End Sub

'bind an attribute default is set as null
Sub FieldBind(sitem As String, prop As String, varName As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.SetAttr($":${prop.tolowercase}"$, varName)
	SetData(varName, Null)
End Sub

'design
Sub FieldHiddenXSOnly(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-xs-only")
End Sub

'design
Sub FieldHiddenSMOnly(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-sm-none d-md-flex")
End Sub

'design	
Sub FieldHiddenMDOnly(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-md-none d-lg-flex")
End Sub
	
'design	
Sub FieldHiddenLGOnly(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-lg-none d-xl-flex")
End Sub

'design	
Sub FieldHiddenXLOnly(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-xl-none")
End Sub

'design
Sub FieldHiddenSMAndDown(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-sm-and-down")
End Sub
	
'design	
Sub FieldHiddenMDAndDown(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-md-and-down")
End Sub
	
'design	
Sub FieldHiddenLGAndDown(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-lg-and-down")
End Sub

'design
Sub FieldHiddenSMAndUp(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-sm-and-up")
End Sub
	
'design	
Sub FieldHiddenMDAndUp(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-md-and-up")
End Sub
	
'design	
Sub FieldHiddenLGAndUp(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-lg-and-up")
End Sub

'design
Sub FieldHiddenOnAll(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-none")
End Sub

'design
Sub FieldHideOnlyOnXS(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("hidden-xs-only")
End Sub

'design
Sub FieldHideOnlyOnSM(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-sm-none d-md-flex")
End Sub

'design
Sub FieldHideOnlyOnMD(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-md-none d-lg-flex")
End Sub

'design
Sub FieldHideOnlyOnLG(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-lg-none d-xl-flex")
End Sub

'design
Sub FieldHideOnlyOnXL(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-xl-none")
End Sub

'design
Sub FieldVisibleOnAll(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-flex")
End Sub

'design
Sub FieldVisibleOnlyOnXS(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-flex d-sm-none")
End Sub

'design
Sub FieldVisibleOnlyOnSM(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-none d-sm-flex d-md-none")
End Sub

'design
Sub FieldVisibleOnlyOnMD(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-none d-md-flex d-lg-none")
End Sub

'design
Sub FieldVisibleOnlyOnLG(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-none d-lg-flex d-xl-none")
End Sub

'design
Sub FieldVisibleOnlyOnXL(sitem As String)
	Dim el As BANanoElement
	el.Initialize($"#${sitem.tolowercase}"$)
	el.AddClass("d-none d-xl-flex")
End Sub

Sub UpdateFieldToggleClass(sitem As String, sClass As String)
	Dim xbindclass As String = $"${sitem}class"$
	Dim items As List = GetData(xbindclass)
	Dim idxpos As Int = items.IndexOf(sClass)
	If idxpos = -1 Then
		items = BANanoShared.ListAddDistinctItem(items, sClass)
	Else
		items = BANanoShared.ListRemoveItem(items, sClass)
	End If	
	SetData(xbindclass, items)
End Sub

'update classes at runtime
Sub UpdateFieldAddClass(sItem As String, sClass As String)
	Dim xbindclass As String = $"${sItem}class"$
	Dim items As List = GetData(xbindclass)
	items = BANanoShared.ListAddDistinctItem(items, sClass)
	SetData(xbindclass, items)
End Sub

Sub UpdateFieldAddStyle(sitem As String, prop As String, value As String)
	prop = BANanoShared.CamelCase(prop)
	Dim xbindstyle As String = $"${sitem}style"$
	Dim items As Map = GetData(xbindstyle)
	items.Put(prop, value)
	SetData(xbindstyle, items)
End Sub

Sub UpdateFieldRemoveStyle(sitem As String, prop As String)
	prop = BANanoShared.CamelCase(prop)
	Dim xbindstyle As String = $"${sitem}style"$
	Dim items As Map = GetData(xbindstyle)
	items.Remove(prop)
	SetData(xbindstyle, items)
End Sub

Sub UpdateFieldLabel(sitem As String, s As String)
	Dim xLabel As String = $"${sitem}label"$
	SetData(xLabel, S)
End Sub

'update value of a field using v-model
Sub UpdateFieldValue(sVModel As String, s As Object)
	SetData(sVModel, S)
End Sub

Sub UpdateFieldElevation(sitem As String, iElev As Int)
	Dim xbindclass As String = $"${sitem}class"$
	Dim items As List = GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.Elevation
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.add($"elevation-${iElev}"$)
	SetData(xbindclass, items)
End Sub

Sub UpdateFieldRounded(sitem As String, sround As String)
	Dim xbindclass As String = $"${sitem}class"$
	Dim items As List = GetData(xbindclass)
	'remove existing text colors
	For Each tc As String In BANanoShared.Rounded
		items = BANanoShared.ListRemoveItem(items, tc)
	Next
	items.add(sround)
	SetData(xbindclass, items)
End Sub

'update size of avatar
Sub UpdateFieldSize(sitem As String, s As String)
	SetData($"${sitem}size"$, S)
End Sub

'set formmated date of field using vmodel
Sub UpdateFieldFormatDate(xvmodel As String)
	Dim sDate As String = GetData(xvmodel)
	If sDate = "" Then Return
	Dim xDate As String = NiceDate(sDate)
	Dim res As String = $"${xvmodel}fmt"$
	SetData(res, xDate)
End Sub


Sub UpdateFieldBadge(elIDName As String, items As Int)
	Dim sKey As String = $"${elIDName}value"$
	SetData(sKey, items)
End Sub


Sub UpdateFieldIncrement(elIDName As String)
	Dim sKey As String = $"${elIDName}value"$
	Increment(sKey)
End Sub

Sub UpdateFieldDecrement(elIDName As String)
	Dim sKey As String = $"${elIDName}value"$
	Decrement(sKey)
End Sub

Sub UpdateFieldBadgeColor(bID As String, color As String)
	Dim skey As String = $"${bID}badgecolor"$
	SetData(skey, color)
End Sub

Sub UpdateFieldBadgeIconColor(bID As String, color As String)
	Dim skey As String = $"${bID}iconcolor"$
	SetData(skey, color)
End Sub

'update progress linear / circle using the vmodel
Sub UpdateFieldPercentage(bID As String, currentx As Long, totalx As Long)
	Dim pd As Long = BANanoShared.ProgressDone(currentx, totalx)
	SetData(bID, pd)
End Sub


Sub GetFieldVModel(sVModel As String) As Object
	Dim obj As Object = GetData(sVModel)
	Return obj
End Sub

Sub GetFieldBadgeColor(bID As String) As String
	Dim skey As String = $"${bID}badgecolor"$
	Dim s As String = GetData(skey)
	Return s
End Sub

Sub GetFieldBadgeIconColor(bID As String) As String
	Dim skey As String = $"${bID}iconcolor"$
	Dim s As String = GetData(skey)
	Return s
End Sub

Sub GetFieldBadge(elIDName As String) As Int
	Dim sKey As String = $"${elIDName}value"$
	Dim i As Int = GetData(sKey)
	Return i
End Sub

Sub GetFieldSize(sitem As String) As Int
	Dim i As Int = GetData($"${sitem}size"$)
	Return i
End Sub

'update field visibility
Sub GetFieldVisibile(cName As String) As Boolean
	Dim fKey As String = $"${cName}show"$
	Dim s As String = GetData(fKey)
	Return s
End Sub

'update read only
Sub GetFieldReadOnly(cName As String) As Boolean
	Dim fKey As String = $"${cName}readonly"$
	Dim b As Boolean = GetData(fKey)
	Return b
End Sub

'update required
Sub GetFieldRequired(cName As String) As Boolean
	Dim fKey As String = $"${cName}required"$
	Dim b As Boolean = GetData(fKey)
	Return b
End Sub

'update disabled
Sub GetFieldDisabled(cName As String) As Boolean
	Dim fKey As String = $"${cName}disabled"$
	Dim b As Boolean = GetData(fKey)
	Return b
End Sub

'update loading
Sub GetFieldLoading(cName As String) As Boolean
	Dim fKey As String = $"${cName}loading"$
	Dim b As Boolean = GetData(fKey)
	Return b
End Sub

'updating caption
Sub GetFieldCaption(cName As String) As String
	Dim fKey As String = $"${cName}caption"$
	Dim s As String = GetData(fKey)
	Return s
End Sub

'update items using list of objects
Sub GetFieldItems(cName As String) As List
	Dim fKey As String = $"${cName}items"$
	Dim lst As List = GetData(fKey)
	Return lst
End Sub

'update an image source
Sub GetFieldImage(cName As String) As String
	Dim bsrc As String = GetData($"${cName}src"$)
	Dim s As String = GetData(bsrc)
	Return s
End Sub

'update the lazy image src
Sub GetFieldLazyImage(cName As String) As String
	Dim bsrc As String = GetData($"${cName}lazysrc"$)
	Dim s As String = GetData(bsrc)
	Return s
End Sub

'toggle the password eyes
Sub GetFieldTogglePassword(elID As String) As Boolean
	Dim sShowEyes As String = $"${elID}eyes"$
	Dim s As String = GetData(sShowEyes)
	Return s
End Sub

Sub GetFieldLabel(sitem As String) As String
	Dim xLabel As String = $"${sitem}label"$
	Dim s As String = GetData(xLabel)
	Return s
End Sub

Sub UpdateFieldPercent(svmodel As String, num As Int)
	SetData(svmodel, num)
End Sub

'update progress linear / circle using the vmodel
Sub UpdateFieldProgress(svmodel As String, currentx As Long, totalx As Long)
	Dim pd As Long = BANanoShared.ProgressDone(currentx, totalx)
	SetData(svmodel, pd)
End Sub

'clear the vmodel
Sub ClearVModel(svmodel As String)
	SetData(svmodel, "")
End Sub

Sub UpdateFieldIndeterminate(sitem As String, b As Boolean)
	Dim xIndeterminate As String = $"${sitem}indeterminate"$
	SetData(xIndeterminate, b)
End Sub


Sub UpdateFieldCaptionVisible(sitem As String, b As Boolean)
	Dim xIndeterminate As String = $"${sitem}captionshow"$
	SetData(xIndeterminate, b)
End Sub

Sub PercentageOf(currentCount As Long, totalCount As Long) As Int
	Dim pd As Int = (currentCount / totalCount) * 100
	pd = NumberFormat2(pd, 0,0, 0, False)
	pd = BANanoShared.CInt(pd)
	Return pd
End Sub


'clear an existing list in state
Sub CreateNewList(lstName As String)
	Dim nl As List
	nl.Initialize 
	SetData(lstName, nl)
End Sub

Sub CreateNewObject(mapName As String)
	Dim nl As Map
	nl.Initialize
	SetData(mapName, nl)
End Sub


'set the data to be in an animated state
'you pass this the end value, it will read the existing value
'VC - The name of the component
'CBName - the name of the callback to receive the update calls
'This returns a Map/Object and you can get the 'data' name you want to update
'<code>
'SetDataAnimated("progress", 2000, 100)
'Sub progressupdated(res As Map)
'Dim progress As Int = res.get("progress")
'progress = banano.Parseint(progress)
'</code>
Sub SetDataAnimated(elID As String, duration As Int, endValue As Object) As BANanoAnimeJS
	'read the current value
	Dim startValue As Object = GetData(elID)
	'create an object to manipulate
	'using the data object we want to update
	Dim objData As Map = CreateMap()
	objData.Put(elID, startValue)
	objData.Put("datakey", elID)
	'pass it to animejs
	Dim a1 As BANanoAnimeJS
	a1.Initialize(Me, objData)
	a1.anime.roundIT(1)
	a1.anime.easing("linear")
	a1.anime.duration(duration)
	a1.anime.propertyEndValue(elID, endValue)
	a1.anime.updateCallBack(Me, "dataanimated", elID, objData)
	a1.play
	Return a1
End Sub

private Sub dataanimated(objD As Map, elID As String)
	elID = elID.tolowercase
	'get the item we were updating And format it however we want
	Dim updated As Int = objD.Get(elID)
	updated = BANano.parseInt(updated)
	SetData(elID, updated)
End Sub