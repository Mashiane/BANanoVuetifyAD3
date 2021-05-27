﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

'Custom BANano View class
#Event: Click (e As BANanoEvent)

#DesignerProperty: Key: Src, DisplayName: Src, FieldType: String, DefaultValue: , Description: Src
#DesignerProperty: Key: LazySrc, DisplayName: LazySrc, FieldType: String, DefaultValue: , Description: LazySrc
#DesignerProperty: Key: Alt, DisplayName: Alt, FieldType: String, DefaultValue: , Description: Alt
#DesignerProperty: Key: AspectRatio, DisplayName: AspectRatio, FieldType: String, DefaultValue: , Description: AspectRatio
#DesignerProperty: Key: Contain, DisplayName: Contain, FieldType: Boolean, DefaultValue: false, Description: Contain
#DesignerProperty: Key: Dark, DisplayName: Dark, FieldType: Boolean, DefaultValue: false, Description: Dark
#DesignerProperty: Key: Height, DisplayName: Height, FieldType: String, DefaultValue: , Description: Height
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, FieldType: String, DefaultValue: 200 , Description: MaxHeight
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, FieldType: String, DefaultValue: 200 , Description: MaxWidth
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, FieldType: String, DefaultValue: , Description: MinHeight
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, FieldType: String, DefaultValue: , Description: MinWidth
#DesignerProperty: Key: Sizes, DisplayName: Sizes, FieldType: String, DefaultValue: , Description: Sizes
#DesignerProperty: Key: Srcset, DisplayName: Srcset, FieldType: String, DefaultValue: , Description: Srcset
#DesignerProperty: Key: Transition, DisplayName: Transition, FieldType: String, DefaultValue: , Description: Transition
#DesignerProperty: Key: Width, DisplayName: Width, FieldType: String, DefaultValue: , Description: Width
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Styles, DisplayName: Styles, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String, use =
#DesignerProperty: Key: VOn, DisplayName: V-On, FieldType: String, DefaultValue:  , Description: V-On
#DesignerProperty: Key: VBind, DisplayName: V-Bind, FieldType: String, DefaultValue:  , Description: V-Bind
#DesignerProperty: Key: AnimeAlternate, DisplayName: AnimeAlternate, FieldType: Boolean, DefaultValue: false, Description: AnimeAlternate
#DesignerProperty: Key: AnimeDirection, DisplayName: AnimeDirection, FieldType: String, DefaultValue: , Description: AnimeDirection
#DesignerProperty: Key: AnimeDuration, DisplayName: AnimeDuration, FieldType: String, DefaultValue: , Description: AnimeDuration
#DesignerProperty: Key: AnimeEasing, DisplayName: AnimeEasing, FieldType: String, DefaultValue: , Description: AnimeEasing
#DesignerProperty: Key: AnimeLoop, DisplayName: AnimeLoop, FieldType: Boolean, DefaultValue: false, Description: AnimeLoop
#DesignerProperty: Key: AnimeTranslateX, DisplayName: AnimeTranslateX, FieldType: String, DefaultValue: , Description: AnimeTranslateX
#DesignerProperty: Key: AnimeTranslateY, DisplayName: AnimeTranslateY, FieldType: String, DefaultValue: , Description: AnimeTranslateY
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
	Private mVShow As String = ""
	Private mVIf As String = ""
	Private sAlt As String
Private sAspectRatio As String
Private bContain As Boolean
Private bDark As Boolean
Private sHeight As String
Private sLazySrc As String
Private sMaxHeight As String
Private sMaxWidth As String
Private sMinHeight As String
Private sMinWidth As String
Private sSizes As String
Private sSrc As String
Private sSrcset As String
Private sTransition As String
Private sWidth As String
Private sVOn As String
Private sVBind As String
Private bAnimeAlternate As Boolean
Private sAnimeDirection As String
Private sAnimeDuration As String
Private sAnimeEasing As String
Private bAnimeLoop As Boolean
Private sAnimeTranslateX As String
Private sAnimeTranslateY As String
Public Animate As BANanoAnimeJS
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
		mVShow = Props.Get("VShow")
		mVIf = Props.Get("VIf")
		sAlt = Props.Get("Alt")
sAspectRatio = Props.Get("AspectRatio")
bContain = Props.Get("Contain")
bDark = Props.Get("Dark")
sHeight = Props.Get("Height")
sLazySrc = Props.Get("LazySrc")
sMaxHeight = Props.Get("MaxHeight")
sMaxWidth = Props.Get("MaxWidth")
sMinHeight = Props.Get("MinHeight")
sMinWidth = Props.Get("MinWidth")
sSizes = Props.Get("Sizes")
sSrc = Props.Get("Src")
sSrcset = Props.Get("Srcset")
sTransition = Props.Get("Transition")
sWidth = Props.Get("Width")
sVOn = Props.Get("VOn")
		sVBind = Props.Get("VBind")
		bAnimeAlternate = Props.Get("AnimeAlternate")
sAnimeDirection = Props.Get("AnimeDirection")
sAnimeDuration = Props.Get("AnimeDuration")
sAnimeEasing = Props.Get("AnimeEasing")
bAnimeLoop = Props.Get("AnimeLoop")
sAnimeTranslateX = Props.Get("AnimeTranslateX")
sAnimeTranslateY = Props.Get("AnimeTranslateY")
	End If
	'
	'build and get the element
	If BANano.Exists($"#${mName}"$) Then
		mElement = BANano.GetElement($"#${mName}"$)
	Else	
		mElement = mTarget.Append($"<v-img id="${mName}"></v-img>"$).Get("#" & mName)
	End If
	'
	VElement.Initialize(mCallBack, mName, mName)
	VElement.TagName = "v-img"
	VElement.VShow = mVShow
	VElement.VIf = mVIf
	VElement.Classes = mClasses
	VElement.Styles = mStyles
	VElement.Attributes = mAttributes
	VElement.Alt = sAlt
VElement.AspectRatio = sAspectRatio
VElement.Contain = bContain
VElement.Dark = bDark
VElement.Height = sHeight
VElement.LazySrc = sLazySrc
VElement.MaxHeight = sMaxHeight
VElement.MaxWidth = sMaxWidth
VElement.MinHeight = sMinHeight
VElement.MinWidth = sMinWidth
VElement.Sizes = sSizes
VElement.Src = sSrc
VElement.Srcset = sSrcset
VElement.Transition = sTransition
VElement.Width = sWidth
VElement.AddAttr("v-on", sVOn)
	VElement.AddAttr("v-bind", sVBind)
VElement.BindAllEvents
'

	Animate.Initialize(mCallBack, $"#${mName}"$)
	Animate.anime.translateX(sAnimeTranslateX)
	Animate.anime.translateY(sAnimeTranslateY)
	
	Animate.anime.alternate(bAnimeAlternate)
	If bAnimeAlternate = False Then
		Animate.anime.direction(sAnimeDirection)
	End If
	Animate.anime.loopIT(bAnimeLoop)
	Animate.anime.duration(sAnimeDuration)
	Animate.anime.easing(sAnimeEasing)
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

Sub AddClass(s As String) As VImg
	VElement.AddClass(s)
	Return Me
End Sub

Sub AddAttr(p As String, v As Object) As VImg
	VElement.SetAttr(p, v)
	Return Me
End Sub

Sub AddStyle(p As String, v As String) As VImg
	VElement.AddStyle(p, v)
	Return Me
End Sub

Sub RemoveAttr(p As String) As VImg
	VElement.RemoveAttr(p)
	Return Me
End Sub

Sub Visible(VC As VueComponent, b As Boolean) As VImg
	VC.SetData(mVIf, b)
	VC.SetData(mVShow, b)
	Return Me
End Sub


Sub getID As String
	Return mName
End Sub