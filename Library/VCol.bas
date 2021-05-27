﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
' Properties that will be show in the ABStract Designer.  They will be passed in the props map in DesignerCreateView (Case Sensitive!)
#DesignerProperty: Key: AutoID, DisplayName: Auto ID/Name, FieldType: Boolean, DefaultValue: False, Description: Overrides the ID/Name with a random string.
#DesignerProperty: Key: VFor, DisplayName: V-For, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Offset, DisplayName: Offset, FieldType: String, DefaultValue: , Description: Offset
#DesignerProperty: Key: Cols, DisplayName: Cols, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: OffsetSM, DisplayName: OffsetSM, FieldType: String, DefaultValue: , , Description:
#DesignerProperty: Key: OffsetMD, DisplayName: OffsetMD, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: OffsetLG, DisplayName: OffsetLG, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: OffsetXL, DisplayName: OffsetXL, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: SM, DisplayName: SM, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: MD, DisplayName: MD, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: LG, DisplayName: LG, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: XL, DisplayName: XL, FieldType: String, DefaultValue: , Description:
#DesignerProperty: Key: FillHeight, DisplayName: FillHeight, FieldType: Boolean, DefaultValue: False, Description: Fill Height
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: ColorIntensity, DisplayName: Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: TextColor, DisplayName: Text Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: TextColorIntensity, DisplayName: Text Color Intensity, FieldType: String, DefaultValue:  normal, Description: , List: normal|lighten-5|lighten-4|lighten-3|lighten-2|lighten-1|darken-1|darken-2|darken-3|darken-4|accent-1|accent-2|accent-3|accent-4
#DesignerProperty: Key: AlignSelf, DisplayName: Align Self, FieldType: String, DefaultValue: , Description: AlignSelf, List: normal|left|center|right|start|end
#DesignerProperty: Key: Align, DisplayName: Align, FieldType: String, DefaultValue: , Description: Align, List: normal|start|center|end|baseline|stretch
#DesignerProperty: Key: Justify, DisplayName: Justify, FieldType: String, DefaultValue: , Description: Justify, List: normal|start|center|end|space-between|space-around
#DesignerProperty: Key: Dense, DisplayName: Dense, FieldType: Boolean, DefaultValue: False, Description: Dense
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VShow, DisplayName: V-Show, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VIf, DisplayName: V-If, FieldType: String, DefaultValue:  , Description: 
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

Sub Class_Globals
    Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mColor As String = ""
	Private mStyles As String = ""
	Private mAttributes As String = ""
	Public VElement As VueElement
	Private mAlign As String = ""
	Private mJustify As String = ""
	Private mTextColor As String = ""
	Private mTextColorIntensity As String = ""
	
	Private mColorIntensity As String = ""
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private mCols As String = ""
	Private mAlignSelf As String = ""
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
	Private bFillHeight As Boolean
	Private bDense As Boolean
	Private sSM As String
	Private sMD As String
	Private sLG As String
	Private sXL As String
	Private sOffset As String
	Private sOffsetSM As String
	Private sOffsetMD As String
	Private sOffsetLG As String
	Private sOffsetXL As String
	Private sVFor As String
	Private sKey As String
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
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

' this is the place where you create the view in html and run initialize javascript
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mColor = Props.Get("Color")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		mTextColor = Props.Get("TextColor")
		mTextColorIntensity = Props.Get("TextColorIntensity")
		mAlign = Props.Get("Align")
		mJustify = Props.Get("Justify")
		mColorIntensity = Props.Get("ColorIntensity")
		mVShow = Props.Get("VShow")
		mVIf = Props.Get("VIf")
		mCols = Props.Get("Cols")
		mAlignSelf = Props.Get("AlignSelf")
		sMA = Props.Get("MA")
		bDense = Props.Get("Dense")
		sVFor = Props.Get("VFor")
		sKey = Props.Get("Key")
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
		bFillHeight = Props.Get("FillHeight")
		sSM = Props.Get("SM")
		sMD = Props.Get("MD")
		sLG = Props.Get("LG")
		sXL = Props.Get("XL")
		sOffset = Props.Get("Offset")
		sOffsetSM = Props.Get("OffsetSM")
		sOffsetMD = Props.Get("OffsetMD")
		sOffsetLG = Props.Get("OffsetLG")
		sOffsetXL = Props.Get("OffsetXL")
	End If
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else
		mElement = mTarget.Append($"<v-col id="${mName}"></v-col>"$).Get("#" & mName)
	End If
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-col"
	VElement.Classes = mClasses
	VElement.TextColor = VElement.BuildColor(mTextColor, mTextColorIntensity)
	VElement.Color = VElement.BuildColor(mColor, mColorIntensity)
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.setAlign(mAlign)	
	VElement.setJustify(mJustify)
	VElement.VIf = mVIf
	VElement.Cols = mCols
	VElement.AlignSelf = mAlignSelf
	VElement.VShow = mVShow
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
	VElement.FillHeight = bFillHeight
	VElement.AddAttr(":dense", bDense)
	VElement.AddAttr("v-for", sVFor)
	VElement.AddAttr(":key", sKey)
	VElement.AddAttr("sm", sSM)
	VElement.SetAttr("md", sMD)
	VElement.SetAttr("lg", sLG)
	VElement.SetAttr("xl", sXL)
	VElement.SetAttr("offset", sOffset)
	VElement.SetAttr("offset-sm", sOffsetSM)
	VElement.SetAttr("offset-md", sOffsetMD)
	VElement.SetAttr("offset-lg", sOffsetLG)
	VElement.SetAttr("offset-xl", sOffsetXL)
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

Sub AddClass(s As String) As VCol
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VCol
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VCol
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VCol
	VElement.RemoveAttr(p)
	Return Me
End Sub


Sub Visible(VC As VueComponent, b As Boolean)
	VC.SetData(mVShow, b)
	VC.SetData(mVIf, b)
End Sub


Sub getID As String
	Return mName
End Sub