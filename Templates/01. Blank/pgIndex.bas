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
End Sub

Sub Init
	'initialize the app
	vuetify.Initialize(Me)
	'BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	
	'render the ux
	vuetify.Serve
End Sub
