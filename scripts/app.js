var _banano_part23=new banano_part23();var _banano_bananovuetifyad3_bananoshared=new banano_bananovuetifyad3_bananoshared();var _banano_part23_bvad3=new banano_part23_bvad3();var _banano_part23_viewdialog=new banano_part23_viewdialog();var _banano_part23_viewgrid=new banano_part23_viewgrid();var _banano_part23_viewgrid2=new banano_part23_viewgrid2();var _banano_part23_viewhome=new banano_part23_viewhome();var _banano_part23_viewquestions=new banano_part23_viewquestions();var _banano_part23_viewselects=new banano_part23_viewselects();var _banano_part23_viewtable=new banano_part23_viewtable();var _banano_part23_viewtextfields=new banano_part23_viewtextfields();var _banano_part23_viewusers=new banano_part23_viewusers();var _banano_part23_pgindex=new banano_part23_pgindex();var _banano_part23_tooltip=new banano_part23_tooltip();var _banano_part23_viewabout=new banano_part23_viewabout();var _banano_part23_viewalert=new banano_part23_viewalert();var _banano_part23_viewavatars=new banano_part23_viewavatars();var _banano_part23_viewbadges=new banano_part23_viewbadges();var _banano_part23_viewbuttons=new banano_part23_viewbuttons();var _banano_part23_viewdatepicker=new banano_part23_viewdatepicker();

/* App */
/* =========================== BVAD3 =========================== */
function banano_part23_bvad3() {
var _B;
// [7] Sub NewButtonIconRight(VC As VueComponent, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement 
this.newbuttoniconright=function(_vc,_elid,_elabel,_eicon,_ecolor,_boutlined,_btnprops,_iconprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vbtnright,_viconright,_vspanleft,_k,_v,_clickevent,_ah;
// [8]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [9]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [11]  Dim Ret As Long 
_ret=0;
// [12]  Dim AllViews As Map 
_allviews={};
// [15]  Ret = banano.LoadLayoutArray( {70} , {71} , True) 
_ret=this.mbtniconright("#appendholder",true);
// [17]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {72} , Ret) 
_allviews=_B["_" + BANToBase("mbtniconright".toLowerCase())][_ret];
// [19]  Dim vbtnright As VueElement = AllViews.Get( {73} ) 
_vbtnright=_allviews["vbtnright"];
// [20]  Dim viconright As VueElement = AllViews.Get( {74} ) 
_viconright=_allviews["viconright"];
// [21]  Dim vspanleft As VueElement = AllViews.Get( {75} ) 
_vspanleft=_allviews["vspanleft"];
// [23]  vspanleft.Caption = eLabel 
_vspanleft.setcaption(_elabel);
// [25]  viconright.Caption = eIcon 
_viconright.setcaption(_eicon);
// [26]  viconright.Dark = True 
_viconright.setdark(true);
// [28]  vbtnright.AddAttr( {76} , elID) 
_vbtnright.addattr("id",_elid);
// [29]  vbtnright.Dark = True 
_vbtnright.setdark(true);
// [30]  vbtnright.Color = eColor 
_vbtnright.setcolor(_ecolor);
// [31]  If bOutlined Then vbtnright.Outlined = True 
if (_boutlined) {_vbtnright.setoutlined(true);}
// [33]  If banano.IsNull(btnprops) = False Then 
if (is.null(_btnprops)==false) {
// [34]  For Each k As String In btnprops.Keys 
var _kKeys = Object.keys(_btnprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [35]  Dim v As Object = btnprops.Get(k) 
_v=_btnprops[_k];
// [36]  vbtnright.AddAttr(k, v) 
_vbtnright.addattr(_k,_v);
// [37]  Next 
}
// [38]  End If 
}
// [40]  If banano.IsNull(iconprops) = False Then 
if (is.null(_iconprops)==false) {
// [41]  For Each k As String In iconprops.Keys 
var _kKeys = Object.keys(_iconprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [42]  Dim v As Object = iconprops.Get(k) 
_v=_iconprops[_k];
// [43]  viconright.AddAttr(k, v) 
_viconright.addattr(_k,_v);
// [44]  Next 
}
// [45]  End If 
}
// [47]  Dim clickEvent As String = {0} 
_clickevent="" + _elid + "_click";
// [48]  vbtnright.SetOnEvent(EventHandler, clickEvent, {77} , {78} ) 
_vbtnright.setonevent(_eventhandler,_clickevent,"click","");
// [50]  VC.BindVueElement(vbtnright) 
_vc.bindvueelement(_vbtnright);
// [51]  VC.BindVueElement(viconright) 
_vc.bindvueelement(_viconright);
// [52]  VC.BindVueElement(vspanleft) 
_vc.bindvueelement(_vspanleft);
// [54]  Dim ah As BANanoElement 
_ah=null;
// [55]  ah.Initialize( {79} ) 
_ah=u("#appendholder");
// [56]  Return ah 
return _ah;
// End Sub
};

// [60] Sub NewButtonIconLeft(VC As VueComponent, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement 
this.newbuttoniconleft=function(_vc,_elid,_elabel,_eicon,_ecolor,_boutlined,_btnprops,_iconprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vbtnright,_viconright,_vspanleft,_k,_v,_clickevent,_ah;
// [61]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [62]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [64]  Dim Ret As Long 
_ret=0;
// [65]  Dim AllViews As Map 
_allviews={};
// [68]  Ret = banano.LoadLayoutArray( {80} , {81} , True) 
_ret=this.mbtniconleft("#appendholder",true);
// [70]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {82} , Ret) 
_allviews=_B["_" + BANToBase("mbtniconleft".toLowerCase())][_ret];
// [72]  Dim vbtnright As VueElement = AllViews.Get( {83} ) 
_vbtnright=_allviews["vbtnleft"];
// [73]  Dim viconright As VueElement = AllViews.Get( {84} ) 
_viconright=_allviews["viconleft"];
// [74]  Dim vspanleft As VueElement = AllViews.Get( {85} ) 
_vspanleft=_allviews["vspanright"];
// [76]  vspanleft.Caption = eLabel 
_vspanleft.setcaption(_elabel);
// [78]  viconright.Caption = eIcon 
_viconright.setcaption(_eicon);
// [79]  viconright.Dark = True 
_viconright.setdark(true);
// [81]  vbtnright.AddAttr( {86} , elID) 
_vbtnright.addattr("id",_elid);
// [82]  vbtnright.Dark = True 
_vbtnright.setdark(true);
// [83]  vbtnright.Color = eColor 
_vbtnright.setcolor(_ecolor);
// [84]  If bOutlined Then vbtnright.Outlined = True 
if (_boutlined) {_vbtnright.setoutlined(true);}
// [86]  If banano.IsNull(btnprops) = False Then 
if (is.null(_btnprops)==false) {
// [87]  For Each k As String In btnprops.Keys 
var _kKeys = Object.keys(_btnprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [88]  Dim v As Object = btnprops.Get(k) 
_v=_btnprops[_k];
// [89]  vbtnright.AddAttr(k, v) 
_vbtnright.addattr(_k,_v);
// [90]  Next 
}
// [91]  End If 
}
// [93]  If banano.IsNull(iconprops) = False Then 
if (is.null(_iconprops)==false) {
// [94]  For Each k As String In iconprops.Keys 
var _kKeys = Object.keys(_iconprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [95]  Dim v As Object = iconprops.Get(k) 
_v=_iconprops[_k];
// [96]  viconright.AddAttr(k, v) 
_viconright.addattr(_k,_v);
// [97]  Next 
}
// [98]  End If 
}
// [100]  Dim clickEvent As String = {1} 
_clickevent="" + _elid + "_click";
// [101]  vbtnright.SetOnEvent(EventHandler, clickEvent, {87} , {88} ) 
_vbtnright.setonevent(_eventhandler,_clickevent,"click","");
// [103]  VC.BindVueElement(vbtnright) 
_vc.bindvueelement(_vbtnright);
// [104]  VC.BindVueElement(viconright) 
_vc.bindvueelement(_viconright);
// [105]  VC.BindVueElement(vspanleft) 
_vc.bindvueelement(_vspanleft);
// [107]  Dim ah As BANanoElement 
_ah=null;
// [108]  ah.Initialize( {89} ) 
_ah=u("#appendholder");
// [109]  Return ah 
return _ah;
// End Sub
};

// [112] Sub NewAvatarBadge(VC As VueComponent, elID As String, badgeColor As String, imgURL As String, avatarSize As Int, avatarprops As Map, badgeprops As Map) As BANanoElement 
this.newavatarbadge=function(_vc,_elid,_badgecolor,_imgurl,_avatarsize,_avatarprops,_badgeprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vbadge,_img,_avatar,_k,_v,_clickevent,_ah;
// [113]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [114]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [116]  Dim Ret As Long 
_ret=0;
// [117]  Dim AllViews As Map 
_allviews={};
// [120]  Ret = banano.LoadLayoutArray( {90} , {91} , True) 
_ret=this.mavatarbadge("#appendholder",true);
// [122]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {92} , Ret) 
_allviews=_B["_" + BANToBase("mavatarbadge".toLowerCase())][_ret];
// [124]  Dim vbadge As VueElement = AllViews.Get( {93} ) 
_vbadge=_allviews["mbadge"];
// [125]  Dim img As VueElement = AllViews.Get( {94} ) 
_img=_allviews["mbadgeavatarimg"];
// [126]  Dim avatar As VueElement = AllViews.Get( {95} ) 
_avatar=_allviews["mbadgeavatar"];
// [128]  avatar.AddAttr( {96} , avatarSize) 
_avatar.addattr("size",_avatarsize);
// [129]  avatar.AddAttr( {97} , {2} ) 
_avatar.addattr("id","" + _elid + "avatar");
// [131]  img.Src = imgURL 
_img.setsrc(_imgurl);
// [132]  img.AddAttr( {98} , elID) 
_img.addattr("id",_elid);
// [133]  vbadge.Color = badgeColor 
_vbadge.setcolor(_badgecolor);
// [134]  vbadge.AddAttr( {99} , {3} ) 
_vbadge.addattr("id","" + _elid + "badge");
// [136]  If banano.IsNull(avatarprops) = False Then 
if (is.null(_avatarprops)==false) {
// [137]  For Each k As String In avatarprops.Keys 
var _kKeys = Object.keys(_avatarprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [138]  Dim v As Object = avatarprops.Get(k) 
_v=_avatarprops[_k];
// [139]  avatar.AddAttr(k, v) 
_avatar.addattr(_k,_v);
// [140]  Next 
}
// [141]  End If 
}
// [143]  If banano.IsNull(badgeprops) = False Then 
if (is.null(_badgeprops)==false) {
// [144]  For Each k As String In badgeprops.Keys 
var _kKeys = Object.keys(_badgeprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [145]  Dim v As Object = badgeprops.Get(k) 
_v=_badgeprops[_k];
// [146]  vbadge.AddAttr(k, v) 
_vbadge.addattr(_k,_v);
// [147]  Next 
}
// [148]  End If 
}
// [150]  Dim clickEvent As String = {4} 
_clickevent="" + _elid + "_click";
// [151]  img.SetOnEvent(EventHandler, clickEvent, {100} , {101} ) 
_img.setonevent(_eventhandler,_clickevent,"click","");
// [153]  VC.BindVueElement(img) 
_vc.bindvueelement(_img);
// [154]  VC.BindVueElement(vbadge) 
_vc.bindvueelement(_vbadge);
// [155]  VC.BindVueElement(avatar) 
_vc.bindvueelement(_avatar);
// [157]  Dim ah As BANanoElement 
_ah=null;
// [158]  ah.Initialize( {102} ) 
_ah=u("#appendholder");
// [159]  Return ah 
return _ah;
// End Sub
};

// [163] Sub NewCard(VC As VueComponent, elID As String, Title As String, SubTitle As String) As BANanoElement 
this.newcard=function(_vc,_elid,_title,_subtitle) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_titlename,_subtitlename,_vtablecard,_vtablecardtitle,_vtablesubtitle,_vtablecardtext,_ah;
// [164]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [165]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [167]  Dim Ret As Long 
_ret=0;
// [168]  Dim AllViews As Map 
_allviews={};
// [170]  Dim titlename As String = {5} 
_titlename="" + _elid + "title";
// [171]  Dim subtitlename As String = {6} 
_subtitlename="" + _elid + "subtitle";
// [174]  Ret = banano.LoadLayoutArray( {103} , {104} , True) 
_ret=this.mdatatable("#appendholder",true);
// [176]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {105} , Ret) 
_allviews=_B["_" + BANToBase("mdatatable".toLowerCase())][_ret];
// [178]  Dim vtablecard As VueElement = AllViews.Get( {106} ) 
_vtablecard=_allviews["vtablecard"];
// [179]  Dim vtablecardtitle As VueElement = AllViews.Get( {107} ) 
_vtablecardtitle=_allviews["vtablecardtitle"];
// [180]  Dim vtablesubtitle As VueElement = AllViews.Get( {108} ) 
_vtablesubtitle=_allviews["vtablesubtitle"];
// [181]  Dim vtablecardtext As VueElement = AllViews.Get( {109} ) 
_vtablecardtext=_allviews["vtablecardtext"];
// [183]  vtablecard.AddAttr( {110} , {7} ) 
_vtablecard.addattr("id","" + _elid + "card");
// [185]  vtablecardtitle.AddAttr( {111} , {8} ) 
_vtablecardtitle.addattr("id","" + _elid + "cardtitle");
// [186]  vtablecardtitle.Caption = {9} 
_vtablecardtitle.setcaption("{{ " + _titlename + " }}");
// [187]  vtablecardtitle.SetData(titlename, Title) 
_vtablecardtitle.setdata(_titlename,_title);
// [189]  vtablesubtitle.AddAttr( {112} , {10} ) 
_vtablesubtitle.addattr("id","" + _elid + "cardsubtitle");
// [190]  vtablesubtitle.Caption = {11} 
_vtablesubtitle.setcaption("{{ " + _subtitlename + " }}");
// [191]  vtablesubtitle.SetData(subtitlename, SubTitle) 
_vtablesubtitle.setdata(_subtitlename,_subtitle);
// [193]  vtablecardtext.AddAttr( {113} , {12} ) 
_vtablecardtext.addattr("id","" + _elid + "cardtext");
// [195]  VC.BindVueElement(vtablecard) 
_vc.bindvueelement(_vtablecard);
// [196]  VC.BindVueElement(vtablecardtitle) 
_vc.bindvueelement(_vtablecardtitle);
// [197]  VC.BindVueElement(vtablesubtitle) 
_vc.bindvueelement(_vtablesubtitle);
// [198]  VC.BindVueElement(vtablecardtext) 
_vc.bindvueelement(_vtablecardtext);
// [200]  Dim ah As BANanoElement 
_ah=null;
// [201]  ah.Initialize( {114} ) 
_ah=u("#appendholder");
// [202]  Return ah 
return _ah;
// End Sub
};

// [206] Sub NewButtonBadge(VC As VueComponent, elID As String, elLabel As String, btnproperties As Map, badgeproperties As Map) As BANanoElement 
this.newbuttonbadge=function(_vc,_elid,_ellabel,_btnproperties,_badgeproperties) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_mbadge,_mbadgebtn,_clickevent,_k,_v,_ah;
// [207]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [208]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [210]  Dim Ret As Long 
_ret=0;
// [211]  Dim AllViews As Map 
_allviews={};
// [214]  Ret = banano.LoadLayoutArray( {115} , {116} , True) 
_ret=this.mbtnbadge("#appendholder",true);
// [216]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {117} , Ret) 
_allviews=_B["_" + BANToBase("mbtnbadge".toLowerCase())][_ret];
// [218]  Dim mbadge As VueElement = AllViews.Get( {118} ) 
_mbadge=_allviews["mbadge"];
// [219]  Dim mbadgebtn As VueElement = AllViews.Get( {119} ) 
_mbadgebtn=_allviews["mbadgebtn"];
// [221]  mbadgebtn.AddAttr( {120} , elID) 
_mbadgebtn.addattr("id",_elid);
// [222]  mbadgebtn.Caption = elLabel 
_mbadgebtn.setcaption(_ellabel);
// [224]  Dim clickEvent As String = {13} 
_clickevent="" + _elid + "_click";
// [225]  mbadgebtn.SetOnEvent(EventHandler, clickEvent, {121} , {122} ) 
_mbadgebtn.setonevent(_eventhandler,_clickevent,"click","");
// [227]  If banano.IsNull(btnproperties) = False Then 
if (is.null(_btnproperties)==false) {
// [228]  For Each k As String In btnproperties.Keys 
var _kKeys = Object.keys(_btnproperties);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [229]  Dim v As Object = btnproperties.Get(k) 
_v=_btnproperties[_k];
// [230]  mbadgebtn.AddAttr(k, v) 
_mbadgebtn.addattr(_k,_v);
// [231]  Next 
}
// [232]  End If 
}
// [234]  If banano.IsNull(badgeproperties) = False Then 
if (is.null(_badgeproperties)==false) {
// [235]  For Each k As String In badgeproperties.Keys 
var _kKeys = Object.keys(_badgeproperties);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [236]  Dim v As Object = badgeproperties.Get(k) 
_v=_badgeproperties[_k];
// [237]  mbadge.AddAttr(k, v) 
_mbadge.addattr(_k,_v);
// [238]  Next 
}
// [239]  End If 
}
// [241]  VC.BindVueElement(mbadge) 
_vc.bindvueelement(_mbadge);
// [242]  VC.BindVueElement(mbadgebtn) 
_vc.bindvueelement(_mbadgebtn);
// [244]  Dim ah As BANanoElement 
_ah=null;
// [245]  ah.Initialize( {123} ) 
_ah=u("#appendholder");
// [246]  Return ah 
return _ah;
// End Sub
};

// [250] Sub NewButtonIconBadge(VC As VueComponent, elID As String, eLabel As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map, badgeprops As Map) As BANanoElement 
this.newbuttoniconbadge=function(_vc,_elid,_elabel,_eicon,_btncolor,_btnprops,_iconprops,_badgeprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_mbadge,_mbadgebtn,_mbadgeicon,_k,_v,_clickevent,_ah;
// [251]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [252]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [254]  Dim Ret As Long 
_ret=0;
// [255]  Dim AllViews As Map 
_allviews={};
// [258]  Ret = banano.LoadLayoutArray( {124} , {125} , True) 
_ret=this.mbtniconbadge("#appendholder",true);
// [260]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {126} , Ret) 
_allviews=_B["_" + BANToBase("mbtniconbadge".toLowerCase())][_ret];
// [262]  Dim mbadge As VueElement = AllViews.Get( {127} ) 
_mbadge=_allviews["mbadge"];
// [263]  Dim mbadgebtn As VueElement = AllViews.Get( {128} ) 
_mbadgebtn=_allviews["mbadgebtn"];
// [264]  Dim mbadgeicon As VueElement = AllViews.Get( {129} ) 
_mbadgeicon=_allviews["mbadgeicon"];
// [266]  mbadgeicon.Caption = eIcon 
_mbadgeicon.setcaption(_eicon);
// [267]  mbadgeicon.Dark = True 
_mbadgeicon.setdark(true);
// [269]  mbadgebtn.AddAttr( {130} , elID) 
_mbadgebtn.addattr("id",_elid);
// [270]  mbadgebtn.dark = True 
_mbadgebtn.setdark(true);
// [271]  mbadgebtn.Color = btnColor 
_mbadgebtn.setcolor(_btncolor);
// [272]  If eLabel <> {131} Then mbadgebtn.Caption = eLabel 
if (_elabel!="") {_mbadgebtn.setcaption(_elabel);}
// [274]  If banano.IsNull(badgeprops) = False Then 
if (is.null(_badgeprops)==false) {
// [275]  For Each k As String In badgeprops.Keys 
var _kKeys = Object.keys(_badgeprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [276]  Dim v As Object = badgeprops.Get(k) 
_v=_badgeprops[_k];
// [277]  mbadge.AddAttr(k, v) 
_mbadge.addattr(_k,_v);
// [278]  Next 
}
// [279]  End If 
}
// [281]  If banano.IsNull(btnprops) = False Then 
if (is.null(_btnprops)==false) {
// [282]  For Each k As String In btnprops.Keys 
var _kKeys = Object.keys(_btnprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [283]  Dim v As Object = btnprops.Get(k) 
_v=_btnprops[_k];
// [284]  mbadgebtn.AddAttr(k, v) 
_mbadgebtn.addattr(_k,_v);
// [285]  Next 
}
// [286]  End If 
}
// [288]  If banano.IsNull(iconprops) = False Then 
if (is.null(_iconprops)==false) {
// [289]  For Each k As String In iconprops.Keys 
var _kKeys = Object.keys(_iconprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [290]  Dim v As Object = iconprops.Get(k) 
_v=_iconprops[_k];
// [291]  mbadgeicon.AddAttr(k, v) 
_mbadgeicon.addattr(_k,_v);
// [292]  Next 
}
// [293]  End If 
}
// [297]  Dim clickEvent As String = {14} 
_clickevent="" + _elid + "_click";
// [298]  mbadgebtn.SetOnEvent(EventHandler, clickEvent, {132} , {133} ) 
_mbadgebtn.setonevent(_eventhandler,_clickevent,"click","");
// [300]  VC.BindVueElement(mbadgebtn) 
_vc.bindvueelement(_mbadgebtn);
// [301]  VC.BindVueElement(mbadge) 
_vc.bindvueelement(_mbadge);
// [302]  VC.BindVueElement(mbadgeicon) 
_vc.bindvueelement(_mbadgeicon);
// [304]  Dim ah As BANanoElement 
_ah=null;
// [305]  ah.Initialize( {134} ) 
_ah=u("#appendholder");
// [306]  Return ah 
return _ah;
// End Sub
};

// [309] Sub NewIconBadge(VC As VueComponent, elID As String, vModel As String, eIcon As String, iconprops As Map, badgeprops As Map) As BANanoElement 
this.newiconbadge=function(_vc,_elid,_vmodel,_eicon,_iconprops,_badgeprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vbadge,_vbadgeicon,_k,_v,_clickevent,_ah;
// [310]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [311]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [313]  Dim Ret As Long 
_ret=0;
// [314]  Dim AllViews As Map 
_allviews={};
// [317]  Ret = banano.LoadLayoutArray( {135} , {136} , True) 
_ret=this.miconbadge("#appendholder",true);
// [319]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {137} , Ret) 
_allviews=_B["_" + BANToBase("miconbadge".toLowerCase())][_ret];
// [321]  Dim vbadge As VueElement = AllViews.Get( {138} ) 
_vbadge=_allviews["vbadge"];
// [322]  Dim vbadgeicon As VueElement = AllViews.Get( {139} ) 
_vbadgeicon=_allviews["vbadgeicon"];
// [324]  vbadge.AddAttr( {140} , vModel) 
_vbadge.addattr(":value",_vmodel);
// [325]  vbadge.AddAttr( {141} , vModel) 
_vbadge.addattr(":content",_vmodel);
// [326]  If banano.IsNull(badgeprops) = False Then 
if (is.null(_badgeprops)==false) {
// [327]  For Each k As String In badgeprops.Keys 
var _kKeys = Object.keys(_badgeprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [328]  Dim v As Object = badgeprops.Get(k) 
_v=_badgeprops[_k];
// [329]  vbadge.AddAttr(k, v) 
_vbadge.addattr(_k,_v);
// [330]  Next 
}
// [331]  End If 
}
// [333]  vbadgeicon.Caption = eIcon 
_vbadgeicon.setcaption(_eicon);
// [334]  vbadgeicon.AddAttr( {142} , elID) 
_vbadgeicon.addattr("id",_elid);
// [335]  If banano.IsNull(iconprops) = False Then 
if (is.null(_iconprops)==false) {
// [336]  For Each k As String In iconprops.Keys 
var _kKeys = Object.keys(_iconprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [337]  Dim v As Object = iconprops.Get(k) 
_v=_iconprops[_k];
// [338]  vbadgeicon.AddAttr(k, v) 
_vbadgeicon.addattr(_k,_v);
// [339]  Next 
}
// [340]  End If 
}
// [342]  Dim clickEvent As String = {15} 
_clickevent="" + _elid + "_click";
// [343]  vbadgeicon.SetOnEvent(EventHandler, clickEvent, {143} , {144} ) 
_vbadgeicon.setonevent(_eventhandler,_clickevent,"click","");
// [345]  VC.BindVueElement(vbadgeicon) 
_vc.bindvueelement(_vbadgeicon);
// [346]  VC.BindVueElement(vbadge) 
_vc.bindvueelement(_vbadge);
// [348]  Dim ah As BANanoElement 
_ah=null;
// [349]  ah.Initialize( {145} ) 
_ah=u("#appendholder");
// [350]  Return ah 
return _ah;
// End Sub
};

// [353] Sub NewFab(VC As VueComponent, elID As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As BANanoElement 
this.newfab=function(_vc,_elid,_eicon,_ecolor,_boutlined,_btnprops,_iconprops) {
if (_B==null) _B=this;
var _np,_k,_v,_btn;
// [354]  Dim np As Map = CreateMap() 
_np={};
// [355]  np.Put( {146} , True) 
_np[":fab"]=true;
// [356]  np.Put( {147} , bOutlined) 
_np[":outlined"]=_boutlined;
// [357]  If banano.IsNull(btnprops) = False Then 
if (is.null(_btnprops)==false) {
// [358]  For Each k As String In btnprops.Keys 
var _kKeys = Object.keys(_btnprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [359]  Dim v As String = btnprops.Get(k) 
_v=_btnprops[_k];
// [360]  np.Put(k, v) 
_np[_k]=_v;
// [361]  Next 
}
// [362]  End If 
}
// [364]  Dim btn As BANanoElement = NewButtonIcon(VC, elID, eIcon, {148} , np, iconprops) 
_btn=_B.newbuttonicon(_vc,_elid,_eicon,"",_np,_iconprops,_B);
// [365]  Return btn 
return _btn;
// End Sub
};

// [369] Sub NewButtonIcon(VC As VueComponent, elID As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map) As BANanoElement 
this.newbuttonicon=function(_vc,_elid,_eicon,_btncolor,_btnprops,_iconprops) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_mbtn,_micon,_k,_v,_clickevent,_ah;
// [370]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [371]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [373]  Dim Ret As Long 
_ret=0;
// [374]  Dim AllViews As Map 
_allviews={};
// [377]  Ret = banano.LoadLayoutArray( {149} , {150} , True) 
_ret=this.mbtnicon("#appendholder",true);
// [379]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {151} , Ret) 
_allviews=_B["_" + BANToBase("mbtnicon".toLowerCase())][_ret];
// [381]  Dim mbtn As VueElement = AllViews.Get( {152} ) 
_mbtn=_allviews["mbtn"];
// [382]  Dim micon As VueElement = AllViews.Get( {153} ) 
_micon=_allviews["micon"];
// [384]  micon.Caption = eIcon 
_micon.setcaption(_eicon);
// [385]  micon.Dark = True 
_micon.setdark(true);
// [387]  mbtn.AddAttr( {154} , elID) 
_mbtn.addattr("id",_elid);
// [388]  mbtn.dark = True 
_mbtn.setdark(true);
// [389]  mbtn.Color = btnColor 
_mbtn.setcolor(_btncolor);
// [391]  If banano.IsNull(btnprops) = False Then 
if (is.null(_btnprops)==false) {
// [392]  For Each k As String In btnprops.Keys 
var _kKeys = Object.keys(_btnprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [393]  Dim v As Object = btnprops.Get(k) 
_v=_btnprops[_k];
// [394]  mbtn.AddAttr(k, v) 
_mbtn.addattr(_k,_v);
// [395]  Next 
}
// [396]  End If 
}
// [398]  If banano.IsNull(iconprops) = False Then 
if (is.null(_iconprops)==false) {
// [399]  For Each k As String In iconprops.Keys 
var _kKeys = Object.keys(_iconprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [400]  Dim v As Object = iconprops.Get(k) 
_v=_iconprops[_k];
// [401]  micon.AddAttr(k, v) 
_micon.addattr(_k,_v);
// [402]  Next 
}
// [403]  End If 
}
// [406]  Dim clickEvent As String = {16} 
_clickevent="" + _elid + "_click";
// [407]  mbtn.SetOnEvent(EventHandler, clickEvent, {155} , {156} ) 
_mbtn.setonevent(_eventhandler,_clickevent,"click","");
// [409]  VC.BindVueElement(mbtn) 
_vc.bindvueelement(_mbtn);
// [410]  VC.BindVueElement(micon) 
_vc.bindvueelement(_micon);
// [412]  Dim ah As BANanoElement 
_ah=null;
// [413]  ah.Initialize( {157} ) 
_ah=u("#appendholder");
// [414]  Return ah 
return _ah;
// End Sub
};

// [418] Sub NewButton(VC As VueComponent, elID As String, sLabel As String, eColor As String, bOutlined As Boolean, props As Map) As BANanoElement 
this.newbutton=function(_vc,_elid,_slabel,_ecolor,_boutlined,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_mbutton,_k,_v,_clickevent,_ah;
// [419]  Dim EventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [420]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [422]  Dim Ret As Long 
_ret=0;
// [423]  Dim AllViews As Map 
_allviews={};
// [426]  Ret = banano.LoadLayoutArray( {158} , {159} , True) 
_ret=this.mbutton("#appendholder",true);
// [428]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {160} , Ret) 
_allviews=_B["_" + BANToBase("mbutton".toLowerCase())][_ret];
// [430]  Dim mbutton As VueElement = AllViews.Get( {161} ) 
_mbutton=_allviews["mbutton"];
// [431]  mbutton.Caption = sLabel 
_mbutton.setcaption(_slabel);
// [432]  mbutton.AddAttr( {162} , elID) 
_mbutton.addattr("id",_elid);
// [433]  If bOutlined Then mbutton.Outlined = True 
if (_boutlined) {_mbutton.setoutlined(true);}
// [434]  mbutton.color = eColor 
_mbutton.setcolor(_ecolor);
// [436]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [437]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [438]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [439]  mbutton.AddAttr(k, v) 
_mbutton.addattr(_k,_v);
// [440]  Next 
}
// [441]  End If 
}
// [443]  Dim clickEvent As String = {17} 
_clickevent="" + _elid + "_click";
// [444]  mbutton.SetOnEvent(EventHandler, clickEvent, {163} , {164} ) 
_mbutton.setonevent(_eventhandler,_clickevent,"click","");
// [446]  VC.BindVueElement(mbutton) 
_vc.bindvueelement(_mbutton);
// [448]  Dim ah As BANanoElement 
_ah=null;
// [449]  ah.Initialize( {165} ) 
_ah=u("#appendholder");
// [450]  Return ah 
return _ah;
// End Sub
};

// [455] Sub NewDatePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement 
this.newdatepicker=function(_vc,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vdatepicker,_vdatepickercancel,_vdatepickerclear,_vdatepickermenu,_vdatepickerok,_vdatepickertemplate,_vdatepickertextfield,_menukey,_k,_v,_ah;
// [456]  Dim eventhandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [457]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [458]  Dim Ret As Long 
_ret=0;
// [459]  Dim AllViews As Map 
_allviews={};
// [462]  Ret = banano.LoadLayoutArray( {166} , {167} , True) 
_ret=this.mdatepicker("#appendholder",true);
// [464]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {168} , Ret) 
_allviews=_B["_" + BANToBase("mdatepicker".toLowerCase())][_ret];
// [466]  Dim vdatepicker As VueElement 
_vdatepicker= new banano_bananovuetifyad3_vueelement();
// [467]  Dim vdatepickercancel As VueElement 
_vdatepickercancel= new banano_bananovuetifyad3_vueelement();
// [468]  Dim vdatepickerclear As VueElement 
_vdatepickerclear= new banano_bananovuetifyad3_vueelement();
// [469]  Dim vdatepickermenu As VueElement 
_vdatepickermenu= new banano_bananovuetifyad3_vueelement();
// [470]  Dim vdatepickerok As VueElement 
_vdatepickerok= new banano_bananovuetifyad3_vueelement();
// [471]  Dim vdatepickertemplate As VueElement 
_vdatepickertemplate= new banano_bananovuetifyad3_vueelement();
// [472]  Dim vdatepickertextfield As VueElement 
_vdatepickertextfield= new banano_bananovuetifyad3_vueelement();
// [474]  vdatepickermenu = AllViews.Get( {169} ) 
_vdatepickermenu=_allviews["vdatepickermenu"];
// [475]  vdatepickertextfield = AllViews.Get( {170} ) 
_vdatepickertextfield=_allviews["vdatepickertextfield"];
// [476]  vdatepicker = AllViews.Get( {171} ) 
_vdatepicker=_allviews["vdatepicker"];
// [477]  vdatepickerclear = AllViews.Get( {172} ) 
_vdatepickerclear=_allviews["vdatepickerclear"];
// [478]  vdatepickercancel = AllViews.Get( {173} ) 
_vdatepickercancel=_allviews["vdatepickercancel"];
// [479]  vdatepickertemplate = AllViews.Get( {174} ) 
_vdatepickertemplate=_allviews["vdatepickertemplate"];
// [480]  vdatepickerok = AllViews.Get( {175} ) 
_vdatepickerok=_allviews["vdatepickerok"];
// [482]  Dim menuKey As String = {18} 
_menukey="" + _vmodel + "dtmenu";
// [484]  vdatepickermenu.AddAttr( {176} , menuKey) 
_vdatepickermenu.addattr("ref",_menukey);
// [485]  vdatepickermenu.AddAttr( {177} , vmodel) 
_vdatepickermenu.addattr(":return-value.sync",_vmodel);
// [486]  vdatepickermenu.VModel = menuKey 
_vdatepickermenu.setvmodel(_menukey);
// [487]  vdatepickermenu.AddAttr( {178} , {179} ) 
_vdatepickermenu.addattr("min-width","460px");
// [488]  vdatepickermenu.AddAttr( {180} , {181} ) 
_vdatepickermenu.addattr("max-width","460px");
// [489]  vdatepickermenu.AddAttr( {182} , {183} ) 
_vdatepickermenu.addattr(":nudge-right","40");
// [491]  vdatepickertextfield.Label = slabel 
_vdatepickertextfield.setlabel(_slabel);
// [492]  vdatepickertextfield.VModel = vmodel 
_vdatepickertextfield.setvmodel(_vmodel);
// [493]  vdatepickertextfield.PrependIcon = sPrependIcon 
_vdatepickertextfield.setprependicon(_sprependicon);
// [494]  vdatepickertextfield.Placeholder = splaceholder 
_vdatepickertextfield.setplaceholder(_splaceholder);
// [495]  vdatepickertextfield.Required = bRequired 
_vdatepickertextfield.setrequired(_brequired);
// [496]  vdatepickertextfield.Hint = sHint 
_vdatepickertextfield.sethint(_shint);
// [497]  vdatepickertextfield.ref = vmodel 
_vdatepickertextfield.setref(_vmodel);
// [498]  vdatepickertextfield.AddAttr( {184} , elID) 
_vdatepickertextfield.addattr("id",_elid);
// [499]  vdatepickertextfield.AddAttr( {185} , {186} ) 
_vdatepickertextfield.addattr("autocomplete","off");
// [501]  vdatepickertextfield.SetOnEvent(eventhandler, {19} , {187} , {188} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [502]  vdatepickertextfield.SetOnEvent(eventhandler, {20} , {189} , {190} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [503]  vdatepickertextfield.SetOnEvent(eventhandler, {21} , {191} , {192} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [504]  vdatepickertextfield.SetOnEvent(eventhandler, {22} , {193} , {194} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [506]  vdatepicker.VModel = vmodel 
_vdatepicker.setvmodel(_vmodel);
// [507]  vdatepicker.AddAttr( {195} , True) 
_vdatepicker.addattr("landscape",true);
// [509]  vdatepickerclear.AddAttr( {196} , {23} ) 
_vdatepickerclear.addattr("v-on:click","" + _vmodel + " = ''");
// [510]  vdatepickercancel.AddAttr( {197} , {24} ) 
_vdatepickercancel.addattr("v-on:click","" + _menukey + " = false");
// [511]  vdatepickerok.AddAttr( {198} , {25} ) 
_vdatepickerok.addattr("v-on:click","#refs." + _menukey + ".save(" + _vmodel + ")");
// [512]  vdatepickerclear.Outlined = True 
_vdatepickerclear.setoutlined(true);
// [513]  vdatepickercancel.Outlined = True 
_vdatepickercancel.setoutlined(true);
// [514]  vdatepickerok.Outlined = True 
_vdatepickerok.setoutlined(true);
// [516]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [517]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [518]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [519]  vdatepickertextfield.AddAttr(k, v) 
_vdatepickertextfield.addattr(_k,_v);
// [520]  Next 
}
// [521]  End If 
}
// [524]  VC.BindVueElement(vdatepickermenu) 
_vc.bindvueelement(_vdatepickermenu);
// [525]  VC.BindVueElement(vdatepickertextfield) 
_vc.bindvueelement(_vdatepickertextfield);
// [526]  VC.BindVueElement(vdatepicker) 
_vc.bindvueelement(_vdatepicker);
// [527]  VC.BindVueElement(vdatepickerclear) 
_vc.bindvueelement(_vdatepickerclear);
// [528]  VC.BindVueElement(vdatepickercancel) 
_vc.bindvueelement(_vdatepickercancel);
// [529]  VC.BindVueElement(vdatepickerok) 
_vc.bindvueelement(_vdatepickerok);
// [530]  VC.BindVueElement(vdatepickertemplate) 
_vc.bindvueelement(_vdatepickertemplate);
// [532]  Dim ah As BANanoElement 
_ah=null;
// [533]  ah.Initialize( {199} ) 
_ah=u("#appendholder");
// [534]  Return ah 
return _ah;
// End Sub
};

// [538] Sub NewDatePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) 
this.newdatepickeronapp=function(_app,_parentid,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vdatepicker,_vdatepickercancel,_vdatepickerclear,_vdatepickermenu,_vdatepickerok,_vdatepickertemplate,_vdatepickertextfield,_menukey,_k,_v;
// [539]  Dim eventhandler As Object = app.EventHandler 
_eventhandler=_app._eventhandler;
// [540]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [541]  Dim Ret As Long 
_ret=0;
// [542]  Dim AllViews As Map 
_allviews={};
// [543]  parentid = parentid.Replace( {200} , {201} ) 
_parentid=_parentid.split("#").join("");
// [546]  Ret = banano.LoadLayoutArray( {26} , {202} , True) 
_ret=this.mdatepicker("#" + _parentid + "",true);
// [548]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {203} , Ret) 
_allviews=_B["_" + BANToBase("mdatepicker".toLowerCase())][_ret];
// [550]  Dim vdatepicker As VueElement 
_vdatepicker= new banano_bananovuetifyad3_vueelement();
// [551]  Dim vdatepickercancel As VueElement 
_vdatepickercancel= new banano_bananovuetifyad3_vueelement();
// [552]  Dim vdatepickerclear As VueElement 
_vdatepickerclear= new banano_bananovuetifyad3_vueelement();
// [553]  Dim vdatepickermenu As VueElement 
_vdatepickermenu= new banano_bananovuetifyad3_vueelement();
// [554]  Dim vdatepickerok As VueElement 
_vdatepickerok= new banano_bananovuetifyad3_vueelement();
// [555]  Dim vdatepickertemplate As VueElement 
_vdatepickertemplate= new banano_bananovuetifyad3_vueelement();
// [556]  Dim vdatepickertextfield As VueElement 
_vdatepickertextfield= new banano_bananovuetifyad3_vueelement();
// [558]  vdatepickermenu = AllViews.Get( {204} ) 
_vdatepickermenu=_allviews["vdatepickermenu"];
// [559]  vdatepickertextfield = AllViews.Get( {205} ) 
_vdatepickertextfield=_allviews["vdatepickertextfield"];
// [560]  vdatepicker = AllViews.Get( {206} ) 
_vdatepicker=_allviews["vdatepicker"];
// [561]  vdatepickerclear = AllViews.Get( {207} ) 
_vdatepickerclear=_allviews["vdatepickerclear"];
// [562]  vdatepickercancel = AllViews.Get( {208} ) 
_vdatepickercancel=_allviews["vdatepickercancel"];
// [563]  vdatepickertemplate = AllViews.Get( {209} ) 
_vdatepickertemplate=_allviews["vdatepickertemplate"];
// [564]  vdatepickerok = AllViews.Get( {210} ) 
_vdatepickerok=_allviews["vdatepickerok"];
// [566]  Dim menuKey As String = {27} 
_menukey="" + _vmodel + "dtmenu";
// [568]  vdatepickermenu.AddAttr( {211} , menuKey) 
_vdatepickermenu.addattr("ref",_menukey);
// [569]  vdatepickermenu.AddAttr( {212} , vmodel) 
_vdatepickermenu.addattr(":return-value.sync",_vmodel);
// [570]  vdatepickermenu.VModel = menuKey 
_vdatepickermenu.setvmodel(_menukey);
// [571]  vdatepickermenu.AddAttr( {213} , {214} ) 
_vdatepickermenu.addattr("min-width","460px");
// [572]  vdatepickermenu.AddAttr( {215} , {216} ) 
_vdatepickermenu.addattr("max-width","460px");
// [573]  vdatepickermenu.AddAttr( {217} , {218} ) 
_vdatepickermenu.addattr(":nudge-right","40");
// [575]  vdatepickertextfield.Label = slabel 
_vdatepickertextfield.setlabel(_slabel);
// [576]  vdatepickertextfield.VModel = vmodel 
_vdatepickertextfield.setvmodel(_vmodel);
// [577]  vdatepickertextfield.PrependIcon = sPrependIcon 
_vdatepickertextfield.setprependicon(_sprependicon);
// [578]  vdatepickertextfield.Placeholder = splaceholder 
_vdatepickertextfield.setplaceholder(_splaceholder);
// [579]  vdatepickertextfield.Required = bRequired 
_vdatepickertextfield.setrequired(_brequired);
// [580]  vdatepickertextfield.Hint = sHint 
_vdatepickertextfield.sethint(_shint);
// [581]  vdatepickertextfield.ref = vmodel 
_vdatepickertextfield.setref(_vmodel);
// [582]  vdatepickertextfield.AddAttr( {219} , elID) 
_vdatepickertextfield.addattr("id",_elid);
// [583]  vdatepickertextfield.AddAttr( {220} , {221} ) 
_vdatepickertextfield.addattr("autocomplete","off");
// [585]  vdatepickertextfield.SetOnEvent(eventhandler, {28} , {222} , {223} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [586]  vdatepickertextfield.SetOnEvent(eventhandler, {29} , {224} , {225} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [587]  vdatepickertextfield.SetOnEvent(eventhandler, {30} , {226} , {227} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [588]  vdatepickertextfield.SetOnEvent(eventhandler, {31} , {228} , {229} ) 
_vdatepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [590]  vdatepicker.VModel = vmodel 
_vdatepicker.setvmodel(_vmodel);
// [591]  vdatepicker.AddAttr( {230} , True) 
_vdatepicker.addattr("landscape",true);
// [593]  vdatepickerclear.AddAttr( {231} , {32} ) 
_vdatepickerclear.addattr("v-on:click","" + _vmodel + " = ''");
// [594]  vdatepickercancel.AddAttr( {232} , {33} ) 
_vdatepickercancel.addattr("v-on:click","" + _menukey + " = false");
// [595]  vdatepickerok.AddAttr( {233} , {34} ) 
_vdatepickerok.addattr("v-on:click","#refs." + _menukey + ".save(" + _vmodel + ")");
// [596]  vdatepickerclear.Outlined = True 
_vdatepickerclear.setoutlined(true);
// [597]  vdatepickercancel.Outlined = True 
_vdatepickercancel.setoutlined(true);
// [598]  vdatepickerok.Outlined = True 
_vdatepickerok.setoutlined(true);
// [600]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [601]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [602]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [603]  vdatepickertextfield.AddAttr(k, v) 
_vdatepickertextfield.addattr(_k,_v);
// [604]  Next 
}
// [605]  End If 
}
// [608]  app.BindVueElement(vdatepickermenu) 
_app.bindvueelement(_vdatepickermenu);
// [609]  app.BindVueElement(vdatepickertextfield) 
_app.bindvueelement(_vdatepickertextfield);
// [610]  app.BindVueElement(vdatepicker) 
_app.bindvueelement(_vdatepicker);
// [611]  app.BindVueElement(vdatepickerclear) 
_app.bindvueelement(_vdatepickerclear);
// [612]  app.BindVueElement(vdatepickercancel) 
_app.bindvueelement(_vdatepickercancel);
// [613]  app.BindVueElement(vdatepickerok) 
_app.bindvueelement(_vdatepickerok);
// [614]  app.BindVueElement(vdatepickertemplate) 
_app.bindvueelement(_vdatepickertemplate);
// End Sub
};

// [618] Sub NewTimePicker(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) As BANanoElement 
this.newtimepicker=function(_vc,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vtimepicker,_vtimepickercancel,_vtimepickerclear,_vtimepickermenu,_vtimepickerok,_vtimepickertemplate,_vtimepickertextfield,_menukey,_k,_v,_ah;
// [619]  Dim eventhandler As Object = VC.mcallback 
_eventhandler=_vc._mcallback;
// [620]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [621]  Dim Ret As Long 
_ret=0;
// [622]  Dim AllViews As Map 
_allviews={};
// [625]  Ret = banano.LoadLayoutArray( {234} , {235} , True) 
_ret=this.mtimepicker("#appendholder",true);
// [627]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {236} , Ret) 
_allviews=_B["_" + BANToBase("mtimepicker".toLowerCase())][_ret];
// [629]  Dim vtimepicker As VueElement 
_vtimepicker= new banano_bananovuetifyad3_vueelement();
// [630]  Dim vtimepickercancel As VueElement 
_vtimepickercancel= new banano_bananovuetifyad3_vueelement();
// [631]  Dim vtimepickerclear As VueElement 
_vtimepickerclear= new banano_bananovuetifyad3_vueelement();
// [632]  Dim vtimepickermenu As VueElement 
_vtimepickermenu= new banano_bananovuetifyad3_vueelement();
// [633]  Dim vtimepickerok As VueElement 
_vtimepickerok= new banano_bananovuetifyad3_vueelement();
// [634]  Dim vtimepickertemplate As VueElement 
_vtimepickertemplate= new banano_bananovuetifyad3_vueelement();
// [635]  Dim vtimepickertextfield As VueElement 
_vtimepickertextfield= new banano_bananovuetifyad3_vueelement();
// [637]  vtimepickermenu = AllViews.Get( {237} ) 
_vtimepickermenu=_allviews["vtimepickermenu"];
// [638]  vtimepickertextfield = AllViews.Get( {238} ) 
_vtimepickertextfield=_allviews["vtimepickertextfield"];
// [639]  vtimepicker = AllViews.Get( {239} ) 
_vtimepicker=_allviews["vtimepicker"];
// [640]  vtimepickerclear = AllViews.Get( {240} ) 
_vtimepickerclear=_allviews["vtimepickerclear"];
// [641]  vtimepickercancel = AllViews.Get( {241} ) 
_vtimepickercancel=_allviews["vtimepickercancel"];
// [642]  vtimepickertemplate = AllViews.Get( {242} ) 
_vtimepickertemplate=_allviews["vtimepickertemplate"];
// [643]  vtimepickerok = AllViews.Get( {243} ) 
_vtimepickerok=_allviews["vtimepickerok"];
// [645]  Dim menuKey As String = {35} 
_menukey="" + _vmodel + "dtmenu";
// [647]  vtimepickermenu.AddAttr( {244} , menuKey) 
_vtimepickermenu.addattr("ref",_menukey);
// [648]  vtimepickermenu.AddAttr( {245} , vmodel) 
_vtimepickermenu.addattr(":return-value.sync",_vmodel);
// [649]  vtimepickermenu.VModel = menuKey 
_vtimepickermenu.setvmodel(_menukey);
// [650]  vtimepickermenu.AddAttr( {246} , {247} ) 
_vtimepickermenu.addattr("min-width","460px");
// [651]  vtimepickermenu.AddAttr( {248} , {249} ) 
_vtimepickermenu.addattr("max-width","460px");
// [652]  vtimepickermenu.AddAttr( {250} , {251} ) 
_vtimepickermenu.addattr(":nudge-right","40");
// [655]  vtimepickertextfield.Label = slabel 
_vtimepickertextfield.setlabel(_slabel);
// [656]  vtimepickertextfield.VModel = vmodel 
_vtimepickertextfield.setvmodel(_vmodel);
// [657]  vtimepickertextfield.PrependIcon = sPrependIcon 
_vtimepickertextfield.setprependicon(_sprependicon);
// [658]  vtimepickertextfield.Placeholder = splaceholder 
_vtimepickertextfield.setplaceholder(_splaceholder);
// [659]  vtimepickertextfield.Required = bRequired 
_vtimepickertextfield.setrequired(_brequired);
// [660]  vtimepickertextfield.Hint = sHint 
_vtimepickertextfield.sethint(_shint);
// [661]  vtimepickertextfield.Ref = vmodel 
_vtimepickertextfield.setref(_vmodel);
// [662]  vtimepickertextfield.AddAttr( {252} , elID) 
_vtimepickertextfield.addattr("id",_elid);
// [663]  vtimepickertextfield.AddAttr( {253} , {254} ) 
_vtimepickertextfield.addattr("autocomplete","off");
// [664]  vtimepickertextfield.SetOnEvent(eventhandler, {36} , {255} , {256} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [665]  vtimepickertextfield.SetOnEvent(eventhandler, {37} , {257} , {258} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [666]  vtimepickertextfield.SetOnEvent(eventhandler, {38} , {259} , {260} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [667]  vtimepickertextfield.SetOnEvent(eventhandler, {39} , {261} , {262} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [669]  vtimepicker.VModel = vmodel 
_vtimepicker.setvmodel(_vmodel);
// [670]  vtimepicker.AddAttr( {263} , True) 
_vtimepicker.addattr("landscape",true);
// [672]  vtimepickerclear.AddAttr( {264} , {40} ) 
_vtimepickerclear.addattr("v-on:click","" + _vmodel + " = ''");
// [673]  vtimepickercancel.AddAttr( {265} , {41} ) 
_vtimepickercancel.addattr("v-on:click","" + _menukey + " = false");
// [674]  vtimepickerok.AddAttr( {266} , {42} ) 
_vtimepickerok.addattr("v-on:click","#refs." + _menukey + ".save(" + _vmodel + ")");
// [677]  vtimepickerclear.Outlined = True 
_vtimepickerclear.setoutlined(true);
// [678]  vtimepickercancel.Outlined = True 
_vtimepickercancel.setoutlined(true);
// [679]  vtimepickerok.Outlined = True 
_vtimepickerok.setoutlined(true);
// [681]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [682]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [683]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [684]  vtimepickertextfield.AddAttr(k, v) 
_vtimepickertextfield.addattr(_k,_v);
// [685]  Next 
}
// [686]  End If 
}
// [689]  VC.BindVueElement(vtimepickermenu) 
_vc.bindvueelement(_vtimepickermenu);
// [690]  VC.BindVueElement(vtimepickertextfield) 
_vc.bindvueelement(_vtimepickertextfield);
// [691]  VC.BindVueElement(vtimepicker) 
_vc.bindvueelement(_vtimepicker);
// [692]  VC.BindVueElement(vtimepickerclear) 
_vc.bindvueelement(_vtimepickerclear);
// [693]  VC.BindVueElement(vtimepickercancel) 
_vc.bindvueelement(_vtimepickercancel);
// [694]  VC.BindVueElement(vtimepickerok) 
_vc.bindvueelement(_vtimepickerok);
// [695]  VC.BindVueElement(vtimepickertemplate) 
_vc.bindvueelement(_vtimepickertemplate);
// [697]  Dim ah As BANanoElement 
_ah=null;
// [698]  ah.Initialize( {267} ) 
_ah=u("#appendholder");
// [699]  Return ah 
return _ah;
// End Sub
};

// [702] Sub NewTimePickerOnApp(app As VuetifyApp, parentid As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, props As Map) 
this.newtimepickeronapp=function(_app,_parentid,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vtimepicker,_vtimepickercancel,_vtimepickerclear,_vtimepickermenu,_vtimepickerok,_vtimepickertemplate,_vtimepickertextfield,_menukey,_k,_v;
// [703]  Dim eventhandler As Object = app.EventHandler 
_eventhandler=_app._eventhandler;
// [704]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [705]  Dim Ret As Long 
_ret=0;
// [706]  Dim AllViews As Map 
_allviews={};
// [707]  parentid = parentid.Replace( {268} , {269} ) 
_parentid=_parentid.split("#").join("");
// [710]  Ret = banano.LoadLayoutArray( {43} , {270} , True) 
_ret=this.mtimepicker("#" + _parentid + "",true);
// [712]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {271} , Ret) 
_allviews=_B["_" + BANToBase("mtimepicker".toLowerCase())][_ret];
// [714]  Dim vtimepicker As VueElement 
_vtimepicker= new banano_bananovuetifyad3_vueelement();
// [715]  Dim vtimepickercancel As VueElement 
_vtimepickercancel= new banano_bananovuetifyad3_vueelement();
// [716]  Dim vtimepickerclear As VueElement 
_vtimepickerclear= new banano_bananovuetifyad3_vueelement();
// [717]  Dim vtimepickermenu As VueElement 
_vtimepickermenu= new banano_bananovuetifyad3_vueelement();
// [718]  Dim vtimepickerok As VueElement 
_vtimepickerok= new banano_bananovuetifyad3_vueelement();
// [719]  Dim vtimepickertemplate As VueElement 
_vtimepickertemplate= new banano_bananovuetifyad3_vueelement();
// [720]  Dim vtimepickertextfield As VueElement 
_vtimepickertextfield= new banano_bananovuetifyad3_vueelement();
// [722]  vtimepickermenu = AllViews.Get( {272} ) 
_vtimepickermenu=_allviews["vtimepickermenu"];
// [723]  vtimepickertextfield = AllViews.Get( {273} ) 
_vtimepickertextfield=_allviews["vtimepickertextfield"];
// [724]  vtimepicker = AllViews.Get( {274} ) 
_vtimepicker=_allviews["vtimepicker"];
// [725]  vtimepickerclear = AllViews.Get( {275} ) 
_vtimepickerclear=_allviews["vtimepickerclear"];
// [726]  vtimepickercancel = AllViews.Get( {276} ) 
_vtimepickercancel=_allviews["vtimepickercancel"];
// [727]  vtimepickertemplate = AllViews.Get( {277} ) 
_vtimepickertemplate=_allviews["vtimepickertemplate"];
// [728]  vtimepickerok = AllViews.Get( {278} ) 
_vtimepickerok=_allviews["vtimepickerok"];
// [730]  Dim menuKey As String = {44} 
_menukey="" + _vmodel + "dtmenu";
// [732]  vtimepickermenu.AddAttr( {279} , menuKey) 
_vtimepickermenu.addattr("ref",_menukey);
// [733]  vtimepickermenu.AddAttr( {280} , vmodel) 
_vtimepickermenu.addattr(":return-value.sync",_vmodel);
// [734]  vtimepickermenu.VModel = menuKey 
_vtimepickermenu.setvmodel(_menukey);
// [735]  vtimepickermenu.AddAttr( {281} , {282} ) 
_vtimepickermenu.addattr("min-width","460px");
// [736]  vtimepickermenu.AddAttr( {283} , {284} ) 
_vtimepickermenu.addattr("max-width","460px");
// [737]  vtimepickermenu.AddAttr( {285} , {286} ) 
_vtimepickermenu.addattr(":nudge-right","40");
// [740]  vtimepickertextfield.Label = slabel 
_vtimepickertextfield.setlabel(_slabel);
// [741]  vtimepickertextfield.VModel = vmodel 
_vtimepickertextfield.setvmodel(_vmodel);
// [742]  vtimepickertextfield.PrependIcon = sPrependIcon 
_vtimepickertextfield.setprependicon(_sprependicon);
// [743]  vtimepickertextfield.Placeholder = splaceholder 
_vtimepickertextfield.setplaceholder(_splaceholder);
// [744]  vtimepickertextfield.Required = bRequired 
_vtimepickertextfield.setrequired(_brequired);
// [745]  vtimepickertextfield.Hint = sHint 
_vtimepickertextfield.sethint(_shint);
// [746]  vtimepickertextfield.Ref = vmodel 
_vtimepickertextfield.setref(_vmodel);
// [747]  vtimepickertextfield.AddAttr( {287} , elID) 
_vtimepickertextfield.addattr("id",_elid);
// [748]  vtimepickertextfield.AddAttr( {288} , {289} ) 
_vtimepickertextfield.addattr("autocomplete","off");
// [749]  vtimepickertextfield.SetOnEvent(eventhandler, {45} , {290} , {291} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [750]  vtimepickertextfield.SetOnEvent(eventhandler, {46} , {292} , {293} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [751]  vtimepickertextfield.SetOnEvent(eventhandler, {47} , {294} , {295} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [752]  vtimepickertextfield.SetOnEvent(eventhandler, {48} , {296} , {297} ) 
_vtimepickertextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [754]  vtimepicker.VModel = vmodel 
_vtimepicker.setvmodel(_vmodel);
// [755]  vtimepicker.AddAttr( {298} , True) 
_vtimepicker.addattr("landscape",true);
// [757]  vtimepickerclear.AddAttr( {299} , {49} ) 
_vtimepickerclear.addattr("v-on:click","" + _vmodel + " = ''");
// [758]  vtimepickercancel.AddAttr( {300} , {50} ) 
_vtimepickercancel.addattr("v-on:click","" + _menukey + " = false");
// [759]  vtimepickerok.AddAttr( {301} , {51} ) 
_vtimepickerok.addattr("v-on:click","#refs." + _menukey + ".save(" + _vmodel + ")");
// [762]  vtimepickerclear.Outlined = True 
_vtimepickerclear.setoutlined(true);
// [763]  vtimepickercancel.Outlined = True 
_vtimepickercancel.setoutlined(true);
// [764]  vtimepickerok.Outlined = True 
_vtimepickerok.setoutlined(true);
// [766]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [767]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [768]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [769]  vtimepickertextfield.AddAttr(k, v) 
_vtimepickertextfield.addattr(_k,_v);
// [770]  Next 
}
// [771]  End If 
}
// [774]  app.BindVueElement(vtimepickermenu) 
_app.bindvueelement(_vtimepickermenu);
// [775]  app.BindVueElement(vtimepickertextfield) 
_app.bindvueelement(_vtimepickertextfield);
// [776]  app.BindVueElement(vtimepicker) 
_app.bindvueelement(_vtimepicker);
// [777]  app.BindVueElement(vtimepickerclear) 
_app.bindvueelement(_vtimepickerclear);
// [778]  app.BindVueElement(vtimepickercancel) 
_app.bindvueelement(_vtimepickercancel);
// [779]  app.BindVueElement(vtimepickerok) 
_app.bindvueelement(_vtimepickerok);
// [780]  app.BindVueElement(vtimepickertemplate) 
_app.bindvueelement(_vtimepickertemplate);
// End Sub
};

// [784] Sub NewSearch(VC As VueComponent, elID As String, vmodel As String, slabel As String, sAppendIcon As String, props As Map) As BANanoElement 
this.newsearch=function(_vc,_elid,_vmodel,_slabel,_sappendicon,_props) {
if (_B==null) _B=this;
var _ret,_allviews,_vtextfield,_k,_v,_ah;
// [785]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [786]  Dim Ret As Long 
_ret=0;
// [787]  Dim AllViews As Map 
_allviews={};
// [790]  Ret = banano.LoadLayoutArray( {302} , {303} , True) 
_ret=this.mtextfield("#appendholder",true);
// [792]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {304} , Ret) 
_allviews=_B["_" + BANToBase("mtextfield".toLowerCase())][_ret];
// [795]  Dim vtextfield As VueElement = AllViews.get( {305} ) 
_vtextfield=_allviews["vtextfield"];
// [796]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [797]  vtextfield.AppendIcon = sAppendIcon 
_vtextfield.setappendicon(_sappendicon);
// [798]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [799]  vtextfield.AddAttr( {306} , {307} ) 
_vtextfield.addattr("type","text");
// [800]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [801]  vtextfield.AddAttr( {308} , elID) 
_vtextfield.addattr("id",_elid);
// [802]  vtextfield.AddAttr( {309} , True) 
_vtextfield.addattr(":single-line",true);
// [803]  vtextfield.AddAttr( {310} , True) 
_vtextfield.addattr(":hide-details",true);
// [805]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [806]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [807]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [808]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [809]  Next 
}
// [810]  End If 
}
// [812]  VC.BindVueElement(vtextfield) 
_vc.bindvueelement(_vtextfield);
// [814]  Dim ah As BANanoElement 
_ah=null;
// [815]  ah.Initialize( {311} ) 
_ah=u("#appendholder");
// [816]  Return ah 
return _ah;
// End Sub
};

// [819] Sub NewTextField(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement 
this.newtextfield=function(_vc,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vtextfield,_k,_v,_ah;
// [820]  Dim eventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [821]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [822]  Dim Ret As Long 
_ret=0;
// [823]  Dim AllViews As Map 
_allviews={};
// [826]  Ret = banano.LoadLayoutArray( {312} , {313} , True) 
_ret=this.mtextfield("#appendholder",true);
// [828]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {314} , Ret) 
_allviews=_B["_" + BANToBase("mtextfield".toLowerCase())][_ret];
// [831]  Dim vtextfield As VueElement = AllViews.get( {315} ) 
_vtextfield=_allviews["vtextfield"];
// [832]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [833]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [834]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [835]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [836]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [837]  End If 
}
// [838]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [839]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [840]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [841]  vtextfield.AddAttr( {316} , {317} ) 
_vtextfield.addattr("type","text");
// [842]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [843]  vtextfield.AddAttr( {318} , elID) 
_vtextfield.addattr("id",_elid);
// [844]  vtextfield.SetOnEvent(eventHandler, {52} , {319} , {320} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [845]  vtextfield.SetOnEvent(eventHandler, {53} , {321} , {322} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [846]  vtextfield.SetOnEvent(eventHandler, {54} , {323} , {324} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [847]  vtextfield.SetOnEvent(eventHandler, {55} , {325} , {326} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [850]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [851]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [852]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [853]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [854]  Next 
}
// [855]  End If 
}
// [857]  VC.BindVueElement(vtextfield) 
_vc.bindvueelement(_vtextfield);
// [859]  Dim ah As BANanoElement 
_ah=null;
// [860]  ah.Initialize( {327} ) 
_ah=u("#appendholder");
// [861]  Return ah 
return _ah;
// End Sub
};

// [864] Sub NewTextArea(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement 
this.newtextarea=function(_vc,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vtextfield,_k,_v,_ah;
// [865]  Dim eventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [866]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [867]  Dim Ret As Long 
_ret=0;
// [868]  Dim AllViews As Map 
_allviews={};
// [871]  Ret = banano.LoadLayoutArray( {328} , {329} , True) 
_ret=this.mtextarea("#appendholder",true);
// [873]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {330} , Ret) 
_allviews=_B["_" + BANToBase("mtextarea".toLowerCase())][_ret];
// [876]  Dim vtextfield As VueElement = AllViews.get( {331} ) 
_vtextfield=_allviews["mtextarea"];
// [877]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [878]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [879]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [880]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [881]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [882]  End If 
}
// [883]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [884]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [885]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [886]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [887]  vtextfield.AddAttr( {332} , elID) 
_vtextfield.addattr("id",_elid);
// [888]  vtextfield.SetOnEvent(eventHandler, {56} , {333} , {334} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:append","click:append","");
// [889]  vtextfield.SetOnEvent(eventHandler, {57} , {335} , {336} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend","click:prepend","");
// [890]  vtextfield.SetOnEvent(eventHandler, {58} , {337} , {338} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:append-outer","click:append-outer","");
// [891]  vtextfield.SetOnEvent(eventHandler, {59} , {339} , {340} ) 
_vtextfield.setonevent(_eventhandler,"" + _elid + "_click:prepend-inner","click:prepend-inner","");
// [894]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [895]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [896]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [897]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [898]  Next 
}
// [899]  End If 
}
// [901]  VC.BindVueElement(vtextfield) 
_vc.bindvueelement(_vtextfield);
// [903]  Dim ah As BANanoElement 
_ah=null;
// [904]  ah.Initialize( {341} ) 
_ah=u("#appendholder");
// [905]  Return ah 
return _ah;
// End Sub
};

// [909] Sub NewPassword(VC As VueComponent, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As BANanoElement 
this.newpassword=function(_vc,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_bshowpassword,_vtextfield,_k,_v,_ah;
// [910]  Dim eventhandler As Object = VC.mcallback 
_eventhandler=_vc._mcallback;
// [911]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [913]  Dim Ret As Long 
_ret=0;
// [914]  Dim AllViews As Map 
_allviews={};
// [915]  Dim bshowPassword As String = {60} 
_bshowpassword="" + _elid + "ShowPassword";
// [916]  bshowPassword = bshowPassword.tolowercase 
_bshowpassword=_bshowpassword.toLowerCase();
// [917]  VC.SetData(bshowPassword, False) 
_vc.setdata(_bshowpassword,false);
// [920]  Ret = banano.LoadLayoutArray( {342} , {343} , True) 
_ret=this.mtextfield("#appendholder",true);
// [922]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {344} , Ret) 
_allviews=_B["_" + BANToBase("mtextfield".toLowerCase())][_ret];
// [925]  Dim vtextfield As VueElement = AllViews.get( {345} ) 
_vtextfield=_allviews["vtextfield"];
// [926]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [927]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [928]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [929]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [930]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [931]  End If 
}
// [932]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [933]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [934]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [935]  vtextfield.AddAttr( {346} , {347} ) 
_vtextfield.addattr("type","text");
// [936]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [937]  vtextfield.AddAttr( {348} , elID) 
_vtextfield.addattr("id",_elid);
// [938]  vtextfield.AddAttr( {349} , {61} ) 
_vtextfield.addattr(":type","" + _bshowpassword + " ? 'text' : 'password'");
// [939]  vtextfield.AddAttr( {350} , {62} ) 
_vtextfield.addattr(":append-icon","" + _bshowpassword + " ? 'mdi-eye' : 'mdi-eye-off'");
// [940]  vtextfield.AddAttr( {351} , {63} ) 
_vtextfield.addattr("v-on:click:append","" + _bshowpassword + " = !" + _bshowpassword + "");
// [941]  vtextfield.AddAttr( {352} , {353} ) 
_vtextfield.addattr("autocomplete","off");
// [945]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [946]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [947]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [948]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [949]  Next 
}
// [950]  End If 
}
// [953]  VC.BindVueElement(vtextfield) 
_vc.bindvueelement(_vtextfield);
// [955]  Dim ah As BANanoElement 
_ah=null;
// [956]  ah.Initialize( {354} ) 
_ah=u("#appendholder");
// [957]  Return ah 
return _ah;
// End Sub
};

// [961] Sub NewSelect(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement 
this.newselect=function(_vc,_elid,_vmodel,_slabel,_brequired,_bmultiple,_splaceholder,_sourcetable,_sourcefield,_displayfield,_returnobject,_shelpertext,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vselect,_lst,_k,_v,_clickevent,_ah;
// [962]  Dim eventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [963]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [965]  Dim Ret As Long 
_ret=0;
// [966]  Dim AllViews As Map 
_allviews={};
// [969]  Ret = banano.LoadLayoutArray( {355} , {356} , True) 
_ret=this.mselect("#appendholder",true);
// [971]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {357} , Ret) 
_allviews=_B["_" + BANToBase("mselect".toLowerCase())][_ret];
// [973]  Dim vselect As VueElement = AllViews.Get( {358} ) 
_vselect=_allviews["vselect"];
// [974]  vselect.label = sLabel 
_vselect.setlabel(_slabel);
// [975]  vselect.Required = bRequired 
_vselect.setrequired(_brequired);
// [976]  vselect.Placeholder = sPlaceHolder 
_vselect.setplaceholder(_splaceholder);
// [977]  vselect.Hint = sHelperText 
_vselect.sethint(_shelpertext);
// [978]  vselect.Multiple = bMultiple 
_vselect.setmultiple(_bmultiple);
// [979]  vselect.Items = {64} 
_vselect.setitems(":" + _sourcetable + "");
// [980]  If displayField <> {359} Then vselect.ItemText = displayField 
if (_displayfield!="") {_vselect.setitemtext(_displayfield);}
// [981]  If sourceField <> {360} Then vselect.ItemValue = sourceField 
if (_sourcefield!="") {_vselect.setitemvalue(_sourcefield);}
// [982]  vselect.VModel = vmodel 
_vselect.setvmodel(_vmodel);
// [983]  vselect.AddAttr( {361} , elID) 
_vselect.addattr("id",_elid);
// [985]  If bMultiple Then 
if (_bmultiple) {
// [986]  Dim lst As List = VC.NewList 
_lst=_vc.newlist();
// [987]  VC.SetData(vmodel, lst) 
_vc.setdata(_vmodel,_lst);
// [988]  Else 
} else {
// [989]  VC.SetData(vmodel, Null) 
_vc.setdata(_vmodel,null);
// [990]  End If 
}
// [992]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [993]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [994]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [995]  vselect.AddAttr(k, v) 
_vselect.addattr(_k,_v);
// [996]  Next 
}
// [997]  End If 
}
// [999]  Dim clickEvent As String = {65} 
_clickevent="" + _elid + "_change";
// [1000]  vselect.SetOnEvent(eventHandler, clickEvent, {362} , {363} ) 
_vselect.setonevent(_eventhandler,_clickevent,"change","");
// [1002]  VC.BindVueElement(vselect) 
_vc.bindvueelement(_vselect);
// [1004]  Dim ah As BANanoElement 
_ah=null;
// [1005]  ah.Initialize( {364} ) 
_ah=u("#appendholder");
// [1006]  Return ah 
return _ah;
// End Sub
};

// [1010] Sub NewComboBox(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement 
this.newcombobox=function(_vc,_elid,_vmodel,_slabel,_brequired,_bmultiple,_splaceholder,_sourcetable,_sourcefield,_displayfield,_returnobject,_shelpertext,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vselect,_lst,_k,_v,_clickevent,_ah;
// [1011]  Dim eventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [1012]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1014]  Dim Ret As Long 
_ret=0;
// [1015]  Dim AllViews As Map 
_allviews={};
// [1018]  Ret = banano.LoadLayoutArray( {365} , {366} , True) 
_ret=this.mcombobox("#appendholder",true);
// [1020]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {367} , Ret) 
_allviews=_B["_" + BANToBase("mcombobox".toLowerCase())][_ret];
// [1022]  Dim vselect As VueElement = AllViews.Get( {368} ) 
_vselect=_allviews["vcombobox"];
// [1023]  vselect.label = sLabel 
_vselect.setlabel(_slabel);
// [1024]  vselect.Required = bRequired 
_vselect.setrequired(_brequired);
// [1025]  vselect.Placeholder = sPlaceHolder 
_vselect.setplaceholder(_splaceholder);
// [1026]  vselect.Hint = sHelperText 
_vselect.sethint(_shelpertext);
// [1027]  vselect.Multiple = bMultiple 
_vselect.setmultiple(_bmultiple);
// [1028]  vselect.Items = {66} 
_vselect.setitems(":" + _sourcetable + "");
// [1029]  If displayField <> {369} Then vselect.ItemText = displayField 
if (_displayfield!="") {_vselect.setitemtext(_displayfield);}
// [1030]  If sourceField <> {370} Then vselect.ItemValue = sourceField 
if (_sourcefield!="") {_vselect.setitemvalue(_sourcefield);}
// [1031]  vselect.VModel = vmodel 
_vselect.setvmodel(_vmodel);
// [1032]  vselect.AddAttr( {371} , elID) 
_vselect.addattr("id",_elid);
// [1034]  If bMultiple Then 
if (_bmultiple) {
// [1035]  Dim lst As List = VC.NewList 
_lst=_vc.newlist();
// [1036]  VC.SetData(vmodel, lst) 
_vc.setdata(_vmodel,_lst);
// [1037]  Else 
} else {
// [1038]  VC.SetData(vmodel, Null) 
_vc.setdata(_vmodel,null);
// [1039]  End If 
}
// [1041]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1042]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1043]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1044]  vselect.AddAttr(k, v) 
_vselect.addattr(_k,_v);
// [1045]  Next 
}
// [1046]  End If 
}
// [1048]  Dim clickEvent As String = {67} 
_clickevent="" + _elid + "_change";
// [1049]  vselect.SetOnEvent(eventHandler, clickEvent, {372} , {373} ) 
_vselect.setonevent(_eventhandler,_clickevent,"change","");
// [1051]  VC.BindVueElement(vselect) 
_vc.bindvueelement(_vselect);
// [1053]  Dim ah As BANanoElement 
_ah=null;
// [1054]  ah.Initialize( {374} ) 
_ah=u("#appendholder");
// [1055]  Return ah 
return _ah;
// End Sub
};

// [1059] Sub NewAutoComplete(VC As VueComponent, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As BANanoElement 
this.newautocomplete=function(_vc,_elid,_vmodel,_slabel,_brequired,_bmultiple,_splaceholder,_sourcetable,_sourcefield,_displayfield,_returnobject,_shelpertext,_props) {
if (_B==null) _B=this;
var _eventhandler,_ret,_allviews,_vselect,_lst,_k,_v,_clickevent,_ah;
// [1060]  Dim eventHandler As Object = VC.mCallBack 
_eventhandler=_vc._mcallback;
// [1061]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1063]  Dim Ret As Long 
_ret=0;
// [1064]  Dim AllViews As Map 
_allviews={};
// [1067]  Ret = banano.LoadLayoutArray( {375} , {376} , True) 
_ret=this.mautocomplete("#appendholder",true);
// [1069]  AllViews = banano.GetAllViewsFromLayoutArray(Me, {377} , Ret) 
_allviews=_B["_" + BANToBase("mautocomplete".toLowerCase())][_ret];
// [1071]  Dim vselect As VueElement = AllViews.Get( {378} ) 
_vselect=_allviews["vautocomplete"];
// [1072]  vselect.label = sLabel 
_vselect.setlabel(_slabel);
// [1073]  vselect.Required = bRequired 
_vselect.setrequired(_brequired);
// [1074]  vselect.Placeholder = sPlaceHolder 
_vselect.setplaceholder(_splaceholder);
// [1075]  vselect.Hint = sHelperText 
_vselect.sethint(_shelpertext);
// [1076]  vselect.Multiple = bMultiple 
_vselect.setmultiple(_bmultiple);
// [1077]  vselect.Items = {68} 
_vselect.setitems(":" + _sourcetable + "");
// [1078]  If displayField <> {379} Then vselect.ItemText = displayField 
if (_displayfield!="") {_vselect.setitemtext(_displayfield);}
// [1079]  If sourceField <> {380} Then vselect.ItemValue = sourceField 
if (_sourcefield!="") {_vselect.setitemvalue(_sourcefield);}
// [1080]  vselect.VModel = vmodel 
_vselect.setvmodel(_vmodel);
// [1081]  vselect.AddAttr( {381} , elID) 
_vselect.addattr("id",_elid);
// [1083]  If bMultiple Then 
if (_bmultiple) {
// [1084]  Dim lst As List = VC.NewList 
_lst=_vc.newlist();
// [1085]  VC.SetData(vmodel, lst) 
_vc.setdata(_vmodel,_lst);
// [1086]  Else 
} else {
// [1087]  VC.SetData(vmodel, Null) 
_vc.setdata(_vmodel,null);
// [1088]  End If 
}
// [1090]  If banano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1091]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1092]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1093]  vselect.AddAttr(k, v) 
_vselect.addattr(_k,_v);
// [1094]  Next 
}
// [1095]  End If 
}
// [1097]  Dim clickEvent As String = {69} 
_clickevent="" + _elid + "_change";
// [1098]  vselect.SetOnEvent(eventHandler, clickEvent, {382} , {383} ) 
_vselect.setonevent(_eventhandler,_clickevent,"change","");
// [1100]  VC.BindVueElement(vselect) 
_vc.bindvueelement(_vselect);
// [1102]  Dim ah As BANanoElement 
_ah=null;
// [1103]  ah.Initialize( {384} ) 
_ah=u("#appendholder");
// [1104]  Return ah 
return _ah;
// End Sub
};

this.mbtniconright=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbtniconright={};};
if (_B._mbtniconright==undefined) {_B._mbtniconright={};};
var _tmpmbtniconright={};
_BANUnique++;
_tmpmbtniconright.vbtnright = BANC(banano_bananovuetifyad3_vueelement,_B, "vbtnright_" + _BANUnique, "vbtnright",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconright.vspanleft = BANC(banano_bananovuetifyad3_vueelement,_B, "vspanleft_" + _BANUnique, "vspanleft",u('#vbtnright_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconright.viconright = BANC(banano_bananovuetifyad3_vueelement,_B, "viconright_" + _BANUnique, "viconright",u('#vbtnright_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "right=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbtniconright[_BANUnique]=_tmpmbtniconright;
return _BANUnique;
};

this.mbtniconleft=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbtniconleft={};};
if (_B._mbtniconleft==undefined) {_B._mbtniconleft={};};
var _tmpmbtniconleft={};
_BANUnique++;
_tmpmbtniconleft.vbtnleft = BANC(banano_bananovuetifyad3_vueelement,_B, "vbtnleft_" + _BANUnique, "vbtnleft",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconleft.viconleft = BANC(banano_bananovuetifyad3_vueelement,_B, "viconleft_" + _BANUnique, "viconleft",u('#vbtnleft_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "left=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconleft.vspanright = BANC(banano_bananovuetifyad3_vueelement,_B, "vspanright_" + _BANUnique, "vspanright",u('#vbtnleft_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbtniconleft[_BANUnique]=_tmpmbtniconleft;
return _BANUnique;
};

this.mavatarbadge=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mavatarbadge={};};
if (_B._mavatarbadge==undefined) {_B._mavatarbadge={};};
var _tmpmavatarbadge={};
_BANUnique++;
_tmpmavatarbadge.mbadge = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadge_" + _BANUnique, "mbadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "bordered=true;bottom=true;dot=true;offset-x=10;offset-y=10","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmavatarbadge.mbadgeavatar = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadgeavatar_" + _BANUnique, "mbadgeavatar",u('#mbadge_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmavatarbadge.mbadgeavatarimg = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadgeavatarimg_" + _BANUnique, "mbadgeavatarimg",u('#mbadgeavatar_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-img","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mavatarbadge[_BANUnique]=_tmpmavatarbadge;
return _BANUnique;
};

this.mdatatable=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mdatatable={};};
if (_B._mdatatable==undefined) {_B._mdatatable={};};
var _tmpmdatatable={};
_BANUnique++;
_tmpmdatatable.vtablecard = BANC(banano_bananovuetifyad3_vueelement,_B, "vtablecard_" + _BANUnique, "vtablecard",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatatable.vtablecardtitle = BANC(banano_bananovuetifyad3_vueelement,_B, "vtablecardtitle_" + _BANUnique, "vtablecardtitle",u('#vtablecard_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-title","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatatable.vtablesubtitle = BANC(banano_bananovuetifyad3_vueelement,_B, "vtablesubtitle_" + _BANUnique, "vtablecardsubtitle",u('#vtablecard_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-subtitle","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatatable.vtablecardtext = BANC(banano_bananovuetifyad3_vueelement,_B, "vtablecardtext_" + _BANUnique, "vtablecardtext",u('#vtablecard_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-text","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mdatatable[_BANUnique]=_tmpmdatatable;
return _BANUnique;
};

this.mbtnbadge=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbtnbadge={};};
if (_B._mbtnbadge==undefined) {_B._mbtnbadge={};};
var _tmpmbtnbadge={};
_BANUnique++;
_tmpmbtnbadge.mbadge = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadge_" + _BANUnique, "mbadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtnbadge.mbadgebtn = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadgebtn_" + _BANUnique, "mbadgebtn",u('#mbadge_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbtnbadge[_BANUnique]=_tmpmbtnbadge;
return _BANUnique;
};

this.mbtniconbadge=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbtniconbadge={};};
if (_B._mbtniconbadge==undefined) {_B._mbtniconbadge={};};
var _tmpmbtniconbadge={};
_BANUnique++;
_tmpmbtniconbadge.mbadge = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadge_" + _BANUnique, "mbadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconbadge.mbadgebtn = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadgebtn_" + _BANUnique, "mbadgebtn",u('#mbadge_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtniconbadge.mbadgeicon = BANC(banano_bananovuetifyad3_vueelement,_B, "mbadgeicon_" + _BANUnique, "mbadgeicon",u('#mbadgebtn_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbtniconbadge[_BANUnique]=_tmpmbtniconbadge;
return _BANUnique;
};

this.miconbadge=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._miconbadge={};};
if (_B._miconbadge==undefined) {_B._miconbadge={};};
var _tmpmiconbadge={};
_BANUnique++;
_tmpmiconbadge.vbadge = BANC(banano_bananovuetifyad3_vueelement,_B, "vbadge_" + _BANUnique, "vbadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmiconbadge.vbadgeicon = BANC(banano_bananovuetifyad3_vueelement,_B, "vbadgeicon_" + _BANUnique, "vbadgeicon",u('#vbadge_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._miconbadge[_BANUnique]=_tmpmiconbadge;
return _BANUnique;
};

this.mbtnicon=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbtnicon={};};
if (_B._mbtnicon==undefined) {_B._mbtnicon={};};
var _tmpmbtnicon={};
_BANUnique++;
_tmpmbtnicon.mbtn = BANC(banano_bananovuetifyad3_vueelement,_B, "mbtn_" + _BANUnique, "mbtn",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "none","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmbtnicon.micon = BANC(banano_bananovuetifyad3_vueelement,_B, "micon_" + _BANUnique, "micon",u('#mbtn_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbtnicon[_BANUnique]=_tmpmbtnicon;
return _BANUnique;
};

this.mbutton=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mbutton={};};
if (_B._mbutton==undefined) {_B._mbutton={};};
var _tmpmbutton={};
_BANUnique++;
_tmpmbutton.mbutton = BANC(banano_bananovuetifyad3_vueelement,_B, "mbutton_" + _BANUnique, "mbutton",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mbutton[_BANUnique]=_tmpmbutton;
return _BANUnique;
};

this.mdatepicker=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mdatepicker={};};
if (_B._mdatepicker==undefined) {_B._mdatepicker={};};
var _tmpmdatepicker={};
_BANUnique++;
_tmpmdatepicker.vdatepickermenu = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickermenu_" + _BANUnique, "vdatepickermenu",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":close-on-content-click=false;transition=scale-transition;offset-y=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-menu","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepickertemplate = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickertemplate_" + _BANUnique, "vdatepickertemplate",u('#vdatepickermenu_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-template","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "{ on, attrs }","VText": "","Width": ""});
_tmpmdatepicker.vdatepickertextfield = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickertextfield_" + _BANUnique, "vdatepickertextfield",u('#vdatepickertemplate_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "attrs","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "on","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepicker = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepicker_" + _BANUnique, "vdatepicker",u('#vdatepickermenu_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "scrollable=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-date-picker","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepickerclear = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickerclear_" + _BANUnique, "vdatepickerclear",u('#vdatepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Clear","Classes": "","Clearable": false,"Color": "error","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepickerspacer = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickerspacer_" + _BANUnique, "vdatepickerspacer",u('#vdatepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-spacer","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepickercancel = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickercancel_" + _BANUnique, "vdatepickercancel",u('#vdatepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Cancel","Classes": "","Clearable": false,"Color": "primary","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmdatepicker.vdatepickerok = BANC(banano_bananovuetifyad3_vueelement,_B, "vdatepickerok_" + _BANUnique, "vdatepickerok",u('#vdatepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Ok","Classes": "","Clearable": false,"Color": "primary","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mdatepicker[_BANUnique]=_tmpmdatepicker;
return _BANUnique;
};

this.mtimepicker=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mtimepicker={};};
if (_B._mtimepicker==undefined) {_B._mtimepicker={};};
var _tmpmtimepicker={};
_BANUnique++;
_tmpmtimepicker.vtimepickermenu = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickermenu_" + _BANUnique, "vtimepickermenu",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":close-on-content-click=false;transition=scale-transition;offset-y=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-menu","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepickertemplate = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickertemplate_" + _BANUnique, "vtimepickertemplate",u('#vtimepickermenu_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-template","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "{ on, attrs }","VText": "","Width": ""});
_tmpmtimepicker.vtimepickertextfield = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickertextfield_" + _BANUnique, "vtimepickertextfield",u('#vtimepickertemplate_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "attrs","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "on","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepicker = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepicker_" + _BANUnique, "vtimepicker",u('#vtimepickermenu_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "scrollable=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-time-picker","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepickerclear = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickerclear_" + _BANUnique, "vtimepickerclear",u('#vtimepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Clear","Classes": "","Clearable": false,"Color": "error","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepickerspacer = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickerspacer_" + _BANUnique, "vtimepickerspacer",u('#vtimepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-spacer","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepickercancel = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickercancel_" + _BANUnique, "vtimepickercancel",u('#vtimepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Cancel","Classes": "","Clearable": false,"Color": "primary","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_tmpmtimepicker.vtimepickerok = BANC(banano_bananovuetifyad3_vueelement,_B, "vtimepickerok_" + _BANUnique, "vtimepickerok",u('#vtimepicker_' + _BANUnique), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "text=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Ok","Classes": "","Clearable": false,"Color": "primary","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mtimepicker[_BANUnique]=_tmpmtimepicker;
return _BANUnique;
};

this.mtextfield=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mtextfield={};};
if (_B._mtextfield==undefined) {_B._mtextfield={};};
var _tmpmtextfield={};
_BANUnique++;
_tmpmtextfield.vtextfield = BANC(banano_bananovuetifyad3_vueelement,_B, "vtextfield_" + _BANUnique, "vtextfield",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mtextfield[_BANUnique]=_tmpmtextfield;
return _BANUnique;
};

this.mtextarea=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mtextarea={};};
if (_B._mtextarea==undefined) {_B._mtextarea={};};
var _tmpmtextarea={};
_BANUnique++;
_tmpmtextarea.mtextarea = BANC(banano_bananovuetifyad3_vueelement,_B, "mtextarea_" + _BANUnique, "mtextarea",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-textarea","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mtextarea[_BANUnique]=_tmpmtextarea;
return _BANUnique;
};

this.mselect=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mselect={};};
if (_B._mselect==undefined) {_B._mselect={};};
var _tmpmselect={};
_BANUnique++;
_tmpmselect.vselect = BANC(banano_bananovuetifyad3_vueelement,_B, "vselect_" + _BANUnique, "vselect",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-select","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mselect[_BANUnique]=_tmpmselect;
return _BANUnique;
};

this.mcombobox=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mcombobox={};};
if (_B._mcombobox==undefined) {_B._mcombobox={};};
var _tmpmcombobox={};
_BANUnique++;
_tmpmcombobox.vcombobox = BANC(banano_bananovuetifyad3_vueelement,_B, "vcombobox_" + _BANUnique, "vcombobox",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-combobox","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mcombobox[_BANUnique]=_tmpmcombobox;
return _BANUnique;
};

this.mautocomplete=function(Par,Empty) {
if (Empty) {u(Par).empty();_B._mautocomplete={};};
if (_B._mautocomplete==undefined) {_B._mautocomplete={};};
var _tmpmautocomplete={};
_BANUnique++;
_tmpmautocomplete.vautocomplete = BANC(banano_bananovuetifyad3_vueelement,_B, "vautocomplete_" + _BANUnique, "vautocomplete",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-autocomplete","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._mautocomplete[_BANUnique]=_tmpmautocomplete;
return _BANUnique;
};

}
/* =========================== ViewDialog =========================== */
function banano_part23_viewdialog() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._dialogs= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="dialogs";

// [14] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [16]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [18]  dialogs.Initialize(Me, name) 
_B._dialogs.initialize(_B,_B._name);
// [19]  path = dialogs.path 
_B._path=_B._dialogs._path;
// [21]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vdialogs(_B._vuetify._placeholdername);
// [22]  vdialogs.Matrix(1, 1).LoadLayout( {2} ) 
_B._vdialogs.matrix(1,1).BANll(this.dialogbutton1);
// [23]  vdialogs.Matrix(1, 2).LoadLayout( {3} ) 
_B._vdialogs.matrix(1,2).BANll(this.dialogbutton2);
// [24]  vdialogs.Matrix(1, 3).LoadLayout( {4} ) 
_B._vdialogs.matrix(1,3).BANll(this.dialogbutton3);
// [31]  dialogs.BindVueElement(dialogbtn1) 
_B._dialogs.bindvueelement(_B._dialogbtn1);
// [32]  dialogs.BindVueElement(dialogbtn2) 
_B._dialogs.bindvueelement(_B._dialogbtn2);
// [33]  dialogs.BindVueElement(dialogbtn3) 
_B._dialogs.bindvueelement(_B._dialogbtn3);
// [35]  dialogs.AppendPlaceHolder 
_B._dialogs.appendplaceholder();
// [37]  vuetify.AddRoute(dialogs) 
_B._vuetify.addroute(_B._dialogs);
// End Sub
};

// [41] Sub dialogbtn1_Click (e As BANanoEvent) 'IgnoreDeadCode 
this.dialogbtn1_click=function(_e) {
if (_B==null) _B=this;
// [42]  vuetify.ShowConfirm( {8} , {9} , {10} , {11} , {12} ) 
_B._vuetify.showconfirm("confirm_delete","Confirm Delete","Are you sure you want to delete this user?","Yes","No");
// End Sub
};

// [45] Sub dialogbtn2_Click (e As BANanoEvent) 'IgnoreDeadCode 
this.dialogbtn2_click=function(_e) {
if (_B==null) _B=this;
// [46]  vuetify.ShowAlert( {13} , {14} , {15} ) 
_B._vuetify.showalert("Done Processing","All processing has been completed!","Yippie!");
// End Sub
};

// [49] Sub dialogbtn3_Click (e As BANanoEvent) 'IgnoreDeadCode 
this.dialogbtn3_click=function(_e) {
if (_B==null) _B=this;
// [51]  vuetify.ShowPrompt( {16} , {17} , {18} , {19} , {20} , {21} , {22} , {23} ) 
_B._vuetify.showprompt("dialog_age","User Age","Age","","Enter your age","47","Apply","Cancel");
// End Sub
};

// [54] Sub GetAge(svalue As String) 'IgnoreDeadCode 
this.getage=function(_svalue) {
if (_B==null) _B=this;
// [55]  If svalue = {24} Then 
if (_svalue=="") {
// [57]  vuetify.ShowSnackBarWarning( {25} ) 
_B._vuetify.showsnackbarwarning("There is no age entered!");
// [58]  Else 
} else {
// [60]  vuetify.ShowSnackBarSuccess( {26} & svalue & {27} ) 
_B._vuetify.showsnackbarsuccess("Thank you "+_svalue+" entered!");
// [61]  End If 
}
// End Sub
};

this.vdialogs=function(Par) {
u(Par).empty();
_B._vdialogs=BANC( banano_bananovuetifyad3_vueelement,_B, "vdialogs", "vdialogs",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "3","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "2","Rules": "","Shaped": false,"ShowGridDesign": true,"SingleLine": false,"Sizes": "12,4,4,4","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.dialogbutton1=function(Par) {
u(Par).empty();
_B._dialogbtn1=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogbtn1", "dialogbtn1",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "fab=true;large=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "cyan","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._dialogicon1=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogicon1", "dialogicon1",u('#dialogbtn1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-pencil","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.dialogbutton2=function(Par) {
u(Par).empty();
_B._dialogbtn2=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogbtn2", "dialogbtn2",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "fab=true;large=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "green","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._dialogicon2=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogicon2", "dialogicon2",u('#dialogbtn2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-android","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.dialogbutton3=function(Par) {
u(Par).empty();
_B._dialogbtn3=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogbtn3", "dialogbtn3",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "fab=true;large=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "pink","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": true,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._dialogicon3=BANC( banano_bananovuetifyad3_vueelement,_B, "dialogicon3", "dialogicon3",u('#dialogbtn3'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-cloud-upload","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewGrid =========================== */
function banano_part23_viewgrid() {
var _B;
this._grids= new banano_bananovuetifyad3_vuecomponent();

this._name="grids";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

// [12] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _txt1,_txt2,_btn;
// [14]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [16]  grids.Initialize(Me, name) 
_B._grids.initialize(_B,_B._name);
// [18]  path = grids.path 
_B._path=_B._grids._path;
// [20]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.vgrid(_B._vuetify._placeholdername);
// [22]  Dim txt1 As BANanoElement 
_txt1=null;
// [23]  txt1 = BVAD3.NewTextField(grids, {2} , {3} , {4} , {5} , False, {6} , 20, {7} , Null) 
_txt1=_banano_part23_bvad3.newtextfield(_B._grids,"txt1","firstname","First Name","First Name",false,"",20,"Enter a first name",null);
// [25]  vgrid.Matrix(1, 1).Append(txt1.GetHTML) 
_B._vgrid.matrix(1,1).append(_txt1.html());
// [27]  Dim txt2 As BANanoElement 
_txt2=null;
// [28]  txt2 = BVAD3.NewTextField(grids, {8} , {9} , {10} , {11} , False, {12} , 20, {13} , Null) 
_txt2=_banano_part23_bvad3.newtextfield(_B._grids,"txt2","lastname","Last Name","Last Name",false,"",20,"Enter a last name",null);
// [30]  vgrid.Matrix(1, 2).Append(txt1.GetHTML) 
_B._vgrid.matrix(1,2).append(_txt1.html());
// [32]  Dim btn As BANanoElement 
_btn=null;
// [33]  btn = BVAD3.NewButton(grids, {14} , {15} , vuetify.COLOR_GREEN, True, Null) 
_btn=_banano_part23_bvad3.newbutton(_B._grids,"btnOk","Apply",_B._vuetify._color_green,true,null);
// [35]  vgrid.Matrix(1,3).Append(btn.GetHTML) 
_B._vgrid.matrix(1,3).append(_btn.html());
// [37]  grids.AppendPlaceHolder 
_B._grids.appendplaceholder();
// [38]  vuetify.AddRoute(grids) 
_B._vuetify.addroute(_B._grids);
// End Sub
};

// [41] Sub btnOK_click(e As BANanoElement) 
this.btnok_click=function(_e) {
if (_B==null) _B=this;
var _ln,_fn;
// [43]  Dim ln As String = grids.GetData( {16} ) 
_ln=_B._grids.getdata("lastname");
// [44]  Dim fn As String = grids.GetData( {17} ) 
_fn=_B._grids.getdata("firstname");
// [46]  vuetify.ShowSnackBarError(fn & {18} & ln) 
_B._vuetify.showsnackbarerror(_fn+"-"+_ln);
// End Sub
};

this.vgrid=function(Par) {
u(Par).empty();
_B._vgrid=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid", "vgrid",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "3","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "1","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=12;m=4;l=4;x=4","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewGrid2 =========================== */
function banano_part23_viewgrid2() {
var _B;
this._grids2= new banano_bananovuetifyad3_vuecomponent();

this._name="grids2";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._vgrid= new banano_bananovuetifyad3_vueelement();

// [12] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [14]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [16]  grids2.Initialize(Me, name) 
_B._grids2.initialize(_B,_B._name);
// [18]  path = grids2.path 
_B._path=_B._grids2._path;
// [20]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.vgrid2(_B._vuetify._placeholdername);
// [22]  grids2.AppendPlaceHolder 
_B._grids2.appendplaceholder();
// [23]  vuetify.AddRoute(grids2) 
_B._vuetify.addroute(_B._grids2);
// End Sub
};

this.vgrid2=function(Par) {
u(Par).empty();
_B._vgrid2=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2", "vgrid2",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "none","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": false,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r1=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r1", "vgrid2r1",u('#vgrid2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "amber","BorderRadius": "","BorderStyle": "dotted","BorderWidth": "1px","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "amber","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": false,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-row","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r1c1=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r1c1", "vgrid2r1c1",u('#vgrid2r1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r1c2=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r1c2", "vgrid2r1c2",u('#vgrid2r1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r1c3=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r1c3", "vgrid2r1c3",u('#vgrid2r1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement1=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement1", "vueelement1",u('#vgrid2r1c1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "amber","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100"});
_B._vueelement2=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement2", "vueelement2",u('#vgrid2r1c2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "black","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100"});
_B._vueelement3=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement3", "vueelement3",u('#vgrid2r1c3'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "blue","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100"});
_B._vgrid2r2=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r2", "vgrid2r2",u('#vgrid2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "black","BorderRadius": "","BorderStyle": "dashed","BorderWidth": "2px","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "black","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": false,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-row","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r2c1=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r2c1", "vgrid2r2c1",u('#vgrid2r2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=12;m=2;l=2;x=2","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vgrid2r2c2=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r2c2", "vgrid2r2c2",u('#vgrid2r2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=12;m=8;l=8;x=8","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement6=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement6", "vueelement6",u('#vgrid2r2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=12;m=2;l=2;x=2","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement4=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement4", "vueelement4",u('#vgrid2r2c1'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "2","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "indigo","ColorIntensity": "accent-1","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
_B._vueelement5=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement5", "vueelement5",u('#vgrid2r2c2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "8","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "deep-orange","ColorIntensity": "lighten-5","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
_B._vueelement7=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement7", "vueelement7",u('#vueelement6'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "2","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "orange","ColorIntensity": "darken-4","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
_B._vgrid2r3=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r3", "vgrid2r3",u('#vgrid2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "blue","BorderRadius": "","BorderStyle": "ridge","BorderWidth": "2px","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "blue","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": false,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-row","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement8=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement8", "vueelement8",u('#vgrid2r3'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=12;m=12;l=12;x=12","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement9=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement9", "vueelement9",u('#vueelement8'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "12","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "indigo","ColorIntensity": "accent-1","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
_B._vgrid2r4=BANC( banano_bananovuetifyad3_vueelement,_B, "vgrid2r4", "vgrid2r4",u('#vgrid2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "blue","BorderRadius": "","BorderStyle": "ridge","BorderWidth": "2px","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "blue","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": false,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-row","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement12=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement12", "vueelement12",u('#vgrid2r4'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=-2;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=11;m=11;l=11;x=11","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement10=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement10", "vueelement10",u('#vgrid2r4'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=-4;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=1;m=1;l=1;x=1","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vueelement11=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement11", "vueelement11",u('#vueelement12'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "11","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "teal","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
_B._vueelement13=BANC( banano_bananovuetifyad3_vueelement,_B, "vueelement13", "vueelement13",u('#vueelement10'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": ":rounded=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Bold": false,"Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "1","Center": false,"Circle": false,"Classes": "","Clearable": false,"Color": "pink","ColorIntensity": "normal","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Elevation": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Float": "","Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "100%","Hidden": false,"HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Italic": false,"Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "a=?;x=?;y=?t=?;b=?;l=?;r=?","MaxHeight": "","MaxWidth": "","OffSets": "s=?;m=?;l=?;x=?","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "a=2;x=?;y=?t=?;b=?;l=?;r=?","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "","Rules": "","SetColorByAttribute": true,"Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "s=?;m=?;l=?;x=?","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-sheet","TextAlign": "","TextColor": "","TextColorIntensity": "normal","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": "100%"});
};

}
/* =========================== ViewHome =========================== */
function banano_part23_viewhome() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._home= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="home";

// [10] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [12]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [14]  home.Initialize(Me, name) 
_B._home.initialize(_B,_B._name);
// [16]  home.Path = {1} 
_B._home._path="/";
// [17]  path = home.path 
_B._path=_B._home._path;
// [19]  banano.LoadLayout(vuetify.PlaceHolderName, {2} ) 
this.vhome(_B._vuetify._placeholdername);
// [21]  home.AppendPlaceHolder 
_B._home.appendplaceholder();
// [23]  vuetify.AddRoute(home) 
_B._vuetify.addroute(_B._home);
// End Sub
};

this.vhome=function(Par) {
u(Par).empty();
_B._vhome=BANC( banano_bananovuetifyad3_vueelement,_B, "vhome", "vhome",u(Par), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "This is the home page","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "False","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "h1","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewQuestions =========================== */
function banano_part23_viewquestions() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._questions= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="questions";

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  questions.Initialize(Me, name) 
_B._questions.initialize(_B,_B._name);
// [16]  path = questions.path 
_B._path=_B._questions._path;
// [18]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vquestions(_B._vuetify._placeholdername);
// [20]  questions.AppendPlaceHolder 
_B._questions.appendplaceholder();
// [22]  vuetify.AddRoute(questions) 
_B._vuetify.addroute(_B._questions);
// End Sub
};

this.vquestions=function(Par) {
u(Par).empty();
_B._vquestions=BANC( banano_bananovuetifyad3_vueelement,_B, "vquestions", "vquestions",u(Par), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "The questions page","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "False","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "h1","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewSelects =========================== */
function banano_part23_viewselects() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._selects= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="selects";

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _sel1,_sel2,_sel3,_sel4,_sel,_items;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  selects.Initialize(Me, name) 
_B._selects.initialize(_B,_B._name);
// [16]  path = selects.path 
_B._path=_B._selects._path;
// [18]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vselects(_B._vuetify._placeholdername);
// [20]  Dim sel1 As BANanoElement = BVAD3.NewSelect(selects, {2} , {3} , {4} , False, False, {5} , {6} , {7} , {8} , False, {9} , Null) 
_sel1=_banano_part23_bvad3.newselect(_B._selects,"sel1","sel1selected","Select 1",false,false,"","listitems","","",false,"",null);
// [21]  vselects.Matrix(1, 1).Append(sel1.GetHTML) 
_B._vselects.matrix(1,1).append(_sel1.html());
// [23]  Dim sel2 As BANanoElement = BVAD3.NewSelect(selects, {10} , {11} , {12} , False, False, {13} , {14} , {15} , {16} , False, {17} , CreateMap( {18} :True)) 
_sel2=_banano_part23_bvad3.newselect(_B._selects,"sel2","sel2selected","Select 2",false,false,"","listitems","","",false,"",{":filled":true});
// [24]  vselects.Matrix(1, 2).Append(sel2.GetHTML) 
_B._vselects.matrix(1,2).append(_sel2.html());
// [26]  Dim sel3 As BANanoElement = BVAD3.NewSelect(selects, {19} , {20} , {21} , False, False, {22} , {23} , {24} , {25} , False, {26} , CreateMap( {27} :True)) 
_sel3=_banano_part23_bvad3.newselect(_B._selects,"sel3","sel3selected","Select 3",false,false,"","listitems","","",false,"Select 3",{":outlined":true});
// [27]  vselects.Matrix(1, 3).Append(sel3.GetHTML) 
_B._vselects.matrix(1,3).append(_sel3.html());
// [29]  Dim sel4 As BANanoElement = BVAD3.NewSelect(selects, {28} , {29} , {30} , False, True, {31} , {32} , {33} , {34} , False, {35} , CreateMap( {36} :True, {37} :True, {38} :True, {39} :True, {40} :True)) 
_sel4=_banano_part23_bvad3.newselect(_B._selects,"sel4","sel4selected","Select 4",false,true,"","listitems","","",false,"",{":rounded":true, ":outlined":true, ":chips":true, ":small-chips":true, ":deletable-chips":true});
// [32]  vselects.Matrix(1, 4).Append(sel4.GetHTML) 
_B._vselects.matrix(1,4).append(_sel4.html());
// [34]  selects.SetData( {41} , {42} ) 
_B._selects.setdata("sel2selected","Foo");
// [37]  Dim sel As List = selects.NewList 
_sel=_B._selects.newlist();
// [38]  sel.AddAll(Array( {43} , {44} )) 
_sel.splice(_sel.length,0,...["Foo","Buzz"]);
// [41]  selects.SetData( {45} , sel) 
_B._selects.setdata("sel4selected",_sel);
// [44]  Dim items As List = selects.NewList 
_items=_B._selects.newlist();
// [45]  items.AddAll(Array( {46} , {47} , {48} , {49} )) 
_items.splice(_items.length,0,...["Foo","Bar","Fizz","Buzz"]);
// [47]  selects.SetData( {50} , items) 
_B._selects.setdata("listitems",_items);
// [50]  selects.AppendPlaceHolder 
_B._selects.appendplaceholder();
// [52]  vuetify.AddRoute(selects) 
_B._vuetify.addroute(_B._selects);
// End Sub
};

// [57] Sub sel1_change(e As BANanoObject) 
this.sel1_change=function(_e) {
if (_B==null) _B=this;
var _selitem;
// [59]  Dim selItem As String = selects.GetData( {51} ) 
_selitem=_B._selects.getdata("sel1selected");
// [60]  vuetify.ShowSnackBarSuccess(selItem) 
_B._vuetify.showsnackbarsuccess(_selitem);
// End Sub
};

this.vselects=function(Par) {
u(Par).empty();
_B._vselects=BANC( banano_bananovuetifyad3_vueelement,_B, "vselects", "vselects",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "4","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Items": "","ItemText": "","ItemValue": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"OverwriteTag": "","PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","ReturnObject": false,"Rounded": false,"Rows": "5","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "12,3,3,3","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewTable =========================== */
function banano_part23_viewtable() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._tables= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="tables";

this._vetable1= new banano_bananovuetifyad3_vuetable();

// [15] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _users,_images;
// [17]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [19]  tables.Initialize(Me, name) 
_B._tables.initialize(_B,_B._name);
// [20]  path = tables.path 
_B._path=_B._tables._path;
// [22]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vtables(_B._vuetify._placeholdername);
// [23]  vtables.Matrix(1, 1).LoadLayout( {2} ) 
_B._vtables.matrix(1,1).BANll(this.vetable);
// [25]  vetable.AddColumn1( {3} , {4} , vetable.COLUMN_TEXT, 0, False, vetable.ALIGN_LEFT) 
_B._vetable.addcolumn1("name","Dessert (100g Serving",_B._vetable._column_text,0,false,_B._vetable._align_left);
// [26]  vetable.AddChip( {5} , {6} , {7} ) 
_B._vetable.addchip("calories","Calories","item.color");
// [27]  vetable.AddColumn( {8} , {9} ) 
_B._vetable.addcolumn("fat","Fat (g)");
// [28]  vetable.AddColumn( {10} , {11} ) 
_B._vetable.addcolumn("carbs","Carbs (g)");
// [29]  vetable.AddColumn( {12} , {13} ) 
_B._vetable.addcolumn("protein","Protein");
// [30]  vetable.AddColumn( {14} , {15} ) 
_B._vetable.addcolumn("iron","Iron (%)");
// [31]  vetable.AddAction( {16} , {17} , {18} ) 
_B._vetable.addaction("mashy","Mashy","mdi-vuetify");
// [32]  vetable.AddEdit 
_B._vetable.addedit();
// [33]  vetable.AddDelete 
_B._vetable.adddelete();
// [34]  vetable.AddClone 
_B._vetable.addclone();
// [35]  vetable.AddPrint 
_B._vetable.addprint();
// [36]  vetable.AddSave 
_B._vetable.addsave();
// [37]  vetable.AddCancel 
_B._vetable.addcancel();
// [38]  vetable.AddDownload 
_B._vetable.adddownload();
// [39]  vetable.AddMenuV 
_B._vetable.addmenuv();
// [40]  vetable.SetIconDimensions( {19} , {20} , vuetify.COLOR_GREEN) 
_B._vetable.seticondimensions("edit","",_B._vuetify._color_green);
// [41]  vetable.SetIconDimensions( {21} , {22} , vuetify.COLOR_RED) 
_B._vetable.seticondimensions("delete","",_B._vuetify._color_red);
// [42]  vetable.SetIconDimensions( {23} , {24} , vuetify.COLOR_AMBER) 
_B._vetable.seticondimensions("clone","",_B._vuetify._color_amber);
// [43]  vetable.SetIconDimensions( {25} , {26} , vuetify.COLOR_BLUE) 
_B._vetable.seticondimensions("print","",_B._vuetify._color_blue);
// [44]  vetable.SetIconDimensions( {27} , {28} , vuetify.COLOR_BLUEGREY) 
_B._vetable.seticondimensions("save","",_B._vuetify._color_bluegrey);
// [45]  vetable.SetIconDimensions( {29} , {30} , vuetify.COLOR_BROWN) 
_B._vetable.seticondimensions("cancel","",_B._vuetify._color_brown);
// [46]  vetable.SetIconDimensions( {31} , {32} , vuetify.COLOR_CYAN) 
_B._vetable.seticondimensions("download","",_B._vuetify._color_cyan);
// [47]  vetable.SetIconDimensions( {33} , {34} , vuetify.COLOR_INDIGO) 
_B._vetable.seticondimensions("menu","",_B._vuetify._color_indigo);
// [48]  vetable.SetIconDimensions( {35} , {36} , vuetify.COLOR_DEEPPURPLE) 
_B._vetable.seticondimensions("mashy","",_B._vuetify._color_deeppurple);
// [51]  vetable.AddRow(CreateMap( {37} : {38} , {39} : 159, {40} : {41} , {42} : 6.0, {43} : 24, {44} : 4.0, {45} : {46} )) 
_B._vetable.addrow({"name":"Frozen Yogurt", "calories":159, "color":"green", "fat":6.0, "carbs":24, "protein":4.0, "iron":"1%"});
// [52]  vetable.AddRow(CreateMap( {47} : {48} , {49} : 237, {50} : {51} , {52} : 9.0, {53} : 37, {54} : 4.3, {55} : {56} )) 
_B._vetable.addrow({"name":"Ice cream sandwich", "calories":237, "color":"orange", "fat":9.0, "carbs":37, "protein":4.3, "iron":"1%"});
// [53]  vetable.AddRow(CreateMap( {57} : {58} , {59} : 262, {60} : {61} , {62} : 16.0, {63} : 23, {64} : 6.0, {65} : {66} )) 
_B._vetable.addrow({"name":"Eclair", "calories":262, "color":"orange", "fat":16.0, "carbs":23, "protein":6.0, "iron":"7%"});
// [54]  vetable.AddRow(CreateMap( {67} : {68} , {69} : 305, {70} : {71} , {72} : 3.7, {73} : 67, {74} : 4.3, {75} : {76} )) 
_B._vetable.addrow({"name":"Cupcake", "calories":305, "color":"orange", "fat":3.7, "carbs":67, "protein":4.3, "iron":"8%"});
// [55]  vetable.AddRow(CreateMap( {77} : {78} , {79} : 356, {80} : {81} , {82} : 16.0, {83} : 49, {84} : 3.9, {85} : {86} )) 
_B._vetable.addrow({"name":"Gingerbread", "calories":356, "color":"orange", "fat":16.0, "carbs":49, "protein":3.9, "iron":"16%"});
// [62]  tables.BindVueTable(vetable) 
_B._tables.bindvuetable(_B._vetable);
// [65]  vtables.Matrix(2, 1).LoadLayout( {95} ) 
_B._vtables.matrix(2,1).BANll(this.dtusers);
// [67]  Dim users As List = vuetify.NewList 
_users=_B._vuetify.newlist();
// [68]  users.add(CreateMap( {96} : {97} , {98} : {99} , {100} : {101} , {102} : {103} , {104} :5, {105} :19, {106} :50)) 
_users.push({"avatar":"./assets/sponge.png", "firstname":"Anele", "lastname":"Mbanga", "active":"Yes", "rating":5, "tasks":19, "projects":50});
// [69]  users.add(CreateMap( {107} : {108} , {109} : {110} , {111} : {112} , {113} : {114} , {115} :5, {116} :9, {117} :10)) 
_users.push({"avatar":"./assets/1.jpg", "firstname":"Him", "lastname":"One", "active":"Yes", "rating":5, "tasks":9, "projects":10});
// [70]  users.add(CreateMap( {118} : {119} , {120} : {121} , {122} : {123} , {124} : {125} , {126} :4, {127} : 8, {128} :30)) 
_users.push({"avatar":"./assets/2.jpg", "firstname":"Him 2", "lastname":"One", "active":"No", "rating":4, "tasks":8, "projects":30});
// [71]  users.add(CreateMap( {129} : {130} , {131} : {132} , {133} : {134} , {135} : {136} , {137} :3, {138} : 5, {139} :50)) 
_users.push({"avatar":"./assets/3.jpg", "firstname":"Her ", "lastname":"One", "active":"Yes", "rating":3, "tasks":5, "projects":50});
// [72]  users.add(CreateMap( {140} : {141} , {142} : {143} , {144} : {145} , {146} : {147} , {148} :2, {149} : 3, {150} :20)) 
_users.push({"avatar":"./assets/4.jpg", "firstname":"Her 1", "lastname":"One", "active":"Yes", "rating":2, "tasks":3, "projects":20});
// [73]  users.add(CreateMap( {151} : {152} , {153} : {154} , {155} : {156} , {157} : {158} , {159} :1, {160} : 1, {161} :60)) 
_users.push({"avatar":"./assets/5.jpg", "firstname":"Her 2", "lastname":"One", "active":"No", "rating":1, "tasks":1, "projects":60});
// [75]  dtusers.AddAvatarImg( {162} , {163} ) 
_B._dtusers.addavatarimg("avatar","Profile");
// [76]  dtusers.AddColumn( {164} , {165} ) 
_B._dtusers.addcolumn("firstname","First Name");
// [77]  dtusers.AddColumn( {166} , {167} ) 
_B._dtusers.addcolumn("lastname","Last Name");
// [78]  dtusers.AddSwitch( {168} , {169} ) 
_B._dtusers.addswitch("active","Active");
// [79]  dtusers.AddRating( {170} , {171} ) 
_B._dtusers.addrating("rating","Performance");
// [80]  dtusers.AddProgressLinear( {172} , {173} ) 
_B._dtusers.addprogresslinear("projects","Projects");
// [81]  dtusers.SetProgressLinearDimensions( {174} , {175} , {176} , True) 
_B._dtusers.setprogresslineardimensions("projects","orange","25",true);
// [82]  dtusers.AddProgressCircular( {177} , {178} ) 
_B._dtusers.addprogresscircular("tasks","Completed");
// [83]  dtusers.SetProgressCircularDimensions( {179} , {180} , {181} , {182} , {183} ) 
_B._dtusers.setprogresscirculardimensions("tasks","green","-90","46","8");
// [85]  dtusers.AddEditThrash 
_B._dtusers.addeditthrash();
// [86]  dtusers.SetIconDimensions( {184} , {185} , {186} ) 
_B._dtusers.seticondimensions("edit","","success");
// [87]  dtusers.SetIconDimensions( {187} , {188} , {189} ) 
_B._dtusers.seticondimensions("delete","","error");
// [88]  dtusers.SetDataSource(users) 
_B._dtusers.setdatasource(_users);
// [89]  tables.BindVueTable(dtusers) 
_B._tables.bindvuetable(_B._dtusers);
// [93]  vtables.Matrix(3, 1).LoadLayout( {190} ) 
_B._vtables.matrix(3,1).BANll(this.dtimages);
// [97]  Dim images As List = vuetify.newlist 
_images=_B._vuetify.newlist();
// [98]  images.add(CreateMap( {191} : {192} , {193} : {194} , {195} : {196} , {197} : {198} , {199} : {200} , {201} : {202} , {203} : {204} , {205} : {206} )) 
_images.push({"image":"./assets/bird.jpg", "sendto":"mashy@gmail.com", "comment":"A bird seen from above", "lat":"16.0", "lng":"20.1", "datetaken":"1973-04-15", "icon":"mdi-account-reactivate", "color":"blue"});
// [99]  images.add(CreateMap( {207} : {208} , {209} : {210} , {211} : {212} , {213} : {214} , {215} : {216} , {217} : {218} , {219} : {220} , {221} : {222} )) 
_images.push({"image":"./assets/dark-beach.jpg", "sendto":"ozzie@gmail.com", "comment":"Seen whilst walking", "lat":"36.0", "lng":"24.8", "datetaken":"2003-02-27", "icon":"mdi-car-outline", "color":"green"});
// [100]  images.add(CreateMap( {223} : {224} , {225} : {226} , {227} : {228} , {229} : {230} , {231} : {232} , {233} : {234} , {235} : {236} , {237} : {238} )) 
_images.push({"image":"./assets/planet.jpg", "sendto":"orio@gmail.com", "comment":"A need to visit planets", "lat":"1.0", "lng":"1.1", "datetaken":"2009-04-01", "icon":"mdi-filmstrip", "color":"orange"});
// [101]  images.add(CreateMap( {239} : {240} , {241} : {242} , {243} : {244} , {245} : {246} , {247} : {248} , {249} : {250} , {251} : {252} , {253} : {254} )) 
_images.push({"image":"./assets/sky.jpg", "sendto":"ernesto@gmail.com", "comment":"A beautiful skyline", "lat":"0", "lng":"0", "datetaken":"2010-04-24", "icon":"mdi-share-all", "color":"indigo"});
// [102]  images.add(CreateMap( {255} : {256} , {257} : {258} , {259} : {260} , {261} : {262} , {263} : {264} , {265} : {266} , {267} : {268} , {269} : {270} )) 
_images.push({"image":"./assets/squirrel.jpg", "sendto":"tgifzone.inc@gmail.com", "comment":"Nutting around", "lat":"45", "lng":"30", "datetaken":"2010-09-02", "icon":"mdi-shield-cross", "color":"yellow"});
// [104]  dtimages.AddImage( {271} , {272} ) 
_B._dtimages.addimage("image","Image");
// [105]  dtimages.SetImageDimensions( {273} , {274} , {275} ) 
_B._dtimages.setimagedimensions("image","80px","80px");
// [106]  dtimages.AddLink( {276} , {277} , {278} ) 
_B._dtimages.addlink("sendto","Email To","_blank");
// [107]  dtimages.AddIconView( {279} , {280} , {281} ) 
_B._dtimages.addiconview("icon","Icon","item.color");
// [108]  dtimages.SetColumnPrefix( {282} , {283} ) 
_B._dtimages.setcolumnprefix("sendto","mailto:");
// [109]  dtimages.AddColumn( {284} , {285} ) 
_B._dtimages.addcolumn("comment","Comment");
// [110]  dtimages.AddColumn( {286} , {287} ) 
_B._dtimages.addcolumn("datetaken","Date Taken");
// [111]  dtimages.SetColumnType( {288} , dtimages.COLUMN_DATE) 
_B._dtimages.setcolumntype("datetaken",_B._dtimages._column_date);
// [112]  dtimages.SetColumnDateFormat( {289} , {290} ) 
_B._dtimages.setcolumndateformat("datetaken","ddd, DD MMM YYYY");
// [113]  dtimages.AddColumn( {291} , {292} ) 
_B._dtimages.addcolumn("lat","Latitude");
// [114]  dtimages.AddColumn( {293} , {294} ) 
_B._dtimages.addcolumn("lng","Longitude");
// [115]  dtimages.SetColumnNumberFormat( {295} , {296} ) 
_B._dtimages.setcolumnnumberformat("lat","0.00");
// [116]  dtimages.SetColumnNumberFormat( {297} , {298} ) 
_B._dtimages.setcolumnnumberformat("lng","0.00");
// [117]  dtimages.SetDataSource(images) 
_B._dtimages.setdatasource(_images);
// [118]  tables.BindVueTable(dtimages) 
_B._tables.bindvuetable(_B._dtimages);
// [141]  tables.AppendPlaceHolder 
_B._tables.appendplaceholder();
// [145]  vuetify.AddRoute(tables) 
_B._vuetify.addroute(_B._tables);
// End Sub
};

// [173] Sub vetable_mashy(item As Map) 
this.vetable_mashy=function(_item) {
if (_B==null) _B=this;
// [174]  vuetify.ShowSnackBar( {366} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Mashy tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [177] Sub vetable_Save (item As Map) 
this.vetable_save=function(_item) {
if (_B==null) _B=this;
// [178]  vuetify.ShowSnackBar( {367} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Save tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [181] Sub vetable_Edit (item As Map) 
this.vetable_edit=function(_item) {
if (_B==null) _B=this;
// [182]  vuetify.ShowSnackBar( {368} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Edit tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [185] Sub vetable_Delete (item As Map) 
this.vetable_delete=function(_item) {
if (_B==null) _B=this;
// [186]  vuetify.ShowSnackBar( {369} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Delete tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [189] Sub vetable_Print (item As Map) 
this.vetable_print=function(_item) {
if (_B==null) _B=this;
// [190]  vuetify.ShowSnackBar( {370} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Print tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [193] Sub vetable_Cancel (item As Map) 
this.vetable_cancel=function(_item) {
if (_B==null) _B=this;
// [194]  vuetify.ShowSnackBar( {371} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Cancel tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [197] Sub vetable_Change (item As Map) 
this.vetable_change=function(_item) {
if (_B==null) _B=this;
// [198]  vuetify.ShowSnackBar( {372} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Change tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [201] Sub vetable_Download (item As Map) 
this.vetable_download=function(_item) {
if (_B==null) _B=this;
// [202]  vuetify.ShowSnackBar( {373} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Download tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [205] Sub vetable_Menu (item As Map) 
this.vetable_menu=function(_item) {
if (_B==null) _B=this;
// [206]  vuetify.ShowSnackBar( {374} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Menu tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [209] Sub vetable_Clone (item As Map) 
this.vetable_clone=function(_item) {
if (_B==null) _B=this;
// [210]  vuetify.ShowSnackBar( {375} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Clone tapped!"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [213] Sub dtusers_Edit (item As Map) 
this.dtusers_edit=function(_item) {
if (_B==null) _B=this;
// [214]  vuetify.ShowSnackBar( {376} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Users Edit: "+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [218] Sub dtusers_Delete (item As Map) 
this.dtusers_delete=function(_item) {
if (_B==null) _B=this;
// [219]  vuetify.ShowSnackBar( {377} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Users Delete:"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

// [222] Sub dtusers_Change (item As Map) 
this.dtusers_change=function(_item) {
if (_B==null) _B=this;
// [223]  vuetify.ShowSnackBar( {378} & CRLF & CRLF & banano.ToJson(item)) 
_B._vuetify.showsnackbar("Users Change:"+"\n"+"\n"+JSON.stringify(_item));
// End Sub
};

this.vtables=function(Par) {
u(Par).empty();
_B._vtables=BANC( banano_bananovuetifyad3_vueelement,_B, "vtables", "vtables",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "1","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "10","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "12,12,12,12","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vetable=function(Par) {
u(Par).empty();
_B._vetable=BANC( banano_bananovuetifyad3_vuetable,_B, "vetable", "vetable",u(Par), {"Attributes": "","AutoID": false,"Classes": "","Dense": false,"Elevation": "2","GroupBy": "","HasCancel": true,"HasClone": true,"HasDelete": true,"HasDownload": true,"HasEdit": true,"HasMenu": true,"HasPrint": true,"HasSave": true,"ItemKey": "name","ItemsPerPage": "5","OnRowClick": "","Ref": "","ShowGroupBy": false,"ShowSelect": false,"SingleSelect": false,"States": "","Style": "","VElse": "","VElseIf": "","VIf": "","VShow": ""});
};

this.dtusers=function(Par) {
u(Par).empty();
_B._dtusers=BANC( banano_bananovuetifyad3_vuetable,_B, "dtusers", "dtusers",u(Par), {"Attributes": "","AutoID": false,"Classes": "","Dense": false,"Elevation": "2","GroupBy": "","HasCancel": true,"HasClone": true,"HasDelete": true,"HasDownload": true,"HasEdit": true,"HasMenu": true,"HasPrint": true,"HasSave": true,"ItemKey": "avatar","ItemsPerPage": "5","OnRowClick": "","Ref": "","ShowGroupBy": false,"ShowSelect": false,"SingleSelect": false,"States": "","Style": "","VElse": "","VElseIf": "","VIf": "","VShow": ""});
};

this.dtimages=function(Par) {
u(Par).empty();
_B._dtimages=BANC( banano_bananovuetifyad3_vuetable,_B, "dtimages", "dtimages",u(Par), {"Attributes": "","AutoID": false,"Classes": "","Dense": false,"Elevation": "2","GroupBy": "","HasCancel": true,"HasClone": true,"HasDelete": true,"HasDownload": true,"HasEdit": true,"HasMenu": true,"HasPrint": true,"HasSave": true,"ItemKey": "image","ItemsPerPage": "5","OnRowClick": "","Ref": "","ShowGroupBy": false,"ShowSelect": false,"SingleSelect": false,"States": "","Style": "","VElse": "","VElseIf": "","VIf": "","VShow": ""});
};

}
/* =========================== ViewTextFields =========================== */
function banano_part23_viewtextfields() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._textfields= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="textfields";

// [20] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _txtusername1,_txtpassword1,_txtsearch;
// [22]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [24]  textfields.Initialize(Me, name) 
_B._textfields.initialize(_B,_B._name);
// [25]  path = textfields.path 
_B._path=_B._textfields._path;
// [27]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vtextfieldcontainer(_B._vuetify._placeholdername);
// [29]  vtextfieldcontainer.Matrix(1, 1).LoadLayout( {2} ) 
_B._vtextfieldcontainer.matrix(1,1).BANll(this.txtfirstname);
// [30]  txtFirstName.NewTextField( {3} , {4} , {5} , {6} , True, {7} , 0, {8} , Null) 
_B._txtfirstname.newtextfield("txtfirstname","firstname","First Name","",true,"",0,"Enter first name",null);
// [31]  txtFirstName.Filled = True 
_B._txtfirstname.setfilled(true);
// [32]  textfields.BindVueElement(txtFirstName) 
_B._textfields.bindvueelement(_B._txtfirstname);
// [34]  vtextfieldcontainer.Matrix(1, 2).LoadLayout( {9} ) 
_B._vtextfieldcontainer.matrix(1,2).BANll(this.txtlastname);
// [35]  txtlastname.NewTextField( {10} , {11} , {12} , {13} , True, {14} , 0, {15} , Null) 
_B._txtlastname.newtextfield("txtlastname","lastname","Last Name","",true,"",0,"Enter last name",null);
// [36]  txtlastname.Solo = True 
_B._txtlastname.setsolo(true);
// [37]  textfields.BindVueElement(txtlastname) 
_B._textfields.bindvueelement(_B._txtlastname);
// [39]  vtextfieldcontainer.Matrix(1, 3).LoadLayout( {16} ) 
_B._vtextfieldcontainer.matrix(1,3).BANll(this.txtcity);
// [40]  txtcity.NewTextField( {17} , {18} , {19} , {20} , True, {21} , 0, {22} , Null) 
_B._txtcity.newtextfield("txtcity","city","City","",true,"",0,"Enter city",null);
// [41]  txtcity.Outlined = True 
_B._txtcity.setoutlined(true);
// [42]  textfields.BindVueElement(txtcity) 
_B._textfields.bindvueelement(_B._txtcity);
// [44]  vtextfieldcontainer.Matrix(1, 4).LoadLayout( {23} ) 
_B._vtextfieldcontainer.matrix(1,4).BANll(this.txtstreet);
// [45]  txtstreet.NewTextField( {24} , {25} , {26} , {27} , True, {28} , 0, {29} , Null) 
_B._txtstreet.newtextfield("txtstreet","street","Street","",true,"",0,"",null);
// [46]  txtstreet.Dense = True 
_B._txtstreet.setdense(true);
// [47]  txtstreet.Solo = True 
_B._txtstreet.setsolo(true);
// [48]  textfields.BindVueElement(txtstreet) 
_B._textfields.bindvueelement(_B._txtstreet);
// [50]  vtextfieldcontainer.Matrix(2, 1).LoadLayout( {30} ) 
_B._vtextfieldcontainer.matrix(2,1).BANll(this.txtusername);
// [51]  txtusername.NewTextField( {31} , {32} , {33} , {34} , True, {35} , 0, {36} , Null) 
_B._txtusername.newtextfield("txtusername","username","Username","",true,"",0,"",null);
// [52]  txtusername.Ref = {37} 
_B._txtusername.setref("username");
// [53]  txtusername.Rounded = True 
_B._txtusername.setrounded(true);
// [54]  txtusername.Outlined = True 
_B._txtusername.setoutlined(true);
// [55]  txtusername.Clearable = True 
_B._txtusername.setclearable(true);
// [56]  txtusername.PrependInnerIcon = {38} 
_B._txtusername.setprependinnericon("mdi-account");
// [57]  textfields.BindVueElement(txtusername) 
_B._textfields.bindvueelement(_B._txtusername);
// [59]  vtextfieldcontainer.Matrix(2, 2).LoadLayout( {39} ) 
_B._vtextfieldcontainer.matrix(2,2).BANll(this.txtpassword);
// [60]  txtpassword.NewTextField( {40} , {41} , {42} , {43} , True, {44} , 0, {45} , Null) 
_B._txtpassword.newtextfield("txtpassword","password","Password","",true,"",0,"",null);
// [61]  txtpassword.SetTypePassword 
_B._txtpassword.settypepassword();
// [62]  txtpassword.Rounded = True 
_B._txtpassword.setrounded(true);
// [63]  txtpassword.Outlined = True 
_B._txtpassword.setoutlined(true);
// [64]  txtpassword.Clearable = True 
_B._txtpassword.setclearable(true);
// [65]  txtpassword.PrependInnerIcon = {46} 
_B._txtpassword.setprependinnericon("mdi-lock-open-outline");
// [66]  textfields.BindVueElement(txtpassword) 
_B._textfields.bindvueelement(_B._txtpassword);
// [68]  vtextfieldcontainer.Matrix(2, 3).LoadLayout( {47} ) 
_B._vtextfieldcontainer.matrix(2,3).BANll(this.txtshaped);
// [69]  txtshaped.NewTextField( {48} , {49} , {50} , {51} , True, {52} , 0, {53} , Null) 
_B._txtshaped.newtextfield("txtshaped","shaped","Shaped","",true,"",0,"",null);
// [70]  txtshaped.Outlined = True 
_B._txtshaped.setoutlined(true);
// [71]  txtshaped.Shaped = True 
_B._txtshaped.setshaped(true);
// [72]  txtshaped.Clearable = True 
_B._txtshaped.setclearable(true);
// [73]  textfields.BindVueElement(txtshaped) 
_B._textfields.bindvueelement(_B._txtshaped);
// [75]  vtextfieldcontainer.Matrix(2, 4).LoadLayout( {54} ) 
_B._vtextfieldcontainer.matrix(2,4).BANll(this.txtlocation);
// [76]  txtlocation.NewTextField( {55} , {56} , {57} , {58} , True, {59} , 0, {60} , Null) 
_B._txtlocation.newtextfield("txtlocation","location","Location","",true,"",0,"",null);
// [77]  txtlocation.Outlined = True 
_B._txtlocation.setoutlined(true);
// [78]  txtlocation.AppendIcon = {61} 
_B._txtlocation.setappendicon("mdi-map-marker");
// [79]  txtlocation.PrependIcon = {62} 
_B._txtlocation.setprependicon("mdi-map-marker-off");
// [80]  txtlocation.AppendOuterIcon = {63} 
_B._txtlocation.setappendoutericon("mdi-lock-reset");
// [81]  textfields.BindVueElement(txtlocation) 
_B._textfields.bindvueelement(_B._txtlocation);
// [83]  vtextfieldcontainer.Matrix(3, 1).LoadLayout( {64} ) 
_B._vtextfieldcontainer.matrix(3,1).BANll(this.vbtngettexts);
// [84]  textfields.BindVueElement(vbtngettexts) 
_B._textfields.bindvueelement(_B._vbtngettexts);
// [87]  Dim txtusername1 As BANanoElement = BVAD3.NewTextField(textfields, {65} , {66} , {67} , {68} , True, {69} , 0, {70} , CreateMap( {71} :True)) 
_txtusername1=_banano_part23_bvad3.newtextfield(_B._textfields,"txtUserName1","username","User Name","",true,"mdi-account-circle",0,"",{":dense":true});
// [88]  vtextfieldcontainer.Matrix(4, 1).Append(txtusername1.GetHTML) 
_B._vtextfieldcontainer.matrix(4,1).append(_txtusername1.html());
// [90]  Dim txtpassword1 As BANanoElement = BVAD3.NewPassword(textfields, {72} , {73} , {74} , {75} , True, {76} , 10, {77} , Null) 
_txtpassword1=_banano_part23_bvad3.newpassword(_B._textfields,"txtPassword1","pwd","Password","",true,"mdi-lock",10,"",null);
// [91]  vtextfieldcontainer.Matrix(4, 2).Append(txtpassword1.GetHTML) 
_B._vtextfieldcontainer.matrix(4,2).append(_txtpassword1.html());
// [93]  Dim txtsearch As BANanoElement = BVAD3.NewTextField(textfields, {78} , {79} , {80} , {81} , False, {82} , 0, {83} , CreateMap( {84} : {85} , {86} :True, {87} :True)) 
_txtsearch=_banano_part23_bvad3.newtextfield(_B._textfields,"txtsearch","search","Search","",false,"",0,"",{"append-icon":"mdi-magnify", ":single-line":true, ":hide-details":true});
// [94]  vtextfieldcontainer.Matrix(4, 3).Append(txtsearch.GetHTML) 
_B._vtextfieldcontainer.matrix(4,3).append(_txtsearch.html());
// [98]  textfields.AppendPlaceHolder 
_B._textfields.appendplaceholder();
// [101]  vuetify.AddRoute(textfields) 
_B._vuetify.addroute(_B._textfields);
// End Sub
};

// [104] Sub vbtngettexts_Click (e As BANanoEvent) 
this.vbtngettexts_click=function(_e) {
if (_B==null) _B=this;
var _sfirstname,_slastname,_scity,_sstreet,_m;
// [106]  Dim sfirstname As String = textfields.GetData( {88} ) 
_sfirstname=_B._textfields.getdata("firstname");
// [107]  Dim slastname As String = textfields.GetData( {89} ) 
_slastname=_B._textfields.getdata("lastname");
// [108]  Dim scity As String = textfields.GetData( {90} ) 
_scity=_B._textfields.getdata("city");
// [109]  Dim sstreet As String = textfields.GetData( {91} ) 
_sstreet=_B._textfields.getdata("street");
// [111]  Dim m As Map = CreateMap() 
_m={};
// [112]  m.Put( {92} , sfirstname) 
_m["firstname"]=_sfirstname;
// [113]  m.Put( {93} , slastname) 
_m["lastname"]=_slastname;
// [114]  m.Put( {94} , scity) 
_m["city"]=_scity;
// [115]  m.Put( {95} , sstreet) 
_m["street"]=_sstreet;
// [116]  vuetify.ShowSnackBarSecondary(banano.ToJson(m)) 
_B._vuetify.showsnackbarsecondary(JSON.stringify(_m));
// End Sub
};

// [119] Sub txtlocation_ClickAppend (e As BANanoEvent) 
this.txtlocation_clickappend=function(_e) {
if (_B==null) _B=this;
// [120]  vuetify.ShowSnackBarSuccess( {96} ) 
_B._vuetify.showsnackbarsuccess("location click append");
// End Sub
};

// [123] Sub txtlocation_ClickAppendOuter (e As BANanoEvent) 
this.txtlocation_clickappendouter=function(_e) {
if (_B==null) _B=this;
// [124]  vuetify.ShowSnackBarSuccess( {97} ) 
_B._vuetify.showsnackbarsuccess("location click append outer");
// End Sub
};

// [127] Sub txtlocation_ClickPrepend (e As BANanoEvent) 
this.txtlocation_clickprepend=function(_e) {
if (_B==null) _B=this;
// [128]  vuetify.ShowSnackBarSuccess( {98} ) 
_B._vuetify.showsnackbarsuccess("location click prepend");
// End Sub
};

// [131] Sub txtlocation_ClickPrependInner (e As BANanoEvent) 
this.txtlocation_clickprependinner=function(_e) {
if (_B==null) _B=this;
// [132]  vuetify.ShowSnackBarSuccess( {99} ) 
_B._vuetify.showsnackbarsuccess("location click prepend inner");
// End Sub
};

this.vtextfieldcontainer=function(Par) {
u(Par).empty();
_B._vtextfieldcontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "vtextfieldcontainer", "vtextfieldcontainer",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "4","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "5","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "12,3,3,3","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtfirstname=function(Par) {
u(Par).empty();
_B._txtfirstname=BANC( banano_bananovuetifyad3_vueelement,_B, "txtfirstname", "txtfirstname",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtlastname=function(Par) {
u(Par).empty();
_B._txtlastname=BANC( banano_bananovuetifyad3_vueelement,_B, "txtlastname", "txtlastname",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtcity=function(Par) {
u(Par).empty();
_B._txtcity=BANC( banano_bananovuetifyad3_vueelement,_B, "txtcity", "txtcity",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtstreet=function(Par) {
u(Par).empty();
_B._txtstreet=BANC( banano_bananovuetifyad3_vueelement,_B, "txtstreet", "txtstreet",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtusername=function(Par) {
u(Par).empty();
_B._txtusername=BANC( banano_bananovuetifyad3_vueelement,_B, "txtusername", "txtusername",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtpassword=function(Par) {
u(Par).empty();
_B._txtpassword=BANC( banano_bananovuetifyad3_vueelement,_B, "txtpassword", "txtpassword",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtshaped=function(Par) {
u(Par).empty();
_B._txtshaped=BANC( banano_bananovuetifyad3_vueelement,_B, "txtshaped", "txtshaped",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.txtlocation=function(Par) {
u(Par).empty();
_B._txtlocation=BANC( banano_bananovuetifyad3_vueelement,_B, "txtlocation", "txtlocation",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vbtngettexts=function(Par) {
u(Par).empty();
_B._vbtngettexts=BANC( banano_bananovuetifyad3_vueelement,_B, "vbtngettexts", "vbtngettexts",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Get Text Fields","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewUsers =========================== */
function banano_part23_viewusers() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._users= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="users";

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  users.Initialize(Me, name) 
_B._users.initialize(_B,_B._name);
// [16]  path = users.path 
_B._path=_B._users._path;
// [18]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vusers(_B._vuetify._placeholdername);
// [20]  users.AppendPlaceHolder 
_B._users.appendplaceholder();
// [22]  vuetify.AddRoute(users) 
_B._vuetify.addroute(_B._users);
// End Sub
};

this.vusers=function(Par) {
u(Par).empty();
_B._vusers=BANC( banano_bananovuetifyad3_vueelement,_B, "vusers", "vusers",u(Par), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "The users page","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "False","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "h1","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== pgIndex =========================== */
function banano_part23_pgindex() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._appsnackbar= new banano_bananovuetifyad3_vueelement();

// [30] Sub Init 
this.init=function() {
if (_B==null) _B=this;
var _links;
// [32]  vuetify.Initialize(Me) 
_B._vuetify.initialize(_B);
// [34]  AddRouters 
_B.addrouters(_B);
// [38]  Dim links As List = vuetify.NewList 
_links=_B._vuetify.newlist();
// [39]  links.Add(CreateMap( {2} : {3} , {4} : {5} , {6} : {7} )) 
_links.push({"icon":"mdi-view-dashboard", "title":"Home", "to":"/"});
// [40]  links.Add(CreateMap( {8} : {9} , {10} : {11} , {12} : {13} )) 
_links.push({"icon":"mdi-account", "title":"Users", "to":"/users"});
// [41]  links.Add(CreateMap( {14} : {15} , {16} : {17} , {18} : {19} )) 
_links.push({"icon":"mdi-note", "title":"Questions", "to":"/questions"});
// [42]  links.Add(CreateMap( {20} : {21} , {22} : {23} , {24} : {25} )) 
_links.push({"icon":"mdi-cog", "title":"Alert", "to":"/alerts"});
// [43]  links.Add(CreateMap( {26} : {27} , {28} : {29} , {30} : {31} )) 
_links.push({"icon":"mdi-cog", "title":"Avatars", "to":"/avatars"});
// [44]  links.Add(CreateMap( {32} : {33} , {34} : {35} , {36} : ViewBadges.path)) 
_links.push({"icon":"mdi-cog", "title":"Badges", "to":_banano_part23_viewbadges._path});
// [45]  links.Add(CreateMap( {37} : {38} , {39} : {40} , {41} : ViewButtons.path)) 
_links.push({"icon":"mdi-cog", "title":"Buttons", "to":_banano_part23_viewbuttons._path});
// [46]  links.Add(CreateMap( {42} : {43} , {44} : {45} , {46} : {47} )) 
_links.push({"icon":"mdi-cog", "title":"Dialogs", "to":"/dialogs"});
// [47]  links.Add(CreateMap( {48} : {49} , {50} : {51} , {52} : ViewDatePicker.path)) 
_links.push({"icon":"mdi-cog", "title":"Date Picker", "to":_banano_part23_viewdatepicker._path});
// [48]  links.Add(CreateMap( {53} : {54} , {55} : {56} , {57} : ViewTextFields.path)) 
_links.push({"icon":"mdi-cog", "title":"Text Fields", "to":_banano_part23_viewtextfields._path});
// [49]  links.Add(CreateMap( {58} : {59} , {60} : {61} , {62} : ViewTable.path)) 
_links.push({"icon":"mdi-cog", "title":"Tables", "to":_banano_part23_viewtable._path});
// [50]  links.Add(CreateMap( {63} : {64} , {65} : {66} , {67} : ViewSelects.path)) 
_links.push({"icon":"mdi-cog", "title":"Selects", "to":_banano_part23_viewselects._path});
// [51]  links.Add(CreateMap( {68} : {69} , {70} : {71} , {72} : ViewGrid.path)) 
_links.push({"icon":"mdi-cog", "title":"Grids", "to":_banano_part23_viewgrid._path});
// [52]  links.Add(CreateMap( {73} : {74} , {75} : {76} , {77} : ViewGrid2.path)) 
_links.push({"icon":"mdi-cog", "title":"Grids 2", "to":_banano_part23_viewgrid2._path});
// [56]  vuetify.SetData( {78} , links) 
_B._vuetify.setdata("links",_links);
// [58]  BANano.LoadLayout(vuetify.apptemplatename, {79} ) 
this.vbaseline(_B._vuetify._apptemplatename);
// [60]  BANano.LoadLayout(vuetify.PlaceHolderName, {80} ) 
this.appdialog(_B._vuetify._placeholdername);
// [62]  vuetify.BindVueElement(appdialogcancel) 
_B._vuetify.bindvueelement(_B._appdialogcancel);
// [63]  vuetify.BindVueElement(appdialogok) 
_B._vuetify.bindvueelement(_B._appdialogok);
// [64]  vuetify.BindVueElement(appsnackbar) 
_B._vuetify.bindvueelement(_B._appsnackbar);
// [66]  vuetify.SnackBarInitialize 
_B._vuetify.snackbarinitialize();
// [68]  vuetify.DialogInitialize 
_B._vuetify.dialoginitialize();
// [70]  vapp.AppendPlaceHolder 
_B._vapp.appendplaceholder();
// [73]  BANano.LoadLayout(vuetify.PlaceHolderName, {81} ) 
this.vbuttonmenu(_B._vuetify._placeholdername);
// [75]  menulistitem.vfor = {82} 
_B._menulistitem.setvfor("item in links");
// [76]  menulistitem.Key = {83} 
_B._menulistitem.setkey(":item.title");
// [77]  menulistitem.To = {84} 
_B._menulistitem.setto(":item.to");
// [78]  menulistitem.ActiveClass = {85} 
_B._menulistitem.setactiveclass("border");
// [79]  menulistitemtitle.Caption = {86} 
_B._menulistitemtitle.setcaption("{{ item.title }}");
// [82]  vappbar.AppendPlaceHolder 
_B._vappbar.appendplaceholder();
// [84]  BANano.LoadLayout(vuetify.PlaceHolderName, {87} ) 
this.vbuttoniconright(_B._vuetify._placeholdername);
// [85]  vappbar.AppendPlaceholder 
_B._vappbar.appendplaceholder();
// [88]  vuetify.BindVueElement(vappdrawer) 
_B._vuetify.bindvueelement(_B._vappdrawer);
// [90]  vuetify.BindVueElement(vappbarnavicon) 
_B._vuetify.bindvueelement(_B._vappbarnavicon);
// [93]  BANano.LoadLayout(vuetify.PlaceHolderName, {88} ) 
this.vdrawerprofile(_B._vuetify._placeholdername);
// [94]  vappdrawer.AppendPlaceHolder 
_B._vappdrawer.appendplaceholder();
// [97]  BANano.LoadLayout(vuetify.PlaceHolderName, {89} ) 
this.vdrawerlisticontitle(_B._vuetify._placeholdername);
// [99]  vdrawerlistitem.VFor = {90} 
_B._vdrawerlistitem.setvfor("item in links");
// [100]  vdrawerlistitem.Key = {91} 
_B._vdrawerlistitem.setkey(":item.title");
// [101]  vdrawerlistitem.To = {92} 
_B._vdrawerlistitem.setto(":item.to");
// [102]  vdrawerlistitem.ActiveClass = {93} 
_B._vdrawerlistitem.setactiveclass("border");
// [103]  vdrawerlistitemactionicon.VText = {94} 
_B._vdrawerlistitemactionicon.setvtext("item.icon");
// [104]  vdrawerlistitemactionicon.Classes = {95} 
_B._vdrawerlistitemactionicon.setclasses("white--text");
// [105]  vdrawerlistitemtitle.VText = {96} 
_B._vdrawerlistitemtitle.setvtext("item.title");
// [106]  vdrawerlistitemtitle.Classes = {97} 
_B._vdrawerlistitemtitle.setclasses("white--text");
// [108]  vuetify.BindVueElement(vdrawerlistitem) 
_B._vuetify.bindvueelement(_B._vdrawerlistitem);
// [109]  vuetify.BindVueElement(vdrawerlistitemactionicon) 
_B._vuetify.bindvueelement(_B._vdrawerlistitemactionicon);
// [110]  vuetify.BindVueElement(vdrawerlistitemtitle) 
_B._vuetify.bindvueelement(_B._vdrawerlistitemtitle);
// [112]  vappdrawer.AppendPlaceHolder 
_B._vappdrawer.appendplaceholder();
// [114]  vuetify.Serve 
_B._vuetify.serve();
// End Sub
};

// [118] Sub AddRouters 
this.addrouters=function() {
if (_B==null) _B=this;
// [119]  ViewHome.Initialize 
_banano_part23_viewhome.initialize();
// [120]  ViewAbout.Initialize 
_banano_part23_viewabout.initialize();
// [121]  ViewUsers.Initialize 
_banano_part23_viewusers.initialize();
// [122]  ViewQuestions.Initialize 
_banano_part23_viewquestions.initialize();
// [123]  ViewAvatars.Initialize 
_banano_part23_viewavatars.initialize();
// [124]  ViewAlert.Initialize 
_banano_part23_viewalert.initialize();
// [125]  ViewDialog.Initialize 
_banano_part23_viewdialog.initialize();
// [126]  ViewTextFields.Initialize 
_banano_part23_viewtextfields.initialize();
// [127]  ViewBadges.Initialize 
_banano_part23_viewbadges.initialize();
// [128]  ViewDatePicker.Initialize 
_banano_part23_viewdatepicker.initialize();
// [129]  ViewButtons.Initialize 
_banano_part23_viewbuttons.initialize();
// [130]  ViewTable.Initialize 
_banano_part23_viewtable.initialize();
// [131]  ViewSelects.Initialize 
_banano_part23_viewselects.initialize();
// [132]  ViewGrid.Initialize 
_banano_part23_viewgrid.initialize();
// [133]  ViewGrid2.Initialize 
_banano_part23_viewgrid2.initialize();
// End Sub
};

// [136] Sub vappbarnavicon_ClickStop (e As BANanoEvent) 
this.vappbarnavicon_clickstop=function(_e) {
if (_B==null) _B=this;
// [138]  vuetify.Toggle( {98} ) 
_B._vuetify.toggle("appdrawer");
// End Sub
};

// [141] Sub appdialogok_Click (e As BANanoEvent) 
this.appdialogok_click=function(_e) {
if (_B==null) _B=this;
var _sconfirm,_svalue;
// [143]  vuetify.HideDialog 
_B._vuetify.hidedialog();
// [145]  Dim sconfirm As String = vuetify.Confirm 
_sconfirm=_B._vuetify.getconfirm();
// [147]  Select Case sconfirm 
switch ("" + _sconfirm) {
// [148]  Case {99} 
case "" + "alert":
// [149]  Case {100} 
break;
case "" + "dialog_age":
// [151]  Dim svalue As String = vuetify.GetPromptValue 
_svalue=_B._vuetify.getpromptvalue();
// [153]  BANano.CallSub(ViewDialog, {101} , Array(svalue)) 
(function() {if (typeof _banano_part23_viewdialog[("GetAge").toLowerCase()]==="function") {var CSr = _banano_part23_viewdialog[("GetAge").toLowerCase()](_svalue,_B);if(CSr!=null) {return CSr}}})();
// [154]  Case Else 
break;
default:
// [155]  vuetify.ShowSnackBarSuccess(sconfirm & {102} ) 
_B._vuetify.showsnackbarsuccess(_sconfirm+"-ok");
// [156]  End Select 
break;
}
// End Sub
};

// [159] Sub appdialogcancel_Click (e As BANanoEvent) 
this.appdialogcancel_click=function(_e) {
if (_B==null) _B=this;
var _sconfirm;
// [160]  vuetify.HideDialog 
_B._vuetify.hidedialog();
// [161]  Dim sconfirm As String = vuetify.Confirm 
_sconfirm=_B._vuetify.getconfirm();
// [162]  vuetify.ShowSnackBarError(sconfirm & {103} ) 
_B._vuetify.showsnackbarerror(_sconfirm+"-cancel");
// End Sub
};

this.vbaseline=function(Par) {
u(Par).empty();
_B._vapp=BANC( banano_bananovuetifyad3_vueelement,_B, "vapp", "vapp",u(Par), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-app","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vappbar=BANC( banano_bananovuetifyad3_vueelement,_B, "vappbar", "vappbar",u('#vapp'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "app=true","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "./assets/background.jpg","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-app-bar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vappbarnavicon=BANC( banano_bananovuetifyad3_vueelement,_B, "vappbarnavicon", "vappbarnavicon",u('#vappbar'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "white--text","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-app-bar-nav-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vtoolbartitle=BANC( banano_bananovuetifyad3_vueelement,_B, "vtoolbartitle", "vtoolbartitle",u('#vappbar'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "BANanoVuetifyAD3","Classes": "white--text","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-toolbar-title","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vspacer=BANC( banano_bananovuetifyad3_vueelement,_B, "vspacer", "vspacer",u('#vappbar'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-spacer","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._btnhome=BANC( banano_bananovuetifyad3_vueelement,_B, "btnhome", "btnhome",u('#vappbar'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Home","Classes": "ma-2","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "/","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._btnabout=BANC( banano_bananovuetifyad3_vueelement,_B, "btnabout", "btnabout",u('#vappbar'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "About","Classes": "ma-2","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "/about","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vappdrawer=BANC( banano_bananovuetifyad3_vueelement,_B, "vappdrawer", "vappdrawer",u('#vapp'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "app=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "./assets/background.jpg","States": "appdrawer=true","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-navigation-drawer","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "appdrawer","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vmain=BANC( banano_bananovuetifyad3_vueelement,_B, "vmain", "vmain",u('#vapp'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-main","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vcontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "vcontainer", "vcontainer",u('#vmain'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vrouterview=BANC( banano_bananovuetifyad3_vueelement,_B, "vrouterview", "vrouterview",u('#vcontainer'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "router-view","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vappsnackbar=BANC( banano_bananovuetifyad3_vueelement,_B, "vappsnackbar", "vappsnackbar",u('#vapp'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "app=true;:right=appsnackright;:top=appsnacktop;:color=appsnackcolor;:bottom=appsnackbottom;:centered=appsnackcentered;:outlined=appsnackoutlined;:left=appsnackleft;:shaped=appsnackshaped;:rounded=appsnackrounded","Autofocus": false,"AutoID": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "{{ appsnackmessage }}","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"Margin": "","MarginAXYTBLR": "||||||","MarginBottom": "","MarginLeft": "","MarginRight": "","MarginTop": "","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"Padding": "","PaddingAXYTBLR": "||||||","PaddingBottom": "","PaddingLeft": "","PaddingRight": "","PaddingTop": "","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "appsnackmessage=Lorem Ipsum;appsnackshow=false;appsnackright=true;appsnacktop=true;appsnackcolor=success;appsnackbottom=false;appsnackcentered=false;appsnackoutlined=false;appsnackleft=false;appsnackshaped=true;appsnackrounded=false","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-snackbar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "appsnackshow","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.appdialog=function(Par) {
u(Par).empty();
_B._appdialog=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialog", "appdialog",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "persistent=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "dialogshow=false","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-dialog","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "dialogshow","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ":dialogwidth"});
_B._appdialogcard=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogcard", "appdialogcard",u('#appdialog'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogtitle=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogtitle", "appdialogtitle",u('#appdialogcard'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "{{ dialogtitle }}","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-title","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogtext=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogtext", "appdialogtext",u('#appdialogcard'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "{{ dialogmessage }}","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-text","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appprompt=BANC( banano_bananovuetifyad3_vueelement,_B, "appprompt", "appprompt",u('#appdialogtext'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "persistent-hint=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": ":appprompthint","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": ":apppromptlabel","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": ":apppromptplaceholder","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "apppromptlabel=Prompt;apppromptplaceholder=;appprompthint=;apppromptvalue=;apppromptshow=false","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-text-field","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "apppromptshow","VModel": "apppromptvalue","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogdivider=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogdivider", "appdialogdivider",u('#appdialogcard'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "mx-2","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-divider","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogactions=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogactions", "appdialogactions",u('#appdialogcard'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-card-actions","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogspacer=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogspacer", "appdialogspacer",u('#appdialogactions'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-spacer","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogcancel=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogcancel", "appdialogcancel",u('#appdialogactions'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "{{ dialogcanceltitle }}","Classes": "mx-2","Clearable": false,"Color": "error","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "dialogcancelshow","VSlotActivator": "","VText": "","Width": ""});
_B._appdialogok=BANC( banano_bananovuetifyad3_vueelement,_B, "appdialogok", "appdialogok",u('#appdialogactions'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "{{ dialogoktitle }}","Classes": "mx-2","Clearable": false,"Color": "success","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "dialogokshow","VSlotActivator": "","VText": "","Width": ""});
};

this.vbuttonmenu=function(Par) {
u(Par).empty();
_B._vmenu=BANC( banano_bananovuetifyad3_vueelement,_B, "vmenu", "vmenu",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "offset-y=true;transition=slide-x-transition","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-menu","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menutemplate=BANC( banano_bananovuetifyad3_vueelement,_B, "menutemplate", "menutemplate",u('#vmenu'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-template","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "{ on, attrs }","VText": "","Width": ""});
_B._menubutton=BANC( banano_bananovuetifyad3_vueelement,_B, "menubutton", "menubutton",u('#menutemplate'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "ma-2","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "attrs","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "on","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menuicon=BANC( banano_bananovuetifyad3_vueelement,_B, "menuicon", "menuicon",u('#menubutton'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "left=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-arrow-down","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menutext=BANC( banano_bananovuetifyad3_vueelement,_B, "menutext", "menutext",u('#menubutton'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Menu","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menulist=BANC( banano_bananovuetifyad3_vueelement,_B, "menulist", "menulist",u('#vmenu'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menulistitem=BANC( banano_bananovuetifyad3_vueelement,_B, "menulistitem", "menulistitem",u('#menulist'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._menulistitemtitle=BANC( banano_bananovuetifyad3_vueelement,_B, "menulistitemtitle", "menulistitemtitle",u('#menulistitem'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item-title","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vbuttoniconright=function(Par) {
u(Par).empty();
_B._vbtnright=BANC( banano_bananovuetifyad3_vueelement,_B, "vbtnright", "vbtnright",u(Par), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "ma-2","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "/login","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vspanleft=BANC( banano_bananovuetifyad3_vueelement,_B, "vspanleft", "vspanleft",u('#vbtnright'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Logout","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._viconright=BANC( banano_bananovuetifyad3_vueelement,_B, "viconright", "viconright",u('#vbtnright'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "right=true","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-logout","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vdrawerprofile=function(Par) {
u(Par).empty();
_B._vprofilecontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "vprofilecontainer", "vprofilecontainer",u(Par), {"ActiveClass": "","Align": "none","AlignCenter": true,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "none","JustifyCenter": true,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "center","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vprofilerow=BANC( banano_bananovuetifyad3_vueelement,_B, "vprofilerow", "vprofilerow",u('#vprofilecontainer'), {"ActiveClass": "","Align": "none","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-row","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vprofilecol=BANC( banano_bananovuetifyad3_vueelement,_B, "vprofilecol", "vprofilecol",u('#vprofilerow'), {"ActiveClass": "","Align": false,"AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "mt-5","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": false,"JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-col","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vprofileavatar=BANC( banano_bananovuetifyad3_vueelement,_B, "vprofileavatar", "vprofileavatar",u('#vprofilecol'), {"ActiveClass": "","Align": false,"AlignCenter": false,"AppendIcon": "","Attributes": "size=100","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": false,"JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vprofileimage=BANC( banano_bananovuetifyad3_vueelement,_B, "vprofileimage", "vprofileimage",u('#vprofileavatar'), {"ActiveClass": "","Align": false,"AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": false,"JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "./assets/sponge.png","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-img","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vparagraph=BANC( banano_bananovuetifyad3_vueelement,_B, "vparagraph", "vparagraph",u('#vprofilecol'), {"ActiveClass": "","Align": false,"AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Admin","Classes": "white--text subheading mt-1 text-center","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": false,"JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "p","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vdrawerlisticontitle=function(Par) {
u(Par).empty();
_B._vdrawerlist=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlist", "vdrawerlist",u(Par), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vdrawerlistitem=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlistitem", "vdrawerlistitem",u('#vdrawerlist'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vdrawerlistitemaction=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlistitemaction", "vdrawerlistitemaction",u('#vdrawerlistitem'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item-action","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vdrawerlistitemcontent=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlistitemcontent", "vdrawerlistitemcontent",u('#vdrawerlistitem'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item-content","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vdrawerlistitemactionicon=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlistitemactionicon", "vdrawerlistitemactionicon",u('#vdrawerlistitemaction'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vdrawerlistitemtitle=BANC( banano_bananovuetifyad3_vueelement,_B, "vdrawerlistitemtitle", "vdrawerlistitemtitle",u('#vdrawerlistitemcontent'), {"ActiveClass": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": false,"States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-list-item-title","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== Tooltip =========================== */
function banano_part23_tooltip() {
var _B;
this._name="tool-tip";

this._tt= new banano_bananovuetifyad3_vuecomponent();

// [9] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [11]  TT.Initialize(Me, name) 
_B._tt.initialize(_B,_B._name);
// [13]  TT.AddProperty1( {1} , TT.jsString, Null, True) 
_B._tt.addproperty1("text",_B._tt._jsstring,null,true);
// [14]  TT.AddProperty1( {2} , TT.jsBoolean, True, Null) 
_B._tt.addproperty1("top",_B._tt._jsboolean,true,null);
// [15]  TT.AddProperty1( {3} , TT.jsBoolean, False, Null) 
_B._tt.addproperty1("bottom",_B._tt._jsboolean,false,null);
// [16]  TT.AddProperty1( {4} , TT.jsBoolean, False, Null) 
_B._tt.addproperty1("left",_B._tt._jsboolean,false,null);
// [17]  TT.AddProperty1( {5} , TT.jsBoolean, False, Null) 
_B._tt.addproperty1("right",_B._tt._jsboolean,false,null);
// [19]  banano.LoadLayout(TT.PlaceHolderName, {6} ) 
this.vtooltipcomponent(_B._tt._placeholdername);
// [21]  TT.AppendPlaceHolder 
_B._tt.appendplaceholder();
// [22]  Log(TT.Template) 
console.log(_B._tt._template);
// End Sub
};

this.vtooltipcomponent=function(Par) {
u(Par).empty();
_B._vtooltipcomponent=BANC( banano_bananovuetifyad3_vueelement,_B, "vtooltipcomponent", "vtooltipcomponent",u(Par), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": ":top=top;:bottom=bottom;:left=left;:right=right","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-tooltip","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vtooltiptemplate=BANC( banano_bananovuetifyad3_vueelement,_B, "vtooltiptemplate", "vtooltiptemplate",u('#vtooltipcomponent'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-template","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "{ on, attrs }","VText": "","Width": ""});
_B._vtooltipspan=BANC( banano_bananovuetifyad3_vueelement,_B, "vtooltipspan", "vtooltipspan",u('#vtooltiptemplate'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "attrs","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "on","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vtooltipslot=BANC( banano_bananovuetifyad3_vueelement,_B, "vtooltipslot", "vtooltipslot",u('#vtooltipspan'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-slot","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vtooltiptext=BANC( banano_bananovuetifyad3_vueelement,_B, "vtooltiptext", "vtooltiptext",u('#vtooltipcomponent'), {"ActiveClass": "","Align": "False","AlignCenter": false,"Alt": "","AppendIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "text","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewAbout =========================== */
function banano_part23_viewabout() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._about= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="about";

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  about.Initialize(Me, name) 
_B._about.initialize(_B,_B._name);
// [16]  path = about.path 
_B._path=_B._about._path;
// [18]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vabout(_B._vuetify._placeholdername);
// [20]  about.AppendPlaceHolder 
_B._about.appendplaceholder();
// [22]  vuetify.AddRoute(about) 
_B._vuetify.addroute(_B._about);
// End Sub
};

this.vabout=function(Par) {
u(Par).empty();
_B._vabout=BANC( banano_bananovuetifyad3_vueelement,_B, "vabout", "vabout",u(Par), {"ActiveClass": "","Align": "False","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "This is the about page","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "False","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "h1","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewAlert =========================== */
function banano_part23_viewalert() {
var _B;
this._alerts= new banano_bananovuetifyad3_vuecomponent();

this._name="alerts";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

// [16] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [18]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [20]  alerts.Initialize(Me, name) 
_B._alerts.initialize(_B,_B._name);
// [22]  path = alerts.path 
_B._path=_B._alerts._path;
// [24]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.valertcontainer(_B._vuetify._placeholdername);
// [26]  alerts.BindVueElement(valertcontainer) 
_B._alerts.bindvueelement(_B._valertcontainer);
// [28]  valertcontainer.Matrix(1, 1).LoadLayout( {2} ) 
_B._valertcontainer.matrix(1,1).BANll(this.valert);
// [29]  alerts.BindVueElement(valert) 
_B._alerts.bindvueelement(_B._valert);
// [31]  valertcontainer.Matrix(1, 2).LoadLayout( {3} ) 
_B._valertcontainer.matrix(1,2).BANll(this.valert1);
// [32]  alerts.BindVueElement(valert1) 
_B._alerts.bindvueelement(_B._valert1);
// [34]  valertcontainer.Matrix(2, 1).LoadLayout( {4} ) 
_B._valertcontainer.matrix(2,1).BANll(this.valert2);
// [35]  alerts.BindVueElement(valert2) 
_B._alerts.bindvueelement(_B._valert2);
// [37]  valertcontainer.Matrix(3, 1).LoadLayout( {5} ) 
_B._valertcontainer.matrix(3,1).BANll(this.vbuttontogglealert);
// [39]  alerts.BindVueElement(vbuttontogglesuccess) 
_B._alerts.bindvueelement(_B._vbuttontogglesuccess);
// [41]  alerts.SetData( {6} , True) 
_B._alerts.setdata("valert2show",true);
// [43]  alerts.AppendPlaceHolder 
_B._alerts.appendplaceholder();
// [44]  vuetify.AddRoute(alerts) 
_B._vuetify.addroute(_B._alerts);
// End Sub
};

// [48] Sub vbuttontogglesuccess_Click (e As BANanoEvent) 
this.vbuttontogglesuccess_click=function(_e) {
if (_B==null) _B=this;
// [49]  alerts.Toggle( {7} ) 
_B._alerts.toggle("valert2show");
// End Sub
};

this.valertcontainer=function(Par) {
u(Par).empty();
_B._valertcontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "valertcontainer", "valertcontainer",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "2","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "0,0,0,0","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "3","Rules": "","Shaped": false,"ShowGridDesign": true,"SingleLine": false,"Sizes": "12,6,6,6","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.valert=function(Par) {
u(Par).empty();
_B._valert=BANC( banano_bananovuetifyad3_vueelement,_B, "valert", "valert",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "border=top;color=red lighten-2","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": true,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-alert","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.valert1=function(Par) {
u(Par).empty();
_B._valert1=BANC( banano_bananovuetifyad3_vueelement,_B, "valert1", "valert1",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "border=left;colored-border=true;color=deep-purple accent-4;elevation=2","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "none","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": true,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-alert","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.valert2=function(Par) {
u(Par).empty();
_B._valert2=BANC( banano_bananovuetifyad3_vueelement,_B, "valert2", "valert2",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "dismissible=true;shaped=true","Autofocus": false,"BackgroundColor": "","BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "I am a success!","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "success","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","SlotActivator": "","Solo": false,"Src": "","States": "valert2show=true","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-alert","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "valert2show","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vbuttontogglealert=function(Par) {
u(Par).empty();
_B._vbuttontogglesuccess=BANC( banano_bananovuetifyad3_vueelement,_B, "vbuttontogglesuccess", "vbuttontogglesuccess",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Toggle Success Alert","Classes": "","Clearable": false,"Color": "deep-purple","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": true,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewAvatars =========================== */
function banano_part23_viewavatars() {
var _B;
this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

this._avatars= new banano_bananovuetifyad3_vuecomponent();

this._path="";

this._name="avatars";

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  avatars.Initialize(Me, name) 
_B._avatars.initialize(_B,_B._name);
// [16]  path = avatars.path 
_B._path=_B._avatars._path;
// [18]  banano.LoadLayout(vuetify.PlaceHolderName, {1} ) 
this.vavatars(_B._vuetify._placeholdername);
// [20]  vavatars.Matrix(1, 1).LoadLayout( {2} ) 
_B._vavatars.matrix(1,1).BANll(this.avatar1);
// [21]  vavatars.Matrix(1, 2).LoadLayout( {3} ) 
_B._vavatars.matrix(1,2).BANll(this.avatar2);
// [22]  vavatars.Matrix(1, 3).LoadLayout( {4} ) 
_B._vavatars.matrix(1,3).BANll(this.avatar3);
// [25]  avatars.AppendPlaceHolder 
_B._avatars.appendplaceholder();
// [27]  vuetify.AddRoute(avatars) 
_B._vuetify.addroute(_B._avatars);
// End Sub
};

this.vavatars=function(Par) {
u(Par).empty();
_B._vavatars=BANC( banano_bananovuetifyad3_vueelement,_B, "vavatars", "vavatars",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "3","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "0,0,0,0","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "1","Rules": "","Shaped": false,"ShowGridDesign": true,"SingleLine": false,"Sizes": "12,4,4,4","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.avatar1=function(Par) {
u(Par).empty();
_B._avatar1=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar1", "avatar1",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "size=36","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "indigo","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._avatar1span=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar1span", "avatar1span",u('#avatar1'), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "36","Classes": "white--text headline","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "span","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.avatar2=function(Par) {
u(Par).empty();
_B._avatar2=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar2", "avatar2",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "indigo","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._avatar2icon=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar2icon", "avatar2icon",u('#avatar2'), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-account-circle","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": true,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.avatar3=function(Par) {
u(Par).empty();
_B._avatar3=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar3", "avatar3",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._avatar3img=BANC( banano_bananovuetifyad3_vueelement,_B, "avatar3img", "avatar3img",u('#avatar3'), {"ActiveClass": "","Align": "","AlignCenter": false,"AppendIcon": "","Attributes": "alt=John","Autofocus": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","Readonly": "","Ref": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "https://cdn.vuetifyjs.com/images/john.jpg","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "img","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewBadges =========================== */
function banano_part23_viewbadges() {
var _B;
this._badges= new banano_bananovuetifyad3_vuecomponent();

this._name="badges";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

// [18] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _ib1,_ib2;
// [20]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [22]  badges.Initialize(Me, name) 
_B._badges.initialize(_B,_B._name);
// [24]  path = badges.path 
_B._path=_B._badges._path;
// [26]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.vbadges(_B._vuetify._placeholdername);
// [28]  vbadges.Matrix(1, 1).LoadLayout( {2} ) 
_B._vbadges.matrix(1,1).BANll(this.btnincreasebadge);
// [29]  vbadges.Matrix(1, 2).LoadLayout( {3} ) 
_B._vbadges.matrix(1,2).BANll(this.btndecreasebadge);
// [30]  vbadges.Matrix(1, 3).LoadLayout( {4} ) 
_B._vbadges.matrix(1,3).BANll(this.vbadgeicon);
// [32]  vbadges.Matrix(2, 1).LoadLayout( {5} ) 
_B._vbadges.matrix(2,1).BANll(this.vbadgeavatar);
// [34]  btnIncreaseBadge.Color = {6} 
_B._btnincreasebadge.setcolor("green");
// [35]  btndecreasebadge.Color = {7} 
_B._btndecreasebadge.setcolor("red");
// [37]  badges.BindVueElement(btnIncreaseBadge) 
_B._badges.bindvueelement(_B._btnincreasebadge);
// [38]  badges.BindVueElement(btndecreasebadge) 
_B._badges.bindvueelement(_B._btndecreasebadge);
// [39]  badges.BindVueElement(vbadge) 
_B._badges.bindvueelement(_B._vbadge);
// [41]  Dim ib1 As BANanoElement = BVAD3.NewIconBadge(badges, {8} , {9} , {10} , CreateMap( {11} : {12} , {13} :True), CreateMap( {14} :True)) 
_ib1=_banano_part23_bvad3.newiconbadge(_B._badges,"ib1","messages","mdi-vuetify",{"color":"purple", ":large":true},{":overlap":true});
// [42]  vbadges.Matrix(2, 2).Append(ib1.GetHTML) 
_B._vbadges.matrix(2,2).append(_ib1.html());
// [44]  Dim ib2 As BANanoElement = BVAD3.NewAvatarBadge(badges, {15} , {16} , {17} , 50, Null, Null) 
_ib2=_banano_part23_bvad3.newavatarbadge(_B._badges,"ib2","warning","./assets/sponge.png",50,null,null);
// [45]  vbadges.Matrix(2, 3).Append(ib2.GetHTML) 
_B._vbadges.matrix(2,3).append(_ib2.html());
// [48]  badges.AppendPlaceHolder 
_B._badges.appendplaceholder();
// [49]  vuetify.AddRoute(badges) 
_B._vuetify.addroute(_B._badges);
// End Sub
};

// [53] Sub btndecreasebadge_Click (e As BANanoEvent) 'ignoredeadcode 
this.btndecreasebadge_click=function(_e) {
if (_B==null) _B=this;
// [54]  badges.Decrement( {18} ) 
_B._badges.decrement("messages");
// [55]  DetectColor 
_B.detectcolor(_B);
// End Sub
};

// [58] Sub btnIncreaseBadge_Click (e As BANanoEvent) 'ignoredeadcode 
this.btnincreasebadge_click=function(_e) {
if (_B==null) _B=this;
// [59]  badges.Increment( {19} ) 
_B._badges.increment("messages");
// [60]  DetectColor 
_B.detectcolor(_B);
// End Sub
};

// [63] Sub DetectColor 'ignoredeadcode 
this.detectcolor=function() {
if (_B==null) _B=this;
var _m;
// [64]  Dim m As Int = badges.getdata( {20} ) 
_m=_B._badges.getdata("messages");
// [65]  m = BANano.parseInt(m) 
_m=parseInt(_m);
// [66]  If m < 0 Then 
if (_m<0) {
// [67]  badges.SetData( {21} , {22} ) 
_B._badges.setdata("badgecolor","red");
// [68]  Else 
} else {
// [69]  badges.SetData( {23} , {24} ) 
_B._badges.setdata("badgecolor","green");
// [70]  End If 
}
// End Sub
};

this.vbadges=function(Par) {
u(Par).empty();
_B._vbadges=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadges", "vbadges",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "3","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "5","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "12,4,4,4","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.btnincreasebadge=function(Par) {
u(Par).empty();
_B._btnincreasebadge=BANC( banano_bananovuetifyad3_vueelement,_B, "btnincreasebadge", "btnincreasebadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Increase Badge","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.btndecreasebadge=function(Par) {
u(Par).empty();
_B._btndecreasebadge=BANC( banano_bananovuetifyad3_vueelement,_B, "btndecreasebadge", "btndecreasebadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "Decrease Badge","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-btn","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vbadgeicon=function(Par) {
u(Par).empty();
_B._vbadge=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadge", "vbadge",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "overlap=true;:content=messages;:value=messages;:color=badgecolor","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "messages=0;badgecolor=green","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vbadgeicon=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadgeicon", "vbadgeicon",u('#vbadge'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "large=true","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "mdi-vuetify","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-icon","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

this.vbadgeavatar=function(Par) {
u(Par).empty();
_B._vbadgeavatar=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadgeavatar", "vbadgeavatar",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "bordered=true;bottom=true;color=deep-purple accent-4;dot=true;offset-x=10;offset-y=10","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-badge","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vbadgeavatar2=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadgeavatar2", "vbadgeavatar2",u('#vbadgeavatar'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "size=40","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-avatar","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
_B._vbadgeavatarimg=BANC( banano_bananovuetifyad3_vueelement,_B, "vbadgeavatarimg", "vbadgeavatarimg",u('#vbadgeavatar2'), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": false,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "|||","Slot": "","Solo": false,"Src": "https://cdn.vuetifyjs.com/images/lists/2.jpg","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-img","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewButtons =========================== */
function banano_part23_viewbuttons() {
var _B;
this._buttons= new banano_bananovuetifyad3_vuecomponent();

this._name="buttons";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _btn1,_btn2,_btn3,_btn4,_btn5,_btn6,_btn7,_btn8,_btn9,_btn10,_btn11,_btn12,_btn13,_btn14,_btn15,_btn16;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  buttons.Initialize(Me, name) 
_B._buttons.initialize(_B,_B._name);
// [17]  path = buttons.path 
_B._path=_B._buttons._path;
// [19]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.vbuttoncontainer(_B._vuetify._placeholdername);
// [21]  buttons.BindVueElement(vbuttoncontainer) 
_B._buttons.bindvueelement(_B._vbuttoncontainer);
// [23]  Dim btn1 As BANanoElement = BVAD3.NewFab(buttons, {2} , {3} , {4} , False, CreateMap( {5} :True), Null) 
_btn1=_banano_part23_bvad3.newfab(_B._buttons,"btn1","mdi-minus","primary",false,{"x-small":true},null);
// [24]  vbuttoncontainer.matrix(1, 1).Append(btn1.GetHTML) 
_B._vbuttoncontainer.matrix(1,1).append(_btn1.html());
// [26]  Dim btn2 As BANanoElement = BVAD3.NewFab(buttons, {6} , {7} , {8} , False, CreateMap( {9} :True), Null) 
_btn2=_banano_part23_bvad3.newfab(_B._buttons,"btn2","mdi-heart","pink",false,{"small":true},null);
// [27]  vbuttoncontainer.matrix(1, 2).Append(btn2.GetHTML) 
_B._vbuttoncontainer.matrix(1,2).append(_btn2.html());
// [29]  Dim btn3 As BANanoElement = BVAD3.NewFab(buttons, {10} , {11} , {12} , False, Null, Null) 
_btn3=_banano_part23_bvad3.newfab(_B._buttons,"btn3","mdi-plus","indigo",false,null,null);
// [30]  vbuttoncontainer.matrix(1, 3).Append(btn3.GetHTML) 
_B._vbuttoncontainer.matrix(1,3).append(_btn3.html());
// [32]  Dim btn4 As BANanoElement = BVAD3.NewFab(buttons, {13} , {14} , {15} , False, Null, Null) 
_btn4=_banano_part23_bvad3.newfab(_B._buttons,"btn4","mdi-format-list-bulleted-square","teal",false,null,null);
// [33]  vbuttoncontainer.matrix(1, 4).Append(btn4.GetHTML) 
_B._vbuttoncontainer.matrix(1,4).append(_btn4.html());
// [35]  Dim btn5 As BANanoElement = BVAD3.NewFab(buttons, {16} , {17} , {18} , False, CreateMap( {19} :True), Null) 
_btn5=_banano_part23_bvad3.newfab(_B._buttons,"btn5","mdi-pencil","cyan",false,{"large":true},null);
// [36]  vbuttoncontainer.matrix(1, 5).Append(btn5.GetHTML) 
_B._vbuttoncontainer.matrix(1,5).append(_btn5.html());
// [38]  Dim btn6 As BANanoElement = BVAD3.NewFab(buttons, {20} , {21} , {22} , True, CreateMap( {23} :True), Null) 
_btn6=_banano_part23_bvad3.newfab(_B._buttons,"btn6","mdi-android","purple",true,{"large":true},null);
// [39]  vbuttoncontainer.matrix(1, 6).Append(btn6.GetHTML) 
_B._vbuttoncontainer.matrix(1,6).append(_btn6.html());
// [41]  Dim btn7 As BANanoElement = BVAD3.NewButtonIconRight(buttons, {24} , {25} , {26} , {27} , False, Null,Null) 
_btn7=_banano_part23_bvad3.newbuttoniconright(_B._buttons,"btn7","Remove","mdi-minus","primary",false,null,null);
// [42]  vbuttoncontainer.matrix(2, 1).Append(btn7.GetHTML) 
_B._vbuttoncontainer.matrix(2,1).append(_btn7.html());
// [44]  Dim btn8 As BANanoElement = BVAD3.NewButtonIconRight(buttons, {28} , {29} , {30} , {31} , False, CreateMap( {32} :True), Null) 
_btn8=_banano_part23_bvad3.newbuttoniconright(_B._buttons,"btn8","Love","mdi-heart","pink",false,{"large":true},null);
// [45]  vbuttoncontainer.matrix(2, 2).Append(btn8.GetHTML) 
_B._vbuttoncontainer.matrix(2,2).append(_btn8.html());
// [47]  Dim btn9 As BANanoElement = BVAD3.NewButtonIconRight(buttons, {33} , {34} , {35} , {36} , True, Null, Null) 
_btn9=_banano_part23_bvad3.newbuttoniconright(_B._buttons,"btn9","Add","mdi-plus","indigo",true,null,null);
// [48]  vbuttoncontainer.matrix(2, 3).Append(btn9.GetHTML) 
_B._vbuttoncontainer.matrix(2,3).append(_btn9.html());
// [50]  Dim btn10 As BANanoElement = BVAD3.NewButtonIconLeft(buttons, {37} , {38} , {39} , {40} , False, CreateMap( {41} :True), Null) 
_btn10=_banano_part23_bvad3.newbuttoniconleft(_B._buttons,"btn10","Love","mdi-heart","pink",false,{"large":true},null);
// [51]  vbuttoncontainer.matrix(2, 4).Append(btn10.GetHTML) 
_B._vbuttoncontainer.matrix(2,4).append(_btn10.html());
// [53]  Dim btn11 As BANanoElement = BVAD3.NewButtonIconLeft(buttons, {42} , {43} , {44} , {45} , True, Null, Null) 
_btn11=_banano_part23_bvad3.newbuttoniconleft(_B._buttons,"btn11","Add","mdi-plus","indigo",true,null,null);
// [54]  vbuttoncontainer.matrix(2, 5).Append(btn11.GetHTML) 
_B._vbuttoncontainer.matrix(2,5).append(_btn11.html());
// [56]  Dim btn12 As BANanoElement = BVAD3.NewButton(buttons, {46} , {47} , {48} , False, CreateMap( {49} :True)) 
_btn12=_banano_part23_bvad3.newbutton(_B._buttons,"btn12","Rounded","primary",false,{"rounded":true});
// [57]  vbuttoncontainer.matrix(2, 6).Append(btn12.GetHTML) 
_B._vbuttoncontainer.matrix(2,6).append(_btn12.html());
// [59]  Dim btn13 As BANanoElement = BVAD3.NewButton(buttons, {50} , {51} , {52} , False, Null) 
_btn13=_banano_part23_bvad3.newbutton(_B._buttons,"btn13","Information","info",false,null);
// [60]  vbuttoncontainer.matrix(3, 1).Append(btn13.GetHTML) 
_B._vbuttoncontainer.matrix(3,1).append(_btn13.html());
// [62]  Dim btn14 As BANanoElement = BVAD3.NewButtonBadge(buttons, {53} , {54} , CreateMap( {55} : {56} , {57} : {58} , {59} :True), CreateMap( {60} :True, {61} : {62} , {63} : {64} , {65} :True)) 
_btn14=_banano_part23_bvad3.newbuttonbadge(_B._buttons,"btn14","Lock Account",{"class":"white--text", "color":"error", ":depressed":true},{":bordered":true, "color":"error", "icon":"mdi-lock", ":overlap":true});
// [65]  vbuttoncontainer.matrix(3, 2).Append(btn14.GetHTML) 
_B._vbuttoncontainer.matrix(3,2).append(_btn14.html());
// [67]  Dim btn15 As BANanoElement = BVAD3.NewButtonBadge(buttons, {66} , {67} , CreateMap( {68} : {69} , {70} : {71} ), CreateMap( {72} :True, {73} : {74} , {75} : {76} , {77} :True)) 
_btn15=_banano_part23_bvad3.newbuttonbadge(_B._buttons,"btn15","Button Badge",{"class":"white--text", "color":"warning"},{":bordered":true, "color":"error", ":content":"btn15badge", ":overlap":true});
// [70]  vbuttoncontainer.matrix(3, 3).Append(btn15.GetHTML) 
_B._vbuttoncontainer.matrix(3,3).append(_btn15.html());
// [71]  buttons.SetData( {78} , 1) 
_B._buttons.setdata("btn15badge",1);
// [73]  Dim btn16 As BANanoElement = BVAD3.NewButtonIconBadge(buttons, {79} , {80} , {81} , {82} , CreateMap( {83} :True, {84} :True), Null, CreateMap( {85} : {86} , {87} :True)) 
_btn16=_banano_part23_bvad3.newbuttoniconbadge(_B._buttons,"btn16","","mdi-pencil","pink",{":fab":true, ":small":true},null,{":content":"btn16badge", ":overlap":true});
// [74]  vbuttoncontainer.matrix(3, 4).Append(btn16.GetHTML) 
_B._vbuttoncontainer.matrix(3,4).append(_btn16.html());
// [75]  buttons.SetData( {88} , 2) 
_B._buttons.setdata("btn16badge",2);
// [77]  buttons.AppendPlaceHolder 
_B._buttons.appendplaceholder();
// [78]  vuetify.AddRoute(buttons) 
_B._vuetify.addroute(_B._buttons);
// End Sub
};

// [81] Sub btn12_click(e As BANanoEvent) 
this.btn12_click=function(_e) {
if (_B==null) _B=this;
// [82]  vuetify.ShowSnackBarSuccess( {89} ) 
_B._vuetify.showsnackbarsuccess("btn12 clicked");
// End Sub
};

// [86] Sub btn14_click(e As BANanoEvent) 
this.btn14_click=function(_e) {
if (_B==null) _B=this;
// [87]  vuetify.ShowSnackBarError( {90} ) 
_B._vuetify.showsnackbarerror("Account Locked");
// End Sub
};

// [91] Sub btn15_click(e As BANanoEvent) 
this.btn15_click=function(_e) {
if (_B==null) _B=this;
// [92]  buttons.Increment( {91} ) 
_B._buttons.increment("btn15badge");
// End Sub
};

// [97] Sub btn16_click(e As BANanoEvent) 
this.btn16_click=function(_e) {
if (_B==null) _B=this;
// [98]  buttons.Increment( {92} ) 
_B._buttons.increment("btn16badge");
// End Sub
};

this.vbuttoncontainer=function(Par) {
u(Par).empty();
_B._vbuttoncontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "vbuttoncontainer", "vbuttoncontainer",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "6","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "5","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "2,2,2,2","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== ViewDatePicker =========================== */
function banano_part23_viewdatepicker() {
var _B;
this._datepicker= new banano_bananovuetifyad3_vuecomponent();

this._name="datepicker";

this._path="";

this._vuetify= new banano_bananovuetifyad3_vuetifyapp();

// [11] Sub Initialize 
this.initialize=function() {
if (_B==null) _B=this;
var _dp1,_dp2,_btngetdates,_tp1,_tp2,_btngettimes;
// [13]  vuetify = pgIndex.vuetify 
_B._vuetify=_banano_part23_pgindex._vuetify;
// [15]  datepicker.Initialize(Me, name) 
_B._datepicker.initialize(_B,_B._name);
// [17]  path = datepicker.path 
_B._path=_B._datepicker._path;
// [19]  BANano.LoadLayout(vuetify.placeholdername, {1} ) 
this.vdatepickercontainer(_B._vuetify._placeholdername);
// [21]  datepicker.BindVueElement(vdatepickercontainer) 
_B._datepicker.bindvueelement(_B._vdatepickercontainer);
// [25]  Dim dp1 As BANanoElement = BVAD3.NewDatePicker(datepicker, {2} , {3} , {4} , {5} , True, {6} , {7} , CreateMap( {8} :True)) 
_dp1=_banano_part23_bvad3.newdatepicker(_B._datepicker,"dp1","dob","Date of Birth","",true,"mdi-calendar","Date of birth",{":outlined":true});
// [26]  vdatepickercontainer.Matrix(1, 1).Append(dp1.GetHTML) 
_B._vdatepickercontainer.matrix(1,1).append(_dp1.html());
// [28]  Dim dp2 As BANanoElement = BVAD3.NewDatePicker(datepicker, {9} , {10} , {11} , {12} , True, {13} , {14} , CreateMap( {15} :True, {16} :True)) 
_dp2=_banano_part23_bvad3.newdatepicker(_B._datepicker,"dp2","dod","Date of Death","",true,"mdi-calendar","Date of death",{":shaped":true, ":outlined":true});
// [29]  vdatepickercontainer.Matrix(1, 2).Append(dp2.GetHTML) 
_B._vdatepickercontainer.matrix(1,2).append(_dp2.html());
// [31]  Dim btngetdates As BANanoElement = BVAD3.NewButton(datepicker, {17} , {18} , {19} , False, CreateMap( {20} :True)) 
_btngetdates=_banano_part23_bvad3.newbutton(_B._datepicker,"btngetdates","Get Dates","success",false,{"block":true});
// [32]  vdatepickercontainer.Matrix(1, 3).Append(btngetdates.GetHTML) 
_B._vdatepickercontainer.matrix(1,3).append(_btngetdates.html());
// [34]  Dim tp1 As BANanoElement = BVAD3.NewTimePicker(datepicker, {21} , {22} , {23} , {24} , True, {25} , {26} , CreateMap( {27} :True)) 
_tp1=_banano_part23_bvad3.newtimepicker(_B._datepicker,"tp1","tob","Time of Birth","",true,"mdi-clock","Time of birth",{":filled":true});
// [35]  vdatepickercontainer.Matrix(2, 1).Append(tp1.GetHTML) 
_B._vdatepickercontainer.matrix(2,1).append(_tp1.html());
// [37]  Dim tp2 As BANanoElement = BVAD3.NewTimePicker(datepicker, {28} , {29} , {30} , {31} , True, {32} , {33} , CreateMap( {34} :True, {35} :True)) 
_tp2=_banano_part23_bvad3.newtimepicker(_B._datepicker,"tp2","tod","Time of Death","",true,"mdi-clock","Time of death",{":rounded":true, ":outlined":true});
// [38]  vdatepickercontainer.Matrix(2, 2).Append(tp2.GetHTML) 
_B._vdatepickercontainer.matrix(2,2).append(_tp2.html());
// [40]  Dim btngettimes As BANanoElement = BVAD3.NewButton(datepicker, {36} , {37} , {38} , False, CreateMap( {39} :True)) 
_btngettimes=_banano_part23_bvad3.newbutton(_B._datepicker,"btngettimes","Get Times","info",false,{"block":true});
// [41]  vdatepickercontainer.Matrix(2, 3).Append(btngettimes.GetHTML) 
_B._vdatepickercontainer.matrix(2,3).append(_btngettimes.html());
// [44]  datepicker.AppendPlaceHolder 
_B._datepicker.appendplaceholder();
// [45]  vuetify.AddRoute(datepicker) 
_B._vuetify.addroute(_B._datepicker);
// End Sub
};

// [48] Sub btngettimes_click(e As BANanoEvent) 
this.btngettimes_click=function(_e) {
if (_B==null) _B=this;
var _sdob,_sdod,_m;
// [49]  Dim sdob As String = datepicker.GetData( {40} ) 
_sdob=_B._datepicker.getdata("tob");
// [50]  Dim sdod As String = datepicker.GetData( {41} ) 
_sdod=_B._datepicker.getdata("tod");
// [52]  Dim m As Map = CreateMap( {42} :sdob, {43} : sdod) 
_m={"tob":_sdob, "tod":_sdod};
// [53]  vuetify.ShowSnackBarInfo(BANano.ToJson(m)) 
_B._vuetify.showsnackbarinfo(JSON.stringify(_m));
// End Sub
};

// [56] Sub btngetdates_click(e As BANanoEvent) 
this.btngetdates_click=function(_e) {
if (_B==null) _B=this;
var _stob,_stod,_m;
// [57]  Dim stob As String = datepicker.GetData( {44} ) 
_stob=_B._datepicker.getdata("dob");
// [58]  Dim stod As String = datepicker.GetData( {45} ) 
_stod=_B._datepicker.getdata("dod");
// [60]  Dim m As Map = CreateMap( {46} :stob, {47} : stod) 
_m={"dob":_stob, "dod":_stod};
// [61]  vuetify.ShowSnackBarSuccess(BANano.ToJson(m)) 
_B._vuetify.showsnackbarsuccess(JSON.stringify(_m));
// End Sub
};

this.vdatepickercontainer=function(Par) {
u(Par).empty();
_B._vdatepickercontainer=BANC( banano_bananovuetifyad3_vueelement,_B, "vdatepickercontainer", "vdatepickercontainer",u(Par), {"ActiveClass": "","Align": "","AlignCenter": false,"Alt": "","AppendIcon": "","AppendOuterIcon": "","Attributes": "","Autofocus": false,"AutoID": false,"BackgroundImage": "","BackgroundRepeat": "","Border": "","BorderColor": "","BorderRadius": "","BorderStyle": "","BorderWidth": "","BuildGrid": true,"Caption": "","Classes": "","Clearable": false,"Color": "","Columns": "3","Counter": "","CoverImage": "","Dark": false,"DataSource": "","Dense": false,"Disabled": "","Filled": false,"FillHeight": false,"FitScreen": false,"Flat": false,"Fluid": false,"FontFamily": "","FontSize": "","FontStyle": "","FontWeight": "","FullScreen": false,"Height": "","HiddenMDAndUp": false,"HiddenSMAndDown": false,"HideDetails": false,"Hint": "","Href": "","InputType": "","Justify": "","JustifyCenter": false,"Key": "","Label": "","LoremIpsum": false,"MarginAXYTBLR": "||||||","MaxHeight": "","MaxWidth": "","OffSets": "|||","OnChange": "","OnClick": "","OnClickAlt": "","OnClickPrevent": "","OnClickShift": "","OnClickStop": "","OnDblClick": "","OnKeyPress": "","OnKeyUp": "","OnMouseMove": "","OnMouseOut": "","Outlined": false,"PaddingAXYTBLR": "||||||","PersistentHint": false,"Placeholder": "","PrependIcon": "","PrependInnerIcon": "","Readonly": "","Ref": "","Required": "","Rounded": false,"Rows": "2","Rules": "","Shaped": false,"ShowGridDesign": false,"SingleLine": false,"Sizes": "12,4,4,4","Slot": "","Solo": false,"Src": "","States": "","Style": "","StyleHeight": "","StyleMaxHeight": "","StyleMaxWidth": "","StyleWidth": "","TagName": "v-container","TextAlign": "","TextDecoration": "","To": "","Value": "","VBind": "","VBindClass": "","VBindStyle": "","VElse": "","VElseIf": "","VFor": "","VHtml": "","VIf": "","VModel": "","VOn": "","VShow": "","VSlotActivator": "","VText": "","Width": ""});
};

}
/* =========================== Part23 =========================== */
function banano_part23() {
var _B;
this._appname="bvad3";

this._apptitle="BANanoVuetify AD3";

this._publish="C:\laragon\www";

this._debugip="localhost";

this._version="1.00";

this._port="8080";

this._serverip="localhost";

// [73] Sub BANano_Ready 
this.banano_ready=function() {
if (_B==null) _B=this;
// [74]  pgIndex.Init 
_banano_part23_pgindex.init();
// End Sub
};

}
/* =========================== fileobject =========================== */
function banano_bananovuetifyad3_fileobject() {
var _B=this;
_B._filename="";

_B._filedate="";

_B._filesize=0;

_B._filetype="";

// [0] public sub initialize
_B.initialize=function() {
// End Sub
};

}
/* =========================== vuegridrow =========================== */
function banano_bananovuetifyad3_vuegridrow() {
var _B=this;
_B._rows=0;

_B._columns=[];

_B._ma="";

_B._mx="";

_B._my="";

_B._mt="";

_B._mb="";

_B._mr="";

_B._ml="";

_B._pa="";

_B._px="";

_B._py="";

_B._pt="";

_B._pb="";

_B._pr="";

_B._pl="";

// [0] public sub initialize
_B.initialize=function() {
// End Sub
};

}
/* =========================== vuegridcolumn =========================== */
function banano_bananovuetifyad3_vuegridcolumn() {
var _B=this;
_B._columns=0;

_B._sm="";

_B._md="";

_B._lg="";

_B._xl="";

_B._ofsm="";

_B._ofmd="";

_B._oflg="";

_B._ofxl="";

_B._ma="";

_B._mx="";

_B._my="";

_B._mt="";

_B._mb="";

_B._mr="";

_B._ml="";

_B._pa="";

_B._px="";

_B._py="";

_B._pt="";

_B._pb="";

_B._pr="";

_B._pl="";

// [0] public sub initialize
_B.initialize=function() {
// End Sub
};

}
/* =========================== datatablecolumn =========================== */
function banano_bananovuetifyad3_datatablecolumn() {
var _B=this;
_B._value="";

_B._text="";

_B._align="";

_B._sortable=false;

_B._filterable=false;

_B._divider=false;

_B._classname="";

_B._width="";

_B._filter="";

_B._sort="";

_B._coltype="";

_B._extra="";

_B._icon="";

_B._disabled=false;

_B._imgwidth="";

_B._imgheight="";

_B._avatarsize="";

_B._iconsize="";

_B._readonly=false;

_B._progresscolor="";

_B._progressrotate="";

_B._progresssize="";

_B._progresswidth="";

_B._progressheight="";

_B._progressshowvalue=false;

_B._valueformat="";

_B._bindtotals="";

_B._hastotal=false;

_B._depressed=false;

_B._rounded=false;

_B._dark=false;

_B._label="";

_B._color="";

_B._outlined=false;

_B._shaped=false;

_B._target="";

_B._prefix="";

_B._colprops={};

// [0] public sub initialize
_B.initialize=function() {
// End Sub
};

}
u('#body').html("");var BANversion=1606481260068;window.document.addEventListener("readystatechange", BANLoadChecker, true);function BANLoadChecker() {if (window.document.readyState=="complete") {_banano_part23.banano_ready();}}