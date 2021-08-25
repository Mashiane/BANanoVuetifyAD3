B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12

Sub Class_Globals
	Private swal As BANanoObject
	Private options As Map
End Sub

#if css
.swal2-container {
    font-family: "Roboto";
}
#End If

'Initializes the object. You can add parameters to this method if needed.
Sub Initialize As VueSwal
	options.Initialize 
	swal.Initialize("swal")
	confirmButtonColor("#2196f3")
	Return Me
End Sub

Sub fire As Map
	Dim resp As Map = swal.RunMethod("fire", options)
	Return resp
End Sub

Sub title(s As String) As VueSwal
	options.Put("title", s)
	Return Me
End Sub

Sub position(s As String) As VueSwal
	options.Put("position", s)
	Return Me
End Sub

Sub icon(s As String) As VueSwal
	options.Put("icon", s)
	Return Me
End Sub

Sub text(s As String) As VueSwal
	options.Put("text", s)
	Return Me
End Sub

Sub footer(s As String) As VueSwal
	options.Put("footer", s)
	Return Me
End Sub

Sub imageUrl(s As String) As VueSwal
	options.Put("imageUrl", s)
	Return Me
End Sub

Sub imageHeight(s As String) As VueSwal
	options.Put("imageHeight", s)
	Return Me
End Sub

Sub imageAlt(s As String) As VueSwal
	options.Put("imageAlt", s)
	Return Me
End Sub

Sub showCloseButton(b As Boolean) As VueSwal
	options.Put("showCloseButton", b)
	Return Me
End Sub

Sub showCancelButton(b As Boolean) As VueSwal
	options.Put("showCancelButton", b)
	Return Me
End Sub

Sub focusConfirm(b As Boolean) As VueSwal
	options.Put("focusConfirm", b)
	Return Me
End Sub

Sub iconHtml(s As String) As VueSwal
	options.Put("iconHtml", s)
	Return Me
End Sub

Sub confirmButtonText(s As String) As VueSwal
	options.Put("confirmButtonText", s)
	Return Me
End Sub

Sub confirmButtonColor(s As String) As VueSwal
	options.Put("confirmButtonColor", s)
	Return Me
End Sub

Sub showDenyButton(b As Boolean) As VueSwal
	options.Put("showDenyButton", b)
	Return Me
End Sub

Sub denyButtonText(s As String) As VueSwal
	options.Put("denyButtonText", s)
	Return Me
End Sub

Sub showConfirmButton(b As Boolean) As VueSwal
	options.Put("showConfirmButton", b)
	Return Me
End Sub

Sub timer(t As Int) As VueSwal
	options.put("timer", t)
	Return Me
End Sub

Sub cancelButtonColor(s As String) As VueSwal
	options.Put("cancelButtonColor", s)
	Return Me
End Sub

Sub imageWidth(s As String) As VueSwal
	options.put("imageWidth", s)
	Return Me
End Sub

Sub width(s As String) As VueSwal
	options.Put("width", s)
	Return Me
End Sub

Sub padding(s As String) As VueSwal
	options.Put("padding", s)
	Return Me
End Sub

Sub timerProgressBar(b As Boolean) As VueSwal
	options.Put("timerProgressBar", b)
	Return Me
End Sub

Sub cancelButtonText(s As String) As VueSwal
	options.Put("cancelButtonText", s)
	Return Me
End Sub

Sub input(s As String) As VueSwal
	options.Put("input", s)
	Return Me
End Sub

Sub allowOutsideClick(b As Boolean) As VueSwal
	options.Put("allowOutsideClick", b)
	Return Me
End Sub

Sub allowEscapeKey(b As Boolean) As VueSwal
	options.Put("allowEscapeKey", b)
	Return Me
End Sub

Sub allowEnterKey(b As Boolean) As VueSwal
	options.Put("allowEnterKey", b)
	Return Me
End Sub

Sub closeButtonHtml(s As String) As VueSwal
	options.Put("closeButtonHtml", s)
	Return Me
End Sub

Sub inputLabel(s As String) As VueSwal
	options.Put("inputLabel", s)
	Return Me
End Sub

Sub inputPlaceholder(s As String) As VueSwal
	options.Put("inputPlaceholder", s)
	Return Me
End Sub

Sub inputValue(s As String) As VueSwal
	options.Put("inputValue", s)
	Return Me
End Sub

Sub toast(b As Boolean) As VueSwal
	options.Put("toast", b)
	Return Me
End Sub

