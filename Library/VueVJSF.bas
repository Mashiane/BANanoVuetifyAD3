B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private mCallBack As Object
	Public Element As VueElement
	Private model As Map
	Private schema As Map
	Private properties As Map
	Private options As Map
	Public modelname As String
	Public schemaname As String
	Private mVC As VueComponent
	Private keyName As String
End Sub

Public Sub Initialize(VC As VueComponent, parentID As String, elID As String)
	mCallBack = VC.mcallback
	mVC = VC
	'
	model.Initialize 
	properties.Initialize 
	options.Initialize
	schema.Initialize  
	'
	elID = elID.tolowercase
	modelname = $"${elID}model"$
	schemaname = $"${elID}schema"$
	keyName = $"${elID}key"$
	'
	Dim p As VueElement = VC.GetVueElement(mCallBack, parentID)
	Element = p.AddVueElement(elID, "v-jsf", Null)
	Element.VModel = modelname
	Element.Bind("schema", schemaname)
	Element.Bind("key", keyName)
End Sub

'build the model
Sub Build()
	schema.Initialize 
	'schema.Put("type", "object")
	schema.Put("properties", properties)
	mVC.SetData(schemaname, schema)
	mVC.SetData(modelname, model)
	mVC.SetData(keyName, DateTime.Now)
End Sub

Sub Refresh
	mVC.SetData(keyName, DateTime.Now)
End Sub

Sub GetSchema As Map
	Return mVC.GetData(schemaname)
End Sub

Sub GetModel As Map
	Return mVC.GetData(modelname)
End Sub

Sub AddTextField(elID As String, vModel As String, sLabel As String, vDescription As String) As VueVJSF
	vModel = vModel.tolowercase
	elID = elID.tolowercase
	'
	Dim fld As Map = CreateMap()
	fld.Put("type", "string")
	fld.Put("title", sLabel)
	If vDescription <> "" Then
		fld.Put("description", vDescription)
	End If
	model.Put(vModel, Null)
	properties.Put(vModel, fld)
	Return Me
End Sub

Sub SetData(fldName As String, fldValue As Object) As VueVJSF
	fldName = fldName.tolowercase
	model.Put(fldName, fldValue)
	Return Me
End Sub

Sub SetDescription(fldName As String, fldDescription As String) As VueVJSF
	fldName = fldName.ToLowerCase
	If properties.ContainsKey(fldName) Then
		Dim fld As Map = properties.Get(fldName)
		fld.Put("description", fldDescription)
		properties.Put(fldName, fld)
	End If
	Return Me
End Sub