B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.8
@EndOfDesignText@
' Utility Code module
Sub Process_Globals
	
End Sub

Sub BuildHtml(strHTML As String, Settings As Map) As String
	' Replace variables with $KEY$ with new content from Map
	strHTML = WebUtils.ReplaceMap(strHTML, Settings)
	Return strHTML
End Sub

Sub BuildView(strHTML As String, View As String) As String
	' Replace @VIEW@ tag with new content
	strHTML = strHTML.Replace("@VIEW@", View)
	Return strHTML
End Sub

Sub ReadConfig As Map
	Return File.ReadMap(File.DirAssets, "config.properties")
End Sub

Sub ReadSettings As Map
	Return File.ReadMap(File.DirApp, "settings.ini")
End Sub

Sub ReadTextFile(FileName As String) As String
	Return File.ReadString(File.DirAssets, FileName)
End Sub

Sub MD5(str As String) As String
	Dim data(0) As Byte
	Dim MD As MessageDigest
	Dim Bconv As ByteConverter

	data = Bconv.StringToBytes(str, "UTF8")
	data = MD.GetMessageDigest(data, "MD5")
	Return Bconv.HexFromBytes(data).ToLowerCase
End Sub

Sub SHA1(str As String) As String
	Dim data(0) As Byte
	Dim MD As MessageDigest
	Dim Bconv As ByteConverter

	data = Bconv.StringToBytes(str, "UTF8")
	data = MD.GetMessageDigest(data, "SHA-1")
	Return Bconv.HexFromBytes(data).ToLowerCase
End Sub

Sub List2Json(L As List) As String
	Dim gen As JSONGenerator
	gen.Initialize2(L)
	Return gen.ToString
End Sub

Sub Map2Json(M As Map) As String
	Dim L As List
	L.Initialize
	L.Add(M)
	Dim gen As JSONGenerator
	gen.Initialize2(L)
	Return gen.ToString
End Sub

Sub ReturnError(Message As String, resp As ServletResponse)
	If Message = "" Then Message = "failed"
	Dim Map1 As Map = CreateMap("result": -1, "message": Message)
	resp.ContentType = "application/json"
	resp.Write(Map2Json(Map1))
End Sub

Sub ReturnSuccess(Message As String, resp As ServletResponse)
	If Message = "" Then Message = "success"
	Dim Map1 As Map = CreateMap("result": 0, "message": Message)
	resp.ContentType = "application/json"
	resp.Write(Map2Json(Map1))
End Sub

Sub ReturnConnect(resp As ServletResponse)
	Dim Map1 As Map = CreateMap("Connected": 1)
	resp.ContentType = "application/json"
	resp.Write(Map2Json(Map1))
End Sub

Sub ReturnHTML(str As String, resp As ServletResponse)
	resp.ContentType = "text/html"
	resp.Write(str)
End Sub

Sub ReturnJSON(map As Map, resp As ServletResponse)
	resp.ContentType = "application/json"
	resp.Write(Map2Json(map))
End Sub

Sub ReturnJSON2(list As List, resp As ServletResponse)
	resp.ContentType = "application/json"
	resp.Write(List2Json(list))
End Sub