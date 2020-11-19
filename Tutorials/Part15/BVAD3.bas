B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private banano As BANano
End Sub


Sub NewButton(VC As VueComponent, elID As String, sLabel As String, props As Map) As BANanoElement
	Dim EventHandler As Object = VC.mCallBack
	elID = elID.tolowercase
	'
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "vbutton", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "vbutton", Ret)
	'
	Dim vbutton As VueElement = AllViews.Get("vbutton")
	vbutton.Caption = sLabel
	vbutton.AddAttr("id", elID)
	'
	If banano.IsNull(props) = False Then
		For Each k As String In props.Keys
			Dim v As Object = props.Get(k)
			vbutton.AddAttr(k, v)
		Next
	End If
	'
	Dim clickEvent As String = $"${elID}_click"$
	vbutton.SetOnEvent(EventHandler, clickEvent, "click", "")
	'
	VC.BindVueElement(vbutton)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub



Sub NewDatePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String) As BANanoElement
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "vdatepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "vdatepicker", Ret)
	'
	Dim vdatepicker As VueElement
	Dim vdatepickercancel As VueElement
	Dim vdatepickerclear As VueElement
	Dim vdatepickermenu As VueElement
	Dim vdatepickerok As VueElement
	Dim vdatepickertemplate As VueElement
	Dim vdatepickertextfield As VueElement
	'
	vdatepickermenu = AllViews.Get("vdatepickermenu")
	vdatepickertextfield = AllViews.Get("vdatepickertextfield")
	vdatepicker = AllViews.Get("vdatepicker")
	vdatepickerclear = AllViews.Get("vdatepickerclear")
	vdatepickercancel = AllViews.Get("vdatepickercancel")
	vdatepickertemplate = AllViews.Get("vdatepickertemplate")
	vdatepickerok = AllViews.Get("vdatepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vdatepickermenu.AddAttr("ref", menuKey)
	vdatepickermenu.AddAttr(":return-value.sync", vmodel)
	vdatepickermenu.VModel = menuKey
	'
	vdatepickertextfield.Label = slabel
	vdatepickertextfield.VModel = vmodel
	vdatepickertextfield.PrependIcon = sPrependIcon
	vdatepickertextfield.Placeholder = splaceholder
	vdatepickertextfield.Required = bRequired
	vdatepickertextfield.Hint = sHint
	vdatepickertextfield.ref = vmodel
	vdatepickertextfield.AddAttr("id", elID)
		
	'
	vdatepicker.VModel = vmodel
	vdatepicker.AddAttr("landscape", True)
	'
	vdatepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vdatepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vdatepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	vdatepickerclear.Outlined = True
	vdatepickercancel.Outlined = True
	vdatepickerok.Outlined = True
	
	' merge bindings
	VC.BindVueElement(vdatepickermenu)
	VC.BindVueElement(vdatepickertextfield)
	VC.BindVueElement(vdatepicker)
	VC.BindVueElement(vdatepickerclear)
	VC.BindVueElement(vdatepickercancel)
	VC.BindVueElement(vdatepickerok)
	VC.BindVueElement(vdatepickertemplate)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewTimePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String) As BANanoElement
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "vtimepicker", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "vtimepicker", Ret)
	'
	Dim vtimepicker As VueElement
	Dim vtimepickercancel As VueElement
	Dim vtimepickerclear As VueElement
	Dim vtimepickermenu As VueElement
	Dim vtimepickerok As VueElement
	Dim vtimepickertemplate As VueElement
	Dim vtimepickertextfield As VueElement
	'
	vtimepickermenu = AllViews.Get("vtimepickermenu")
	vtimepickertextfield = AllViews.Get("vtimepickertextfield")
	vtimepicker = AllViews.Get("vtimepicker")
	vtimepickerclear = AllViews.Get("vtimepickerclear")
	vtimepickercancel = AllViews.Get("vtimepickercancel")
	vtimepickertemplate = AllViews.Get("vtimepickertemplate")
	vtimepickerok = AllViews.Get("vtimepickerok")
	'
	Dim menuKey As String = $"${vmodel}dtmenu"$
	
	vtimepickermenu.AddAttr("ref", menuKey)
	vtimepickermenu.AddAttr(":return-value.sync", vmodel)
	vtimepickermenu.VModel = menuKey
	'
	vtimepickertextfield.Label = slabel
	vtimepickertextfield.VModel = vmodel
	vtimepickertextfield.PrependIcon = sPrependIcon
	vtimepickertextfield.Placeholder = splaceholder
	vtimepickertextfield.Required = bRequired
	vtimepickertextfield.Hint = sHint
	vtimepickertextfield.Ref = vmodel
	vtimepickertextfield.AddAttr("id", elID)
	
	'
	vtimepicker.VModel = vmodel
	vtimepicker.AddAttr("landscape", True)
	'
	vtimepickerclear.AddAttr("v-on:click", $"${vmodel} = ''"$)
	vtimepickercancel.AddAttr("v-on:click", $"${menuKey} = false"$)
	vtimepickerok.AddAttr("v-on:click", $"#refs.${menuKey}.save(${vmodel})"$)
	'
	vtimepickerclear.Outlined = True
	vtimepickercancel.Outlined = True
	vtimepickerok.Outlined = True
	
	' merge bindings
	VC.BindVueElement(vtimepickermenu)
	VC.BindVueElement(vtimepickertextfield)
	VC.BindVueElement(vtimepicker)
	VC.BindVueElement(vtimepickerclear)
	VC.BindVueElement(vtimepickercancel)
	VC.BindVueElement(vtimepickerok)
	VC.BindVueElement(vtimepickertemplate)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewTextField(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String) As BANanoElement
	elID = elID.tolowercase
	Dim Ret As Long
	Dim AllViews As Map
   
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "vtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "vtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub

Sub NewPassword(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String) As BANanoElement
	elID = elID.tolowercase
	
	Dim Ret As Long
	Dim AllViews As Map
    Dim bshowPassword As String = $"${elID}ShowPassword"$
	bshowPassword = bshowPassword.tolowercase
	VC.SetData(bshowPassword, False)
	'
	'load the layout in a temporal holder
	Ret = banano.LoadLayoutArray("#appendholder", "vtextfield", True)
	' ret returns a unique number you can use to get all views
	AllViews = banano.GetAllViewsFromLayoutArray(Me, "vtextfield", Ret)
	
	'get the text field, there is only 1 element on the layout
	Dim vtextfield As VueElement = AllViews.get("vtextfield")
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.AddAttr("type", "text")
	vtextfield.Ref = vmodel
	vtextfield.AddAttr("id", elID)
	vtextfield.AddAttr(":type", $"${bshowPassword} ? 'text' : 'password'"$)
	vtextfield.AddAttr(":append-icon", $"${bshowPassword} ? 'mdi-eye' : 'mdi-eye-off'"$)
	vtextfield.AddAttr("v-on:click:append", $"${bshowPassword} = !${bshowPassword}"$)
	'
	VC.BindVueElement(vtextfield)
	'
	Dim ah As BANanoElement
	ah.Initialize("#appendholder")
	Return ah
End Sub
