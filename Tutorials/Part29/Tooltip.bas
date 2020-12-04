B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public name As String = "tool-tip"
	Public TT As VueComponent
	Private banano As BANano
End Sub


Sub Initialize
	'initialize the component
	TT.Initialize(Me, name)
	'add properties to the component
	TT.AddProperty1("text", TT.jsString, Null, True)
	TT.AddProperty1("top", TT.jsBoolean, True, Null) 
	TT.AddProperty1("bottom", TT.jsBoolean, False, Null)
	TT.AddProperty1("left", TT.jsBoolean, False, Null)
	TT.AddProperty1("right", TT.jsBoolean, False, Null)
	'load the layout to a placeholder
	banano.LoadLayout(TT.PlaceHolderName, "vtooltipcomponent")
	'update the template with the placeholder
	TT.AppendPlaceHolder
	Log(TT.Template)
End Sub