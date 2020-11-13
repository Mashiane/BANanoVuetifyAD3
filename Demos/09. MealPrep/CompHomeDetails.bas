B4J=true
Group=Default Group\Components
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public homedetails As VueComponent
	Public name As String = "home-details"
	Private banano As BANano
End Sub

Sub Initialize
	homedetails.Initialize(Me, name)
	'
	banano.LoadLayout("#placeholder", "vhomedetails")
	homedetails.AppendPlaceHolder
	
End Sub
