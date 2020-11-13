B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public menu As VueComponent
	Public name As String = "menu"
	Private BANano As BANano
	Private vuetify As VuetifyApp
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	menu.Initialize(Me, name)
	'
	CompHomePlans.Initialize
	menu.Import(CompHomePlans.homeplans) 
	'
	CompMealRecipes.Initialize 
	menu.Import(CompMealRecipes.mealrecipes)
	'
	BANano.LoadLayout("#placeholder", "vmenu")
	menu.AppendPlaceHolder
	
	vuetify.AddRoute(menu)
End Sub
