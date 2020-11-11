B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Private BANano As BANano
	Public fb As BANanoFireStoreDB
	Private vsnackbar As VueElement
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'initialize and import the component
	CompAppNavigation.Initialize
	vuetify.Import(CompAppNavigation.appnavigation)
	'add views to the app
	ViewAbout.Initialize
	ViewHome.Initialize
	ViewSignIn.Initialize
	ViewMenu.Initialize
	ViewJoin.Initialize
	'load v-app to app template
	BANano.LoadLayout("#apptemplate", "vmealprep")
	'
	vuetify.SetStore("isAuthenticated", False)
	vuetify.SetStore("userRecipes", vuetify.NewList)
	vuetify.SetStore("recipes", vuetify.NewList)
	'
	vuetify.SetMethod(Me, "userSignOut", Null)
	vuetify.SetMethod(Me, "getUserRecipes", Null)
	Dim value As Object
	vuetify.SetMethod(Me, "getRecipes", Array(value))
	Dim recipe As Object
	vuetify.SetMethod(Me, "addRecipe", Array(recipe))
	Dim userid As String
	vuetify.SetMethod(Me, "addUser",Array(userid))
	Dim payload As String
	vuetify.SetMethod(Me, "updateRecipes", Array(payload))
	
	'bind the snackbar
	vuetify.BindVueElement(vsnackbar)
	' set up snack bar stuff: depends on the vsnackbar layout
	vuetify.SnackBarInitialize
	'render the ux
	vuetify.Serve
	'
	'lets set up firebase connection
	fb.Initialize
	'use your own credentials
	fb.apiKey = "AIzaSyBho-I504rEEgiBKW-oQ-CkQVx6tBXn-Zs"
	fb.authDomain = "mealprep-22c0b.firebaseapp.com"
	fb.databaseURL = "https://mealprep-22c0b.firebaseio.com"
	fb.projectId = "mealprep-22c0b"
	fb.storageBucket = "mealprep-22c0b.appspot.com"
	fb.messagingSenderId = "331097842138"
	fb.appId = "1:331097842138:web:e6821803063037e2bc20e3"
	fb.measurementId = "G-T3M47FEGRH"
	fb.timestampsInSnapshots
	fb.connect
	
	Dim ofResponse As Map
	Dim ofError As Map
	Dim offline As BANanoPromise = fb.enablePersistence
	offline.then(ofResponse)
	vuetify.ShowSnackBarSuccess("We are connected to firestore, you can sign in or sign up now!")
	offline.Else(ofError)
	Dim message As String = fb.GetMessage(ofError)
	vuetify.ShowSnackBarError("We could not set offline functionality for this firestore!" & "<br/>" & message )
	offline.End
End Sub

'update recipes for an existing user
Sub updateRecipes(urec As Map)    'ignoreDeadCode
	Dim userid As String = urec.get("userid")
	Dim payload As Map = urec.get("payload")
	Dim uResponse As Map
	Dim uError As Map
	'create a new record / overwite existing record using key
	Dim updateRecipePromise As BANanoPromise = fb.CollectionSet("users", userid, payload)
	updateRecipePromise.then(uResponse)
	vuetify.ShowSnackBarSuccess("Recipes successfully updated!")
	updateRecipePromise.Else(uError)
	Dim message As String = fb.GetMessage(uError)
	vuetify.ShowSnackBarSuccess(message)
	vuetify.ShowSnackBarError(message)
	updateRecipePromise.End
End Sub


Sub getUserRecipes 'IgnoreDeadCode
	Dim bisAuthenticated As Boolean = vuetify.GetStore("isAuthenticated")
	If bisAuthenticated = False Then
		vuetify.SetStore("userrecipes", vuetify.newlist)
		Return
	End If
	
	'get the details of the active user
	Dim user As Map = vuetify.GetStore("user")
	Dim userid As String = user.get("uid")
		
	'get the user details using the user id
	Dim gResponse As Map
	Dim gError As Map
	Dim getUser As BANanoPromise = fb.CollectionGet("users", userid)
	getUser.then(gResponse)
	'this is the complete user record
	Dim data As Map = fb.GetRecord(gResponse)
	'get a users recipes as a map object
	Dim recipes As Map = data.get("recipes")
	'compile a list of recipes
	Dim recipeList As List = vuetify.newlist
	'each recipe is unique based on the uri
	For Each k As String In recipes.keys
		Dim recipe As Map = recipes.get(k)
		Dim label As String = recipe.get("label")
		recipeList.add(label)
	Next
	recipeList.sort(True)
	vuetify.SetStore("userrecipes", recipeList)
	getUser.Else(gError)
	Dim message As String = fb.GetMessage(gError)
	vuetify.ShowSnackBarError(message)
	vuetify.SetStore("userrecipes", vuetify.newlist)
	getUser.End
End Sub

'add a user to the users collection
Sub addUser(userid As String)     'ignoredeadcode
	'[C]reate a new record for the users collection using the userid
	'as a primary key
	Dim user As Map = CreateMap()
	'use a map because we dont want duplicates
	Dim recipes As Map = CreateMap()
	user.put("recipes", recipes)   'list of recipes for user
	user.put("userid", userid)	   'the user id
	
	Dim aResponse As Map
	Dim aError As Map
	'create a new record / overwite existing record using key
	Dim addUserPromise As BANanoPromise = fb.CollectionSet("users", userid, user)
	addUserPromise.then(aResponse)
	'navigate to plans so that user can choose recipes to add
	vuetify.NavigateTo("/menu")
	addUserPromise.Else(aError)
	Dim message As String = fb.GetMessage(aError)
	vuetify.ShowSnackBarError(message)
	addUserPromise.End
End Sub


Sub addRecipe(payload As Map)			'IgnoreDeadCode
	Log(payload)
	
	'get the user details
	Dim user As Map = vuetify.GetStore("user")
	Dim userid As String = user.get("uid")
	'get the recipe
	Dim recipe As Map = payload.get("recipe")
	'get the label
	Dim label As String = recipe.get("label")
	Dim uri As String = recipe.get("uri")
	Dim url As String = recipe.get("url")
	'
	'we will use the uri as a key
	Dim record As Map = CreateMap()
	record.put("uri", uri)
	record.put("url", url)
	record.put("label", label)
	record.put("userid", userid)
	'
	'get the user details using the user id
	Dim uResponse As Map
	Dim uError As Map
	Dim getUser As BANanoPromise = fb.CollectionGet("users", userid)
	getUser.then(uResponse)
	'this is the complete user record
	Dim data As Map = fb.GetRecord(uResponse)
	'get a users recipes as a map object
	Dim recipes As Map = data.get("recipes")
	'use the uri (unique value) so that we dont have duplicates
	'update the user recipes
	recipes.put(uri, record)
	'update the user record
	data.put("recipes", recipes)
	'update recipes
	Dim urec As Map = CreateMap()
	urec.put("userid", userid)
	urec.put("payload", data)
	vuetify.RunMethod("updateRecipes", urec)
	getUser.Else(uError)
	Dim message As String =fb.GetMessage(uError)
	vuetify.ShowSnackBarError(message)
	getUser.End
End Sub

Sub getRecipes(plan As String)				'ignoredeadcode
	Dim error As Map
	Dim Response As BANanoFetchResponse
	Dim json As BANanoJSONParser
	Dim fetch As BANanoFetch
	Dim app_id As String = "5b6623d5"
	Dim app_key As String = "46674aa2193dbb7b88ffd897331e661a"
	'
	fetch.Initialize($"https://api.edamam.com/search?q=${plan}&app_id=${app_id}&app_key=${app_key}&from=0&to=9"$, Null)
	fetch.Then(Response)
	fetch.return(Response.Json)
	fetch.Then(json)
		Dim res As Map = json.NextObject
		Dim hits As List = res.get("hits")
		vuetify.SetStore("recipes", hits)
	fetch.Else(error)
		vuetify.SetStore("recipes", vuetify.newlist)
	fetch.end
End Sub

Sub userSignOut				'IgnoreDeadCode
	Dim outResponse As Map
	Dim outError As Map
	Dim outUser As BANanoPromise = fb.signOut
	outUser.Then(outResponse)
		vuetify.SetStore("user", Null)
		vuetify.SetStore("isAuthenticated", False)
		vuetify.SetStore("recipes", vuetify.newlist)
		vuetify.SetStore("userRecipes", vuetify.NewList)
		vuetify.NavigateTo("/")
	outUser.Else(outError)
		vuetify.SetStore("user", Null)
		vuetify.SetStore("isAuthenticated", False)
		vuetify.SetStore("recipes", vuetify.newlist)
		vuetify.SetStore("userRecipes", vuetify.NewList)
		vuetify.NavigateTo("/")
	outUser.end
End Sub
