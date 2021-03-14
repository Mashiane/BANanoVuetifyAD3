B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private options As Map
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(id As String) As BVAD3ListItem
	options.Initialize 
	options.Put("id", id)
	Return Me
End Sub

Sub Item As Map
	Return options
End Sub

Sub SetParentID(v As String) As BVAD3ListItem
	options.Put("parentid", True)
	Return Me
End Sub

Sub SetDisabled(v As String) As BVAD3ListItem
	options.Put("disabled", True)
	Return Me
End Sub

Sub SetHREF(v As String) As BVAD3ListItem
	options.Put("href", True)
	Return Me
End Sub

Sub SetName(v As String) As BVAD3ListItem
	options.Put("name", True)
	Return Me
End Sub

Sub SetReplace As BVAD3ListItem
	options.Put("replace", True)
	Return Me
End Sub

Sub SetAppend As BVAD3ListItem
	options.Put("append", True)
	Return Me
End Sub

Sub SetTo(sto As String) As BVAD3ListItem
	options.Put("to", sto)
	Return Me
End Sub

Sub SetLeftIcon(v As String) As BVAD3ListItem
	options.put("lefticon", v)
	Return Me
End Sub
	
Sub SetLeftIconColor(v As String) As BVAD3ListItem
	options.put("lefticoncolor", v)
	Return Me
End Sub

Sub SetLeftIconClass(v As String) As BVAD3ListItem
	options.put("lefticonclass", v)
	Return Me
End Sub

Sub SetAvatar(v As String) As BVAD3ListItem
	options.put("avatar", v)
	Return Me
End Sub

Sub SetAvatarClass(v As String) As BVAD3ListItem
	options.Put("avatarclass", v)
	Return Me
End Sub

Sub SetAvatarIcon(v As String) As BVAD3ListItem
	options.put("avataricon", v)
	Return Me
End Sub

Sub SetAvatarIconColor(v As String) As BVAD3ListItem
	options.put("avatariconcolor", v)
	Return Me
End Sub
	
Sub SetAvatarIconClass(v As String) As BVAD3ListItem	
	options.put("avatariconclass", v)
	Return Me
End Sub	
	
Sub SetIcon(v As String) As BVAD3ListItem	
	options.put("icon", v)
	Return Me
End Sub

Sub SetIconClass(v As String) As BVAD3ListItem	
	options.put("iconclass", v)
	Return Me
End Sub

Sub SetIconColor(v As String) As BVAD3ListItem	
	options.put("iconcolor", v)
	Return Me
End Sub
	
Sub SetTitle(v As String) As BVAD3ListItem	
	options.put("title", v)
	Return Me
End Sub

Sub SetSubTitle(v As String) As BVAD3ListItem	
	options.put("subtitle", v)
	Return Me
End Sub

Sub SetSubTitle1(v As String) As BVAD3ListItem	
	options.put("subtitle1", v)
	Return Me
End Sub
	'
Sub SetRightIcon(v As String) As BVAD3ListItem	
	options.put("righticon", v)
	Return Me
End Sub

Sub SetRightIconClass(v As String) As BVAD3ListItem	
	options.put("righticonclass", v)
	Return Me
End Sub

Sub SetRightText(v As String) As BVAD3ListItem	
	options.put("righttext", v)
	Return Me
End Sub

Sub SetRightIconColor(v As String) As BVAD3ListItem	
	options.put("righticoncolor", v)
	Return Me
End Sub

Sub SetRightCheckBox(v As Boolean) As BVAD3ListItem
	options.put("rightcheckbox", v)
	Return Me
End Sub

Sub SetLeftCheckBox(v As Boolean) As BVAD3ListItem
	options.put("leftcheckbox", v)
	Return Me
End Sub
	'
Sub SetRightRating(v As String) As BVAD3ListItem
	options.put("rightrating", v)
	Return Me
End Sub

Sub SetRightRatingColor(v As String) As BVAD3ListItem
	options.put("rightratingcolor", v)
	Return Me
End Sub
	'
Sub SetLeftSwitch(v As Boolean) As BVAD3ListItem
	options.put("leftswitch", v)
	Return Me
End Sub
	'
Sub SetRightSwitch(v As Boolean) As BVAD3ListItem
	options.put("rightswitch", v)
	Return Me
End Sub
'
Sub SetRightChip(v As String) As BVAD3ListItem
	options.put("rightchip", v)
	Return Me
End Sub

Sub SetRightChipColor(v As String) As BVAD3ListItem
	options.put("rightchipcolor", v)
	Return Me
End Sub

''''
Sub SetRightAvatar(v As String) As BVAD3ListItem
	options.put("rightavatar", v)
	Return Me
End Sub

Sub SetRightAvatarIcon(v As String) As BVAD3ListItem
	options.put("rightavataricon", v)
	Return Me
End Sub

Sub SetRightAvatarIconColor(v As String) As BVAD3ListItem
	options.put("rightavatariconcolor", v)
	Return Me
End Sub

Sub SetAvatarText(v As String) As BVAD3ListItem
	options.put("avatartext", v)
	Return Me
End Sub

Sub SetAvatarTextColor(v As String) As BVAD3ListItem
	options.put("avatartextcolor", v)
	Return Me
End Sub

Sub SetRightAvatarText(v As String) As BVAD3ListItem
	options.put("rightavatartext", v)
	Return Me
End Sub

Sub SetRightAvatarTextColor(v As String) As BVAD3ListItem
	options.put("rightavatartextcolor", v)
	Return Me
End Sub
