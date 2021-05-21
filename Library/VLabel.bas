B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Caption
#DesignerProperty: Key: Size, DisplayName: Size, FieldType: String, DefaultValue: , Description: Size, List: a|div|h1|h2|h3|h4|h5|h6|label|p|span|v-spacer|v-divider|v-fab-transition|v-fade-transition|v-expand-transition|v-scale-transition|v-scroll-x-transition|v-scroll-x-reverse-transition|v-scroll-y-transition|v-scroll-y-reverse-transition|v-slide-x-transition|v-slide-x-reverse-transition|v-slide-y-transition|v-slide-y-reverse-transition|v-subheader
#DesignerProperty: Key: LoremIpsum, DisplayName: LoremIpsum, FieldType: Boolean, DefaultValue: false, Description: LoremIpsum
#DesignerProperty: Key: Vertical, DisplayName: Vertical, FieldType: Boolean, DefaultValue: false, Description: Vertical
#DesignerProperty: Key: Inset, DisplayName: Inset, FieldType: Boolean, DefaultValue: false, Description: Inset
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: Target, DisplayName: Target, FieldType: String, DefaultValue: , Description: Target, List: _blank|_self|_parent|_top|none
#DesignerProperty: Key: To, DisplayName: To, FieldType: String, DefaultValue: , Description: To
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue: , Description: Border
#DesignerProperty: Key: BorderColor, DisplayName: BorderColor, FieldType: String, DefaultValue: , Description: BorderColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BorderRadius, DisplayName: BorderRadius, FieldType: String, DefaultValue: , Description: BorderRadius
#DesignerProperty: Key: BorderStyle, DisplayName: BorderStyle, FieldType: String, DefaultValue: , Description: BorderStyle, List: none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset|initial|inherit
#DesignerProperty: Key: BorderWidth, DisplayName: BorderWidth, FieldType: String, DefaultValue: , Description: BorderWidth
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue: , Description: Color, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: ColorIntensity, FieldType: String, DefaultValue: , Description: ColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: TextColor, FieldType: String, DefaultValue: , Description: TextColor, List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: TextColorIntensity, FieldType: String, DefaultValue: , Description: TextColorIntensity, List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: MA, DisplayName: MA, FieldType: String, DefaultValue: , Description: MA
#DesignerProperty: Key: MB, DisplayName: MB, FieldType: String, DefaultValue: , Description: MB
#DesignerProperty: Key: ML, DisplayName: ML, FieldType: String, DefaultValue: , Description: ML
#DesignerProperty: Key: MR, DisplayName: MR, FieldType: String, DefaultValue: , Description: MR
#DesignerProperty: Key: MT, DisplayName: MT, FieldType: String, DefaultValue: , Description: MT
#DesignerProperty: Key: MX, DisplayName: MX, FieldType: String, DefaultValue: , Description: MX
#DesignerProperty: Key: MY, DisplayName: MY, FieldType: String, DefaultValue: , Description: MY
#DesignerProperty: Key: PA, DisplayName: PA, FieldType: String, DefaultValue: , Description: PA
#DesignerProperty: Key: PB, DisplayName: PB, FieldType: String, DefaultValue: , Description: PB
#DesignerProperty: Key: PL, DisplayName: PL, FieldType: String, DefaultValue: , Description: PL
#DesignerProperty: Key: PR, DisplayName: PR, FieldType: String, DefaultValue: , Description: PR
#DesignerProperty: Key: PT, DisplayName: PT, FieldType: String, DefaultValue: , Description: PT
#DesignerProperty: Key: PX, DisplayName: PX, FieldType: String, DefaultValue: , Description: PX
#DesignerProperty: Key: PY, DisplayName: PY, FieldType: String, DefaultValue: , Description: PY
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
Sub Class_Globals
    Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private sBorder As String
Private sBorderColor As String
Private sBorderRadius As String
Private sBorderStyle As String
Private sBorderWidth As String
Private sCaption As String
Private sColor As String
Private sColorIntensity As String
Private sHref As String
Private bLoremIpsum As Boolean
Private sMA As String
Private sMB As String
Private sML As String
Private sMR As String
Private sMT As String
Private sMX As String
Private sMY As String
Private sPA As String
Private sPB As String
Private sPL As String
Private sPR As String
Private sPT As String
Private sPX As String
Private sPY As String
Private sSize As String
Private sTarget As String
Private sTextColor As String
Private sTextColorIntensity As String
Private sTo As String
Private sVIf As String
Private sVShow As String
Private bVertical As Boolean
private bInset as boolean
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
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		sBorder = Props.Get("Border")
sBorderColor = Props.Get("BorderColor")
sBorderRadius = Props.Get("BorderRadius")
sBorderStyle = Props.Get("BorderStyle")
sBorderWidth = Props.Get("BorderWidth")
sCaption = Props.Get("Caption")
sColor = Props.Get("Color")
sColorIntensity = Props.Get("ColorIntensity")
sHref = Props.Get("Href")
bLoremIpsum = Props.Get("LoremIpsum")
sMA = Props.Get("MA")
sMB = Props.Get("MB")
sML = Props.Get("ML")
sMR = Props.Get("MR")
sMT = Props.Get("MT")
sMX = Props.Get("MX")
sMY = Props.Get("MY")
sPA = Props.Get("PA")
sPB = Props.Get("PB")
sPL = Props.Get("PL")
sPR = Props.Get("PR")
sPT = Props.Get("PT")
sPX = Props.Get("PX")
sPY = Props.Get("PY")
sSize = Props.Get("Size")
sTarget = Props.Get("Target")
sTextColor = Props.Get("TextColor")
sTextColorIntensity = Props.Get("TextColorIntensity")
sTo = Props.Get("To")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
bVertical = Props.Get("Vertical")
bInset = Props.Get("Inset")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<${sSize} id="${mName}"></${sSize}>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = sSize
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Border = sBorder
VElement.BorderColor = sBorderColor
VElement.BorderRadius = sBorderRadius
VElement.BorderStyle = sBorderStyle
VElement.BorderWidth = sBorderWidth
VElement.Caption = sCaption
VElement.Color = VElement.BuildColor(sColor, sColorIntensity)
VElement.Href = sHref
VElement.LoremIpsum = bLoremIpsum
VElement.MA = sMA
VElement.MB = sMB
VElement.ML = sML
VElement.MR = sMR
VElement.MT = sMT
VElement.MX = sMX
VElement.MY = sMY
VElement.PA = sPA
VElement.PB = sPB
VElement.PL = sPL
VElement.PR = sPR
VElement.PT = sPT
VElement.PX = sPX
VElement.PY = sPY
VElement.Size = sSize
VElement.Target = sTarget
VElement.TextColor = VElement.BuildColor(sTextColor, sTextColorIntensity)
VElement.TextColorIntensity = sTextColorIntensity
VElement.To = sTo
VElement.VIf = sVIf
VElement.VShow = sVShow
VElement.Vertical = bVertical
VElement.Inset = bInset
VElement.BindAllEvents
End Sub
public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub
public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub
Sub AddClass(s As String) As VLabel
	VElement.AddClass(s)
	Return Me
End Sub
Sub AddAttr(p As String, v As Object) As VLabel
	VElement.SetAttr(p, v)
	Return Me
End Sub
Sub AddStyle(p As String, v As String) As VLabel
	VElement.AddStyle(p, v)
	Return Me
End Sub
Sub RemoveAttr(p As String) As VLabel
	VElement.RemoveAttr(p)
	Return Me
End Sub
Sub Visible(VC As VueComponent, b As Boolean) As VLabel
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub
