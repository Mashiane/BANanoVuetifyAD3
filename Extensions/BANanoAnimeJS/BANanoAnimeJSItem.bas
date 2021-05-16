B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Public options As Map
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize As BANanoAnimeJSItem
	options.Initialize 
	Return Me
End Sub

'delay
Sub delay(d As Object) As BANanoAnimeJSItem
	options.Put("delay", d)
	Return Me
End Sub

'value
Sub value(v As Object) As BANanoAnimeJSItem
	options.Put("value", v)
	Return Me
End Sub

'easing
Sub easing(e As Object) As BANanoAnimeJSItem
	options.Put("easing", e)
	Return Me
End Sub

'duration
Sub duration(d As Object) As BANanoAnimeJSItem
	options.Put("duration", d)
	Return Me
End Sub

'pop return the options
Sub pop As Map
	Return options
End Sub

'set an option to change
private Sub change(prop As String, propvalue As Object) As BANanoAnimeJSItem
	options.Put(prop, propvalue)
	Return Me
End Sub

'set an option to change from to
private Sub change1(prop As String, fromValue As Object, toValue As Object) As BANanoAnimeJSItem
	Dim lopts As List
	lopts.Initialize 
	lopts.Add(fromValue)
	lopts.Add(toValue)
	options.Put(prop, lopts)
	Return Me
End Sub

'change the left css property
Sub left(l As Object) As BANanoAnimeJSItem
	change("left", l)
	Return Me
End Sub

'change the background color
Sub backgroundColor(bg As String) As BANanoAnimeJSItem
	change("backgroundColor", bg)
	Return Me
End Sub

'change the border radius from to
Sub borderRadius(fromValue As Object, toValue As Object) As BANanoAnimeJSItem
	change1("borderRadius", fromValue, toValue)
	Return Me
End Sub

'translateX
Sub translateX(x As Object) As BANanoAnimeJSItem
	change("translateX", x)
	Return Me
End Sub

'translateX1
Sub translateX1(x0 As Object, x1 As Object) As BANanoAnimeJSItem
	Dim points As List
	points.Initialize 
	points.Add(x0)
	points.Add(x1)
	change("translateX", points)
	Return Me
End Sub

'translateY
Sub translateY(x As Object) As BANanoAnimeJSItem
	change("translateY", x)
	Return Me
End Sub

'translateZ
Sub translateZ(x As Object) As BANanoAnimeJSItem
	change("translateZ", x)
	Return Me
End Sub

'rotate
Sub rotate(r As Object) As BANanoAnimeJSItem
	change("rotate", r)
	Return Me
End Sub

'rotateX
Sub rotateX(r As Object) As BANanoAnimeJSItem
	change("rotateX", r)
	Return Me
End Sub

'rotateY
Sub rotateY(r As Object) As BANanoAnimeJSItem
	change("rotateY", r)
	Return Me
End Sub

'rotateZ
Sub rotateZ(r As Object) As BANanoAnimeJSItem
	change("rotateZ", r)
	Return Me
End Sub

'scale
Sub scale(s As Object) As BANanoAnimeJSItem
	change("scale", s)
	Return Me
End Sub

'scaleX
Sub scaleX(s As Object) As BANanoAnimeJSItem
	change("scaleX", s)
	Return Me
End Sub

'scaleY
Sub scaleY(s As Object) As BANanoAnimeJSItem
	change("scaleY", s)
	Return Me
End Sub

'scaleZ
Sub scaleZ(s As Object) As BANanoAnimeJSItem
	change("scaleZ", s)
	Return Me
End Sub

'skew
Sub skew(s As Object) As BANanoAnimeJSItem
	change("skew", s)
	Return Me
End Sub

'skewX
Sub skewX(s As Object) As BANanoAnimeJSItem
	change("skewX", s)
	Return Me
End Sub

'skewY
Sub skewY(s As Object) As BANanoAnimeJSItem
	change("skewY", s)
	Return Me
End Sub

'perspective
Sub perspective(s As Object) As BANanoAnimeJSItem
	change("perspective", s)
	Return Me
End Sub

'round
Sub roundIT(s As Object) As BANanoAnimeJSItem
	change("round", s)
	Return Me
End Sub

'loop
Sub loopIT(s As Boolean) As BANanoAnimeJSItem
	change("loop", s)
	Return Me
End Sub

'baseFrequency
Sub baseFrequency(s As Object) As BANanoAnimeJSItem
	change("baseFrequency", s)
	Return Me
End Sub

'direction
Sub direction(d As Object) As BANanoAnimeJSItem
	change("direction", d)
	Return Me
End Sub

'endDelay
Sub endDelay(s As Object) As BANanoAnimeJSItem
	change("endDelay", s)
	Return Me
End Sub

'innerHTML
Sub innerHTML(fromValue As Object, toValue As Object) As BANanoAnimeJSItem
	change1("innerHTML", fromValue, toValue)
	Return Me
End Sub

'autoplay
Sub autoplay(b As Boolean) As BANanoAnimeJSItem
	change("autoplay", b)
	Return Me
End Sub

'width
Sub width(w As Object) As BANanoAnimeJSItem
	change("width", w)
	Return Me
End Sub

'height
Sub height(h As Object) As BANanoAnimeJSItem
	change("height", h)
	Return Me
End Sub