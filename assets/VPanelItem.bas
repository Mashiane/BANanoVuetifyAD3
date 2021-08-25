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

#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Hidden, DisplayName: Hidden, FieldType: Boolean, DefaultValue: False, Description: Hidden
#DesignerProperty: Key: Title, DisplayName: Title, FieldType: String, DefaultValue: Panel Item, Description: Title
#DesignerProperty: Key: Icon, DisplayName: Icon, FieldType: String, DefaultValue: mdi-account-multiple, Description: Icon
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: orange, Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Colorintensity, FieldType: String, DefaultValue: normal, Description: Colorintensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: Chart, DisplayName: Chart, FieldType: String, DefaultValue: , Description: Chart
#DesignerProperty: Key: StartNumber, DisplayName: Start Number, FieldType: Int, DefaultValue: 0, Description: StartNumber
#DesignerProperty: Key: EndNumber, DisplayName: End Number, FieldType: Int, DefaultValue: 3000, Description: EndNumber
#DesignerProperty: Key: Duration, DisplayName: Duration, FieldType: Int, DefaultValue: 3000, Description: Duration
#DesignerProperty: Key: AutoPlay, DisplayName: AutoPlay, FieldType: Boolean, DefaultValue: True, Description: AutoPlay
#DesignerProperty: Key: UseEasing, DisplayName: UseEasing, FieldType: Boolean, DefaultValue: True, Description: UseEasing
#DesignerProperty: Key: Decimals, DisplayName: Decimals, FieldType: String, DefaultValue: 0, Description: Decimals
#DesignerProperty: Key: Decimal, DisplayName: Decimal, FieldType: String, DefaultValue: ., Description: Decimal
#DesignerProperty: Key: Separator, DisplayName: Separator, FieldType: String, DefaultValue: , Description: Separator
#DesignerProperty: Key: Prefix, DisplayName: Prefix, FieldType: String, DefaultValue: , Description: Separator
#DesignerProperty: Key: Suffix, DisplayName: Suffix, FieldType: String, DefaultValue: , Description: Suffix

Sub Class_Globals 
    Private BANano As BANano 'ignore 
	Private mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore 
	Public VElement As VueElement 
	Private sChart As String 'ignore
	Private sColor As String
	Private sColorIntensity As String
	Private iDuration As Int
	Private iEndNumber As Int
	Private sIcon As String
	Private iStartNumber As Int
	Private sTitle As String
	Private bAutoPlay As Boolean
	Private bUseEasing As Boolean
	Private sDecimals As String
	Private sDecimal As String
	Private sSeparator As String
	Private sPrefix As String
	Private sSuffix As String
	Private VC As VueComponent		'ignore
	Private bHidden As Boolean
	Private sVShow As String
End Sub

Sub Initialize (CallBack As Object, Name As String, EventName As String) 
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
	End Sub

Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
	mTarget = Target 
	If Props <> Null Then 
		sChart = Props.GetDefault("Chart", "")
		sColor = Props.GetDefault("Color", "")
		sColorIntensity = Props.GetDefault("ColorIntensity", "")
		iDuration = Props.GetDefault("Duration", 3000)
		iEndNumber = Props.GetDefault("EndNumber", 3000)
		sIcon = Props.GetDefault("Icon", "mdi-account-multiple")
		iStartNumber = Props.GetDefault("StartNumber", 1)
		sTitle = Props.GetDefault("Title", "Panel Item")
		bAutoPlay = Props.Get("AutoPlay")
		bUseEasing = Props.Get("UseEasing")
		sDecimals = Props.Get("Decimals")
		sDecimal = Props.Get("Decimal")
		sSeparator = Props.Get("Separator")
		sPrefix = Props.Get("Prefix")
		sSuffix = Props.Get("Suffix")
		bHidden = Props.GetDefault("Hidden", False)
		bHidden = BANanoShared.parseBool(bHidden)
 	End If 
	' 
	bAutoPlay = BANanoShared.parseBool(bAutoPlay)
	bUseEasing = BANanoShared.parseBool(bUseEasing)
		
	Dim sTemplate As String = $"<v-col id="${mName}" cols="12" sm="6" md="3">
    <v-card class="mx-auto">
      <v-list-item three-line>
        <v-list-item-avatar size="80">
          <v-icon size="64" :color="${mName}color">{{ ${mName}icon }}</v-icon>
        </v-list-item-avatar>
        <v-list-item-content>
          <v-list-item-title class="title font-weight-light">{{ ${mName}title }}</v-list-item-title>
          <v-list-item-subtitle>
            <count-to id="${mName}countto" :start-val="${mName}start" :end-val="${mName}end" :duration="${mName}duration" class="title font-weight-bold"/>
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
    </v-card>
  </v-col>"$
	
	'build and get the element 
	If BANano.Exists($"#${mName}"$) Then 
		mElement = BANano.GetElement($"#${mName}"$) 
	Else	 
		mElement = mTarget.Append(sTemplate).Get("#" & mName) 
	End If 
	' 
	VElement.Initialize(mCallBack, mName, mName) 
	VElement.TagName = "v-col" 
	VElement.SetData($"${mName}color"$, VElement.BuildColor(sColor, sColorIntensity))
	VElement.SetData($"${mName}duration"$, iDuration)
	VElement.SetData($"${mName}end"$, iEndNumber)
	VElement.SetData($"${mName}icon"$, sIcon)
	VElement.SetData($"${mName}start"$, iStartNumber)
	VElement.SetData($"${mName}title"$, sTitle)
	VElement.SetOnEvent(mCallBack, "click", Null)
	If bHidden Then
	VElement.VShow = sVShow
	VElement.SetData(sVShow, Not(bHidden))
	End If
	'get count to
	Dim sCountTo As String = $"${mName}countto"$
	Dim countTo As VueElement
	countTo.Initialize(mCallBack, sCountTo, sCountTo)
	countTo.AddAttr("suffix", sSuffix)
	countTo.AddAttr("prefix", sPrefix)
	countTo.AddAttr("separator", sSeparator)
	countTo.AddAttr("decimal", sDecimal)
	countTo.AddAttr("decimals", sDecimals)
	countTo.AddAttr(":use-easing", bUseEasing)
	countTo.AddAttr(":autoplay", bAutoPlay)
	
	VElement.BindAllEvents
End Sub

Sub AddToParent(targetID As String) 
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase) 
	DesignerCreateView(mTarget, Null) 
End Sub

Sub Remove() 
	mElement.Remove 
	BANano.SetMeToNull 
End Sub

Sub AddClass(s As String) As VPanelItem 
	VElement.AddClass(s) 
	Return Me 
End Sub

Sub AddAttr(p As String, v As Object) As VPanelItem 
	VElement.SetAttr(p, v) 
	Return Me 
End Sub

Sub AddStyle(p As String, v As String) As VPanelItem 
	VElement.AddStyle(p, v) 
	Return Me 
End Sub

Sub RemoveAttr(p As String) As VPanelItem 
	VElement.RemoveAttr(p) 
	Return Me 
End Sub

Sub getID As String 
	Return mName 
End Sub

Sub getHere As String 
	Return $"#${mName}"$ 
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

'Update Color
Sub UpdateColor(C As VueComponent, vColor As String)
	C.SetData($"${mName}color"$, vColor)
End Sub

'Update Duration
Sub UpdateDuration(C As VueComponent, vDuration As Int)
	C.SetData($"${mName}duration"$, vDuration)
End Sub

'Update EndNumber
Sub UpdateEnd(C As VueComponent, vEndNumber As Int)
	C.SetData($"${mName}end"$, vEndNumber)
End Sub

'Update Icon
Sub UpdateIcon(C As VueComponent, vIconx As String)
	C.SetData($"${mName}icon"$, vIconx)
End Sub

'Update StartNumber
Sub UpdateStart(C As VueComponent, vStartNumber As Int)	
	C.SetData($"${mName}start"$, vStartNumber)
End Sub

'Update Title
Sub UpdateTitle(C As VueComponent, vTitle As String)
	C.SetData($"${mName}title"$, vTitle)
End Sub

'Update Color
Sub UpdateColorOnApp(C As VuetifyApp, vColor As String)
	C.SetData($"${mName}color"$, vColor)
End Sub

'Update Duration
Sub UpdateDurationOnApp(C As VuetifyApp, vDuration As Int)
	C.SetData($"${mName}duration"$, vDuration)
End Sub

'Update EndNumber
Sub UpdateEndOnApp(C As VuetifyApp, vEndNumber As Int)
	C.SetData($"${mName}end"$, vEndNumber)
End Sub

'Update Icon
Sub UpdateIconOnApp(C As VuetifyApp, vIconx As String)
	C.SetData($"${mName}icon"$, vIconx)
End Sub

'Update StartNumber
Sub UpdateStartOnApp(C As VuetifyApp, vStartNumber As Int)	
	C.SetData($"${mName}start"$, vStartNumber)
End Sub

'Update Title
Sub UpdateTitleOnApp(C As VuetifyApp, vTitle As String)
	C.SetData($"${mName}title"$, vTitle)
End Sub


Sub OnClick(args As String)
	VElement.SetOnEventOwn(mCallBack, $"${mName}_click"$, "click", args)
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