B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12, 11
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "adcards"
	Private banano As BANano    
	Private VCard3 As VCard			
	Private VCard1 As VCard					
	Private VCard2 As VCard					
	Private VCard4 As VCard					
	Private VCard5 As VCard					
	Private VAvatar1 As VAvatar				
	Private cardscontainer1 As VContainer	
	Private cardsr1 As VRow					
	Private VCardSubTitle1 As VCardSubTitle		
	Private VCardTitle1 As VCardTitle			
	Private VCol1 As VCol					
	Private VCol2 As VCol						
	Private VCol3 As VCol					
	Private VCol4 As VCol						
	Private VCol5 As VCol						
	Private VHover1 As VHover				
	Private VImg1 As VImg					
	Private VLabel1 As VLabel				
	Private VLabel2 As VLabel				
	Private VList1 As VList					
	Private VListItem1 As VListItem			
	Private VListItem2 As VListItem			
	Private VListSlot1 As VListSlot			
	Private VListSlot2 As VListSlot
	Private VListSlot3 As VListSlot
	Private VListSlot4 As VListSlot
	Private VListSlot5 As VListSlot
	Private VListSlot6 As VListSlot
	Private profileimg As VAvatar
	Private profiler As VRow
	Private profiler1c1 As VCol
	Private profiler1c2 As VCol
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	
	banano.LoadLayout(about.Here, "mycards")
	'load the profile
	banano.LoadLayoutAppend(VCard3.CardImage.Here, "myprofile")
		
	about.BindVueElement(VCard3.VElement)
	about.BindVueElement(VCard1.VElement)
	about.BindVueElement(VCard2.VElement)
	about.BindVueElement(VCard4.VElement)
	about.BindVueElement(VCard5.VElement)
	about.BindVueElement(VAvatar1.VElement)
	about.BindVueElement(cardscontainer1.VElement)
	about.BindVueElement(cardsr1.VElement)
	about.BindVueElement(VCardSubTitle1.VElement)
	about.BindVueElement(VCardTitle1.VElement)
	about.BindVueElement(VCol1.VElement)
	about.BindVueElement(VCol2.VElement)
	about.BindVueElement(VCol3.VElement)
	about.BindVueElement(VCol4.VElement)
	about.BindVueElement(VCol5.VElement)
	about.BindVueElement(VHover1.VElement)
	about.BindVueElement(VImg1.VElement)
	about.BindVueElement(VLabel1.VElement)
	about.BindVueElement(VLabel2.VElement)
	about.BindVueElement(VList1.VElement)
	about.BindVueElement(VListItem1.VElement)
	about.BindVueElement(VListItem2.VElement)
	about.BindVueElement(VListSlot1.VElement)
	about.BindVueElement(VListSlot2.VElement)
	about.BindVueElement(VListSlot3.VElement)
	about.BindVueElement(VListSlot4.VElement)
	about.BindVueElement(VListSlot5.VElement)
	about.BindVueElement(VListSlot6.VElement)
	about.BindVueElement(profileimg.VElement)
	about.BindVueElement(profiler.VElement)
	about.BindVueElement(profiler1c1.VElement)
	about.BindVueElement(profiler1c2.VElement)
	
	'add the component as a router
	vuetify.AddRoute(about) 
End Sub



Private Sub VCard4_Click (e As BANanoEvent)
	
End Sub