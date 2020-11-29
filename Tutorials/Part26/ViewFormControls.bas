B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	
	Public vuetify As VuetifyApp
	Public forms As VueComponent
	Public path As String
	Public name As String = "forms"
	Private banano As BANano
	Private btnsave As VueElement
	Private txtage As VueElement
	Private txtbirthplace As VueElement
	Private txtcity As VueElement
	Private txtfirstname As VueElement
	Private txtprovince As VueElement
	Private txtlastname As VueElement
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	forms.Initialize(Me, name)
	path = forms.path
	'load the template
	banano.LoadLayout(vuetify.PlaceHolderName, "vforms")
	'bind the custom elements to the component
	forms.BindVueElement(btnsave)
	forms.BindVueElement(txtage)
	forms.BindVueElement(txtbirthplace)
	forms.BindVueElement(txtcity)
	forms.BindVueElement(txtfirstname)
	forms.BindVueElement(txtprovince)
	forms.BindVueElement(txtlastname)
	
	'add the placeholder content to the template
	forms.AppendPlaceHolder
	'set on mounted
	Dim args As List
	forms.SetMounted(Me, "onmounted", args)
	'add the component as a router
	vuetify.AddRoute(forms)
End Sub


Sub btnsave_Click (e As BANanoEvent)				'ignoredeadcode
	Dim sfirstname As String = forms.getdata("firstname")
	Dim slastname As String = forms.GetData("lastname")
	'
	vuetify.ShowSnackBarSuccess($"${sfirstname} - ${slastname}"$)
End Sub

Sub onmounted			'ignoredeadcode
	forms.setdata("firstname", "I dont know")
End Sub