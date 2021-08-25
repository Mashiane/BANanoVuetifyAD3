B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Created with BANano Custom View Creator 1.00 by TheMash
'https://github.com/Mashiane/BANano-Custom-View-Creator
'Custom BANano View class

#Event: Copy (e As BANanoEvent)
#Event: Download (e As BANanoEvent)
#Event: Close (e As BANanoEvent)

#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Prism Code, Description: Title
#DesignerProperty: Key: FileName, DisplayName: FileName, FieldType: String, DefaultValue: code.txt, Description: FileName
#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Inline, DisplayName: Inline, FieldType: Boolean, DefaultValue: False, Description: Inline
#DesignerProperty: Key: Language, DisplayName: Language, FieldType: String, DefaultValue: vb, Description: Language, List: css|html|js|none|vb|markup

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sCode As String
	Private bHidden As Boolean
	Private bInline As Boolean
	Private sLanguage As String
	Private sVShow As String
	Private xlanguage As String
	Private xinline As String
	Private sTitle As String
	Private xCode As String
	Private xTitle As String
	Private sFileName As String
	'
	Public CODE_CSS As String = "css"
	Public CODE_JS As String = "js"
	Public CODE_HTML As String = "html"
	Public CODE_VB As String = "vb"
	Public CODE_OTHER As String = ""
	Private VC As VueComponent				'ignore
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
	BANano.DependsOnAsset("vue-clipboard.min.js")
	BANano.DependsOnAsset("prism.min.css")		
	BANano.DependsOnAsset("prism.min.js")
	BANano.DependsOnAsset("vue-prism-component.min.js")
	BANano.DependsOnAsset("beautify.min.js")
	BANano.DependsOnAsset("beautify-css.min.js")
	BANano.DependsOnAsset("beautify-html.min.js")
	BANano.DependsOnAsset("vue-clipboard.min.js")
	BANano.DependsOnAsset("lodash.min.js")
	
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
	sVShow = $"${mName}show"$
	xCode = $"${mName}code"$
	xlanguage = $"${mName}language"$
	xinline = $"${mName}inline"$
	xTitle = $"${mName}title"$
	sCode = ""
End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		bHidden = Props.GetDefault("Hidden", False)
		bInline = Props.GetDefault("Inline", False)
		sLanguage = Props.GetDefault("Language", "vb")
		sTitle = Props.GetDefault("Title", "")
		sFileName = Props.GetDefault("FileName", "")
	End If 
	'
	bHidden = BANanoShared.parseBool(bHidden)
bInline = BANanoShared.parseBool(bInline)

	Dim sTemplate As String = $"<v-card id="${mName}card">
	<v-toolbar dense flat>
	<v-card-title id="${mName}cardtitle">{{ ${xTitle} }}</v-card-title><v-spacer></v-spacer>
	<v-btn id="${mName}copy" color="blue" dark icon>
	<v-icon>mdi-content-copy</v-icon>
	</v-btn>
	<v-divider class="mx-2" vertical></v-divider>
	<v-btn id="${mName}download" color="blue" dark icon>
	<v-icon>mdi-cloud-download-outline</v-icon>
	</v-btn>
	<v-divider class="mx-2" vertical></v-divider>
	<v-btn id="${mName}close" color="red" dark icon>
	<v-icon>mdi-window-close</v-icon>
	</v-btn>
	</v-toolbar>
	<v-card-text>
	<prism ref="${mName}" id="${mName}"></prism>
	</v-card-text>
	</v-card>"$
	 
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append(sTemplate).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "prism" 
	VElement.AddAttr(":code", xCode)
	VElement.SetData(xCode, sCode)
	
	VElement.AddAttr(":inline", xinline)
	VElement.SetData(xinline, bInline)

	VElement.AddAttr(":language", xlanguage)
	VElement.SetData(xlanguage, sLanguage)
	If bHidden Then
		VElement.GetCard.VShow = sVShow
		VElement.SetData(sVShow, Not(bHidden))
	End If
	VElement.SetData(xTitle, sTitle)
	'
	Dim sDownload As String = $"${mName}download"$
	Dim sCopy As String = $"${mName}copy"$
	Dim sClose As String = $"${mName}close"$
	'
	Dim btnCopy As VueElement
	btnCopy.Initialize(mCallBack, sCopy, sCopy)
	btnCopy.AddAttr("v-clipboard:copy", xCode)
	btnCopy.AddAttr("v-clipboard:success", $"${mName}_copy"$)
	btnCopy.SetMethod(mCallBack, $"${mName}_copy"$, Null)
	VElement.BindVueElement(btnCopy)
	'
	Dim btnDownload As VueElement
	btnDownload.Initialize(mCallBack, sDownload, sDownload)
	btnDownload.SetOnEventOwn(mCallBack, $"${mName}_download"$, "click", Null)
	VElement.BindVueElement(btnDownload)
	'
	Dim btnClose As VueElement
	btnClose.Initialize(mCallBack, sClose, sClose)
	btnClose.SetOnEventOwn(mCallBack, $"${mName}_close"$, "click", Null)
	VElement.BindVueElement(btnDownload)
	'
	VElement.BindAllEvents
End Sub

'download code to a file
Sub Download(C As VueComponent)
	Dim strCode As String = C.GetData(xCode)
	Dim fc As List
	fc.Initialize
	fc.Add(strCode)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,sFileName))
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VPrism 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VPrism 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VPrism 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VPrism 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub UpdateVisible(C As VueComponent, b As Boolean) As VPrism 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub UpdateVisibleOnApp(C As VuetifyApp, b As Boolean) As VPrism 
	C.SetData(sVShow, b) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getCode As String 
	Return sCode 
End Sub

Sub getLanguage As String 
	Return sLanguage 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
End Sub

'Update Title
Sub UpdateCode(C As VueComponent, vCode As String)
	sCode = vCode
	Select sLanguage
	Case "js", "css", "html"
		Dim sformat As String = BeautifySourceCode(sLanguage, vCode)
		sCode = sformat
	End Select
	C.SetData(xCode, sCode)
End Sub

Sub UpdateCodeOnApp(C As VuetifyApp, vCode As String)
	sCode = vCode
	Select sLanguage
	Case "js", "css", "html"
		Dim sformat As String = BeautifySourceCode(sLanguage, vCode)
		sCode = sformat
	End Select
	C.SetData(xCode, sCode)
End Sub

'Update Inline
Sub UpdateInline(C As VueComponent, vInline As Object)
	C.SetData(xinline, vInline)
End Sub

Sub UpdateInlineOnApp(C As VuetifyApp, vInline As Object)
	C.SetData(xinline, vInline)
End Sub

'Update Language
Sub UpdateLanguage(C As VueComponent, vLanguage As Object)
	C.SetData(xlanguage, vLanguage)
End Sub

Sub UpdateLanguageOnApp(C As VuetifyApp, vLanguage As Object)
	C.SetData(xlanguage, vLanguage)
End Sub

private Sub BeautifySourceCode(slang As String, sc As String) As String
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


Sub BindState(C As VueComponent)
	VC = c
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			C.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		C.SetCallBack(k, cb)
	Next
End Sub

Sub BindStateOnApp(c As VuetifyApp)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			C.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		C.SetCallBack(k, cb)
	Next
End Sub

Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("d-sm-none d-md-flex")
End Sub
	
Sub HiddenMDOnly
	AddClass("d-md-none d-lg-flex")
End Sub
	
Sub HiddenLGOnly
	AddClass("d-lg-none d-xl-flex")
End Sub
	
Sub HiddenXLOnly
	AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
	
'End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
'Sub HiddenXLAndDown
	
'End Sub
'
'Sub HiddenXSAndUp
	
'End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
'Sub HiddenXLAndUp
	
'End Sub	

Sub HiddenOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("hidden-xs-only")
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