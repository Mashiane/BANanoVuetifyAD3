B4J=true
Group=Default Group\Components
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public homehero As VueComponent
	Public name As String = "home-hero"
	Private banano As BANano
End Sub

Sub Initialize
	homehero.Initialize(Me, name)
	'
	banano.LoadLayout("#placeholder", "vhomehero")
	homehero.AppendPlaceHolder
	
End Sub
