B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

#DesignerProperty: Key: Size, DisplayName: Transition, FieldType: String, DefaultValue: v-slide-x-transition, Description: Transition, List: v-fab-transition|v-fade-transition|v-expand-transition|v-scale-transition|v-scroll-x-transition|v-scroll-x-reverse-transition|v-scroll-y-transition|v-scroll-y-reverse-transition|v-slide-x-transition|v-slide-x-reverse-transition|v-slide-y-transition|v-slide-y-reverse-transition|transition|transition-group
#DesignerProperty: Key: TransitionName, DisplayName: Transition Name, FieldType: String, DefaultValue: , Description: Transition Name
#DesignerProperty: Key: Appear, DisplayName: Appear, FieldType: Boolean, DefaultValue: false, Description: Appear
#DesignerProperty: Key: Group, DisplayName: Group, FieldType: Boolean, DefaultValue: false, Description: Group
#DesignerProperty: Key: HideOnLeave, DisplayName: HideOnLeave, FieldType: Boolean, DefaultValue: false, Description: HideOnLeave
#DesignerProperty: Key: LeaveAbsolute, DisplayName: LeaveAbsolute, FieldType: Boolean, DefaultValue: false, Description: LeaveAbsolute
#DesignerProperty: Key: Mode, DisplayName: Mode, FieldType: String, DefaultValue: , Description: Mode, List: in-out|none|out-in
#DesignerProperty: Key: Origin, DisplayName: Origin, FieldType: String, DefaultValue: , Description: Origin
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
	Private sSize As String = ""
	Private sTransitionName As String
	Private bAppear As Boolean
Private bGroup As Boolean
Private bHideOnLeave As Boolean
Private bLeaveAbsolute As Boolean
Private sMode As String
Private sOrigin As String
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
		sTransitionName = Props.Get("TransitionName")
		bAppear = Props.Get("Appear")
bGroup = Props.Get("Group")
bHideOnLeave = Props.Get("HideOnLeave")
bLeaveAbsolute = Props.Get("LeaveAbsolute")
sMode = Props.Get("Mode")
sOrigin = Props.Get("Origin")
sSize = Props.Get("Size")
	End If
	
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
	VElement.AddAttr(":appear", bAppear)
	VElement.AddAttr(":group", bGroup)
	VElement.AddAttr(":hide-on-leave", bHideOnLeave)
	VElement.AddAttr(":leave-absolute", bLeaveAbsolute)
	VElement.AddAttr("mode", sMode)
	VElement.AddAttr("origin", sOrigin)
	VElement.AddAttr("name", sTransitionName)
End Sub

public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Sub AddClass(s As String) As VTransition
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VTransition
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VTransition
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VTransition
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub getID As String
	Return mName
End Sub


Sub getHere As String
	Return $"#${mName}"$
End Sub