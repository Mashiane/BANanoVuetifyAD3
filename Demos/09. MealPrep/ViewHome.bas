B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public home As VueComponent
	Public name As String = "home"
	Private BANano As BANano
	Private vuetify As VuetifyApp
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	home.Initialize(Me, name, "/")
	'
	CompHomeDetails.Initialize 
	home.Import(CompHomeDetails.homedetails)
	'
	CompHomePlans.Initialize 
	home.Import(CompHomePlans.homeplans)
	'
	CompHomeHero.Initialize
	home.Import(CompHomeHero.homehero)  
	
	BANano.LoadLayout("#placeholder", "vhome")
	home.AppendPlaceHolder
	
	vuetify.AddRoute(home)
End Sub
