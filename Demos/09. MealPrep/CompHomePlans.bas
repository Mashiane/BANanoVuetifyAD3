B4J=true
Group=Default Group\Components
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public homeplans As VueComponent
	Public name As String = "home-plans"
	Private banano As BANano
	Private mealflex As VueElement
	Private planlayout1 As VueElement
	Private mealimg As VueElement
	Private vmealcard As VueElement
	Private mealbutton As VueElement
	Private vuetify As VuetifyApp
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	homeplans.Initialize(Me, name, $"/${name}"$)
	'
	banano.LoadLayout("#placeholder", "vhomeplans")
	banano.LoadLayout("#planlayout1", "vmealplan")
	homeplans.BindVueElement(mealbutton)
	homeplans.AppendPlaceHolder
	
	Dim items As List = homeplans.NewList
	items.Add(CreateMap("plan":"keto", "title":"Keto", "image":"./assets/keto.jpg", _
	"description":"The Keto diet is a high-fat, adequate-protein, low-carbohydrate diet. The diet forces the body to burn fats rather than carbohydrates by putting the body into ketosis."))
	'
	items.Add(CreateMap("plan":"paleo", "title":"Paleo", "image":"./assets/paleo.jpg", _
	"description":"The Paleo diet requires the predominant consumption of foods presumed to have been the only foods available To Or consumed by humans during the Paleolithic era."))
	'
	items.Add(CreateMap("plan":"vegan", "title":"Vegan", "image":"./assets/vegan.jpg", _
	"description":"The vegan diet abstains from the use of animal products. The vegan diet does not consume meat, diary products, eggs Or any all other animal-derived ingredients."))
	'
	homeplans.SetData("items", items)
	homeplans.SetComputed("isAuthenticated", Me, "isAuthenticated", Null)
End Sub


Sub isAuthenticated As Boolean				'IgnoreDeadCode
	Dim bisAuthenticated As Boolean = vuetify.GetStore("isAuthenticated")
	Return bisAuthenticated
End Sub

Sub mealbutton_Click (value As String)		'ignoredeadcode
	vuetify.RunMethod("getRecipes", value)
End Sub