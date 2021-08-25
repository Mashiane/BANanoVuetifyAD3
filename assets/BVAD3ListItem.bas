B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private options As Map
End Sub

'Initializes the object. You can add parameters to this method if needed.
Sub Initialize(id As String) As BVAD3ListItem
	options.Initialize 
	options.Put("id", id)
	Return Me
End Sub

'get the item settings
Sub Item As Map
	Return options
End Sub

'set visibility of the item
Sub SetVisible(v As String) As BVAD3ListItem
	options.Put("visible", v)
	Return Me
End Sub

'set the parent id of the element
Sub SetParentID(v As String) As BVAD3ListItem
	options.Put("parentid", v)
	Return Me
End Sub

'set disabled of the element
Sub SetDisabled(v As String) As BVAD3ListItem
	options.Put("disabled", v)
	Return Me
End Sub

'set the href of the item
Sub SetHREF(v As String) As BVAD3ListItem
	options.Put("href", v)
	Return Me
End Sub

'set the name of the item
Sub SetName(v As String) As BVAD3ListItem
	options.Put("name", v)
	Return Me
End Sub

'set replace of the item
Sub SetReplace As BVAD3ListItem
	options.Put("replace", True)
	Return Me
End Sub

'set append of the item
Sub SetAppend As BVAD3ListItem
	options.Put("append", True)
	Return Me
End Sub

'set the to url for the item
Sub SetTo(sto As String) As BVAD3ListItem
	options.Put("to", sto)
	Return Me
End Sub

'set the left icon
Sub SetLeftIcon(v As String) As BVAD3ListItem
	options.put("lefticon", v)
	Return Me
End Sub

'set the left icon color	
Sub SetLeftIconColor(v As String) As BVAD3ListItem
	options.put("lefticoncolor", v)
	Return Me
End Sub

'set the left icon class
Sub SetLeftIconClass(v As String) As BVAD3ListItem
	options.put("lefticonclass", v)
	Return Me
End Sub

'set the avatar
Sub SetAvatar(v As String) As BVAD3ListItem
	options.put("avatar", v)
	Return Me
End Sub

'set the avatar class
Sub SetAvatarClass(v As String) As BVAD3ListItem
	options.Put("avatarclass", v)
	Return Me
End Sub

'set the avatar icon
Sub SetAvatarIcon(v As String) As BVAD3ListItem
	options.put("avataricon", v)
	Return Me
End Sub

'set the avatar icon color
Sub SetAvatarIconColor(v As String) As BVAD3ListItem
	options.put("avatariconcolor", v)
	Return Me
End Sub

'set the avatar icon class	
Sub SetAvatarIconClass(v As String) As BVAD3ListItem	
	options.put("avatariconclass", v)
	Return Me
End Sub	

'set the icon	
Sub SetIcon(v As String) As BVAD3ListItem	
	options.put("icon", v)
	Return Me
End Sub

'set the icon class
Sub SetIconClass(v As String) As BVAD3ListItem	
	options.put("iconclass", v)
	Return Me
End Sub

'set the icon color
Sub SetIconColor(v As String) As BVAD3ListItem	
	options.put("iconcolor", v)
	Return Me
End Sub

'set the title	
Sub SetTitle(v As String) As BVAD3ListItem	
	options.put("title", v)
	Return Me
End Sub

'set the target
Sub SetTarget(v As String) As BVAD3ListItem	
	options.put("target", v)
	Return Me
End Sub

'set the sub title
Sub SetSubTitle(v As String) As BVAD3ListItem	
	options.put("subtitle", v)
	Return Me
End Sub

'set the sub title 1
Sub SetSubTitle1(v As String) As BVAD3ListItem	
	options.put("subtitle1", v)
	Return Me
End Sub

'set the sub title 2
Sub SetSubTitle2(v As String) As BVAD3ListItem	
	options.put("subtitle2", v)
	Return Me
End Sub

'set the sub title 3
Sub SetSubTitle3(v As String) As BVAD3ListItem	
	options.put("subtitle3", v)
	Return Me
End Sub

'set the sub title 4
Sub SetSubTitle4(v As String) As BVAD3ListItem	
	options.put("subtitle4", v)
	Return Me
End Sub

'set the right icon
Sub SetRightIcon(v As String) As BVAD3ListItem	
	options.put("righticon", v)
	Return Me
End Sub

'set the right icon class
Sub SetRightIconClass(v As String) As BVAD3ListItem	
	options.put("righticonclass", v)
	Return Me
End Sub

'set the right text
Sub SetRightText(v As String) As BVAD3ListItem	
	options.put("righttext", v)
	Return Me
End Sub

'set the right icon color
Sub SetRightIconColor(v As String) As BVAD3ListItem	
	options.put("righticoncolor", v)
	Return Me
End Sub

'set the right check box value
Sub SetRightCheckBox(v As Boolean) As BVAD3ListItem
	options.put("rightcheckbox", v)
	Return Me
End Sub

'set the left chechbox color
Sub SetLeftCheckBox(v As Boolean) As BVAD3ListItem
	options.put("leftcheckbox", v)
	Return Me
End Sub

'set the right rating
Sub SetRightRating(v As String) As BVAD3ListItem
	options.put("rightrating", v)
	Return Me
End Sub

'set the right rating color
Sub SetRightRatingColor(v As String) As BVAD3ListItem
	options.put("rightratingcolor", v)
	Return Me
End Sub
	
'set the left switch value	
Sub SetLeftSwitch(v As Boolean) As BVAD3ListItem
	options.put("leftswitch", v)
	Return Me
End Sub
	'
'set the right switch value	
Sub SetRightSwitch(v As Boolean) As BVAD3ListItem
	options.put("rightswitch", v)
	Return Me
End Sub
'
'set the right chip
Sub SetRightChip(v As String) As BVAD3ListItem
	options.put("rightchip", v)
	Return Me
End Sub

'set the right chip color
Sub SetRightChipColor(v As String) As BVAD3ListItem
	options.put("rightchipcolor", v)
	Return Me
End Sub

'set the right avatar
Sub SetRightAvatar(v As String) As BVAD3ListItem
	options.put("rightavatar", v)
	Return Me
End Sub

'set the right avatar icon
Sub SetRightAvatarIcon(v As String) As BVAD3ListItem
	options.put("rightavataricon", v)
	Return Me
End Sub

'set the right avatar icon color
Sub SetRightAvatarIconColor(v As String) As BVAD3ListItem
	options.put("rightavatariconcolor", v)
	Return Me
End Sub

'set the avatar text
Sub SetAvatarText(v As String) As BVAD3ListItem
	options.put("avatartext", v)
	Return Me
End Sub

'set the avatar text color
Sub SetAvatarTextColor(v As String) As BVAD3ListItem
	options.put("avatartextcolor", v)
	Return Me
End Sub

'set the right avatar text
Sub SetRightAvatarText(v As String) As BVAD3ListItem
	options.put("rightavatartext", v)
	Return Me
End Sub

'set the right avatar text color
Sub SetRightAvatarTextColor(v As String) As BVAD3ListItem
	options.put("rightavatartextcolor", v)
	Return Me
End Sub

'set an attribute
Sub SetAttr(attr As String, v As String) As BVAD3ListItem
	options.put(attr, v)
	Return Me
End Sub