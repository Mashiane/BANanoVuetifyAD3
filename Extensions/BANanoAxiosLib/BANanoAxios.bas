B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.45
@EndOfDesignText@
Sub Class_Globals
	Private Axios As BANanoObject
	Private AxiosPromise As BANanoPromise
	Private BANano As BANano  'ignore
	Private headers As Map
	Private EndPoint As String
	Public Status As Int
	Public Data As Map
	Public Result As List
	Public StatusText As String
	Public response As Map
	Public config As Map
	Public request As Map
	Private params As Map
	Private options As Map
	Public CorsAnywhere As Boolean
End Sub

'Initializes BANanoAxios
Public Sub Initialize(url As String) As BANanoAxios
	BANano.DependsOnAsset("axios.min.js")
	Axios.Initialize("axios")
	headers.Initialize
	Status = 404
	Data.Initialize
	Result.Initialize
	StatusText = ""
	response.Initialize
	config.Initialize
	request.initialize
	params.Initialize
	options.Initialize
	CorsAnywhere = False
	SetURL(url)
	Return Me
End Sub

'set basic authorization for this connection
Sub SetBasicAuthorization(username As String, password As String) As BANanoAxios
	Dim usernamepassword As Object = BANano.ToBase64($"${username}:${password}"$)
	Dim basic As String = $"Basic ${usernamepassword}"$
	AddHeader("Authorization", basic)
	Return Me
End Sub

'set cors - true (cors), false (no-cors)
Sub SetCORS(b As Boolean) As BANanoAxios
	If b Then
		SetMode("cors")
	Else
		SetMode("no-cors")
	End If
End Sub

'set origin
Sub SetOrigin(value As String) As BANanoAxios
	AddHeader("Origin", value)
	Return Me
End Sub

'set the url to process, this is set on initialize
Sub SetURL(ep As String) As BANanoAxios
	EndPoint = ep
	Return Me
End Sub

'add a header value
Sub AddHeader(prop As String, value As String) As BANanoAxios
	headers.Put(prop, value)
	Return Me
End Sub

'add a parameter value
Sub AddParameter(prop As String, value As String) As BANanoAxios
	params.Put(prop, value)
	Return Me
End Sub

'add an option
Sub AddOption(prop As String, value As String) As BANanoAxios
	options.Put(prop, value)
	Return Me
End Sub

'add a data value
Sub AddData(prop As String, value As Object) As BANanoAxios
	Data.Put(prop, value)
	Return Me
End Sub

'set access control allow origin
Sub SetAccessControlAllowOrigin(value As String) As BANanoAxios
	AddHeader("Access-Control-Allow-Origin", value)
	Return Me
End Sub

'set access control allow credentials
Sub SetAccessControlAllowCredentials(value As Boolean) As BANanoAxios
	AddHeader("Access-Control-Allow-Credentials", value)
	Return Me
End Sub

'set access control allow methods
Sub SetAccessControlAllowMethods(value As String) As BANanoAxios
	AddHeader("Access-Control-Allow-Methods", value)
	Return Me
End Sub

'set access control allow headers
Sub SetAccessControlAllowHeaders(value As String) As BANanoAxios
	AddHeader("Access-Control-Allow-Headers", value)
	Return Me
End Sub

'set the content type
Sub SetContentType(value As String) As BANanoAxios
	AddHeader("Content-Type", value)
	Return Me
End Sub

'set the timeout
Sub SetTimeOut(timeout As Int) As BANanoAxios
	options.Put("timeout", timeout)
	Return Me
End Sub

'get an endpoint and return a promise
Sub Get As BANanoPromise
	Return Execute("get")
End Sub

'set the response type, use stream for images
Sub SetResponseType(rType As String) As BANanoAxios
	options.put("responseType", rType)
	Return Me
End Sub

'set base url
Sub SetBaseURL(url As String) As BANanoAxios
	options.Put("baseURL", url)
	Return Me
End Sub

'set mode
Sub SetMode(mode As String) As BANanoAxios
	options.Put("mode", mode)
	Return Me
End Sub


'internal execute method
private Sub Execute(MethodName As String) As BANanoPromise
	If CorsAnywhere Then
		EndPoint = $"https://cors-anywhere.herokuapp.com/${EndPoint}"$
	End If
	options.Put("method", MethodName)
	options.Put("url", EndPoint)
	If headers.Size > 0 Then
		options.Put("headers", headers)
	End If
	If Data.Size > 0 Then
		options.Put("data", Data)
	End If
	If params.Size > 0 Then
		options.Put("params", params)
	End If
	AxiosPromise = Axios.Execute(Array(options))
	Return AxiosPromise
End Sub

'post to an endpoint and return a promise
Sub Post As BANanoPromise
	Return Execute("post")
End Sub

'put to an endpoint and return a promise
Sub Put As BANanoPromise
	Return Execute("put")
End Sub

'patch to an endpoint and return a promise
Sub Patch As BANanoPromise
	Return Execute("patch")
End Sub

'delete an endpoint and return a promise
Sub Delete As BANanoPromise
	Return Execute("delete")
End Sub

'convert record response to something readable
Sub FromJSON
	Status = response.Get("status")
	Data = response.Get("data")
	StatusText = response.Get("statusText")
	If StatusText = "" Then
		StatusText = GetStatusText(Status)
	End If
	headers = response.Get("headers")
	config = response.Get("config")
	request = response.Get("request")
End Sub

'execute a get and wait
Sub GetWait As Map
	response = BANano.Await(Get)
	FromJSON
	Return Data
End Sub

'execute a post and wait
Sub PostWait(rec As Map) As String
	Data = rec
	response = BANano.Await(Post)
	FromJSON
	Return Status
End Sub

'execute a put and wait
Sub PutWait(rec As Map) As String
	Data = rec
	response = BANano.Await(Put)
	FromJSON
	Return Status
End Sub

'execute a delete and wait
Sub DeleteWait As String
	response = BANano.Await(Delete)
	FromJSON
	Return Status
End Sub

'execute a patch and wait
Sub PatchWait As String
	response = BANano.Await(Patch)
	FromJSON
	Return Status
End Sub

'set response encoding
Sub SetResponseEncoding(re As String) As BANanoAxios
	options.Put("responseEncoding", re)
	Return Me
End Sub

'on uploadprogress
Sub onUploadProgress(module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	Dim progressEvent As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(progressEvent))
	options.Put("onUploadProgress", cb)
End Sub

'on onDownloadProgress
Sub onDownloadProgress(module As Object, methodname As String)
	methodname = methodname.ToLowerCase
	Dim progressEvent As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodname, Array(progressEvent))
	options.Put("onDownloadProgress", cb)
End Sub

'set maxcontentlength
Sub SetMaxContentLength(ml As Int) As BANanoAxios
	options.Put("maxContentLength", ml)
	Return Me
End Sub

'set maxBodyLength
Sub SetMaxBodyLength(mbl As Int) As BANanoAxios
	options.Put("maxBodyLength", mbl)
	Return Me
End Sub

'set decompress
Sub SetDecompress(b As Boolean) As BANanoAxios
	options.Put("decompress", b)
	Return Me
End Sub

'set credentials
Sub SetCredentials(s As String) As BANanoAxios
	options.Put("credentials", s)
	Return Me
End Sub

'get the status text
Sub GetStatusText(xStatus As String) As String
	Select Case xStatus
		Case "100"
			Return "Continue"
		Case "101"
			Return "Switching Protocols"
		Case "102"
			Return "Processing"
		Case "103"
			Return "Early Hints"
		Case "200"
			Return "OK"
		Case "201"
			Return "Created"
		Case "202"
			Return "Accepted"
		Case "203"
			Return "Non-Authoritative Information"
		Case "204"
			Return "No Content"
		Case "205"
			Return "Reset Content"
		Case "206"
			Return "Partial Content"
		Case "207"
			Return "Multi-Status"
		Case "208"
			Return "Already Reported"
		Case "226"
			Return "IM Used"
		Case "300"
			Return "Multiple Choices"
		Case "301"
			Return "Moved Permanently"
		Case "302"
			Return "Found"
		Case "303"
			Return "See Other"
		Case "304"
			Return  "Not Modified"
		Case "305"
			Return "Use Proxy"
		Case "306"
			Return "Switch Proxy"
		Case "307"
			Return "Temporary Redirect"
		Case "308"
			Return  "Permanent Redirect"
		Case "400"
			Return "Bad Request"
		Case "401"
			Return "Unauthorized"
		Case "403"
			Return "Forbidden"
		Case "404"
			Return "Not Found"
		Case "405"
			Return "Method Not Allowed"
		Case "406"
			Return "Not Acceptable"
		Case "407"
			Return "Proxy Authentication Required"
		Case "408"
			Return "Request Timeout"
		Case "409"
			Return "Conflict"
		Case "410"
			Return "Gone"
		Case "411"
			Return "Length Required"
		Case "412"
			Return "Precondition Failed"
		Case "413"
			Return "Payload Too Large"
		Case "414"
			Return "URI Too Long"
		Case "415"
			Return "Unsupported Media Type"
		Case "416"
			Return "Range Not Satisfiable"
		Case "417"
			Return "Expectation Failed"
		Case "418"
			Return "I'm a teapot"
		Case "421"
			Return "Misdirected Request"
		Case "422"
			Return "Unprocessable Entity"
		Case "423"
			Return "Locked"
		Case "424"
			Return "Failed Dependency"
		Case "425"
			Return "Too Early"
		Case "426"
			Return "Upgrade Required"
		Case "428"
			Return "Precondition Required"
		Case "429"
			Return "Too Many Requests"
		Case "431"
			Return "Request Header Fields Too Large"
		Case "451"
			Return "Unavailable For Legal Reasons"
		Case "500"
			Return "Internal Server Error"
		Case "501"
			Return "Not Implemented"
		Case "502"
			Return "Bad Gateway"
		Case "503"
			Return "Service Unavailable"
		Case "504"
			Return "Gateway Timeout"
		Case "505"
			Return "HTTP Version Not Supported"
		Case "506"
			Return "Variant Also Negotiates"
		Case "507"
			Return "Insufficient Storage"
		Case "508"
			Return "Loop Detected"
		Case "510"
			Return "Not Extended"
		Case "511"
			Return "Network Authentication Required"
		Case Else
			Return ""
	End Select
End Sub
