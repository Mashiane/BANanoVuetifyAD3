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

	Dim sTemplate As String = $"<v-card v-show="${sVShow}">
	<v-toolbar dense flat>
	<v-card-title>{{ ${xTitle} }}</v-card-title><v-spacer></v-spacer>
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

	VElement.SetData(sVShow, Not(bHidden))
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
Sub Download(VC As VueComponent)
	Dim strCode As String = VC.GetData(xCode)
	Dim fc As List
	fc.Initialize
	fc.Add(strCode)
	Dim blob As BANanoObject
	blob.Initialize2("Blob",Array(fc, CreateMap("type": "text/plain;charset=utf-8")))
	BANano.RunJavascriptMethod("saveAs",Array(blob,sFileName))
End Sub

public Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

public Sub Remove() 
	mTarget.Empty 
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

Sub UpdateVisible(VC As VueComponent, b As Boolean) As VPrism 
	VC.SetData(sVShow, b) 
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
Sub UpdateCode(VC As VueComponent, vCode As String)
	sCode = vCode
	Select sLanguage
	Case "js", "css", "html"
		Dim sformat As String = BeautifySourceCode(sLanguage, vCode)
		sCode = sformat
	End Select
	VC.SetData(xCode, sCode)
End Sub

'Update Inline
Sub UpdateInline(VC As VueComponent, vInline As Object)
	VC.SetData(xinline, vInline)
End Sub

'Update Language
Sub UpdateLanguage(VC As VueComponent, vLanguage As Object)
	VC.SetData(xlanguage, vLanguage)
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


Sub BindState(VC As VueComponent)
	Dim mbindings As Map = VElement.bindings
	Dim mmethods As Map = VElement.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			VC.SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		VC.SetCallBack(k, cb)
	Next
End Sub