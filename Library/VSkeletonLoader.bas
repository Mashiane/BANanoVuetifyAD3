B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: SkeletonType, DisplayName: Types(s), FieldType: String, DefaultValue: card1, Description: Types(s)
#DesignerProperty: Key: Boilerplate, DisplayName: Boilerplate, FieldType: Boolean, DefaultValue: false, Description: Boilerplate
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Elevation, DisplayName: Elevation, FieldType: String, DefaultValue: , Description: Elevation
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: Light, DisplayName: Light, FieldType: Boolean, DefaultValue: false, Description: Light
#DesignerProperty: Key: Loading, DisplayName: Loading, FieldType: String, DefaultValue: skeleton1, Description: Loading
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: 300, Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Tile, DisplayName: Tile, FieldType: Boolean, DefaultValue: false, Description: Tile
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition, List: none|fab-transition|fade-transition|expand-transition|scale-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition
#DesignerProperty: Key: Types, DisplayName: Types, FieldType: String, DefaultValue: , Description: Types
#DesignerProperty: Key: VIf, DisplayName: VIf, FieldType: String, DefaultValue: , Description: VIf
#DesignerProperty: Key: VShow, DisplayName: VShow, FieldType: String, DefaultValue: , Description: VShow
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
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
	Private bBoilerplate As Boolean
Private bDark As Boolean
Private sElevation As String
Private sHeight As String
Private bLight As Boolean
Private sLoading As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sSkeletonType As String
Private bTile As Boolean
Private sTransition As String
Private sTypes As String
Private sVIf As String
Private sVShow As String
Private sWidth As String
Private xitems As List
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
	xitems.Initialize 
	End Sub
	
Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		mClasses = Props.Get("Classes")
		mStyles = Props.Get("Styles")
		mAttributes = Props.Get("Attributes")
		bBoilerplate = Props.Get("Boilerplate")
bDark = Props.Get("Dark")
sElevation = Props.Get("Elevation")
sHeight = Props.Get("Height")
bLight = Props.Get("Light")
sLoading = Props.Get("Loading")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sSkeletonType = Props.Get("SkeletonType")
bTile = Props.Get("Tile")
sTransition = Props.Get("Transition")
sTypes = Props.Get("Types")
sVIf = Props.Get("VIf")
sVShow = Props.Get("VShow")
sWidth = Props.Get("Width")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-skeleton-loader id="${mName}"></v-skeleton-loader>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-skeleton-loader"
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.AddAttr(":boilerplate", bBoilerplate)
VElement.AddAttr(":dark", bDark)
VElement.AddAttr("elevation", sElevation)
VElement.AddAttr("height", sHeight)
VElement.AddAttr(":light", bLight)
VElement.AddAttr("loading", sLoading)
VElement.AddAttr("max-height", sMaxHeight)
VElement.AddAttr("max-width", sMaxWidth)
VElement.AddAttr("min-height", sMinHeight)
VElement.AddAttr("min-width", sMinWidth)
VElement.AddAttr(":type", sSkeletonType)
VElement.AddAttr(":tile", bTile)
VElement.AddAttr("transition", sTransition)
VElement.AddAttr("types", sTypes)
VElement.AddAttr("v-if", sVIf)
VElement.AddAttr("v-show", sVShow)
VElement.AddAttr("width", sWidth)
VElement.SetData(sLoading, False)
VElement.SetData(sSkeletonType, "card")
VElement.BindAllEvents
End Sub

Sub Actions As VSkeletonLoader
	xitems.Add("actions")
	Return Me
End Sub	

Sub Article As VSkeletonLoader
	xitems.Add("article")
	Return Me
End Sub	

Sub Avatar As VSkeletonLoader
	xitems.Add("avatar")
	Return Me
End Sub	

Sub Button As VSkeletonLoader
xitems.Add("button")
Return Me
End Sub

Sub Card As VSkeletonLoader
xitems.Add("card")
Return Me
End Sub

Sub CardAvatar As VSkeletonLoader
xitems.Add("card-avatar")
Return Me
End Sub

Sub CardHeading As VSkeletonLoader
xitems.Add("card-heading")
Return Me
End Sub

Sub Chip As VSkeletonLoader
xitems.Add("chip")
Return Me
End Sub

Sub DatePicker As VSkeletonLoader
xitems.Add("date-picker")
Return Me
End Sub

Sub DatePickerOptions As VSkeletonLoader
xitems.Add("date-picker-options")
Return Me
End Sub

Sub DatePickerDays As VSkeletonLoader
xitems.Add("date-picker-days")
Return Me
End Sub

Sub Heading As VSkeletonLoader
xitems.Add("heading")
Return Me
End Sub

Sub Clear(VC As VueComponent)
	xitems.Initialize
	Dim sItems As String = BANanoShared.Join(",", xitems)
	VC.SetData(sSkeletonType, sItems)
End Sub

Sub Refresh(VC As VueComponent)
	Dim sItems As String = BANanoShared.Join(",", xitems)
	VC.SetData(sSkeletonType, sItems)
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

Sub AddClass(s As String) As VSkeletonLoader
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VSkeletonLoader
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VSkeletonLoader
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VSkeletonLoader
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Visible(VC As VueComponent, b As Boolean) As VSkeletonLoader
	VC.SetData(sVIf, b)
	VC.SetData(sVShow, b)
	Return Me
End Sub

Sub Image As VSkeletonLoader
xitems.Add("image")
Return Me
End Sub
Sub ListItem As VSkeletonLoader
xitems.Add("list-item")
Return Me
End Sub
Sub ListItemAvatar As VSkeletonLoader
xitems.Add("list-item-avatar")
Return Me
End Sub
Sub ListItemTwoLine As VSkeletonLoader
xitems.Add("list-item-two-line")
Return Me
End Sub
Sub ListItemAvatarTwoLine As VSkeletonLoader
xitems.Add("list-item-avatar-two-line")
Return Me
End Sub
Sub ListItemThreeLine As VSkeletonLoader
xitems.Add("list-item-three-line")
Return Me
End Sub
Sub ListItemAvatarThreeLine As VSkeletonLoader
xitems.Add("list-item-avatar-three-line")
Return Me
End Sub
Sub Paragraph As VSkeletonLoader
xitems.Add("paragraph")
Return Me
End Sub
Sub Sentences As VSkeletonLoader
xitems.Add("sentences")
Return Me
End Sub
Sub Table As VSkeletonLoader
xitems.Add("table")
Return Me
End Sub
Sub TableHeading As VSkeletonLoader
xitems.Add("table-heading")
Return Me
End Sub
Sub TableThead As VSkeletonLoader
xitems.Add("table-thead")
Return Me
End Sub
Sub TableTbody As VSkeletonLoader
xitems.Add("table-tbody")
Return Me
End Sub
Sub TableRowDivider As VSkeletonLoader
xitems.Add("table-row-divider")
Return Me
End Sub
Sub TableRow As VSkeletonLoader
xitems.Add("table-row")
Return Me
End Sub
Sub TableCell As VSkeletonLoader
xitems.Add("table-cell")
Return Me
End Sub
Sub TableTfoot As VSkeletonLoader
xitems.Add("table-tfoot")
Return Me
End Sub
Sub Text As VSkeletonLoader
xitems.Add("text")
Return Me
End Sub


Sub getID As String
	Return mName
End Sub