B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class

#Event: Click (e As BANanoEvent)
#Event: Change (e As BANanoEvent)
#Event: ClickStop (e As BANanoEvent)
#Event: DblClick (e As BANanoEvent)
#Event: MouseMove (e As BANanoEvent)
#Event: MouseOut (e As BANanoEvent)
#Event: KeyUp (e As BANanoEvent)
#Event: KeyPress (e As BANanoEvent)
#Event: ClickAlt (e As BANanoEvent)
#Event: ClickShift (e As BANanoEvent)
#Event: ClickPrevent (e As BANanoEvent)

#DesignerProperty: Key: Ref, DisplayName: Ref, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: TagName, DisplayName: TagName, FieldType: String, DefaultValue: div, Description: tag of the element
#DesignerProperty: Key: Caption, DisplayName: Caption, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: LoremIpsum, DisplayName: LoremIpsum, FieldType: Boolean, DefaultValue: False, Description: Lorem ipsum.
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Value on the element
#DesignerProperty: Key: Label, DisplayName: Label, FieldType: String, DefaultValue: , Description: Label of the element
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: VFor, DisplayName: VFor, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Key, DisplayName: Key, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VText, DisplayName: VText, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VHtml, DisplayName: VHtml, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VModel, DisplayName: VModel, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: States, DisplayName: States, FieldType: String, DefaultValue: , Description: Initial Binding States. Must be a json String.
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Color, DisplayName: Color, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: SlotActivator, DisplayName: SlotActivator, FieldType: String, DefaultValue: , Description: Slot activator
#DesignerProperty: Key: Href, DisplayName: Href, FieldType: String, DefaultValue: , Description: Href
#DesignerProperty: Key: InputType, DisplayName: InputType, FieldType: String, DefaultValue: , Description: Input type
#DesignerProperty: Key: VBindClass, DisplayName: VBindClass, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VBindStyle, DisplayName: VBindStyle, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Slot, DisplayName: Slot, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElse, DisplayName: VElse, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: VElseIf, DisplayName: VElseIf, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BackgroundColor, DisplayName: BackgroundColor, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BackgroundImage, DisplayName: BackgroundImage, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BackgroundRepeat, DisplayName: BackgroundRepeat, FieldType: String, DefaultValue:  , Description: , List: repeat|repeat-x|repeat-y|no-repeat|initial|inherit
#DesignerProperty: Key: Border, DisplayName: Border, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderColor, DisplayName: BorderColor, FieldType: String, DefaultValue:  , Description: , List: amber|black|blue|blue-grey|brown|cyan|deep-orange|deep-purple|green|grey|indigo|light-blue|light-green|lime|orange|pink|purple|red|teal|transparent|white|yellow|primary|secondary|accent|error|info|success|warning|none
#DesignerProperty: Key: BorderRadius, DisplayName: BorderRadius, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: BorderStyle, DisplayName: BorderStyle, FieldType: String, DefaultValue:  , Description: , List: none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset|initial|inherit
#DesignerProperty: Key: BorderWidth, DisplayName: BorderWidth, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FontFamily, DisplayName: FontFamily, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FontSize, DisplayName: FontSize, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: FontStyle, DisplayName: FontStyle, FieldType: String, DefaultValue:  , Description: , List: normal|italic|oblique|initial|inherit
#DesignerProperty: Key: FontWeight, DisplayName: FontWeight, FieldType: String, DefaultValue:  , Description: , List: normal|bold|bolder|lighter|initial|inherit
#DesignerProperty: Key: Margin, DisplayName: Margin, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginBottom, DisplayName: MarginBottom, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginLeft, DisplayName: MarginLeft, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginRight, DisplayName: MarginRight, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginTop, DisplayName: MarginTop, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingBottom, DisplayName: PaddingBottom, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingLeft, DisplayName: PaddingLeft, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingRight, DisplayName: PaddingRight, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingTop, DisplayName: PaddingTop, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: TextAlign, DisplayName: TextAlign, FieldType: String, DefaultValue:  , Description: , List: left|center|right|justify
#DesignerProperty: Key: TextDecoration, DisplayName: TextDecoration, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: OnClick, DisplayName: OnClick, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickStop, DisplayName: OnClickStop, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnChange, DisplayName: OnChange, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnDblClick, DisplayName: OnDblClick, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnMouseMove, DisplayName: OnMouseMove, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnMouseOut, DisplayName: OnMouseOut, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnKeyUp, DisplayName: OnKeyUp, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnKeyPress, DisplayName: OnKeyPress, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickAlt, DisplayName: OnClickAlt, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickShift, DisplayName: OnClickShift, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.
#DesignerProperty: Key: OnClickPrevent, DisplayName: OnClickPrevent, FieldType: String, DefaultValue: , Description: Event arguments to be passed to the attribute.

Sub Class_Globals
Private BANano As BANano 'ignore
Private mName As String 'ignore
Private mEventName As String 'ignore
Private mCallBack As Object 'ignore
Private mTarget As BANanoElement 'ignore
Private mElement As BANanoElement 'ignore
Private mClasses As String = ""
Private mStyle As String = ""
Private mAttributes As String = ""
Private mCaption As String = ""
Private classList As Map
Private styleList As Map
Private attributeList As Map
Private mTagName As String = "div"
Private sbText As StringBuilder
Private mStates As String
Public bindings As Map
Public methods As Map
Private eOnClick As String = ""
Private eOnClickStop As String = ""
Private eOnDblClick As String = ""
Private eOnChange As String = ""
Private eOnClickAlt As String = ""
Private eOnClickShift As String = ""
Private eOnClickPrevent As String = ""
Private eOnKeyPress As String = ""
Private eOnMouseMove As String = ""
Private eOnKeyUp As String = ""
Private eOnMouseOut As String = ""
Private stKey As String = ""
Private stRef As String = ""
Private stSlot As String = ""
Private stVBindClass As String = ""
Private stVBindStyle As String = ""
Private stVElse As String = ""
Private stVElseIf As String = ""
Private stVFor As String = ""
Private stVHtml As String = ""
Private stValue As String = ""
Private stVIf As String = ""
Private stVModel As String = ""
Private stVShow As String = ""
Private stVText As String = ""
Private stBackgroundColor As String = ""
Private stBackgroundImage As String = ""
Private stBackgroundRepeat As String = ""
Private stBorder As String = ""
Private stBorderColor As String = ""
Private stBorderRadius As String = ""
Private stBorderStyle As String = ""
Private stBorderWidth As String = ""
Private stColor As String = ""
Private stFontFamily As String = ""
Private stFontSize As String = ""
Private stFontStyle As String = ""
Private stFontWeight As String = ""
Private stHeight As String = ""
Private stMargin As String = ""
Private stMarginBottom As String = ""
Private stMarginLeft As String = ""
Private stMarginRight As String = ""
Private stMarginTop As String = ""
Private stPadding As String = ""
Private stPaddingBottom As String = ""
Private stPaddingLeft As String = ""
Private stPaddingRight As String = ""
Private stPaddingTop As String = ""
Private stTextAlign As String = ""
Private stTextDecoration As String = ""
Private stLabel As String = ""
Private stWidth As String = ""
Private bLoremIpsum As Boolean = False
	Private stInputType As String = ""
	Private stHref As String = ""
	Private stSlotActivator As String = ""
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
mName = Name.ToLowerCase
mEventName = EventName.ToLowerCase
mCallBack = CallBack
classList.Initialize
styleList.Initialize
attributeList.Initialize
sbText.Initialize
bindings.Initialize
methods.Initialize
End Sub

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
mTarget = Target
If Props <> Null Then
bLoremIpsum = Props.Get("LoremIpsum")
mClasses = Props.Get("Classes")
mAttributes = Props.Get("Attributes")
mStyle = Props.Get("Style")
mTagName = Props.Get("TagName")
mCaption = Props.Get("Caption")
mStates = Props.Get("States")
eOnClick = Props.Get("OnClick")
eOnClickStop = Props.Get("OnClickStop")
eOnChange = Props.Get("OnChange")
eOnDblClick = Props.Get("OnDblClick")
eOnClickAlt = Props.Get("OnClickAlt")
eOnClickShift = Props.Get("OnClickShift")
eOnClickPrevent = Props.Get("OnClickPrevent")
eOnKeyPress = Props.Get("OnKeyPress")
eOnMouseMove = Props.Get("OnMouseMove")
eOnKeyUp = Props.Get("OnKeyUp")
eOnMouseOut = Props.Get("OnMouseOut")
stKey = Props.Get("Key")
stRef = Props.Get("Ref")
stSlot = Props.Get("Slot")
stVBindClass = Props.Get("VBindClass")
stVBindStyle = Props.Get("VBindStyle")
stVElse = Props.Get("VElse")
stVElseIf = Props.Get("VElseIf")
stVFor = Props.Get("VFor")
stVHtml = Props.Get("VHtml")
stVIf = Props.Get("VIf")
stVModel = Props.Get("VModel")
stVShow = Props.Get("VShow")
stVText = Props.Get("VText")
stValue = Props.get("Value")
stBackgroundColor = Props.Get("BackgroundColor")
stBackgroundImage = Props.Get("BackgroundImage")
stBackgroundRepeat = Props.Get("BackgroundRepeat")
stBorder = Props.Get("Border")
stBorderColor = Props.Get("BorderColor")
stBorderRadius = Props.Get("BorderRadius")
stBorderStyle = Props.Get("BorderStyle")
stBorderWidth = Props.Get("BorderWidth")
stColor = Props.Get("Color")
stFontFamily = Props.Get("FontFamily")
stFontSize = Props.Get("FontSize")
stFontStyle = Props.Get("FontStyle")
stFontWeight = Props.Get("FontWeight")
stHeight = Props.Get("Height")
stMargin = Props.Get("Margin")
stMarginBottom = Props.Get("MarginBottom")
stMarginLeft = Props.Get("MarginLeft")
stMarginRight = Props.Get("MarginRight")
stMarginTop = Props.Get("MarginTop")
stPadding = Props.Get("Padding")
stPaddingBottom = Props.Get("PaddingBottom")
stPaddingLeft = Props.Get("PaddingLeft")
stPaddingRight = Props.Get("PaddingRight")
stPaddingTop = Props.Get("PaddingTop")
stTextAlign = Props.Get("TextAlign")
stTextDecoration = Props.Get("TextDecoration")
stLabel = Props.Get("Label")
stWidth = Props.Get("Width")
stInputType = Props.Get("InputType")
stHref = Props.Get("Href")
stSlotActivator = Props.get("SlotActivator")
End If

	AddAttr("v-slot:activator", stSlotActivator)
	AddAttr("href", stHref)
AddAttr("key", stKey)
AddAttr("ref", stRef)
AddAttr("slot", stSlot)
AddAttr("v-bind:class", stVBindClass)
AddAttr("v-bind:style", stVBindStyle)
AddAttr("value", stValue)
AddAttr("v-else", stVElse)
AddAttr("v-else-if", stVElseIf)
AddAttr("v-for", stVFor)
AddAttr("v-html", stVHtml)
AddAttr("v-if", stVIf)
AddAttr("label", stLabel)
AddAttr("v-model", stVModel)
AddAttr("v-show", stVShow)
AddAttr("v-text", stVText)
AddStyle("background-color", stBackgroundColor)
AddStyle("background-image", stBackgroundImage)
AddStyle("background-repeat", stBackgroundRepeat)
AddStyle("border", stBorder)
AddStyle("border-color", stBorderColor)
AddStyle("border-radius", stBorderRadius)
AddStyle("border-style", stBorderStyle)
AddStyle("border-width", stBorderWidth)
AddAttr("color", stColor)
AddStyle("font-family", stFontFamily)
AddStyle("font-size", stFontSize)
AddStyle("font-style", stFontStyle)
AddStyle("font-weight", stFontWeight)
	AddAttr("height", stHeight)
AddStyle("margin", stMargin)
AddStyle("margin-bottom", stMarginBottom)
AddStyle("margin-left", stMarginLeft)
AddStyle("margin-right", stMarginRight)
AddStyle("margin-top", stMarginTop)
AddStyle("padding", stPadding)
AddStyle("padding-bottom", stPaddingBottom)
AddStyle("padding-left", stPaddingLeft)
AddStyle("padding-right", stPaddingRight)
AddStyle("padding-top", stPaddingTop)
AddStyle("text-align", stTextAlign)
AddStyle("text-decoration", stTextDecoration)
	AddAttr("width", stWidth)
	AddAttr("type", stInputType)
AddClass(mClasses)
setAttributes(mAttributes)
setStyles(mStyle)
setStates(mStates)

'link the events, if any
'This activates Click the event exists on the module
SetEvent("Click", "click", eOnClick)
SetEvent("Change", "change", eOnChange)
SetEvent("ClickStop", "Click.Stop", eOnClickStop)
SetEvent("DblClick", "DblClick", eOnDblClick)
SetEvent("MouseMove", "MouseMove", eOnMouseMove)
SetEvent("MouseOut", "MouseOut", eOnMouseOut)
SetEvent("KeyUp", "KeyUp", eOnKeyUp)
SetEvent("KeyPress", "KeyPress", eOnKeyPress)
SetEvent("ClickAlt", "Click.Alt", eOnClickAlt)
SetEvent("ClickShift", "Click.Shift", eOnClickShift)
SetEvent("ClickPrevent", "Click.Prevent", eOnClickPrevent)
'
'build and get the element
Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mName)
End Sub

'add anything from the appendholder
Sub AppendHolder
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	If mElement <> Null Then
		mElement.Append(stemplate)
	Else
		sbText.Append(stemplate)
	End If
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
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
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	mElement = BANano.GetElement($"#${mName}"$)
	If mElement <> Null Then
		mElement.Append(stemplate)
	Else
		sbText.Append(stemplate)
	End If
End Sub

'get the html part of a bananoelement
private Sub BANanoGetHTMLAsIs(id As String) As String
	id = id.tolowercase
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub

'get the html part of a bananoelement
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub


'return the generated html
Sub ToString As String
	If bLoremIpsum Then
		mCaption = BANanoShared.LoremIpsum(1)
	End If
'build the 'class' attribute
Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
AddAttr("class", className)
'build the 'style' attribute
Dim styleName As String = BANanoShared.BuildStyle(styleList)
AddAttr("style", styleName)
'build element internal structure
Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
iStructure = iStructure.trim
Dim rslt As String = $"<${mTagName} id="${mName}" ${iStructure}>${mCaption}${sbText.ToString}</${mTagName}>"$
Return rslt
End Sub

'bind an attribute
Sub SetVBind(prop As String, value As String)
prop = prop.ToLowerCase
value = value.ToLowerCase
prop = $"v-bind:${prop}"$
AddAttr(prop,value)
If value <> "" Then 
	bindings.Put(value, Null)
End If
End Sub

'initialize data
Sub SetData(prop As String, val As Object)
	If prop <> "" Then 
		bindings.Put(prop, val)
	End If
End Sub

'sets the state bindings
public Sub setStates(varBindings As String)
	If varBindings = "" Then Return
	Dim mxItems As List = BANanoShared.StrParse(";", varBindings)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If v.EqualsIgnoreCase("false") Then
			If k <> "" Then 
				bindings.Put(k, False)
			End If
		else if v.EqualsIgnoreCase("true") Then
			If k <> "" Then 
				bindings.Put(k, True)
			End If
		Else
			If k <> "" Then 
				bindings.put(k, v)
			End If
		End If
	Next
End Sub

'add a break
Sub AddBR
sbText.Append("<br>")
End Sub

'add a horizontal rule
Sub AddHR
sbText.Append("<hr>")
End Sub


'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
elID = elID.tolowercase
elID = elID.Replace("#","")
Dim elIT As VueElement
elIT.Initialize(mCallBack, elID, tag)
elIT.SetText(Text)
If loose <> Null Then
For Each k As String In loose
elIT.SetAttr(k, True)
Next
End If
If props <> Null Then
For Each k As String In props.Keys
Dim v As String = props.Get(k)
elIT.SetAttr(k, v)
Next
End If
If styleProps <> Null Then
For Each k As String In styleProps.Keys
Dim v As String = styleProps.Get(k)
elIT.SetAttr(k, v)
Next
End If
If classNames <> Null Then
elIT.AddClasses(classNames)
End If
'convert to string
Dim sElement As String = elIT.tostring
sbText.Append(sElement)
End Sub

'returns the BANanoElement
public Sub getElement() As BANanoElement
	Return mElement
End Sub

'sets the BANanoElement
Sub setElement(varElement As BANanoElement)
	mElement = varElement
End Sub

'returns the tag id
public Sub getID() As String
Return mName
End Sub

'change the id of the element
public Sub setID(varID As String) As String
	varID = varID.tolowercase
	mName = varID
	mElement.SetAttr("id", mName)
End Sub

'add the element to the parent
public Sub AddToParent(targetID As String)
	targetID = targetID.tolowercase
mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
DesignerCreateView(mTarget, Null)
End Sub

'remove the component
public Sub Remove()
mElement.Remove
BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
If mElement <> Null Then
mElement.Trigger(event, params)
End If
End Sub

'add a class
public Sub AddClass(varClass As String)
If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
varClass = varClass.trim
If varClass = "" Then Return
If mElement <> Null Then mElement.AddClass(varClass)
Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
For Each mt As String In mxItems
classList.put(mt, mt)
Next
End Sub

Sub AddClasses(listOfClasses As List)
	Dim strClass As String = BANanoShared.Join(" ", listOfClasses)
	AddClass(strClass)
End Sub

'add a class on condition
public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
If varShouldBe <> varCondition Then Return
If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
varClass = varClass.trim
If varClass = "" Then Return
If mElement <> Null Then mElement.AddClass(varClass)
Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
For Each mt As String In mxItems
classList.put(mt, mt)
Next
End Sub

'add a style
public Sub AddStyle(varProp As String, varStyle As String)
If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return
If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle)
If mElement <> Null Then
Dim aStyle As Map = CreateMap()
aStyle.put(varProp, varStyle)
Dim sStyle As String = BANano.ToJSON(aStyle)
mElement.SetStyle(sStyle)
End If
styleList.put(varProp, varStyle)
End Sub

Sub SetAttr(varProp As String, varValue As String)
	AddAttr(varProp, varValue)
End Sub

'bind dynamic component
Sub BindDynamicComponent(viewID As String, compID As String)
	viewID = viewID.ToLowerCase
	compID = compID.tolowercase
	SetVBindIs(viewID)
	If viewID <> "" Then 
		bindings.Put(viewID, compID)
	End If
End Sub

Sub SetVBindIs(t As String) As VueElement
	t = t.tolowercase
	SetAttr("v-bind:is", t)
	Return Me
End Sub


'change the text of the element
Sub SetText(varText As String)
	AddChild(varText)
End Sub

Sub Bind(attr As String, value As String)
	AddAttr($":${attr}"$, value)	
End Sub

'add an attribute
Public Sub AddAttr(varProp As String, varValue As String) 
	If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return 
	If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue) 
	'we are adding a boolean 
	If BANano.IsBoolean(varValue) Then 
		If varValue = True Then  
			attributeList.put(varProp, varValue) 
			If mElement <> Null Then mElement.SetAttr(varProp, varValue) 
		End If 
	Else 
		'we are adding a string 
		If varValue.StartsWith(":") Then 
			Dim rname As String = BANanoShared.MidString2(varValue, 2)
			If rname.Contains(".") = False Then 
				If rname <> "" Then 
					bindings.Put(rname, Null)
				End If
			End If
			attributeList.put($":${varProp}"$, rname)
			If mElement <> Null Then mElement.SetAttr($":${varProp}"$, rname)
		Else
			'does not start with : 
			If mElement <> Null Then mElement.SetAttr(varProp, varValue) 
			attributeList.put(varProp, varValue) 
			Select Case varProp 
			Case "v-model", "v-show", "v-if", "v-else-if", "required", "disabled", "readonly" 
				If varValue <> "" Then 
					bindings.Put(varValue, Null) 
				End If
			End Select 
		End If 
	End If 
	Return 
End Sub

Sub RemoveCodeBindings(b As List)
	For Each k As String In b
		If k <> "" Then
			bindings.Remove(k)
		End If
	Next
End Sub

'returns the class names
Public Sub getClasses() As String
	Dim sbClass As StringBuilder
	sbClass.Initialize
	For Each k As String In classList.Keys
		sbClass.Append(k).Append(" ")
	Next
	mClasses = sbClass.ToString
	Return mClasses
End Sub

Sub setClasses(varClasses As String)
	AddClass(varClasses)
End Sub

'set the style use a valid JSON string with {}
public Sub setStyle(varStyle As String)
If mElement <> Null Then
mElement.SetStyle(varStyle)
End If
Dim mres As Map = BANano.FromJSON(varStyle)
For Each k As String In mres.Keys
Dim v As String = mres.Get(k)
styleList.put(k, v)
Next
End Sub

'returns the style as JSON
public Sub getStyle() As String
Dim sbStyle As StringBuilder
sbStyle.Initialize
sbStyle.Append("{")
For Each k As String In styleList.Keys
Dim v As String = styleList.Get(k)
sbStyle.Append(k).Append(":").Append(v).Append(",")
Next
sbStyle.Append("}")
mStyle = sbStyle.ToString
Return mStyle
End Sub

'sets the attributes
public Sub setAttributes(varAttributes As String)
Dim mxItems As List = BANanoShared.StrParse(";", varAttributes)
For Each mt As String In mxItems
Dim k As String = BANanoShared.MvField(mt,1,"=")
Dim v As String = BANanoShared.MvField(mt,2,"=")
If mElement <> Null Then mElement.SetAttr(k, v)
attributeList.put(k, v)
Next
End Sub

'sets the styles from the designer
public Sub setStyles(varStyles As String)
Dim mxItems As List = BANanoShared.StrParse(";", varStyles)
For Each mt As String In mxItems
Dim k As String = BANanoShared.MvField(mt,1,"=")
Dim v As String = BANanoShared.MvField(mt,2,"=")
AddStyle(k, v)
Next
End Sub

'returns the attributes
public Sub getAttributes() As String
Dim sbAttr As StringBuilder
sbAttr.Initialize
For Each k As String In attributeList.Keys
Dim v As String = attributeList.Get(k)
sbAttr.Append(k).Append("=").Append(v).Append(";")
Next
mAttributes = sbAttr.ToString
Return mAttributes
End Sub

'sets the caption
public Sub setCaption(varCaption As String)
If mElement <> Null Then
mElement.SetHTML(BANano.SF(varCaption))
End If
mCaption = varCaption
End Sub

'returns the caption
public Sub getCaption() As String
Return mCaption
End Sub

public Sub setKey(varKey As String)
AddAttr("key", varKey)
stKey = varKey
End Sub

public Sub getKey() As String
Return stKey
End Sub

public Sub setSlotActivator(varSlotActivator As String)
	AddAttr("v-slot:activator", varSlotActivator)
	stSlotActivator = varSlotActivator
End Sub

public Sub getSlotActivator() As String
	Return stSlotActivator
End Sub


public Sub setRef(varRef As String)
AddAttr("ref", varRef)
stRef = varRef
End Sub

public Sub getRef() As String
Return stRef
End Sub


public Sub setLabel(varLabel As String)
AddAttr("label", varLabel)
stLabel = varLabel
End Sub

public Sub getLabel() As String
Return stLabel
End Sub

public Sub setSlot(varSlot As String)
AddAttr("slot", varSlot)
stSlot = varSlot
End Sub

public Sub getSlot() As String
Return stSlot
End Sub

public Sub setVBindClass(varVBindClass As String)
AddAttr("v-bind:class", varVBindClass)
stVBindClass = varVBindClass
End Sub

public Sub getVBindClass() As String
Return stVBindClass
End Sub

public Sub setVBindStyle(varVBindStyle As String)
AddAttr("v-bind:style", varVBindStyle)
stVBindStyle = varVBindStyle
End Sub

public Sub getVBindStyle() As String
Return stVBindStyle
End Sub

public Sub setVElse(varVElse As String)
AddAttr("v-else", varVElse)
stVElse = varVElse
End Sub

public Sub getVElse() As String
Return stVElse
End Sub

public Sub setVElseIf(varVElseIf As String)
AddAttr("v-else-if", varVElseIf)
stVElseIf = varVElseIf
End Sub

public Sub getVElseIf() As String
Return stVElseIf
End Sub

public Sub setVFor(varVFor As String)
AddAttr("v-for", varVFor)
stVFor = varVFor
End Sub

public Sub getVFor() As String
Return stVFor
End Sub

public Sub setVHtml(varVHtml As String)
AddAttr("v-html", varVHtml)
stVHtml = varVHtml
End Sub

public Sub getVHtml() As String
Return stVHtml
End Sub

public Sub setVIf(varVIf As String)
AddAttr("v-if", varVIf)
stVIf = varVIf
End Sub

public Sub getVIf() As String
Return stVIf
End Sub

public Sub setVModel(varVModel As String)
AddAttr("v-model", varVModel)
stVModel = varVModel
End Sub

public Sub getVModel() As String
Return stVModel
End Sub

public Sub setValue(varValue As String)
	AddAttr("value", varValue)
	stValue = varValue
End Sub

public Sub getValue() As String
	Return stValue
End Sub

public Sub setVShow(varVShow As String)
AddAttr("v-show", varVShow)
stVShow = varVShow
End Sub

public Sub getVShow() As String
Return stVShow
End Sub

public Sub setVText(varVText As String)
AddAttr("v-text", varVText)
stVText = varVText
End Sub

public Sub getVText() As String
Return stVText
End Sub

public Sub setBackgroundColor(varBackgroundColor As String)
AddStyle("background-color", varBackgroundColor)
stBackgroundColor = varBackgroundColor
End Sub

public Sub getBackgroundColor() As String
Return stBackgroundColor
End Sub

public Sub setBackgroundImage(varBackgroundImage As String)
AddStyle("background-image", varBackgroundImage)
stBackgroundImage = varBackgroundImage
End Sub

public Sub getBackgroundImage() As String
Return stBackgroundImage
End Sub

public Sub setBackgroundRepeat(varBackgroundRepeat As String)
AddStyle("background-repeat", varBackgroundRepeat)
stBackgroundRepeat = varBackgroundRepeat
End Sub

public Sub getBackgroundRepeat() As String
Return stBackgroundRepeat
End Sub

public Sub setBorder(varBorder As String)
AddStyle("border", varBorder)
stBorder = varBorder
End Sub

public Sub getBorder() As String
Return stBorder
End Sub

public Sub setBorderColor(varBorderColor As String)
AddStyle("border-color", varBorderColor)
stBorderColor = varBorderColor
End Sub

public Sub getBorderColor() As String
Return stBorderColor
End Sub

public Sub setBorderRadius(varBorderRadius As String)
AddStyle("border-radius", varBorderRadius)
stBorderRadius = varBorderRadius
End Sub

public Sub getBorderRadius() As String
Return stBorderRadius
End Sub

public Sub setBorderStyle(varBorderStyle As String)
AddStyle("border-style", varBorderStyle)
stBorderStyle = varBorderStyle
End Sub

public Sub getBorderStyle() As String
Return stBorderStyle
End Sub

public Sub setBorderWidth(varBorderWidth As String)
AddStyle("border-width", varBorderWidth)
stBorderWidth = varBorderWidth
End Sub

public Sub getBorderWidth() As String
Return stBorderWidth
End Sub

public Sub setColor(varColor As String)
AddAttr("color", varColor)
stColor = varColor
End Sub

public Sub getColor() As String
Return stColor
End Sub

public Sub setFontFamily(varFontFamily As String)
AddStyle("font-family", varFontFamily)
stFontFamily = varFontFamily
End Sub

public Sub getFontFamily() As String
Return stFontFamily
End Sub

public Sub setFontSize(varFontSize As String)
AddStyle("font-size", varFontSize)
stFontSize = varFontSize
End Sub

public Sub getFontSize() As String
Return stFontSize
End Sub

public Sub setFontStyle(varFontStyle As String)
AddStyle("font-style", varFontStyle)
stFontStyle = varFontStyle
End Sub

public Sub getFontStyle() As String
Return stFontStyle
End Sub

public Sub setFontWeight(varFontWeight As String)
AddStyle("font-weight", varFontWeight)
stFontWeight = varFontWeight
End Sub

public Sub getFontWeight() As String
Return stFontWeight
End Sub

public Sub setHeight(varHeight As String)
	AddAttr("height", varHeight)
stHeight = varHeight
End Sub

public Sub getHeight() As String
Return stHeight
End Sub

public Sub setMargin(varMargin As String)
AddStyle("margin", varMargin)
stMargin = varMargin
End Sub

public Sub getMargin() As String
Return stMargin
End Sub

public Sub setMarginBottom(varMarginBottom As String)
AddStyle("margin-bottom", varMarginBottom)
stMarginBottom = varMarginBottom
End Sub

public Sub getMarginBottom() As String
Return stMarginBottom
End Sub

public Sub setMarginLeft(varMarginLeft As String)
AddStyle("margin-left", varMarginLeft)
stMarginLeft = varMarginLeft
End Sub

public Sub getMarginLeft() As String
Return stMarginLeft
End Sub

public Sub setMarginRight(varMarginRight As String)
AddStyle("margin-right", varMarginRight)
stMarginRight = varMarginRight
End Sub

public Sub getMarginRight() As String
Return stMarginRight
End Sub

public Sub setMarginTop(varMarginTop As String)
AddStyle("margin-top", varMarginTop)
stMarginTop = varMarginTop
End Sub

public Sub getMarginTop() As String
Return stMarginTop
End Sub

public Sub setPadding(varPadding As String)
AddStyle("padding", varPadding)
stPadding = varPadding
End Sub

public Sub getPadding() As String
Return stPadding
End Sub

public Sub setPaddingBottom(varPaddingBottom As String)
AddStyle("padding-bottom", varPaddingBottom)
stPaddingBottom = varPaddingBottom
End Sub

public Sub getPaddingBottom() As String
Return stPaddingBottom
End Sub

public Sub setPaddingLeft(varPaddingLeft As String)
AddStyle("padding-left", varPaddingLeft)
stPaddingLeft = varPaddingLeft
End Sub

public Sub getPaddingLeft() As String
Return stPaddingLeft
End Sub

public Sub setPaddingRight(varPaddingRight As String)
AddStyle("padding-right", varPaddingRight)
stPaddingRight = varPaddingRight
End Sub

public Sub getPaddingRight() As String
Return stPaddingRight
End Sub

public Sub setPaddingTop(varPaddingTop As String)
AddStyle("padding-top", varPaddingTop)
stPaddingTop = varPaddingTop
End Sub

public Sub getPaddingTop() As String
Return stPaddingTop
End Sub


public Sub setTagName(varTagName As String)
mTagName = varTagName
End Sub

public Sub getTagName() As String
Return mTagName
End Sub

public Sub setTextAlign(varTextAlign As String)
AddStyle("text-align", varTextAlign)
stTextAlign = varTextAlign
End Sub

public Sub getTextAlign() As String
Return stTextAlign
End Sub

public Sub setTextDecoration(varTextDecoration As String)
AddStyle("text-decoration", varTextDecoration)
stTextDecoration = varTextDecoration
End Sub

public Sub getTextDecoration() As String
Return stTextDecoration
End Sub

public Sub setWidth(varWidth As String)
AddAttr("width", varWidth)
stWidth = varWidth
End Sub

public Sub getWidth() As String
Return stWidth
End Sub

'add a child component
Sub AddChild(child As String)
sbText.Append(child)
End Sub

private Sub SetEvent(eventName As String, attrName As String, eventValue As String)
	Dim sName As String = $"${mEventName}_${eventName}"$
	sName = sName.tolowercase
	attrName = attrName.tolowercase
	If SubExists(mCallBack, sName) = False Then Return
	If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = ""
	Dim sCode As String = $"${sName}(${eventValue})"$
	AddAttr($"v-on:${attrName}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

'define method
Sub OnMulti(EventHandler As String, eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	EventHandler = EventHandler.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
	'
	Dim sName As String = $"${EventHandler}_${seventname}"$
	If SubExists(mCallBack, sName) = False Then Return
	'
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${sName}(${args})"$
	AddAttr($"v-on:${eventName}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

'on event
Sub On(eventName As String, args As String)    'ignoredeadcode
	eventName = eventName.tolowercase
	'
	Dim seventname As String = eventName
	seventname = seventname.Replace(".", "")
	seventname = seventname.Replace(":", "")
	'
	Dim sName As String = $"${mEventName}_${seventname}"$
	If SubExists(mCallBack, sName) = False Then Return
	'
	If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = ""
	Dim sCode As String = $"${sName}(${args})"$
	AddAttr($"v-on:${eventName}"$, sCode)
	'arguments for the event
	Dim e As Object 'ignore
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e))
	methods.Put(sName, cb)
End Sub

