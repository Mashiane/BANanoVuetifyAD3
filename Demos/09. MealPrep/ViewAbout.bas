B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public about As VueComponent
	Public name As String = "about"
	Private BANano As BANano
	Private vuetify As VuetifyApp
	Private aboutdiv As VueElement
End Sub

Sub Initialize
	vuetify = pgIndex.vuetify
	
	about.Initialize(Me, name, $"/${name}"$)
	'
	BANano.LoadLayout("#placeholder", "vabout")
	about.BindVueElement(aboutdiv)	
	about.AppendPlaceHolder
	'
	about.SetComputed("userRecipes", Me, "userRecipes", Null)
	about.SetMounted(Me, "getRecipes", Null)
	'
	vuetify.AddRoute(about) 
End Sub


Sub userRecipes As List		'ignoredeadcode
	Dim ur As List = vuetify.getstore("userrecipes")
	Return ur		
End Sub	

Sub getRecipes			'ignoredeadcode
	vuetify.RunMethod("getUserRecipes", Null)
End Sub

