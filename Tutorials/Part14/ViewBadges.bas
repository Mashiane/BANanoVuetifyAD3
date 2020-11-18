B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public badges As VueComponent
	Public name As String = "badges"
	Public path As String
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private btndecreasebadge As VueElement
	Private btnIncreaseBadge As VueElement
	Private vbadges As VueElement
	Private vbadge As VueElement
	Private vbadgeicon As VueElement
	Private vbadgeavatar As VueElement
	Private vbadgeavatarimg As VueElement
End Sub


Sub Initialize
	'get the reference of the app
	vuetify = pgIndex.vuetify
	'initialize the page component
	badges.Initialize(Me, name)
	'path placeholder
	path = badges.path
	'load the alert container we have created via the abstract designer
	BANano.LoadLayout(vuetify.placeholdername, "vbadges")
	'
	vbadges.Matrix(1, 1).LoadLayout("btnincreasebadge")
	vbadges.Matrix(1, 2).LoadLayout("btndecreasebadge")
	vbadges.Matrix(1, 3).LoadLayout("vbadgeicon")
	'
	vbadges.Matrix(2, 1).LoadLayout("vbadgeavatar")
	'
	btnIncreaseBadge.Color = "green"
	btndecreasebadge.Color = "red"
	'
	badges.BindVueElement(btnIncreaseBadge)
	badges.BindVueElement(btndecreasebadge)
	badges.BindVueElement(vbadge)
	
	'
	badges.AppendPlaceHolder
	vuetify.AddRoute(badges)
End Sub


Sub btndecreasebadge_Click (e As BANanoEvent)
	badges.Decrement("messages")
	DetectColor
End Sub

Sub btnIncreaseBadge_Click (e As BANanoEvent)
	badges.Increment("messages")
	DetectColor
End Sub

Sub DetectColor
	Dim m As Int = badges.getdata("messages")
	m = BANano.parseInt(m)
	If m < 0 Then
		badges.SetData("badgecolor", "red")
	Else
		badges.SetData("badgecolor", "green")
	End If
End Sub