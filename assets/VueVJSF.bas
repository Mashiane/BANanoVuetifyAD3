B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private mCallBack As Object
	Public Element As VueElement
	Private model As Map
	Private schema As Map
	Private properties As Map
	Private options As Map
	Public modelname As String
	Public schemaname As String
	Public optionsname As String
	Private mVA As VuetifyApp
	Public ID As String
	Private BANano As BANano		'ignore
	Public required As List
End Sub

Sub Initialize(VA As VuetifyApp, parentID As String, elID As String)
	BANano.DependsOnAsset("vjsf.js")
	BANano.DependsOnAsset("vjsf.css")
	
	mCallBack = VA.EventHandler
	mVA = VA
	'
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize 
	required.Initialize  
	'
	elID = elID.tolowercase
	modelname = $"${elID}model"$
	schemaname = $"${elID}schema"$
	optionsname = $"${elID}options"$
	ID = elID
	'
	Dim p As VueElement = VA.GetVueElement(mCallBack, parentID)
	Element = p.AddVueElement(elID, "v-jsf", Null)
	Element.VModel = modelname
	Element.AddAttr(":schema", schemaname)
	Element.AddAttr(":options", optionsname)
End Sub



'bind the states for the component
Sub BindState(VS As VueComponent)
	If VS.ComponentExists("v-jsf") = False Then
		Dim VJsf As BANanoObject
		VJsf.Initialize("VJsf")
		Dim boVJsf As BANanoObject = VJsf.GetField("default")
		VS.ImportBO("v-jsf", boVJsf)
	End If	
End Sub

Sub BindStateOnApp(c As VuetifyApp)
	If c.ComponentExists("v-jsf") = False Then
		Dim VJsf As BANanoObject
		VJsf.Initialize("VJsf")
		Dim boVJsf As BANanoObject = VJsf.GetField("default")
		c.ImportBO("v-jsf", boVJsf)
	End If	
End Sub

'clear the schema
Sub Clear
	properties.Initialize
	model.Initialize  
End Sub

'build the model
Sub Build()
	schema.Put("type", "object")
	schema.Put("properties", properties)
	
	mVA.SetData(schemaname, schema)
	mVA.SetData(modelname, model)
	mVA.SetData(optionsname, options)
End Sub

Sub SetData(fldName As String, fldValue As Object) As VueVJSF
	fldName = fldName.tolowercase
	model.Put(fldName, fldValue)
	Return Me
End Sub


Sub HiddenXSOnly
	AddClass("hidden-xs-only")
End Sub

Sub HiddenSMOnly
	AddClass("d-sm-none d-md-flex")
End Sub
	
Sub HiddenMDOnly
	AddClass("d-md-none d-lg-flex")
End Sub
	
Sub HiddenLGOnly
	AddClass("d-lg-none d-xl-flex")
End Sub
	
Sub HiddenXLOnly
	AddClass("d-xl-none")
End Sub
'
'Sub HiddenXSAndDown
	
'End Sub

Sub HiddenSMAndDown
	AddClass("hidden-sm-and-down")
End Sub
	
Sub HiddenMDAndDown
	AddClass("hidden-md-and-down")
End Sub
	
Sub HiddenLGAndDown
	AddClass("hidden-lg-and-down")
End Sub
	
'Sub HiddenXLAndDown
	
'End Sub
'
'Sub HiddenXSAndUp
	
'End Sub

Sub HiddenSMAndUp
	AddClass("hidden-sm-and-up")
End Sub
	
Sub HiddenMDAndUp
	AddClass("hidden-md-and-up")
End Sub
	
Sub HiddenLGAndUp
	AddClass("hidden-lg-and-up")
End Sub
	
'Sub HiddenXLAndUp
	
'End Sub	

Sub HiddenOnAll
	AddClass("d-none")
End Sub

Sub HideOnlyOnXS
	AddClass("hidden-xs-only")
End Sub

Sub HideOnlyOnSM
	AddClass("d-sm-none d-md-flex")
End Sub

Sub HideOnlyOnMD
	AddClass("d-md-none d-lg-flex")
End Sub

Sub HideOnlyOnLG
	AddClass("d-lg-none d-xl-flex")
End Sub

Sub HideOnlyOnXL
	AddClass("d-xl-none")
End Sub

Sub VisibleOnAll
	AddClass("d-flex")
End Sub

Sub VisibleOnlyOnXS
	AddClass("d-flex d-sm-none")
End Sub

Sub VisibleOnlyOnSM
	AddClass("d-none d-sm-flex d-md-none")
End Sub

Sub VisibleOnlyOnMD
	AddClass("d-none d-md-flex d-lg-none")
End Sub

Sub VisibleOnlyOnLG
	AddClass("d-none d-lg-flex d-xl-none")
End Sub

Sub VisibleOnlyOnXL
	AddClass("d-none d-xl-flex")
End Sub


Sub AddClass(s As String)
	Element.AddClass(s)
End Sub

Sub AddAttr(p As String, v As Object)
	Element.SetAttr(p, v)
End Sub

Sub AddStyle(p As String, v As String)
	Element.AddStyle(p, v)
End Sub
