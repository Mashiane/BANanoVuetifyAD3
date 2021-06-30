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
	Private BANano As BANano
End Sub

Public Sub Initialize(VA As VuetifyApp, parentID As String, elID As String)
	BANano.DependsOnAsset("vjsf.js")
	BANano.DependsOnAsset("vjsf.css")
	
	mCallBack = VA.EventHandler
	mVA = VA
	'
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize  
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

Sub AddTextField(elID As String, vModel As String, sLabel As String, defValue As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub AddTextArea(elID As String, vModel As String, sLabel As String, defValue As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	fld.Put("x-display", "textarea")
	model.Put(vModel, defValue)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub AddCheckBox(elID As String, vModel As String, sLabel As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	model.Put(vModel, False)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub AddSwitch(elID As String, vModel As String, sLabel As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "boolean")
	fld.Put("title", sLabel)
	fld.Put("x-display", "switch")
	model.Put(vModel, False)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub AddSlider(elID As String, vModel As String, sLabel As String,MinValue As String, MaxValue As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "integer")
	fld.Put("title", sLabel)
	fld.Put("x-display", "slider")
	fld.put("minimum", MinValue)
	fld.Put("maximum", MaxValue) 
	model.Put(vModel, 0)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub SetData(fldName As String, fldValue As Object) As VueVJSF
	fldName = fldName.tolowercase
	model.Put(fldName, fldValue)
	Return Me
End Sub

Sub SetDescription(vModel As String, fldDescription As String) As VueVJSF
	vModel = vModel.ToLowerCase
	If properties.ContainsKey(vModel) Then
		Dim fld As Map = properties.Get(vModel)
		fld.Put("description", fldDescription)
		properties.Put(vModel, fld)
	End If
	Return Me
End Sub

