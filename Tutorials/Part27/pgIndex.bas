B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public BANano As BANano
	'define a template for the container
	Private TemplateContainer As String = $"<v-container id="{{id}}"></v-container>"$
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	
'	'get the app id (we cannot add stuff here)
'	Dim appNode As BANanoElement = BANano.GetElement("#app")
'	'get the placeholder
'	Dim phNode As BANanoElement
'	phNode.Initialize("#placeholder")   ' we can add stuff here (for temporal stuff)
'	'get the appendholder
'	Dim plhNode As BANanoElement
'	plhNode.Initialize("#appendholder")  ' we can add stuff here (for temporal stuff)
	
'	Dim appT As BANanoElement
'	appT.Initialize("#apptemplate")
'	appT.Append($"<v-app id="inspire"></v-app>"$)
	
	'add a v-app inside #apptemplate with id = inspire
	BANano.GetElement("#apptemplate").Append($"<v-app id="inspire"></v-app>"$)
	'insipire is not added to the page, access it
	Dim inspire As BANanoElement
	inspire = BANano.GetElement("#inspire")
	'add drawer inside inspire
	inspire.Append($"<v-navigation-drawer id="appdrawer"></v-navigation-drawer>"$)
	'set drawer properties
	BANano.GetElement("#appdrawer").SetAttr("v-model", "drawer")
	BANano.GetElement("#appdrawer").SetAttr(":app", True)
	
	'lets add the v-app-bar
	inspire.Append($"<v-app-bar id="appnav"></v-app-bar>"$)
	Dim appnav As BANanoElement
	appnav.Initialize("#appnav")
	appnav.SetAttr(":app", True)
	'
	Dim hamburger As BANanoElement
	hamburger = appnav.Append($"<v-app-bar-nav-icon id="hamburger"></v-app-bar-nav-icon>"$).Get("#hamburger")
	'the @ (shortcut) does not work, use precise name
	'when clicked, toggle the state
	hamburger.SetAttr("v-on:click", "drawer = !drawer")
	
	'add toolbar title
	Dim navtitle As BANanoElement
	'add the title with append and get it
	navtitle = appnav.Append($"<v-toolbar-title id="navtitle"></v-toolbar-title>"$).Get("#navtitle")
	navtitle.SetText("Application")
	
	'add main inside inspire
	inspire.Append($"<v-main id="appmain"></v-main>"$)
	' get the appmain element
	Dim appmain As BANanoElement
	appmain.Initialize("#appmain")
	
	Dim vcontainer As BANanoElement
	vcontainer = appmain.Append($"<v-container id="appcontainer"></v-container>"$).Get("#appcontainer")
	vcontainer.SetText("Anele Mbanga (Mashy)")
	
	
	'set state
	vuetify.SetData("drawer", False)
	'render the ux
	vuetify.Serve
End Sub