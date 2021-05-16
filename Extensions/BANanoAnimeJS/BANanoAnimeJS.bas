B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private boAnime As BANanoObject
	'Private options As Map
	Private targets As List
	Private mCallBack As Object
	Private keyframesx As List
	
	Public const ROTATE_1turn As String = "1turn"
	
	Public const EASING_linear As String = "linear"
	Public const EASING_easeInOutExpo As String = "easeInOutExpo"
	Public const EASING_easeInOutSine As String = "easeInOutSine"
	Public const EASING_easeInOutQuad As String = "easeInOutQuad"
	
	'
	Public const DIRECTION_alternate As String = "alternate"
	Public const DIRECTION_reverse As String = "reverse"
	Public anime As BANanoAnimeJSItem
End Sub

'initialize the library
Public Sub Initialize(Module As Object, targetx As Object) As BANanoAnimeJS
	'options.Initialize 
	targets.Initialize 
	mCallBack = Module
	keyframesx.Initialize
	anime.Initialize  
	'
	target(targetx)
	Return Me
End Sub

' an individual animation
Sub animation As BANanoAnimeJSItem
	Dim ajsa As BANanoAnimeJSItem
	ajsa.Initialize
	Return ajsa
End Sub

'add a keyframe
Sub keyframes(kf As BANanoAnimeJSItem) As BANanoAnimeJS
	keyframesx.Add(kf.pop)
	Return Me
End Sub

''set the duration
'Sub duration(durationx As Int) As BANanoAnimeJS
'	options.Put("duration", durationx)
'	Return Me	
'End Sub

'set the target to process
Sub target(jTarget As String) As BANanoAnimeJS
	targets.Add(jTarget)
	Return Me
End Sub

'play the animation
Sub play
	Dim options As Map = anime.options
	If keyframesx.Size > 0 Then
		options.put("keyframes", keyframesx)
	End If
	options.Put("targets", targets)
	boAnime.Initialize4("anime", options)
End Sub

''set an option to change
'Sub change(prop As String, value As Object) As BANanoAnimeJS
'	options.Put(prop, value)
'	Return Me
'End Sub
'
''set an option to change from to
'Sub change1(prop As String, fromValue As Object, toValue As Object) As BANanoAnimeJS
'	Dim lopts As List
'	lopts.Initialize 
'	lopts.Add(fromValue)
'	lopts.Add(toValue)
'	options.Put(prop, lopts)
'	Return Me
'End Sub

'when done
Sub onDone(methodName As String) As BANanoAnimeJS
	
	Return Me
End Sub

'when an update happend
Sub onUpdate(methodName As String) As BANanoAnimeJS
	
	Return Me
End Sub

''change the left css property
'Sub left(l As Object) As BANanoAnimeJS
'	change("left", l)
'	Return Me
'End Sub

''change the background color
'Sub backgroundColor(bg As String) As BANanoAnimeJS
'	change("backgroundColor", bg)
'	Return Me
'End Sub
'
''change the border radius from to
'Sub borderRadius(fromValue As Object, toValue As Object) As BANanoAnimeJS
'	change1("borderRadius", fromValue, toValue)
'	Return Me
'End Sub
'
''translateX
'Sub translateX(x As Object) As BANanoAnimeJS
'	change("translateX", x)
'	Return Me
'End Sub

''translateX1
'Sub translateX1(x0 As Object, x1 As Object) As BANanoAnimeJS
'	Dim points As List
'	points.Initialize 
'	points.Add(x0)
'	points.Add(x1)
'	change("translateX", points)
'	Return Me
'End Sub
'
''translateY
'Sub translateY(x As Object) As BANanoAnimeJS
'	change("translateY", x)
'	Return Me
'End Sub

''translateZ
'Sub translateZ(x As Object) As BANanoAnimeJS
'	change("translateZ", x)
'	Return Me
'End Sub
'
''rotate
'Sub rotate(r As Object) As BANanoAnimeJS
'	change("rotate", r)
'	Return Me
'End Sub
'
''rotateX
'Sub rotateX(r As Object) As BANanoAnimeJS
'	change("rotateX", r)
'	Return Me
'End Sub
'
''rotateY
'Sub rotateY(r As Object) As BANanoAnimeJS
'	change("rotateY", r)
'	Return Me
'End Sub
'
''rotateZ
'Sub rotateZ(r As Object) As BANanoAnimeJS
'	change("rotateZ", r)
'	Return Me
'End Sub
'
''scale
'Sub scale(s As Object) As BANanoAnimeJS
'	change("scale", s)
'	Return Me
'End Sub
'
''scaleX
'Sub scaleX(s As Object) As BANanoAnimeJS
'	change("scaleX", s)
'	Return Me
'End Sub
'
''scaleY
'Sub scaleY(s As Object) As BANanoAnimeJS
'	change("scaleY", s)
'	Return Me
'End Sub
'
''scaleZ
'Sub scaleZ(s As Object) As BANanoAnimeJS
'	change("scaleZ", s)
'	Return Me
'End Sub
'
''skew
'Sub skew(s As Object) As BANanoAnimeJS
'	change("skew", s)
'	Return Me
'End Sub
'
''skewX
'Sub skewX(s As Object) As BANanoAnimeJS
'	change("skewX", s)
'	Return Me
'End Sub
'
''skewY
'Sub skewY(s As Object) As BANanoAnimeJS
'	change("skewY", s)
'	Return Me
'End Sub
'
''perspective
'Sub perspective(s As Object) As BANanoAnimeJS
'	change("perspective", s)
'	Return Me
'End Sub
'
''round
'Sub roundIT(s As Object) As BANanoAnimeJS
'	change("round", s)
'	Return Me
'End Sub
'
''easing
'Sub easing(s As Object) As BANanoAnimeJS
'	change("easing", s)
'	Return Me
'End Sub
'
''loop
'Sub loopIT(s As Boolean) As BANanoAnimeJS
'	change("loop", s)
'	Return Me
'End Sub
'
''baseFrequency
'Sub baseFrequency(s As Object) As BANanoAnimeJS
'	change("baseFrequency", s)
'	Return Me
'End Sub
'
''direction
'Sub direction(d As Object) As BANanoAnimeJS
'	change("direction", d)
'	Return Me
'End Sub
'
''delay
'Sub delay(s As Object) As BANanoAnimeJS
'	change("delay", s)
'	Return Me
'End Sub
'
''endDelay
'Sub endDelay(s As Object) As BANanoAnimeJS
'	change("endDelay", s)
'	Return Me
'End Sub
'
''innerHTML
'Sub innerHTML(fromValue As Object, toValue As Object) As BANanoAnimeJS
'	change1("innerHTML", fromValue, toValue)
'	Return Me
'End Sub
'
''autoplay
'Sub autoplay(b As Boolean) As BANanoAnimeJS
'	change("autoplay", b)
'	Return Me
'End Sub
'
''width
'Sub width(w As Object) As BANanoAnimeJS
'	change("width", w)
'	Return Me
'End Sub
'
''height
'Sub heigth(h As Object) As BANanoAnimeJS
'	change("height", h)
'	Return Me
'End Sub