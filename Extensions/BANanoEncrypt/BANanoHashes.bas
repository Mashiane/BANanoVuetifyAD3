B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public const HASH_MD5 As String = "MD5"
	Public const HASH_SHA1 As String = "SHA1"
	Public const HASH_SHA256 As String = "SHA256"
	Public const HASH_SHA512 As String = "SHA512"
	Public const HASH_RMD160 As String = "RMD160"
	Public const ALG_HEX As String = "hex"
	Public const ALG_B64 As String = "b64"
	Public const ALG_HEX_HMAC As String = "hex_hmac"
	Public const ALG_b64_HMAC As String = "b64_hmac"
	Private sinput As String 
	Private skey As String
	Private BANano As BANano
End Sub

'Initializes BANAnoHashes
Public Sub Initialize(input As String, key As String) As BANanoHashes
	sinput = input
	skey = key
	Return Me
End Sub

Sub Md5Hash(value As String, key As String, raw As Boolean) As String
	Dim res As Object = BANano.RunJavascriptMethod("md5", Array(value, key, raw))
	Return res
End Sub

'bcrypt generate salt
Sub GenerateSalt(rounds As Int) As String
	Dim salt As String = BANano.RunJavascriptMethod("gensalt", Array(rounds))
	Return salt
End Sub

Sub Hash(hashType As String, algorithm As String) As String
	Dim bo As BANanoObject
	Dim res As String
	Select Case hashType
	Case HASH_MD5
		bo.Initialize2("Hashes.MD5",Null)
	Case HASH_SHA1
		bo.Initialize2("Hashes.SHA1",Null)
	Case HASH_SHA256
		bo.Initialize2("Hashes.SHA256",Null)
	Case HASH_SHA512
		bo.Initialize2("Hashes.SHA512",Null)
	Case HASH_RMD160
		bo.Initialize2("Hashes.RMD160",Null)
	End Select
	'
	Select Case algorithm
	Case ALG_HEX
		res = bo.RunMethod("hex", Array(sinput)).result
	Case ALG_B64
		res = bo.RunMethod("b64", Array(sinput)).result
	Case ALG_HEX_HMAC
		res = bo.RunMethod("hex_hmac", Array(skey, sinput)).result
	Case ALG_b64_HMAC
		res = bo.RunMethod("b64_hmac", Array(skey, sinput)).result
	End Select
	Return res
End Sub

'use bcrypt with a callback to get a hash
Sub Hash1(salt As String, module As Object, methodName As String)
	Dim newHash As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(newHash))
	BANano.RunJavascriptMethod("hashpw", Array(sinput, salt, cb))
End Sub

'use bcrypt with a callback to verify a hash
Sub Verify(oldHash As String, module As Object, methodName As String)
	Dim res As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(res))
	BANano.RunJavascriptMethod("checkpw", Array(sinput, oldHash, cb))
End Sub