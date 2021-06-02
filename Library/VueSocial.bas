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
	Private mVA As VuetifyApp
	Public ID As String
	Private sattendents As String
	Private lstattendents As List
	Private BANAno As BANano  'ignore
End Sub

Public Sub Initialize(VA As VuetifyApp, parentID As String, elID As String, hdr As String, ftr As String)
	mCallBack = VA.EventHandler
	mVA = VA
	'
	elID = elID.tolowercase
	lstattendents.Initialize 
	sattendents = $"${elID}attendents"$
	ID = elID
	'
	Dim p As VueElement = VA.GetVueElement(mCallBack, parentID)
	Element = p.AddVueElement(elID, "vue-social-chat", Null)
	Element.AddAttr(":attendents", sattendents)
	Element.SetOnEvent(mCallBack, "open", Null)
	Element.SetOnEvent(mCallBack, "close", Null)
	VA.SetData(sattendents, lstattendents)
	
	If hdr <> "" Then
		Dim hp As VueElement = Element.AddVueElement($"${elID}hp"$, "p", Null)
		hp.SetAttr("slot", "header")
		hp.SetText(hdr)
	End If
	'
	If ftr <> "" Then
		Dim fp As VueElement = Element.AddVueElement($"${elID}fp"$, "small", Null)
		fp.SetAttr("slot", "footer")
		fp.SetText(ftr)
	End If
End Sub

Sub Clear
	lstattendents.Initialize
	mVA.SetData(sattendents, lstattendents)
End Sub

Sub setIcon(b As Boolean)
	Element.Bind(":icon", b)
End Sub


private Sub AddContact(appName As String, aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	Dim rec As Map = CreateMap()
	rec.Put("id", aID)
	rec.Put("app", appName)
    If aTitle <> "" Then
		rec.Put("label", aTitle)
	End If	
    rec.Put("name", aName)
    If aNumber <> "" Then
		rec.put("number", aNumber)
	End If
	If aUserName <> "" Then
		rec.Put("username", aUserName)
	End If
	If aHref <> "" Then
		rec.Put("href", aHref)
	End If
    '
	If aAvatar <> "" Then
		Dim avatar As Map = CreateMap()
		avatar.Put("src", avatar)
		avatar.Put("alt", aName)
	    rec.Put("avatar", avatar)
	End If
	lstattendents.Add(rec)
End Sub



Sub AddWhatsApp(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("whatsapp", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

Sub AddTelegram(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("telegram", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

Sub AddLine(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("line", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

Sub AddMessenger(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("messenger", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

Sub AddWeChat(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("wechat", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

Sub AddViber(aID As String, aTitle As String, aName As String, aNumber As String, aAvatar As String, aUserName As String, aHref As String)
	AddContact("viber", aID, aTitle, aName, aNumber, aAvatar, aUserName, aHref)
End Sub

'clear the schema
Sub Refresh
	mVA.SetData(sattendents, lstattendents)
End Sub
