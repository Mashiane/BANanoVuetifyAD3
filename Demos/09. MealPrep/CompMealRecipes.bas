B4J=true
Group=Default Group\Components
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public mealrecipes As VueComponent
	Public name As String = "meal-recipes"
	Private banano As BANano
	Private btnorderrecipe As VueElement
	Private vuetify As VuetifyApp
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	mealrecipes.Initialize(Me, name)
	'
	banano.LoadLayout("#placeholder", "vmealrecipes")
	mealrecipes.BindVueElement(btnorderrecipe)
	mealrecipes.AppendPlaceHolder
	'
	mealrecipes.SetComputed("recipes", Me, "getRecipes", Null)
	'mealrecipes.SetMethod(Me, "btnorderrecipe_Click", Null)
End Sub

Sub getRecipes As List				'IgnoreDeadCode
	Dim recipes As List = vuetify.GetStore("recipes")
	Return recipes
End Sub

Sub btnorderrecipe_Click (item As Object)			'ignoredeadcode
	Dim bisAuthenticated As Boolean = vuetify.GetStore("isAuthenticated")
	Select Case bisAuthenticated
	Case True
		vuetify.RunMethod("addRecipe", item)
	Case False
		vuetify.NavigateTo("/signin")
	End Select
End Sub