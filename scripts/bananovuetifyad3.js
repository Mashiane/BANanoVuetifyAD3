

/* bananovuetifyad3 */
/* =========================== BANanoShared =========================== */
function banano_bananovuetifyad3_bananoshared() {
var _B;
this._unitwords=["","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"];

this._tenwords=["","Ten","Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"];

this._thousandwords=["","Thousand","Million","Billion","Trillion","Quadrillion","Pentillion","Sexillion","Septillion","Octillion"];

this._sourcecode=new StringBuilder();

// [26] Sub MVSingleQuoteItems(delim As String, mvstring As String) As String 
this.mvsinglequoteitems=function(_delim,_mvstring) {
if (_B==null) _B=this;
var _sbout,_litems,_k,_sout;
// [27]  Dim sbOut As StringBuilder 
_sbout=new StringBuilder();
// [28]  sbOut.Initialize 
_sbout.init();
_sbout.isinitialized=true;
// [29]  Dim lItems As List = StrParse(delim, mvstring) 
_litems=_B.strparse(_delim,_mvstring,_B);
// [30]  For Each k As String In lItems 
for (var _kindex=0;_kindex<_litems.length;_kindex++) {
_k=_litems[_kindex];
// [31]  k = CStr(k) 
_k=_B.cstr(_k,_B);
// [32]  k = k.Trim 
_k=_k.trim();
// [33]  sbOut.Append( {0} ).Append(delim) 
_sbout.append("'" + _k + "'").append(_delim);
// [34]  Next 
}
// [35]  Dim sout As String = sbOut.ToString 
_sout=_sbout.toString();
// [36]  sout = RemDelim(sout, delim) 
_sout=_B.remdelim(_sout,_delim,_B);
// [37]  Return sout 
return _sout;
// End Sub
};

// [40] Sub CreateB4xList(lst As List) As List 
this.createb4xlist=function(_lst) {
if (_B==null) _B=this;
var _nl;
// [41]  Dim nl As List 
_nl=[];
// [42]  nl.Initialize 
_nl.length=0;
// [43]  nl.AddAll(lst) 
_nl.splice(_nl.length,0,..._lst);
// [44]  Return nl 
return _nl;
// End Sub
};

// [50] Sub SourceCodeBuilder 
this.sourcecodebuilder=function() {
if (_B==null) _B=this;
// [51]  SourceCode.Initialize 
_B._sourcecode.init();
_B._sourcecode.isinitialized=true;
// End Sub
};

// [55] Sub AddNewLine 
this.addnewline=function() {
if (_B==null) _B=this;
// [56]  SourceCode.append(CRLF) 
_B._sourcecode.append("\n");
// End Sub
};

// [60] Sub AddCode(scomment As String) 
this.addcode=function(_scomment) {
if (_B==null) _B=this;
// [61]  SourceCode.append(scomment).append(CRLF) 
_B._sourcecode.append(_scomment).append("\n");
// End Sub
};

// [64] Sub YesNoToBoolean(xvalue As String) As Boolean 
this.yesnotoboolean=function(_xvalue) {
if (_B==null) _B=this;
// [65]  Select Case xvalue 
switch ("" + _xvalue) {
// [66]  Case {83} , {84} 
case "" + "Yes":
case "" + "yes":
// [67]  Return True 
return true;
// [68]  Case Else 
default:
// [69]  Return False 
return false;
// [70]  End Select 
}
// End Sub
};

// [74] Sub AddComment(sc As String) 
this.addcomment=function(_sc) {
if (_B==null) _B=this;
// [75]  SourceCode.append( {1} ).append(CRLF) 
_B._sourcecode.append("'" + _sc + "").append("\n");
// End Sub
};

// [79] Sub GetSourceCode As String 
this.getsourcecode=function() {
if (_B==null) _B=this;
var _sout;
// [80]  Dim sout As String = SourceCode.tostring 
_sout=_B._sourcecode.toString();
// [81]  sout = sout.Replace( {85} , {86} ) 
_sout=_sout.split("~").join("$");
// [82]  Return SourceCode.tostring 
return _B._sourcecode.toString();
// End Sub
};

// [85] Sub CreateElement(parent As String, tag As String, id As String,text As String) As BANanoElement 
this.createelement=function(_parent,_tag,_id,_text) {
if (_B==null) _B=this;
var _item,_el;
// [86]  parent = parent.ToLowerCase 
_parent=_parent.toLowerCase();
// [87]  parent = parent.Replace( {87} , {88} ) 
_parent=_parent.split("#").join("");
// [88]  Dim item As String = {2} 
_item="<" + _tag + " id=\"" + _id + "\"></" + _tag + ">";
// [89]  Dim el As BANanoElement = BANano.GetElement( {3} ).Append(item).Get( {4} ) 
_el=u("#" + _parent + "").append(_item).find("#" + _id + "").bananofirst();
// [90]  el.SetText(text) 
_el.text(_text);
// [91]  Return el 
return _el;
// End Sub
};

// [95] Sub DateTimeNowToISOString As String 
this.datetimenowtoisostring=function() {
if (_B==null) _B=this;
var _obj,_sdate;
// [96]  Dim obj As BANanoObject 
_obj=null;
// [97]  Dim sdate As String = obj.Initialize2( {89} , Null).RunMethod( {90} , Null).Result 
_sdate=_obj=new Date()["toISOString"]();
// [98]  Return sdate 
return _sdate;
// End Sub
};

// [102] Sub AddElement(parentID As String, tag As String, id As String, text As String) As BANanoElement 
this.addelement=function(_parentid,_tag,_id,_text) {
if (_B==null) _B=this;
// [103]  Return CreateElement(parentID, tag, id, text) 
return _B.createelement(_parentid,_tag,_id,_text,_B);
// End Sub
};

// [107] Sub AddElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement 
this.addelement1=function(_parentid,_tag,_id,_text,_props,_styles,_classes) {
if (_B==null) _B=this;
// [108]  Return CreateElement1(parentID, tag, id, text, props, styles, classes) 
return _B.createelement1(_parentid,_tag,_id,_text,_props,_styles,_classes,_B);
// End Sub
};

// [112] Sub CreateElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement 
this.createelement1=function(_parentid,_tag,_id,_text,_props,_styles,_classes) {
if (_B==null) _B=this;
var _el,_k,_v,_strstyle;
// [113]  id = id.tolowercase 
_id=_id.toLowerCase();
// [114]  parentID = parentID.ToLowerCase 
_parentid=_parentid.toLowerCase();
// [115]  parentID = parentID.Replace( {91} , {92} ) 
_parentid=_parentid.split("#").join("");
// [116]  Dim el As BANanoElement = BANano.GetElement( {5} ).Append( {6} ).Get( {7} ) 
_el=u("#" + _parentid + "").append("<" + _tag + " id=\"" + _id + "\"></" + _tag + ">").find("#" + _id + "").bananofirst();
// [117]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [118]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [119]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [120]  el.SetAttr(k, v) 
_el.attr(_k,_v);
// [121]  Next 
}
// [122]  End If 
}
// [124]  If BANano.IsNull(styles) = False Then 
if (is.null(_styles)==false) {
// [125]  Dim strStyle As String = BANano.ToJson(styles) 
_strstyle=JSON.stringify(_styles);
// [126]  el.SetStyle(strStyle) 
_el.css(JSON.parse(_strstyle));
// [127]  End If 
}
// [129]  If classes <> {93} Then el.AddClass(classes) 
if (_classes!="") {_el.addClass(_classes);}
// [130]  el.settext(text) 
_el.text(_text);
// [131]  Return el 
return _el;
// End Sub
};

// [134] Sub SetAttributes(targetElement As String, props As Map) 
this.setattributes=function(_targetelement,_props) {
if (_B==null) _B=this;
var _el,_k,_v;
// [135]  targetElement = targetElement.ToLowerCase 
_targetelement=_targetelement.toLowerCase();
// [136]  targetElement = targetElement.Replace( {94} , {95} ) 
_targetelement=_targetelement.split("#").join("");
// [137]  Dim el As BANanoElement = BANano.GetElement( {8} ) 
_el=u("#" + _targetelement + "");
// [138]  If BANano.IsNull(props) = False Or BANano.IsUndefined(props) = False Then 
if (is.null(_props)==false || is.undefined(_props)==false) {
// [139]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [140]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [141]  el.SetAttr(k, v) 
_el.attr(_k,_v);
// [142]  Next 
}
// [143]  End If 
}
// End Sub
};

// [146] Sub SetStyles(targetElement As String, styles As Map) 
this.setstyles=function(_targetelement,_styles) {
if (_B==null) _B=this;
var _el,_strstyle;
// [147]  targetElement = targetElement.ToLowerCase 
_targetelement=_targetelement.toLowerCase();
// [148]  targetElement = targetElement.Replace( {96} , {97} ) 
_targetelement=_targetelement.split("#").join("");
// [149]  Dim el As BANanoElement = BANano.GetElement( {9} ) 
_el=u("#" + _targetelement + "");
// [150]  If BANano.IsNull(styles) = False Or BANano.IsUndefined(styles) = False Then 
if (is.null(_styles)==false || is.undefined(_styles)==false) {
// [151]  Dim strStyle As String = BANano.ToJson(styles) 
_strstyle=JSON.stringify(_styles);
// [152]  el.SetStyle(strStyle) 
_el.css(JSON.parse(_strstyle));
// [153]  End If 
}
// End Sub
};

// [156] Sub GetEmailResponse(email As String) As String 
this.getemailresponse=function(_email) {
if (_B==null) _B=this;
var _respm,_response;
// [157]  Dim respM As Map = BANano.FromJson(email) 
_respm=JSON.parse(_email);
// [158]  Dim response As String = respM.Get( {98} ) 
_response=_respm["response"];
// [159]  Return response 
return _response;
// End Sub
};

// [163] Sub BuildEmail(sfrom As String, sto As String, scc As String, ssubject As String, smsg As String) As Map 
this.buildemail=function(_sfrom,_sto,_scc,_ssubject,_smsg) {
if (_B==null) _B=this;
var _se;
// [164]  Dim se As Map = CreateMap( {99} :sfrom, {100} :sto, {101} :scc, {102} :ssubject, {103} :smsg) 
_se={"from":_sfrom, "to":_sto, "cc":_scc, "subject":_ssubject, "msg":_smsg};
// [165]  Return se 
return _se;
// End Sub
};

// [172] Sub UploadFileWait(e As BANanoEvent) As String 
this.uploadfilewait=async function(_e) {
if (_B==null) _B=this;
var _filelist,_fileo,_fd,_res;
// [174]  Dim fileList As List = GetFileListFromTarget(e) 
_filelist=_B.getfilelistfromtarget(_e,_B);
// [175]  If fileList.size = 0 Then Return {104} 
if (_filelist.length==0) { return "";}
// [178]  Dim fileO As Map = fileList.Get(0) 
_fileo=_filelist[0];
// [180]  Dim fd As BANanoObject 
_fd=null;
// [181]  fd.Initialize2( {105} , Null) 
_fd=new FormData();
// [182]  fd.RunMethod( {106} , Array( {107} , fileO)) 
_fd["append"]("upload",_fileo);
// [184]  Dim Res As String = BANano.CallAjaxWait( {108} , {109} , {110} , fd, True, Null) 
_res=await callAjaxWait("./assets/upload.php","POST","", _fd,true,null);
// [185]  Return Res 
return _res;
// End Sub
};

// [188] Sub SetInterval(module As Object, methodname As String, ms As Int, args As List) As Object 
this.setinterval=function(_module,_methodname,_ms,_args) {
if (_B==null) _B=this;
var _cb,_res;
// [189]  methodname = methodname.tolowercase 
_methodname=_methodname.toLowerCase();
// [190]  Dim cb As BANanoObject = BANano.callback(module, methodname, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [191]  Dim res As Object = BANano.Window.SetInterval(cb, ms) 
_res=window.setInterval(_cb, _ms);
// [192]  Return res 
return _res;
// End Sub
};

// [195] Sub ClearInterval(interval As Object) 
this.clearinterval=function(_interval) {
if (_B==null) _B=this;
// [196]  BANano.Window.ClearInterval(interval) 
window.clearInterval(_interval);
// End Sub
};

// [199] Sub ShuffleList(pl As List) As List 
this.shufflelist=function(_pl) {
if (_B==null) _B=this;
var _i,_j,_k;
// [200]  For i = pl.Size - 1 To 0 Step -1 
for (_i=_pl.length-1;_i>=0;_i-=1) {
// [201]  Dim j As Int 
_j=0;
// [202]  Dim k As Object 
_k={};
// [203]  j = Rnd(0, i + 1) 
_j=(Math.floor(Math.random() * (_i+1 - 0) + 0));
// [204]  k = pl.Get(j) 
_k=_pl[_j];
// [205]  pl.Set(j,pl.Get(i)) 
_pl[_j]=_pl[_i];
// [206]  pl.Set(i,k) 
_pl[_i]=_k;
// [207]  Next 
}
// [208]  Return pl 
return _pl;
// End Sub
};

// [212] Sub ExplodeList(lst As List, runs As Int) As List 
this.explodelist=function(_lst,_runs) {
if (_B==null) _B=this;
var _nlist,_ocnt;
// [213]  Dim nList As List 
_nlist=[];
// [214]  nList.Initialize 
_nlist.length=0;
// [215]  Dim oCnt As Int 
_ocnt=0;
// [216]  For oCnt = 1 To runs 
for (_ocnt=1;_ocnt<=_runs;_ocnt++) {
// [217]  nList.AddAll(lst) 
_nlist.splice(_nlist.length,0,..._lst);
// [218]  Next 
}
// [219]  nList = ShuffleList(nList) 
_nlist=_B.shufflelist(_nlist,_B);
// [220]  Return nList 
return _nlist;
// End Sub
};

// [223] Sub NewB4xList(items As List) As List 
this.newb4xlist=function(_items) {
if (_B==null) _B=this;
var _nl;
// [224]  Dim nl As List 
_nl=[];
// [225]  nl.Initialize 
_nl.length=0;
// [226]  nl.AddAll(items) 
_nl.splice(_nl.length,0,..._items);
// [227]  Return nl 
return _nl;
// End Sub
};

// [230] Sub NewList As List 
this.newlist=function() {
if (_B==null) _B=this;
var _elx;
// [231]  Dim elx As List 
_elx=[];
// [232]  elx.Initialize 
_elx.length=0;
// [233]  Return elx 
return _elx;
// End Sub
};

// [237] Sub NewList1(items As List) As List 
this.newlist1=function(_items) {
if (_B==null) _B=this;
var _nl;
// [238]  Dim nl As List 
_nl=[];
// [239]  nl.Initialize 
_nl.length=0;
// [240]  nl.AddAll(items) 
_nl.splice(_nl.length,0,..._items);
// [241]  Return nl 
return _nl;
// End Sub
};

// [246] Sub GetIDFromEvent(e As BANanoEvent) As String 
this.getidfromevent=function(_e) {
if (_B==null) _B=this;
var _cureve,_id;
// [247]  Dim curEve As BANanoElement = BANano.ToElement(e.OtherField( {111} )) 
_cureve=u(_e["currentTarget"]);
// [248]  Dim ID As String = curEve.GetField( {112} ).Result 
_id=_cureve.nodes[0]["id"];
// [249]  Return ID 
return _id;
// End Sub
};

// [253] Sub GetKeyFromEvent(e As BANanoEvent) As String 
this.getkeyfromevent=function(_e) {
if (_B==null) _B=this;
var _cureve,_id;
// [254]  Dim curEve As BANanoElement = BANano.ToElement(e.OtherField( {113} )) 
_cureve=u(_e["currentTarget"]);
// [255]  Dim ID As String = curEve.GetField( {114} ).Result 
_id=_cureve.nodes[0]["key"];
// [256]  Return ID 
return _id;
// End Sub
};

// [260] Sub GetTargetValueFromEvent(e As BANanoEvent) As String 
this.gettargetvaluefromevent=function(_e) {
if (_B==null) _B=this;
var _ovalue;
// [261]  Dim oValue As Object = e.OtherField( {115} ).GetField( {116} ).Result 
_ovalue=_e["target"]["value"];
// [262]  Return oValue 
return _ovalue;
// End Sub
};

// [265] Sub GetTargetPropertyFromEvent(e As BANanoEvent, prop As String) As String 
this.gettargetpropertyfromevent=function(_e,_prop) {
if (_B==null) _B=this;
var _ovalue;
// [266]  Dim oValue As Object = e.OtherField( {117} ).GetField(prop).Result 
_ovalue=_e["target"][_prop];
// [267]  Return oValue 
return _ovalue;
// End Sub
};

// [271] Sub GetTargetFromEvent(e As BANanoEvent) As BANanoObject 
this.gettargetfromevent=function(_e) {
if (_B==null) _B=this;
var _ovalue;
// [272]  Dim oValue As BANanoObject = e.OtherField( {118} ) 
_ovalue=_e["target"];
// [273]  Return oValue 
return _ovalue;
// End Sub
};

// [276] Sub GetEventTargetProperty(e As BANanoEvent, prop As String) As String 
this.geteventtargetproperty=function(_e,_prop) {
if (_B==null) _B=this;
var _sid;
// [277]  Dim sid As String = e.OtherField( {119} ).GetField(prop).Result 
_sid=_e["target"][_prop];
// [278]  Return sid 
return _sid;
// End Sub
};

// [281] Sub GetFileListFromTarget(e As BANanoEvent) As List 
this.getfilelistfromtarget=function(_e) {
if (_B==null) _B=this;
var _files;
// [282]  Dim files As List = e.OtherField( {120} ).GetField( {121} ).Result 
_files=_e["target"]["files"];
// [283]  Return files 
return _files;
// End Sub
};

// [287] Sub BeautifyName(idName As String) As String 
this.beautifyname=function(_idname) {
if (_B==null) _B=this;
var _ls,_slen,_i,_mout,_sname;
// [288]  idName = idName.trim 
_idname=_idname.trim();
// [289]  If idName = {122} Then Return {123} 
if (_idname=="") { return "";}
// [290]  Dim ls As StringBuilder 
_ls=new StringBuilder();
// [291]  ls.Initialize 
_ls.init();
_ls.isinitialized=true;
// [292]  Dim slen As Int = idName.Length 
_slen=_idname.length;
// [293]  Dim i As Int = 0 
_i=0;
// [294]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [295]  Dim mout As String = idName.CharAt(i) 
_mout=_idname.charAt(_i);
// [296]  If {124} .IndexOf(mout) = -1 Then 
if ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".indexOf(_mout)==-1) {
// [297]  ls.Append( {125} ) 
_ls.append("-");
// [298]  Else 
} else {
// [299]  ls.Append(mout) 
_ls.append(_mout);
// [300]  End If 
}
// [301]  Next 
}
// [302]  Dim sname As String = ls.tostring 
_sname=_ls.toString();
// [303]  sname = ProperSubName(sname, False) 
_sname=_B.propersubname(_sname,false,_B);
// [304]  Return sname 
return _sname;
// End Sub
};

// [307] Sub ProperSubName(vx As String, removePref As Boolean) As String 
this.propersubname=function(_vx,_removepref) {
if (_B==null) _B=this;
var _varlist,_vartot,_varcnt,_varitem,_subname1;
// [308]  vx = vx.Replace( {126} , {127} ) 
_vx=_vx.split(":").join("-");
// [309]  vx = vx.Replace( {128} , {129} ) 
_vx=_vx.split(".").join("-");
// [310]  Dim varList As List = StrParse( {130} , vx) 
_varlist=_B.strparse("-",_vx,_B);
// [311]  If removePref Then 
if (_removepref) {
// [312]  varList.RemoveAt(0) 
_varlist.splice(0,1);
// [313]  End If 
}
// [314]  Dim varTot As Int = varList.Size - 1 
_vartot=_varlist.length-1;
// [315]  Dim varCnt As Int 
_varcnt=0;
// [316]  For varCnt = 0 To varTot 
for (_varcnt=0;_varcnt<=_vartot;_varcnt++) {
// [317]  Dim varItem As String = varList.Get(varCnt) 
_varitem=_varlist[_varcnt];
// [318]  varItem = ProperCase(varItem) 
_varitem=_B.propercase(_varitem,_B);
// [319]  varList.Set(varCnt, varItem) 
_varlist[_varcnt]=_varitem;
// [320]  Next 
}
// [321]  Dim subName1 As String = Join( {131} ,varList) 
_subname1=_B.join("",_varlist,_B);
// [322]  Return subName1 
return _subname1;
// End Sub
};

// [325] Sub Capitalize(t As String) As String 
this.capitalize=function(_t) {
if (_B==null) _B=this;
// [326]  Return ProperCase(t) 
return _B.propercase(_t,_B);
// End Sub
};

// [329] Sub StrParse(delim As String, inputString As String) As List 
this.strparse=function(_delim,_inputstring) {
if (_B==null) _B=this;
var _nl,_values;
// [330]  Dim nl As List 
_nl=[];
// [331]  nl.Initialize 
_nl.length=0;
// [332]  inputString = CStr(inputString) 
_inputstring=_B.cstr(_inputstring,_B);
// [333]  If inputString = {132} Then inputString = {133} 
if (_inputstring=="null") {_inputstring="";}
// [334]  If inputString = {134} Then inputString = {135} 
if (_inputstring=="undefined") {_inputstring="";}
// [335]  If inputString = {136} Then Return nl 
if (_inputstring=="") { return _nl;}
// [336]  Dim values() As String = BANano.Split(delim,inputString) 
_values=_inputstring.split(_delim);
// [337]  nl.AddAll(values) 
_nl.splice(_nl.length,0,..._values);
// [338]  Return nl 
return _nl;
// End Sub
};

// [342] Sub Join(delimiter As String, lst As List) As String 
this.join=function(_delimiter,_lst) {
if (_B==null) _B=this;
var _i,_sbx,_fld;
// [343]  Dim i As Int 
_i=0;
// [344]  Dim sbx As StringBuilder 
_sbx=new StringBuilder();
// [345]  Dim fld As String 
_fld="";
// [346]  sbx.Initialize 
_sbx.init();
_sbx.isinitialized=true;
// [347]  fld = lst.Get(0) 
_fld=_lst[0];
// [348]  sbx.Append(fld) 
_sbx.append(_fld);
// [349]  For i = 1 To lst.size - 1 
for (_i=1;_i<=_lst.length-1;_i++) {
// [350]  Dim fld As String = lst.Get(i) 
_fld=_lst[_i];
// [351]  sbx.Append(delimiter).Append(fld) 
_sbx.append(_delimiter).append(_fld);
// [352]  Next 
}
// [353]  Return sbx.ToString 
return _sbx.toString();
// End Sub
};

// [357] Sub CorrectName(oldName As String) As String 
this.correctname=function(_oldname) {
if (_B==null) _B=this;
var _strname;
// [358]  Dim strName As String = StringBreakAtUpperCase(oldName) 
_strname=_B.stringbreakatuppercase(_oldname,_B);
// [359]  strName = strName.replace( {137} , {138} ) 
_strname=_strname.split(" ").join("-");
// [360]  strName = strName.tolowercase 
_strname=_strname.toLowerCase();
// [361]  Return strName 
return _strname;
// End Sub
};

// [366] Sub MVQuoteItems(delim As String, mvstring As String) As String 
this.mvquoteitems=function(_delim,_mvstring) {
if (_B==null) _B=this;
var _sbout,_litems,_k,_sout;
// [367]  Dim sbOut As StringBuilder 
_sbout=new StringBuilder();
// [368]  sbOut.Initialize 
_sbout.init();
_sbout.isinitialized=true;
// [369]  Dim lItems As List = StrParse(delim, mvstring) 
_litems=_B.strparse(_delim,_mvstring,_B);
// [370]  For Each k As String In lItems 
for (var _kindex=0;_kindex<_litems.length;_kindex++) {
_k=_litems[_kindex];
// [371]  k = CStr(k) 
_k=_B.cstr(_k,_B);
// [372]  k = k.Trim 
_k=_k.trim();
// [373]  sbOut.Append( {10} ).Append(delim) 
_sbout.append("\"" + _k + "\"").append(_delim);
// [374]  Next 
}
// [375]  Dim sout As String = sbOut.ToString 
_sout=_sbout.toString();
// [376]  sout = RemDelim(sout, delim) 
_sout=_B.remdelim(_sout,_delim,_B);
// [377]  Return sout 
return _sout;
// End Sub
};

// [382] Sub GetReadyState As String 
this.getreadystate=function() {
if (_B==null) _B=this;
var _rs;
// [383]  Dim rs As String = BANano.Window.GetField( {139} ).GetField( {140} ).Result 
_rs=window["document"]["readyState"];
// [384]  Return rs 
return _rs;
// End Sub
};

// [388] Sub SetOnReadyChange(EventHandler As Object) 
this.setonreadychange=function(_eventhandler) {
if (_B==null) _B=this;
var _cb;
// [389]  If SubExists(EventHandler, {141} ) = False Then Return 
if ((typeof _eventhandler[("ReadyChange").toLowerCase()]==="function")==false) { return ;}
// [390]  Dim cb As BANanoObject = BANano.callback(EventHandler, {142} , Null) 
_cb=function() {if (typeof _eventhandler[("ReadyChange").toLowerCase()]==="function") {return _eventhandler[("ReadyChange").toLowerCase()](_B)};};
// [391]  BANano.Window.GetField( {143} ).AddEventListener( {144} , cb, True) 
window["document"].addEventListener("readystatechange", _cb, true);
// End Sub
};

// [394] Sub DateIsAfter(date1 As String, date2 As String) As Boolean 
this.dateisafter=function(_date1,_date2) {
if (_B==null) _B=this;
var _d1,_d2,_b;
// [395]  Dim d1 As Int = DateIconv(date1) 
_d1=_B.dateiconv(_date1,_B);
// [396]  Dim d2 As Int = DateIconv(date2) 
_d2=_B.dateiconv(_date2,_B);
// [397]  d1 = BANano.parseint(d1) 
_d1=parseInt(_d1);
// [398]  d2 = BANano.parseInt(d2) 
_d2=parseInt(_d2);
// [399]  Dim b As Boolean = BANano.IIf(d1 > d2, True, False) 
_b=(_d1>_d2) ? true : false;
// [400]  Return b 
return _b;
// End Sub
};

// [405] Sub RemDelim(sValue As String, Delim As String) As String 
this.remdelim=function(_svalue,_delim) {
if (_B==null) _B=this;
var _sw,_ldelim,_nvalue;
// [406]  Dim sw As Boolean = sValue.EndsWith(Delim) 
_sw=_svalue.endsWith(_delim);
// [407]  If sw Then 
if (_sw) {
// [408]  Dim lDelim As Int = Delim.Length 
_ldelim=_delim.length;
// [409]  Dim nValue As String = sValue 
_nvalue=_svalue;
// [410]  sw = nValue.EndsWith(Delim) 
_sw=_nvalue.endsWith(_delim);
// [411]  If sw Then 
if (_sw) {
// [412]  nValue = nValue.SubString2(0, nValue.Length-lDelim) 
_nvalue=_nvalue.substring(0,_nvalue.length-_ldelim);
// [413]  End If 
}
// [414]  Return nValue 
return _nvalue;
// [415]  Else 
} else {
// [416]  Return sValue 
return _svalue;
// [417]  End If 
}
// End Sub
};

// [420] Sub DateIconv(sdate As String) As Long 
this.dateiconv=function(_sdate) {
if (_B==null) _B=this;
var _lps;
// [421]  Dim lps As Long = DateTime.DateParse(sdate) 
_lps=DateTime.DateParse(_sdate);
// [422]  Return lps 
return _lps;
// End Sub
};

// [425] Sub DateOconv(lDate As Long) As String 
this.dateoconv=function(_ldate) {
if (_B==null) _B=this;
var _sdate;
// [426]  DateTime.DateFormat = {145} 
DateTime.SetDateFormat("yyyy-MM-dd");
// [427]  Dim sdate As String = DateTime.Date(lDate) 
_sdate=DateTime.Date(_ldate);
// [428]  Return sdate 
return _sdate;
// End Sub
};

// [432] Sub StringBreakAtUpperCase(st As String) As String 
this.stringbreakatuppercase=function(_st) {
if (_B==null) _B=this;
var _k,_s,_newst,_i;
// [433]  If st.Length = 0 Then Return {146} 
if (_st.length==0) { return "";}
// [434]  Dim k As Int 
_k=0;
// [435]  Dim s As String 
_s="";
// [436]  Dim newst As String = st.CharAt(0) 
_newst=_st.charAt(0);
// [437]  For i = 1 To st.Length - 1 
for (_i=1;_i<=_st.length-1;_i++) {
// [438]  s = st.CharAt(i) 
_s=_st.charAt(_i);
// [439]  k = Asc(s) 
_k=_s.charCodeAt(0);
// [440]  If (k > 64) And (k < 91) And (st.CharAt(i-1) <> {147} ) Then 
if ((_k>64) && (_k<91) && (_st.charAt(_i-1)!=" ")) {
// [441]  newst = newst & {148} & s 
_newst=_newst+" "+_s;
// [442]  Else 
} else {
// [443]  newst = newst & s 
_newst=_newst+_s;
// [444]  End If 
}
// [445]  Next 
}
// [446]  Return newst 
return _newst;
// End Sub
};

// [451] Sub BuildStyle(styles As Map) As String 
this.buildstyle=function(_styles) {
if (_B==null) _B=this;
var _sbx,_k,_v;
// [452]  If styles.Size = 0 Then Return {149} 
if (Object.keys(_styles).length==0) { return "";}
// [453]  Dim sbx As StringBuilder 
_sbx=new StringBuilder();
// [454]  sbx.Initialize 
_sbx.init();
_sbx.isinitialized=true;
// [455]  For Each k As String In styles.keys 
var _kKeys = Object.keys(_styles);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [456]  Dim v As String = styles.get(k) 
_v=_styles[_k];
// [458]  If BANano.IsUndefined(v) Then v = {150} 
if (is.undefined(_v)) {_v="";}
// [459]  If BANano.IsNull(v) Then v = {151} 
if (is.null(_v)) {_v="";}
// [461]  If BANano.IsUndefined(k) Then k = {152} 
if (is.undefined(_k)) {_k="";}
// [462]  If BANano.IsNull(k) Then k = {153} 
if (is.null(_k)) {_k="";}
// [464]  k = k.trim 
_k=_k.trim();
// [465]  v = v.trim 
_v=_v.trim();
// [467]  If k = {154} Then Continue 
if (_k=="") {continue;}
// [468]  If v = {155} Then Continue 
if (_v=="") {continue;}
// [469]  sbx.Append( {11} ) 
_sbx.append("" + _k + ":" + _v + ";");
// [470]  Next 
}
// [471]  Return sbx.tostring 
return _sbx.toString();
// End Sub
};

// [474] Sub BuildAttributes(properties As Map) As String 
this.buildattributes=function(_properties) {
if (_B==null) _B=this;
var _sbx,_k,_v,_sout;
// [475]  If properties.ContainsKey( {156} ) Then 
if (("tagname" in _properties)) {
// [476]  properties.remove( {157} ) 
delete _properties["tagname"];
// [477]  End If 
}
// [478]  If properties.Size = 0 Then Return {158} 
if (Object.keys(_properties).length==0) { return "";}
// [479]  Dim sbx As StringBuilder 
_sbx=new StringBuilder();
// [480]  sbx.Initialize 
_sbx.init();
_sbx.isinitialized=true;
// [481]  For Each k As String In properties.keys 
var _kKeys = Object.keys(_properties);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [482]  Dim v As String = properties.get(k) 
_v=_properties[_k];
// [484]  If BANano.IsUndefined(v) Then v = {159} 
if (is.undefined(_v)) {_v="";}
// [485]  If BANano.IsNull(v) Then v = {160} 
if (is.null(_v)) {_v="";}
// [487]  If BANano.IsUndefined(k) Then k = {161} 
if (is.undefined(_k)) {_k="";}
// [488]  If BANano.IsNull(k) Then k = {162} 
if (is.null(_k)) {_k="";}
// [490]  If k = {163} Then Continue 
if (_k=="") {continue;}
// [491]  If v = {164} Then Continue 
if (_v=="") {continue;}
// [493]  If BANano.IsBoolean(v) Then 
if (is.boolean(_v)) {
// [494]  sbx.Append( {12} ) 
_sbx.append("" + _k + "=" + _v + " ");
// [495]  Else 
} else {
// [496]  k = k.trim 
_k=_k.trim();
// [497]  v = v.trim 
_v=_v.trim();
// [498]  sbx.Append( {13} ) 
_sbx.append("" + _k + "=\"" + _v + "\" ");
// [499]  End If 
}
// [500]  Next 
}
// [501]  Dim sout As String = sbx.ToString 
_sout=_sbx.toString();
// [502]  sout = sout.trim 
_sout=_sout.trim();
// [503]  Return sout 
return _sout;
// End Sub
};

// [506] Sub JoinMapKeys(m As Map, delim As String) As String 
this.joinmapkeys=function(_m,_delim) {
if (_B==null) _B=this;
var _sb,_ktot,_kcnt,_strkey;
// [507]  If m.Size = 0 Then Return {165} 
if (Object.keys(_m).length==0) { return "";}
// [508]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [509]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [510]  Dim kTot As Int = m.Size - 1 
_ktot=Object.keys(_m).length-1;
// [511]  Dim kCnt As Int 
_kcnt=0;
// [512]  Dim strKey As String = m.getkeyat(0) 
_strkey=banano_getB4JKeyAt(_m,0);
// [513]  sb.Append(strKey) 
_sb.append(_strkey);
// [514]  For kCnt = 1 To kTot 
for (_kcnt=1;_kcnt<=_ktot;_kcnt++) {
// [515]  Dim strKey As String = m.getkeyat(kCnt) 
_strkey=banano_getB4JKeyAt(_m,_kcnt);
// [516]  sb.Append(delim).append(strKey) 
_sb.append(_delim).append(_strkey);
// [517]  Next 
}
// [518]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [521] Sub LoremIpsum(count As String) As String 
this.loremipsum=function(_count) {
if (_B==null) _B=this;
// [522]  Return Rand_LoremIpsum(count) 
return _B.rand_loremipsum(_count,_B);
// End Sub
};

// [526] Sub Rand_LoremIpsum(count As Int) As String 
this.rand_loremipsum=function(_count) {
if (_B==null) _B=this;
var _str,_sb,_i;
// [527]  Dim str As String = {14} 
_str="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
// [528]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [529]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [530]  For i = 1 To count 
for (_i=1;_i<=_count;_i++) {
// [531]  sb.Append(str).Append(CRLF) 
_sb.append(_str).append("\n");
// [532]  Next 
}
// [533]  Return sb.tostring 
return _sb.toString();
// End Sub
};

// [538] Sub ListOfMapsRecordPos(lst As List, k As String, v As String) As Int 
this.listofmapsrecordpos=function(_lst,_k,_v) {
if (_B==null) _B=this;
var _ltot,_lcnt,_m,_sk;
// [539]  Dim lTot As Int = lst.Size - 1 
_ltot=_lst.length-1;
// [540]  Dim lCnt As Int 
_lcnt=0;
// [541]  For lCnt = 0 To lTot 
for (_lcnt=0;_lcnt<=_ltot;_lcnt++) {
// [542]  Dim m As Map = lst.Get(lCnt) 
_m=_lst[_lcnt];
// [543]  Dim sk As String = m.GetDefault(k, {166} ) 
_sk=_m[_k]===undefined? "":_m[_k];
// [544]  If sk.EqualsIgnoreCase(v) Then 
if (_sk.equalsIgnoreCase(_v)) {
// [545]  Return lCnt 
return _lcnt;
// [546]  End If 
}
// [547]  Next 
}
// [548]  Return -1 
return -1;
// End Sub
};

// [551] Sub MvDistinct(delim As String, strmv As String) As String 
this.mvdistinct=function(_delim,_strmv) {
if (_B==null) _B=this;
var _items,_mi,_k,_nl,_sout;
// [552]  Dim items As List = StrParse(delim, strmv) 
_items=_B.strparse(_delim,_strmv,_B);
// [553]  Dim mi As Map = CreateMap() 
_mi={};
// [554]  For Each k As String In items 
for (var _kindex=0;_kindex<_items.length;_kindex++) {
_k=_items[_kindex];
// [555]  mi.Put(k, k) 
_mi[_k]=_k;
// [556]  Next 
}
// [557]  Dim nl As List = NewList 
_nl=_B.newlist(_B);
// [558]  For Each k As String In mi.Keys 
var _kKeys = Object.keys(_mi);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [559]  nl.Add(k) 
_nl.push(_k);
// [560]  Next 
}
// [561]  Dim sout As String = Join(delim, nl) 
_sout=_B.join(_delim,_nl,_B);
// [562]  Return sout 
return _sout;
// End Sub
};

// [566] Sub KeyValues2Map(delim As String, keys As String, values As String) As Map 
this.keyvalues2map=function(_delim,_keys,_values) {
if (_B==null) _B=this;
var _rkeys,_rvalues,_optm,_rtot,_vtot,_rcnt,_k,_v;
// [567]  Dim rkeys As List = StrParse(delim, keys) 
_rkeys=_B.strparse(_delim,_keys,_B);
// [568]  Dim rvalues As List = StrParse(delim, values) 
_rvalues=_B.strparse(_delim,_values,_B);
// [570]  Dim optm As Map = CreateMap() 
_optm={};
// [572]  Dim rTot As Int = rkeys.Size -1 
_rtot=_rkeys.length-1;
// [573]  Dim vTot As Int = rvalues.Size - 1 
_vtot=_rvalues.length-1;
// [574]  If rTot <> vTot Then 
if (_rtot!=_vtot) {
// [575]  Else 
} else {
// [576]  Dim rCnt As Int 
_rcnt=0;
// [577]  For rCnt = 0 To rTot 
for (_rcnt=0;_rcnt<=_rtot;_rcnt++) {
// [578]  Dim k As String = rkeys.Get(rCnt) 
_k=_rkeys[_rcnt];
// [579]  Dim v As String = rvalues.Get(rCnt) 
_v=_rvalues[_rcnt];
// [580]  optm.put(k, v) 
_optm[_k]=_v;
// [581]  Next 
}
// [582]  End If 
}
// [583]  Return optm 
return _optm;
// End Sub
};

// [586] Sub NewMap As Map 
this.newmap=function() {
if (_B==null) _B=this;
var _nm;
// [587]  Dim nm As Map 
_nm={};
// [588]  nm.Initialize 
_nm={};
// [589]  Return nm 
return _nm;
// End Sub
};

// [593] Sub getElementById(sid As String) As BANanoObject 
this.getelementbyid=function(_sid) {
if (_B==null) _B=this;
var _el;
// [594]  Dim el As BANanoObject = BANano.Window.GetField( {167} ).RunMethod( {168} , Array(sid)) 
_el=window["document"]["getElementById"](_sid);
// [595]  Return el 
return _el;
// End Sub
};

// [598] Sub DateDiff(currentDate As String, otherDate As String) As Int 
this.datediff=function(_currentdate,_otherdate) {
if (_B==null) _B=this;
var _bo,_bo1,_rslt;
// [599]  If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0 
if (is.null(_currentdate) || is.undefined(_currentdate)) { return 0;}
// [600]  If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0 
if (is.null(_otherdate) || is.undefined(_otherdate)) { return 0;}
// [602]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {169} , Array(currentDate)) 
_bo=BANanoExec("dayjs", window, _currentdate);
// [603]  Dim bo1 As BANanoObject = BANano.RunJavascriptMethod( {170} , Array(otherDate)) 
_bo1=BANanoExec("dayjs", window, _otherdate);
// [605]  Dim rslt As String = bo.RunMethod( {171} , Array(bo1, {172} )).Result 
_rslt=_bo["diff"](_bo1,"day");
// [606]  Return rslt 
return _rslt;
// End Sub
};

// [609] Sub ListRemoveDuplicates(lst As List) As List 
this.listremoveduplicates=function(_lst) {
if (_B==null) _B=this;
var _nd,_k,_nl;
// [610]  Dim nd As Map = CreateMap() 
_nd={};
// [611]  For Each k As String In lst 
for (var _kindex=0;_kindex<_lst.length;_kindex++) {
_k=_lst[_kindex];
// [612]  nd.Put(k, k) 
_nd[_k]=_k;
// [613]  Next 
}
// [614]  Dim nl As List 
_nl=[];
// [615]  nl.Initialize 
_nl.length=0;
// [616]  For Each k As String In nd.Keys 
var _kKeys = Object.keys(_nd);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [617]  nl.Add(k) 
_nl.push(_k);
// [618]  Next 
}
// [619]  nl.Sort(True) 
if (!isNaN(parseFloat(_nl[0])) && isFinite(_nl[0])) {
_nl.sort(function(a, b){return a - b});
} else {
_nl.sort();
};
// [620]  Return nl 
return _nl;
// End Sub
};

// [624] Sub GetFileDetails(fileObj As Map) As FileObject 
this.getfiledetails=function(_fileobj) {
if (_B==null) _B=this;
var _sname,_slastmodifieddate,_ssize,_stype,_yyyy,_dd,_mm,_hh,_minutes,_fd,_ff;
// [625]  Dim sname As String = fileObj.Get( {173} ) 
_sname=_fileobj["name"];
// [626]  Dim slastModifiedDate As BANanoObject = fileObj.Get( {174} ) 
_slastmodifieddate=_fileobj["lastModifiedDate"];
// [627]  Dim ssize As String = fileObj.Get( {175} ) 
_ssize=_fileobj["size"];
// [628]  Dim stype As String = fileObj.Get( {176} ) 
_stype=_fileobj["type"];
// [630]  Dim yyyy As String = slastModifiedDate.RunMethod( {177} , Null).Result 
_yyyy=_slastmodifieddate["getFullYear"]();
// [631]  Dim dd As String = slastModifiedDate.RunMethod( {178} , Null).Result 
_dd=_slastmodifieddate["getDate"]();
// [632]  Dim mm As String = slastModifiedDate.RunMethod( {179} , Null).Result 
_mm=_slastmodifieddate["getMonth"]();
// [633]  Dim hh As String = slastModifiedDate.RunMethod( {180} , Null).Result 
_hh=_slastmodifieddate["getHours"]();
// [634]  Dim minutes As String = slastModifiedDate.RunMethod( {181} , Null).Result 
_minutes=_slastmodifieddate["getMinutes"]();
// [636]  dd = PadRight(dd, 2, {182} ) 
_dd=_B.padright(_dd,2,"0",_B);
// [637]  mm = PadRight(mm, 2, {183} ) 
_mm=_B.padright(_mm,2,"0",_B);
// [638]  hh = PadRight(hh, 2, {184} ) 
_hh=_B.padright(_hh,2,"0",_B);
// [639]  minutes = PadRight(minutes, 2, {185} ) 
_minutes=_B.padright(_minutes,2,"0",_B);
// [641]  Dim fd As String = {15} 
_fd="" + _yyyy + "-" + _mm + "-" + _dd + " " + _hh + ":" + _minutes + "";
// [644]  Dim ff As FileObject 
_ff= new banano_bananovuetifyad3_fileobject();
// [645]  ff.Initialize 
_ff.initialize();
// [646]  ff.FileName = sname 
_ff._filename=_sname;
// [647]  ff.FileDate = fd 
_ff._filedate=_fd;
// [648]  ff.FileSize = ssize 
_ff._filesize=_ssize;
// [649]  ff.FileType = stype 
_ff._filetype=_stype;
// [650]  Return ff 
return _ff;
// End Sub
};

// [654] Sub BeautifySourceCode(slang As String, sc As String) As String 
this.beautifysourcecode=function(_slang,_sc) {
if (_B==null) _B=this;
var _res;
// [655]  Select Case slang 
switch ("" + _slang) {
// [656]  Case {186} 
case "" + "js":
// [657]  Dim res As String = BANano.RunJavascriptMethod( {187} , Array(sc)) 
_res=BANanoExec("js_beautify", window, _sc);
// [658]  Case {188} 
break;
case "" + "css":
// [659]  Dim res As String = BANano.RunJavascriptMethod( {189} , Array(sc)) 
_res=BANanoExec("css_beautify", window, _sc);
// [660]  Case {190} 
break;
case "" + "html":
// [661]  Dim res As String = BANano.RunJavascriptMethod( {191} , Array(sc)) 
_res=BANanoExec("html_beautify", window, _sc);
// [662]  End Select 
break;
}
// [663]  Return res 
return _res;
// End Sub
};

// [667] private Sub DoUpload(fileObj As Object) As String 'ignore 
this.doupload=function(_fileobj) {
var _BANp = gBANp(arguments);
if (_B==null) _B=this;
var _aevt,_xhr,_fd,_err,_serr;
// [668]  Dim aEvt As Object 
_aevt={};
// [669]  Dim xhr As BANanoXMLHttpRequest 
_xhr=null;
// [671]  Dim fd As BANanoObject 
_fd=null;
// [672]  fd.Initialize2( {192} ,Null) 
_fd=new FormData();
// [673]  fd.RunMethod( {193} , Array( {194} , fileObj)) 
_fd["append"]("upload",_fileobj);
// [675]  xhr.Initialize 
_xhr=new XMLHttpRequest();
// [676]  xhr.Open( {195} , {196} ) 
_xhr.open("POST","./assets/upload.php");
// [677]  xhr.AddEventListenerOpenAsync( {197} , aEvt) 
_xhr.onreadystatechange=async function(_aevt) {
// [678]  If xhr.ReadyState = 4 Then 
if (_xhr.readyState==4) {
// [679]  If xhr.Status = 200 Then 
if (_xhr.status==200) {
// [680]  BANano.ReturnThen(xhr.ResponseText) 
return _BANp.resolve(_xhr.responseText);
// [681]  Else 
} else {
// [682]  Dim err As Map = CreateMap() 
_err={};
// [683]  err.Put( {198} , {199} ) 
_err["status"]="error";
// [684]  Dim serr As String = BANano.ToJson(err) 
_serr=JSON.stringify(_err);
// [685]  BANano.ReturnElse(serr) 
return _BANp.reject(_serr);
// [686]  End If 
}
// [687]  End If 
}
// [688]  xhr.CloseEventListener 
};
// [689]  xhr.Send2(fd) 
_xhr.send(_fd);
// End Sub
};

// [692] Sub HTTPUpload(fileObj As Object, module As Object, methodname As String) 
this.httpupload=function(_fileobj,_module,_methodname) {
if (_B==null) _B=this;
var _promise,_error,_json;
// [693]  Dim promise As BANanoPromise 'ignore 
_promise=null;
// [695]  Dim Error As String 
_error="";
// [696]  Dim json As String 
_json="";
// [699]  promise.CallSub(Me, {200} , Array(fileObj)) 
_promise=BANanoPromise();
_B[("DoUpload").toLowerCase()](_fileobj,_promise,_B);
// [700]  promise.ThenWait(json) 
_promise.then(async function(_json) {
// [701]  BANano.CallSub(module, methodname, Array(fileObj, json)) 
(function() {if (typeof _module[(_methodname).toLowerCase()]==="function") {var CSr = _module[(_methodname).toLowerCase()](_fileobj,_json,_B);if(CSr!=null) {return CSr}}})();
// [702]  promise.ElseWait(Error) 'ignore 
}).catch(async function(_error) {
// [703]  BANano.CallSub(module, methodname, Array(fileObj, Error)) 
(function() {if (typeof _module[(_methodname).toLowerCase()]==="function") {var CSr = _module[(_methodname).toLowerCase()](_fileobj,_error,_B);if(CSr!=null) {return CSr}}})();
// [704]  promise.End 
});
// End Sub
};

// [708] Public Sub GetAlphabets(value As String) As String 
this.getalphabets=function(_value) {
if (_B==null) _B=this;
var _sout,_mout,_slen,_i;
// [709]  value = CStr(value) 
_value=_B.cstr(_value,_B);
// [710]  Try 
try {
// [711]  value = value.Trim 
_value=_value.trim();
// [712]  If value = {201} Then value = {202} 
if (_value=="") {_value="";}
// [713]  Dim sout As String = {203} 
_sout="";
// [714]  Dim mout As String = {204} 
_mout="";
// [715]  Dim slen As Int = value.Length 
_slen=_value.length;
// [716]  Dim i As Int = 0 
_i=0;
// [717]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [718]  mout = value.CharAt(i) 
_mout=_value.charAt(_i);
// [719]  If InStr( {205} , mout) <> -1 Then 
if (_B.instr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ",_mout,_B)!=-1) {
// [720]  sout = sout & mout 
_sout=_sout+_mout;
// [721]  End If 
}
// [722]  Next 
}
// [723]  Return sout 
return _sout;
// [724]  Catch 
} catch(err) {
// [725]  Return value 
return _value;
// [726]  End Try 
}
// End Sub
};

// [730] Sub JSONPretty(m As Object) As String 
this.jsonpretty=function(_m) {
if (_B==null) _B=this;
var _pretty;
// [731]  Dim pretty As String = BANano.RunJavascriptMethod( {206} , Array(m, Null, 4)) 
_pretty=BANanoExec("JSON.stringify", window, _m,null,4);
// [732]  Return pretty 
return _pretty;
// End Sub
};

// [736] Sub ExtractMap(source As Map, keys As List) As Map 
this.extractmap=function(_source,_keys) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [737]  Dim nm As Map = CreateMap() 
_nm={};
// [738]  For Each k As String In keys 
for (var _kindex=0;_kindex<_keys.length;_kindex++) {
_k=_keys[_kindex];
// [739]  Dim v As Object = source.get(k) 
_v=_source[_k];
// [740]  nm.put(k, v) 
_nm[_k]=_v;
// [741]  Next 
}
// [742]  Return nm 
return _nm;
// End Sub
};

// [745] Sub InStr(Text As String, sFind As String) As Int 
this.instr=function(_text,_sfind) {
if (_B==null) _B=this;
// [746]  Return Text.tolowercase.IndexOf(sFind.tolowercase) 
return _text.toLowerCase().indexOf(_sfind.toLowerCase());
// End Sub
};

// [750] Sub JoinNonBlanks(delimiter As String, lst As List) As String 
this.joinnonblanks=function(_delimiter,_lst) {
if (_B==null) _B=this;
var _nl,_str,_i,_sb,_fld;
// [751]  If lst.size = 0 Then Return {207} 
if (_lst.length==0) { return "";}
// [753]  Dim nl As List 
_nl=[];
// [754]  nl.Initialize 
_nl.length=0;
// [755]  For Each str As String In lst 
for (var _strindex=0;_strindex<_lst.length;_strindex++) {
_str=_lst[_strindex];
// [756]  str = str.Trim 
_str=_str.trim();
// [757]  If str.Length > 0 Then 
if (_str.length>0) {
// [758]  nl.Add(str) 
_nl.push(_str);
// [759]  End If 
}
// [760]  Next 
}
// [761]  If nl.Size = 0 Then Return {208} 
if (_nl.length==0) { return "";}
// [763]  Dim i As Int 
_i=0;
// [764]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [765]  Dim fld As String 
_fld="";
// [766]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [767]  fld = nl.Get(0) 
_fld=_nl[0];
// [768]  sb.Append(fld) 
_sb.append(_fld);
// [769]  For i = 1 To nl.size - 1 
for (_i=1;_i<=_nl.length-1;_i++) {
// [770]  Dim fld As String = nl.Get(i) 
_fld=_nl[_i];
// [771]  sb.Append(delimiter).Append(fld) 
_sb.append(_delimiter).append(_fld);
// [772]  Next 
}
// [773]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [778] Sub JoinMaps(lst As List) As Map 
this.joinmaps=function(_lst) {
if (_B==null) _B=this;
var _nm,_mr,_k,_v;
// [779]  Dim nm As Map = CreateMap() 
_nm={};
// [780]  If lst.Size = 0 Then Return nm 
if (_lst.length==0) { return _nm;}
// [781]  For Each mr As Map In lst 
for (var _mrindex=0;_mrindex<_lst.length;_mrindex++) {
_mr=_lst[_mrindex];
// [782]  For Each k As String In mr.Keys 
var _kKeys = Object.keys(_mr);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [783]  Dim v As Object = mr.Get(k) 
_v=_mr[_k];
// [784]  nm.Put(k, v) 
_nm[_k]=_v;
// [785]  Next 
}
// [786]  Next 
}
// [787]  Return nm 
return _nm;
// End Sub
};

// [791] Sub JoinLists(lst As List) As List 
this.joinlists=function(_lst) {
if (_B==null) _B=this;
var _nl,_lo,_k;
// [792]  Dim nl As List 
_nl=[];
// [793]  nl.Initialize 
_nl.length=0;
// [794]  For Each lo As List In lst 
for (var _loindex=0;_loindex<_lst.length;_loindex++) {
_lo=_lst[_loindex];
// [795]  For Each k As Object In lo 
for (var _kindex=0;_kindex<_lo.length;_kindex++) {
_k=_lo[_kindex];
// [796]  nl.Add(k) 
_nl.push(_k);
// [797]  Next 
}
// [798]  Next 
}
// [799]  Return nl 
return _nl;
// End Sub
};

// [804] Sub MapKeys2List(m As Map) As List 
this.mapkeys2list=function(_m) {
if (_B==null) _B=this;
var _lst,_k;
// [805]  Dim lst As List 
_lst=[];
// [806]  lst.Initialize 
_lst.length=0;
// [807]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [808]  lst.Add(k) 
_lst.push(_k);
// [809]  Next 
}
// [810]  Return lst 
return _lst;
// End Sub
};

// [814] Sub MapValues2List(m As Map) As List 
this.mapvalues2list=function(_m) {
if (_B==null) _B=this;
var _lst,_k;
// [815]  Dim lst As List 
_lst=[];
// [816]  lst.Initialize 
_lst.length=0;
// [817]  For Each k As String In m.values 
for (_kKEY in _m) {
var _k=_m[_kKEY];
// [818]  lst.Add(k) 
_lst.push(_k);
// [819]  Next 
}
// [820]  Return lst 
return _lst;
// End Sub
};

// [825] Sub RSAIDNumber2DateOfBirth(rsaID As String) As String 
this.rsaidnumber2dateofbirth=function(_rsaid) {
if (_B==null) _B=this;
var _yymmdd,_yy,_mm,_dd;
// [827]  If rsaID.length = 13 Then 
if (_rsaid.length==13) {
// [828]  Dim yymmdd As String = LeftString(rsaID, 6) 
_yymmdd=_B.leftstring(_rsaid,6,_B);
// [829]  Dim yy As String = LeftString(yymmdd,2) 
_yy=_B.leftstring(_yymmdd,2,_B);
// [830]  Dim mm As String = MidString(yymmdd,3,2) 
_mm=_B.midstring(_yymmdd,3,2,_B);
// [831]  Dim dd As String = RightString(yymmdd,2) 
_dd=_B.rightstring(_yymmdd,2,_B);
// [832]  yymmdd = {16} 
_yymmdd="19" + _yy + "-" + _mm + "-" + _dd + "";
// [833]  Return yymmdd 
return _yymmdd;
// [834]  Else 
} else {
// [835]  Return {209} 
return "";
// [836]  End If 
}
// End Sub
};

// [839] Public Sub YearNow() As String 
this.yearnow=function() {
if (_B==null) _B=this;
var _lnow,_dt;
// [840]  Dim lNow As Long 
_lnow=0;
// [841]  Dim dt As String 
_dt="";
// [842]  lNow = DateTime.Now 
_lnow=DateTime.Now();
// [843]  DateTime.DateFormat = {210} 
DateTime.SetDateFormat("yyyy");
// [844]  dt = DateTime.Date(lNow) 
_dt=DateTime.Date(_lnow);
// [845]  Return dt 
return _dt;
// End Sub
};

// [848] Public Sub MonthNow() As String 
this.monthnow=function() {
if (_B==null) _B=this;
var _lnow,_dt;
// [849]  Dim lNow As Long 
_lnow=0;
// [850]  Dim dt As String 
_dt="";
// [851]  lNow = DateTime.Now 
_lnow=DateTime.Now();
// [852]  DateTime.DateFormat = {211} 
DateTime.SetDateFormat("M");
// [853]  dt = DateTime.Date(lNow) 
_dt=DateTime.Date(_lnow);
// [854]  Return dt 
return _dt;
// End Sub
};

// [857] Sub DateAdd(mDate As String, HowManyDays As Int) As String 
this.dateadd=function(_mdate,_howmanydays) {
if (_B==null) _B=this;
var _convertdate,_newdateday;
// [858]  HowManyDays = BANano.parseInt(HowManyDays) 
_howmanydays=parseInt(_howmanydays);
// [859]  Dim ConvertDate, NewDateDay As Long 
_convertdate=0;
_newdateday=0;
// [860]  ConvertDate = DateTime.DateParse(mDate) 
_convertdate=DateTime.DateParse(_mdate);
// [861]  NewDateDay = DateTime.Add(ConvertDate, 0, 0, HowManyDays) 
_newdateday=DateTime.Add(_convertdate,0,0,_howmanydays);
// [862]  Return DateTime.Date(NewDateDay) 
return DateTime.Date(_newdateday);
// End Sub
};

// [865] Sub MonthAdd(mDate As String, HowManyMonths As Int) As String 
this.monthadd=function(_mdate,_howmanymonths) {
if (_B==null) _B=this;
var _convertdate,_newdateday;
// [866]  HowManyMonths = BANano.parseInt(HowManyMonths) 
_howmanymonths=parseInt(_howmanymonths);
// [867]  Dim ConvertDate, NewDateDay As Long 
_convertdate=0;
_newdateday=0;
// [868]  ConvertDate = DateTime.DateParse(mDate) 
_convertdate=DateTime.DateParse(_mdate);
// [869]  NewDateDay = DateTime.Add(ConvertDate, 0, HowManyMonths, 0) 
_newdateday=DateTime.Add(_convertdate,0,_howmanymonths,0);
// [870]  Return DateTime.Date(NewDateDay) 
return DateTime.Date(_newdateday);
// End Sub
};

// [876] Sub NumberOfDaysBetweenDates(CurrentDate As String, OtherDate As String) As Int 
this.numberofdaysbetweendates=function(_currentdate,_otherdate) {
if (_B==null) _B=this;
var _currdate,_othdate,_tpd,_iout;
// [877]  Dim CurrDate, OthDate As Long 
_currdate=0;
_othdate=0;
// [878]  CurrDate = DateTime.DateParse(CurrentDate) 
_currdate=DateTime.DateParse(_currentdate);
// [879]  OthDate = DateTime.DateParse(OtherDate) 
_othdate=DateTime.DateParse(_otherdate);
// [880]  Dim tpd As Long = DateTime.TicksPerDay 
_tpd=DateTime.TicksPerDay();
// [881]  Dim iOut As Long = (CurrDate - OthDate)/tpd 
_iout=(_currdate-_othdate)/_tpd;
// [882]  Return iOut 
return _iout;
// End Sub
};

// [885] Public Sub CDbl(value As String) As Double 
this.cdbl=function(_value) {
if (_B==null) _B=this;
var _out;
// [886]  Try 
try {
// [887]  value = value.Trim 
_value=_value.trim();
// [888]  If value = {212} Then value = {213} 
if (_value=="") {_value="0";}
// [889]  value = value.Replace( {214} , {215} ) 
_value=_value.split(",").join("");
// [890]  Dim out As Double = NumberFormat2(value,0,2,2,False) 
_out=BANano_nf2(BANano_r2f(_value, 2, 2),0,false);
// [891]  Return out 
return _out;
// [892]  Catch 
} catch(err) {
// [893]  Return value 
return _value;
// [894]  End Try 
}
// End Sub
};

// [898] Sub ProjectDays(sDays As String) As String 
this.projectdays=function(_sdays) {
if (_B==null) _B=this;
// [899]  Try 
try {
// [900]  sDays = sDays.trim 
_sdays=_sdays.trim();
// [901]  If sDays = {216} Then sDays = {217} 
if (_sdays=="") {_sdays="0";}
// [902]  sDays = sDays.Replace( {218} , {219} ) 
_sdays=_sdays.split(",").join("");
// [903]  sDays = NumberFormat2(sDays,0,0,0,True) 
_sdays=BANano_nf2(BANano_r2f(_sdays, 0, 0),0,true);
// [904]  Return sDays & {220} 
return _sdays+" Dys";
// [905]  Catch 
} catch(err) {
// [906]  Return {221} 
return "0 Dys";
// [907]  End Try 
}
// End Sub
};

// [910] Sub ProjectDate(sDate As String) As String 
this.projectdate=function(_sdate) {
if (_B==null) _B=this;
var _dt;
// [911]  If sDate.Length = 0 Then Return {222} 
if (_sdate.length==0) { return "";}
// [912]  Try 
try {
// [913]  DateTime.DateFormat = {223} 
DateTime.SetDateFormat("yyyy-MM-dd");
// [914]  Dim dt As Long = DateTime.DateParse(sDate) 
_dt=DateTime.DateParse(_sdate);
// [915]  DateTime.DateFormat = {224} 
DateTime.SetDateFormat("dd-MMM-yyyy, EEE");
// [916]  Return DateTime.Date(dt) 
return DateTime.Date(_dt);
// [917]  Catch 
} catch(err) {
// [918]  Return {225} 
return "";
// [919]  End Try 
}
// End Sub
};

// [923] Sub FormatFileSize(Bytes As Float) As String 
this.formatfilesize=function(_bytes) {
if (_B==null) _B=this;
var _unit,_po,_si,_i;
// [924]  If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then 
if (is.null(_bytes) || is.undefined(_bytes)) {
// [925]  Bytes = 0 
_bytes=0;
// [926]  End If 
}
// [927]  Bytes = BANano.parsefloat(Bytes) 
_bytes=parseFloat(_bytes);
// [928]  Try 
try {
// [929]  Private Unit() As String = Array As String( {226} , {227} , {228} , {229} , {230} , {231} , {232} , {233} , {234} ) 
_unit=[" Byte"," KB"," MB"," GB"," TB"," PB"," EB"," ZB"," YB"];
// [930]  If Bytes = 0 Then 
if (_bytes==0) {
// [931]  Return {235} 
return "0 Bytes";
// [932]  Else 
} else {
// [933]  Private Po, Si As Double 
_po=0;
_si=0;
// [934]  Private I As Int 
_i=0;
// [935]  Bytes = Abs(Bytes) 
_bytes=(Math.abs(_bytes));
// [936]  I = Floor(Logarithm(Bytes, 1024)) 
_i=(Math.floor((Math.log(_bytes)/Math.log(1024))));
// [937]  Po = Power(1024, I) 
_po=Math.pow(1024,_i);
// [938]  Si = Bytes / Po 
_si=_bytes/_po;
// [939]  Return NumberFormat(Si, 1, 3) & Unit(I) 
return BANano_nf(BANano_r(_si, 3),1)+_unit[_i];
// [940]  End If 
}
// [941]  Catch 
} catch(err) {
// [942]  Return {236} 
return "0 Bytes";
// [943]  End Try 
}
// End Sub
};

// [946] Sub InStrRev(value As String, search As String) As Long 
this.instrrev=function(_value,_search) {
if (_B==null) _B=this;
// [947]  Return value.LastIndexOf(search) + 1 
return _value.lastIndexOf(_search)+1;
// End Sub
};

// [952] Sub Len(Text As String) As Int 
this.len=function(_text) {
if (_B==null) _B=this;
// [953]  Return Text.Length 
return _text.length;
// End Sub
};

// [957] Sub PadRight(Value As String, MaxLen As Int, PadChar As String) As String 
this.padright=function(_value,_maxlen,_padchar) {
if (_B==null) _B=this;
var _intordnolen,_i;
// [958]  Value = CStr(Value) 
_value=_B.cstr(_value,_B);
// [959]  Dim intOrdNoLen As Int = Len(Value) 
_intordnolen=_B.len(_value,_B);
// [960]  Dim i As Int 
_i=0;
// [961]  For i = 1 To (MaxLen - intOrdNoLen) Step 1 
for (_i=1;_i<=(_maxlen-_intordnolen);_i+=1) {
// [962]  Value = PadChar & Value 
_value=_padchar+_value;
// [963]  Next 
}
// [964]  Return Value 
return _value;
// End Sub
};

// [967] Sub GetListOfMapsProperty(lst As List, prop As String) As List 
this.getlistofmapsproperty=function(_lst,_prop) {
if (_B==null) _B=this;
var _kc,_rec,_v;
// [968]  prop = prop.tolowercase 
_prop=_prop.toLowerCase();
// [969]  Dim kc As List 
_kc=[];
// [970]  kc.initialize 
_kc.length=0;
// [971]  For Each rec As Map In lst 
for (var _recindex=0;_recindex<_lst.length;_recindex++) {
_rec=_lst[_recindex];
// [972]  Dim v As String = rec.Get(prop) 
_v=_rec[_prop];
// [973]  kc.add(v) 
_kc.push(_v);
// [974]  Next 
}
// [975]  Return kc 
return _kc;
// End Sub
};

// [979] Sub SumListOfMapsProperty(lst As List, prop As String) As Double 
this.sumlistofmapsproperty=function(_lst,_prop) {
if (_B==null) _B=this;
var _tsum,_rec,_propv;
// [980]  Dim tsum As Double = 0 
_tsum=0;
// [981]  For Each rec As Map In lst 
for (var _recindex=0;_recindex<_lst.length;_recindex++) {
_rec=_lst[_recindex];
// [982]  Dim propv As String = rec.GetDefault(prop, {237} ) 
_propv=_rec[_prop]===undefined? "0":_rec[_prop];
// [983]  tsum = tsum + BANano.parseFloat(propv) 
_tsum=_tsum+parseFloat(_propv);
// [984]  Next 
}
// [985]  Return tsum 
return _tsum;
// End Sub
};

// [989] Public Sub Val(value As String) As String 
this.val=function(_value) {
if (_B==null) _B=this;
var _sout,_mout,_slen,_i;
// [990]  value = CStr(value) 
_value=_B.cstr(_value,_B);
// [991]  Try 
try {
// [992]  value = value.Trim 
_value=_value.trim();
// [993]  If value = {238} Then value = {239} 
if (_value=="") {_value="0";}
// [994]  Dim sout As String = {240} 
_sout="";
// [995]  Dim mout As String = {241} 
_mout="";
// [996]  Dim slen As Int = value.Length 
_slen=_value.length;
// [997]  Dim i As Int = 0 
_i=0;
// [998]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [999]  mout = value.CharAt(i) 
_mout=_value.charAt(_i);
// [1000]  If InStr( {242} , mout) <> -1 Then 
if (_B.instr("0123456789.-",_mout,_B)!=-1) {
// [1001]  sout = sout & mout 
_sout=_sout+_mout;
// [1002]  End If 
}
// [1003]  Next 
}
// [1004]  Return sout 
return _sout;
// [1005]  Catch 
} catch(err) {
// [1006]  Return value 
return _value;
// [1007]  End Try 
}
// End Sub
};

// [1010] Public Sub Alpha(value As String) As String 
this.alpha=function(_value) {
if (_B==null) _B=this;
var _sout,_mout,_slen,_i;
// [1011]  value = CStr(value) 
_value=_B.cstr(_value,_B);
// [1012]  Try 
try {
// [1013]  value = value.Trim 
_value=_value.trim();
// [1014]  If value = {243} Then value = {244} 
if (_value=="") {_value="";}
// [1015]  Dim sout As String = {245} 
_sout="";
// [1016]  Dim mout As String = {246} 
_mout="";
// [1017]  Dim slen As Int = value.Length 
_slen=_value.length;
// [1018]  Dim i As Int = 0 
_i=0;
// [1019]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [1020]  mout = value.CharAt(i) 
_mout=_value.charAt(_i);
// [1021]  If InStr( {247} , mout) <> -1 Then 
if (_B.instr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",_mout,_B)!=-1) {
// [1022]  sout = sout & mout 
_sout=_sout+_mout;
// [1023]  End If 
}
// [1024]  Next 
}
// [1025]  Return sout 
return _sout;
// [1026]  Catch 
} catch(err) {
// [1027]  Return value 
return _value;
// [1028]  End Try 
}
// End Sub
};

// [1033] Sub List2KeyValues(lst As List, mapvalues As List) As List 
this.list2keyvalues=function(_lst,_mapvalues) {
if (_B==null) _B=this;
// [1034]  Return List2IDValue(lst, mapvalues) 
return _B.list2idvalue(_lst,_mapvalues,_B);
// End Sub
};

// [1038] Sub List2IDValue(lst As List, mapValues As List) As List 
this.list2idvalue=function(_lst,_mapvalues) {
if (_B==null) _B=this;
var _mv1,_mv2,_nlst,_dict,_mk,_mv,_nm;
// [1039]  Dim mv1 As String = mapValues.get(0) 
_mv1=_mapvalues[0];
// [1040]  Dim mv2 As String = mapValues.get(1) 
_mv2=_mapvalues[1];
// [1041]  Dim nlst As List 
_nlst=[];
// [1042]  nlst.initialize 
_nlst.length=0;
// [1043]  For Each dict As Map In lst 
for (var _dictindex=0;_dictindex<_lst.length;_dictindex++) {
_dict=_lst[_dictindex];
// [1044]  Dim mk As String = dict.get(mv1) 
_mk=_dict[_mv1];
// [1045]  Dim mv As String = dict.get(mv2) 
_mv=_dict[_mv2];
// [1046]  Dim nm As Map = CreateMap() 
_nm={};
// [1047]  nm.Put( {248} , mk) 
_nm["id"]=_mk;
// [1048]  nm.put( {249} , mv) 
_nm["value"]=_mv;
// [1049]  nlst.Add(nm) 
_nlst.push(_nm);
// [1050]  Next 
}
// [1051]  Return nlst 
return _nlst;
// End Sub
};

// [1054] Sub List2ArrayVariable(lst As List) As String 
this.list2arrayvariable=function(_lst) {
if (_B==null) _B=this;
var _i,_sb,_fld;
// [1055]  If lst.Size = 0 Then 
if (_lst.length==0) {
// [1056]  Return {17} 
return "\"\"";
// [1057]  End If 
}
// [1058]  Dim i As Int 
_i=0;
// [1059]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [1060]  Dim fld As String 
_fld="";
// [1061]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [1062]  fld = lst.Get(0) 
_fld=_lst[0];
// [1063]  fld = {18} 
_fld="\"" + _fld + "\"";
// [1064]  sb.Append(fld) 
_sb.append(_fld);
// [1065]  For i = 1 To lst.size - 1 
for (_i=1;_i<=_lst.length-1;_i++) {
// [1066]  Dim fld As String = lst.Get(i) 
_fld=_lst[_i];
// [1067]  fld = {19} 
_fld="\"" + _fld + "\"";
// [1068]  sb.Append( {250} ).Append(fld) 
_sb.append(",").append(_fld);
// [1069]  Next 
}
// [1070]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [1074] Sub JSONValues2LowerCase(sJSON As String, props As List) As String 
this.jsonvalues2lowercase=function(_sjson,_props) {
if (_B==null) _B=this;
var _jmap,_njson;
// [1076]  Dim jmap As Map = Json2Map(sJSON) 
_jmap=_B.json2map(_sjson,_B);
// [1077]  MapValues2LowerCase(jmap, props) 
_B.mapvalues2lowercase(_jmap,_props,_B);
// [1078]  Dim nJSON As String = Map2Json(jmap) 
_njson=_B.map2json(_jmap,_B);
// [1079]  Return nJSON 
return _njson;
// End Sub
};

// [1084] Sub Map2Json(mp As Map) As String 
this.map2json=function(_mp) {
if (_B==null) _B=this;
var _json;
// [1085]  Dim JSON As BANanoJSONGenerator 
_json={};
// [1086]  JSON.Initialize(mp) 
_json=_mp;
// [1087]  Return JSON.ToString 
return JSON.stringify(_json);
// End Sub
};

// [1090] Sub Map2JsonPretty(mp As Map) As String 
this.map2jsonpretty=function(_mp) {
if (_B==null) _B=this;
var _json;
// [1091]  Dim JSON As BANanoJSONGenerator 
_json={};
// [1092]  JSON.Initialize(mp) 
_json=_mp;
// [1093]  Return JSON.ToPrettyString(4) 
return JSON.stringify(_json, null, 4);
// End Sub
};

// [1098] Sub Json2Map(strJSON As String) As Map 
this.json2map=function(_strjson) {
if (_B==null) _B=this;
var _json,_map1;
// [1099]  Dim json As BANanoJSONParser 
_json={};
// [1100]  Dim Map1 As Map 
_map1={};
// [1101]  Map1.Initialize 
_map1={};
// [1102]  Map1.clear 
_map1={};
// [1103]  Try 
try {
// [1104]  If strJSON.length > 0 Then 
if (_strjson.length>0) {
// [1105]  json.Initialize(strJSON) 
_json=JSON.parse(_strjson);
// [1106]  Map1 = json.NextObject 
_map1=_json;
// [1107]  End If 
}
// [1108]  Return Map1 
return _map1;
// [1109]  Catch 
} catch(err) {
// [1110]  Return Map1 
return _map1;
// [1111]  End Try 
}
// End Sub
};

// [1114] Sub NewDate(year As Int, month As Int, day As Int) As BANanoObject 
this.newdate=function(_year,_month,_day) {
if (_B==null) _B=this;
var _dd;
// [1115]  Dim dd As BANanoObject 
_dd=null;
// [1116]  dd.Initialize2( {251} , Array(year, month, day)) 
_dd=new Date(_year,_month,_day);
// [1117]  Return dd 
return _dd;
// End Sub
};

// [1120] Sub NewDateTime(year As Int, month As Int, day As Int, hour As Int, minute As Int) As BANanoObject 
this.newdatetime=function(_year,_month,_day,_hour,_minute) {
if (_B==null) _B=this;
var _dd;
// [1121]  Dim dd As BANanoObject 
_dd=null;
// [1122]  dd.Initialize2( {252} , Array(year, month, day, hour, minute)) 
_dd=new Date(_year,_month,_day,_hour,_minute);
// [1123]  Return dd 
return _dd;
// End Sub
};

// [1126] Sub Pad(Value As String, MaxLen As Int, PadChar As String, right As Boolean) As String 
this.pad=function(_value,_maxlen,_padchar,_right) {
if (_B==null) _B=this;
var _intordnolen,_i;
// [1127]  Dim intOrdNoLen As Int = Value.Length 
_intordnolen=_value.length;
// [1128]  Dim i As Int 
_i=0;
// [1129]  For i = 1 To (MaxLen - intOrdNoLen) Step 1 
for (_i=1;_i<=(_maxlen-_intordnolen);_i+=1) {
// [1130]  If right Then 
if (_right) {
// [1131]  Value = Value & PadChar 
_value=_value+_padchar;
// [1132]  Else 
} else {
// [1133]  Value = PadChar & Value 
_value=_padchar+_value;
// [1134]  End If 
}
// [1135]  Next 
}
// [1136]  Return Value 
return _value;
// End Sub
};

// [1139] Sub CLng(o As Object) As Long 
this.clng=function(_o) {
if (_B==null) _B=this;
// [1140]  Return Floor(o) 
return (Math.floor(_o));
// End Sub
};

// [1143] Sub CInt(o As Object) As Int 
this.cint=function(_o) {
if (_B==null) _B=this;
// [1144]  Return Floor(o) 
return (Math.floor(_o));
// End Sub
};

// [1149] Sub List2Json(mp As List) As String 
this.list2json=function(_mp) {
if (_B==null) _B=this;
var _json;
// [1150]  Dim JSON As BANanoJSONGenerator 
_json={};
// [1151]  JSON.Initialize2(mp) 
_json=_mp;
// [1152]  Return JSON.ToString 
return JSON.stringify(_json);
// End Sub
};

// [1156] Sub Json2List(strValue As String) As List 
this.json2list=function(_strvalue) {
if (_B==null) _B=this;
var _lst,_parser;
// [1157]  Dim lst As List 
_lst=[];
// [1158]  lst.Initialize 
_lst.length=0;
// [1159]  lst.clear 
_lst.length=0;
// [1160]  If strValue.Length = 0 Then 
if (_strvalue.length==0) {
// [1161]  Return lst 
return _lst;
// [1162]  End If 
}
// [1163]  Try 
try {
// [1164]  Dim parser As BANanoJSONParser 
_parser={};
// [1165]  parser.Initialize(strValue) 
_parser=JSON.parse(_strvalue);
// [1166]  Return parser.NextArray 
return _parser;
// [1167]  Catch 
} catch(err) {
// [1168]  Return lst 
return _lst;
// [1169]  End Try 
}
// End Sub
};

// [1173] Sub MapValues2LowerCase(m As Map, props As List) 
this.mapvalues2lowercase=function(_m,_props) {
if (_B==null) _B=this;
var _prop,_v;
// [1174]  For Each prop As String In props 
for (var _propindex=0;_propindex<_props.length;_propindex++) {
_prop=_props[_propindex];
// [1175]  If m.ContainsKey(prop) Then 
if ((_prop in _m)) {
// [1176]  Dim v As String = m.GetDefault(prop, {253} ) 
_v=_m[_prop]===undefined? "":_m[_prop];
// [1177]  v = v.tolowercase 
_v=_v.toLowerCase();
// [1178]  m.Put(prop,v) 
_m[_prop]=_v;
// [1179]  End If 
}
// [1180]  Next 
}
// End Sub
};

// [1183] Sub NumberSuffix(N As Double) As String 
this.numbersuffix=function(_n) {
if (_B==null) _B=this;
var _suffix,_thousands,_maxdecimalplaces,_relativeerror;
// [1184]  If N < 0 Then 
if (_n<0) {
// [1185]  Return {254} & NumberSuffix(-N) 
return "-"+_B.numbersuffix(-_n,_B);
// [1186]  End If 
}
// [1187]  Dim Suffix() As String = Array As String( {255} , {256} , {257} , {258} , {259} ) 
_suffix=["","k","M","B","T"];
// [1188]  Dim Thousands As Int = 0 
_thousands=0;
// [1189]  Do While N >= 1000 And Thousands < Suffix.Length - 1 
while (_n>=1000 && _thousands<_suffix.length-1) {
// [1190]  Thousands = Thousands + 1 
_thousands=_thousands+1;
// [1191]  N = N / 1000 
_n=_n/1000;
// [1192]  Loop 
}
// [1193]  If Thousands = 0 Then 
if (_thousands==0) {
// [1194]  Return NumberFormat2(N, 1, 2, 2, False) 
return BANano_nf2(BANano_r2f(_n, 2, 2),1,false);
// [1195]  End If 
}
// [1197]  Dim MaxDecimalPlaces As Int = 0 
_maxdecimalplaces=0;
// [1198]  Do While MaxDecimalPlaces < 5 
while (_maxdecimalplaces<5) {
// [1199]  Dim RelativeError As Double = Abs(N - Round2(N, MaxDecimalPlaces)) / N 
_relativeerror=(Math.abs(_n-(+(Math.round(_n+"e+"+_maxdecimalplaces)+"e-"+_maxdecimalplaces))))/_n;
// [1200]  If RelativeError < 0.007 Then 
if (_relativeerror<0.007) {
// [1201]  Exit 
break;
// [1202]  End If 
}
// [1203]  MaxDecimalPlaces = MaxDecimalPlaces + 1 
_maxdecimalplaces=_maxdecimalplaces+1;
// [1204]  Loop 
}
// [1205]  Return NumberFormat2(N, 1, 0, MaxDecimalPlaces, False) & Suffix(Thousands) 
return BANano_nf2(BANano_r2f(_n, 0, _maxdecimalplaces),1,false)+_suffix[_thousands];
// End Sub
};

// [1209] Sub List2Array (a_lstArgs As List) As String() 
this.list2array=function(_a_lstargs) {
if (_B==null) _B=this;
var _arrargs,_i;
// [1210]  Dim arrArgs(a_lstArgs.Size) As String 
_arrargs=[];
// [1211]  For i = 0 To arrArgs.Length - 1 
for (_i=0;_i<=_arrargs.length-1;_i++) {
// [1212]  arrArgs(i) = a_lstArgs.Get(i) 
_arrargs[_i]=_a_lstargs[_i];
// [1213]  Next 
}
// [1214]  Return arrArgs 
return _arrargs;
// End Sub
};

// [1218] Sub RandomString(iLength As Int, bLowerCase As Boolean, bUpperCase As Boolean, bNumbers As Boolean, AdditionalChars As String) As String 
this.randomstring=function(_ilength,_blowercase,_buppercase,_bnumbers,_additionalchars) {
if (_B==null) _B=this;
var _source,_sb,_i,_r;
// [1219]  Dim source As String 
_source="";
// [1220]  If bLowerCase = True Then 
if (_blowercase==true) {
// [1221]  source = source & {260} 
_source=_source+"abcdefghijklmnopqrstuvwxyz";
// [1222]  End If 
}
// [1223]  If bUpperCase = True Then 
if (_buppercase==true) {
// [1224]  source = source & {261} 
_source=_source+"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
// [1225]  End If 
}
// [1226]  If bNumbers = True Then 
if (_bnumbers==true) {
// [1227]  source = source & {262} 
_source=_source+"0123456789";
// [1228]  End If 
}
// [1229]  If AdditionalChars.Length > 0 Then 
if (_additionalchars.length>0) {
// [1230]  source = source&AdditionalChars 
_source=_source+_additionalchars;
// [1231]  End If 
}
// [1233]  Dim SB As StringBuilder 
_sb=new StringBuilder();
// [1234]  SB.Initialize 
_sb.init();
_sb.isinitialized=true;
// [1235]  For i = 1 To iLength 
for (_i=1;_i<=_ilength;_i++) {
// [1236]  Dim r As Int = Rnd(0,source.Length-1) 
_r=(Math.floor(Math.random() * (_source.length-1 - 0) + 0));
// [1237]  SB.Append(source.SubString2(r,r+1)) 
_sb.append(_source.substring(_r,_r+1));
// [1238]  Next 
}
// [1239]  Return SB.ToString 
return _sb.toString();
// End Sub
};

// [1242] Sub GeneratePassword(IntNum As Int) As String 
this.generatepassword=function(_intnum) {
if (_B==null) _B=this;
// [1243]  Return RandomString(IntNum,True,True,True, {263} ) 
return _B.randomstring(_intnum,true,true,true,"",_B);
// End Sub
};

// [1247] Sub RemDelimSB(delimiter As String, value As StringBuilder) As StringBuilder 
this.remdelimsb=function(_delimiter,_value) {
if (_B==null) _B=this;
var _delimlen;
// [1248]  If value.tostring.EndsWith(delimiter) = True Then 
if (_value.toString().endsWith(_delimiter)==true) {
// [1249]  Dim delimLen As Int = delimiter.length 
_delimlen=_delimiter.length;
// [1250]  value.Remove(value.Length-delimLen,value.Length) 
_value.remove(_value.length()-_delimlen, _value.length());
// [1251]  End If 
}
// [1252]  Return value 
return _value;
// End Sub
};

// [1256] Sub Space(HM As Int) As String 
this.space=function(_hm) {
if (_B==null) _B=this;
var _rs;
// [1257]  Dim RS As String = {264} 
_rs="";
// [1258]  Do While Len(RS) < HM 
while (_B.len(_rs,_B)<_hm) {
// [1259]  RS = RS & {265} 
_rs=_rs+" ";
// [1260]  Loop 
}
// [1261]  Return RS 
return _rs;
// End Sub
};

// [1264] Sub MakeMoney(sValue As String) As String 
this.makemoney=function(_svalue) {
if (_B==null) _B=this;
// [1265]  Try 
try {
// [1266]  If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return {266} 
if (is.null(_svalue) || is.undefined(_svalue)) { return "0.00";}
// [1267]  If sValue.Length = 0 Then Return {267} 
if (_svalue.length==0) { return "0.00";}
// [1268]  If sValue.IndexOf( {268} ) Then sValue = sValue.Replace( {269} , {270} ) 
if (_svalue.indexOf(",")) {_svalue=_svalue.split(",").join("");}
// [1269]  sValue = Val(sValue) 
_svalue=_B.val(_svalue,_B);
// [1270]  If sValue = {271} Then sValue = {272} 
if (_svalue=="0") {_svalue="000";}
// [1271]  sValue = Round2(sValue,2) 
_svalue=(+(Math.round(_svalue+"e+"+2)+"e-"+2));
// [1272]  Return NumberFormat2(sValue, 1, 2, 2, True) 
return BANano_nf2(BANano_r2f(_svalue, 2, 2),1,true);
// [1273]  Catch 
} catch(err) {
// [1274]  Return sValue 
return _svalue;
// [1275]  End Try 
}
// End Sub
};

// [1278] Sub Percentage(sValue As String) As String 
this.percentage=function(_svalue) {
if (_B==null) _B=this;
// [1279]  Try 
try {
// [1280]  If BANano.IsNull(sValue) Or BANano.IsUndefined(sValue) Then Return {273} 
if (is.null(_svalue) || is.undefined(_svalue)) { return "0.00";}
// [1281]  If sValue = {274} Then sValue = {275} 
if (_svalue=="") {_svalue="0.00";}
// [1282]  If sValue.Length = 0 Then Return {276} 
if (_svalue.length==0) { return "0.00";}
// [1283]  If sValue = {277} Then sValue = {278} 
if (_svalue=="null") {_svalue="0.00";}
// [1284]  sValue = sValue.Replace( {279} , {280} ) 
_svalue=_svalue.split(",").join("");
// [1285]  sValue = Val(sValue) 
_svalue=_B.val(_svalue,_B);
// [1286]  If sValue = {281} Then sValue = {282} 
if (_svalue=="0") {_svalue="0.00";}
// [1287]  sValue = Round2(sValue,2) 
_svalue=(+(Math.round(_svalue+"e+"+2)+"e-"+2));
// [1288]  sValue = sValue & {283} 
_svalue=_svalue+"%";
// [1289]  Return sValue 
return _svalue;
// [1290]  Catch 
} catch(err) {
// [1291]  Return sValue 
return _svalue;
// [1292]  End Try 
}
// End Sub
};

// [1295] Sub MidString(Text As String, Start As Int, lLength As Int) As String 
this.midstring=function(_text,_start,_llength) {
if (_B==null) _B=this;
// [1296]  Return Text.SubString2(Start-1,Start+lLength-1) 
return _text.substring(_start-1,_start+_llength-1);
// End Sub
};

// [1299] Sub MidString2(Text As String, Start As Int) As String 
this.midstring2=function(_text,_start) {
if (_B==null) _B=this;
// [1300]  Return Text.SubString(Start-1) 
return _text.substring(_start-1);
// End Sub
};

// [1303] Sub RightString(Text As String, lLength As Long) As String 
this.rightstring=function(_text,_llength) {
if (_B==null) _B=this;
// [1304]  If lLength>Text.Length Then lLength=Text.Length 
if (_llength>_text.length) {_llength=_text.length;}
// [1305]  Return Text.SubString(Text.Length-lLength) 
return _text.substring(_text.length-_llength);
// End Sub
};

// [1308] Sub LeftString(Text As String, lLength As Long)As String 
this.leftstring=function(_text,_llength) {
if (_B==null) _B=this;
// [1309]  If lLength>Text.Length Then lLength=Text.Length 
if (_llength>_text.length) {_llength=_text.length;}
// [1310]  Return Text.SubString2(0, lLength) 
return _text.substring(0,_llength);
// End Sub
};

// [1313] Sub ReplaceString(Text As String, sFind As String, sReplaceWith As String) As String 
this.replacestring=function(_text,_sfind,_sreplacewith) {
if (_B==null) _B=this;
// [1314]  Return Text.Replace(sFind, sReplaceWith) 
return _text.split(_sfind).join(_sreplacewith);
// End Sub
};

// [1317] Sub LongDate(sDate As String) As String 
this.longdate=function(_sdate) {
if (_B==null) _B=this;
var _dt;
// [1318]  If sDate.Length = 0 Then Return {284} 
if (_sdate.length==0) { return "";}
// [1319]  Try 
try {
// [1320]  DateTime.DateFormat = {285} 
DateTime.SetDateFormat("yyyy-MM-dd");
// [1321]  Dim dt As Long = DateTime.DateParse(sDate) 
_dt=DateTime.DateParse(_sdate);
// [1322]  DateTime.DateFormat = {286} 
DateTime.SetDateFormat("EEEE, dd MMMM yyyy");
// [1323]  Return DateTime.Date(dt) 
return DateTime.Date(_dt);
// [1324]  Catch 
} catch(err) {
// [1325]  Return {287} 
return "";
// [1326]  End Try 
}
// End Sub
};

// [1329] Sub LongDateTime(sDate As String) As String 
this.longdatetime=function(_sdate) {
if (_B==null) _B=this;
var _dt;
// [1330]  If sDate.Length = 0 Then Return {288} 
if (_sdate.length==0) { return "";}
// [1331]  Try 
try {
// [1332]  DateTime.DateFormat = {289} 
DateTime.SetDateFormat("yyyy-MM-dd HH:mm");
// [1333]  Dim dt As Long = DateTime.DateParse(sDate) 
_dt=DateTime.DateParse(_sdate);
// [1334]  DateTime.DateFormat = {290} 
DateTime.SetDateFormat("EEEE, dd MMMM yyyy HH:mm");
// [1335]  Return DateTime.Date(dt) 
return DateTime.Date(_dt);
// [1336]  Catch 
} catch(err) {
// [1337]  Return {291} 
return "";
// [1338]  End Try 
}
// End Sub
};

// [1341] private Sub TrimString(strValue As String) As String 
this.trimstring=function(_strvalue) {
if (_B==null) _B=this;
// [1342]  Return strValue.trim 
return _strvalue.trim();
// End Sub
};

// [1345] Sub LCase(Text As String) As String 
this.lcase=function(_text) {
if (_B==null) _B=this;
// [1346]  Return Text.ToLowerCase 
return _text.toLowerCase();
// End Sub
};

// [1349] Public Sub InQuotes(sValue As String) As String 
this.inquotes=function(_svalue) {
if (_B==null) _B=this;
// [1350]  Return QUOTE & sValue & QUOTE 
return "\""+_svalue+"\"";
// End Sub
};

// [1353] Sub ProperCase(myStr As String) As String 
this.propercase=function(_mystr) {
if (_B==null) _B=this;
var _x,_j,_k;
// [1354]  Try 
try {
// [1355]  If myStr.trim.length = 0 Then Return {292} 
if (_mystr.trim().length==0) { return "";}
// [1356]  Dim x As String 
_x="";
// [1357]  Dim j, k As Int 
_j=0;
_k=0;
// [1358]  myStr = myStr.tolowercase 
_mystr=_mystr.toLowerCase();
// [1359]  x = myStr.ToUpperCase.CharAt(0) 
_x=_mystr.toUpperCase().charAt(0);
// [1360]  myStr = x & myStr.SubString2(1, myStr.Length) 
_mystr=_x+_mystr.substring(1,_mystr.length);
// [1361]  For j = 1 To myStr.Length 
for (_j=1;_j<=_mystr.length;_j++) {
// [1362]  k = myStr.IndexOf2( {293} , j + 1) 
_k=_mystr.indexOf(" ",_j+1);
// [1363]  If k = -1 Then Exit 
if (_k==-1) {break;}
// [1364]  x = myStr.ToUpperCase.CharAt(k + 1) 
_x=_mystr.toUpperCase().charAt(_k+1);
// [1365]  myStr = myStr.SubString2(0, k + 1) & x & myStr.SubString2(k + 2, myStr.Length) 
_mystr=_mystr.substring(0,_k+1)+_x+_mystr.substring(_k+2,_mystr.length);
// [1366]  Next 
}
// [1367]  Return myStr 
return _mystr;
// [1368]  Catch 
} catch(err) {
// [1369]  Return myStr 
return _mystr;
// [1370]  End Try 
}
// End Sub
};

// [1375] Sub MapKeysLowerCaseSingle(m As Map) As Map 
this.mapkeyslowercasesingle=function(_m) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [1376]  Dim nm As Map = CreateMap() 
_nm={};
// [1377]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1378]  Dim v As Object = m.Get(k) 
_v=_m[_k];
// [1379]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1380]  nm.Put(k, v) 
_nm[_k]=_v;
// [1381]  Next 
}
// [1382]  Return nm 
return _nm;
// End Sub
};

// [1386] Sub MapKeysLowerCaseList(lst As List) As List 
this.mapkeyslowercaselist=function(_lst) {
if (_B==null) _B=this;
var _nl,_rec;
// [1387]  Dim nl As List 
_nl=[];
// [1388]  nl.Initialize 
_nl.length=0;
// [1389]  For Each rec As Map In lst 
for (var _recindex=0;_recindex<_lst.length;_recindex++) {
_rec=_lst[_recindex];
// [1390]  rec = MapKeysLowerCaseSingle(rec) 
_rec=_B.mapkeyslowercasesingle(_rec,_B);
// [1391]  nl.Add(rec) 
_nl.push(_rec);
// [1392]  Next 
}
// [1393]  Return nl 
return _nl;
// End Sub
};

// [1398] Sub GetMapValues(sourceMap As Map) As List 
this.getmapvalues=function(_sourcemap) {
if (_B==null) _B=this;
var _listofvalues,_icnt,_itot,_value;
// [1399]  Dim listOfValues As List 
_listofvalues=[];
// [1400]  listOfValues.Initialize 
_listofvalues.length=0;
// [1401]  Dim iCnt As Int 
_icnt=0;
// [1402]  Dim iTot As Int 
_itot=0;
// [1403]  iTot = sourceMap.Size - 1 
_itot=Object.keys(_sourcemap).length-1;
// [1404]  For iCnt = 0 To iTot 
for (_icnt=0;_icnt<=_itot;_icnt++) {
// [1405]  Dim value As Object = sourceMap.GetValueAt(iCnt) 
_value=banano_getB4JValueAt(_sourcemap,_icnt);
// [1406]  listOfValues.Add(value) 
_listofvalues.push(_value);
// [1407]  Next 
}
// [1408]  Return listOfValues 
return _listofvalues;
// End Sub
};

// [1412] Sub GetMapKeys(sourceMap As Map) As List 
this.getmapkeys=function(_sourcemap) {
if (_B==null) _B=this;
var _listofvalues,_icnt,_itot,_value;
// [1413]  Dim listOfValues As List 
_listofvalues=[];
// [1414]  listOfValues.Initialize 
_listofvalues.length=0;
// [1415]  Dim iCnt As Int 
_icnt=0;
// [1416]  Dim iTot As Int 
_itot=0;
// [1417]  iTot = sourceMap.Size - 1 
_itot=Object.keys(_sourcemap).length-1;
// [1418]  For iCnt = 0 To iTot 
for (_icnt=0;_icnt<=_itot;_icnt++) {
// [1419]  Dim value As Object = sourceMap.GetKeyAt(iCnt) 
_value=banano_getB4JKeyAt(_sourcemap,_icnt);
// [1420]  listOfValues.Add(value) 
_listofvalues.push(_value);
// [1421]  Next 
}
// [1422]  Return listOfValues 
return _listofvalues;
// End Sub
};

// [1427] Public Sub GetNumbers(value As String) As String 
this.getnumbers=function(_value) {
if (_B==null) _B=this;
var _sout,_mout,_slen,_i;
// [1428]  value = CStr(value) 
_value=_B.cstr(_value,_B);
// [1429]  Try 
try {
// [1430]  value = value.Trim 
_value=_value.trim();
// [1431]  Dim sout As String = {294} 
_sout="";
// [1432]  Dim mout As String = {295} 
_mout="";
// [1433]  Dim slen As Int = value.Length 
_slen=_value.length;
// [1434]  Dim i As Int = 0 
_i=0;
// [1435]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [1436]  mout = value.CharAt(i) 
_mout=_value.charAt(_i);
// [1437]  If InStr( {296} , mout) <> -1 Then 
if (_B.instr("0123456789.-",_mout,_B)!=-1) {
// [1438]  sout = sout & mout 
_sout=_sout+_mout;
// [1439]  End If 
}
// [1440]  Next 
}
// [1441]  Return sout 
return _sout;
// [1442]  Catch 
} catch(err) {
// [1443]  Return value 
return _value;
// [1444]  End Try 
}
// End Sub
};

// [1448] Sub SortMap(m As Map) As Map 
this.sortmap=function(_m) {
if (_B==null) _B=this;
var _nm,_lst,_strkey,_strvalue;
// [1449]  Try 
try {
// [1450]  Dim nm As Map 
_nm={};
// [1451]  nm.Initialize 
_nm={};
// [1452]  Dim lst As List 
_lst=[];
// [1453]  lst.Initialize 
_lst.length=0;
// [1454]  For Each strkey As String In m.Keys 
var _strkeyKeys = Object.keys(_m);
for (var _strkeyindex=0;_strkeyindex<_strkeyKeys.length;_strkeyindex++) {
_strkey=_strkeyKeys[_strkeyindex];
// [1455]  lst.Add(strkey) 
_lst.push(_strkey);
// [1456]  Next 
}
// [1458]  lst.Sort(True) 
if (!isNaN(parseFloat(_lst[0])) && isFinite(_lst[0])) {
_lst.sort(function(a, b){return a - b});
} else {
_lst.sort();
};
// [1459]  For Each strkey As String In lst 
for (var _strkeyindex=0;_strkeyindex<_lst.length;_strkeyindex++) {
_strkey=_lst[_strkeyindex];
// [1460]  Dim strvalue As Object = m.Get(strkey) 
_strvalue=_m[_strkey];
// [1461]  nm.Put(strkey,strvalue) 
_nm[_strkey]=_strvalue;
// [1462]  Next 
}
// [1463]  Return nm 
return _nm;
// [1464]  Catch 
} catch(err) {
// [1465]  Return m 
return _m;
// [1466]  End Try 
}
// End Sub
};

// [1470] Sub MergeMaps(oldm As Map, newm As Map) As Map 
this.mergemaps=function(_oldm,_newm) {
if (_B==null) _B=this;
var _om,_k,_v;
// [1471]  Dim om As Map = CreateMap() 
_om={};
// [1472]  For Each k As String In oldm.Keys 
var _kKeys = Object.keys(_oldm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1473]  Dim v As Object = oldm.Get(k) 
_v=_oldm[_k];
// [1474]  om.Put(k, v) 
_om[_k]=_v;
// [1475]  Next 
}
// [1477]  For Each k As String In newm.Keys 
var _kKeys = Object.keys(_newm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1478]  Dim v As Object = newm.Get(k) 
_v=_newm[_k];
// [1479]  om.Put(k, v) 
_om[_k]=_v;
// [1480]  Next 
}
// [1481]  Return om 
return _om;
// End Sub
};

// [1485] Sub List2MapSimple(lst As List, bSort As Boolean) As Map 
this.list2mapsimple=function(_lst,_bsort) {
if (_B==null) _B=this;
var _nm,_k;
// [1486]  If bSort Then lst.Sort(True) 
if (_bsort) {if (!isNaN(parseFloat(_lst[0])) && isFinite(_lst[0])) {
_lst.sort(function(a, b){return a - b});
} else {
_lst.sort();
}
;}
// [1487]  Dim nm As Map = CreateMap() 
_nm={};
// [1488]  For Each k As String In lst 
for (var _kindex=0;_kindex<_lst.length;_kindex++) {
_k=_lst[_kindex];
// [1489]  nm.Put(k, k) 
_nm[_k]=_k;
// [1490]  Next 
}
// [1491]  Return nm 
return _nm;
// End Sub
};

// [1496] Sub List2Options(lst As List, keyName As String, valueName As String) As Map 
this.list2options=function(_lst,_keyname,_valuename) {
if (_B==null) _B=this;
var _recs,_k,_nrec;
// [1497]  Dim recs As List 
_recs=[];
// [1498]  recs.Initialize 
_recs.length=0;
// [1499]  For Each k As String In lst 
for (var _kindex=0;_kindex<_lst.length;_kindex++) {
_k=_lst[_kindex];
// [1500]  Dim nrec As Map = CreateMap() 
_nrec={};
// [1501]  nrec.Put(keyName, k) 
_nrec[_keyname]=_k;
// [1502]  nrec.Put(valueName, k) 
_nrec[_valuename]=_k;
// [1503]  recs.Add(nrec) 
_recs.push(_nrec);
// [1504]  Next 
}
// [1505]  Return recs 
return _recs;
// End Sub
};

// [1509] Sub List2Map(lst As List, keyName As String, valueName As String) As Map 
this.list2map=function(_lst,_keyname,_valuename) {
if (_B==null) _B=this;
// [1510]  Return List2Options(lst, keyName, valueName) 
return _B.list2options(_lst,_keyname,_valuename,_B);
// End Sub
};

// [1514] Sub Map2Options(m As Map, keyName As String, valueName As String) As List 
this.map2options=function(_m,_keyname,_valuename) {
if (_B==null) _B=this;
var _recs,_k,_v,_nrec;
// [1515]  Dim recs As List 
_recs=[];
// [1516]  recs.Initialize 
_recs.length=0;
// [1517]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1518]  Dim v As Object = m.Get(k) 
_v=_m[_k];
// [1519]  Dim nrec As Map = CreateMap() 
_nrec={};
// [1520]  nrec.Put(keyName, k) 
_nrec[_keyname]=_k;
// [1521]  nrec.Put(valueName, v) 
_nrec[_valuename]=_v;
// [1522]  recs.Add(nrec) 
_recs.push(_nrec);
// [1523]  Next 
}
// [1524]  Return recs 
return _recs;
// End Sub
};

// [1528] Sub MapClone(oldMap As Map) As Map 
this.mapclone=function(_oldmap) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [1529]  Dim nm As Map = CreateMap() 
_nm={};
// [1530]  For Each k As String In oldMap.keys 
var _kKeys = Object.keys(_oldmap);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1531]  Dim v As Object = oldMap.Get(k) 
_v=_oldmap[_k];
// [1532]  nm.Put(k, v) 
_nm[_k]=_v;
// [1533]  Next 
}
// [1534]  Return nm 
return _nm;
// End Sub
};

// [1538] Sub MapCloneSwap(oldMap As Map) As Map 
this.mapcloneswap=function(_oldmap) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [1539]  Dim nm As Map = CreateMap() 
_nm={};
// [1540]  For Each k As String In oldMap.keys 
var _kKeys = Object.keys(_oldmap);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1541]  Dim v As Object = oldMap.Get(k) 
_v=_oldmap[_k];
// [1542]  nm.Put(v, k) 
_nm[_v]=_k;
// [1543]  Next 
}
// [1544]  Return nm 
return _nm;
// End Sub
};

// [1548] Sub SetBackgroundImage(elid As String, url As String) 
this.setbackgroundimage=function(_elid,_url) {
if (_B==null) _B=this;
// [1549]  elid = elid.ToLowerCase 
_elid=_elid.toLowerCase();
// [1550]  elid = elid.Replace( {297} , {298} ) 
_elid=_elid.split("#").join("");
// [1551]  BANano.GetElement( {20} ).SetStyle(BANano.ToJson(CreateMap( {299} : {21} , {300} : {301} ))) 
u("#" + _elid + "").css(JSON.parse(JSON.stringify({"background-image":"url('" + _url + "')", "background-size":"100% 100%"})));
// End Sub
};

// [1555] Sub JSONSetProperty(sjson As String, updates As Map) As String 
this.jsonsetproperty=function(_sjson,_updates) {
if (_B==null) _B=this;
var _m,_k,_v,_sout;
// [1556]  Dim m As Map = BANano.FromJson(sjson) 
_m=JSON.parse(_sjson);
// [1557]  For Each k As String In updates.Keys 
var _kKeys = Object.keys(_updates);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1558]  Dim v As Object = updates.Get(k) 
_v=_updates[_k];
// [1559]  m.Put(k, v) 
_m[_k]=_v;
// [1560]  Next 
}
// [1561]  Dim sout As String = BANano.ToJson(m) 
_sout=JSON.stringify(_m);
// [1562]  Return sout 
return _sout;
// End Sub
};

// [1566] Sub EQOperators(sm As Map) As List 'ignore 
this.eqoperators=function(_sm) {
if (_B==null) _B=this;
var _nl,_k;
// [1567]  Dim nl As List 
_nl=[];
// [1568]  nl.initialize 
_nl.length=0;
// [1569]  For Each k As String In sm.Keys 
var _kKeys = Object.keys(_sm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1570]  nl.Add( {302} ) 
_nl.push("=");
// [1571]  Next 
}
// [1572]  Return nl 
return _nl;
// End Sub
};

// [1577] Sub BR As String 
this.br=function() {
if (_B==null) _B=this;
// [1578]  Return {303} 
return "<br>";
// End Sub
};

// [1582] Sub HR As String 
this.hr=function() {
if (_B==null) _B=this;
// [1583]  Return {304} 
return "<hr>";
// End Sub
};

// [1589] Sub MakePx(sValue As String) As String 
this.makepx=function(_svalue) {
if (_B==null) _B=this;
// [1590]  sValue = sValue.trim 
_svalue=_svalue.trim();
// [1591]  If sValue.EndsWith( {305} ) Then 
if (_svalue.endsWith("%")) {
// [1592]  Return sValue 
return _svalue;
// [1593]  else If sValue.EndsWith( {306} ) Then 
} else if (_svalue.endsWith("vm")) {
// [1594]  Return sValue 
return _svalue;
// [1595]  else If sValue.EndsWith( {307} ) Then 
} else if (_svalue.endsWith("px")) {
// [1596]  Return sValue 
return _svalue;
// [1597]  else If sValue.EndsWith( {308} ) Then 
} else if (_svalue.endsWith("cm")) {
// [1598]  Return sValue 
return _svalue;
// [1599]  else If sValue.EndsWith( {309} ) Then 
} else if (_svalue.endsWith("mm")) {
// [1600]  Return sValue 
return _svalue;
// [1601]  else If sValue.EndsWith( {310} ) Then 
} else if (_svalue.endsWith("in")) {
// [1602]  Return sValue 
return _svalue;
// [1603]  else If sValue.EndsWith( {311} ) Then 
} else if (_svalue.endsWith("pt")) {
// [1604]  Return sValue 
return _svalue;
// [1605]  else If sValue.EndsWith( {312} ) Then 
} else if (_svalue.endsWith("pc")) {
// [1606]  Return sValue 
return _svalue;
// [1607]  else If sValue.EndsWith( {313} ) Then 
} else if (_svalue.endsWith("em")) {
// [1608]  Return sValue 
return _svalue;
// [1609]  else If sValue.EndsWith( {314} ) Then 
} else if (_svalue.endsWith("ex")) {
// [1610]  Return sValue 
return _svalue;
// [1611]  else If sValue.EndsWith( {315} ) Then 
} else if (_svalue.endsWith("ch")) {
// [1612]  Return sValue 
return _svalue;
// [1613]  else If sValue.EndsWith( {316} ) Then 
} else if (_svalue.endsWith("rem")) {
// [1614]  Return sValue 
return _svalue;
// [1615]  else If sValue.EndsWith( {317} ) Then 
} else if (_svalue.endsWith("vw")) {
// [1616]  Return sValue 
return _svalue;
// [1617]  else If sValue.EndsWith( {318} ) Then 
} else if (_svalue.endsWith("vh")) {
// [1618]  Return sValue 
return _svalue;
// [1619]  else If sValue.EndsWith( {319} ) Then 
} else if (_svalue.endsWith("vmin")) {
// [1620]  Return sValue 
return _svalue;
// [1621]  else If sValue.EndsWith( {320} ) Then 
} else if (_svalue.endsWith("vmax")) {
// [1622]  Return sValue 
return _svalue;
// [1623]  else If sValue.EndsWith( {321} ) Then 
} else if (_svalue.endsWith(";")) {
// [1624]  Return sValue 
return _svalue;
// [1625]  Else 
} else {
// [1626]  sValue = sValue.Replace( {322} , {323} ) 
_svalue=_svalue.split("px").join("");
// [1627]  sValue = {22} 
_svalue="" + _svalue + "px";
// [1628]  If sValue = {324} Then sValue = {325} 
if (_svalue=="px") {_svalue="";}
// [1629]  Return sValue 
return _svalue;
// [1630]  End If 
}
// End Sub
};

// [1635] Sub SaveText2File(content As String, fileName As String) 
this.savetext2file=function(_content,_filename) {
if (_B==null) _B=this;
var _fc,_blob;
// [1636]  Dim fc As List 
_fc=[];
// [1637]  fc.Initialize 
_fc.length=0;
// [1638]  fc.Add(content) 
_fc.push(_content);
// [1639]  Dim blob As BANanoObject 
_blob=null;
// [1640]  blob.Initialize2( {326} ,Array(fc, CreateMap( {327} : {328} ))) 
_blob=new Blob(_fc,{"type":"text/plain;charset=utf-8"});
// [1641]  BANano.RunJavascriptMethod( {329} ,Array(blob,fileName)) 
BANanoExec("saveAs", window, _blob,_filename);
// End Sub
};

// [1644] Sub SaveBinaryArray2File(iUint8Array As Object, dbName As String) 
this.savebinaryarray2file=function(_iuint8array,_dbname) {
if (_B==null) _B=this;
var _fc,_blob;
// [1645]  Dim fc As List 
_fc=[];
// [1646]  fc.Initialize 
_fc.length=0;
// [1647]  fc.Add(iUint8Array) 
_fc.push(_iuint8array);
// [1649]  Dim blob As BANanoObject 
_blob=null;
// [1650]  blob.Initialize2( {330} ,Array(fc, CreateMap( {331} : {332} ))) 
_blob=new Blob(_fc,{"type":"application/octet-stream"});
// [1651]  BANano.RunJavascriptMethod( {333} ,Array(blob, dbName)) 
BANanoExec("saveAs", window, _blob,_dbname);
// End Sub
};

// [1655] Sub MvCount(strMV As String, Delimiter As String) As Int 
this.mvcount=function(_strmv,_delimiter) {
if (_B==null) _B=this;
var _spvalues;
// [1656]  Dim spValues() As String = BANano.Split(Delimiter,strMV) 
_spvalues=_strmv.split(_delimiter);
// [1657]  Return spValues.Length 
return _spvalues.length;
// End Sub
};

// [1661] Sub AuditTrail(oldM As Map, newM As Map) As Map 
this.audittrail=function(_oldm,_newm) {
if (_B==null) _B=this;
var _df,_k,_v,_nv,_ov;
// [1662]  Dim df As Map = CreateMap() 
_df={};
// [1663]  For Each k As String In oldM.Keys 
var _kKeys = Object.keys(_oldm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1664]  Dim v As Object = oldM.Get(k) 
_v=_oldm[_k];
// [1665]  If newM.ContainsKey(k) Then 
if ((_k in _newm)) {
// [1666]  Dim nv As Object = newM.Get(k) 
_nv=_newm[_k];
// [1667]  If v <> nv Then 
if (_v!=_nv) {
// [1668]  df.Put(k, nv) 
_df[_k]=_nv;
// [1669]  End If 
}
// [1670]  End If 
}
// [1671]  Next 
}
// [1672]  For Each k As String In newM.Keys 
var _kKeys = Object.keys(_newm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1673]  Dim v As Object = newM.Get(k) 
_v=_newm[_k];
// [1674]  If oldM.ContainsKey(k) Then 
if ((_k in _oldm)) {
// [1675]  Dim ov As Object = oldM.Get(k) 
_ov=_oldm[_k];
// [1676]  If v <> ov Then 
if (_v!=_ov) {
// [1677]  df.Put(k, v) 
_df[_k]=_v;
// [1678]  End If 
}
// [1679]  Else 
} else {
// [1680]  df.Put(k, v) 
_df[_k]=_v;
// [1681]  End If 
}
// [1682]  Next 
}
// [1683]  Return df 
return _df;
// End Sub
};

// [1686] Public Sub TimeNow() As String 
this.timenow=function() {
if (_B==null) _B=this;
var _lnow,_dt;
// [1687]  Dim lNow As Long 
_lnow=0;
// [1688]  Dim dt As String 
_dt="";
// [1689]  lNow = DateTime.Now 
_lnow=DateTime.Now();
// [1690]  DateTime.DateFormat = {334} 
DateTime.SetDateFormat("HH:mm");
// [1691]  dt = DateTime.Date(lNow) 
_dt=DateTime.Date(_lnow);
// [1692]  Return dt 
return _dt;
// End Sub
};

// [1695] Public Sub DateNow() As String 
this.datenow=function() {
if (_B==null) _B=this;
var _lnow,_dt;
// [1696]  Dim lNow As Long 
_lnow=0;
// [1697]  Dim dt As String 
_dt="";
// [1698]  lNow = DateTime.Now 
_lnow=DateTime.Now();
// [1699]  DateTime.DateFormat = {335} 
DateTime.SetDateFormat("yyyy-MM-dd");
// [1700]  dt = DateTime.Date(lNow) 
_dt=DateTime.Date(_lnow);
// [1701]  Return dt 
return _dt;
// End Sub
};

// [1704] Public Sub DateTimeNow() As String 
this.datetimenow=function() {
if (_B==null) _B=this;
var _lnow,_dt;
// [1705]  Dim lNow As Long 
_lnow=0;
// [1706]  Dim dt As String 
_dt="";
// [1707]  lNow = DateTime.Now 
_lnow=DateTime.Now();
// [1708]  DateTime.DateFormat = {336} 
DateTime.SetDateFormat("yyyy-MM-dd HH:mm");
// [1709]  dt = DateTime.Date(lNow) 
_dt=DateTime.Date(_lnow);
// [1710]  Return dt 
return _dt;
// End Sub
};

// [1714] Sub LongDateTimeToday() As String 
this.longdatetimetoday=function() {
if (_B==null) _B=this;
var _dt;
// [1715]  DateTime.DateFormat = {337} 
DateTime.SetDateFormat("yyyy-MM-dd HH:mm");
// [1716]  Dim dt As Long = DateTime.now 
_dt=DateTime.Now();
// [1717]  DateTime.DateFormat = {338} 
DateTime.SetDateFormat("dd/MM/yyyy, HH:mm");
// [1718]  Return DateTime.Date(dt) 
return DateTime.Date(_dt);
// End Sub
};

// [1721] Sub CopyMap(source As Map, keys As List) As Map 
this.copymap=function(_source,_keys) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [1722]  Dim nm As Map = CreateMap() 
_nm={};
// [1723]  If keys.Get(0) = {339} Then 
if (_keys[0]=="*") {
// [1724]  For Each k As String In source.Keys 
var _kKeys = Object.keys(_source);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1725]  Dim v As Object = source.Get(k) 
_v=_source[_k];
// [1726]  nm.Put(k, v) 
_nm[_k]=_v;
// [1727]  Next 
}
// [1728]  Else 
} else {
// [1729]  For Each k As String In keys 
for (var _kindex=0;_kindex<_keys.length;_kindex++) {
_k=_keys[_kindex];
// [1730]  Dim v As Object = source.Get(k) 
_v=_source[_k];
// [1731]  nm.Put(k, v) 
_nm[_k]=_v;
// [1732]  Next 
}
// [1733]  End If 
}
// [1734]  Return nm 
return _nm;
// End Sub
};

// [1738] Sub GetFileParentPath(Path As String) As String 
this.getfileparentpath=function(_path) {
if (_B==null) _B=this;
var _path1,_l;
// [1739]  Dim Path1 As String 
_path1="";
// [1740]  Dim L As Int 
_l=0;
// [1741]  If Path = {340} Then 
if (_path=="/") {
// [1742]  Return {341} 
return "/";
// [1743]  End If 
}
// [1744]  L = Path.LastIndexOf( {342} ) 
_l=_path.lastIndexOf("/");
// [1745]  If L = Path.Length - 1 Then 
if (_l==_path.length-1) {
// [1747]  Path1 = Path.SubString2(0,L) 
_path1=_path.substring(0,_l);
// [1748]  Else 
} else {
// [1749]  Path1 = Path 
_path1=_path;
// [1750]  End If 
}
// [1751]  L = Path.LastIndexOf( {343} ) 
_l=_path.lastIndexOf("/");
// [1752]  If L = 0 Then 
if (_l==0) {
// [1753]  L = 1 
_l=1;
// [1754]  End If 
}
// [1755]  Return Path1.SubString2(0,L) 
return _path1.substring(0,_l);
// End Sub
};

// [1758] Sub GetFileExt(FullPath As String) As String 
this.getfileext=function(_fullpath) {
if (_B==null) _B=this;
// [1759]  Return FullPath.SubString(FullPath.LastIndexOf( {344} )+1) 
return _fullpath.substring(_fullpath.lastIndexOf(".")+1);
// End Sub
};

// [1762] Sub SetPrefix(prefix As String, target As Map) As Map 
this.setprefix=function(_prefix,_target) {
if (_B==null) _B=this;
var _nm,_mk,_mv,_mk1;
// [1763]  Dim nm As Map = CreateMap() 
_nm={};
// [1764]  For Each mk As String In target.Keys 
var _mkKeys = Object.keys(_target);
for (var _mkindex=0;_mkindex<_mkKeys.length;_mkindex++) {
_mk=_mkKeys[_mkindex];
// [1765]  Dim mv As Object = target.Get(mk) 
_mv=_target[_mk];
// [1766]  Dim mk1 As String = prefix & {345} & mk 
_mk1=_prefix+"_"+_mk;
// [1767]  nm.Put(mk1,mv) 
_nm[_mk1]=_mv;
// [1768]  Next 
}
// [1769]  Return nm 
return _nm;
// End Sub
};

// [1773] Sub CStr(o As Object) As String 
this.cstr=function(_o) {
if (_B==null) _B=this;
// [1774]  If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = {346} 
if (is.undefined(_o) || is.undefined(_o)) {_o="";}
// [1775]  Return {347} & o 
return ""+_o;
// End Sub
};

// [1779] Sub FixRecords(recs As List, trimThese As List, numThese As List, boolThese As List, dateThese As List, dblThese As List) 
this.fixrecords=function(_recs,_trimthese,_numthese,_boolthese,_datethese,_dblthese) {
if (_B==null) _B=this;
var _rtot,_rcnt,_rec,_nrec,_k,_v;
// [1780]  Dim rTot As Int = recs.Size - 1 
_rtot=_recs.length-1;
// [1781]  Dim rCnt As Int 
_rcnt=0;
// [1782]  For rCnt = 0 To rTot 
for (_rcnt=0;_rcnt<=_rtot;_rcnt++) {
// [1783]  Dim rec As Map = recs.Get(rCnt) 
_rec=_recs[_rcnt];
// [1785]  Dim nrec As Map = CreateMap() 
_nrec={};
// [1786]  For Each k As String In rec.keys 
var _kKeys = Object.keys(_rec);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1787]  Dim v As Object = rec.Get(k) 
_v=_rec[_k];
// [1788]  k = k.ToLowerCase 
_k=_k.toLowerCase();
// [1789]  nrec.Put(k, v) 
_nrec[_k]=_v;
// [1790]  Next 
}
// [1791]  If dateThese <> Null Then MakeDate(nrec,dateThese) 
if (_datethese!=null) {_B.makedate(_nrec,_datethese,_B);}
// [1792]  If trimThese <> Null Then MakeTrim(nrec,trimThese) 
if (_trimthese!=null) {_B.maketrim(_nrec,_trimthese,_B);}
// [1793]  If numThese <> Null Then MakeInteger(nrec, numThese) 
if (_numthese!=null) {_B.makeinteger(_nrec,_numthese,_B);}
// [1794]  If dblThese <> Null Then MakeDouble(nrec, dblThese) 
if (_dblthese!=null) {_B.makedouble(_nrec,_dblthese,_B);}
// [1795]  If boolThese <> Null Then MakeBoolean(nrec, boolThese) 
if (_boolthese!=null) {_B.makeboolean(_nrec,_boolthese,_B);}
// [1796]  recs.Set(rCnt, nrec) 
_recs[_rcnt]=_nrec;
// [1797]  Next 
}
// End Sub
};

// [1800] Sub MakeInteger(m As Map, xkeys As List) 
this.makeinteger=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1801]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1802]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1803]  Dim v As String = m.GetDefault(k, {348} ) 
_v=_m[_k]===undefined? "":_m[_k];
// [1804]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1805]  v = v.trim 
_v=_v.trim();
// [1806]  If v = {349} Then v = {350} 
if (_v=="") {_v="0";}
// [1807]  v = BANano.parseInt(v) 
_v=parseInt(_v);
// [1808]  m.Put(k, v) 
_m[_k]=_v;
// [1809]  End If 
}
// [1810]  Next 
}
// End Sub
};

// [1813] Sub MakeDouble(m As Map, xkeys As List) 
this.makedouble=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1814]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1815]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1816]  Dim v As String = m.GetDefault(k, {351} ) 
_v=_m[_k]===undefined? "":_m[_k];
// [1817]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1818]  v = v.trim 
_v=_v.trim();
// [1819]  If v = {352} Then v = {353} 
if (_v=="") {_v="0";}
// [1820]  v = BANano.parseFloat(v) 
_v=parseFloat(_v);
// [1821]  m.Put(k, v) 
_m[_k]=_v;
// [1822]  End If 
}
// [1823]  Next 
}
// End Sub
};

// [1826] Sub MakeYesNo(m As Map, xkeys As List) 
this.makeyesno=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1827]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1828]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1829]  Dim v As String = m.GetDefault(k, {354} ) 
_v=_m[_k]===undefined? "No":_m[_k];
// [1830]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1831]  v = v.trim 
_v=_v.trim();
// [1832]  Select Case v 
switch ("" + _v) {
// [1833]  Case {355} , {356} , {357} , {358} ,False,0, {359} , {360} 
case "" + "":
case "" + "0":
case "" + "false":
case "" + "False":
case "" + false:
case "" + 0:
case "" + "no":
case "" + "No":
// [1834]  m.Put(k, {361} ) 
_m[_k]="No";
// [1835]  Case {362} , {363} , {364} ,True,1, {365} , {366} 
break;
case "" + "1":
case "" + "true":
case "" + "True":
case "" + true:
case "" + 1:
case "" + "yes":
case "" + "Yes":
// [1836]  m.Put(k, {367} ) 
_m[_k]="Yes";
// [1837]  End Select 
break;
}
// [1838]  End If 
}
// [1839]  Next 
}
// End Sub
};

// [1844] Sub MakeBoolean(m As Map, xkeys As List) 
this.makeboolean=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1845]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1846]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1847]  Dim v As String = m.GetDefault(k, {368} ) 
_v=_m[_k]===undefined? "0":_m[_k];
// [1848]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1849]  v = v.trim 
_v=_v.trim();
// [1850]  Select Case v 
switch ("" + _v) {
// [1851]  Case {369} , {370} , {371} , {372} ,False,0, {373} , {374} 
case "" + "":
case "" + "0":
case "" + "false":
case "" + "False":
case "" + false:
case "" + 0:
case "" + "no":
case "" + "No":
// [1852]  m.Put(k, False) 
_m[_k]=false;
// [1853]  Case {375} , {376} , {377} ,True,1, {378} , {379} 
break;
case "" + "1":
case "" + "true":
case "" + "True":
case "" + true:
case "" + 1:
case "" + "yes":
case "" + "Yes":
// [1854]  m.Put(k, True) 
_m[_k]=true;
// [1855]  End Select 
break;
}
// [1856]  End If 
}
// [1857]  Next 
}
// End Sub
};

// [1861] Sub MakeTrim(m As Map, xkeys As List) 
this.maketrim=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1862]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1863]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1864]  Dim v As String = m.GetDefault(k, {380} ) 
_v=_m[_k]===undefined? "":_m[_k];
// [1865]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1866]  v = v.trim 
_v=_v.trim();
// [1867]  m.Put(k, v) 
_m[_k]=_v;
// [1868]  End If 
}
// [1869]  Next 
}
// End Sub
};

// [1872] Sub MakeLowerCase(m As Map) As Map 
this.makelowercase=function(_m) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [1873]  Dim nm As Map = CreateMap() 
_nm={};
// [1874]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1875]  Dim v As Object = m.Get(k) 
_v=_m[_k];
// [1876]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1877]  nm.Put(k, v) 
_nm[_k]=_v;
// [1878]  Next 
}
// [1879]  Return nm 
return _nm;
// End Sub
};

// [1882] Sub MakeDate(m As Map, xkeys As List) 
this.makedate=function(_m,_xkeys) {
if (_B==null) _B=this;
var _k,_v;
// [1883]  For Each k As String In xkeys 
for (var _kindex=0;_kindex<_xkeys.length;_kindex++) {
_k=_xkeys[_kindex];
// [1884]  If m.ContainsKey(k) Then 
if ((_k in _m)) {
// [1885]  Dim v As String = m.GetDefault(k, {381} ) 
_v=_m[_k]===undefined? "":_m[_k];
// [1886]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [1887]  v = v.trim 
_v=_v.trim();
// [1888]  v = MvField(v,1, {382} ) 
_v=_B.mvfield(_v,1," ",_B);
// [1889]  m.Put(k, v) 
_m[_k]=_v;
// [1890]  End If 
}
// [1891]  Next 
}
// End Sub
};

// [1895] Sub CreateList(Delimiter As String, Values As String) As List 
this.createlist=function(_delimiter,_values) {
if (_B==null) _B=this;
var _newlst,_spv;
// [1896]  Dim newLst As List 
_newlst=[];
// [1897]  newLst.Initialize 
_newlst.length=0;
// [1898]  If Values.length > 0 Then 
if (_values.length>0) {
// [1899]  Dim spV As List = StrParse(Delimiter,Values) 
_spv=_B.strparse(_delimiter,_values,_B);
// [1900]  newLst.AddAll(spV) 
_newlst.splice(_newlst.length,0,..._spv);
// [1901]  End If 
}
// [1902]  Return newLst 
return _newlst;
// End Sub
};

// [1906] Sub MvField(sValue As String, iPosition As Int, Delimiter As String) As String 
this.mvfield=function(_svalue,_iposition,_delimiter) {
if (_B==null) _B=this;
var _xpos,_mvalues,_tvalues,_sb,_startcnt;
// [1907]  If sValue.Length = 0 Then Return {383} 
if (_svalue.length==0) { return "";}
// [1908]  Dim xPos As Int = sValue.IndexOf(Delimiter) 
_xpos=_svalue.indexOf(_delimiter);
// [1909]  If xPos = -1 Then Return sValue 
if (_xpos==-1) { return _svalue;}
// [1910]  Dim mValues As List = StrParse(Delimiter,sValue) 
_mvalues=_B.strparse(_delimiter,_svalue,_B);
// [1911]  Dim tValues As Int 
_tvalues=0;
// [1912]  tValues = mValues.size -1 
_tvalues=_mvalues.length-1;
// [1913]  Select Case iPosition 
switch ("" + _iposition) {
// [1914]  Case -1 
case "" + -1:
// [1915]  Return mValues.get(tValues) 
return _mvalues[_tvalues];
// [1916]  Case -2 
case "" + -2:
// [1917]  Return mValues.get(tValues - 1) 
return _mvalues[_tvalues-1];
// [1918]  Case -3 
case "" + -3:
// [1919]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [1920]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [1921]  Dim startcnt As Int 
_startcnt=0;
// [1922]  sb.Append(mValues.Get(1)) 
_sb.append(_mvalues[1]);
// [1923]  For startcnt = 2 To tValues 
for (_startcnt=2;_startcnt<=_tvalues;_startcnt++) {
// [1924]  sb.Append(Delimiter) 
_sb.append(_delimiter);
// [1925]  sb.Append(mValues.get(startcnt)) 
_sb.append(_mvalues[_startcnt]);
// [1926]  Next 
}
// [1927]  Return sb.tostring 
return _sb.toString();
// [1928]  Case Else 
default:
// [1929]  iPosition = iPosition - 1 
_iposition=_iposition-1;
// [1930]  If iPosition <= -1 Then 
if (_iposition<=-1) {
// [1931]  Return mValues.get(tValues) 
return _mvalues[_tvalues];
// [1932]  End If 
}
// [1933]  If iPosition > tValues Then 
if (_iposition>_tvalues) {
// [1934]  Return {384} 
return "";
// [1935]  End If 
}
// [1936]  Return mValues.get(iPosition) 
return _mvalues[_iposition];
// [1937]  End Select 
}
// End Sub
};

// [1942] Sub RandListValue(ListX As List) As Object 
this.randlistvalue=function(_listx) {
if (_B==null) _B=this;
// [1943]  ShuffleList(ListX) 
_B.shufflelist(_listx,_B);
// [1944]  Return ListX.Get(Rnd(0, ListX.Size -1)) 
return _listx[(Math.floor(Math.random() * (_listx.length-1 - 0) + 0))];
// End Sub
};

// [1948] Sub RamoveFromList(listX As List, item As String) 
this.ramovefromlist=function(_listx,_item) {
if (_B==null) _B=this;
var _lix;
// [1949]  Dim lix As Int = listX.IndexOf(item) 
_lix=_listx.indexOf(_item);
// [1950]  If lix >= 0 Then listX.RemoveAt(lix) 
if (_lix>=0) {_listx.splice(_lix,1);}
// End Sub
};

// [1959] public Sub AfterTodayRG(dVariance As Long) As String 
this.aftertodayrg=function(_dvariance) {
if (_B==null) _B=this;
// [1960]  If dVariance <= 0 Then 
if (_dvariance<=0) {
// [1961]  Return {386} 
return "./assets/green.png";
// [1962]  else if dVariance > 0 Then 
} else if (_dvariance>0) {
// [1963]  Return {387} 
return "./assets/red.png";
// [1964]  Else 
} else {
// [1965]  Return {388} 
return "./assets/gray.png";
// [1966]  End If 
}
// End Sub
};

// [1970] Public Sub ProgressRAG(dVariance As Double) As String 
this.progressrag=function(_dvariance) {
if (_B==null) _B=this;
// [1971]  If dVariance < 0 Then 
if (_dvariance<0) {
// [1972]  Return {389} 
return "./assets/red.png";
// [1973]  else if dVariance > 0 Then 
} else if (_dvariance>0) {
// [1974]  Return {390} 
return "./assets/green.png";
// [1975]  else if dVariance = 0 Then 
} else if (_dvariance==0) {
// [1976]  Return {391} 
return "./assets/orange.png";
// [1977]  Else 
} else {
// [1978]  Return {392} 
return "./assets/gray.png";
// [1979]  End If 
}
// End Sub
};

// [1983] Public Sub ExpectedRAG(dValue As Double) As String 
this.expectedrag=function(_dvalue) {
if (_B==null) _B=this;
// [1984]  If dValue = 0 Then 
if (_dvalue==0) {
// [1985]  Return {393} 
return "./assets/orange.png";
// [1986]  else if dValue > 0 Then 
} else if (_dvalue>0) {
// [1987]  Return {394} 
return "./assets/red.png";
// [1988]  else if dValue < 0 Then 
} else if (_dvalue<0) {
// [1989]  Return {395} 
return "./assets/green.png";
// [1990]  Else 
} else {
// [1991]  Return {396} 
return "./assets/red.png";
// [1992]  End If 
}
// End Sub
};

// [1995] Public Sub ExpenditureRAG(dVariance As Double) As String 
this.expenditurerag=function(_dvariance) {
if (_B==null) _B=this;
// [1996]  If dVariance > 0 Then 
if (_dvariance>0) {
// [1997]  Return {397} 
return "./assets/green.png";
// [1998]  else if dVariance < 0 Then 
} else if (_dvariance<0) {
// [1999]  Return {398} 
return "./assets/red.png";
// [2000]  else if dVariance = 0 Then 
} else if (_dvariance==0) {
// [2001]  Return {399} 
return "./assets/orange.png";
// [2002]  Else 
} else {
// [2003]  Return {400} 
return "./assets/gray.png";
// [2004]  End If 
}
// End Sub
};

// [2007] Public Sub PriorityRAG(dValue As Int) As String 
this.priorityrag=function(_dvalue) {
if (_B==null) _B=this;
// [2008]  Select Case dValue 
switch ("" + _dvalue) {
// [2009]  Case 0 
case "" + 0:
// [2010]  Return {401} 
return "./assets/green.png";
// [2011]  Case 1 
case "" + 1:
// [2012]  Return {402} 
return "./assets/orange.png";
// [2013]  Case 2 
case "" + 2:
// [2014]  Return {403} 
return "./assets/red.png";
// [2015]  Case Else 
default:
// [2016]  Return {404} 
return "./assets/gray.png";
// [2017]  End Select 
}
// End Sub
};

// [2020] Public Sub RAG(dValue As Int) As String 
this.rag=function(_dvalue) {
if (_B==null) _B=this;
// [2021]  Select Case dValue 
switch ("" + _dvalue) {
// [2022]  Case 0 
case "" + 0:
// [2023]  Return {405} 
return "./assets/red.png";
// [2024]  Case 1 
case "" + 1:
// [2025]  Return {406} 
return "./assets/orange.png";
// [2026]  Case 2 
case "" + 2:
// [2027]  Return {407} 
return "./assets/green.png";
// [2028]  Case Else 
default:
// [2029]  Return {408} 
return "./assets/gray.png";
// [2030]  End Select 
}
// End Sub
};

// [2033] Public Sub GAR(dValue As Int) As String 
this.gar=function(_dvalue) {
if (_B==null) _B=this;
// [2034]  Select Case dValue 
switch ("" + _dvalue) {
// [2035]  Case 0 
case "" + 0:
// [2036]  Return {409} 
return "./assets/green.png";
// [2037]  Case 1 
case "" + 1:
// [2038]  Return {410} 
return "./assets/orange.png";
// [2039]  Case 2 
case "" + 2:
// [2040]  Return {411} 
return "./assets/red.png";
// [2041]  Case Else 
default:
// [2042]  Return {412} 
return "./assets/gray.png";
// [2043]  End Select 
}
// End Sub
};

// [2046] Public Sub StatusRAG(dValue As Int) As String 
this.statusrag=function(_dvalue) {
if (_B==null) _B=this;
// [2047]  Select Case dValue 
switch ("" + _dvalue) {
// [2048]  Case 0 
case "" + 0:
// [2049]  Return {413} 
return "./assets/red.png";
// [2050]  Case 1 
case "" + 1:
// [2051]  Return {414} 
return "./assets/orange.png";
// [2052]  Case 2 
case "" + 2:
// [2053]  Return {415} 
return "./assets/green.png";
// [2054]  Case Else 
default:
// [2055]  Return {416} 
return "./assets/gray.png";
// [2056]  End Select 
}
// End Sub
};

// [2059] Public Sub FaceRAG(dValue As Int) As String 
this.facerag=function(_dvalue) {
if (_B==null) _B=this;
// [2060]  Select Case dValue 
switch ("" + _dvalue) {
// [2061]  Case 0 
case "" + 0:
// [2062]  Return {417} 
return "./assets/sadface.png";
// [2063]  Case 1 
case "" + 1:
// [2064]  Return {418} 
return "./assets/neutralface.png";
// [2065]  Case 2 
case "" + 2:
// [2066]  Return {419} 
return "./assets/happyface.png";
// [2067]  Case Else 
default:
// [2068]  Return {420} 
return "./assets/sadface.png";
// [2069]  End Select 
}
// End Sub
};

// [2072] Public Sub FaceRG(dValue As Int) As String 
this.facerg=function(_dvalue) {
if (_B==null) _B=this;
// [2073]  Select Case dValue 
switch ("" + _dvalue) {
// [2074]  Case 0 
case "" + 0:
// [2075]  Return {421} 
return "./assets/sadface.png";
// [2076]  Case 1 
case "" + 1:
// [2077]  Return {422} 
return "./assets/happyface.png";
// [2078]  Case Else 
default:
// [2079]  Return {423} 
return "./assets/sadface.png";
// [2080]  End Select 
}
// End Sub
};

// [2083] Public Sub FaceRG1(dValue As Int) As String 
this.facerg1=function(_dvalue) {
if (_B==null) _B=this;
// [2084]  Select Case dValue 
switch ("" + _dvalue) {
// [2085]  Case 1 
case "" + 1:
// [2086]  Return {424} 
return "./assets/sadface.png";
// [2087]  Case 0 
case "" + 0:
// [2088]  Return {425} 
return "./assets/happyface.png";
// [2089]  Case Else 
default:
// [2090]  Return {426} 
return "./assets/sadface.png";
// [2091]  End Select 
}
// End Sub
};

// [2094] Public Sub FaceDone(dValue As Int) As String 
this.facedone=function(_dvalue) {
if (_B==null) _B=this;
// [2095]  Select Case dValue 
switch ("" + _dvalue) {
// [2096]  Case 100 
case "" + 100:
// [2097]  Return {427} 
return "./assets/happyface.png";
// [2098]  Case Else 
default:
// [2099]  Return {428} 
return "./assets/sadface.png";
// [2100]  End Select 
}
// End Sub
};

// [2103] Sub ProgressStatus(dValue As Int) As Int 
this.progressstatus=function(_dvalue) {
if (_B==null) _B=this;
// [2104]  Select Case dValue 
switch ("" + _dvalue) {
// [2105]  Case 100 
case "" + 100:
// [2106]  Return 1 
return 1;
// [2107]  Case Else 
default:
// [2108]  Return 0 
return 0;
// [2109]  End Select 
}
// End Sub
};

// [2112] Sub StatusRG(dValue As Int) As String 
this.statusrg=function(_dvalue) {
if (_B==null) _B=this;
// [2113]  Select Case dValue 
switch ("" + _dvalue) {
// [2114]  Case 0 
case "" + 0:
// [2115]  Return {429} 
return "./assets/red.png";
// [2116]  Case 1 
case "" + 1:
// [2117]  Return {430} 
return "./assets/green.png";
// [2118]  Case Else 
default:
// [2119]  Return {431} 
return "./assets/red.png";
// [2120]  End Select 
}
// End Sub
};

// [2123] Sub EscapeField(f As String) As String 
this.escapefield=function(_f) {
if (_B==null) _B=this;
// [2124]  Return {23} 
return "[" + _f + "]";
// End Sub
};

// [2128] Sub JoinFields(delimiter As String, lst As List) As String 
this.joinfields=function(_delimiter,_lst) {
if (_B==null) _B=this;
var _i,_sb,_fld;
// [2129]  If lst.Size = 0 Then Return {432} 
if (_lst.length==0) { return "";}
// [2130]  Dim i As Int 
_i=0;
// [2131]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2132]  Dim fld As String 
_fld="";
// [2133]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2134]  fld = lst.Get(0) 
_fld=_lst[0];
// [2135]  fld = EscapeField(fld) 
_fld=_B.escapefield(_fld,_B);
// [2136]  sb.Append(fld) 
_sb.append(_fld);
// [2137]  For i = 1 To lst.size - 1 
for (_i=1;_i<=_lst.length-1;_i++) {
// [2138]  Dim fld As String = lst.Get(i) 
_fld=_lst[_i];
// [2139]  fld = EscapeField(fld) 
_fld=_B.escapefield(_fld,_B);
// [2140]  sb.Append(delimiter).Append(fld) 
_sb.append(_delimiter).append(_fld);
// [2141]  Next 
}
// [2142]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [2146] Sub JoinFields1(delimiter As String, sQuote As String, lst As List) As String 
this.joinfields1=function(_delimiter,_squote,_lst) {
if (_B==null) _B=this;
var _i,_sb,_fld,_xfld;
// [2147]  If lst.Size = 0 Then Return {433} 
if (_lst.length==0) { return "";}
// [2148]  Dim i As Int 
_i=0;
// [2149]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2150]  Dim fld As String 
_fld="";
// [2151]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2152]  fld = lst.Get(0) 
_fld=_lst[0];
// [2153]  Dim xfld As String = {24} 
_xfld="" + _fld + "";
// [2154]  xfld = sQuote & xfld & sQuote 
_xfld=_squote+_xfld+_squote;
// [2155]  sb.Append(xfld) 
_sb.append(_xfld);
// [2156]  For i = 1 To lst.size - 1 
for (_i=1;_i<=_lst.length-1;_i++) {
// [2157]  Dim fld As String = lst.Get(i) 
_fld=_lst[_i];
// [2158]  Dim xfld As String = {25} 
_xfld="" + _fld + "";
// [2159]  xfld = sQuote & xfld & sQuote 
_xfld=_squote+_xfld+_squote;
// [2160]  sb.Append(delimiter).Append(xfld) 
_sb.append(_delimiter).append(_xfld);
// [2161]  Next 
}
// [2162]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [2166] Sub GetOptionsFromKV(delim As String, k As String, v As String) As Map 
this.getoptionsfromkv=function(_delim,_k,_v) {
if (_B==null) _B=this;
var _no,_rkeys,_rvalues,_rtot,_vtot,_rcnt,_k1,_v1;
// [2167]  k = CStr(k) 
_k=_B.cstr(_k,_B);
// [2168]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [2169]  Dim no As Map = CreateMap() 
_no={};
// [2170]  Dim rkeys() As String = BANano.Split(delim, k) 
_rkeys=_k.split(_delim);
// [2171]  Dim rvalues() As String = BANano.Split(delim, v) 
_rvalues=_v.split(_delim);
// [2173]  Dim rTot As Int = rkeys.Length - 1 
_rtot=_rkeys.length-1;
// [2174]  Dim vTot As Int = rvalues.Length - 1 
_vtot=_rvalues.length-1;
// [2176]  If rTot <> vTot Then Return no 
if (_rtot!=_vtot) { return _no;}
// [2178]  Dim rCnt As Int 
_rcnt=0;
// [2179]  For rCnt = 0 To rTot 
for (_rcnt=0;_rcnt<=_rtot;_rcnt++) {
// [2180]  Dim k1 As String = rkeys(rCnt) 
_k1=_rkeys[_rcnt];
// [2181]  Dim v1 As String = rvalues(rCnt) 
_v1=_rvalues[_rcnt];
// [2182]  no.put(k1, v1) 
_no[_k1]=_v1;
// [2183]  Next 
}
// [2184]  Return no 
return _no;
// End Sub
};

// [2189] Sub Unflatten(tdata As List, childname As String) As List 
this.unflatten=function(_tdata,_childname) {
if (_B==null) _B=this;
var _tree,_mappedarr,_arrelem,_did,_cdata,_mappedelem,_parentid,_parentelem,_children,_mk,_mi,_childs;
// [2191]  Dim tree As List 
_tree=[];
// [2192]  Dim mappedArr As Map 
_mappedarr={};
// [2194]  tree.Initialize 
_tree.length=0;
// [2195]  mappedArr.Initialize 
_mappedarr={};
// [2198]  For Each arrElem As Map In tdata 
for (var _arrelemindex=0;_arrelemindex<_tdata.length;_arrelemindex++) {
_arrelem=_tdata[_arrelemindex];
// [2199]  Dim dID As String = arrElem.Get( {434} ) 
_did=_arrelem["id"];
// [2201]  Dim cdata As List 
_cdata=[];
// [2202]  cdata.Initialize 
_cdata.length=0;
// [2203]  arrElem.Put(childname, cdata) 
_arrelem[_childname]=_cdata;
// [2205]  mappedArr.Put(dID, arrElem) 
_mappedarr[_did]=_arrelem;
// [2206]  Next 
}
// [2208]  For Each dID As String In mappedArr.Keys 
var _didKeys = Object.keys(_mappedarr);
for (var _didindex=0;_didindex<_didKeys.length;_didindex++) {
_did=_didKeys[_didindex];
// [2209]  Dim mappedElem As Map = mappedArr.Get(dID) 
_mappedelem=_mappedarr[_did];
// [2210]  Dim parentid As String = mappedElem.Get( {435} ) 
_parentid=_mappedelem["parentid"];
// [2212]  If parentid = {436} Or parentid = {437} Then 
if (_parentid=="" || _parentid=="0") {
// [2213]  tree.Add(mappedElem) 
_tree.push(_mappedelem);
// [2214]  Else 
} else {
// [2216]  Dim parentElem As Map = mappedArr.Get(parentid) 
_parentelem=_mappedarr[_parentid];
// [2217]  Dim children As List = parentElem.Get(childname) 
_children=_parentelem[_childname];
// [2218]  children.Add(mappedElem) 
_children.push(_mappedelem);
// [2219]  parentElem.Put(childname, children) 
_parentelem[_childname]=_children;
// [2220]  mappedArr.Put(parentid, parentElem) 
_mappedarr[_parentid]=_parentelem;
// [2221]  End If 
}
// [2222]  Next 
}
// [2224]  For Each mk As String In mappedArr.Keys 
var _mkKeys = Object.keys(_mappedarr);
for (var _mkindex=0;_mkindex<_mkKeys.length;_mkindex++) {
_mk=_mkKeys[_mkindex];
// [2225]  Dim mi As Map = mappedArr.Get(mk) 
_mi=_mappedarr[_mk];
// [2226]  Dim childs As List = mi.Get(childname) 
_childs=_mi[_childname];
// [2227]  If childs.Size = 0 Then mi.Remove(childname) 
if (_childs.length==0) {delete _mi[_childname];}
// [2228]  Next 
}
// [2229]  Return tree 
return _tree;
// End Sub
};

// [2232] public Sub readAsText(fr As Map) As BANanoPromise 
this.readastext=function(_fr) {
if (_B==null) _B=this;
var _promise;
// [2233]  Dim promise As BANanoPromise 'ignore 
_promise=null;
// [2236]  promise.CallSub(Me, {438} , Array(fr, {439} )) 
_promise=BANanoPromise();
_B[("ReadFile").toLowerCase()](_fr,"readAsText",_promise,_B);
// [2237]  Return promise 
return _promise;
// End Sub
};

// [2240] Sub readAsBinaryString(fr As Map) As BANanoPromise 
this.readasbinarystring=function(_fr) {
if (_B==null) _B=this;
var _promise;
// [2241]  Dim promise As BANanoPromise 'ignore 
_promise=null;
// [2244]  promise.CallSub(Me, {440} , Array(fr, {441} )) 
_promise=BANanoPromise();
_B[("ReadFile").toLowerCase()](_fr,"readAsBinaryString",_promise,_B);
// [2245]  Return promise 
return _promise;
// End Sub
};

// [2248] Sub readAsDataURL(fr As Map) As BANanoPromise 
this.readasdataurl=function(_fr) {
if (_B==null) _B=this;
var _promise;
// [2249]  Dim promise As BANanoPromise 'ignore 
_promise=null;
// [2252]  promise.CallSub(Me, {442} , Array(fr, {443} )) 
_promise=BANanoPromise();
_B[("ReadFile").toLowerCase()](_fr,"readAsDataURL",_promise,_B);
// [2253]  Return promise 
return _promise;
// End Sub
};

// [2256] Sub readAsArrayBuffer(fr As Map) As BANanoPromise 
this.readasarraybuffer=function(_fr) {
if (_B==null) _B=this;
var _promise;
// [2257]  Dim promise As BANanoPromise 'ignore 
_promise=null;
// [2260]  promise.CallSub(Me, {444} , Array(fr, {445} )) 
_promise=BANanoPromise();
_B[("ReadFile").toLowerCase()](_fr,"readAsArrayBuffer",_promise,_B);
// [2261]  Return promise 
return _promise;
// End Sub
};

// [2264] private Sub ReadFile(FileToRead As Object, MethodName As String) 
this.readfile=function(_filetoread,_methodname) {
var _BANp = gBANp(arguments);
if (_B==null) _B=this;
var _filereader,_event;
// [2266]  Dim FileReader As BANanoObject 
_filereader=null;
// [2267]  FileReader.Initialize2( {446} , Null) 
_filereader=new FileReader();
// [2269]  FileReader.SetField( {447} , FileToRead) 
_filereader["file"]=_filetoread;
// [2273]  Dim event As Map 
_event={};
// [2274]  FileReader.SetField( {448} , BANano.CallBack(Me, {449} , Array(event))) 
_filereader["onload"]=function(_event) {if (typeof _B[("OnLoad").toLowerCase()]==="function") {return _B[("OnLoad").toLowerCase()](_event,_BANp,_B)};};
// [2275]  FileReader.SetField( {450} , BANano.CallBack(Me, {451} , Array(event))) 
_filereader["onerror"]=function(_event) {if (typeof _B[("OnError").toLowerCase()]==="function") {return _B[("OnError").toLowerCase()](_event,_BANp,_B)};};
// [2277]  FileReader.RunMethod(MethodName, FileToRead) 
_filereader[_methodname](_filetoread);
// End Sub
};

// [2280] private Sub OnLoad(event As Map) As String 'IgnoreDeadCode 
this.onload=function(_event) {
var _BANp = gBANp(arguments);
if (_B==null) _B=this;
var _filereader,_uploadedfile;
// [2282]  Dim FileReader As BANanoObject = event.Get( {452} ) 
_filereader=_event["target"];
// [2283]  Dim UploadedFile As BANanoObject = FileReader.GetField( {453} ) 
_uploadedfile=_filereader["file"];
// [2285]  BANano.ReturnThen(CreateMap( {454} : UploadedFile.GetField( {455} ), {456} : FileReader.Getfield( {457} ))) 
return _BANp.resolve({"name":_uploadedfile["name"], "result":_filereader["result"]});
// End Sub
};

// [2288] private Sub OnError(event As Map) As String 'IgnoreDeadCode 
this.onerror=function(_event) {
var _BANp = gBANp(arguments);
if (_B==null) _B=this;
var _filereader,_uploadedfile,_abort;
// [2289]  Dim FileReader As BANanoObject = event.Get( {458} ) 
_filereader=_event["target"];
// [2290]  Dim UploadedFile As BANanoObject = FileReader.GetField( {459} ) 
_uploadedfile=_filereader["file"];
// [2291]  Dim Abort As Boolean = False 
_abort=false;
// [2296]  BANano.ReturnElse(CreateMap( {461} : UploadedFile.GetField( {462} ), {463} : FileReader.GetField( {464} ), {465} : Abort)) 
return _BANp.reject({"name":_uploadedfile["name"], "result":_filereader["error"], "abort":_abort});
// End Sub
};

// [2301] Sub JoinItems(delimiter As String, sQuote As String, lst As List) As String 
this.joinitems=function(_delimiter,_squote,_lst) {
if (_B==null) _B=this;
var _i,_sb,_fld,_xfld;
// [2302]  If lst.Size = 0 Then Return {466} 
if (_lst.length==0) { return "";}
// [2303]  Dim i As Int 
_i=0;
// [2304]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2305]  Dim fld As String 
_fld="";
// [2306]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2307]  fld = lst.Get(0) 
_fld=_lst[0];
// [2308]  Dim xfld As String = {26} 
_xfld="" + _fld + "";
// [2309]  xfld = sQuote & xfld & sQuote 
_xfld=_squote+_xfld+_squote;
// [2310]  sb.Append(xfld) 
_sb.append(_xfld);
// [2311]  For i = 1 To lst.size - 1 
for (_i=1;_i<=_lst.length-1;_i++) {
// [2312]  Dim fld As String = lst.Get(i) 
_fld=_lst[_i];
// [2313]  Dim xfld As String = {27} 
_xfld="" + _fld + "";
// [2314]  xfld = sQuote & xfld & sQuote 
_xfld=_squote+_xfld+_squote;
// [2315]  sb.Append(delimiter).Append(xfld) 
_sb.append(_delimiter).append(_xfld);
// [2316]  Next 
}
// [2317]  Return sb.ToString 
return _sb.toString();
// End Sub
};

// [2324] Sub FormatText(sText As String) As String 
this.formattext=function(_stext) {
if (_B==null) _B=this;
var _rm,_ktot,_kcnt,_strvalue,_strrep;
// [2325]  Dim RM As Map 
_rm={};
// [2326]  RM.Initialize 
_rm={};
// [2327]  RM.clear 
_rm={};
// [2328]  RM.Put( {467} , {468} ) 
_rm["{U}"]="<ins>";
// [2329]  RM.Put( {469} , {470} ) 
_rm["{/U}"]="</ins>";
// [2330]  RM.Put( {471} , {472} ) 
_rm["¢"]="&cent;";
// [2331]  RM.put( {473} , {474} ) 
_rm["£"]="&pound;";
// [2332]  RM.Put( {475} , {476} ) 
_rm["{SUP}"]="<sup>";
// [2333]  RM.Put( {477} , {478} ) 
_rm["{/SUP}"]="</sup>";
// [2334]  RM.Put( {479} , {480} ) 
_rm["¥"]="&yen;";
// [2335]  RM.Put( {481} , {482} ) 
_rm["€"]="&euro;";
// [2336]  RM.put( {483} , {484} ) 
_rm["©"]="&copy;";
// [2337]  RM.Put( {485} , {486} ) 
_rm["®"]="&reg;";
// [2338]  RM.put( {487} , {488} ) 
_rm["{COPYRIGHT}"]="&copy;";
// [2339]  RM.Put( {489} , {490} ) 
_rm["{TRADEMARK}"]="&reg;";
// [2340]  RM.Put( {491} , {492} ) 
_rm["{POUND}"]="&pound;";
// [2341]  RM.Put( {493} , {494} ) 
_rm["{/B}"]="</b>";
// [2342]  RM.Put( {495} , {496} ) 
_rm["{I}"]="<i>";
// [2343]  RM.Put( {497} , {498} ) 
_rm["{YEN}"]="&yen;";
// [2344]  RM.Put( {499} , {500} ) 
_rm["{EURO}"]="&euro;";
// [2345]  RM.Put( {501} , {502} ) 
_rm["{CODE}"]="<code>";
// [2346]  RM.Put( {503} , {504} ) 
_rm["{/CODE}"]="</code>";
// [2347]  RM.put( {505} , {506} ) 
_rm["{COPYRIGHT}"]="&copy;";
// [2348]  RM.Put( {507} , {508} ) 
_rm["{REGISTERED}"]="&reg;";
// [2349]  RM.Put( {509} , {510} ) 
_rm["{B}"]="<b>";
// [2350]  RM.Put( {511} , {512} ) 
_rm["{SMALL}"]="<small>";
// [2351]  RM.Put( {513} , {514} ) 
_rm["{/SMALL}"]="</small>";
// [2352]  RM.Put( {515} , {516} ) 
_rm["{EM}"]="<em>";
// [2353]  RM.Put( {517} , {518} ) 
_rm["{/EM}"]="</em>";
// [2354]  RM.Put( {519} , {520} ) 
_rm["{MARK}"]="<mark>";
// [2355]  RM.Put( {521} , {522} ) 
_rm["{/MARK}"]="</mark>";
// [2356]  RM.Put( {523} , {524} ) 
_rm["{/I}"]="</i>";
// [2357]  RM.Put( {525} , {526} ) 
_rm["{SUB}"]="<sub>";
// [2358]  RM.Put( {527} , {528} ) 
_rm["{/SUB}"]="</sub>";
// [2359]  RM.Put( {529} , {530} ) 
_rm["{BR}"]="<br/>";
// [2360]  RM.Put( {531} , {532} ) 
_rm["{WBR}"]="<wbr>";
// [2361]  RM.Put( {533} , {534} ) 
_rm["{STRONG}"]="<strong>";
// [2362]  RM.Put( {535} , {536} ) 
_rm["{/STRONG}"]="</strong>";
// [2363]  RM.Put( {537} , {538} ) 
_rm["{NBSP}"]="&nbsp;";
// [2364]  RM.Put( {539} , {540} ) 
_rm["“"]="";
// [2365]  RM.Put( {541} , {542} ) 
_rm["”"]="";
// [2366]  RM.Put( {543} , {544} ) 
_rm["’"]="'";
// [2367]  Dim kTot As Int = RM.Size - 1 
_ktot=Object.keys(_rm).length-1;
// [2368]  Dim kCnt As Int 
_kcnt=0;
// [2369]  For kCnt = 0 To kTot 
for (_kcnt=0;_kcnt<=_ktot;_kcnt++) {
// [2370]  Dim strValue As String = RM.GetKeyAt(kCnt) 
_strvalue=banano_getB4JKeyAt(_rm,_kcnt);
// [2371]  Dim strRep As String = RM.Get(strValue) 
_strrep=_rm[_strvalue];
// [2372]  sText = sText.Replace(strValue, strRep) 
_stext=_stext.split(_strvalue).join(_strrep);
// [2373]  Next 
}
// [2374]  sText = BANano.SF(sText) 
_stext=banano_sf(_stext,false);
// [2375]  Return sText 
return _stext;
// End Sub
};

// [2378] Sub HideElement(elID As String) 
this.hideelement=function(_elid) {
if (_B==null) _B=this;
var _stylem;
// [2379]  Dim stylem As Map = CreateMap( {545} : {546} ) 
_stylem={"visibility":"hidden"};
// [2380]  BANano.GetElement( {28} ).SetStyle(BANano.ToJson(stylem)) 
u("#" + _elid + "").css(JSON.parse(JSON.stringify(_stylem)));
// End Sub
};

// [2383] Sub ShowElement(elID As String) 
this.showelement=function(_elid) {
if (_B==null) _B=this;
var _stylem;
// [2384]  Dim stylem As Map = CreateMap( {547} : {548} ) 
_stylem={"visibility":"visible"};
// [2385]  BANano.GetElement( {29} ).SetStyle(BANano.ToJson(stylem)) 
u("#" + _elid + "").css(JSON.parse(JSON.stringify(_stylem)));
// End Sub
};

// [2388] Sub Age(sdob As String) As Long 
this.age=function(_sdob) {
if (_B==null) _B=this;
var _ldob,_diff,_tpd,_p1,_p2;
// [2389]  DateTime.dateformat = {549} 
DateTime.SetDateFormat("yyyy-MM-dd");
// [2390]  Dim ldob As Long = DateTime.DateParse(sdob) 
_ldob=DateTime.DateParse(_sdob);
// [2391]  Dim diff As Long = DateTime.now - ldob 
_diff=DateTime.Now()-_ldob;
// [2392]  Dim tpd As Long = DateTime.TicksPerDay 
_tpd=DateTime.TicksPerDay();
// [2393]  Dim p1 As Long = diff / tpd 
_p1=_diff/_tpd;
// [2394]  Dim p2 As Long = p1 / 365 
_p2=_p1/365;
// [2395]  p2 = NumberFormat(p2,0,0) 
_p2=BANano_nf(BANano_r(_p2, 0),0);
// [2396]  Return p2 
return _p2;
// End Sub
};

// [2399] Sub GetAlphaNumeric(value As String) As String 
this.getalphanumeric=function(_value) {
if (_B==null) _B=this;
var _sout,_mout,_slen,_i;
// [2400]  value = CStr(value) 
_value=_B.cstr(_value,_B);
// [2401]  Try 
try {
// [2402]  value = value.Trim 
_value=_value.trim();
// [2403]  If value = {550} Then value = {551} 
if (_value=="") {_value="";}
// [2404]  Dim sout As String = {552} 
_sout="";
// [2405]  Dim mout As String = {553} 
_mout="";
// [2406]  Dim slen As Int = value.Length 
_slen=_value.length;
// [2407]  Dim i As Int = 0 
_i=0;
// [2408]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [2409]  mout = value.CharAt(i) 
_mout=_value.charAt(_i);
// [2410]  If InStr( {554} , mout) <> -1 Then 
if (_B.instr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",_mout,_B)!=-1) {
// [2411]  sout = sout & mout 
_sout=_sout+_mout;
// [2412]  End If 
}
// [2413]  Next 
}
// [2414]  Return sout 
return _sout;
// [2415]  Catch 
} catch(err) {
// [2416]  Return value 
return _value;
// [2417]  End Try 
}
// End Sub
};

// [2420] Sub ListOfMap2Strings(lst As List) As List 
this.listofmap2strings=function(_lst) {
if (_B==null) _B=this;
var _nl,_m,_nm;
// [2421]  Dim nl As List 
_nl=[];
// [2422]  nl = NewList 
_nl=_B.newlist(_B);
// [2423]  For Each m As Map In lst 
for (var _mindex=0;_mindex<_lst.length;_mindex++) {
_m=_lst[_mindex];
// [2424]  Dim nm As Map = Map2Strings(m) 
_nm=_B.map2strings(_m,_B);
// [2425]  nl.Add(nm) 
_nl.push(_nm);
// [2426]  Next 
}
// [2427]  Return nl 
return _nl;
// End Sub
};

// [2432] Sub Map2Strings(m As Map) As Map 
this.map2strings=function(_m) {
if (_B==null) _B=this;
var _nm,_k,_v,_vv;
// [2433]  Dim nm As Map = CreateMap() 
_nm={};
// [2434]  For Each k As String In m.keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2435]  Dim v As Object = m.get(k) 
_v=_m[_k];
// [2436]  If BANano.IsNull(v) Then v = {555} 
if (is.null(_v)) {_v="";}
// [2437]  If BANano.IsUndefined(v) Then v = {556} 
if (is.undefined(_v)) {_v="";}
// [2438]  Dim vv As String = CStr(v) 
_vv=_B.cstr(_v,_B);
// [2439]  nm.put(k, vv) 
_nm[_k]=_vv;
// [2440]  Next 
}
// [2441]  Return nm 
return _nm;
// End Sub
};

// [2445] Sub DataType2FieldType(fldtype As String) As String 
this.datatype2fieldtype=function(_fldtype) {
if (_B==null) _B=this;
// [2446]  fldtype = fldtype.ToUpperCase 
_fldtype=_fldtype.toUpperCase();
// [2447]  If fldtype.EqualsIgnoreCase( {557} ) Then fldtype = {558} 
if (_fldtype.equalsIgnoreCase("double")) {_fldtype="FLOAT";}
// [2448]  If fldtype.EqualsIgnoreCase( {559} ) Then fldtype = {560} 
if (_fldtype.equalsIgnoreCase("integer")) {_fldtype="INT";}
// [2449]  If fldtype.EqualsIgnoreCase( {561} ) Then fldtype = {562} 
if (_fldtype.equalsIgnoreCase("long")) {_fldtype="INT";}
// [2450]  If fldtype.EqualsIgnoreCase( {563} ) Then fldtype = {564} 
if (_fldtype.equalsIgnoreCase("short")) {_fldtype="INT";}
// [2451]  If fldtype.endswith( {565} ) Then fldtype = {566} 
if (_fldtype.endsWith("INT")) {_fldtype="INT";}
// [2452]  If fldtype.endswith( {567} ) Then fldtype = {568} 
if (_fldtype.endsWith("CHAR")) {_fldtype="TEXT";}
// [2453]  If fldtype.endswith( {569} ) Then fldtype = {570} 
if (_fldtype.endsWith("TEXT")) {_fldtype="TEXT";}
// [2454]  If fldtype.endswith( {571} ) Then fldtype = {572} 
if (_fldtype.endsWith("REAL")) {_fldtype="FLOAT";}
// [2455]  If fldtype.endswith( {573} ) Then fldtype = {574} 
if (_fldtype.endsWith("BIT")) {_fldtype="INT";}
// [2457]  fldtype = fldtype.tolowercase 
_fldtype=_fldtype.toLowerCase();
// [2458]  fldtype = fldtype.replace( {575} , {576} ) 
_fldtype=_fldtype.split("text").join("string");
// [2459]  fldtype = fldtype.replace( {577} , {578} ) 
_fldtype=_fldtype.split("float").join("dbl");
// [2460]  fldtype = fldtype.replace( {579} , {580} ) 
_fldtype=_fldtype.split("blob").join("string");
// [2461]  fldtype = fldtype.replace( {581} , {582} ) 
_fldtype=_fldtype.split("none").join("string");
// [2462]  fldtype = fldtype.replace( {583} , {584} ) 
_fldtype=_fldtype.split("varchar").join("string");
// [2463]  Return fldtype 
return _fldtype;
// End Sub
};

// [2467] Sub MapRemovePrefix(m As Map) As Map 
this.mapremoveprefix=function(_m) {
if (_B==null) _B=this;
var _nm,_k,_v;
// [2468]  Dim nm As Map = CreateMap() 
_nm={};
// [2469]  For Each k As String In m.keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2470]  Dim v As String = m.Get(k) 
_v=_m[_k];
// [2471]  k = MvField(k,2, {585} ) 
_k=_B.mvfield(_k,2,"_",_B);
// [2472]  nm.Put(k, v) 
_nm[_k]=_v;
// [2473]  Next 
}
// [2474]  Return nm 
return _nm;
// End Sub
};

// [2479] Sub SetCoverImage(imgURL As String) 
this.setcoverimage=function(_imgurl) {
if (_B==null) _B=this;
var _opt,_sjson;
// [2480]  If BANano.IsUndefined(imgURL) Or BANano.IsNull(imgURL) Then Return 
if (is.undefined(_imgurl) || is.null(_imgurl)) { return ;}
// [2481]  Dim opt As Map = CreateMap() 
_opt={};
// [2482]  If imgURL = {586} Then 
if (_imgurl=="none") {
// [2483]  opt.Put( {587} , {588} ) 
_opt["background-image"]="none";
// [2484]  Else 
} else {
// [2485]  opt.Put( {589} , {30} ) 
_opt["background"]="url('" + _imgurl + "')";
// [2486]  opt.Put( {590} , {591} ) 
_opt["position"]="absolute";
// [2487]  opt.Put( {592} , {593} ) 
_opt["height"]="100%";
// [2488]  opt.Put( {594} , {595} ) 
_opt["width"]="100%";
// [2489]  opt.Put( {596} , {597} ) 
_opt["top"]="0";
// [2490]  opt.Put( {598} , {599} ) 
_opt["bottom"]="0";
// [2491]  opt.Put( {600} , {601} ) 
_opt["right"]="0";
// [2492]  opt.Put( {602} , {603} ) 
_opt["left"]="0";
// [2493]  opt.Put( {604} , {605} ) 
_opt["z-index"]="0";
// [2494]  End If 
}
// [2495]  Dim sjson As String = BANano.ToJson(opt) 
_sjson=JSON.stringify(_opt);
// [2496]  BANano.GetElement( {606} ).SetStyle(sjson) 
u("#body").css(JSON.parse(_sjson));
// End Sub
};

// [2501] Sub GetUploadResult(fileName As String, rslt As Object) As String 
this.getuploadresult=function(_filename,_rslt) {
if (_B==null) _B=this;
var _sfilename,_res,_sresult;
// [2503]  Dim sFileName As String 
_sfilename="";
// [2504]  Dim res As Map = BANano.fromjson(rslt) 
_res=JSON.parse(_rslt);
// [2505]  Dim sResult As String = res.get( {607} ) 
_sresult=_res["status"];
// [2506]  Select Case sResult 
switch ("" + _sresult) {
// [2507]  Case {608} 
case "" + "success":
// [2508]  sFileName = {31} 
_sfilename="./assets/" + _filename + "";
// [2509]  Case {609} 
break;
case "" + "error":
// [2510]  sFileName = {610} 
_sfilename="";
// [2511]  End Select 
break;
}
// [2512]  Return sFileName 
return _sfilename;
// End Sub
};

// [2516] Sub GetFileAsText(e As BANanoEvent) As BANanoPromise 
this.getfileastext=function(_e) {
if (_B==null) _B=this;
var _promise,_filelist,_fr;
// [2517]  Dim promise As BANanoPromise 
_promise=null;
// [2518]  Dim fileList As List = GetFileListFromTarget(e) 
_filelist=_B.getfilelistfromtarget(_e,_B);
// [2520]  If fileList.size = 0 Then Return promise 
if (_filelist.length==0) { return _promise;}
// [2522]  Dim fr As Map = fileList.get(0) 
_fr=_filelist[0];
// [2524]  promise = readAsText(fr) 
_promise=_B.readastext(_fr,_B);
// [2525]  Return promise 
return _promise;
// End Sub
};

// [2530] Sub GetUploadFileName(e As BANanoEvent) As String 
this.getuploadfilename=function(_e) {
if (_B==null) _B=this;
var _filelist,_fileo,_fo,_sfilename;
// [2532]  Dim fileList As List = GetFileListFromTarget(e) 
_filelist=_B.getfilelistfromtarget(_e,_B);
// [2533]  If fileList.size = 0 Then Return {611} 
if (_filelist.length==0) { return "";}
// [2535]  Dim fileO As Map = fileList.Get(0) 
_fileo=_filelist[0];
// [2537]  Dim fo As FileObject = GetFileDetails(fileO) 
_fo=_B.getfiledetails(_fileo,_B);
// [2538]  Dim sFileName As String = fo.FileName 
_sfilename=_fo._filename;
// [2539]  Return sFileName 
return _sfilename;
// End Sub
};

// [2543] Sub GetSelectedFileObject(e As BANanoEvent) As FileObject 
this.getselectedfileobject=function(_e) {
if (_B==null) _B=this;
var _filelist,_fileo,_fo;
// [2545]  Dim fileList As List = GetFileListFromTarget(e) 
_filelist=_B.getfilelistfromtarget(_e,_B);
// [2546]  If fileList.size = 0 Then Return Null 
if (_filelist.length==0) { return null;}
// [2548]  Dim fileO As Map = fileList.Get(0) 
_fileo=_filelist[0];
// [2549]  Dim fo As FileObject = GetFileDetails(fileO) 
_fo=_B.getfiledetails(_fileo,_B);
// [2550]  Return fo 
return _fo;
// End Sub
};

// [2553] public Sub GenerateNanoID() As String 
this.generatenanoid=function() {
if (_B==null) _B=this;
var _crypto,_nanoid,_tmpints,_randoms,_i,_n,_tmpn;
// [2555]  Dim crypto As BANanoObject 
_crypto=null;
// [2556]  If Not(BANano.Window.GetField( {612} )) Then 
if (!(window["crypto"])) {
// [2557]  crypto = BANano.Window.GetField( {613} ) 
_crypto=window["msCrypto"];
// [2558]  Else 
} else {
// [2559]  crypto = BANano.Window.GetField( {614} ) 
_crypto=window["crypto"];
// [2560]  End If 
}
// [2562]  Dim nanoID As String 
_nanoid="";
// [2563]  Dim tmpInts As BANanoObject 
_tmpints=null;
// [2564]  tmpInts.Initialize2( {615} , 21) 
_tmpints=new Uint8Array(21);
// [2565]  Dim Randoms(21) As Byte = crypto.RunMethod( {616} , tmpInts) 
_randoms=_crypto["getRandomValues"](_tmpints);
// [2566]  For i = 20 To 0 Step -1 
for (_i=20;_i>=0;_i-=1) {
// [2567]  Dim n As BANanoObject = Bit.And(63, Randoms(i)) 'ignore 
_n=(63&_randoms[_i]);
// [2568]  If n < 36 Then 
if (_n<36) {
// [2569]  nanoID = nanoID & n.RunMethod( {617} , 36).Result 
_nanoid=_nanoid+_n["toString"](36);
// [2570]  else if n < 62 Then 
} else if (_n<62) {
// [2571]  n = n - 26 'ignore 
_n=_n-26;
// [2572]  Dim tmpN As String = n.RunMethod( {618} , 36).Result 
_tmpn=_n["toString"](36);
// [2573]  nanoID = nanoID & tmpN.ToUpperCase 
_nanoid=_nanoid+_tmpn.toUpperCase();
// [2574]  Else if n < 63 Then 
} else if (_n<63) {
// [2575]  nanoID = nanoID & {619} 
_nanoid=_nanoid+"_";
// [2576]  Else 
} else {
// [2577]  nanoID = nanoID & {620} 
_nanoid=_nanoid+"-";
// [2578]  End If 
}
// [2579]  Next 
}
// [2580]  Return nanoID 
return _nanoid;
// End Sub
};

// [2583] Sub NumberToWords(N As Long) As String 
this.numbertowords=function(_n) {
if (_B==null) _B=this;
// [2584]  If N < 0 Then 
if (_n<0) {
// [2585]  Return {621} & NumberToWordsPositive(-N) 
return "Minus "+_B.numbertowordspositive(-_n,_B);
// [2586]  Else 
} else {
// [2587]  Return NumberToWordsPositive(N) 'including zero 
return _B.numbertowordspositive(_n,_B);
// [2588]  End If 
}
// End Sub
};

// [2591] private Sub NumberToWordsPositive(N As Long) As String 
this.numbertowordspositive=function(_n) {
if (_B==null) _B=this;
var _groupsofthree,_numgroupsofthree,_temp,_groupofthree,_thisgroup;
// [2592]  If N = 0 Then 
if (_n==0) {
// [2593]  Return {622} 'that gets rid of that pesky special case 
return "Zero";
// [2594]  End If 
}
// [2596]  Dim GroupsOfThree(10) As Int 
_groupsofthree=[];
// [2598]  Dim NumGroupsOfThree As Int = 0 
_numgroupsofthree=0;
// [2600]  Do While N <> 0 
while (_n!=0) {
// [2601]  GroupsOfThree(NumGroupsOfThree) = N Mod 1000 
_groupsofthree[_numgroupsofthree]=_n % 1000;
// [2602]  NumGroupsOfThree = NumGroupsOfThree + 1 
_numgroupsofthree=_numgroupsofthree+1;
// [2604]  N = N / 1000 
_n=_n/1000;
// [2605]  Loop 
}
// [2607]  Dim Temp As String = {623} 
_temp="";
// [2608]  For GroupOfThree = NumGroupsOfThree - 1 To 0 Step -1 
for (_groupofthree=_numgroupsofthree-1;_groupofthree>=0;_groupofthree-=1) {
// [2609]  Dim ThisGroup As Int = GroupsOfThree(GroupOfThree) 
_thisgroup=_groupsofthree[_groupofthree];
// [2611]  If ThisGroup <> 0 Then 
if (_thisgroup!=0) {
// [2612]  If Temp.Length <> 0 Then 
if (_temp.length!=0) {
// [2613]  If GroupOfThree = 0 And ThisGroup < 100 Then 
if (_groupofthree==0 && _thisgroup<100) {
// [2614]  Temp = Temp & {624} 
_temp=_temp+" and ";
// [2615]  Else 
} else {
// [2616]  Temp = Temp & {625} 
_temp=_temp+", ";
// [2617]  End If 
}
// [2618]  End If 
}
// [2620]  Temp = Temp & NumberToWords1000(ThisGroup) 
_temp=_temp+_B.numbertowords1000(_thisgroup,_B);
// [2622]  If GroupOfThree <> 0 Then 
if (_groupofthree!=0) {
// [2623]  Temp = Temp & {626} & ThousandWords(GroupOfThree) 
_temp=_temp+" "+_B._thousandwords[_groupofthree];
// [2624]  End If 
}
// [2625]  End If 
}
// [2626]  Next 
}
// [2628]  Return Temp 
return _temp;
// End Sub
};

// [2632] private Sub NumberToWords1000(N As Int) As String 
this.numbertowords1000=function(_n) {
if (_B==null) _B=this;
var _hundreds,_tensunits;
// [2634]  If N < 100 Then 
if (_n<100) {
// [2635]  Return NumberToWords100(N) 
return _B.numbertowords100(_n,_B);
// [2636]  End If 
}
// [2638]  Dim Hundreds As String = UnitWords(N / 100) & {627} 'Hundreds always non-blank since N < 100 already done 
_hundreds=_B._unitwords[_n/100]+" Hundred";
// [2639]  Dim TensUnits As String = NumberToWords100(N Mod 100) 'TensUnits could be blank if digits are 00 
_tensunits=_B.numbertowords100(_n % 100,_B);
// [2641]  If TensUnits.Length = 0 Then 
if (_tensunits.length==0) {
// [2642]  Return Hundreds 
return _hundreds;
// [2643]  Else 
} else {
// [2644]  Return Hundreds & {628} & TensUnits 
return _hundreds+" and "+_tensunits;
// [2645]  End If 
}
// End Sub
};

// [2649] private Sub NumberToWords100(N As Int) As String 
this.numbertowords100=function(_n) {
if (_B==null) _B=this;
var _tens,_units;
// [2650]  If N < 20 Then 
if (_n<20) {
// [2651]  Return UnitWords(N) 
return _B._unitwords[_n];
// [2652]  End If 
}
// [2654]  Dim Tens As String = TenWords(N / 10) 'Tens always non-blank since N < 20 already done 
_tens=_B._tenwords[_n/10];
// [2655]  Dim Units As String = UnitWords(N Mod 10) 'Units could be blank if digit is 0 
_units=_B._unitwords[_n % 10];
// [2657]  If Units.Length = 0 Then 
if (_units.length==0) {
// [2658]  Return Tens 
return _tens;
// [2659]  Else 
} else {
// [2660]  Return Tens & {629} & Units 
return _tens+"-"+_units;
// [2661]  End If 
}
// End Sub
};

// [2665] Sub CustomTag(parentID As String, elTag As String, elID As String) As BANanoElement 
this.customtag=function(_parentid,_eltag,_elid) {
if (_B==null) _B=this;
var _el;
// [2666]  Dim el As BANanoElement = AddElement(parentID, elTag, elID, {630} ) 
_el=_B.addelement(_parentid,_eltag,_elid,"",_B);
// [2667]  Return el 
return _el;
// End Sub
};

// [2671] Sub Anchor(parentID As String, elid As String, text As String, href As String, target As String) As BANanoElement 
this.anchor=function(_parentid,_elid,_text,_href,_target) {
if (_B==null) _B=this;
var _opt,_el;
// [2672]  Dim opt As Map = CreateMap() 
_opt={};
// [2673]  If href <> {631} Then opt.put( {632} , href) 
if (_href!="") {_opt["href"]=_href;}
// [2674]  If target <> {633} Then opt.put( {634} , target) 
if (_target!="") {_opt["target"]=_target;}
// [2675]  Dim el As BANanoElement = AddElement1(parentID, {635} , elid, text, opt,Null, {636} ) 
_el=_B.addelement1(_parentid,"a",_elid,_text,_opt,null,"",_B);
// [2676]  Return el 
return _el;
// End Sub
};

// [2680] Sub MailTo(parentID As String, elid As String, text As String, emailaddress As String) As BANanoElement 
this.mailto=function(_parentid,_elid,_text,_emailaddress) {
if (_B==null) _B=this;
var _opt,_el;
// [2681]  Dim opt As Map = CreateMap() 
_opt={};
// [2682]  opt.put( {637} , {32} ) 
_opt["href"]="mailto:" + _emailaddress + "";
// [2683]  opt.put( {638} , {639} ) 
_opt["target"]="_target";
// [2684]  opt.Put( {640} , {641} ) 
_opt["rel"]="noopener";
// [2685]  Dim el As BANanoElement = AddElement1(parentID, {642} , elid, text, opt,Null, {643} ) 
_el=_B.addelement1(_parentid,"a",_elid,_text,_opt,null,"",_B);
// [2686]  Return el 
return _el;
// End Sub
};

// [2690] Sub Download(parentID As String, elid As String, text As String, href As String) As BANanoElement 
this.download=function(_parentid,_elid,_text,_href) {
if (_B==null) _B=this;
var _opt,_el;
// [2691]  Dim opt As Map = CreateMap() 
_opt={};
// [2692]  opt.put( {644} , href) 
_opt["href"]=_href;
// [2693]  opt.Put( {645} , text) 
_opt["download"]=_text;
// [2694]  opt.Put( {646} , {647} ) 
_opt["rel"]="noopener";
// [2695]  Dim el As BANanoElement = AddElement1(parentID, {648} , elid, text, opt,Null, {649} ) 
_el=_B.addelement1(_parentid,"a",_elid,_text,_opt,null,"",_B);
// [2696]  Return el 
return _el;
// End Sub
};

// [2700] Sub OL(parentID As String, elID As String) As BANanoElement 
this.ol=function(_parentid,_elid) {
if (_B==null) _B=this;
var _el;
// [2701]  Dim el As BANanoElement = AddElement(parentID, {650} , elID, {651} ) 
_el=_B.addelement(_parentid,"ol",_elid,"",_B);
// [2702]  Return el 
return _el;
// End Sub
};

// [2705] Sub LI(parentID As String, elID As String, text As String) As BANanoElement 
this.li=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2706]  Dim el As BANanoElement = AddElement(parentID, {652} , elID, text) 
_el=_B.addelement(_parentid,"li",_elid,_text,_B);
// [2707]  Return el 
return _el;
// End Sub
};

// [2710] Sub UL(parentID As String, elID As String, text As String) As BANanoElement 
this.ul=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2711]  Dim el As BANanoElement = AddElement(parentID, {653} , elID, text) 
_el=_B.addelement(_parentid,"ul",_elid,_text,_B);
// [2712]  Return el 
return _el;
// End Sub
};

// [2715] Sub H1(parentID As String, elID As String, text As String) As BANanoElement 
this.h1=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2716]  Dim el As BANanoElement = AddElement(parentID, {654} , elID, text) 
_el=_B.addelement(_parentid,"h1",_elid,_text,_B);
// [2717]  Return el 
return _el;
// End Sub
};

// [2720] Sub H2(parentID As String, elID As String, text As String) As BANanoElement 
this.h2=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2721]  Dim el As BANanoElement = AddElement(parentID, {655} , elID,text) 
_el=_B.addelement(_parentid,"h2",_elid,_text,_B);
// [2722]  Return el 
return _el;
// End Sub
};

// [2725] Sub H3(parentID As String, elID As String,text As String) As BANanoElement 
this.h3=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2726]  Dim el As BANanoElement = AddElement(parentID, {656} , elID, text) 
_el=_B.addelement(_parentid,"h3",_elid,_text,_B);
// [2727]  Return el 
return _el;
// End Sub
};

// [2730] Sub H4(parentID As String, elID As String,text As String) As BANanoElement 
this.h4=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2731]  Dim el As BANanoElement = AddElement(parentID, {657} , elID,text) 
_el=_B.addelement(_parentid,"h4",_elid,_text,_B);
// [2732]  Return el 
return _el;
// End Sub
};

// [2735] Sub H5(parentID As String, elID As String,text As String) As BANanoElement 
this.h5=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2736]  Dim el As BANanoElement = AddElement(parentID, {658} , elID,text) 
_el=_B.addelement(_parentid,"h5",_elid,_text,_B);
// [2737]  Return el 
return _el;
// End Sub
};

// [2740] Sub H6(parentID As String, elID As String,text As String) As BANanoElement 
this.h6=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2741]  Dim el As BANanoElement = AddElement(parentID, {659} , elID,text) 
_el=_B.addelement(_parentid,"h6",_elid,_text,_B);
// [2742]  Return el 
return _el;
// End Sub
};

// [2745] Sub P(parentID As String, elID As String,text As String) As BANanoElement 
this.p=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2746]  Dim el As BANanoElement = AddElement(parentID, {660} , elID,text) 
_el=_B.addelement(_parentid,"p",_elid,_text,_B);
// [2747]  Return el 
return _el;
// End Sub
};

// [2750] Sub SPAN(parentID As String, elID As String, text As String) As BANanoElement 
this.span=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2751]  Dim el As BANanoElement = AddElement(parentID, {661} , elID,text) 
_el=_B.addelement(_parentid,"span",_elid,_text,_B);
// [2752]  Return el 
return _el;
// End Sub
};

// [2755] Sub DIV(parentID As String, elID As String,text As String) As BANanoElement 
this.div=function(_parentid,_elid,_text) {
if (_B==null) _B=this;
var _el;
// [2756]  Dim el As BANanoElement = AddElement(parentID, {662} , elID,text) 
_el=_B.addelement(_parentid,"div",_elid,_text,_B);
// [2757]  Return el 
return _el;
// End Sub
};

// [2761] Sub BANanoGetHTML(id As String) As String 
this.bananogethtml=function(_id) {
if (_B==null) _B=this;
var _be,_xtemplate;
// [2762]  id = id.tolowercase 
_id=_id.toLowerCase();
// [2763]  id = id.Replace( {663} , {664} ) 
_id=_id.split("#").join("");
// [2764]  Dim be As BANanoElement 
_be=null;
// [2765]  be.Initialize( {33} ) 
_be=u("#" + _id + "");
// [2766]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [2767]  be.Empty 
_be.empty();
// [2768]  xTemplate = xTemplate.Replace( {665} , {666} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [2769]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [2773] Sub BANanoMoveHTML(source As String, target As String) 
this.bananomovehtml=function(_source,_target) {
if (_B==null) _B=this;
var _ssource;
// [2774]  source = source.tolowercase 
_source=_source.toLowerCase();
// [2775]  target = target.tolowercase 
_target=_target.toLowerCase();
// [2776]  Dim ssource As String = BANanoGetHTML(source) 
_ssource=_B.bananogethtml(_source,_B);
// [2778]  BANano.GetElement( {34} ).Append(ssource) 
u("#" + _target + "").append(_ssource);
// End Sub
};

// [2781] Sub AddHTMLElement(Module As Object, parentID As String, elID As String, tag As String, props As Map, styleProps As Map, classNames As String, Text As String) 
this.addhtmlelement=function(_module,_parentid,_elid,_tag,_props,_styleprops,_classnames,_text) {
if (_B==null) _B=this;
var _elit,_k,_v,_selement;
// [2782]  parentID = parentID.ToLowerCase 
_parentid=_parentid.toLowerCase();
// [2783]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [2784]  parentID = parentID.Replace( {667} , {668} ) 
_parentid=_parentid.split("#").join("");
// [2785]  elID = elID.Replace( {669} , {670} ) 
_elid=_elid.split("#").join("");
// [2787]  Dim elIT As VueElement 
_elit= new banano_bananovuetifyad3_vueelement();
// [2788]  elIT.Initialize(Module, elID, tag) 
_elit.initialize(_module,_elid,_tag);
// [2789]  elIT.SetText(Text) 
_elit.settext(_text);
// [2791]  If props <> Null Then 
if (_props!=null) {
// [2792]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2793]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [2794]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [2795]  Next 
}
// [2796]  End If 
}
// [2797]  If styleProps <> Null Then 
if (_styleprops!=null) {
// [2798]  For Each k As String In styleProps.Keys 
var _kKeys = Object.keys(_styleprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2799]  Dim v As String = styleProps.get(k) 
_v=_styleprops[_k];
// [2800]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [2801]  Next 
}
// [2802]  End If 
}
// [2803]  If classNames <> {671} Then 
if (_classnames!="") {
// [2804]  elIT.AddClass(classNames) 
_elit.addclass(_classnames);
// [2805]  End If 
}
// [2807]  Dim sElement As String = elIT.tostring 
_selement=_elit.tostring();
// [2808]  BANano.GetElement( {35} ).Append(sElement) 
u("#" + _parentid + "").append(_selement);
// End Sub
};

// [2813] Sub BuildPHPEmail(sfrom As String, sto As String, scc As String, ssubject As String, smsg As String) As Map 
this.buildphpemail=function(_sfrom,_sto,_scc,_ssubject,_smsg) {
if (_B==null) _B=this;
var _se;
// [2814]  Dim se As Map = CreateMap( {672} :sfrom, {673} :sto, {674} :scc, {675} :ssubject, {676} :smsg) 
_se={"from":_sfrom, "to":_sto, "cc":_scc, "subject":_ssubject, "msg":_smsg};
// [2815]  Return se 
return _se;
// End Sub
};

// [2818] Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement 
this.appendelement=function(_parent,_tag,_id,_text) {
if (_B==null) _B=this;
var _item,_el;
// [2819]  parent = parent.ToLowerCase 
_parent=_parent.toLowerCase();
// [2820]  parent = parent.Replace( {677} , {678} ) 
_parent=_parent.split("#").join("");
// [2821]  Dim item As String = {36} 
_item="<" + _tag + " id=\"" + _id + "\"></" + _tag + ">";
// [2822]  Dim el As BANanoElement = BANano.GetElement( {37} ).Append(item).Get( {38} ) 
_el=u("#" + _parent + "").append(_item).find("#" + _id + "").bananofirst();
// [2823]  el.SetText(text) 
_el.text(_text);
// [2824]  Return el 
return _el;
// End Sub
};

// [2828] Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement 
this.appendelement1=function(_parentid,_tag,_id,_text,_props,_styles,_classes) {
if (_B==null) _B=this;
var _el,_k,_v,_strstyle;
// [2829]  parentID = parentID.ToLowerCase 
_parentid=_parentid.toLowerCase();
// [2830]  parentID = parentID.Replace( {679} , {680} ) 
_parentid=_parentid.split("#").join("");
// [2831]  id = id.tolowercase 
_id=_id.toLowerCase();
// [2832]  Dim el As BANanoElement = BANano.GetElement( {39} ).Append( {40} ).Get( {41} ) 
_el=u("#" + _parentid + "").append("<" + _tag + " id=\"" + _id + "\"></" + _tag + ">").find("#" + _id + "").bananofirst();
// [2833]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [2834]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2835]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [2836]  el.SetAttr(k, v) 
_el.attr(_k,_v);
// [2837]  Next 
}
// [2838]  End If 
}
// [2840]  If BANano.IsNull(styles) = False Then 
if (is.null(_styles)==false) {
// [2841]  Dim strStyle As String = BANano.ToJson(styles) 
_strstyle=JSON.stringify(_styles);
// [2842]  el.SetStyle(strStyle) 
_el.css(JSON.parse(_strstyle));
// [2843]  End If 
}
// [2845]  If classes <> {681} Then el.AddClass(classes) 
if (_classes!="") {_el.addClass(_classes);}
// [2846]  el.settext(text) 
_el.text(_text);
// [2847]  Return el 
return _el;
// End Sub
};

// [2851] Sub BANanoGetHTMLAsIs(id As String) As String 
this.bananogethtmlasis=function(_id) {
if (_B==null) _B=this;
var _be,_xtemplate;
// [2852]  id = id.tolowercase 
_id=_id.toLowerCase();
// [2853]  id = id.Replace( {682} , {683} ) 
_id=_id.split("#").join("");
// [2854]  Dim be As BANanoElement 
_be=null;
// [2855]  be.Initialize( {42} ) 
_be=u("#" + _id + "");
// [2856]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [2857]  be.Empty 
_be.empty();
// [2858]  Return xTemplate 
return _xtemplate;
// End Sub
};

}
 
function hexToRgb(hexCode) { 
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/; 
    var matches = patt.exec(hexCode); 
    var rgb = "rgb(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + ")"; 
    return rgb; 
} 
 
function hexToRgba(hexCode, opacity) { 
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/; 
    var matches = patt.exec(hexCode); 
    var rgb = "rgba(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + "," + opacity + ")"; 
    return rgb; 
} 

/* =========================== VueComponent =========================== */
function banano_bananovuetifyad3_vuecomponent() {
var _B=this;
_B._mname="";

_B._mcallback={};

_B._jsstring=null;

_B._jsnumber=null;

_B._jsboolean=null;

_B._jsarray=null;

_B._jsobject=null;

_B._refs=null;

_B._data={};

_B._opt={};

_B._methods={};

_B._computed={};

_B._watches={};

_B._filters={};

_B._components={};

_B._mprops={};

_B._query={};

_B._template= new banano_bananovuetifyad3_vueelement();

_B._path="";

_B._templateid="";

_B._apptemplatename="#apptemplate";

_B._appendholdername="#appendholder";

_B._placeholdername="#placeholder";

// [31] Public Sub Initialize (CallBack As Object, Name As String) As VueComponent 
_B.initialize=function(_callback,_name) {
// [32]  mName = Name.tolowercase 
_B._mname=_name.toLowerCase();
// [33]  mCallBack = CallBack 
_B._mcallback=_callback;
// [34]  opt.Initialize 
_B._opt={};
// [35]  data.Initialize 
_B._data={};
// [36]  mprops.Initialize 
_B._mprops={};
// [37]  methods.Initialize 
_B._methods={};
// [38]  computed.Initialize 
_B._computed={};
// [39]  watches.Initialize 
_B._watches={};
// [40]  filters.Initialize 
_B._filters={};
// [41]  query.Initialize 
_B._query={};
// [42]  components.initialize 
_B._components={};
// [43]  Path = {0} 
_B._path="/" + _B._mname + "";
// [45]  jsString.Initialize( {15} ) 
_B._jsstring=String;
// [46]  jsNumber.Initialize( {16} ) 
_B._jsnumber=Number;
// [47]  jsBoolean.Initialize( {17} ) 
_B._jsboolean=Boolean;
// [48]  jsArray.Initialize( {18} ) 
_B._jsarray=Array;
// [49]  jsObject.Initialize( {19} ) 
_B._jsobject=Object;
// [52]  TemplateID = {1} 
_B._templateid="" + _B._mname + "ph";
// [53]  Template.Initialize(mCallBack, TemplateID, {20} ) 
_B._template.initialize(_B._mcallback,_B._templateid,"template");
// [54]  Return Me 
return _B;
// End Sub
};

// [58] Sub SetQueryString(k As String, v As String) 
_B.setquerystring=function(_k,_v) {
// [59]  query.Put(k, v) 
_B._query[_k]=_v;
// End Sub
};

// [63] Sub BindVueElement(el As VueElement) 
_B.bindvueelement=function(_el) {
var _mbindings,_mmethods,_k,_v,_cb;
// [64]  Dim mbindings As Map = el.bindings 
_mbindings=_el._bindings;
// [65]  Dim mmethods As Map = el.methods 
_mmethods=_el._methods;
// [67]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [68]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [69]  Select Case k 
switch ("" + _k) {
// [70]  Case {21} 
case "" + "key":
// [71]  Case {22} , {23} 
break;
case "" + ":rules":
case "" + ":items":
// [72]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [73]  Case Else 
break;
default:
// [74]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [75]  End Select 
break;
}
// [76]  Next 
}
// [78]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [79]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [80]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [81]  Next 
}
// End Sub
};

// [86] Sub BindVueTable(el As VueTable) 
_B.bindvuetable=function(_el) {
var _mbindings,_mmethods,_k,_v,_cb;
// [87]  el.refresh 
_el.refresh();
// [88]  Dim mbindings As Map = el.bindings 
_mbindings=_el._bindings;
// [89]  Dim mmethods As Map = el.methods 
_mmethods=_el._methods;
// [91]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [92]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [93]  Select Case k 
switch ("" + _k) {
// [94]  Case {24} 
case "" + "key":
// [95]  Case {25} , {26} 
break;
case "" + ":rules":
case "" + ":items":
// [96]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [97]  Case Else 
break;
default:
// [98]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [99]  End Select 
break;
}
// [100]  Next 
}
// [102]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [103]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [104]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [105]  Next 
}
// End Sub
};

// [109] Sub NewList As List 
_B.newlist=function() {
var _elx;
// [110]  Dim elx As List 
_elx=[];
// [111]  elx.Initialize 
_elx.length=0;
// [112]  Return elx 
return _elx;
// End Sub
};

// [116] Sub GetElementByData(dataattr As String, value As String) As BANanoElement 
_B.getelementbydata=function(_dataattr,_value) {
var _skey,_dataid;
// [117]  dataattr = dataattr.tolowercase 
_dataattr=_dataattr.toLowerCase();
// [118]  Dim skey As String = {2} 
_skey="[data-" + _dataattr + "='" + _value + "']";
// [119]  Dim dataId As BANanoElement 
_dataid=null;
// [120]  dataId.Initialize(skey) 
_dataid=u(_skey);
// [121]  Return dataId 
return _dataid;
// End Sub
};

// [125] Sub Import(comp As VueComponent) 
_B.import=function(_comp) {
var _compname,_compx;
// [126]  Dim compname As String = comp.mName 
_compname=_comp._mname;
// [127]  compname = compname.tolowercase 
_compname=_compname.toLowerCase();
// [128]  If components.ContainsKey(compname) = True Then Return 
if ((_compname in _B._components)==true) { return ;}
// [129]  Dim compx As Map = comp.Component 
_compx=_comp.component();
// [130]  components.Put(compname, compx) 
_B._components[_compname]=_compx;
// End Sub
};

// [133] Sub AddElement1(elTag As String, elID As String, elText As String, elprops As Map, mstyles As Map, lclasses As List, loose As List) 
_B.addelement1=function(_eltag,_elid,_eltext,_elprops,_mstyles,_lclasses,_loose) {
// [134]  Template.AddElement(elID, elTag, elprops, mstyles, lclasses, loose, elText) 
_B._template.addelement(_elid,_eltag,_elprops,_mstyles,_lclasses,_loose,_eltext);
// End Sub
};

// [137] Sub AddCustomElement(eltag As String, elid As String, elprops As Map, eltext As String) 
_B.addcustomelement=function(_eltag,_elid,_elprops,_eltext) {
// [138]  Template.AddElement(elid, eltag, elprops, Null, Null, Null, eltext) 
_B._template.addelement(_elid,_eltag,_elprops,null,null,null,_eltext);
// End Sub
};

// [142] Sub ImportBO(compName As String, comp As BANanoObject) 
_B.importbo=function(_compname,_comp) {
// [143]  If components.ContainsKey(compName) = True Then Return 
if ((_compname in _B._components)==true) { return ;}
// [144]  components.Put(compName, comp) 
_B._components[_compname]=_comp;
// End Sub
};

// [148] Sub AddElement(ve As VueElement) 
_B.addelement=function(_ve) {
// [149]  Template.AddChild(ve.ToString) 
_B._template.addchild(_ve.tostring());
// [150]  BindVueElement(ve) 
_B.bindvueelement(_ve,_B);
// End Sub
};

// [154] Sub AddHTML(html As String) 
_B.addhtml=function(_html) {
// [155]  Template.AddChild(html) 
_B._template.addchild(_html);
// End Sub
};

// [159] Sub SetMounted(module As Object, methodName As String, args As List) As VueComponent 
_B.setmounted=function(_module,_methodname,_args) {
var _mounted;
// [160]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [161]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [162]  Dim mounted As BANanoObject = BANano.CallBack(module, methodName, args) 
_mounted=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [163]  opt.Put( {27} , mounted) 
_B._opt["mounted"]=_mounted;
// [164]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [165]  Return Me 
return _B;
// End Sub
};

// [169] Sub SetUpdated(module As Object, methodName As String, args As List) As VueComponent 
_B.setupdated=function(_module,_methodname,_args) {
var _updated;
// [170]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [171]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [172]  Dim updated As BANanoObject = BANano.CallBack(module, methodName, args) 
_updated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [173]  opt.Put( {28} , updated) 
_B._opt["updated"]=_updated;
// [174]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [175]  Return Me 
return _B;
// End Sub
};

// [179] Sub SetBeforeMount(module As Object, methodName As String, args As List) As VueComponent 
_B.setbeforemount=function(_module,_methodname,_args) {
var _beforemount;
// [180]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [181]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [182]  Dim beforeMount As BANanoObject = BANano.CallBack(module, methodName, args) 
_beforemount=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [183]  opt.Put( {29} , beforeMount) 
_B._opt["beforeMount"]=_beforemount;
// [184]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [185]  Return Me 
return _B;
// End Sub
};

// [189] Sub SetBeforeUpdate(module As Object, methodName As String, args As List) As VueComponent 
_B.setbeforeupdate=function(_module,_methodname,_args) {
var _beforeupdate;
// [190]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [191]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [192]  Dim beforeUpdate As Boolean = BANano.CallBack(module, methodName, args) 
_beforeupdate=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [193]  opt.Put( {30} , beforeUpdate) 
_B._opt["beforeUpdate"]=_beforeupdate;
// [194]  SetMethod(module, methodName,args) 
_B.setmethod(_module,_methodname,_args,_B);
// [195]  Return Me 
return _B;
// End Sub
};

// [199] Sub SetBeforeDestroy(module As Object, methodName As String, args As List) As VueComponent 
_B.setbeforedestroy=function(_module,_methodname,_args) {
var _beforedestroy;
// [200]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [201]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [202]  Dim beforeDestroy As Boolean = BANano.CallBack(module, methodName, args) 
_beforedestroy=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [203]  opt.Put( {31} , beforeDestroy) 
_B._opt["beforeDestroy"]=_beforedestroy;
// [204]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [205]  Return Me 
return _B;
// End Sub
};

// [210] Sub SetBeforeCreate(module As Object, methodName As String, args As List) As VueComponent 
_B.setbeforecreate=function(_module,_methodname,_args) {
var _beforecreate;
// [211]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [212]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [213]  Dim beforeCreate As BANanoObject = BANano.CallBack(module, methodName, args) 
_beforecreate=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [214]  opt.Put( {32} , beforeCreate) 
_B._opt["beforeCreate"]=_beforecreate;
// [215]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [216]  Return Me 
return _B;
// End Sub
};

// [221] Sub SetCreated(module As Object, methodName As String, args As List) As VueComponent 
_B.setcreated=function(_module,_methodname,_args) {
var _created;
// [222]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [223]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [224]  Dim created As BANanoObject = BANano.CallBack(module, methodName, args) 
_created=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [225]  opt.Put( {33} , created) 
_B._opt["created"]=_created;
// [226]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [227]  Return Me 
return _B;
// End Sub
};

// [231] Sub SetDestroyed(module As Object, methodName As String, args As List) As VueComponent 
_B.setdestroyed=function(_module,_methodname,_args) {
var _destroyed;
// [232]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [233]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [234]  Dim destroyed As BANanoObject = BANano.CallBack(module, methodName, args) 
_destroyed=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [235]  opt.Put( {34} , destroyed) 
_B._opt["destroyed"]=_destroyed;
// [236]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [237]  Return Me 
return _B;
// End Sub
};

// [242] Sub SetActivated(module As Object, methodName As String, args As List) As VueComponent 
_B.setactivated=function(_module,_methodname,_args) {
var _activated;
// [243]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [244]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [245]  Dim activated As BANanoObject = BANano.CallBack(module, methodName, args) 
_activated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [246]  opt.Put( {35} , activated) 
_B._opt["activated"]=_activated;
// [247]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [248]  Return Me 
return _B;
// End Sub
};

// [251] Sub AddProperty1(propName As String, propType As BANanoObject, propDefault As Object, propRequired As Boolean) 
_B.addproperty1=function(_propname,_proptype,_propdefault,_proprequired) {
var _mprop;
// [252]  Dim mprop As Map = CreateMap() 
_mprop={};
// [253]  If BANano.IsNull(propType) = False Then mprop.Put( {36} , propType) 
if (is.null(_proptype)==false) {_mprop["type"]=_proptype;}
// [254]  If BANano.IsNull(propDefault) = False Then mprop.Put( {37} , propDefault) 
if (is.null(_propdefault)==false) {_mprop["default"]=_propdefault;}
// [255]  If BANano.IsNull(propRequired) = False Then mprop.Put( {38} , propRequired) 
if (is.null(_proprequired)==false) {_mprop["required"]=_proprequired;}
// [256]  mprops.Put(propName, mprop) 
_B._mprops[_propname]=_mprop;
// End Sub
};

// [261] Sub SetDeActivated(module As Object, methodName As String, args As List) As VueComponent 
_B.setdeactivated=function(_module,_methodname,_args) {
var _deactivated;
// [262]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [263]  If SubExists(module, methodName) = False Then Return Me 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return _B;}
// [264]  Dim deactivated As BANanoObject = BANano.CallBack(module, methodName, args) 
_deactivated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [265]  opt.Put( {39} , deactivated) 
_B._opt["deactivated"]=_deactivated;
// [266]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// [267]  Return Me 
return _B;
// End Sub
};

// [271] Sub SetPath(sPath As String) As VueComponent 
_B.setpath=function(_spath) {
// [272]  Path = sPath 
_B._path=_spath;
// [273]  Return Me 
return _B;
// End Sub
};

// [277] public Sub getID() As String 
_B.getid=function() {
// [278]  Return mName 
return _B._mname;
// End Sub
};

// [282] Sub setID(varText As String) As VueComponent 
_B.setid=function(_vartext) {
// [283]  mName = varText 
_B._mname=_vartext;
// [284]  Return Me 
return _B;
// End Sub
};

// [288] Sub SetData(prop As String, value As Object) As VueComponent 
_B.setdata=function(_prop,_value) {
// [289]  data.put(prop, value) 
_B._data[_prop]=_value;
// [290]  Return Me 
return _B;
// End Sub
};

// [294] Sub Component As Map 
_B.component=function() {
var _stemplate,_cb;
// [295]  Dim sTemplate As String = Template.ToString 
_stemplate=_B._template.tostring();
// [296]  sTemplate = sTemplate.Replace( {40} , {41} ) 
_stemplate=_stemplate.split("v-template").join("template");
// [297]  Dim cb As BANanoObject = BANano.CallBack(Me, {42} , Null) 
_cb=function() {if (typeof _B[("returndata").toLowerCase()]==="function") {return _B[("returndata").toLowerCase()](_B)};};
// [298]  opt.Put( {43} , cb.Result) 
_B._opt["data"]=_cb;
// [299]  opt.Put( {44} , methods) 
_B._opt["methods"]=_B._methods;
// [300]  opt.Put( {45} , computed) 
_B._opt["computed"]=_B._computed;
// [301]  opt.Put( {46} , watches) 
_B._opt["watch"]=_B._watches;
// [302]  opt.Put( {47} , mprops) 
_B._opt["props"]=_B._mprops;
// [303]  opt.Put( {48} , filters) 
_B._opt["filters"]=_B._filters;
// [304]  opt.Put( {49} , sTemplate) 
_B._opt["template"]=_stemplate;
// [305]  opt.Put( {50} , components) 
_B._opt["components"]=_B._components;
// [306]  Return opt 
return _B._opt;
// End Sub
};

// [310] private Sub returndata As Map 'ignoredeadcode 
_B.returndata=function() {
// [311]  Return data 
return _B._data;
// End Sub
};

// [315] Sub RemoveData(key As String) 
_B.removedata=function(_key) {
// [316]  key = key.ToLowerCase 
_key=_key.toLowerCase();
// [317]  data.Remove(key) 
delete _B._data[_key];
// End Sub
};

// [320] Sub GetData(prop As String) As Object 
_B.getdata=function(_prop) {
var _obj;
// [321]  Dim obj As Object = data.GetDefault(prop, {51} ) 
_obj=_B._data[_prop]===undefined? "":_B._data[_prop];
// [322]  Return obj 
return _obj;
// End Sub
};

// [326] Sub AddProperty(propName As String) 
_B.addproperty=function(_propname) {
var _mprop;
// [327]  Dim mprop As Map = CreateMap() 
_mprop={};
// [328]  mprop.Put( {52} , jsString) 
_mprop["type"]=_B._jsstring;
// [329]  mprops.Put(propName, mprop) 
_B._mprops[_propname]=_mprop;
// End Sub
};

// [333] Sub AddProperties(propsList As List) 
_B.addproperties=function(_propslist) {
var _k;
// [334]  For Each k As String In propsList 
for (var _kindex=0;_kindex<_propslist.length;_kindex++) {
_k=_propslist[_kindex];
// [335]  AddProperty(k) 
_B.addproperty(_k,_B);
// [336]  Next 
}
// End Sub
};

// [340] Sub SetFilter(module As Object, methodName As String) 
_B.setfilter=function(_module,_methodname) {
var _value,_cb;
// [341]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [342]  If SubExists(module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [343]  Dim value As Object 
_value={};
// [344]  Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value)) 
_cb=function(_value) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_value,_B)};};
// [345]  filters.Put(methodName, cb) 
_B._filters[_methodname]=_cb;
// [346]  Else 
} else {
// [347]  Log( {3} ) 
console.log("SetFilter." + _methodname + " could not be found!");
// [348]  End If 
}
// End Sub
};

// [352] Sub SetComputed(k As String, module As Object, methodName As String, args As List) 
_B.setcomputed=function(_k,_module,_methodname,_args) {
var _cb;
// [353]  k = k.tolowercase 
_k=_k.toLowerCase();
// [354]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [355]  If SubExists(module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [356]  Dim cb As BANanoObject = BANano.CallBack(module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [357]  computed.Put(k, cb.Result) 
_B._computed[_k]=_cb;
// [358]  End If 
}
// End Sub
};

// [362] Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, Module As Object, methodName As String, args As List) 
_B.setwatch=function(_k,_bimmediate,_bdeep,_module,_methodname,_args) {
var _cb,_deepit;
// [363]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [364]  k = k.tolowercase 
_k=_k.toLowerCase();
// [365]  If SubExists(Module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [366]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [367]  Dim deepit As Map = CreateMap() 
_deepit={};
// [368]  deepit.Put( {53} , methodName) 
_deepit["handler"]=_methodname;
// [369]  deepit.Put( {54} , bDeep) 
_deepit["deep"]=_bdeep;
// [370]  deepit.Put( {55} , bImmediate) 
_deepit["immediate"]=_bimmediate;
// [371]  watches.Put(k, deepit) 
_B._watches[_k]=_deepit;
// [372]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// [373]  End If 
}
// End Sub
};

// [377] Sub SetMethod(Module As Object, methodName As String, args As List) 
_B.setmethod=function(_module,_methodname,_args) {
var _cb;
// [378]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [379]  If SubExists(Module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [380]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [381]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// [382]  End If 
}
// End Sub
};

// [386] Sub SetCallBack(methodName As String, cb As BANanoObject) 
_B.setcallback=function(_methodname,_cb) {
// [387]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [388]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// End Sub
};

// [393] Sub SetState(m As Map) 
_B.setstate=function(_m) {
var _k,_v;
// [394]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [395]  Dim v As Object = m.Get(k) 
_v=_m[_k];
// [396]  k = k.tolowercase 
_k=_k.toLowerCase();
// [397]  data.Put(k, v) 
_B._data[_k]=_v;
// [398]  Next 
}
// End Sub
};

// [402] Sub HasState(k As String) As Boolean 
_B.hasstate=function(_k) {
// [403]  k = k.tolowercase 
_k=_k.toLowerCase();
// [404]  Return data.ContainsKey(k) 
return (_k in _B._data);
// End Sub
};

// [408] Sub GetState(k As String, v As Object) As Object 
_B.getstate=function(_k,_v) {
var _out;
// [409]  k = k.tolowercase 
_k=_k.toLowerCase();
// [410]  If data.ContainsKey(k) Then 
if ((_k in _B._data)) {
// [411]  Dim out As Object = data.GetDefault(k,v) 
_out=_B._data[_k]===undefined? _v:_B._data[_k];
// [412]  Return out 
return _out;
// [413]  Else 
} else {
// [414]  Log( {56} & k) 
console.log("GetState: First set the v-model for "+_k);
// [415]  Return {57} 
return "";
// [416]  End If 
}
// End Sub
};

// [420] Sub ToggleState(stateName As String) 
_B.togglestate=function(_statename) {
var _bcurrent,_optx;
// [421]  Dim bcurrent As Boolean = GetState(stateName, {58} ) 
_bcurrent=_B.getstate(_statename,"",_B);
// [422]  bcurrent = Not(bcurrent) 
_bcurrent=!(_bcurrent);
// [423]  Dim optx As Map = CreateMap() 
_optx={};
// [424]  optx.Put(stateName, bcurrent) 
_optx[_statename]=_bcurrent;
// [425]  SetState(optx) 
_B.setstate(_optx,_B);
// End Sub
};

// [429] Sub Toggle(stateID As String) 
_B.toggle=function(_stateid) {
// [430]  ToggleState(stateID) 
_B.togglestate(_stateid,_B);
// End Sub
};

// [434] Sub StateExists(stateName As String) As Boolean 
_B.stateexists=function(_statename) {
// [435]  stateName = stateName.tolowercase 
_statename=_statename.toLowerCase();
// [436]  Return data.ContainsKey(stateName) 
return (_statename in _B._data);
// End Sub
};

// [440] Sub SetStateMap(mapKey As String, mapValues As Map) 
_B.setstatemap=function(_mapkey,_mapvalues) {
var _optm;
// [441]  mapKey = mapKey.tolowercase 
_mapkey=_mapkey.toLowerCase();
// [442]  Dim optm As Map = CreateMap() 
_optm={};
// [443]  optm.Put(mapKey, mapValues) 
_optm[_mapkey]=_mapvalues;
// [444]  SetState(optm) 
_B.setstate(_optm,_B);
// End Sub
};

// [448] Sub SetStateList(mapKey As String, mapValues As List) 
_B.setstatelist=function(_mapkey,_mapvalues) {
var _optm;
// [449]  mapKey = mapKey.tolowercase 
_mapkey=_mapkey.toLowerCase();
// [450]  Dim optm As Map = CreateMap() 
_optm={};
// [451]  optm.Put(mapKey, mapValues) 
_optm[_mapkey]=_mapvalues;
// [452]  SetState(optm) 
_B.setstate(_optm,_B);
// End Sub
};

// [456] Sub SetStateListValues(mapValues As List) 
_B.setstatelistvalues=function(_mapvalues) {
var _lstvalue,_optm;
// [457]  For Each lstValue As String In mapValues 
for (var _lstvalueindex=0;_lstvalueindex<_mapvalues.length;_lstvalueindex++) {
_lstvalue=_mapvalues[_lstvalueindex];
// [458]  lstValue = lstValue.tolowercase 
_lstvalue=_lstvalue.toLowerCase();
// [459]  Dim optm As Map = CreateMap() 
_optm={};
// [460]  optm.Put(lstValue, {59} ) 
_optm[_lstvalue]="";
// [461]  SetState(optm) 
_B.setstate(_optm,_B);
// [462]  Next 
}
// End Sub
};

// [466] Sub GetStates(lst As List) As Map 
_B.getstates=function(_lst) {
var _smm,_lstrec,_state;
// [467]  Dim smm As Map = CreateMap() 
_smm={};
// [468]  For Each lstrec As String In lst 
for (var _lstrecindex=0;_lstrecindex<_lst.length;_lstrecindex++) {
_lstrec=_lst[_lstrecindex];
// [469]  lstrec = lstrec.tolowercase 
_lstrec=_lstrec.toLowerCase();
// [470]  Dim state As Object = GetState(lstrec, Null) 
_state=_B.getstate(_lstrec,null,_B);
// [471]  smm.Put(lstrec, state) 
_smm[_lstrec]=_state;
// [472]  Next 
}
// [473]  Return smm 
return _smm;
// End Sub
};

// [477] Sub SetStateTrue(k As String) 
_B.setstatetrue=function(_k) {
// [478]  SetStateSingle(k,True) 
_B.setstatesingle(_k,true,_B);
// End Sub
};

// [482] Sub SetStateFalse(k As String) 
_B.setstatefalse=function(_k) {
// [483]  SetStateSingle(k,False) 
_B.setstatesingle(_k,false,_B);
// End Sub
};

// [487] Sub SetStateSingle(k As String, v As Object) 
_B.setstatesingle=function(_k,_v) {
var _optx;
// [488]  k = k.tolowercase 
_k=_k.toLowerCase();
// [489]  Dim optx As Map = CreateMap() 
_optx={};
// [490]  optx.Put(k, v) 
_optx[_k]=_v;
// [491]  SetState(optx) 
_B.setstate(_optx,_B);
// End Sub
};

// [494] Sub NotState(stateName As String) As Boolean 
_B.notstate=function(_statename) {
var _bcurrent;
// [495]  Dim bcurrent As Boolean = GetState(stateName,False) 
_bcurrent=_B.getstate(_statename,false,_B);
// [496]  If bcurrent = Null Then bcurrent = True 
if (_bcurrent==null) {_bcurrent=true;}
// [497]  bcurrent = Not(bcurrent) 
_bcurrent=!(_bcurrent);
// [498]  Return bcurrent 
return _bcurrent;
// End Sub
};

// [501] Sub Increment(k As String) As VueComponent 
_B.increment=function(_k) {
var _oldv;
// [502]  Dim oldV As String = GetState(k, {60} ) 
_oldv=_B.getstate(_k,"0",_B);
// [503]  If BANano.IsNull(oldV) Or oldV = {61} Then oldV = 0 
if (is.null(_oldv) || _oldv=="") {_oldv=0;}
// [504]  oldV = BANano.parseInt(oldV) + 1 
_oldv=parseInt(_oldv)+1;
// [505]  SetStateSingle(k, oldV) 
_B.setstatesingle(_k,_oldv,_B);
// [506]  Return Me 
return _B;
// End Sub
};

// [509] Sub Decrement(k As String) As VueComponent 
_B.decrement=function(_k) {
var _oldv;
// [510]  Dim oldV As String = GetState(k, {62} ) 
_oldv=_B.getstate(_k,"0",_B);
// [511]  If BANano.IsNull(oldV) Or oldV = {63} Then oldV = 0 
if (is.null(_oldv) || _oldv=="") {_oldv=0;}
// [512]  oldV = BANano.parseInt(oldV) - 1 
_oldv=parseInt(_oldv)-1;
// [513]  SetStateSingle(k, oldV) 
_B.setstatesingle(_k,_oldv,_B);
// [514]  Return Me 
return _B;
// End Sub
};

// [517] Sub Enable(elID As String) 
_B.enable=function(_elid) {
// [518]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [519]  SetStateSingle( {4} , False) 
_B.setstatesingle("" + _elid + "disabled",false,_B);
// End Sub
};

// [522] Sub Disable(elID As String) 
_B.disable=function(_elid) {
// [523]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [524]  SetStateSingle( {5} , True) 
_B.setstatesingle("" + _elid + "disabled",true,_B);
// End Sub
};

// [528] Sub SetEnabled(elID As String, b As Boolean) 
_B.setenabled=function(_elid,_b) {
// [529]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [530]  SetStateSingle( {6} , b) 
_B.setstatesingle("" + _elid + "disabled",_b,_B);
// End Sub
};

// [534] Sub Hide(elID As String) 
_B.hide=function(_elid) {
// [535]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [536]  SetStateSingle( {7} , False) 
_B.setstatesingle("" + _elid + "show",false,_B);
// End Sub
};

// [540] Sub Show(elID As String) 
_B.show=function(_elid) {
// [541]  SetStateSingle( {8} , True) 
_B.setstatesingle("" + _elid + "show",true,_B);
// End Sub
};

// [545] Sub SetFocus(refID As String) 
_B.setfocus=function(_refid) {
// [546]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [547]  refs.GetField(refID).RunMethod( {64} , Null) 
_B._refs[_refid]["focus"]();
// End Sub
};

// [552] Sub NullifyFileSelect(refID As String) 
_B.nullifyfileselect=function(_refid) {
// [553]  RefNull(refID) 
_B.refnull(_refid,_B);
// End Sub
};

// [556] Sub RefNull(refID As String) 
_B.refnull=function(_refid) {
// [557]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [558]  refs.GetField(refID).SetField( {65} , Null) 
_B._refs[_refid]["value"]=null;
// End Sub
};

// [563] Sub RefClick(refID As String) 
_B.refclick=function(_refid) {
// [564]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [565]  refs.GetField(refID).RunMethod( {66} , Null) 
_B._refs[_refid]["click"]();
// End Sub
};

// [569] Sub ShowFileSelect(fsName As String) 
_B.showfileselect=function(_fsname) {
// [570]  RefClick(fsName) 
_B.refclick(_fsname,_B);
// End Sub
};

// [574] Sub RefreshKey(keyName As String) As VueComponent 
_B.refreshkey=function(_keyname) {
// [575]  keyName = keyName.ToLowerCase 
_keyname=_keyname.toLowerCase();
// [576]  SetData(keyName, DateTime.now) 
_B.setdata(_keyname,DateTime.Now(),_B);
// [577]  Return Me 
return _B;
// End Sub
};

// [581] Sub AddRule(ruleName As String, Module As Object, MethodName As String) 
_B.addrule=function(_rulename,_module,_methodname) {
var _rules,_v,_cb;
// [582]  If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = {67} 
if (is.null(_rulename) || is.undefined(_rulename)) {_rulename="";}
// [583]  ruleName = ruleName.ToLowerCase 
_rulename=_rulename.toLowerCase();
// [584]  If ruleName = {68} Then Return 
if (_rulename=="") { return ;}
// [585]  MethodName = MethodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [586]  Dim rules As List 
_rules=[];
// [587]  If data.ContainsKey(ruleName) Then 
if ((_rulename in _B._data)) {
// [588]  rules = data.Get(ruleName) 
_rules=_B._data[_rulename];
// [589]  Else 
} else {
// [590]  rules = NewList 
_rules=_B.newlist(_B);
// [591]  End If 
}
// [593]  Dim v As Object 
_v={};
// [594]  Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(v)) 
_cb=function(_v) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_v,_B)};};
// [595]  If SubExists(Module, MethodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [596]  rules.Add(cb.Result) 
_rules.push(_cb);
// [597]  End If 
}
// [598]  data.put(ruleName, rules) 
_B._data[_rulename]=_rules;
// End Sub
};

// [603] Sub BANanoGetHTMLAsIs(id As String) As String 
_B.bananogethtmlasis=function(_id) {
var _be,_xtemplate;
// [604]  id = id.tolowercase 
_id=_id.toLowerCase();
// [605]  id = id.Replace( {69} , {70} ) 
_id=_id.split("#").join("");
// [606]  Dim be As BANanoElement 
_be=null;
// [607]  be.Initialize( {9} ) 
_be=u("#" + _id + "");
// [608]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [609]  be.Empty 
_be.empty();
// [610]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [615] Sub BANanoGetHTML(id As String) As String 
_B.bananogethtml=function(_id) {
var _be,_xtemplate;
// [616]  id = id.tolowercase 
_id=_id.toLowerCase();
// [617]  id = id.Replace( {71} , {72} ) 
_id=_id.split("#").join("");
// [618]  Dim be As BANanoElement 
_be=null;
// [619]  be.Initialize( {10} ) 
_be=u("#" + _id + "");
// [620]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [621]  be.Empty 
_be.empty();
// [622]  xTemplate = xTemplate.Replace( {73} , {74} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [623]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [627] Sub AppendHolder 
_B.appendholder=function() {
var _stemplate;
// [628]  Dim stemplate As String = BANanoGetHTMLAsIs( {75} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [629]  Template.SetText(stemplate) 
_B._template.settext(_stemplate);
// End Sub
};

// [633] Sub AppendHolderTo(target As String) 
_B.appendholderto=function(_target) {
var _stemplate,_elx;
// [634]  Dim stemplate As String = BANanoGetHTMLAsIs( {76} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [635]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [636]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [640] Sub AppendPlaceHolderTo(target As String) 
_B.appendplaceholderto=function(_target) {
var _stemplate,_elx;
// [641]  Dim stemplate As String = BANanoGetHTMLAsIs( {77} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [642]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [643]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [647] Sub AppendPlaceHolder 
_B.appendplaceholder=function() {
var _stemplate;
// [648]  Dim stemplate As String = BANanoGetHTMLAsIs( {78} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [649]  Template.SetText(stemplate) 
_B._template.settext(_stemplate);
// End Sub
};

// [661] Sub GetTableData(tblName As VueTable) As List 
_B.gettabledata=function(_tblname) {
var _recs;
// [662]  Dim recs As List = GetData(tblName.itemsname) 
_recs=_B.getdata(_tblname._itemsname,_B);
// [663]  Return recs 
return _recs;
// End Sub
};

// [668] Sub GetTableDataSelected(tblName As VueTable) As List 
_B.gettabledataselected=function(_tblname) {
var _recs;
// [669]  Dim recs As List = GetData(tblName.selected) 
_recs=_B.getdata(_tblname._selected,_B);
// [670]  Return recs 
return _recs;
// End Sub
};

// [673] Sub CallMethod(methodName As String) 
_B.callmethod=function(_methodname) {
var _bo;
// [674]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [675]  Dim bo As BANanoObject = Component 
_bo=_B.component(_B);
// [676]  bo.GetField( {79} ).RunMethod(methodName, Null) 
_bo["methods"][_methodname]();
// End Sub
};

// [679] Sub RunMethod(methodName As String, args As Object) 
_B.runmethod=function(_methodname,_args) {
var _bo;
// [680]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [681]  Dim bo As BANanoObject = Component 
_bo=_B.component(_B);
// [682]  bo.GetField( {80} ).RunMethod(methodName, args) 
_bo["methods"][_methodname](_args);
// End Sub
};

// [685] Sub getHTML As String 
_B.gethtml=function() {
// [686]  Return Template.ToString 
return _B._template.tostring();
// End Sub
};

}
/* =========================== VueElement =========================== */
function banano_bananovuetifyad3_vueelement() {
var _B=this;
_B._mname="";

_B._meventname="";

_B._mcallback={};

_B._mtarget=null;

_B._melement=null;

_B._mclasses="";

_B._stactiveclass="";

_B._mstyle="";

_B._mattributes="";

_B._mcaption="";

_B._classlist={};

_B._stylelist={};

_B._attributelist={};

_B._mtagname="div";

_B._moverwritetag="";

_B._sbtext=new StringBuilder();

_B._mstates="";

_B._bindings={};

_B._methods={};

_B._eonclick="";

_B._eonclickstop="";

_B._eondblclick="";

_B._eonchange="";

_B._eonclickalt="";

_B._eonclickshift="";

_B._eonclickprevent="";

_B._eonkeypress="";

_B._eonmousemove="";

_B._eonkeyup="";

_B._eonmouseout="";

_B._stkey="";

_B._stref="";

_B._bautoid=false;

_B._stslot="";

_B._stvbindclass="";

_B._stvbind="";

_B._stvbindstyle="";

_B._stvelse="";

_B._stvelseif="";

_B._stvfor="";

_B._stdatasource="";

_B._stvhtml="";

_B._stvalue="";

_B._stvif="";

_B._stvmodel="";

_B._bsetcolorbyattribute=true;

_B._stvshow="";

_B._stvtext="";

_B._stbackgroundcolor="";

_B._stbackgroundimage="";

_B._stbackgroundrepeat="";

_B._stborder="";

_B._stbordercolor="";

_B._stborderradius="";

_B._stborderstyle="";

_B._stborderwidth="";

_B._stcolor="";

_B._stcolorintensity="normal";

_B._sttextcolor="";

_B._sttextcolorintensity="normal";

_B._stfontfamily="";

_B._stfontsize="";

_B._stfontstyle="";

_B._stfontweight="";

_B._stheight="";

_B._stmaxheight="";

_B._stmaxwidth="";

_B._sttextalign="";

_B._sttextdecoration="";

_B._stlabel="";

_B._stwidth="";

_B._bloremipsum=false;

_B._bdark=false;

_B._stinputtype="";

_B._sthref="";

_B._stslotactivator="";

_B._bhiddenmdandup=false;

_B._stto="";

_B._bhiddensmanddown=false;

_B._bjustifycenter=false;

_B._bfitscreen=false;

_B._bfullscreen=false;

_B._baligncenter=false;

_B._bfillheight=false;

_B._stjustify="";

_B._stalign="";

_B._strules="";

_B._stcoverimage="";

_B._stappendicon="";

_B._stappendoutericon="";

_B._boautofocus=false;

_B._boclearable=false;

_B._stcounter="";

_B._bodense=false;

_B._stdisabled="";

_B._bofilled=false;

_B._boflat=false;

_B._bohidedetails=false;

_B._sthint="";

_B._booutlined=false;

_B._bopersistenthint=false;

_B._stplaceholder="";

_B._stprependicon="";

_B._stprependinnericon="";

_B._streadonly="";

_B._strequired="";

_B._borounded=false;

_B._boshaped=false;

_B._bosingleline=false;

_B._bosolo=false;

_B._stoffsets="s=?;m=?;l=?;x=?";

_B._stsizes="s=?;m=?;l=?;x=?";

_B._stpaddingaxytblr="a=?;x=?;y=?t=?;b=?;l=?;r=?";

_B._stmarginaxytblr="a=?;x=?;y=?t=?;b=?;l=?;r=?";

_B._bfluid=false;

_B._bbuildgrid=false;

_B._bshowgriddesign=false;

_B._strows="";

_B._stcolumns="";

_B._ststyleheight="";

_B._ststylewidth="";

_B._ststylemaxheight="";

_B._ststylemaxwidth="";

_B._stsrc="";

_B._stalt="";

_B._stvon="";

_B._stitemtext="";

_B._stitemvalue="";

_B._stitems="";

_B._breturnobject=false;

_B._bbold=false;

_B._bitalic=false;

_B._bcircle=false;

_B._bcenter=false;

_B._stfloat="";

_B._stelevation="";

_B._gridrows={};

_B._gridcolumns={};

_B._lastrow=0;

_B._records=[];

_B._apptemplatename="#apptemplate";

_B._appendholdername="#appendholder";

_B._placeholdername="#placeholder";

// [313] Public Sub Initialize (CallBack As Object, Name As String, EventName As String) 
_B.initialize=function(_callback,_name,_eventname) {
var _fkey;
// [314]  mName = Name.ToLowerCase 
_B._mname=_name.toLowerCase();
// [315]  mEventName = EventName.ToLowerCase 
_B._meventname=_eventname.toLowerCase();
// [316]  mCallBack = CallBack 
_B._mcallback=_callback;
// [317]  classList.Initialize 
_B._classlist={};
// [318]  styleList.Initialize 
_B._stylelist={};
// [319]  attributeList.Initialize 
_B._attributelist={};
// [320]  sbText.Initialize 
_B._sbtext.init();
_B._sbtext.isinitialized=true;
// [321]  bindings.Initialize 
_B._bindings={};
// [322]  methods.Initialize 
_B._methods={};
// [324]  LastRow = 0 
_B._lastrow=0;
// [325]  GridRows.Initialize 
_B._gridrows={};
// [326]  GridColumns.Initialize 
_B._gridcolumns={};
// [327]  Records.Initialize 
_B._records.length=0;
// [331]  Dim fKey As String = {0} 
_fkey="#" + _B._mname + "";
// [332]  If BANano.Exists(fKey) Then 
if (u(_fkey).length>0) {
// [333]  mElement = BANano.GetElement(fKey) 
_B._melement=u(_fkey);
// [334]  End If 
}
// End Sub
};

// [339] Sub setItalic(b As Boolean) 
_B.setitalic=function(_b) {
// [340]  AddStyleOnConditionTrue( {195} , {196} , b) 
_B.addstyleonconditiontrue("font-style","italic",_b,_B);
// [341]  bItalic = b 
_B._bitalic=_b;
// End Sub
};

// [344] Sub getItalic As Boolean 
_B.getitalic=function() {
// [345]  Return bItalic 
return _B._bitalic;
// End Sub
};

// [348] Sub setBold(b As Boolean) 
_B.setbold=function(_b) {
// [349]  AddStyleOnConditionTrue( {197} , {198} , b) 
_B.addstyleonconditiontrue("font-weight","bold",_b,_B);
// [350]  bBold = b 
_B._bbold=_b;
// End Sub
};

// [353] Sub getBold As Boolean 
_B.getbold=function() {
// [354]  Return bBold 
return _B._bbold;
// End Sub
};

// [358] Sub setFloat(varValue As String) 
_B.setfloat=function(_varvalue) {
// [359]  If BANano.IsNull(varValue) Then varValue = {199} 
if (is.null(_varvalue)) {_varvalue="";}
// [360]  stFloat = varValue 
_B._stfloat=_varvalue;
// [361]  AddStyleOnCondition( {200} , {201} , stFloat) 
_B.addstyleoncondition("float","left",_B._stfloat,_B);
// [362]  AddStyleOnCondition( {202} , {203} , stFloat) 
_B.addstyleoncondition("float","right",_B._stfloat,_B);
// End Sub
};

// [365] Sub getFloat As String 
_B.getfloat=function() {
// [366]  Return stFloat 
return _B._stfloat;
// End Sub
};

// [369] Sub setCircle(b As Boolean) 
_B.setcircle=function(_b) {
// [370]  AddStyleOnConditionTrue( {204} , {205} , b) 
_B.addstyleonconditiontrue("border-radius","50%",_b,_B);
// [371]  bCircle = b 
_B._bcircle=_b;
// End Sub
};

// [374] Sub getCircle As Boolean 
_B.getcircle=function() {
// [375]  Return bCircle 
return _B._bcircle;
// End Sub
};

// [378] Sub setCenter(b As Boolean) 
_B.setcenter=function(_b) {
// [379]  bCenter = b 
_B._bcenter=_b;
// [380]  AddStyleOnConditionTrue( {206} , {207} , bCenter) 
_B.addstyleonconditiontrue("text-align","center",_B._bcenter,_B);
// End Sub
};

// [383] Sub getCenter As Boolean 
_B.getcenter=function() {
// [384]  Return bCenter 
return _B._bcenter;
// End Sub
};

// [389] Sub Items_Clear As VueElement 
_B.items_clear=function() {
// [390]  Records.Initialize 
_B._records.length=0;
// [391]  Return Me 
return _B;
// End Sub
};

// [395] Sub Items_AddHeader(txt As String) As VueElement 
_B.items_addheader=function(_txt) {
var _rec;
// [396]  Dim rec As Map = CreateMap() 
_rec={};
// [397]  rec.Put( {208} , txt) 
_rec["header"]=_txt;
// [398]  Records.Add(rec) 
_B._records.push(_rec);
// [399]  Return Me 
return _B;
// End Sub
};

// [402] Sub Items_AddIconTitle(sid As String, sicon As String, siconcolor As String, stitle As String, ssubtitle As String, slinkto As String) 
_B.items_addicontitle=function(_sid,_sicon,_siconcolor,_stitle,_ssubtitle,_slinkto) {
// [403]  Items_Add(sid, {209} , {210} , {211} , sicon, siconcolor, stitle, ssubtitle, {212} ,slinkto, {213} , {214} ) 
_B.items_add(_sid,"","","",_sicon,_siconcolor,_stitle,_ssubtitle,"",_slinkto,"","",_B);
// End Sub
};

// [407] Sub Items_Add(sid As String, siconleft As String, savatar As String, savataricon As String, sicon As String, siconcolor As String, stitle As String, ssubtitle As String, ssubtitle1 As String, slinkto As String, siconright As String, stextright As String) 
_B.items_add=function(_sid,_siconleft,_savatar,_savataricon,_sicon,_siconcolor,_stitle,_ssubtitle,_ssubtitle1,_slinkto,_siconright,_stextright) {
var _rec;
// [408]  Dim rec As Map = CreateMap() 
_rec={};
// [409]  rec.Put( {215} , sid) 
_rec["id"]=_sid;
// [410]  If siconleft <> {216} Then rec.Put( {217} , siconleft) 
if (_siconleft!="") {_rec["iconleft"]=_siconleft;}
// [411]  If savatar <> {218} Then rec.Put( {219} , savatar) 
if (_savatar!="") {_rec["avatar"]=_savatar;}
// [412]  If sicon <> {220} Then rec.Put( {221} , sicon) 
if (_sicon!="") {_rec["icon"]=_sicon;}
// [413]  If siconcolor <> {222} Then rec.put( {223} , siconcolor) 
if (_siconcolor!="") {_rec["iconcolor"]=_siconcolor;}
// [414]  If stitle <> {224} Then rec.Put( {225} , stitle) 
if (_stitle!="") {_rec["title"]=_stitle;}
// [415]  If ssubtitle <> {226} Then rec.Put( {227} , ssubtitle) 
if (_ssubtitle!="") {_rec["subtitle"]=_ssubtitle;}
// [416]  If ssubtitle1 <> {228} Then rec.Put( {229} , ssubtitle1) 
if (_ssubtitle1!="") {_rec["subtitle1"]=_ssubtitle1;}
// [417]  If siconright <> {230} Then rec.Put( {231} , siconright) 
if (_siconright!="") {_rec["iconright"]=_siconright;}
// [418]  If stextright <> {232} Then rec.Put( {233} , stextright) 
if (_stextright!="") {_rec["textright"]=_stextright;}
// [419]  If savataricon <> {234} Then rec.Put( {235} , savataricon) 
if (_savataricon!="") {_rec["avataricon"]=_savataricon;}
// [420]  If slinkto <> {236} Then rec.Put( {237} , slinkto) 
if (_slinkto!="") {_rec["to"]=_slinkto;}
// [421]  Records.Add(rec) 
_B._records.push(_rec);
// End Sub
};

// [426] public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object) 
_B.addstyleoncondition=function(_varclass,_varcondition,_varshouldbe) {
// [427]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [428]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [429]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [430]  AddStyle(varClass, varCondition) 
_B.addstyle(_varclass,_varcondition,_B);
// End Sub
};

// [433] public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addstyleonconditiontrue=function(_varclass,_varcondition,_varshouldbe) {
// [434]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [435]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [436]  If varShouldBe Then AddStyle(varClass, varCondition) 
if (_varshouldbe) {_B.addstyle(_varclass,_varcondition,_B);}
// End Sub
};

// [441] Sub Items_AddDivider(binset As Boolean) As VueElement 
_B.items_adddivider=function(_binset) {
var _rec;
// [442]  Dim rec As Map = CreateMap() 
_rec={};
// [443]  rec.Put( {238} , True) 
_rec["divider"]=true;
// [444]  If binset Then rec.Put( {239} , binset) 
if (_binset) {_rec["inset"]=_binset;}
// [445]  Records.Add(rec) 
_B._records.push(_rec);
// [446]  Return Me 
return _B;
// End Sub
};

// [450] Public Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
_B.designercreateview=function(_target,_props) {
var _strhtml,_offmap,_sizmap,_offs,_offm,_offl,_offx,_sm,_md,_lg,_xl;
// [451]  mTarget = Target 
_B._mtarget=_target;
// [452]  If Props <> Null Then 
if (_props!=null) {
// [453]  bLoremIpsum = Props.Get( {240} ) 
_B._bloremipsum=_props["LoremIpsum"];
// [454]  bDark = Props.Get( {241} ) 
_B._bdark=_props["Dark"];
// [455]  mClasses = Props.Get( {242} ) 
_B._mclasses=_props["Classes"];
// [456]  stActiveClass = Props.Get( {243} ) 
_B._stactiveclass=_props["ActiveClass"];
// [457]  mAttributes = Props.Get( {244} ) 
_B._mattributes=_props["Attributes"];
// [458]  mStyle = Props.Get( {245} ) 
_B._mstyle=_props["Style"];
// [459]  mTagName = Props.Get( {246} ) 
_B._mtagname=_props["TagName"];
// [460]  mOverwriteTag = Props.get( {247} ) 
_B._moverwritetag=_props["OverwriteTag"];
// [461]  mCaption = Props.Get( {248} ) 
_B._mcaption=_props["Caption"];
// [462]  mStates = Props.Get( {249} ) 
_B._mstates=_props["States"];
// [463]  eOnClick = Props.Get( {250} ) 
_B._eonclick=_props["OnClick"];
// [464]  eOnClickStop = Props.Get( {251} ) 
_B._eonclickstop=_props["OnClickStop"];
// [465]  eOnChange = Props.Get( {252} ) 
_B._eonchange=_props["OnChange"];
// [466]  eOnDblClick = Props.Get( {253} ) 
_B._eondblclick=_props["OnDblClick"];
// [467]  eOnClickAlt = Props.Get( {254} ) 
_B._eonclickalt=_props["OnClickAlt"];
// [468]  eOnClickShift = Props.Get( {255} ) 
_B._eonclickshift=_props["OnClickShift"];
// [469]  eOnClickPrevent = Props.Get( {256} ) 
_B._eonclickprevent=_props["OnClickPrevent"];
// [470]  eOnKeyPress = Props.Get( {257} ) 
_B._eonkeypress=_props["OnKeyPress"];
// [471]  eOnMouseMove = Props.Get( {258} ) 
_B._eonmousemove=_props["OnMouseMove"];
// [472]  eOnKeyUp = Props.Get( {259} ) 
_B._eonkeyup=_props["OnKeyUp"];
// [473]  eOnMouseOut = Props.Get( {260} ) 
_B._eonmouseout=_props["OnMouseOut"];
// [474]  stKey = Props.Get( {261} ) 
_B._stkey=_props["Key"];
// [475]  stRef = Props.Get( {262} ) 
_B._stref=_props["Ref"];
// [476]  bAutoID = Props.get( {263} ) 
_B._bautoid=_props["AutoID"];
// [477]  stSlot = Props.Get( {264} ) 
_B._stslot=_props["Slot"];
// [478]  stVBindClass = Props.Get( {265} ) 
_B._stvbindclass=_props["VBindClass"];
// [479]  stVBind = Props.Get( {266} ) 
_B._stvbind=_props["VBind"];
// [480]  stVBindStyle = Props.Get( {267} ) 
_B._stvbindstyle=_props["VBindStyle"];
// [481]  stVElse = Props.Get( {268} ) 
_B._stvelse=_props["VElse"];
// [482]  stVElseIf = Props.Get( {269} ) 
_B._stvelseif=_props["VElseIf"];
// [483]  stVFor = Props.Get( {270} ) 
_B._stvfor=_props["VFor"];
// [484]  stDataSource = Props.Get( {271} ) 
_B._stdatasource=_props["DataSource"];
// [485]  stVHtml = Props.Get( {272} ) 
_B._stvhtml=_props["VHtml"];
// [486]  stVIf = Props.Get( {273} ) 
_B._stvif=_props["VIf"];
// [487]  stVModel = Props.Get( {274} ) 
_B._stvmodel=_props["VModel"];
// [488]  stVShow = Props.Get( {275} ) 
_B._stvshow=_props["VShow"];
// [489]  stVText = Props.Get( {276} ) 
_B._stvtext=_props["VText"];
// [490]  stValue = Props.get( {277} ) 
_B._stvalue=_props["Value"];
// [491]  stBackgroundColor = Props.Get( {278} ) 
_B._stbackgroundcolor=_props["BackgroundColor"];
// [492]  stBackgroundImage = Props.Get( {279} ) 
_B._stbackgroundimage=_props["BackgroundImage"];
// [493]  stBackgroundRepeat = Props.Get( {280} ) 
_B._stbackgroundrepeat=_props["BackgroundRepeat"];
// [494]  stBorder = Props.Get( {281} ) 
_B._stborder=_props["Border"];
// [495]  stBorderColor = Props.Get( {282} ) 
_B._stbordercolor=_props["BorderColor"];
// [496]  stBorderRadius = Props.Get( {283} ) 
_B._stborderradius=_props["BorderRadius"];
// [497]  stBorderStyle = Props.Get( {284} ) 
_B._stborderstyle=_props["BorderStyle"];
// [498]  stBorderWidth = Props.Get( {285} ) 
_B._stborderwidth=_props["BorderWidth"];
// [499]  stColor = Props.Get( {286} ) 
_B._stcolor=_props["Color"];
// [500]  stColorIntensity = Props.Get( {287} ) 
_B._stcolorintensity=_props["ColorIntensity"];
// [501]  stTextColor = Props.Get( {288} ) 
_B._sttextcolor=_props["TextColor"];
// [502]  stTextColorIntensity = Props.Get( {289} ) 
_B._sttextcolorintensity=_props["TextColorIntensity"];
// [503]  stFontFamily = Props.Get( {290} ) 
_B._stfontfamily=_props["FontFamily"];
// [504]  stFontSize = Props.Get( {291} ) 
_B._stfontsize=_props["FontSize"];
// [505]  stFontStyle = Props.Get( {292} ) 
_B._stfontstyle=_props["FontStyle"];
// [506]  stFontWeight = Props.Get( {293} ) 
_B._stfontweight=_props["FontWeight"];
// [507]  stHeight = Props.Get( {294} ) 
_B._stheight=_props["Height"];
// [508]  stMaxHeight = Props.Get( {295} ) 
_B._stmaxheight=_props["MaxHeight"];
// [509]  stMaxWidth = Props.Get( {296} ) 
_B._stmaxwidth=_props["MaxWidth"];
// [510]  stTextAlign = Props.Get( {297} ) 
_B._sttextalign=_props["TextAlign"];
// [511]  stTextDecoration = Props.Get( {298} ) 
_B._sttextdecoration=_props["TextDecoration"];
// [512]  stLabel = Props.Get( {299} ) 
_B._stlabel=_props["Label"];
// [513]  stWidth = Props.Get( {300} ) 
_B._stwidth=_props["Width"];
// [514]  stInputType = Props.Get( {301} ) 
_B._stinputtype=_props["InputType"];
// [515]  stHref = Props.Get( {302} ) 
_B._sthref=_props["Href"];
// [516]  stSlotActivator = Props.get( {303} ) 
_B._stslotactivator=_props["VSlotActivator"];
// [517]  bHiddenMDAndUp = Props.Get( {304} ) 
_B._bhiddenmdandup=_props["HiddenMDAndUp"];
// [518]  stTo = Props.get( {305} ) 
_B._stto=_props["To"];
// [519]  bHiddenSMAndDown = Props.Get( {306} ) 
_B._bhiddensmanddown=_props["HiddenSMAndDown"];
// [520]  bJustifyCenter = Props.Get( {307} ) 
_B._bjustifycenter=_props["JustifyCenter"];
// [521]  bFitScreen = Props.Get( {308} ) 
_B._bfitscreen=_props["FitScreen"];
// [522]  bFullScreen = Props.Get( {309} ) 
_B._bfullscreen=_props["FullScreen"];
// [523]  stJustify = Props.get( {310} ) 
_B._stjustify=_props["Justify"];
// [524]  stAlign = Props.get( {311} ) 
_B._stalign=_props["Align"];
// [525]  bAlignCenter = Props.Get( {312} ) 
_B._baligncenter=_props["AlignCenter"];
// [526]  bFillHeight = Props.Get( {313} ) 
_B._bfillheight=_props["FillHeight"];
// [527]  stRules = Props.Get( {314} ) 
_B._strules=_props["Rules"];
// [528]  stCoverImage = Props.Get( {315} ) 
_B._stcoverimage=_props["CoverImage"];
// [529]  stAppendIcon = Props.Get( {316} ) 
_B._stappendicon=_props["AppendIcon"];
// [530]  stAppendOuterIcon = Props.Get( {317} ) 
_B._stappendoutericon=_props["AppendOuterIcon"];
// [531]  boAutofocus = Props.Get( {318} ) 
_B._boautofocus=_props["Autofocus"];
// [532]  boClearable = Props.Get( {319} ) 
_B._boclearable=_props["Clearable"];
// [533]  stCounter = Props.Get( {320} ) 
_B._stcounter=_props["Counter"];
// [534]  boDense = Props.Get( {321} ) 
_B._bodense=_props["Dense"];
// [535]  stDisabled = Props.Get( {322} ) 
_B._stdisabled=_props["Disabled"];
// [536]  boFilled = Props.Get( {323} ) 
_B._bofilled=_props["Filled"];
// [537]  boFlat = Props.Get( {324} ) 
_B._boflat=_props["Flat"];
// [538]  boHideDetails = Props.Get( {325} ) 
_B._bohidedetails=_props["HideDetails"];
// [539]  stHint = Props.Get( {326} ) 
_B._sthint=_props["Hint"];
// [540]  boOutlined = Props.Get( {327} ) 
_B._booutlined=_props["Outlined"];
// [541]  boPersistentHint = Props.Get( {328} ) 
_B._bopersistenthint=_props["PersistentHint"];
// [542]  stPlaceholder = Props.Get( {329} ) 
_B._stplaceholder=_props["Placeholder"];
// [543]  stPrependIcon = Props.Get( {330} ) 
_B._stprependicon=_props["PrependIcon"];
// [544]  stPrependInnerIcon = Props.Get( {331} ) 
_B._stprependinnericon=_props["PrependInnerIcon"];
// [545]  stReadonly = Props.Get( {332} ) 
_B._streadonly=_props["Readonly"];
// [546]  stRequired = Props.Get( {333} ) 
_B._strequired=_props["Required"];
// [547]  boRounded = Props.Get( {334} ) 
_B._borounded=_props["Rounded"];
// [548]  boShaped = Props.Get( {335} ) 
_B._boshaped=_props["Shaped"];
// [549]  boSingleLine = Props.Get( {336} ) 
_B._bosingleline=_props["SingleLine"];
// [550]  boSolo = Props.Get( {337} ) 
_B._bosolo=_props["Solo"];
// [551]  stSizes = Props.Get( {338} ) 
_B._stsizes=_props["Sizes"];
// [552]  stPaddingAXYTBLR = Props.Get( {339} ) 
_B._stpaddingaxytblr=_props["PaddingTBLR"];
// [553]  stMarginAXYTBLR = Props.Get( {340} ) 
_B._stmarginaxytblr=_props["MarginAXYTBLR"];
// [554]  stOffSets = Props.Get( {341} ) 
_B._stoffsets=_props["OffSets"];
// [555]  bFluid = Props.Get( {342} ) 
_B._bfluid=_props["Fluid"];
// [556]  bBuildGrid = Props.get( {343} ) 
_B._bbuildgrid=_props["BuildGrid"];
// [557]  stRows = Props.Get( {344} ) 
_B._strows=_props["Rows"];
// [558]  stColumns = Props.get( {345} ) 
_B._stcolumns=_props["Columns"];
// [559]  bShowGridDesign = Props.get( {346} ) 
_B._bshowgriddesign=_props["ShowGridDesign"];
// [560]  stStyleHeight = Props.get( {347} ) 
_B._ststyleheight=_props["StyleHeight"];
// [561]  stStyleWidth = Props.get( {348} ) 
_B._ststylewidth=_props["StyleWidth"];
// [562]  stStyleMaxHeight = Props.get( {349} ) 
_B._ststylemaxheight=_props["StyleMaxHeight"];
// [563]  stStyleMaxWidth = Props.get( {350} ) 
_B._ststylemaxwidth=_props["StyleMaxWidth"];
// [564]  stSrc = Props.get( {351} ) 
_B._stsrc=_props["Src"];
// [565]  stAlt = Props.Get( {352} ) 
_B._stalt=_props["Alt"];
// [566]  stVOn = Props.Get( {353} ) 
_B._stvon=_props["VOn"];
// [567]  stItemText = Props.Get( {354} ) 
_B._stitemtext=_props["ItemText"];
// [568]  stItemValue = Props.Get( {355} ) 
_B._stitemvalue=_props["ItemValue"];
// [569]  stItems = Props.Get( {356} ) 
_B._stitems=_props["Items"];
// [570]  bReturnObject = Props.Get( {357} ) 
_B._breturnobject=_props["ReturnObject"];
// [571]  bBold = Props.Get( {358} ) 
_B._bbold=_props["Bold"];
// [572]  bItalic = Props.Get( {359} ) 
_B._bitalic=_props["Italic"];
// [573]  bCircle = Props.Get( {360} ) 
_B._bcircle=_props["Circle"];
// [574]  bCenter = Props.Get( {361} ) 
_B._bcenter=_props["Center"];
// [575]  stFloat = Props.Get( {362} ) 
_B._stfloat=_props["Float"];
// [576]  bSetColorByAttribute = Props.get( {363} ) 
_B._bsetcolorbyattribute=_props["SetColorByAttribute"];
// [577]  stElevation = Props.Get( {364} ) 
_B._stelevation=_props["Elevation"];
// [578]  End If 
}
// [580]  setElevation(stElevation) 
_B.setelevation(_B._stelevation,_B);
// [581]  AddStyleOnConditionTrue( {365} , {366} , bBold) 
_B.addstyleonconditiontrue("font-weight","bold",_B._bbold,_B);
// [582]  AddStyleOnConditionTrue( {367} , {368} , bItalic) 
_B.addstyleonconditiontrue("font-style","italic",_B._bitalic,_B);
// [583]  AddStyleOnConditionTrue( {369} , {370} , bCircle) 
_B.addstyleonconditiontrue("border-radius","50%",_B._bcircle,_B);
// [584]  AddStyleOnConditionTrue( {371} , {372} , bCenter) 
_B.addstyleonconditiontrue("text-align","center",_B._bcenter,_B);
// [585]  AddStyleOnCondition( {373} , {374} , stFloat) 
_B.addstyleoncondition("float","left",_B._stfloat,_B);
// [586]  AddStyleOnCondition( {375} , {376} , stFloat) 
_B.addstyleoncondition("float","right",_B._stfloat,_B);
// [588]  AddAttrOnCondition( {377} , bReturnObject, True) 
_B.addattroncondition(":return-object",_B._breturnobject,true,_B);
// [589]  AddAttr( {378} , stItemText) 
_B.addattr("item-text",_B._stitemtext,_B);
// [590]  AddAttr( {379} , stItemValue) 
_B.addattr("item-value",_B._stitemvalue,_B);
// [591]  AddAttr( {380} , stItems) 
_B.addattr("items",_B._stitems,_B);
// [592]  AddAttr( {381} , mOverwriteTag) 
_B.addattr("tag",_B._moverwritetag,_B);
// [593]  AddAttr( {382} , stVOn) 
_B.addattr("v-on",_B._stvon,_B);
// [594]  AddAttr( {383} , stSrc) 
_B.addattr("src",_B._stsrc,_B);
// [595]  AddAttr( {384} , stAlt) 
_B.addattr("alt",_B._stalt,_B);
// [596]  AddAttrOnCondition( {385} , bFluid, True) 
_B.addattroncondition(":fluid",_B._bfluid,true,_B);
// [597]  AddAttr( {386} , stRules) 
_B.addattr("rules",_B._strules,_B);
// [598]  AddAttr( {387} , stTo) 
_B.addattr("to",_B._stto,_B);
// [599]  AddAttrOnCondition( {388} , bDark, True) 
_B.addattroncondition(":dark",_B._bdark,true,_B);
// [600]  AddAttr( {389} , stSlotActivator) 
_B.addattr("v-slot:activator",_B._stslotactivator,_B);
// [601]  AddAttr( {390} , stHref) 
_B.addattr("href",_B._sthref,_B);
// [602]  AddAttr( {391} , stKey) 
_B.addattr("key",_B._stkey,_B);
// [603]  AddAttr( {392} , stRef) 
_B.addattr("ref",_B._stref,_B);
// [604]  AddAttr( {393} , stSlot) 
_B.addattr("slot",_B._stslot,_B);
// [605]  AddAttr( {394} , stVBind) 
_B.addattr("v-bind",_B._stvbind,_B);
// [606]  AddAttr( {395} , stVBindClass) 
_B.addattr("v-bind:class",_B._stvbindclass,_B);
// [607]  AddAttr( {396} , stVBindStyle) 
_B.addattr("v-bind:style",_B._stvbindstyle,_B);
// [608]  AddAttr( {397} , stValue) 
_B.addattr("value",_B._stvalue,_B);
// [609]  AddAttr( {398} , stVElse) 
_B.addattr("v-else",_B._stvelse,_B);
// [610]  AddAttr( {399} , stVElseIf) 
_B.addattr("v-else-if",_B._stvelseif,_B);
// [611]  AddAttr( {400} , stVFor) 
_B.addattr("v-for",_B._stvfor,_B);
// [612]  AddAttr( {401} , stVHtml) 
_B.addattr("v-html",_B._stvhtml,_B);
// [613]  AddAttr( {402} , stVIf) 
_B.addattr("v-if",_B._stvif,_B);
// [614]  AddAttr( {403} , stLabel) 
_B.addattr("label",_B._stlabel,_B);
// [615]  AddAttr( {404} , stVModel) 
_B.addattr("v-model",_B._stvmodel,_B);
// [616]  AddAttr( {405} , stVShow) 
_B.addattr("v-show",_B._stvshow,_B);
// [617]  AddAttr( {406} , stVText) 
_B.addattr("v-text",_B._stvtext,_B);
// [618]  AddStyle( {407} , stBackgroundColor) 
_B.addstyle("background-color",_B._stbackgroundcolor,_B);
// [619]  AddStyle( {408} , stBackgroundImage) 
_B.addstyle("background-image",_B._stbackgroundimage,_B);
// [620]  AddStyle( {409} , stBackgroundRepeat) 
_B.addstyle("background-repeat",_B._stbackgroundrepeat,_B);
// [621]  AddStyle( {410} , stBorder) 
_B.addstyle("border",_B._stborder,_B);
// [622]  AddStyle( {411} , stBorderColor) 
_B.addstyle("border-color",_B._stbordercolor,_B);
// [623]  AddStyle( {412} , stBorderRadius) 
_B.addstyle("border-radius",_B._stborderradius,_B);
// [624]  AddStyle( {413} , stBorderStyle) 
_B.addstyle("border-style",_B._stborderstyle,_B);
// [625]  AddStyle( {414} , stBorderWidth) 
_B.addstyle("border-width",_B._stborderwidth,_B);
// [627]  AddAttrOnConditionTrue( {415} , stColor, bSetColorByAttribute) 
_B.addattronconditiontrue("color",_B._stcolor,_B._bsetcolorbyattribute,_B);
// [628]  setColor(stColor) 
_B.setcolor(_B._stcolor,_B);
// [629]  setColorIntensity(stColorIntensity) 
_B.setcolorintensity(_B._stcolorintensity,_B);
// [630]  setTextColor(stTextColor) 
_B.settextcolor(_B._sttextcolor,_B);
// [631]  setTextColorIntensity(stTextColorIntensity) 
_B.settextcolorintensity(_B._sttextcolorintensity,_B);
// [633]  AddStyle( {416} , stFontFamily) 
_B.addstyle("font-family",_B._stfontfamily,_B);
// [634]  AddStyle( {417} , stFontSize) 
_B.addstyle("font-size",_B._stfontsize,_B);
// [635]  AddStyle( {418} , stFontStyle) 
_B.addstyle("font-style",_B._stfontstyle,_B);
// [636]  AddStyle( {419} , stFontWeight) 
_B.addstyle("font-weight",_B._stfontweight,_B);
// [638]  AddAttr( {420} , stHeight) 
_B.addattr("height",_B._stheight,_B);
// [639]  AddAttr( {421} , stMaxHeight) 
_B.addattr("max-height",_B._stmaxheight,_B);
// [640]  AddAttr( {422} , stWidth) 
_B.addattr("width",_B._stwidth,_B);
// [641]  AddAttr( {423} , stMaxWidth) 
_B.addattr("max-width",_B._stmaxwidth,_B);
// [643]  AddStyle( {424} , stStyleHeight) 
_B.addstyle("height",_B._ststyleheight,_B);
// [644]  AddStyle( {425} , stStyleMaxHeight) 
_B.addstyle("max-height",_B._ststylemaxheight,_B);
// [645]  AddStyle( {426} , stStyleWidth) 
_B.addstyle("width",_B._ststylewidth,_B);
// [646]  AddStyle( {427} , stStyleMaxWidth) 
_B.addstyle("max-width",_B._ststylemaxwidth,_B);
// [648]  AddStyle( {428} , stTextAlign) 
_B.addstyle("text-align",_B._sttextalign,_B);
// [649]  AddStyle( {429} , stTextDecoration) 
_B.addstyle("text-decoration",_B._sttextdecoration,_B);
// [650]  AddAttr( {430} , stInputType) 
_B.addattr("type",_B._stinputtype,_B);
// [652]  AddClassOnCondition( {431} , bHiddenMDAndUp, True) 
_B.addclassoncondition("hidden-md-and-up",_B._bhiddenmdandup,true,_B);
// [653]  AddClassOnCondition( {432} , bHiddenSMAndDown, True) 
_B.addclassoncondition("hidden-sm-and-down",_B._bhiddensmanddown,true,_B);
// [654]  AddAttrOnConditionTrue( {433} , {434} , bJustifyCenter) 
_B.addattronconditiontrue("justify","center",_B._bjustifycenter,_B);
// [655]  AddAttrOnConditionTrue( {435} , {436} , bAlignCenter) 
_B.addattronconditiontrue("align","center",_B._baligncenter,_B);
// [656]  AddClassOnCondition( {437} , bFillHeight, True) 
_B.addclassoncondition("fill-height",_B._bfillheight,true,_B);
// [658]  AddAttr( {438} , stAlign) 
_B.addattr("align",_B._stalign,_B);
// [659]  AddAttr( {439} , stJustify) 
_B.addattr("justify",_B._stjustify,_B);
// [661]  setCoverImage(stCoverImage) 
_B.setcoverimage(_B._stcoverimage,_B);
// [662]  setFitScreen(bFitScreen) 
_B.setfitscreen(_B._bfitscreen,_B);
// [665]  If BANano.IsNull(bBuildGrid) Then bBuildGrid = False 
if (is.null(_B._bbuildgrid)) {_B._bbuildgrid=false;}
// [666]  If bBuildGrid = False Then 
if (_B._bbuildgrid==false) {
// [667]  setOffsets(stOffSets) 
_B.setoffsets(_B._stoffsets,_B);
// [668]  setSizes(stSizes) 
_B.setsizes(_B._stsizes,_B);
// [669]  setPaddingAXYTBLR(stPaddingAXYTBLR) 
_B.setpaddingaxytblr(_B._stpaddingaxytblr,_B);
// [670]  setMarginAXYTBLR(stMarginAXYTBLR) 
_B.setmarginaxytblr(_B._stmarginaxytblr,_B);
// [671]  End If 
}
// [673]  setFullScreen(bFullScreen) 
_B.setfullscreen(_B._bfullscreen,_B);
// [675]  AddAttr( {440} , stAppendIcon) 
_B.addattr("append-icon",_B._stappendicon,_B);
// [676]  AddAttr( {441} , stAppendOuterIcon) 
_B.addattr("append-outer-icon",_B._stappendoutericon,_B);
// [677]  AddAttrOnCondition( {442} , boAutofocus, True) 
_B.addattroncondition(":autofocus",_B._boautofocus,true,_B);
// [678]  AddAttrOnCondition( {443} , boClearable, True) 
_B.addattroncondition(":clearable",_B._boclearable,true,_B);
// [679]  AddAttr( {444} , stCounter) 
_B.addattr("counter",_B._stcounter,_B);
// [680]  AddAttrOnCondition( {445} , boDense, True) 
_B.addattroncondition(":dense",_B._bodense,true,_B);
// [681]  AddAttr( {446} , stDisabled) 
_B.addattr("disabled",_B._stdisabled,_B);
// [682]  AddAttrOnCondition( {447} , boFilled, True) 
_B.addattroncondition(":filled",_B._bofilled,true,_B);
// [683]  AddAttrOnCondition( {448} , boFlat, True) 
_B.addattroncondition(":flat",_B._boflat,true,_B);
// [684]  AddAttrOnCondition( {449} , boHideDetails, True) 
_B.addattroncondition(":hide-details",_B._bohidedetails,true,_B);
// [685]  AddAttr( {450} , stHint) 
_B.addattr("hint",_B._sthint,_B);
// [686]  AddAttrOnCondition( {451} , boOutlined, True) 
_B.addattroncondition(":outlined",_B._booutlined,true,_B);
// [687]  AddAttrOnCondition( {452} , boPersistentHint, True) 
_B.addattroncondition(":persistent-hint",_B._bopersistenthint,true,_B);
// [688]  AddAttr( {453} , stPlaceholder) 
_B.addattr("placeholder",_B._stplaceholder,_B);
// [689]  AddAttr( {454} , stPrependIcon) 
_B.addattr("prepend-icon",_B._stprependicon,_B);
// [690]  AddAttr( {455} , stPrependInnerIcon) 
_B.addattr("prepend-inner-icon",_B._stprependinnericon,_B);
// [691]  AddAttr( {456} , stReadonly) 
_B.addattr("readonly",_B._streadonly,_B);
// [692]  AddAttr( {457} , stRequired) 
_B.addattr("required",_B._strequired,_B);
// [693]  AddAttrOnCondition( {458} , boRounded, True) 
_B.addattroncondition(":rounded",_B._borounded,true,_B);
// [694]  AddAttrOnCondition( {459} , boShaped, True) 
_B.addattroncondition(":shaped",_B._boshaped,true,_B);
// [695]  AddAttrOnCondition( {460} , boSingleLine, True) 
_B.addattroncondition(":single-line",_B._bosingleline,true,_B);
// [696]  AddAttrOnCondition( {461} , boSolo, True) 
_B.addattroncondition(":solo",_B._bosolo,true,_B);
// [697]  AddAttr( {462} , stActiveClass) 
_B.addattr("active-class",_B._stactiveclass,_B);
// [699]  AddClass(mClasses) 
_B.addclass(_B._mclasses,_B);
// [700]  setAttributes(mAttributes) 
_B.setattributes(_B._mattributes,_B);
// [701]  setStyles(mStyle) 
_B.setstyles(_B._mstyle,_B);
// [705]  SetEvent( {463} , {464} , eOnClick) 
_B.setevent("Click","click",_B._eonclick,_B);
// [706]  SetEvent( {465} , {466} , eOnChange) 
_B.setevent("Change","change",_B._eonchange,_B);
// [707]  SetEvent( {467} , {468} , eOnClickStop) 
_B.setevent("ClickStop","Click.Stop",_B._eonclickstop,_B);
// [708]  SetEvent( {469} , {470} , eOnDblClick) 
_B.setevent("DblClick","DblClick",_B._eondblclick,_B);
// [709]  SetEvent( {471} , {472} , eOnMouseMove) 
_B.setevent("MouseMove","MouseMove",_B._eonmousemove,_B);
// [710]  SetEvent( {473} , {474} , eOnMouseOut) 
_B.setevent("MouseOut","MouseOut",_B._eonmouseout,_B);
// [711]  SetEvent( {475} , {476} , eOnKeyUp) 
_B.setevent("KeyUp","KeyUp",_B._eonkeyup,_B);
// [712]  SetEvent( {477} , {478} , eOnKeyPress) 
_B.setevent("KeyPress","KeyPress",_B._eonkeypress,_B);
// [713]  SetEvent( {479} , {480} , eOnClickAlt) 
_B.setevent("ClickAlt","Click.Alt",_B._eonclickalt,_B);
// [714]  SetEvent( {481} , {482} , eOnClickShift) 
_B.setevent("ClickShift","Click.Shift",_B._eonclickshift,_B);
// [715]  SetEvent( {483} , {484} , eOnClickPrevent) 
_B.setevent("ClickPrevent","Click.Prevent",_B._eonclickprevent,_B);
// [716]  SetEvent( {485} , {486} , {487} ) 
_B.setevent("ClickAppend","click:append","",_B);
// [717]  SetEvent( {488} , {489} , {490} ) 
_B.setevent("ClickAppendOuter","click:append-outer","",_B);
// [718]  SetEvent( {491} , {492} , {493} ) 
_B.setevent("ClickPrepend","click:prepend","",_B);
// [719]  SetEvent( {494} , {495} , {496} ) 
_B.setevent("ClickClear","click:clear","",_B);
// [720]  SetEvent( {497} , {498} , {499} ) 
_B.setevent("ClickPrependInner","click:prepend-inner","",_B);
// [723]  Dim strHTML As String = ToString 
_strhtml=_B.tostring(_B);
// [725]  If BANano.Exists( {1} ) Then 
if (u("#" + _B._mname + "").length>0) {
// [726]  mElement = BANano.GetElement( {2} ) 
_B._melement=u("#" + _B._mname + "");
// [727]  mElement.SetHTML(strHTML) 
_B._melement.html(_strhtml);
// [728]  Else 
} else {
// [729]  mElement = mTarget.Append(strHTML).Get( {500} & mName) 
_B._melement=_B._mtarget.append(_strhtml).find("#"+_B._mname).bananofirst();
// [730]  End If 
}
// [731]  setStates(mStates) 
_B.setstates(_B._mstates,_B);
// [733]  If bBuildGrid Then 
if (_B._bbuildgrid) {
// [734]  If BANano.IsUndefined(stRows) Or BANano.IsNull(stRows) Then 
if (is.undefined(_B._strows) || is.null(_B._strows)) {
// [735]  stRows = {501} 
_B._strows="1";
// [736]  End If 
}
// [737]  If BANano.IsUndefined(stColumns) Or BANano.IsNull(stColumns) Then 
if (is.undefined(_B._stcolumns) || is.null(_B._stcolumns)) {
// [738]  stColumns = {502} 
_B._stcolumns="1";
// [739]  End If 
}
// [740]  If BANano.IsUndefined(stOffSets) Or BANano.IsNull(stOffSets) Then 
if (is.undefined(_B._stoffsets) || is.null(_B._stoffsets)) {
// [741]  stOffSets = {503} 
_B._stoffsets="0,0,0,0";
// [742]  End If 
}
// [743]  If BANano.IsUndefined(stSizes) Or BANano.IsNull(stSizes) Then 
if (is.undefined(_B._stsizes) || is.null(_B._stsizes)) {
// [744]  stSizes = {504} 
_B._stsizes="12,12,12,12";
// [745]  End If 
}
// [746]  Dim offmap As Map = GetOffsetSizes(stOffSets) 
_offmap=_B.getoffsetsizes(_B._stoffsets,_B);
// [747]  Dim sizmap As Map = GetOffsetSizes(stSizes) 
_sizmap=_B.getoffsetsizes(_B._stsizes,_B);
// [749]  Dim offs As String = offmap.get( {505} ) 
_offs=_offmap["s"];
// [750]  Dim offm As String = offmap.get( {506} ) 
_offm=_offmap["m"];
// [751]  Dim offl As String = offmap.get( {507} ) 
_offl=_offmap["l"];
// [752]  Dim offx As String = offmap.get( {508} ) 
_offx=_offmap["x"];
// [754]  Dim sm As String = sizmap.get( {509} ) 
_sm=_sizmap["s"];
// [755]  Dim md As String = sizmap.get( {510} ) 
_md=_sizmap["m"];
// [756]  Dim lg As String = sizmap.get( {511} ) 
_lg=_sizmap["l"];
// [757]  Dim xl As String = sizmap.get( {512} ) 
_xl=_sizmap["x"];
// [759]  AddRows(stRows) 
_B.addrows(_B._strows,_B);
// [760]  AddColumnsOS(stColumns, offs, offm, offl, offx, sm, md, lg, xl) 
_B.addcolumnsos(_B._stcolumns,_offs,_offm,_offl,_offx,_sm,_md,_lg,_xl,_B);
// [761]  BuildGrid 
_B.buildgrid(_B);
// [762]  End If 
}
// End Sub
};

// [765] private Sub GetMarginPadding(varOffsets As String) As Map 
_B.getmarginpadding=function(_varoffsets) {
var _m,_ss,_a,_x,_y,_t,_b,_l,_r,_sbdata,_ssx,_d,_k,_v;
// [766]  Dim m As Map = CreateMap( {513} : {514} , {515} : {516} , {517} : {518} , {519} : {520} , {521} : {522} , {523} : {524} , {525} : {526} ) 
_m={"a":"", "x":"", "y":"", "t":"", "b":"", "l":"", "r":""};
// [767]  If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return m 
if (is.undefined(_varoffsets) || is.undefined(_varoffsets)) { return _m;}
// [768]  varOffsets = varOffsets.replace( {527} , {528} ) 
_varoffsets=_varoffsets.split("-").join("|");
// [769]  varOffsets = varOffsets.replace( {529} , {530} ) 
_varoffsets=_varoffsets.split(",").join("|");
// [770]  varOffsets = varOffsets.replace( {531} , {532} ) 
_varoffsets=_varoffsets.split(";").join("|");
// [771]  varOffsets = varOffsets.replace( {533} , {534} ) 
_varoffsets=_varoffsets.split("|").join(",");
// [772]  varOffsets = varOffsets.replace( {535} , {536} ) 
_varoffsets=_varoffsets.split("?").join("");
// [774]  Dim ss As List = BANanoShared.StrParse( {537} , varOffsets) 
_ss=_banano_bananovuetifyad3_bananoshared.strparse(",",_varoffsets);
// [775]  Dim a As String = {538} 
_a="";
// [776]  Dim x As String = {539} 
_x="";
// [777]  Dim y As String = {540} 
_y="";
// [778]  Dim t As String = {541} 
_t="";
// [779]  Dim b As String = {542} 
_b="";
// [780]  Dim l As String = {543} 
_l="";
// [781]  Dim r As String = {544} 
_r="";
// [784]  Select Case ss.Size 
switch ("" + _ss.length) {
// [785]  Case 1 
case "" + 1:
// [786]  a = ss.Get(0) 
_a=_ss[0];
// [787]  If a.IndexOf( {545} ) = 0 Then a = {546} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [788]  Case 2 
break;
case "" + 2:
// [789]  a = ss.Get(0) 
_a=_ss[0];
// [790]  x = ss.Get(1) 
_x=_ss[1];
// [792]  If a.IndexOf( {547} ) = 0 Then a = {548} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [793]  If x.IndexOf( {549} ) = 0 Then x = {550} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [794]  Case 3 
break;
case "" + 3:
// [795]  a = ss.Get(0) 
_a=_ss[0];
// [796]  x = ss.Get(1) 
_x=_ss[1];
// [797]  y = ss.Get(2) 
_y=_ss[2];
// [799]  If a.IndexOf( {551} ) = 0 Then a = {552} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [800]  If x.IndexOf( {553} ) = 0 Then x = {554} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [801]  If y.IndexOf( {555} ) = 0 Then y = {556} & y 
if (_y.indexOf("=")==0) {_y="y="+_y;}
// [802]  Case 4 
break;
case "" + 4:
// [803]  a = ss.Get(0) 
_a=_ss[0];
// [804]  x = ss.Get(1) 
_x=_ss[1];
// [805]  y = ss.Get(2) 
_y=_ss[2];
// [806]  t = ss.Get(3) 
_t=_ss[3];
// [808]  If a.IndexOf( {557} ) = 0 Then a = {558} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [809]  If x.IndexOf( {559} ) = 0 Then x = {560} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [810]  If y.IndexOf( {561} ) = 0 Then y = {562} & y 
if (_y.indexOf("=")==0) {_y="y="+_y;}
// [811]  If t.IndexOf( {563} ) = 0 Then t = {564} & t 
if (_t.indexOf("=")==0) {_t="t="+_t;}
// [812]  Case 5 
break;
case "" + 5:
// [813]  a = ss.Get(0) 
_a=_ss[0];
// [814]  x = ss.Get(1) 
_x=_ss[1];
// [815]  y = ss.Get(2) 
_y=_ss[2];
// [816]  t = ss.Get(3) 
_t=_ss[3];
// [817]  b = ss.Get(4) 
_b=_ss[4];
// [819]  If a.IndexOf( {565} ) = 0 Then a = {566} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [820]  If x.IndexOf( {567} ) = 0 Then x = {568} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [821]  If y.IndexOf( {569} ) = 0 Then y = {570} & y 
if (_y.indexOf("=")==0) {_y="y="+_y;}
// [822]  If t.IndexOf( {571} ) = 0 Then t = {572} & t 
if (_t.indexOf("=")==0) {_t="t="+_t;}
// [823]  If b.IndexOf( {573} ) = 0 Then b = {574} & b 
if (_b.indexOf("=")==0) {_b="b="+_b;}
// [824]  Case 6 
break;
case "" + 6:
// [825]  a = ss.Get(0) 
_a=_ss[0];
// [826]  x = ss.Get(1) 
_x=_ss[1];
// [827]  y = ss.Get(2) 
_y=_ss[2];
// [828]  t = ss.Get(3) 
_t=_ss[3];
// [829]  b = ss.Get(4) 
_b=_ss[4];
// [830]  l = ss.Get(5) 
_l=_ss[5];
// [832]  If a.IndexOf( {575} ) = 0 Then a = {576} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [833]  If x.IndexOf( {577} ) = 0 Then x = {578} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [834]  If y.IndexOf( {579} ) = 0 Then y = {580} & y 
if (_y.indexOf("=")==0) {_y="y="+_y;}
// [835]  If t.IndexOf( {581} ) = 0 Then t = {582} & t 
if (_t.indexOf("=")==0) {_t="t="+_t;}
// [836]  If b.IndexOf( {583} ) = 0 Then b = {584} & b 
if (_b.indexOf("=")==0) {_b="b="+_b;}
// [837]  If l.IndexOf( {585} ) = 0 Then l = {586} & l 
if (_l.indexOf("=")==0) {_l="l="+_l;}
// [838]  Case 7 
break;
case "" + 7:
// [839]  a = ss.Get(0) 
_a=_ss[0];
// [840]  x = ss.Get(1) 
_x=_ss[1];
// [841]  y = ss.Get(2) 
_y=_ss[2];
// [842]  t = ss.Get(3) 
_t=_ss[3];
// [843]  b = ss.Get(4) 
_b=_ss[4];
// [844]  l = ss.Get(5) 
_l=_ss[5];
// [845]  r = ss.Get(6) 
_r=_ss[6];
// [847]  If a.IndexOf( {587} ) = 0 Then a = {588} & a 
if (_a.indexOf("=")==0) {_a="a="+_a;}
// [848]  If x.IndexOf( {589} ) = 0 Then x = {590} & x 
if (_x.indexOf("=")==0) {_x="x="+_x;}
// [849]  If y.IndexOf( {591} ) = 0 Then y = {592} & y 
if (_y.indexOf("=")==0) {_y="y="+_y;}
// [850]  If t.IndexOf( {593} ) = 0 Then t = {594} & t 
if (_t.indexOf("=")==0) {_t="t="+_t;}
// [851]  If b.IndexOf( {595} ) = 0 Then b = {596} & b 
if (_b.indexOf("=")==0) {_b="b="+_b;}
// [852]  If l.IndexOf( {597} ) = 0 Then l = {598} & l 
if (_l.indexOf("=")==0) {_l="l="+_l;}
// [853]  If r.IndexOf( {599} ) = 0 Then r = {600} & r 
if (_r.indexOf("=")==0) {_r="r="+_r;}
// [854]  End Select 
break;
}
// [856]  Dim sbdata As String = {3} 
_sbdata="" + _a + ";" + _x + ";" + _y + ";" + _t + ";" + _b + ";" + _l + ";" + _r + "";
// [857]  Dim ssx As List = BANanoShared.StrParse( {601} , sbdata) 
_ssx=_banano_bananovuetifyad3_bananoshared.strparse(";",_sbdata);
// [858]  For Each d As String In ssx 
for (var _dindex=0;_dindex<_ssx.length;_dindex++) {
_d=_ssx[_dindex];
// [859]  Dim k As String = BANanoShared.MvField(d, 1, {602} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_d,1,"=");
// [860]  Dim v As String = BANanoShared.MvField(d, 2, {603} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_d,2,"=");
// [861]  m.Put(k, v) 
_m[_k]=_v;
// [862]  Next 
}
// [863]  Return m 
return _m;
// End Sub
};

// [867] private Sub GetOffsetSizes(varOffsets As String) As Map 
_B.getoffsetsizes=function(_varoffsets) {
var _m,_ss,_sm,_md,_lg,_xl,_sbdata,_ssx,_d,_k,_v;
// [868]  Dim m As Map = CreateMap( {604} : {605} , {606} : {607} , {608} : {609} , {610} : {611} ) 
_m={"s":"", "m":"", "l":"", "x":""};
// [869]  If BANano.IsUndefined(varOffsets) Or BANano.IsUndefined(varOffsets) Then Return m 
if (is.undefined(_varoffsets) || is.undefined(_varoffsets)) { return _m;}
// [870]  varOffsets = varOffsets.replace( {612} , {613} ) 
_varoffsets=_varoffsets.split("-").join("|");
// [871]  varOffsets = varOffsets.replace( {614} , {615} ) 
_varoffsets=_varoffsets.split(",").join("|");
// [872]  varOffsets = varOffsets.replace( {616} , {617} ) 
_varoffsets=_varoffsets.split(";").join("|");
// [873]  varOffsets = varOffsets.replace( {618} , {619} ) 
_varoffsets=_varoffsets.split("|").join(",");
// [874]  varOffsets = varOffsets.replace( {620} , {621} ) 
_varoffsets=_varoffsets.split("?").join("");
// [876]  Dim ss As List = BANanoShared.StrParse( {622} , varOffsets) 
_ss=_banano_bananovuetifyad3_bananoshared.strparse(",",_varoffsets);
// [877]  Dim sm As String = {623} 
_sm="";
// [878]  Dim md As String = {624} 
_md="";
// [879]  Dim lg As String = {625} 
_lg="";
// [880]  Dim xl As String = {626} 
_xl="";
// [882]  Select Case ss.Size 
switch ("" + _ss.length) {
// [883]  Case 1 
case "" + 1:
// [884]  sm = ss.Get(0) 
_sm=_ss[0];
// [885]  If sm.IndexOf( {627} ) = 0 Then sm = {628} & sm 
if (_sm.indexOf("=")==0) {_sm="s="+_sm;}
// [886]  Case 2 
break;
case "" + 2:
// [887]  sm = ss.Get(0) 
_sm=_ss[0];
// [888]  md = ss.Get(1) 
_md=_ss[1];
// [890]  If sm.IndexOf( {629} ) = 0 Then sm = {630} & sm 
if (_sm.indexOf("=")==0) {_sm="s="+_sm;}
// [891]  If md.IndexOf( {631} ) = 0 Then md = {632} & md 
if (_md.indexOf("=")==0) {_md="m="+_md;}
// [892]  Case 3 
break;
case "" + 3:
// [893]  sm = ss.Get(0) 
_sm=_ss[0];
// [894]  md = ss.Get(1) 
_md=_ss[1];
// [895]  lg = ss.Get(2) 
_lg=_ss[2];
// [897]  If sm.IndexOf( {633} ) = 0 Then sm = {634} & sm 
if (_sm.indexOf("=")==0) {_sm="s="+_sm;}
// [898]  If md.IndexOf( {635} ) = 0 Then md = {636} & md 
if (_md.indexOf("=")==0) {_md="m="+_md;}
// [899]  If lg.IndexOf( {637} ) = 0 Then lg = {638} & lg 
if (_lg.indexOf("=")==0) {_lg="l="+_lg;}
// [900]  Case 4 
break;
case "" + 4:
// [901]  sm = ss.Get(0) 
_sm=_ss[0];
// [902]  md = ss.Get(1) 
_md=_ss[1];
// [903]  lg = ss.Get(2) 
_lg=_ss[2];
// [904]  xl = ss.Get(3) 
_xl=_ss[3];
// [906]  If sm.IndexOf( {639} ) = 0 Then sm = {640} & sm 
if (_sm.indexOf("=")==0) {_sm="s="+_sm;}
// [907]  If md.IndexOf( {641} ) = 0 Then md = {642} & md 
if (_md.indexOf("=")==0) {_md="m="+_md;}
// [908]  If lg.IndexOf( {643} ) = 0 Then lg = {644} & lg 
if (_lg.indexOf("=")==0) {_lg="l="+_lg;}
// [909]  If xl.IndexOf( {645} ) = 0 Then xl = {646} & xl 
if (_xl.indexOf("=")==0) {_xl="x="+_xl;}
// [910]  End Select 
break;
}
// [912]  Dim sbdata As String = {4} 
_sbdata="" + _sm + ";" + _md + ";" + _lg + ";" + _xl + "";
// [913]  Dim ssx As List = BANanoShared.StrParse( {647} , sbdata) 
_ssx=_banano_bananovuetifyad3_bananoshared.strparse(";",_sbdata);
// [914]  For Each d As String In ssx 
for (var _dindex=0;_dindex<_ssx.length;_dindex++) {
_d=_ssx[_dindex];
// [915]  Dim k As String = BANanoShared.MvField(d, 1, {648} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_d,1,"=");
// [916]  Dim v As String = BANanoShared.MvField(d, 2, {649} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_d,2,"=");
// [917]  m.Put(k, v) 
_m[_k]=_v;
// [918]  Next 
}
// [919]  Return m 
return _m;
// End Sub
};

// [923] public Sub AddAttrOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addattronconditiontrue=function(_varclass,_varcondition,_varshouldbe) {
// [924]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [925]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [926]  If varShouldBe Then AddAttr(varClass, varCondition) 
if (_varshouldbe) {_B.addattr(_varclass,_varcondition,_B);}
// End Sub
};

// [930] Sub setColorIntensity(varIntensity As String) 
_B.setcolorintensity=function(_varintensity) {
// [931]  If BANano.IsNull(varIntensity) Then Return 
if (is.null(_varintensity)) { return ;}
// [932]  If varIntensity = {650} Then Return 
if (_varintensity=="normal") { return ;}
// [933]  AddClass(varIntensity) 
_B.addclass(_varintensity,_B);
// [934]  stColorIntensity = varIntensity 
_B._stcolorintensity=_varintensity;
// End Sub
};

// [937] Sub getColorIntensity As String 
_B.getcolorintensity=function() {
// [938]  Return stColorIntensity 
return _B._stcolorintensity;
// End Sub
};

// [942] Sub setTextColorIntensity(varIntensity As String) 
_B.settextcolorintensity=function(_varintensity) {
var _xintensity;
// [943]  If BANano.IsNull(varIntensity) Then Return 
if (is.null(_varintensity)) { return ;}
// [944]  If varIntensity = {651} Then Return 
if (_varintensity=="normal") { return ;}
// [945]  Dim xintensity As String = {5} 
_xintensity="text--" + _varintensity + "";
// [946]  AddClass(xintensity) 
_B.addclass(_xintensity,_B);
// [947]  stTextColorIntensity = varIntensity 
_B._sttextcolorintensity=_varintensity;
// End Sub
};

// [950] Sub getTextColorIntensity As String 
_B.gettextcolorintensity=function() {
// [951]  Return stTextColorIntensity 
return _B._sttextcolorintensity;
// End Sub
};

// [954] Sub setTextColor(varColor As String) 
_B.settextcolor=function(_varcolor) {
var _xcolor;
// [955]  If BANano.IsNull(varColor) Then Return 
if (is.null(_varcolor)) { return ;}
// [956]  If varColor = {652} Then Return 
if (_varcolor=="none") { return ;}
// [957]  Dim xcolor As String = {6} 
_xcolor="" + _varcolor + "--text";
// [958]  AddClass(xcolor) 
_B.addclass(_xcolor,_B);
// [959]  stTextColor = varColor 
_B._sttextcolor=_varcolor;
// End Sub
};

// [962] Sub getTextColor As String 
_B.gettextcolor=function() {
// [963]  Return stTextColor 
return _B._sttextcolor;
// End Sub
};

// [967] Sub AppendHolder 
_B.appendholder=function() {
var _stemplate;
// [968]  Dim stemplate As String = BANanoGetHTMLAsIs( {653} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [969]  mElement = BANano.GetElement( {7} ) 
_B._melement=u("#" + _B._mname + "");
// [970]  If mElement <> Null Then 
if (_B._melement!=null) {
// [971]  mElement.Append(stemplate) 
_B._melement.append(_stemplate);
// [972]  Else 
} else {
// [973]  sbText.Append(stemplate) 
_B._sbtext.append(_stemplate);
// [974]  End If 
}
// End Sub
};

// [978] Sub GetElementByData(dataattr As String, value As String) As BANanoElement 
_B.getelementbydata=function(_dataattr,_value) {
var _skey,_dataid;
// [979]  dataattr = dataattr.tolowercase 
_dataattr=_dataattr.toLowerCase();
// [980]  Dim skey As String = {8} 
_skey="[data-" + _dataattr + "='" + _value + "']";
// [981]  Dim dataId As BANanoElement 
_dataid=null;
// [982]  dataId.Initialize(skey) 
_dataid=u(_skey);
// [983]  Return dataId 
return _dataid;
// End Sub
};

// [987] Sub AppendHolderTo(target As String) 
_B.appendholderto=function(_target) {
var _stemplate,_elx;
// [988]  Dim stemplate As String = BANanoGetHTMLAsIs( {654} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [989]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [990]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [994] Sub AppendPlaceHolderTo(target As String) 
_B.appendplaceholderto=function(_target) {
var _stemplate,_elx;
// [995]  Dim stemplate As String = BANanoGetHTMLAsIs( {655} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [996]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [997]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [1001] Sub AppendPlaceHolder 
_B.appendplaceholder=function() {
var _stemplate;
// [1002]  Dim stemplate As String = BANanoGetHTMLAsIs( {656} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [1003]  mElement = BANano.GetElement( {9} ) 
_B._melement=u("#" + _B._mname + "");
// [1004]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1005]  mElement.Append(stemplate) 
_B._melement.append(_stemplate);
// [1006]  Else 
} else {
// [1007]  sbText.Append(stemplate) 
_B._sbtext.append(_stemplate);
// [1008]  End If 
}
// End Sub
};

// [1012] private Sub BANanoGetHTMLAsIs(id As String) As String 
_B.bananogethtmlasis=function(_id) {
var _be,_xtemplate;
// [1013]  id = id.tolowercase 
_id=_id.toLowerCase();
// [1014]  Dim be As BANanoElement 
_be=null;
// [1015]  be.Initialize( {10} ) 
_be=u("#" + _id + "");
// [1016]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [1017]  be.Empty 
_be.empty();
// [1018]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [1022] Sub BANanoGetHTML(id As String) As String 
_B.bananogethtml=function(_id) {
var _be,_xtemplate;
// [1023]  id = id.tolowercase 
_id=_id.toLowerCase();
// [1024]  Dim be As BANanoElement 
_be=null;
// [1025]  be.Initialize( {11} ) 
_be=u("#" + _id + "");
// [1026]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [1027]  be.Empty 
_be.empty();
// [1028]  xTemplate = xTemplate.Replace( {657} , {658} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [1029]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [1034] Sub ToString As String 
_B.tostring=function() {
var _classname,_stylename,_istructure,_stext,_rslt;
// [1035]  If bLoremIpsum Then 
if (_B._bloremipsum) {
// [1036]  mCaption = BANanoShared.LoremIpsum(1) 
_B._mcaption=_banano_bananovuetifyad3_bananoshared.loremipsum(1);
// [1037]  End If 
}
// [1039]  Dim className As String = BANanoShared.JoinMapKeys(classList, {659} ) 
_classname=_banano_bananovuetifyad3_bananoshared.joinmapkeys(_B._classlist," ");
// [1040]  If className <> {660} Then AddAttr( {661} , className) 
if (_classname!="") {_B.addattr("class",_classname,_B);}
// [1042]  Dim styleName As String = BANanoShared.BuildStyle(styleList) 
_stylename=_banano_bananovuetifyad3_bananoshared.buildstyle(_B._stylelist);
// [1043]  If styleName <> {662} Then AddAttr( {663} , styleName) 
if (_stylename!="") {_B.addattr("style",_stylename,_B);}
// [1045]  Dim iStructure As String = BANanoShared.BuildAttributes(attributeList) 
_istructure=_banano_bananovuetifyad3_bananoshared.buildattributes(_B._attributelist);
// [1046]  iStructure = iStructure.trim 
_istructure=_istructure.trim();
// [1047]  Dim stext As String = sbText.ToString 
_stext=_B._sbtext.toString();
// [1048]  stext = stext.Replace( {664} , {665} ) 
_stext=_stext.split("v-template").join("template");
// [1049]  Dim rslt As String = {12} 
_rslt="<" + _B._mtagname + " id=\"" + _B._mname + "\" " + _istructure + ">" + _B._mcaption + "" + _stext + "</" + _B._mtagname + ">";
// [1050]  Return rslt 
return _rslt;
// End Sub
};

// [1054] Sub getHTML As String 
_B.gethtml=function() {
// [1055]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1056]  Return mElement.GetHTML 
return _B._melement.html();
// [1057]  Else 
} else {
// [1058]  Return {666} 
return "";
// [1059]  End If 
}
// End Sub
};

// [1063] Sub SetVBindAttribute(prop As String, value As String) 
_B.setvbindattribute=function(_prop,_value) {
// [1064]  prop = prop.ToLowerCase 
_prop=_prop.toLowerCase();
// [1065]  value = value.ToLowerCase 
_value=_value.toLowerCase();
// [1066]  prop = {13} 
_prop="v-bind:" + _prop + "";
// [1067]  AddAttr(prop,value) 
_B.addattr(_prop,_value,_B);
// [1068]  If value <> {667} Then 
if (_value!="") {
// [1069]  bindings.Put(value, Null) 
_B._bindings[_value]=null;
// [1070]  End If 
}
// End Sub
};

// [1074] Sub SetData(prop As String, val As Object) 
_B.setdata=function(_prop,_val) {
// [1075]  If prop <> {668} Then 
if (_prop!="") {
// [1076]  bindings.Put(prop, val) 
_B._bindings[_prop]=_val;
// [1077]  End If 
}
// End Sub
};

// [1080] Sub NewList As List 
_B.newlist=function() {
var _elx;
// [1081]  Dim elx As List 
_elx=[];
// [1082]  elx.Initialize 
_elx.length=0;
// [1083]  Return elx 
return _elx;
// End Sub
};

// [1087] public Sub setStates(varBindings As String) 
_B.setstates=function(_varbindings) {
var _mxitems,_mt,_k,_v,_nl,_nm;
// [1088]  If BANano.IsNull(varBindings) Or BANano.IsUndefined(varBindings) Then Return 
if (is.null(_varbindings) || is.undefined(_varbindings)) { return ;}
// [1089]  If varBindings = {669} Then Return 
if (_varbindings=="") { return ;}
// [1090]  Dim mxItems As List = BANanoShared.StrParse( {670} , varBindings) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varbindings);
// [1091]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [1092]  Dim k As String = BANanoShared.MvField(mt,1, {671} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [1093]  Dim v As String = BANanoShared.MvField(mt,2, {672} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [1094]  If v.EqualsIgnoreCase( {673} ) Then 
if (_v.equalsIgnoreCase("false")) {
// [1095]  If k <> {674} Then 
if (_k!="") {
// [1096]  bindings.Put(k, False) 
_B._bindings[_k]=false;
// [1097]  End If 
}
// [1098]  else if v.EqualsIgnoreCase( {675} ) Then 
} else if (_v.equalsIgnoreCase("true")) {
// [1099]  If k <> {676} Then 
if (_k!="") {
// [1100]  bindings.Put(k, True) 
_B._bindings[_k]=true;
// [1101]  End If 
}
// [1102]  else if v.EqualsIgnoreCase( {677} ) Then 
} else if (_v.equalsIgnoreCase("array")) {
// [1103]  If k <> {678} Then 
if (_k!="") {
// [1104]  Dim nl As List = NewList 
_nl=_B.newlist(_B);
// [1105]  bindings.Put(k, nl) 
_B._bindings[_k]=_nl;
// [1106]  End If 
}
// [1107]  else if v.EqualsIgnoreCase( {679} ) Then 
} else if (_v.equalsIgnoreCase("object")) {
// [1108]  If k <> {680} Then 
if (_k!="") {
// [1109]  Dim nm As Map = CreateMap() 
_nm={};
// [1110]  bindings.Put(k, nm) 
_B._bindings[_k]=_nm;
// [1111]  End If 
}
// [1112]  else if v.EqualsIgnoreCase( {681} ) Then 
} else if (_v.equalsIgnoreCase("map")) {
// [1113]  If k <> {682} Then 
if (_k!="") {
// [1114]  Dim nm As Map = CreateMap() 
_nm={};
// [1115]  bindings.Put(k, nm) 
_B._bindings[_k]=_nm;
// [1116]  End If 
}
// [1117]  else if v.EqualsIgnoreCase( {683} ) Then 
} else if (_v.equalsIgnoreCase("string")) {
// [1118]  If k <> {684} Then 
if (_k!="") {
// [1119]  bindings.Put(k, {685} ) 
_B._bindings[_k]="";
// [1120]  End If 
}
// [1121]  else if v.EqualsIgnoreCase( {686} ) Then 
} else if (_v.equalsIgnoreCase("int")) {
// [1122]  If k <> {687} Then 
if (_k!="") {
// [1123]  bindings.Put(k, 0) 
_B._bindings[_k]=0;
// [1124]  End If 
}
// [1125]  Else 
} else {
// [1126]  If k <> {688} Then 
if (_k!="") {
// [1127]  bindings.put(k, v) 
_B._bindings[_k]=_v;
// [1128]  End If 
}
// [1129]  End If 
}
// [1130]  Next 
}
// End Sub
};

// [1134] Sub AddBR 
_B.addbr=function() {
// [1135]  sbText.Append( {689} ) 
_B._sbtext.append("<br>");
// End Sub
};

// [1139] Sub AddHR 
_B.addhr=function() {
// [1140]  sbText.Append( {690} ) 
_B._sbtext.append("<hr>");
// End Sub
};

// [1145] Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String) 
_B.addelement=function(_elid,_tag,_props,_styleprops,_classnames,_loose,_text) {
var _elit,_k,_v,_selement;
// [1146]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1147]  elID = elID.Replace( {691} , {692} ) 
_elid=_elid.split("#").join("");
// [1148]  Dim elIT As VueElement 
_elit= new banano_bananovuetifyad3_vueelement();
// [1149]  elIT.Initialize(mCallBack, elID, tag) 
_elit.initialize(_B._mcallback,_elid,_tag);
// [1150]  elIT.SetText(Text) 
_elit.settext(_text);
// [1151]  If loose <> Null Then 
if (_loose!=null) {
// [1152]  For Each k As String In loose 
for (var _kindex=0;_kindex<_loose.length;_kindex++) {
_k=_loose[_kindex];
// [1153]  elIT.SetAttr(k, True) 
_elit.setattr(_k,true);
// [1154]  Next 
}
// [1155]  End If 
}
// [1156]  If props <> Null Then 
if (_props!=null) {
// [1157]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1158]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [1159]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [1160]  Next 
}
// [1161]  End If 
}
// [1162]  If styleProps <> Null Then 
if (_styleprops!=null) {
// [1163]  For Each k As String In styleProps.Keys 
var _kKeys = Object.keys(_styleprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1164]  Dim v As String = styleProps.Get(k) 
_v=_styleprops[_k];
// [1165]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [1166]  Next 
}
// [1167]  End If 
}
// [1168]  If classNames <> Null Then 
if (_classnames!=null) {
// [1169]  elIT.AddClasses(classNames) 
_elit.addclasses(_classnames);
// [1170]  End If 
}
// [1172]  Dim sElement As String = elIT.tostring 
_selement=_elit.tostring();
// [1173]  sbText.Append(sElement) 
_B._sbtext.append(_selement);
// End Sub
};

// [1177] public Sub getElement() As BANanoElement 
_B.getelement=function() {
// [1178]  Return mElement 
return _B._melement;
// End Sub
};

// [1182] Sub setElement(varElement As BANanoElement) 
_B.setelement=function(_varelement) {
// [1183]  mElement = varElement 
_B._melement=_varelement;
// End Sub
};

// [1187] public Sub getID() As String 
_B.getid=function() {
// [1188]  Return mName 
return _B._mname;
// End Sub
};

// [1192] public Sub setID(varID As String) 
_B.setid=function(_varid) {
// [1193]  varID = varID.tolowercase 
_varid=_varid.toLowerCase();
// [1194]  mName = varID 
_B._mname=_varid;
// [1195]  mElement.SetAttr( {693} , mName) 
_B._melement.attr("id",_B._mname);
// End Sub
};

// [1199] public Sub AddToParent(targetID As String) 
_B.addtoparent=function(_targetid) {
// [1200]  targetID = targetID.tolowercase 
_targetid=_targetid.toLowerCase();
// [1201]  targetID = targetID.Replace( {694} , {695} ) 
_targetid=_targetid.split("#").join("");
// [1202]  mTarget = BANano.GetElement( {14} ) 
_B._mtarget=u("#" + _targetid + "");
// [1203]  DesignerCreateView(mTarget, Null) 
_B.designercreateview(_B._mtarget,null,_B);
// End Sub
};

// [1207] public Sub Remove() 
_B.remove=function() {
// [1208]  mElement.Remove 
_B._melement.remove();
// [1209]  BANano.SetMeToNull 
_B=null;
// End Sub
};

// [1213] public Sub Trigger(event As String, params() As String) 
_B.trigger=function(_event,_params) {
// [1214]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1215]  mElement.Trigger(event, params) 
_B._melement.trigger(_event, _params);
// [1216]  End If 
}
// End Sub
};

// [1220] public Sub AddClass(varClass As String) 
_B.addclass=function(_varclass) {
var _mxitems,_mt;
// [1221]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [1222]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [1223]  varClass = varClass.trim 
_varclass=_varclass.trim();
// [1224]  If varClass = {696} Then Return 
if (_varclass=="") { return ;}
// [1225]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1226]  mElement.AddClass(varClass) 
_B._melement.addClass(_varclass);
// [1227]  Else 
} else {
// [1228]  Dim mxItems As List = BANanoShared.StrParse( {697} , varClass) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(" ",_varclass);
// [1229]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [1230]  classList.put(mt, mt) 
_B._classlist[_mt]=_mt;
// [1231]  Next 
}
// [1232]  End If 
}
// End Sub
};

// [1235] Sub AddClasses(listOfClasses As List) 
_B.addclasses=function(_listofclasses) {
var _strclass;
// [1236]  Dim strClass As String = BANanoShared.Join( {698} , listOfClasses) 
_strclass=_banano_bananovuetifyad3_bananoshared.join(" ",_listofclasses);
// [1237]  AddClass(strClass) 
_B.addclass(_strclass,_B);
// End Sub
};

// [1241] public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addclassoncondition=function(_varclass,_varcondition,_varshouldbe) {
// [1242]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [1243]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [1244]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [1245]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [1246]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [1247]  AddClass(varClass) 
_B.addclass(_varclass,_B);
// End Sub
};

// [1251] public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addattroncondition=function(_varclass,_varcondition,_varshouldbe) {
// [1252]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [1253]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [1254]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [1255]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [1256]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [1257]  varClass = varClass.trim 
_varclass=_varclass.trim();
// [1258]  If varClass = {699} Then Return 
if (_varclass=="") { return ;}
// [1259]  AddAttr(varClass, varShouldBe) 
_B.addattr(_varclass,_varshouldbe,_B);
// End Sub
};

// [1263] public Sub AddStyle(varProp As String, varStyle As String) 
_B.addstyle=function(_varprop,_varstyle) {
var _astyle,_sstyle;
// [1264]  If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return 
if (is.undefined(_varstyle) || is.null(_varstyle)) { return ;}
// [1265]  If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle) 
if (is.number(_varstyle)) {_varstyle=_banano_bananovuetifyad3_bananoshared.cstr(_varstyle);}
// [1266]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1267]  Dim aStyle As Map = CreateMap() 
_astyle={};
// [1268]  aStyle.put(varProp, varStyle) 
_astyle[_varprop]=_varstyle;
// [1269]  Dim sStyle As String = BANano.ToJSON(aStyle) 
_sstyle=JSON.stringify(_astyle);
// [1270]  mElement.SetStyle(sStyle) 
_B._melement.css(JSON.parse(_sstyle));
// [1271]  Else 
} else {
// [1272]  styleList.put(varProp, varStyle) 
_B._stylelist[_varprop]=_varstyle;
// [1273]  End If 
}
// End Sub
};

// [1276] Sub SetAttr(varProp As String, varValue As String) 
_B.setattr=function(_varprop,_varvalue) {
// [1277]  AddAttr(varProp, varValue) 
_B.addattr(_varprop,_varvalue,_B);
// End Sub
};

// [1281] Sub BindDynamicComponent(viewID As String, compID As String) 
_B.binddynamiccomponent=function(_viewid,_compid) {
// [1282]  viewID = viewID.ToLowerCase 
_viewid=_viewid.toLowerCase();
// [1283]  compID = compID.tolowercase 
_compid=_compid.toLowerCase();
// [1284]  SetVBindIs(viewID) 
_B.setvbindis(_viewid,_B);
// [1285]  If viewID <> {700} Then 
if (_viewid!="") {
// [1286]  bindings.Put(viewID, compID) 
_B._bindings[_viewid]=_compid;
// [1287]  End If 
}
// End Sub
};

// [1290] Sub SetVBindIs(t As String) As VueElement 
_B.setvbindis=function(_t) {
// [1291]  t = t.tolowercase 
_t=_t.toLowerCase();
// [1292]  SetAttr( {701} , t) 
_B.setattr("v-bind:is",_t,_B);
// [1293]  Return Me 
return _B;
// End Sub
};

// [1298] Sub SetText(varText As String) 
_B.settext=function(_vartext) {
// [1299]  AddChild(varText) 
_B.addchild(_vartext,_B);
// End Sub
};

// [1302] Sub Bind(attr As String, value As String) 
_B.bind=function(_attr,_value) {
// [1303]  AddAttr( {15} , value) 
_B.addattr(":" + _attr + "",_value,_B);
// End Sub
};

// [1307] Sub BindVueElement(el As VueElement) 
_B.bindvueelement=function(_el) {
var _mbindings,_mmethods,_k,_v,_cb;
// [1308]  Dim mbindings As Map = el.bindings 
_mbindings=_el._bindings;
// [1309]  Dim mmethods As Map = el.methods 
_mmethods=_el._methods;
// [1311]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1312]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [1313]  Select Case k 
switch ("" + _k) {
// [1314]  Case {702} 
case "" + "key":
// [1315]  Case {703} , {704} 
break;
case "" + ":rules":
case "" + ":items":
// [1316]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [1317]  Case Else 
break;
default:
// [1318]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [1319]  End Select 
break;
}
// [1320]  Next 
}
// [1322]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1323]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [1324]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [1325]  Next 
}
// End Sub
};

// [1329] Public Sub AddAttr(varProp As String, varValue As String) 
_B.addattr=function(_varprop,_varvalue) {
var _rname,_lst;
// [1330]  If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return 
if (is.undefined(_varvalue) || is.null(_varvalue)) { return ;}
// [1331]  If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue) 
if (is.number(_varvalue)) {_varvalue=_banano_bananovuetifyad3_bananoshared.cstr(_varvalue);}
// [1332]  If varValue = {705} Then varValue = {706} 
if (_varvalue=="none") {_varvalue="";}
// [1333]  If varValue = {707} Then Return 
if (_varvalue=="") { return ;}
// [1334]  If varProp = {708} And varValue.EqualsIgnoreCase( {709} ) Then Return 
if (_varprop=="align" && _varvalue.equalsIgnoreCase("false")) { return ;}
// [1335]  If varProp = {710} And varValue.EqualsIgnoreCase( {711} ) Then Return 
if (_varprop=="justify" && _varvalue.equalsIgnoreCase("false")) { return ;}
// [1337]  If BANano.IsBoolean(varValue) Then 
if (is.boolean(_varvalue)) {
// [1338]  If varValue = True Then 
if (_varvalue==true) {
// [1339]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1340]  mElement.SetAttr(varProp, varValue) 
_B._melement.attr(_varprop,_varvalue);
// [1341]  Else 
} else {
// [1342]  attributeList.put(varProp, varValue) 
_B._attributelist[_varprop]=_varvalue;
// [1343]  End If 
}
// [1344]  End If 
}
// [1345]  Else 
} else {
// [1346]  varValue = varValue.Replace( {712} , {713} ) 
_varvalue=_varvalue.split("~").join("=");
// [1347]  varValue = varValue.Replace( {714} , {715} ) 
_varvalue=_varvalue.split("#").join("$");
// [1349]  If varValue.StartsWith( {716} ) Then 
if (_varvalue.startsWith(":")) {
// [1350]  Dim rname As String = BANanoShared.MidString2(varValue, 2) 
_rname=_banano_bananovuetifyad3_bananoshared.midstring2(_varvalue,2);
// [1351]  If rname.Contains( {717} ) = False Then 
if (_rname.contains(".")==false) {
// [1352]  bindings.Put(rname, Null) 
_B._bindings[_rname]=null;
// [1353]  End If 
}
// [1354]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1355]  mElement.SetAttr( {16} , rname) 
_B._melement.attr(":" + _varprop + "",_rname);
// [1356]  Else 
} else {
// [1357]  attributeList.put( {17} , rname) 
_B._attributelist[":" + _varprop + ""]=_rname;
// [1358]  End If 
}
// [1359]  Else 
} else {
// [1361]  If varProp.StartsWith( {718} ) Then 
if (_varprop.startsWith(":")) {
// [1362]  If varValue.Contains( {719} ) = False Then 
if (_varvalue.contains(".")==false) {
// [1363]  bindings.Put(varValue, Null) 
_B._bindings[_varvalue]=null;
// [1364]  End If 
}
// [1365]  End If 
}
// [1367]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1368]  mElement.SetAttr(varProp, varValue) 
_B._melement.attr(_varprop,_varvalue);
// [1369]  Else 
} else {
// [1370]  attributeList.put(varProp, varValue) 
_B._attributelist[_varprop]=_varvalue;
// [1371]  End If 
}
// [1372]  End If 
}
// [1374]  Select Case varProp 
switch ("" + _varprop) {
// [1375]  Case {720} , {721} , {722} , {723} , {724} , {725} , {726} 
case "" + "v-model":
case "" + "v-show":
case "" + "v-if":
case "" + "v-else-if":
case "" + "required":
case "" + "disabled":
case "" + "readonly":
// [1376]  If varValue <> {727} Then 
if (_varvalue!="") {
// [1377]  bindings.Put(varValue, Null) 
_B._bindings[_varvalue]=null;
// [1378]  End If 
}
// [1379]  Case {728} 
break;
case "" + "items":
// [1380]  If varValue <> {729} Then 
if (_varvalue!="") {
// [1381]  Dim lst As List = NewList 
_lst=_B.newlist(_B);
// [1382]  bindings.Put(varValue, lst) 
_B._bindings[_varvalue]=_lst;
// [1383]  End If 
}
// [1384]  End Select 
break;
}
// [1385]  End If 
}
// [1386]  Return 
return;
// End Sub
};

// [1389] Sub RemoveCodeBindings(b As List) 
_B.removecodebindings=function(_b) {
var _k;
// [1390]  For Each k As String In b 
for (var _kindex=0;_kindex<_b.length;_kindex++) {
_k=_b[_kindex];
// [1391]  If k <> {730} Then 
if (_k!="") {
// [1392]  bindings.Remove(k) 
delete _B._bindings[_k];
// [1393]  End If 
}
// [1394]  Next 
}
// End Sub
};

// [1398] Public Sub getClasses() As String 
_B.getclasses=function() {
var _sbclass,_k;
// [1399]  Dim sbClass As StringBuilder 
_sbclass=new StringBuilder();
// [1400]  sbClass.Initialize 
_sbclass.init();
_sbclass.isinitialized=true;
// [1401]  For Each k As String In classList.Keys 
var _kKeys = Object.keys(_B._classlist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1402]  sbClass.Append(k).Append( {731} ) 
_sbclass.append(_k).append(" ");
// [1403]  Next 
}
// [1404]  mClasses = sbClass.ToString 
_B._mclasses=_sbclass.toString();
// [1405]  Return mClasses 
return _B._mclasses;
// End Sub
};

// [1408] Sub setClasses(varClasses As String) 
_B.setclasses=function(_varclasses) {
// [1409]  AddClass(varClasses) 
_B.addclass(_varclasses,_B);
// End Sub
};

// [1413] public Sub setStyle(varStyle As String) 
_B.setstyle=function(_varstyle) {
// [1414]  setStyles(varStyle) 
_B.setstyles(_varstyle,_B);
// End Sub
};

// [1418] public Sub getStyle() As String 
_B.getstyle=function() {
var _sbstyle,_k,_v;
// [1419]  Dim sbStyle As StringBuilder 
_sbstyle=new StringBuilder();
// [1420]  sbStyle.Initialize 
_sbstyle.init();
_sbstyle.isinitialized=true;
// [1421]  sbStyle.Append( {732} ) 
_sbstyle.append("{");
// [1422]  For Each k As String In styleList.Keys 
var _kKeys = Object.keys(_B._stylelist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1423]  Dim v As String = styleList.Get(k) 
_v=_B._stylelist[_k];
// [1424]  sbStyle.Append(k).Append( {733} ).Append(v).Append( {734} ) 
_sbstyle.append(_k).append(":").append(_v).append(",");
// [1425]  Next 
}
// [1426]  sbStyle.Append( {735} ) 
_sbstyle.append("}");
// [1427]  mStyle = sbStyle.ToString 
_B._mstyle=_sbstyle.toString();
// [1428]  Return mStyle 
return _B._mstyle;
// End Sub
};

// [1432] public Sub setAttributes(varAttributes As String) 
_B.setattributes=function(_varattributes) {
var _mxitems,_mt,_k,_v;
// [1433]  Dim mxItems As List = BANanoShared.StrParse( {736} , varAttributes) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varattributes);
// [1434]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [1435]  Dim k As String = BANanoShared.MvField(mt,1, {737} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [1436]  Dim v As String = BANanoShared.MvField(mt,2, {738} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [1437]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1438]  mElement.SetAttr(k, v) 
_B._melement.attr(_k,_v);
// [1439]  Else 
} else {
// [1440]  attributeList.put(k, v) 
_B._attributelist[_k]=_v;
// [1441]  End If 
}
// [1442]  Next 
}
// End Sub
};

// [1446] public Sub setStyles(varStyles As String) 
_B.setstyles=function(_varstyles) {
var _mxitems,_mt,_k,_v;
// [1447]  Dim mxItems As List = BANanoShared.StrParse( {739} , varStyles) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varstyles);
// [1448]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [1449]  Dim k As String = BANanoShared.MvField(mt,1, {740} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [1450]  Dim v As String = BANanoShared.MvField(mt,2, {741} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [1451]  AddStyle(k, v) 
_B.addstyle(_k,_v,_B);
// [1452]  Next 
}
// End Sub
};

// [1456] public Sub getAttributes() As String 
_B.getattributes=function() {
var _sbattr,_k,_v;
// [1457]  Dim sbAttr As StringBuilder 
_sbattr=new StringBuilder();
// [1458]  sbAttr.Initialize 
_sbattr.init();
_sbattr.isinitialized=true;
// [1459]  For Each k As String In attributeList.Keys 
var _kKeys = Object.keys(_B._attributelist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1460]  Dim v As String = attributeList.Get(k) 
_v=_B._attributelist[_k];
// [1461]  sbAttr.Append(k).Append( {742} ).Append(v).Append( {743} ) 
_sbattr.append(_k).append("=").append(_v).append(";");
// [1462]  Next 
}
// [1463]  mAttributes = sbAttr.ToString 
_B._mattributes=_sbattr.toString();
// [1464]  Return mAttributes 
return _B._mattributes;
// End Sub
};

// [1468] public Sub setCaption(varCaption As String) 
_B.setcaption=function(_varcaption) {
// [1469]  If mElement <> Null Then 
if (_B._melement!=null) {
// [1470]  mElement.SetText(varCaption) 
_B._melement.text(_varcaption);
// [1471]  End If 
}
// [1472]  mCaption = varCaption 
_B._mcaption=_varcaption;
// End Sub
};

// [1476] public Sub getCaption() As String 
_B.getcaption=function() {
// [1477]  Return mCaption 
return _B._mcaption;
// End Sub
};

// [1480] public Sub setKey(varKey As String) 
_B.setkey=function(_varkey) {
// [1481]  AddAttr( {744} , varKey) 
_B.addattr("key",_varkey,_B);
// [1482]  stKey = varKey 
_B._stkey=_varkey;
// End Sub
};

// [1485] public Sub getKey() As String 
_B.getkey=function() {
// [1486]  Return stKey 
return _B._stkey;
// End Sub
};

// [1490] public Sub setSrc(varSrc As String) 
_B.setsrc=function(_varsrc) {
// [1491]  AddAttr( {745} , varSrc) 
_B.addattr("src",_varsrc,_B);
// [1492]  stSrc = varSrc 
_B._stsrc=_varsrc;
// End Sub
};

// [1495] public Sub getSrc() As String 
_B.getsrc=function() {
// [1496]  Return stSrc 
return _B._stsrc;
// End Sub
};

// [1499] public Sub setAlt(varAlt As String) 
_B.setalt=function(_varalt) {
// [1500]  AddAttr( {746} , varAlt) 
_B.addattr("alt",_varalt,_B);
// [1501]  stAlt = varAlt 
_B._stalt=_varalt;
// End Sub
};

// [1504] public Sub getAlt() As String 
_B.getalt=function() {
// [1505]  Return stAlt 
return _B._stalt;
// End Sub
};

// [1508] public Sub setVOn(varVOn As String) 
_B.setvon=function(_varvon) {
// [1509]  AddAttr( {747} , varVOn) 
_B.addattr("v-on",_varvon,_B);
// [1510]  stVOn = varVOn 
_B._stvon=_varvon;
// End Sub
};

// [1513] public Sub getVOn() As String 
_B.getvon=function() {
// [1514]  Return stVOn 
return _B._stvon;
// End Sub
};

// [1518] public Sub setSlotActivator(varSlotActivator As String) 
_B.setslotactivator=function(_varslotactivator) {
// [1519]  AddAttr( {748} , varSlotActivator) 
_B.addattr("v-slot:activator",_varslotactivator,_B);
// [1520]  stSlotActivator = varSlotActivator 
_B._stslotactivator=_varslotactivator;
// End Sub
};

// [1523] public Sub getSlotActivator() As String 
_B.getslotactivator=function() {
// [1524]  Return stSlotActivator 
return _B._stslotactivator;
// End Sub
};

// [1528] public Sub setRef(varRef As String) 
_B.setref=function(_varref) {
// [1529]  AddAttr( {749} , varRef) 
_B.addattr("ref",_varref,_B);
// [1530]  stRef = varRef 
_B._stref=_varref;
// End Sub
};

// [1533] public Sub getRef() As String 
_B.getref=function() {
// [1534]  Return stRef 
return _B._stref;
// End Sub
};

// [1538] public Sub setLabel(varLabel As String) 
_B.setlabel=function(_varlabel) {
// [1539]  AddAttr( {750} , varLabel) 
_B.addattr("label",_varlabel,_B);
// [1540]  stLabel = varLabel 
_B._stlabel=_varlabel;
// End Sub
};

// [1543] public Sub getLabel() As String 
_B.getlabel=function() {
// [1544]  Return stLabel 
return _B._stlabel;
// End Sub
};

// [1547] public Sub setSlot(varSlot As String) 
_B.setslot=function(_varslot) {
// [1548]  AddAttr( {751} , varSlot) 
_B.addattr("slot",_varslot,_B);
// [1549]  stSlot = varSlot 
_B._stslot=_varslot;
// End Sub
};

// [1552] public Sub getSlot() As String 
_B.getslot=function() {
// [1553]  Return stSlot 
return _B._stslot;
// End Sub
};

// [1556] public Sub setVBindClass(varVBindClass As String) 
_B.setvbindclass=function(_varvbindclass) {
// [1557]  AddAttr( {752} , varVBindClass) 
_B.addattr("v-bind:class",_varvbindclass,_B);
// [1558]  stVBindClass = varVBindClass 
_B._stvbindclass=_varvbindclass;
// End Sub
};

// [1561] public Sub getVBindClass() As String 
_B.getvbindclass=function() {
// [1562]  Return stVBindClass 
return _B._stvbindclass;
// End Sub
};

// [1565] public Sub setVBind(varVBind As String) 
_B.setvbind=function(_varvbind) {
// [1566]  AddAttr( {753} , varVBind) 
_B.addattr("v-bind",_varvbind,_B);
// [1567]  stVBind = varVBind 
_B._stvbind=_varvbind;
// End Sub
};

// [1570] public Sub getVBind() As String 
_B.getvbind=function() {
// [1571]  Return stVBind 
return _B._stvbind;
// End Sub
};

// [1575] public Sub setVBindStyle(varVBindStyle As String) 
_B.setvbindstyle=function(_varvbindstyle) {
// [1576]  AddAttr( {754} , varVBindStyle) 
_B.addattr("v-bind:style",_varvbindstyle,_B);
// [1577]  stVBindStyle = varVBindStyle 
_B._stvbindstyle=_varvbindstyle;
// End Sub
};

// [1580] public Sub getVBindStyle() As String 
_B.getvbindstyle=function() {
// [1581]  Return stVBindStyle 
return _B._stvbindstyle;
// End Sub
};

// [1584] public Sub setVElse(varVElse As String) 
_B.setvelse=function(_varvelse) {
// [1585]  AddAttr( {755} , varVElse) 
_B.addattr("v-else",_varvelse,_B);
// [1586]  stVElse = varVElse 
_B._stvelse=_varvelse;
// End Sub
};

// [1589] public Sub getVElse() As String 
_B.getvelse=function() {
// [1590]  Return stVElse 
return _B._stvelse;
// End Sub
};

// [1593] public Sub setVElseIf(varVElseIf As String) 
_B.setvelseif=function(_varvelseif) {
// [1594]  AddAttr( {756} , varVElseIf) 
_B.addattr("v-else-if",_varvelseif,_B);
// [1595]  stVElseIf = varVElseIf 
_B._stvelseif=_varvelseif;
// End Sub
};

// [1598] public Sub getVElseIf() As String 
_B.getvelseif=function() {
// [1599]  Return stVElseIf 
return _B._stvelseif;
// End Sub
};

// [1602] public Sub setVFor(varVFor As String) 
_B.setvfor=function(_varvfor) {
// [1603]  AddAttr( {757} , varVFor) 
_B.addattr("v-for",_varvfor,_B);
// [1604]  stVFor = varVFor 
_B._stvfor=_varvfor;
// End Sub
};

// [1607] public Sub getVFor() As String 
_B.getvfor=function() {
// [1608]  Return stVFor 
return _B._stvfor;
// End Sub
};

// [1611] public Sub setDataSource(varVFor As String) 
_B.setdatasource=function(_varvfor) {
// [1612]  stDataSource = varVFor 
_B._stdatasource=_varvfor;
// [1613]  SetData(stDataSource, NewList) 
_B.setdata(_B._stdatasource,_B.newlist(_B),_B);
// End Sub
};

// [1616] public Sub getDataSource() As String 
_B.getdatasource=function() {
// [1617]  Return stDataSource 
return _B._stdatasource;
// End Sub
};

// [1620] public Sub setVHtml(varVHtml As String) 
_B.setvhtml=function(_varvhtml) {
// [1621]  AddAttr( {758} , varVHtml) 
_B.addattr("v-html",_varvhtml,_B);
// [1622]  stVHtml = varVHtml 
_B._stvhtml=_varvhtml;
// End Sub
};

// [1625] public Sub getVHtml() As String 
_B.getvhtml=function() {
// [1626]  Return stVHtml 
return _B._stvhtml;
// End Sub
};

// [1629] public Sub setVIf(varVIf As String) 
_B.setvif=function(_varvif) {
// [1630]  AddAttr( {759} , varVIf) 
_B.addattr("v-if",_varvif,_B);
// [1631]  stVIf = varVIf 
_B._stvif=_varvif;
// End Sub
};

// [1634] public Sub getVIf() As String 
_B.getvif=function() {
// [1635]  Return stVIf 
return _B._stvif;
// End Sub
};

// [1638] public Sub setVModel(varVModel As String) 
_B.setvmodel=function(_varvmodel) {
// [1639]  AddAttr( {760} , varVModel) 
_B.addattr("v-model",_varvmodel,_B);
// [1640]  stVModel = varVModel 
_B._stvmodel=_varvmodel;
// End Sub
};

// [1643] public Sub getVModel() As String 
_B.getvmodel=function() {
// [1644]  Return stVModel 
return _B._stvmodel;
// End Sub
};

// [1647] public Sub setValue(varValue As String) 
_B.setvalue=function(_varvalue) {
// [1648]  AddAttr( {761} , varValue) 
_B.addattr("value",_varvalue,_B);
// [1649]  stValue = varValue 
_B._stvalue=_varvalue;
// End Sub
};

// [1652] public Sub getValue() As String 
_B.getvalue=function() {
// [1653]  Return stValue 
return _B._stvalue;
// End Sub
};

// [1656] public Sub setVShow(varVShow As String) 
_B.setvshow=function(_varvshow) {
// [1657]  AddAttr( {762} , varVShow) 
_B.addattr("v-show",_varvshow,_B);
// [1658]  stVShow = varVShow 
_B._stvshow=_varvshow;
// End Sub
};

// [1661] public Sub getVShow() As String 
_B.getvshow=function() {
// [1662]  Return stVShow 
return _B._stvshow;
// End Sub
};

// [1665] public Sub setVText(varVText As String) 
_B.setvtext=function(_varvtext) {
// [1666]  AddAttr( {763} , varVText) 
_B.addattr("v-text",_varvtext,_B);
// [1667]  stVText = varVText 
_B._stvtext=_varvtext;
// End Sub
};

// [1670] public Sub getVText() As String 
_B.getvtext=function() {
// [1671]  Return stVText 
return _B._stvtext;
// End Sub
};

// [1674] public Sub setBackgroundColor(varBackgroundColor As String) 
_B.setbackgroundcolor=function(_varbackgroundcolor) {
// [1675]  AddStyle( {764} , varBackgroundColor) 
_B.addstyle("background-color",_varbackgroundcolor,_B);
// [1676]  stBackgroundColor = varBackgroundColor 
_B._stbackgroundcolor=_varbackgroundcolor;
// End Sub
};

// [1679] public Sub getBackgroundColor() As String 
_B.getbackgroundcolor=function() {
// [1680]  Return stBackgroundColor 
return _B._stbackgroundcolor;
// End Sub
};

// [1683] public Sub setBackgroundImage(varBackgroundImage As String) 
_B.setbackgroundimage=function(_varbackgroundimage) {
// [1684]  AddStyle( {765} , varBackgroundImage) 
_B.addstyle("background-image",_varbackgroundimage,_B);
// [1685]  stBackgroundImage = varBackgroundImage 
_B._stbackgroundimage=_varbackgroundimage;
// End Sub
};

// [1688] public Sub getBackgroundImage() As String 
_B.getbackgroundimage=function() {
// [1689]  Return stBackgroundImage 
return _B._stbackgroundimage;
// End Sub
};

// [1692] public Sub setBackgroundRepeat(varBackgroundRepeat As String) 
_B.setbackgroundrepeat=function(_varbackgroundrepeat) {
// [1693]  AddStyle( {766} , varBackgroundRepeat) 
_B.addstyle("background-repeat",_varbackgroundrepeat,_B);
// [1694]  stBackgroundRepeat = varBackgroundRepeat 
_B._stbackgroundrepeat=_varbackgroundrepeat;
// End Sub
};

// [1697] public Sub getBackgroundRepeat() As String 
_B.getbackgroundrepeat=function() {
// [1698]  Return stBackgroundRepeat 
return _B._stbackgroundrepeat;
// End Sub
};

// [1701] public Sub setBorder(varBorder As String) 
_B.setborder=function(_varborder) {
// [1702]  AddStyle( {767} , varBorder) 
_B.addstyle("border",_varborder,_B);
// [1703]  stBorder = varBorder 
_B._stborder=_varborder;
// End Sub
};

// [1706] public Sub getBorder() As String 
_B.getborder=function() {
// [1707]  Return stBorder 
return _B._stborder;
// End Sub
};

// [1710] public Sub setBorderColor(varBorderColor As String) 
_B.setbordercolor=function(_varbordercolor) {
// [1711]  AddStyle( {768} , varBorderColor) 
_B.addstyle("border-color",_varbordercolor,_B);
// [1712]  stBorderColor = varBorderColor 
_B._stbordercolor=_varbordercolor;
// End Sub
};

// [1715] public Sub getBorderColor() As String 
_B.getbordercolor=function() {
// [1716]  Return stBorderColor 
return _B._stbordercolor;
// End Sub
};

// [1719] public Sub setBorderRadius(varBorderRadius As String) 
_B.setborderradius=function(_varborderradius) {
// [1720]  AddStyle( {769} , varBorderRadius) 
_B.addstyle("border-radius",_varborderradius,_B);
// [1721]  stBorderRadius = varBorderRadius 
_B._stborderradius=_varborderradius;
// End Sub
};

// [1724] public Sub getBorderRadius() As String 
_B.getborderradius=function() {
// [1725]  Return stBorderRadius 
return _B._stborderradius;
// End Sub
};

// [1728] public Sub setBorderStyle(varBorderStyle As String) 
_B.setborderstyle=function(_varborderstyle) {
// [1729]  AddStyle( {770} , varBorderStyle) 
_B.addstyle("border-style",_varborderstyle,_B);
// [1730]  stBorderStyle = varBorderStyle 
_B._stborderstyle=_varborderstyle;
// End Sub
};

// [1733] public Sub getBorderStyle() As String 
_B.getborderstyle=function() {
// [1734]  Return stBorderStyle 
return _B._stborderstyle;
// End Sub
};

// [1737] public Sub setBorderWidth(varBorderWidth As String) 
_B.setborderwidth=function(_varborderwidth) {
// [1738]  AddStyle( {771} , varBorderWidth) 
_B.addstyle("border-width",_varborderwidth,_B);
// [1739]  stBorderWidth = varBorderWidth 
_B._stborderwidth=_varborderwidth;
// End Sub
};

// [1742] public Sub getBorderWidth() As String 
_B.getborderwidth=function() {
// [1743]  Return stBorderWidth 
return _B._stborderwidth;
// End Sub
};

// [1746] public Sub setColor(varColor As String) 
_B.setcolor=function(_varcolor) {
// [1747]  AddAttr( {772} , varColor) 
_B.addattr("color",_varcolor,_B);
// [1748]  stColor = varColor 
_B._stcolor=_varcolor;
// End Sub
};

// [1751] public Sub getColor() As String 
_B.getcolor=function() {
// [1752]  Return stColor 
return _B._stcolor;
// End Sub
};

// [1755] public Sub setFontFamily(varFontFamily As String) 
_B.setfontfamily=function(_varfontfamily) {
// [1756]  AddStyle( {773} , varFontFamily) 
_B.addstyle("font-family",_varfontfamily,_B);
// [1757]  stFontFamily = varFontFamily 
_B._stfontfamily=_varfontfamily;
// End Sub
};

// [1760] public Sub getFontFamily() As String 
_B.getfontfamily=function() {
// [1761]  Return stFontFamily 
return _B._stfontfamily;
// End Sub
};

// [1764] public Sub setFontSize(varFontSize As String) 
_B.setfontsize=function(_varfontsize) {
// [1765]  AddStyle( {774} , varFontSize) 
_B.addstyle("font-size",_varfontsize,_B);
// [1766]  stFontSize = varFontSize 
_B._stfontsize=_varfontsize;
// End Sub
};

// [1769] public Sub getFontSize() As String 
_B.getfontsize=function() {
// [1770]  Return stFontSize 
return _B._stfontsize;
// End Sub
};

// [1773] public Sub setFontStyle(varFontStyle As String) 
_B.setfontstyle=function(_varfontstyle) {
// [1774]  AddStyle( {775} , varFontStyle) 
_B.addstyle("font-style",_varfontstyle,_B);
// [1775]  stFontStyle = varFontStyle 
_B._stfontstyle=_varfontstyle;
// End Sub
};

// [1778] public Sub getFontStyle() As String 
_B.getfontstyle=function() {
// [1779]  Return stFontStyle 
return _B._stfontstyle;
// End Sub
};

// [1782] public Sub setFontWeight(varFontWeight As String) 
_B.setfontweight=function(_varfontweight) {
// [1783]  AddStyle( {776} , varFontWeight) 
_B.addstyle("font-weight",_varfontweight,_B);
// [1784]  stFontWeight = varFontWeight 
_B._stfontweight=_varfontweight;
// End Sub
};

// [1787] public Sub getFontWeight() As String 
_B.getfontweight=function() {
// [1788]  Return stFontWeight 
return _B._stfontweight;
// End Sub
};

// [1791] public Sub setHeight(varHeight As String) 
_B.setheight=function(_varheight) {
// [1792]  AddAttr( {777} , varHeight) 
_B.addattr("height",_varheight,_B);
// [1793]  stHeight = varHeight 
_B._stheight=_varheight;
// End Sub
};

// [1796] public Sub getHeight() As String 
_B.getheight=function() {
// [1797]  Return stHeight 
return _B._stheight;
// End Sub
};

// [1800] public Sub setStyleHeight(varHeight As String) 
_B.setstyleheight=function(_varheight) {
// [1801]  AddStyle( {778} , varHeight) 
_B.addstyle("height",_varheight,_B);
// [1802]  stStyleHeight = varHeight 
_B._ststyleheight=_varheight;
// End Sub
};

// [1805] public Sub getStyleHeight() As String 
_B.getstyleheight=function() {
// [1806]  Return stStyleHeight 
return _B._ststyleheight;
// End Sub
};

// [1809] public Sub setMaxHeight(varMargin As String) 
_B.setmaxheight=function(_varmargin) {
// [1810]  AddAttr( {779} , varMargin) 
_B.addattr("max-height",_varmargin,_B);
// [1811]  stMaxHeight = varMargin 
_B._stmaxheight=_varmargin;
// End Sub
};

// [1814] public Sub getMaxHeight() As String 
_B.getmaxheight=function() {
// [1815]  Return stMaxHeight 
return _B._stmaxheight;
// End Sub
};

// [1818] public Sub setStyleMaxHeight(varMargin As String) 
_B.setstylemaxheight=function(_varmargin) {
// [1819]  AddStyle( {780} , varMargin) 
_B.addstyle("max-height",_varmargin,_B);
// [1820]  stStyleMaxHeight = varMargin 
_B._ststylemaxheight=_varmargin;
// End Sub
};

// [1823] public Sub getStyleMaxHeight() As String 
_B.getstylemaxheight=function() {
// [1824]  Return stStyleMaxHeight 
return _B._ststylemaxheight;
// End Sub
};

// [1827] public Sub setMaxWidth(varMarginBottom As String) 
_B.setmaxwidth=function(_varmarginbottom) {
// [1828]  AddAttr( {781} , varMarginBottom) 
_B.addattr("max-width",_varmarginbottom,_B);
// [1829]  stMaxWidth = varMarginBottom 
_B._stmaxwidth=_varmarginbottom;
// End Sub
};

// [1832] public Sub getMaxWidth() As String 
_B.getmaxwidth=function() {
// [1833]  Return stMaxWidth 
return _B._stmaxwidth;
// End Sub
};

// [1836] public Sub setStyleMaxWidth(varMarginBottom As String) 
_B.setstylemaxwidth=function(_varmarginbottom) {
// [1837]  AddStyle( {782} , varMarginBottom) 
_B.addstyle("max-width",_varmarginbottom,_B);
// [1838]  stStyleMaxWidth = varMarginBottom 
_B._ststylemaxwidth=_varmarginbottom;
// End Sub
};

// [1841] public Sub getStyleMaxWidth() As String 
_B.getstylemaxwidth=function() {
// [1842]  Return stStyleMaxWidth 
return _B._ststylemaxwidth;
// End Sub
};

// [1845] public Sub setOverwriteTag(varTag As String) 
_B.setoverwritetag=function(_vartag) {
// [1846]  AddAttr( {783} , varTag) 
_B.addattr("tag",_vartag,_B);
// [1847]  mOverwriteTag = varTag 
_B._moverwritetag=_vartag;
// End Sub
};

// [1850] Sub getOverwriteTag As String 
_B.getoverwritetag=function() {
// [1851]  Return mOverwriteTag 
return _B._moverwritetag;
// End Sub
};

// [1854] public Sub setTagName(varTagName As String) 
_B.settagname=function(_vartagname) {
// [1855]  mTagName = varTagName 
_B._mtagname=_vartagname;
// End Sub
};

// [1858] public Sub getTagName() As String 
_B.gettagname=function() {
// [1859]  Return mTagName 
return _B._mtagname;
// End Sub
};

// [1862] public Sub setTextAlign(varTextAlign As String) 
_B.settextalign=function(_vartextalign) {
// [1863]  AddStyle( {784} , varTextAlign) 
_B.addstyle("text-align",_vartextalign,_B);
// [1864]  stTextAlign = varTextAlign 
_B._sttextalign=_vartextalign;
// End Sub
};

// [1867] public Sub getTextAlign() As String 
_B.gettextalign=function() {
// [1868]  Return stTextAlign 
return _B._sttextalign;
// End Sub
};

// [1871] public Sub setDark(varDark As Boolean) 
_B.setdark=function(_vardark) {
// [1872]  AddAttr( {785} , varDark) 
_B.addattr(":dark",_vardark,_B);
// [1873]  bDark = varDark 
_B._bdark=_vardark;
// End Sub
};

// [1877] public Sub setElevation(s As String) 
_B.setelevation=function(_s) {
// [1878]  If BANano.IsNull(s) Then s = {786} 
if (is.null(_s)) {_s="";}
// [1879]  If s = {787} Then Return 
if (_s=="") { return ;}
// [1880]  AddAttr( {788} , S) 
_B.addattr("elevation",_s,_B);
// [1881]  AddClass( {789} & s) 
_B.addclass("elevation-"+_s,_B);
// End Sub
};

// [1884] public Sub setReactive(b As Boolean) 
_B.setreactive=function(_b) {
// [1885]  AddAttr( {790} , b) 
_B.addattr(":reactive",_b,_B);
// End Sub
};

// [1888] public Sub setInset(b As Boolean) 
_B.setinset=function(_b) {
// [1889]  AddAttr( {791} , b) 
_B.addattr(":inset",_b,_B);
// End Sub
};

// [1892] public Sub setRotate(s As String) 
_B.setrotate=function(_s) {
// [1893]  AddAttr( {792} , s) 
_B.addattr("rotate",_s,_B);
// End Sub
};

// [1897] public Sub setLarge(b As Boolean) 
_B.setlarge=function(_b) {
// [1898]  AddAttr( {793} , b) 
_B.addattr(":large",_b,_B);
// End Sub
};

// [1901] public Sub setSmall(b As Boolean) 
_B.setsmall=function(_b) {
// [1902]  AddAttr( {794} , b) 
_B.addattr(":small",_b,_B);
// End Sub
};

// [1906] public Sub setDepressed(b As Boolean) 
_B.setdepressed=function(_b) {
// [1907]  AddAttr( {795} , b) 
_B.addattr(":depressed",_b,_B);
// End Sub
};

// [1910] public Sub setFab(b As Boolean) 
_B.setfab=function(_b) {
// [1911]  AddAttr( {796} , b) 
_B.addattr(":fab",_b,_B);
// End Sub
};

// [1914] Sub setFalseValue(fv As Object) 
_B.setfalsevalue=function(_fv) {
// [1915]  AddAttr( {797} , fv) 
_B.addattr("false-value",_fv,_B);
// End Sub
};

// [1918] Sub setTrueValue(tv As Object) 
_B.settruevalue=function(_tv) {
// [1919]  AddAttr( {798} , tv) 
_B.addattr("true-value",_tv,_B);
// End Sub
};

// [1922] public Sub setLength(s As String) 
_B.setlength=function(_s) {
// [1923]  AddAttr( {799} , s) 
_B.addattr("length",_s,_B);
// End Sub
};

// [1926] public Sub setSize(s As String) 
_B.setsize=function(_s) {
// [1927]  AddAttr( {800} , s) 
_B.addattr("size",_s,_B);
// End Sub
};

// [1930] public Sub getDark() As Boolean 
_B.getdark=function() {
// [1931]  Return bDark 
return _B._bdark;
// End Sub
};

// [1934] public Sub setHiddenMDAndUp(varHiddenMDAndUp As Boolean) 
_B.sethiddenmdandup=function(_varhiddenmdandup) {
// [1935]  AddClassOnCondition( {801} , varHiddenMDAndUp, True) 
_B.addclassoncondition("hidden-md-and-up",_varhiddenmdandup,true,_B);
// [1936]  bHiddenMDAndUp = varHiddenMDAndUp 
_B._bhiddenmdandup=_varhiddenmdandup;
// End Sub
};

// [1939] public Sub getHiddenMDAndUp() As Boolean 
_B.gethiddenmdandup=function() {
// [1940]  Return bHiddenMDAndUp 
return _B._bhiddenmdandup;
// End Sub
};

// [1943] public Sub setHiddenSMAndDown(varHiddenSMAndDown As Boolean) 
_B.sethiddensmanddown=function(_varhiddensmanddown) {
// [1944]  AddClassOnCondition( {802} , varHiddenSMAndDown, True) 
_B.addclassoncondition("hidden-sm-and-down",_varhiddensmanddown,true,_B);
// [1945]  bHiddenSMAndDown = varHiddenSMAndDown 
_B._bhiddensmanddown=_varhiddensmanddown;
// End Sub
};

// [1948] public Sub getHiddenSMAndDown() As Boolean 
_B.gethiddensmanddown=function() {
// [1949]  Return bHiddenSMAndDown 
return _B._bhiddensmanddown;
// End Sub
};

// [1952] public Sub setJustifyCenter(varJustifyCenter As Boolean) 
_B.setjustifycenter=function(_varjustifycenter) {
// [1953]  AddAttrOnConditionTrue( {803} , {804} , varJustifyCenter) 
_B.addattronconditiontrue("justify","center",_varjustifycenter,_B);
// [1954]  bJustifyCenter = varJustifyCenter 
_B._bjustifycenter=_varjustifycenter;
// End Sub
};

// [1957] public Sub getJustifyCenter() As Boolean 
_B.getjustifycenter=function() {
// [1958]  Return bJustifyCenter 
return _B._bjustifycenter;
// End Sub
};

// [1961] public Sub setAlignCenter(varAlignCenter As Boolean) 
_B.setaligncenter=function(_varaligncenter) {
// [1962]  AddAttrOnConditionTrue( {805} , {806} , varAlignCenter) 
_B.addattronconditiontrue("align","center",_varaligncenter,_B);
// [1963]  bAlignCenter = varAlignCenter 
_B._baligncenter=_varaligncenter;
// End Sub
};

// [1966] public Sub getAlignCenter() As Boolean 
_B.getaligncenter=function() {
// [1967]  Return bAlignCenter 
return _B._baligncenter;
// End Sub
};

// [1970] public Sub setFillHeight(varFillHeight As Boolean) 
_B.setfillheight=function(_varfillheight) {
// [1971]  AddClassOnCondition( {807} , varFillHeight, True) 
_B.addclassoncondition("fill-height",_varfillheight,true,_B);
// [1972]  bFillHeight = varFillHeight 
_B._bfillheight=_varfillheight;
// End Sub
};

// [1975] public Sub getFillHeight() As Boolean 
_B.getfillheight=function() {
// [1976]  Return bFillHeight 
return _B._bfillheight;
// End Sub
};

// [1980] public Sub setTextDecoration(varTextDecoration As String) 
_B.settextdecoration=function(_vartextdecoration) {
// [1981]  AddStyle( {808} , varTextDecoration) 
_B.addstyle("text-decoration",_vartextdecoration,_B);
// [1982]  stTextDecoration = varTextDecoration 
_B._sttextdecoration=_vartextdecoration;
// End Sub
};

// [1985] public Sub getTextDecoration() As String 
_B.gettextdecoration=function() {
// [1986]  Return stTextDecoration 
return _B._sttextdecoration;
// End Sub
};

// [1989] public Sub setWidth(varWidth As String) 
_B.setwidth=function(_varwidth) {
// [1990]  AddAttr( {809} , varWidth) 
_B.addattr("width",_varwidth,_B);
// [1991]  stWidth = varWidth 
_B._stwidth=_varwidth;
// End Sub
};

// [1994] public Sub getWidth() As String 
_B.getwidth=function() {
// [1995]  Return stWidth 
return _B._stwidth;
// End Sub
};

// [1998] public Sub setStyleWidth(varWidth As String) 
_B.setstylewidth=function(_varwidth) {
// [1999]  AddStyle( {810} , varWidth) 
_B.addstyle("width",_varwidth,_B);
// [2000]  stStyleWidth = varWidth 
_B._ststylewidth=_varwidth;
// End Sub
};

// [2003] public Sub getStyleWidth() As String 
_B.getstylewidth=function() {
// [2004]  Return stStyleWidth 
return _B._ststylewidth;
// End Sub
};

// [2007] public Sub setRules(varRules As String) 
_B.setrules=function(_varrules) {
// [2008]  AddAttr( {811} , varRules) 
_B.addattr("rules",_varrules,_B);
// [2009]  stWidth = varRules 
_B._stwidth=_varrules;
// End Sub
};

// [2012] public Sub getRules() As String 
_B.getrules=function() {
// [2013]  Return stRules 
return _B._strules;
// End Sub
};

// [2017] public Sub setTo(varTo As String) 
_B.setto=function(_varto) {
// [2018]  AddAttr( {812} , varTo) 
_B.addattr("to",_varto,_B);
// [2019]  stTo = varTo 
_B._stto=_varto;
// End Sub
};

// [2022] public Sub getTo() As String 
_B.getto=function() {
// [2023]  Return stTo 
return _B._stto;
// End Sub
};

// [2027] Sub AddChild(child As String) 
_B.addchild=function(_child) {
// [2028]  sbText.Append(child) 
_B._sbtext.append(_child);
// End Sub
};

// [2032] Sub SetCallBack(methodName As String, cb As BANanoObject) 
_B.setcallback=function(_methodname,_cb) {
// [2033]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [2034]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// End Sub
};

// [2037] private Sub SetEvent(eventName As String, attrName As String, eventValue As String) 
_B.setevent=function(_eventname,_attrname,_eventvalue) {
var _sname,_scode,_e,_cb;
// [2038]  eventName = eventName.Replace( {813} , {814} ) 
_eventname=_eventname.split(":").join("");
// [2039]  eventName = eventName.Replace( {815} , {816} ) 
_eventname=_eventname.split(".").join("");
// [2040]  eventName = eventName.Replace( {817} , {818} ) 
_eventname=_eventname.split("-").join("");
// [2041]  Dim sName As String = {18} 
_sname="" + _B._meventname + "_" + _eventname + "";
// [2042]  sName = sName.tolowercase 
_sname=_sname.toLowerCase();
// [2043]  attrName = attrName.tolowercase 
_attrname=_attrname.toLowerCase();
// [2044]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [2045]  If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = {819} 
if (is.undefined(_eventvalue) || is.null(_eventvalue)) {_eventvalue="";}
// [2046]  Dim sCode As String = {19} 
_scode="" + _sname + "(" + _eventvalue + ")";
// [2047]  AddAttr( {20} , sCode) 
_B.addattr("v-on:" + _attrname + "",_scode,_B);
// [2049]  Dim e As Object 'ignore 
_e={};
// [2050]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [2051]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [2054] Sub SetOnEvent(eventHandler As Object, eventName As String, attrName As String, eventValue As String) 
_B.setonevent=function(_eventhandler,_eventname,_attrname,_eventvalue) {
var _scode,_e,_cb;
// [2055]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [2056]  eventName = eventName.Replace( {820} , {821} ) 
_eventname=_eventname.split(":").join("");
// [2057]  eventName = eventName.Replace( {822} , {823} ) 
_eventname=_eventname.split(".").join("");
// [2058]  eventName = eventName.Replace( {824} , {825} ) 
_eventname=_eventname.split("-").join("");
// [2059]  attrName = attrName.tolowercase 
_attrname=_attrname.toLowerCase();
// [2060]  If SubExists(eventHandler, eventName) = False Then Return 
if ((typeof _eventhandler[(_eventname).toLowerCase()]==="function")==false) { return ;}
// [2061]  If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = {826} 
if (is.undefined(_eventvalue) || is.null(_eventvalue)) {_eventvalue="";}
// [2062]  Dim sCode As String = {21} 
_scode="" + _eventname + "(" + _eventvalue + ")";
// [2063]  AddAttr( {22} , sCode) 
_B.addattr("v-on:" + _attrname + "",_scode,_B);
// [2065]  Dim e As Object 'ignore 
_e={};
// [2066]  Dim cb As BANanoObject = BANano.CallBack(eventHandler, eventName, Array(e)) 
_cb=function(_e) {if (typeof _eventhandler[(_eventname).toLowerCase()]==="function") {return _eventhandler[(_eventname).toLowerCase()](_e,_B)};};
// [2067]  methods.Put(eventName, cb) 
_B._methods[_eventname]=_cb;
// End Sub
};

// [2072] Sub OnMulti(EventHandler As String, eventName As String, args As String) 'ignoredeadcode 
_B.onmulti=function(_eventhandler,_eventname,_args) {
var _seventname,_sname,_scode,_e,_cb;
// [2073]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [2074]  EventHandler = EventHandler.tolowercase 
_eventhandler=_eventhandler.toLowerCase();
// [2076]  Dim seventname As String = eventName 
_seventname=_eventname;
// [2077]  seventname = seventname.Replace( {827} , {828} ) 
_seventname=_seventname.split(".").join("");
// [2078]  seventname = seventname.Replace( {829} , {830} ) 
_seventname=_seventname.split(":").join("");
// [2079]  seventname = seventname.Replace( {831} , {832} ) 
_seventname=_seventname.split("-").join("");
// [2082]  Dim sName As String = {23} 
_sname="" + _eventhandler + "_" + _seventname + "";
// [2083]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [2085]  If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = {833} 
if (is.undefined(_args) || is.null(_args)) {_args="";}
// [2086]  Dim sCode As String = {24} 
_scode="" + _sname + "(" + _args + ")";
// [2087]  AddAttr( {25} , sCode) 
_B.addattr("v-on:" + _eventname + "",_scode,_B);
// [2089]  Dim e As BANanoEvent 'ignore 
_e=null;
// [2090]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [2091]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [2095] Sub On(eventName As String, args As String) 'ignoredeadcode 
_B.on=function(_eventname,_args) {
var _seventname,_sname,_scode,_e,_cb;
// [2096]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [2098]  Dim seventname As String = eventName 
_seventname=_eventname;
// [2099]  seventname = seventname.Replace( {834} , {835} ) 
_seventname=_seventname.split(".").join("");
// [2100]  seventname = seventname.Replace( {836} , {837} ) 
_seventname=_seventname.split(":").join("");
// [2101]  seventname = seventname.Replace( {838} , {839} ) 
_seventname=_seventname.split("-").join("");
// [2104]  Dim sName As String = {26} 
_sname="" + _B._meventname + "_" + _seventname + "";
// [2105]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [2107]  If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = {840} 
if (is.undefined(_args) || is.null(_args)) {_args="";}
// [2108]  Dim sCode As String = {27} 
_scode="" + _sname + "(" + _args + ")";
// [2109]  AddAttr( {28} , sCode) 
_B.addattr("v-on:" + _eventname + "",_scode,_B);
// [2111]  Dim e As BANanoEvent 'ignore 
_e=null;
// [2112]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [2113]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [2117] Sub setCoverImage(url As String) 
_B.setcoverimage=function(_url) {
var _sm;
// [2118]  stCoverImage = url 
_B._stcoverimage=_url;
// [2119]  If BANano.IsUndefined(url) Or BANano.IsNull(url) Then Return 
if (is.undefined(_url) || is.null(_url)) { return ;}
// [2120]  url = url.trim 
_url=_url.trim();
// [2121]  If url = {841} Then Return 
if (_url=="") { return ;}
// [2122]  Dim sm As String = {29} 
_sm="background-image=url('" + _url + "');background-size=cover;width=100%;height=100%";
// [2123]  setStyles(sm) 
_B.setstyles(_sm,_B);
// End Sub
};

// [2126] public Sub getCoverImage() As String 
_B.getcoverimage=function() {
// [2127]  Return stCoverImage 
return _B._stcoverimage;
// End Sub
};

// [2130] Sub setOffsets(varOffSets As String) 
_B.setoffsets=function(_varoffsets) {
var _offmap,_offs,_offm,_offl,_offx;
// [2131]  stOffSets = varOffSets 
_B._stoffsets=_varoffsets;
// [2132]  If BANano.IsUndefined(varOffSets) Or BANano.IsNull(varOffSets) Then Return 
if (is.undefined(_varoffsets) || is.null(_varoffsets)) { return ;}
// [2133]  If varOffSets = {842} Then Return 
if (_varoffsets=="") { return ;}
// [2134]  Dim offmap As Map = GetOffsetSizes(stOffSets) 
_offmap=_B.getoffsetsizes(_B._stoffsets,_B);
// [2136]  Dim offs As String = offmap.get( {843} ) 
_offs=_offmap["s"];
// [2137]  Dim offm As String = offmap.get( {844} ) 
_offm=_offmap["m"];
// [2138]  Dim offl As String = offmap.get( {845} ) 
_offl=_offmap["l"];
// [2139]  Dim offx As String = offmap.get( {846} ) 
_offx=_offmap["x"];
// [2141]  AddOffsets(offs, offm, offl, offx) 
_B.addoffsets(_offs,_offm,_offl,_offx,_B);
// End Sub
};

// [2144] Sub getOffSets() As String 
_B.getoffsets=function() {
// [2145]  Return stOffSets 
return _B._stoffsets;
// End Sub
};

// [2148] Sub setSizes(varSizes As String) 
_B.setsizes=function(_varsizes) {
var _sizmap,_sm,_md,_lg,_xl;
// [2149]  stSizes = varSizes 
_B._stsizes=_varsizes;
// [2150]  If BANano.IsUndefined(varSizes) Or BANano.IsNull(varSizes) Then Return 
if (is.undefined(_varsizes) || is.null(_varsizes)) { return ;}
// [2151]  If varSizes = {847} Then Return 
if (_varsizes=="") { return ;}
// [2152]  Dim sizmap As Map = GetOffsetSizes(stSizes) 
_sizmap=_B.getoffsetsizes(_B._stsizes,_B);
// [2153]  Dim sm As String = sizmap.get( {848} ) 
_sm=_sizmap["s"];
// [2154]  Dim md As String = sizmap.get( {849} ) 
_md=_sizmap["m"];
// [2155]  Dim lg As String = sizmap.get( {850} ) 
_lg=_sizmap["l"];
// [2156]  Dim xl As String = sizmap.get( {851} ) 
_xl=_sizmap["x"];
// [2158]  AddSizes(sm, md, lg, xl) 
_B.addsizes(_sm,_md,_lg,_xl,_B);
// End Sub
};

// [2161] Sub getSizes() As String 
_B.getsizes=function() {
// [2162]  Return stSizes 
return _B._stsizes;
// End Sub
};

// [2166] Sub setPaddingAXYTBLR(varsetPaddingTBLR As String) 
_B.setpaddingaxytblr=function(_varsetpaddingtblr) {
var _m,_pa,_px,_py,_pt,_pb,_pl,_pr;
// [2167]  stPaddingAXYTBLR = varsetPaddingTBLR 
_B._stpaddingaxytblr=_varsetpaddingtblr;
// [2168]  If BANano.IsUndefined(varsetPaddingTBLR) Or BANano.IsNull(varsetPaddingTBLR) Then Return 
if (is.undefined(_varsetpaddingtblr) || is.null(_varsetpaddingtblr)) { return ;}
// [2169]  If varsetPaddingTBLR = {852} Then Return 
if (_varsetpaddingtblr=="") { return ;}
// [2170]  Dim m As Map = GetMarginPadding(varsetPaddingTBLR) 
_m=_B.getmarginpadding(_varsetpaddingtblr,_B);
// [2171]  Dim pa As String = m.Get( {853} ) 
_pa=_m["a"];
// [2172]  Dim px As String = m.Get( {854} ) 
_px=_m["x"];
// [2173]  Dim py As String = m.Get( {855} ) 
_py=_m["y"];
// [2174]  Dim pt As String = m.Get( {856} ) 
_pt=_m["t"];
// [2175]  Dim pb As String = m.Get( {857} ) 
_pb=_m["b"];
// [2176]  Dim pl As String = m.Get( {858} ) 
_pl=_m["l"];
// [2177]  Dim pr As String = m.Get( {859} ) 
_pr=_m["r"];
// [2179]  If pa <> {860} Then AddClass( {30} ) 
if (_pa!="") {_B.addclass("pa-" + _pa + "",_B);}
// [2180]  If px <> {861} Then AddClass( {31} ) 
if (_px!="") {_B.addclass("px-" + _px + "",_B);}
// [2181]  If py <> {862} Then AddClass( {32} ) 
if (_py!="") {_B.addclass("py-" + _py + "",_B);}
// [2182]  If pt <> {863} Then AddClass( {33} ) 
if (_pt!="") {_B.addclass("pt-" + _pt + "",_B);}
// [2183]  If pb <> {864} Then AddClass( {34} ) 
if (_pb!="") {_B.addclass("pb-" + _pb + "",_B);}
// [2184]  If pl <> {865} Then AddClass( {35} ) 
if (_pl!="") {_B.addclass("pl-" + _pl + "",_B);}
// [2185]  If pr <> {866} Then AddClass( {36} ) 
if (_pr!="") {_B.addclass("pr-" + _pr + "",_B);}
// End Sub
};

// [2188] Sub getPaddingAXYTBLR() As String 
_B.getpaddingaxytblr=function() {
// [2189]  Return stPaddingAXYTBLR 
return _B._stpaddingaxytblr;
// End Sub
};

// [2192] Sub setMarginAXYTBLR(varMarginAXYTBLR As String) 
_B.setmarginaxytblr=function(_varmarginaxytblr) {
var _m,_ma,_mx,_my,_mt,_mb,_ml,_mr;
// [2193]  stMarginAXYTBLR = varMarginAXYTBLR 
_B._stmarginaxytblr=_varmarginaxytblr;
// [2194]  If BANano.IsUndefined(varMarginAXYTBLR) Or BANano.IsNull(varMarginAXYTBLR) Then Return 
if (is.undefined(_varmarginaxytblr) || is.null(_varmarginaxytblr)) { return ;}
// [2195]  If varMarginAXYTBLR = {867} Then Return 
if (_varmarginaxytblr=="") { return ;}
// [2197]  Dim m As Map = GetMarginPadding(varMarginAXYTBLR) 
_m=_B.getmarginpadding(_varmarginaxytblr,_B);
// [2198]  Dim ma As String = m.Get( {868} ) 
_ma=_m["a"];
// [2199]  Dim mx As String = m.Get( {869} ) 
_mx=_m["x"];
// [2200]  Dim my As String = m.Get( {870} ) 
_my=_m["y"];
// [2201]  Dim mt As String = m.Get( {871} ) 
_mt=_m["t"];
// [2202]  Dim mb As String = m.Get( {872} ) 
_mb=_m["b"];
// [2203]  Dim ml As String = m.Get( {873} ) 
_ml=_m["l"];
// [2204]  Dim mr As String = m.Get( {874} ) 
_mr=_m["r"];
// [2206]  If ma <> {875} Then AddClass( {37} ) 
if (_ma!="") {_B.addclass("ma-" + _ma + "",_B);}
// [2207]  If mx <> {876} Then AddClass( {38} ) 
if (_mx!="") {_B.addclass("mx-" + _mx + "",_B);}
// [2208]  If my <> {877} Then AddClass( {39} ) 
if (_my!="") {_B.addclass("my-" + _my + "",_B);}
// [2209]  If mt <> {878} Then AddClass( {40} ) 
if (_mt!="") {_B.addclass("mt-" + _mt + "",_B);}
// [2210]  If mb <> {879} Then AddClass( {41} ) 
if (_mb!="") {_B.addclass("mb-" + _mb + "",_B);}
// [2211]  If ml <> {880} Then AddClass( {42} ) 
if (_ml!="") {_B.addclass("ml-" + _ml + "",_B);}
// [2212]  If mr <> {881} Then AddClass( {43} ) 
if (_mr!="") {_B.addclass("mr-" + _mr + "",_B);}
// End Sub
};

// [2215] Sub AddPadding(pa As String, px As String, py As String, pt As String, pb As String, pl As String, pr As String) 
_B.addpadding=function(_pa,_px,_py,_pt,_pb,_pl,_pr) {
// [2216]  pt = pt.Trim 
_pt=_pt.trim();
// [2217]  pb = pb.Trim 
_pb=_pb.trim();
// [2218]  pl = pl.Trim 
_pl=_pl.trim();
// [2219]  pr = pr.Trim 
_pr=_pr.trim();
// [2220]  pa = pa.Trim 
_pa=_pa.trim();
// [2221]  px = px.trim 
_px=_px.trim();
// [2222]  py = py.trim 
_py=_py.trim();
// [2224]  If pa <> {882} Then AddClass( {44} ) 
if (_pa!="") {_B.addclass("pa-" + _pa + "",_B);}
// [2225]  If px <> {883} Then AddClass( {45} ) 
if (_px!="") {_B.addclass("px-" + _px + "",_B);}
// [2226]  If py <> {884} Then AddClass( {46} ) 
if (_py!="") {_B.addclass("py-" + _py + "",_B);}
// [2227]  If pt <> {885} Then AddClass( {47} ) 
if (_pt!="") {_B.addclass("pt-" + _pt + "",_B);}
// [2228]  If pb <> {886} Then AddClass( {48} ) 
if (_pb!="") {_B.addclass("pb-" + _pb + "",_B);}
// [2229]  If pl <> {887} Then AddClass( {49} ) 
if (_pl!="") {_B.addclass("pl-" + _pl + "",_B);}
// [2230]  If pr <> {888} Then AddClass( {50} ) 
if (_pr!="") {_B.addclass("pr-" + _pr + "",_B);}
// End Sub
};

// [2233] Sub AddMargin(ma As String, mx As String, my As String, mt As String, mb As String, ml As String, mr As String) 
_B.addmargin=function(_ma,_mx,_my,_mt,_mb,_ml,_mr) {
// [2234]  mt = mt.Trim 
_mt=_mt.trim();
// [2235]  mb = mb.Trim 
_mb=_mb.trim();
// [2236]  ml = ml.Trim 
_ml=_ml.trim();
// [2237]  mr = mr.Trim 
_mr=_mr.trim();
// [2238]  ma = ma.Trim 
_ma=_ma.trim();
// [2239]  mx = mx.trim 
_mx=_mx.trim();
// [2240]  my = my.trim 
_my=_my.trim();
// [2242]  If ma <> {889} Then AddClass( {51} ) 
if (_ma!="") {_B.addclass("ma-" + _ma + "",_B);}
// [2243]  If mx <> {890} Then AddClass( {52} ) 
if (_mx!="") {_B.addclass("mx-" + _mx + "",_B);}
// [2244]  If my <> {891} Then AddClass( {53} ) 
if (_my!="") {_B.addclass("my-" + _my + "",_B);}
// [2245]  If mt <> {892} Then AddClass( {54} ) 
if (_mt!="") {_B.addclass("mt-" + _mt + "",_B);}
// [2246]  If mb <> {893} Then AddClass( {55} ) 
if (_mb!="") {_B.addclass("mb-" + _mb + "",_B);}
// [2247]  If ml <> {894} Then AddClass( {56} ) 
if (_ml!="") {_B.addclass("ml-" + _ml + "",_B);}
// [2248]  If mr <> {895} Then AddClass( {57} ) 
if (_mr!="") {_B.addclass("mr-" + _mr + "",_B);}
// End Sub
};

// [2251] Sub getMarginAXYTBLR() As String 
_B.getmarginaxytblr=function() {
// [2252]  Return stMarginAXYTBLR 
return _B._stmarginaxytblr;
// End Sub
};

// [2256] Sub setFitScreen(varFitScreen As Boolean) 
_B.setfitscreen=function(_varfitscreen) {
var _sm;
// [2257]  bFitScreen = varFitScreen 
_B._bfitscreen=_varfitscreen;
// [2258]  If BANano.IsUndefined(varFitScreen) Or BANano.IsNull(varFitScreen) Then Return 
if (is.undefined(_varfitscreen) || is.null(_varfitscreen)) { return ;}
// [2259]  If varFitScreen = False Then Return 
if (_varfitscreen==false) { return ;}
// [2260]  Dim sm As String = {58} 
_sm="height=100vh !important;max-height=100vh !important";
// [2261]  setStyles(sm) 
_B.setstyles(_sm,_B);
// End Sub
};

// [2264] public Sub getFitScreen() As Boolean 
_B.getfitscreen=function() {
// [2265]  Return bFitScreen 
return _B._bfitscreen;
// End Sub
};

// [2269] Sub setFullScreen(varFullScreen As Boolean) 
_B.setfullscreen=function(_varfullscreen) {
// [2270]  bFullScreen = varFullScreen 
_B._bfullscreen=_varfullscreen;
// [2271]  If BANano.IsUndefined(varFullScreen) Or BANano.IsNull(varFullScreen) Then Return 
if (is.undefined(_varfullscreen) || is.null(_varfullscreen)) { return ;}
// [2272]  If varFullScreen = False Then Return 
if (_varfullscreen==false) { return ;}
// [2273]  AddAttr( {896} , {897} ) 
_B.addattr(":fullscreen","$vuetify.breakpoint.mobile",_B);
// End Sub
};

// [2276] public Sub getFullScreen() As Boolean 
_B.getfullscreen=function() {
// [2277]  Return bFullScreen 
return _B._bfullscreen;
// End Sub
};

// [2281] public Sub setAppendIcon(varAppendIcon As String) 
_B.setappendicon=function(_varappendicon) {
// [2282]  AddAttr( {898} , varAppendIcon) 
_B.addattr("append-icon",_varappendicon,_B);
// [2283]  stAppendIcon = varAppendIcon 
_B._stappendicon=_varappendicon;
// End Sub
};

// [2287] public Sub getAppendIcon() As String 
_B.getappendicon=function() {
// [2288]  Return stAppendIcon 
return _B._stappendicon;
// End Sub
};

// [2292] public Sub setAppendOuterIcon(varAppendIcon As String) 
_B.setappendoutericon=function(_varappendicon) {
// [2293]  AddAttr( {899} , varAppendIcon) 
_B.addattr("append-outer-icon",_varappendicon,_B);
// [2294]  stAppendOuterIcon = varAppendIcon 
_B._stappendoutericon=_varappendicon;
// End Sub
};

// [2298] public Sub getAppendOuterIcon() As String 
_B.getappendoutericon=function() {
// [2299]  Return stAppendOuterIcon 
return _B._stappendoutericon;
// End Sub
};

// [2304] public Sub setAutofocus(varAutofocus As Boolean) 
_B.setautofocus=function(_varautofocus) {
// [2305]  AddAttrOnCondition( {900} , varAutofocus, True) 
_B.addattroncondition(":autofocus",_varautofocus,true,_B);
// [2306]  boAutofocus = varAutofocus 
_B._boautofocus=_varautofocus;
// End Sub
};

// [2310] public Sub getAutofocus() As Boolean 
_B.getautofocus=function() {
// [2311]  Return boAutofocus 
return _B._boautofocus;
// End Sub
};

// [2315] public Sub setClearable(varClearable As Boolean) 
_B.setclearable=function(_varclearable) {
// [2316]  AddAttrOnCondition( {901} , varClearable, True) 
_B.addattroncondition(":clearable",_varclearable,true,_B);
// [2317]  boClearable = varClearable 
_B._boclearable=_varclearable;
// End Sub
};

// [2321] public Sub getClearable() As Boolean 
_B.getclearable=function() {
// [2322]  Return boClearable 
return _B._boclearable;
// End Sub
};

// [2326] public Sub setCounter(varCounter As String) 
_B.setcounter=function(_varcounter) {
// [2327]  AddAttr( {902} , varCounter) 
_B.addattr("counter",_varcounter,_B);
// [2328]  stCounter = varCounter 
_B._stcounter=_varcounter;
// End Sub
};

// [2332] public Sub getCounter() As String 
_B.getcounter=function() {
// [2333]  Return stCounter 
return _B._stcounter;
// End Sub
};

// [2337] public Sub setDense(varDense As Boolean) 
_B.setdense=function(_vardense) {
// [2338]  AddAttrOnCondition( {903} , varDense, True) 
_B.addattroncondition(":dense",_vardense,true,_B);
// [2339]  boDense = varDense 
_B._bodense=_vardense;
// End Sub
};

// [2343] public Sub getDense() As Boolean 
_B.getdense=function() {
// [2344]  Return boDense 
return _B._bodense;
// End Sub
};

// [2348] public Sub setDisabled(varDisabled As String) 
_B.setdisabled=function(_vardisabled) {
// [2349]  AddAttr( {904} , varDisabled) 
_B.addattr("disabled",_vardisabled,_B);
// [2350]  stDisabled = varDisabled 
_B._stdisabled=_vardisabled;
// End Sub
};

// [2354] public Sub getDisabled() As String 
_B.getdisabled=function() {
// [2355]  Return stDisabled 
return _B._stdisabled;
// End Sub
};

// [2359] public Sub setFilled(varFilled As Boolean) 
_B.setfilled=function(_varfilled) {
// [2360]  AddAttrOnCondition( {905} , varFilled, True) 
_B.addattroncondition(":filled",_varfilled,true,_B);
// [2361]  boFilled = varFilled 
_B._bofilled=_varfilled;
// End Sub
};

// [2365] public Sub getFilled() As Boolean 
_B.getfilled=function() {
// [2366]  Return boFilled 
return _B._bofilled;
// End Sub
};

// [2370] public Sub setFlat(varFlat As Boolean) 
_B.setflat=function(_varflat) {
// [2371]  AddAttrOnCondition( {906} , varFlat, True) 
_B.addattroncondition(":flat",_varflat,true,_B);
// [2372]  boFlat = varFlat 
_B._boflat=_varflat;
// End Sub
};

// [2376] public Sub getFlat() As Boolean 
_B.getflat=function() {
// [2377]  Return boFlat 
return _B._boflat;
// End Sub
};

// [2381] public Sub setHideDetails(varHideDetails As Boolean) 
_B.sethidedetails=function(_varhidedetails) {
// [2382]  AddAttrOnCondition( {907} , varHideDetails, True) 
_B.addattroncondition(":hide-details",_varhidedetails,true,_B);
// [2383]  boHideDetails = varHideDetails 
_B._bohidedetails=_varhidedetails;
// End Sub
};

// [2387] public Sub getHideDetails() As Boolean 
_B.gethidedetails=function() {
// [2388]  Return boHideDetails 
return _B._bohidedetails;
// End Sub
};

// [2392] public Sub setHint(varHint As String) 
_B.sethint=function(_varhint) {
// [2393]  AddAttr( {908} , varHint) 
_B.addattr("hint",_varhint,_B);
// [2394]  stHint = varHint 
_B._sthint=_varhint;
// End Sub
};

// [2398] public Sub getHint() As String 
_B.gethint=function() {
// [2399]  Return stHint 
return _B._sthint;
// End Sub
};

// [2403] public Sub setOutlined(varOutlined As Boolean) 
_B.setoutlined=function(_varoutlined) {
// [2404]  AddAttrOnCondition( {909} , varOutlined, True) 
_B.addattroncondition(":outlined",_varoutlined,true,_B);
// [2405]  boOutlined = varOutlined 
_B._booutlined=_varoutlined;
// End Sub
};

// [2409] public Sub getOutlined() As Boolean 
_B.getoutlined=function() {
// [2410]  Return boOutlined 
return _B._booutlined;
// End Sub
};

// [2414] public Sub setPersistentHint(varPersistentHint As Boolean) 
_B.setpersistenthint=function(_varpersistenthint) {
// [2415]  AddAttrOnCondition( {910} , varPersistentHint, True) 
_B.addattroncondition(":persistent-hint",_varpersistenthint,true,_B);
// [2416]  boPersistentHint = varPersistentHint 
_B._bopersistenthint=_varpersistenthint;
// End Sub
};

// [2420] public Sub getPersistentHint() As Boolean 
_B.getpersistenthint=function() {
// [2421]  Return boPersistentHint 
return _B._bopersistenthint;
// End Sub
};

// [2425] public Sub setPlaceholder(varPlaceholder As String) 
_B.setplaceholder=function(_varplaceholder) {
// [2426]  AddAttr( {911} , varPlaceholder) 
_B.addattr("placeholder",_varplaceholder,_B);
// [2427]  stPlaceholder = varPlaceholder 
_B._stplaceholder=_varplaceholder;
// End Sub
};

// [2431] public Sub getPlaceholder() As String 
_B.getplaceholder=function() {
// [2432]  Return stPlaceholder 
return _B._stplaceholder;
// End Sub
};

// [2436] public Sub setPrependIcon(varPrependIcon As String) 
_B.setprependicon=function(_varprependicon) {
// [2437]  AddAttr( {912} , varPrependIcon) 
_B.addattr("prepend-icon",_varprependicon,_B);
// [2438]  stPrependIcon = varPrependIcon 
_B._stprependicon=_varprependicon;
// End Sub
};

// [2442] public Sub getPrependIcon() As String 
_B.getprependicon=function() {
// [2443]  Return stPrependIcon 
return _B._stprependicon;
// End Sub
};

// [2447] public Sub setPrependInnerIcon(varPrependIcon As String) 
_B.setprependinnericon=function(_varprependicon) {
// [2448]  AddAttr( {913} , varPrependIcon) 
_B.addattr("prepend-inner-icon",_varprependicon,_B);
// [2449]  stPrependInnerIcon = varPrependIcon 
_B._stprependinnericon=_varprependicon;
// End Sub
};

// [2453] public Sub getPrependInnerIcon() As String 
_B.getprependinnericon=function() {
// [2454]  Return stPrependInnerIcon 
return _B._stprependinnericon;
// End Sub
};

// [2458] public Sub setReadonly(varReadonly As String) 
_B.setreadonly=function(_varreadonly) {
// [2459]  AddAttr( {914} , varReadonly) 
_B.addattr("readonly",_varreadonly,_B);
// [2460]  stReadonly = varReadonly 
_B._streadonly=_varreadonly;
// End Sub
};

// [2464] public Sub getReadonly() As String 
_B.getreadonly=function() {
// [2465]  Return stReadonly 
return _B._streadonly;
// End Sub
};

// [2469] public Sub setRequired(varRequired As String) 
_B.setrequired=function(_varrequired) {
// [2470]  AddAttr( {915} , varRequired) 
_B.addattr("required",_varrequired,_B);
// [2471]  stRequired = varRequired 
_B._strequired=_varrequired;
// End Sub
};

// [2475] public Sub getRequired() As String 
_B.getrequired=function() {
// [2476]  Return stRequired 
return _B._strequired;
// End Sub
};

// [2481] public Sub setActiveClass(varActiveClass As String) 
_B.setactiveclass=function(_varactiveclass) {
// [2482]  AddAttr( {916} , varActiveClass) 
_B.addattr("active-class",_varactiveclass,_B);
// [2483]  stActiveClass = varActiveClass 
_B._stactiveclass=_varactiveclass;
// End Sub
};

// [2487] public Sub getActiveClass() As String 
_B.getactiveclass=function() {
// [2488]  Return stActiveClass 
return _B._stactiveclass;
// End Sub
};

// [2494] public Sub setRounded(varRounded As Boolean) 
_B.setrounded=function(_varrounded) {
// [2495]  AddAttrOnCondition( {917} , varRounded, True) 
_B.addattroncondition(":rounded",_varrounded,true,_B);
// [2496]  boRounded = varRounded 
_B._borounded=_varrounded;
// End Sub
};

// [2500] public Sub getRounded() As Boolean 
_B.getrounded=function() {
// [2501]  Return boRounded 
return _B._borounded;
// End Sub
};

// [2504] public Sub setShowGridDesign(varRounded As Boolean) 
_B.setshowgriddesign=function(_varrounded) {
// [2505]  bShowGridDesign = varRounded 
_B._bshowgriddesign=_varrounded;
// End Sub
};

// [2509] public Sub getShowGridDesign() As Boolean 
_B.getshowgriddesign=function() {
// [2510]  Return bShowGridDesign 
return _B._bshowgriddesign;
// End Sub
};

// [2514] public Sub setShaped(varShaped As Boolean) 
_B.setshaped=function(_varshaped) {
// [2515]  AddAttrOnCondition( {918} , varShaped, True) 
_B.addattroncondition(":shaped",_varshaped,true,_B);
// [2516]  boShaped = varShaped 
_B._boshaped=_varshaped;
// End Sub
};

// [2520] public Sub getShaped() As Boolean 
_B.getshaped=function() {
// [2521]  Return boShaped 
return _B._boshaped;
// End Sub
};

// [2525] public Sub setSingleLine(varSingleLine As Boolean) 
_B.setsingleline=function(_varsingleline) {
// [2526]  AddAttrOnCondition( {919} , varSingleLine, True) 
_B.addattroncondition(":single-line",_varsingleline,true,_B);
// [2527]  boSingleLine = varSingleLine 
_B._bosingleline=_varsingleline;
// End Sub
};

// [2531] public Sub getSingleLine() As Boolean 
_B.getsingleline=function() {
// [2532]  Return boSingleLine 
return _B._bosingleline;
// End Sub
};

// [2535] public Sub setAlign(varAlign As String) 
_B.setalign=function(_varalign) {
// [2536]  AddAttr( {920} , varAlign) 
_B.addattr("align",_varalign,_B);
// [2537]  stAlign = varAlign 
_B._stalign=_varalign;
// End Sub
};

// [2540] public Sub getAlign() As Boolean 
_B.getalign=function() {
// [2541]  Return stAlign 
return _B._stalign;
// End Sub
};

// [2544] public Sub setJustify(varJustify As String) 
_B.setjustify=function(_varjustify) {
// [2545]  AddAttr( {921} , varJustify) 
_B.addattr("justify",_varjustify,_B);
// [2546]  stJustify = varJustify 
_B._stjustify=_varjustify;
// End Sub
};

// [2549] public Sub getJustify() As Boolean 
_B.getjustify=function() {
// [2550]  Return stJustify 
return _B._stjustify;
// End Sub
};

// [2554] public Sub setSolo(varSolo As Boolean) 
_B.setsolo=function(_varsolo) {
// [2555]  AddAttrOnCondition( {922} , varSolo, True) 
_B.addattroncondition(":solo",_varsolo,true,_B);
// [2556]  boSolo = varSolo 
_B._bosolo=_varsolo;
// End Sub
};

// [2560] public Sub getSolo() As Boolean 
_B.getsolo=function() {
// [2561]  Return boSolo 
return _B._bosolo;
// End Sub
};

// [2565] Sub BuildGrid 
_B.buildgrid=function() {
var _sb,_rowcnt,_rowtot,_currentrow,_strrow,_sout;
// [2566]  LastRow = 0 
_B._lastrow=0;
// [2567]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2568]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2570]  Dim rowCnt As Int = 0 
_rowcnt=0;
// [2571]  Dim rowTot As Int = GridRows.Size - 1 
_rowtot=Object.keys(_B._gridrows).length-1;
// [2572]  For rowCnt = 0 To rowTot 
for (_rowcnt=0;_rowcnt<=_rowtot;_rowcnt++) {
// [2574]  Dim currentRow As VueGridRow = GridRows.GetValueAt(rowCnt) 
_currentrow=banano_getB4JValueAt(_B._gridrows,_rowcnt);
// [2575]  Dim strRow As String = BuildRow(currentRow) 
_strrow=_B.buildrow(_currentrow,_B);
// [2576]  sb.Append(strRow) 
_sb.append(_strrow);
// [2577]  Next 
}
// [2578]  Dim sout As String = sb.tostring 
_sout=_sb.toString();
// [2579]  If mElement <> Null Then 
if (_B._melement!=null) {
// [2580]  mElement.Append(sout) 
_B._melement.append(_sout);
// [2581]  Else 
} else {
// [2582]  sbText.Append(sout) 
_B._sbtext.append(_sout);
// [2583]  End If 
}
// End Sub
};

// [2586] private Sub BuildRowClass(xrow As VueGridRow) As String 
_B.buildrowclass=function(_xrow) {
var _sb;
// [2587]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2588]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2590]  sb.Append(BuildMargins(xrow.ma, xrow.mx, xrow.my, xrow.mt, xrow.mb, xrow.ml, xrow.mr)) 
_sb.append(_B.buildmargins(_xrow._ma,_xrow._mx,_xrow._my,_xrow._mt,_xrow._mb,_xrow._ml,_xrow._mr,_B));
// [2592]  sb.Append(BuildPadding(xrow.pa, xrow.px, xrow.py, xrow.pt, xrow.pb, xrow.pl, xrow.pr)) 
_sb.append(_B.buildpadding(_xrow._pa,_xrow._px,_xrow._py,_xrow._pt,_xrow._pb,_xrow._pl,_xrow._pr,_B));
// [2593]  Return sb.tostring.trim 
return _sb.toString().trim();
// End Sub
};

// [2596] private Sub BuildMargins(ma As String, mx As String, my As String, mt As String, mb As String, ml As String, mr As String) As String 
_B.buildmargins=function(_ma,_mx,_my,_mt,_mb,_ml,_mr) {
var _sb,_sout;
// [2597]  mt = mt.Trim 
_mt=_mt.trim();
// [2598]  mb = mb.Trim 
_mb=_mb.trim();
// [2599]  ml = ml.Trim 
_ml=_ml.trim();
// [2600]  mr = mr.Trim 
_mr=_mr.trim();
// [2601]  ma = ma.Trim 
_ma=_ma.trim();
// [2602]  mx = mx.trim 
_mx=_mx.trim();
// [2603]  my = my.trim 
_my=_my.trim();
// [2605]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2606]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2607]  If ma <> {923} Then sb.Append( {59} ) 
if (_ma!="") {_sb.append("ma-" + _ma + " ");}
// [2608]  If mx <> {924} Then sb.Append( {60} ) 
if (_mx!="") {_sb.append("mx-" + _mx + " ");}
// [2609]  If my <> {925} Then sb.Append( {61} ) 
if (_my!="") {_sb.append("my-" + _my + " ");}
// [2610]  If mt <> {926} Then sb.Append( {62} ) 
if (_mt!="") {_sb.append("mt-" + _mt + " ");}
// [2611]  If mb <> {927} Then sb.Append( {63} ) 
if (_mb!="") {_sb.append("mb-" + _mb + " ");}
// [2612]  If ml <> {928} Then sb.Append( {64} ) 
if (_ml!="") {_sb.append("ml-" + _ml + " ");}
// [2613]  If mr <> {929} Then sb.Append( {65} ) 
if (_mr!="") {_sb.append("mr-" + _mr + " ");}
// [2614]  Dim sout As String = sb.ToString 
_sout=_sb.toString();
// [2615]  sout = sout.trim 
_sout=_sout.trim();
// [2616]  Return sout 
return _sout;
// End Sub
};

// [2619] private Sub BuildPadding(pa As String, px As String, py As String, pt As String, pb As String, pl As String, pr As String) As String 
_B.buildpadding=function(_pa,_px,_py,_pt,_pb,_pl,_pr) {
var _sb,_sout;
// [2620]  pt = pt.Trim 
_pt=_pt.trim();
// [2621]  pb = pb.Trim 
_pb=_pb.trim();
// [2622]  pl = pl.Trim 
_pl=_pl.trim();
// [2623]  pr = pr.Trim 
_pr=_pr.trim();
// [2624]  pa = pa.Trim 
_pa=_pa.trim();
// [2625]  px = px.trim 
_px=_px.trim();
// [2626]  py = py.trim 
_py=_py.trim();
// [2628]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2629]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2630]  If pa <> {930} Then sb.Append( {66} ) 
if (_pa!="") {_sb.append("pa-" + _pa + " ");}
// [2631]  If px <> {931} Then sb.Append( {67} ) 
if (_px!="") {_sb.append("px-" + _px + " ");}
// [2632]  If py <> {932} Then sb.Append( {68} ) 
if (_py!="") {_sb.append("py-" + _py + " ");}
// [2633]  If pt <> {933} Then sb.Append( {69} ) 
if (_pt!="") {_sb.append("pt-" + _pt + " ");}
// [2634]  If pb <> {934} Then sb.Append( {70} ) 
if (_pb!="") {_sb.append("pb-" + _pb + " ");}
// [2635]  If pl <> {935} Then sb.Append( {71} ) 
if (_pl!="") {_sb.append("pl-" + _pl + " ");}
// [2636]  If pr <> {936} Then sb.Append( {72} ) 
if (_pr!="") {_sb.append("pr-" + _pr + " ");}
// [2637]  Dim sout As String = sb.ToString 
_sout=_sb.toString();
// [2638]  sout = sout.trim 
_sout=_sout.trim();
// [2639]  Return sout 
return _sout;
// End Sub
};

// [2642] private Sub BuildSpans(col As VueGridColumn) As String 
_B.buildspans=function(_col) {
var _sb,_sout;
// [2643]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2644]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2645]  If col.sm <> {937} Then sb.Append( {73} ) 
if (_col._sm!="") {_sb.append("sm=\"" + _col._sm + "\" ");}
// [2646]  If col.md <> {938} Then sb.Append( {74} ) 
if (_col._md!="") {_sb.append("md=\"" + _col._md + "\" ");}
// [2647]  If col.lg <> {939} Then sb.Append( {75} ) 
if (_col._lg!="") {_sb.append("lg=\"" + _col._lg + "\" ");}
// [2648]  If col.xl <> {940} Then sb.Append( {76} ) 
if (_col._xl!="") {_sb.append("xl=\"" + _col._xl + "\" ");}
// [2649]  Dim sout As String = sb.ToString 
_sout=_sb.toString();
// [2650]  sout = sout.trim 
_sout=_sout.trim();
// [2651]  Return sout 
return _sout;
// End Sub
};

// [2654] private Sub BuildOffsets(col As VueGridColumn) As String 
_B.buildoffsets=function(_col) {
var _sb,_sout;
// [2655]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2656]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2657]  If col.ofsm <> {941} Then sb.Append( {77} ) 
if (_col._ofsm!="") {_sb.append("offset-sm=\"" + _col._ofsm + "\" ");}
// [2658]  If col.ofmd <> {942} Then sb.Append( {78} ) 
if (_col._ofmd!="") {_sb.append("offset-md=\"" + _col._ofmd + "\" ");}
// [2659]  If col.oflg <> {943} Then sb.Append( {79} ) 
if (_col._oflg!="") {_sb.append("offset-lg=\"" + _col._oflg + "\" ");}
// [2660]  If col.ofxl <> {944} Then sb.Append( {80} ) 
if (_col._ofxl!="") {_sb.append("offset-xl=\"" + _col._ofxl + "\" ");}
// [2661]  Dim sout As String = sb.ToString 
_sout=_sb.toString();
// [2662]  sout = sout.trim 
_sout=_sout.trim();
// [2663]  Return sout 
return _sout;
// End Sub
};

// [2667] Sub Row(RowPos As Int) As BANanoElement 
_B.row=function(_rowpos) {
var _rckey,_el;
// [2668]  Dim rcKey As String = {81} 
_rckey="" + _B._mname + "R" + _rowpos + "";
// [2669]  rcKey = rcKey.tolowercase 
_rckey=_rckey.toLowerCase();
// [2670]  Dim el As BANanoElement 
_el=null;
// [2671]  el.Initialize( {82} ) 
_el=u("#" + _rckey + "");
// [2672]  Return el 
return _el;
// End Sub
};

// [2676] Sub Matrix(xRow As Int, column As Int) As BANanoElement 
_B.matrix=function(_xrow,_column) {
var _rckey,_el;
// [2677]  Dim rcKey As String = {83} 
_rckey="" + _B._mname + "R" + _xrow + "C" + _column + "";
// [2678]  rcKey = rcKey.tolowercase 
_rckey=_rckey.toLowerCase();
// [2679]  Dim el As BANanoElement 
_el=null;
// [2680]  el.Initialize( {84} ) 
_el=u("#" + _rckey + "");
// [2681]  Return el 
return _el;
// End Sub
};

// [2685] Sub MatrixID(xRow As Int, col As Int) As String 
_B.matrixid=function(_xrow,_col) {
// [2686]  Return Matrix(xRow, col).name 
return _B.matrix(_xrow,_col,_B).attr('id');
// End Sub
};

// [2690] private Sub BuildRow(xRow As VueGridRow) As String 
_B.buildrow=function(_xrow) {
var _rowtot,_rowcnt,_sb,_rowkey,_cols,_colcnt,_coltot,_lastcolumn,_column,_colcnt1,_coltot1,_cellkey,_strshow,_sbstyle,_sbcol;
// [2692]  Dim rowTot As Int = xRow.Rows 
_rowtot=_xrow._rows;
// [2693]  Dim rowCnt As Int 
_rowcnt=0;
// [2694]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2695]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2697]  For rowCnt = 1 To rowTot 
for (_rowcnt=1;_rowcnt<=_rowtot;_rowcnt++) {
// [2698]  LastRow = LastRow + 1 
_B._lastrow=_B._lastrow+1;
// [2699]  Dim rowKey As String = {85} 
_rowkey="" + _B._mname + "R" + _B._lastrow + "";
// [2700]  rowKey = rowKey.tolowercase 
_rowkey=_rowkey.toLowerCase();
// [2701]  sb.Append( {86} ) 
_sb.append("<v-row class=\"" + _B.buildrowclass(_xrow,_B) + "\" id=\"" + _rowkey + "\">");
// [2703]  Dim cols As List = xRow.Columns 
_cols=_xrow._columns;
// [2705]  Dim colCnt As Int = 0 
_colcnt=0;
// [2706]  Dim colTot As Int = cols.Size - 1 
_coltot=_cols.length-1;
// [2708]  Dim LastColumn As Int = 0 
_lastcolumn=0;
// [2709]  For colCnt = 0 To colTot 
for (_colcnt=0;_colcnt<=_coltot;_colcnt++) {
// [2711]  Dim column As VueGridColumn = cols.Get(colCnt) 
_column=_cols[_colcnt];
// [2712]  Dim colCnt1 As Int = 0 
_colcnt1=0;
// [2713]  Dim colTot1 As Int = column.Columns 
_coltot1=_column._columns;
// [2714]  For colCnt1 = 1 To colTot1 
for (_colcnt1=1;_colcnt1<=_coltot1;_colcnt1++) {
// [2716]  LastColumn = LastColumn + 1 
_lastcolumn=_lastcolumn+1;
// [2717]  Dim cellKey As String = {87} 
_cellkey="" + _rowkey + "C" + _lastcolumn + "";
// [2718]  cellKey = cellKey.tolowercase 
_cellkey=_cellkey.toLowerCase();
// [2720]  Dim strShow As String = {945} 
_strshow="";
// [2721]  Dim sbStyle As StringBuilder 
_sbstyle=new StringBuilder();
// [2722]  sbStyle.Initialize 
_sbstyle.init();
_sbstyle.isinitialized=true;
// [2723]  If bShowGridDesign Then 
if (_B._bshowgriddesign) {
// [2724]  strShow = cellKey 
_strshow=_cellkey;
// [2725]  sbStyle.append( {88} ) 
_sbstyle.append("style=\"border-width:2px;border-style:dotted;border-color:grey;\"");
// [2726]  End If 
}
// [2728]  Dim sbCol As StringBuilder 
_sbcol=new StringBuilder();
// [2729]  sbCol.Initialize 
_sbcol.init();
_sbcol.isinitialized=true;
// [2730]  sbCol.Append( {89} ) 
_sbcol.append("<v-col id=\"" + _cellkey + "\" " + _sbstyle.toString() + "");
// [2731]  sbCol.Append(BuildColumnClass(column)) 
_sbcol.append(_B.buildcolumnclass(_column,_B));
// [2732]  sbCol.Append( {946} ) 
_sbcol.append(" ");
// [2733]  sbCol.Append(BuildSpans(column)) 
_sbcol.append(_B.buildspans(_column,_B));
// [2734]  sbCol.append( {947} ) 
_sbcol.append(" ");
// [2735]  sbCol.Append(BuildOffsets(column)) 
_sbcol.append(_B.buildoffsets(_column,_B));
// [2736]  sbCol.Append( {90} ) 
_sbcol.append(">" + _strshow + "</v-col>");
// [2737]  sb.Append(sbCol.tostring) 
_sb.append(_sbcol.toString());
// [2738]  Next 
}
// [2739]  Next 
}
// [2740]  sb.Append( {948} ) 
_sb.append("</v-row>");
// [2741]  Next 
}
// [2742]  Return sb.tostring 
return _sb.toString();
// End Sub
};

// [2746] private Sub BuildColumnClass(col As VueGridColumn) As String 
_B.buildcolumnclass=function(_col) {
var _sb,_sout,_sbout;
// [2747]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [2748]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [2750]  sb.Append(BuildMargins(col.ma, col.mx, col.my, col.mt, col.mb, col.ml, col.mr)) 
_sb.append(_B.buildmargins(_col._ma,_col._mx,_col._my,_col._mt,_col._mb,_col._ml,_col._mr,_B));
// [2752]  sb.Append(BuildPadding(col.pa, col.px, col.py, col.pt, col.pb, col.pl, col.pr)) 
_sb.append(_B.buildpadding(_col._pa,_col._px,_col._py,_col._pt,_col._pb,_col._pl,_col._pr,_B));
// [2753]  Dim sout As String = sb.ToString 
_sout=_sb.toString();
// [2754]  sout = sout.trim 
_sout=_sout.trim();
// [2755]  Dim sbout As StringBuilder 
_sbout=new StringBuilder();
// [2756]  sbout.Initialize 
_sbout.init();
_sbout.isinitialized=true;
// [2757]  If sout <> {949} Then 
if (_sout!="") {
// [2758]  sbout.Append( {91} ) 
_sbout.append("class=\"" + _sout + "\"");
// [2759]  End If 
}
// [2760]  Return sbout.tostring 
return _sbout.toString();
// End Sub
};

// [2764] Sub AddRows(iRows As Int) As VueElement 
_B.addrows=function(_irows) {
var _nrow,_rowkey;
// [2766]  If GridRows.IsInitialized = False Then GridRows.Initialize 
if (true==false) {_B._gridrows={};}
// [2768]  LastRow = GridRows.size 
_B._lastrow=Object.keys(_B._gridrows).length;
// [2770]  Dim nRow As VueGridRow 
_nrow= new banano_bananovuetifyad3_vuegridrow();
// [2771]  nRow.Initialize 
_nrow.initialize();
// [2772]  nRow.Rows = iRows 
_nrow._rows=_irows;
// [2773]  nRow.Columns.Initialize 
_nrow._columns.length=0;
// [2774]  nRow.mt = {950} 
_nrow._mt="";
// [2775]  nRow.mb = {951} 
_nrow._mb="";
// [2776]  nRow.mr = {952} 
_nrow._mr="";
// [2777]  nRow.ml = {953} 
_nrow._ml="";
// [2778]  nRow.pt = {954} 
_nrow._pt="";
// [2779]  nRow.pb = {955} 
_nrow._pb="";
// [2780]  nRow.pr = {956} 
_nrow._pr="";
// [2781]  nRow.pl = {957} 
_nrow._pl="";
// [2784]  Dim rowKey As String = {92} 
_rowkey="R" + _B._lastrow + "";
// [2785]  rowKey = rowKey.tolowercase 
_rowkey=_rowkey.toLowerCase();
// [2787]  GridRows.Put(rowKey, nRow) 
_B._gridrows[_rowkey]=_nrow;
// [2788]  Return Me 
return _B;
// End Sub
};

// [2791] Sub AddColumns(iColumns As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement 
_B.addcolumns=function(_icolumns,_sm,_md,_lg,_xl) {
// [2792]  AddColumnsOS(iColumns, 0,0,0,0,sm,md,lg,xl) 
_B.addcolumnsos(_icolumns,0,0,0,0,_sm,_md,_lg,_xl,_B);
// [2793]  Return Me 
return _B;
// End Sub
};

// [2797] Sub AddColumnsOS(iColumns As Int, osm As Int, omd As Int, olg As Int, oxl As Int, sm As Int, md As Int, lg As Int, xl As Int) As VueElement 
_B.addcolumnsos=function(_icolumns,_osm,_omd,_olg,_oxl,_sm,_md,_lg,_xl) {
var _ncol,_rowkey,_oldrow;
// [2798]  Dim nCol As VueGridColumn 
_ncol= new banano_bananovuetifyad3_vuegridcolumn();
// [2799]  nCol.Initialize 
_ncol.initialize();
// [2800]  nCol.Columns = iColumns 
_ncol._columns=_icolumns;
// [2801]  nCol.lg = lg 
_ncol._lg=_lg;
// [2802]  nCol.md = md 
_ncol._md=_md;
// [2803]  nCol.sm = sm 
_ncol._sm=_sm;
// [2804]  nCol.xl = xl 
_ncol._xl=_xl;
// [2805]  nCol.oflg = olg 
_ncol._oflg=_olg;
// [2806]  nCol.ofmd = omd 
_ncol._ofmd=_omd;
// [2807]  nCol.ofsm = osm 
_ncol._ofsm=_osm;
// [2808]  nCol.ofxl = oxl 
_ncol._ofxl=_oxl;
// [2809]  nCol.mt = {958} 
_ncol._mt="";
// [2810]  nCol.mb = {959} 
_ncol._mb="";
// [2811]  nCol.mr = {960} 
_ncol._mr="";
// [2812]  nCol.ml = {961} 
_ncol._ml="";
// [2813]  nCol.ma = {962} 
_ncol._ma="";
// [2814]  nCol.mx = {963} 
_ncol._mx="";
// [2815]  nCol.my = {964} 
_ncol._my="";
// [2817]  nCol.pt = {965} 
_ncol._pt="";
// [2818]  nCol.pb = {966} 
_ncol._pb="";
// [2819]  nCol.pr = {967} 
_ncol._pr="";
// [2820]  nCol.pl = {968} 
_ncol._pl="";
// [2821]  nCol.pa = {969} 
_ncol._pa="";
// [2822]  nCol.px = {970} 
_ncol._px="";
// [2823]  nCol.py = {971} 
_ncol._py="";
// [2826]  Dim rowkey As String = {93} 
_rowkey="R" + _B._lastrow + "";
// [2827]  rowkey = rowkey.tolowercase 
_rowkey=_rowkey.toLowerCase();
// [2829]  If GridRows.ContainsKey(rowkey) Then 
if ((_rowkey in _B._gridrows)) {
// [2831]  Dim oldRow As VueGridRow = GridRows.Get(rowkey) 
_oldrow=_B._gridrows[_rowkey];
// [2833]  oldRow.Columns.Add(nCol) 
_oldrow._columns.push(_ncol);
// [2835]  GridRows.Put(rowkey,oldRow) 
_B._gridrows[_rowkey]=_oldrow;
// [2836]  End If 
}
// [2837]  Return Me 
return _B;
// End Sub
};

// [2841] Sub AddColumnsOSMP(iColumns As Int, osm As Int, omd As Int, olg As Int, oxl As Int, sm As Int, md As Int, lg As Int, xl As Int, pa As Int, px As Int, py As Int, pt As Int, pb As Int, pl As Int, pr As Int, ma As Int, mx As Int, my As Int, mt As Int, mb As Int, ml As Int, mr As Int) As VueElement 
_B.addcolumnsosmp=function(_icolumns,_osm,_omd,_olg,_oxl,_sm,_md,_lg,_xl,_pa,_px,_py,_pt,_pb,_pl,_pr,_ma,_mx,_my,_mt,_mb,_ml,_mr) {
var _ncol,_rowkey,_oldrow;
// [2843]  Dim nCol As VueGridColumn 
_ncol= new banano_bananovuetifyad3_vuegridcolumn();
// [2844]  nCol.Initialize 
_ncol.initialize();
// [2845]  nCol.Columns = iColumns 
_ncol._columns=_icolumns;
// [2846]  nCol.lg = lg 
_ncol._lg=_lg;
// [2847]  nCol.md = md 
_ncol._md=_md;
// [2848]  nCol.sm = sm 
_ncol._sm=_sm;
// [2849]  nCol.xl = xl 
_ncol._xl=_xl;
// [2850]  nCol.oflg = olg 
_ncol._oflg=_olg;
// [2851]  nCol.ofmd = omd 
_ncol._ofmd=_omd;
// [2852]  nCol.ofsm = osm 
_ncol._ofsm=_osm;
// [2853]  nCol.ofxl = oxl 
_ncol._ofxl=_oxl;
// [2855]  nCol.ma = ma 
_ncol._ma=_ma;
// [2856]  nCol.mx = mx 
_ncol._mx=_mx;
// [2857]  nCol.my = my 
_ncol._my=_my;
// [2858]  nCol.mt = mt 
_ncol._mt=_mt;
// [2859]  nCol.mb = mb 
_ncol._mb=_mb;
// [2860]  nCol.mr = mr 
_ncol._mr=_mr;
// [2861]  nCol.ml = ml 
_ncol._ml=_ml;
// [2863]  nCol.pa = pa 
_ncol._pa=_pa;
// [2864]  nCol.px = px 
_ncol._px=_px;
// [2865]  nCol.py = py 
_ncol._py=_py;
// [2866]  nCol.pt = pt 
_ncol._pt=_pt;
// [2867]  nCol.pb = pb 
_ncol._pb=_pb;
// [2868]  nCol.pr = pr 
_ncol._pr=_pr;
// [2869]  nCol.pl = pl 
_ncol._pl=_pl;
// [2872]  Dim rowkey As String = {94} 
_rowkey="R" + _B._lastrow + "";
// [2873]  rowkey = rowkey.tolowercase 
_rowkey=_rowkey.toLowerCase();
// [2875]  If GridRows.ContainsKey(rowkey) Then 
if ((_rowkey in _B._gridrows)) {
// [2877]  Dim oldRow As VueGridRow = GridRows.Get(rowkey) 
_oldrow=_B._gridrows[_rowkey];
// [2879]  oldRow.Columns.Add(nCol) 
_oldrow._columns.push(_ncol);
// [2881]  GridRows.Put(rowkey,oldRow) 
_B._gridrows[_rowkey]=_oldrow;
// [2882]  End If 
}
// [2883]  Return Me 
return _B;
// End Sub
};

// [2886] Sub AddColumns3x4 As VueElement 
_B.addcolumns3x4=function() {
// [2887]  AddColumns(3, {972} , {973} , {974} , {975} ) 
_B.addcolumns(3,"12","4","4","4",_B);
// [2888]  Return Me 
return _B;
// End Sub
};

// [2891] Sub AddColumns4x3 As VueElement 
_B.addcolumns4x3=function() {
// [2892]  AddColumns(4, {976} , {977} , {978} , {979} ) 
_B.addcolumns(4,"12","3","3","3",_B);
// [2893]  Return Me 
return _B;
// End Sub
};

// [2896] Sub AddColumns2x6 As VueElement 
_B.addcolumns2x6=function() {
// [2897]  AddColumns(2, {980} , {981} , {982} , {983} ) 
_B.addcolumns(2,"12","6","6","6",_B);
// [2898]  Return Me 
return _B;
// End Sub
};

// [2901] Sub AddColumns6x2 As VueElement 
_B.addcolumns6x2=function() {
// [2902]  AddColumns(6, {984} , {985} , {986} , {987} ) 
_B.addcolumns(6,"12","2","2","2",_B);
// [2903]  Return Me 
return _B;
// End Sub
};

// [2906] Sub AddColumns12x1 As VueElement 
_B.addcolumns12x1=function() {
// [2907]  AddColumns(12, {988} , {989} , {990} , {991} ) 
_B.addcolumns(12,"12","1","1","1",_B);
// [2908]  Return Me 
return _B;
// End Sub
};

// [2911] Sub AddColumns8p4 As VueElement 
_B.addcolumns8p4=function() {
// [2912]  AddColumns(1, {992} , {993} , {994} , {995} ).AddColumns(1, {996} , {997} , {998} , {999} ) 
_B.addcolumns(1,"12","8","8","8",_B).addcolumns(1,"12","4","4","4");
// [2913]  Return Me 
return _B;
// End Sub
};

// [2916] Sub AddColumns4p8 As VueElement 
_B.addcolumns4p8=function() {
// [2917]  AddColumns(1, {1000} , {1001} , {1002} , {1003} ).AddColumns(1, {1004} , {1005} , {1006} , {1007} ) 
_B.addcolumns(1,"12","4","4","4",_B).addcolumns(1,"12","8","8","8");
// [2918]  Return Me 
return _B;
// End Sub
};

// [2921] Sub AddColumns1p11 As VueElement 
_B.addcolumns1p11=function() {
// [2922]  AddColumns(1, {1008} , {1009} , {1010} , {1011} ).AddColumns(1, {1012} , {1013} , {1014} , {1015} ) 
_B.addcolumns(1,"12","1","1","1",_B).addcolumns(1,"12","11","11","11");
// [2923]  Return Me 
return _B;
// End Sub
};

// [2926] Sub AddColumns11p1 As VueElement 
_B.addcolumns11p1=function() {
// [2927]  AddColumns(1, {1016} , {1017} , {1018} , {1019} ).AddColumns(1, {1020} , {1021} , {1022} , {1023} ) 
_B.addcolumns(1,"12","11","11","11",_B).addcolumns(1,"12","1","1","1");
// [2928]  Return Me 
return _B;
// End Sub
};

// [2931] Sub AddColumns2p10 As VueElement 
_B.addcolumns2p10=function() {
// [2932]  AddColumns(1, {1024} , {1025} , {1026} , {1027} ).AddColumns(1, {1028} , {1029} , {1030} , {1031} ) 
_B.addcolumns(1,"12","2","2","2",_B).addcolumns(1,"12","10","10","10");
// [2933]  Return Me 
return _B;
// End Sub
};

// [2936] Sub AddColumns10p2 As VueElement 
_B.addcolumns10p2=function() {
// [2937]  AddColumns(1, {1032} , {1033} , {1034} , {1035} ).AddColumns(1, {1036} , {1037} , {1038} , {1039} ) 
_B.addcolumns(1,"12","10","10","10",_B).addcolumns(1,"12","2","2","2");
// [2938]  Return Me 
return _B;
// End Sub
};

// [2941] Sub AddColumns3p9 As VueElement 
_B.addcolumns3p9=function() {
// [2942]  AddColumns(1, {1040} , {1041} , {1042} , {1043} ).AddColumns(1, {1044} , {1045} , {1046} , {1047} ) 
_B.addcolumns(1,"12","3","3","3",_B).addcolumns(1,"12","9","9","9");
// [2943]  Return Me 
return _B;
// End Sub
};

// [2946] Sub AddColumns9p3 As VueElement 
_B.addcolumns9p3=function() {
// [2947]  AddColumns(1, {1048} , {1049} , {1050} , {1051} ).AddColumns(1, {1052} , {1053} , {1054} , {1055} ) 
_B.addcolumns(1,"12","9","9","9",_B).addcolumns(1,"12","3","3","3");
// [2948]  Return Me 
return _B;
// End Sub
};

// [2951] Sub AddColumns7p5 As VueElement 
_B.addcolumns7p5=function() {
// [2952]  AddColumns(1, {1056} , {1057} , {1058} , {1059} ).AddColumns(1, {1060} , {1061} , {1062} , {1063} ) 
_B.addcolumns(1,"12","7","7","7",_B).addcolumns(1,"12","5","5","5");
// [2953]  Return Me 
return _B;
// End Sub
};

// [2956] Sub AddColumns5p7 As VueElement 
_B.addcolumns5p7=function() {
// [2957]  AddColumns(1, {1064} , {1065} , {1066} , {1067} ).AddColumns(1, {1068} , {1069} , {1070} , {1071} ) 
_B.addcolumns(1,"12","5","5","5",_B).addcolumns(1,"12","7","7","7");
// [2958]  Return Me 
return _B;
// End Sub
};

// [2961] Sub AddColumns12 As VueElement 
_B.addcolumns12=function() {
// [2962]  AddColumns(1, {1072} , {1073} , {1074} , {1075} ) 
_B.addcolumns(1,"12","12","12","12",_B);
// [2963]  Return Me 
return _B;
// End Sub
};

// [2966] Sub AddColumns6 As VueElement 
_B.addcolumns6=function() {
// [2967]  AddColumns(1, {1076} , {1077} , {1078} , {1079} ) 
_B.addcolumns(1,"12","6","6","6",_B);
// [2968]  Return Me 
return _B;
// End Sub
};

// [2971] Sub AddColumns2 As VueElement 
_B.addcolumns2=function() {
// [2972]  AddColumns(1, {1080} , {1081} , {1082} , {1083} ) 
_B.addcolumns(1,"12","2","2","2",_B);
// [2973]  Return Me 
return _B;
// End Sub
};

// [2976] Sub AddColumns1 As VueElement 
_B.addcolumns1=function() {
// [2977]  AddColumns(1, {1084} , {1085} , {1086} , {1087} ) 
_B.addcolumns(1,"12","1","1","1",_B);
// [2978]  Return Me 
return _B;
// End Sub
};

// [2981] Sub AddColumns3 As VueElement 
_B.addcolumns3=function() {
// [2982]  AddColumns(1, {1088} , {1089} , {1090} , {1091} ) 
_B.addcolumns(1,"12","3","3","3",_B);
// [2983]  Return Me 
return _B;
// End Sub
};

// [2986] Sub AddColumns4 As VueElement 
_B.addcolumns4=function() {
// [2987]  AddColumns(1, {1092} , {1093} , {1094} , {1095} ) 
_B.addcolumns(1,"12","4","4","4",_B);
// [2988]  Return Me 
return _B;
// End Sub
};

// [2991] Sub AddColumns5 As VueElement 
_B.addcolumns5=function() {
// [2992]  AddColumns(1, {1096} , {1097} , {1098} , {1099} ) 
_B.addcolumns(1,"12","5","5","5",_B);
// [2993]  Return Me 
return _B;
// End Sub
};

// [2996] Sub AddColumns7 As VueElement 
_B.addcolumns7=function() {
// [2997]  AddColumns(1, {1100} , {1101} , {1102} , {1103} ) 
_B.addcolumns(1,"12","7","7","7",_B);
// [2998]  Return Me 
return _B;
// End Sub
};

// [3001] Sub AddColumns8 As VueElement 
_B.addcolumns8=function() {
// [3002]  AddColumns(1, {1104} , {1105} , {1106} , {1107} ) 
_B.addcolumns(1,"12","8","8","8",_B);
// [3003]  Return Me 
return _B;
// End Sub
};

// [3006] Sub AddColumns9 As VueElement 
_B.addcolumns9=function() {
// [3007]  AddColumns(1, {1108} , {1109} , {1110} , {1111} ) 
_B.addcolumns(1,"12","9","9","9",_B);
// [3008]  Return Me 
return _B;
// End Sub
};

// [3011] Sub AddColumns10 As VueElement 
_B.addcolumns10=function() {
// [3012]  AddColumns(1, {1112} , {1113} , {1114} , {1115} ) 
_B.addcolumns(1,"12","10","10","10",_B);
// [3013]  Return Me 
return _B;
// End Sub
};

// [3016] Sub AddColumns11 As VueElement 
_B.addcolumns11=function() {
// [3017]  AddColumns(1, {1116} , {1117} , {1118} , {1119} ) 
_B.addcolumns(1,"12","11","11","11",_B);
// [3018]  Return Me 
return _B;
// End Sub
};

// [3021] Sub IsValidID(idName As String) As Boolean 
_B.isvalidid=function(_idname) {
var _slen,_i,_mout;
// [3022]  If idName = {1120} Then Return True 
if (_idname=="") { return true;}
// [3023]  Dim slen As Int = idName.Length 
_slen=_idname.length;
// [3024]  Dim i As Int = 0 
_i=0;
// [3025]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [3026]  Dim mout As String = idName.CharAt(i) 
_mout=_idname.charAt(_i);
// [3027]  If {1121} .IndexOf(mout) = -1 Then 
if ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".indexOf(_mout)==-1) {
// [3028]  Return False 
return false;
// [3029]  End If 
}
// [3030]  Next 
}
// [3031]  Return True 
return true;
// End Sub
};

// [3034] Sub AddSizes(sSizeSmall As String, sSizeMedium As String, sSizeLarge As String, sSizeXLarge As String) As VueElement 
_B.addsizes=function(_ssizesmall,_ssizemedium,_ssizelarge,_ssizexlarge) {
// [3035]  sSizeSmall = sSizeSmall.Trim 
_ssizesmall=_ssizesmall.trim();
// [3036]  sSizeXLarge = sSizeXLarge.trim 
_ssizexlarge=_ssizexlarge.trim();
// [3037]  sSizeMedium = sSizeMedium.trim 
_ssizemedium=_ssizemedium.trim();
// [3039]  If sSizeSmall <> {1122} Then AddAttr( {1123} , sSizeSmall) 
if (_ssizesmall!="") {_B.addattr("sm",_ssizesmall,_B);}
// [3040]  If sSizeXLarge <> {1124} Then AddAttr( {1125} , sSizeXLarge) 
if (_ssizexlarge!="") {_B.addattr("xl",_ssizexlarge,_B);}
// [3041]  If sSizeMedium <> {1126} Then AddAttr( {1127} , sSizeMedium) 
if (_ssizemedium!="") {_B.addattr("md",_ssizemedium,_B);}
// [3042]  If sSizeLarge <> {1128} Then AddAttr( {1129} , sSizeLarge) 
if (_ssizelarge!="") {_B.addattr("lg",_ssizelarge,_B);}
// [3043]  Return Me 
return _B;
// End Sub
};

// [3046] Sub AddOffsets(sOffsetSmall As String, sOffsetMedium As String,sOffsetLarge As String,sOffsetXLarge As String) As VueElement 
_B.addoffsets=function(_soffsetsmall,_soffsetmedium,_soffsetlarge,_soffsetxlarge) {
// [3047]  sOffsetSmall = sOffsetSmall.Trim 
_soffsetsmall=_soffsetsmall.trim();
// [3048]  sOffsetMedium = sOffsetMedium.Trim 
_soffsetmedium=_soffsetmedium.trim();
// [3049]  sOffsetLarge = sOffsetLarge.Trim 
_soffsetlarge=_soffsetlarge.trim();
// [3050]  sOffsetXLarge = sOffsetXLarge.Trim 
_soffsetxlarge=_soffsetxlarge.trim();
// [3052]  If sOffsetSmall <> {1130} Then AddAttr( {1131} , sOffsetSmall) 
if (_soffsetsmall!="") {_B.addattr("offset-sm",_soffsetsmall,_B);}
// [3053]  If sOffsetMedium <> {1132} Then AddAttr( {1133} , sOffsetMedium) 
if (_soffsetmedium!="") {_B.addattr("offset-md",_soffsetmedium,_B);}
// [3054]  If sOffsetLarge <> {1134} Then AddAttr( {1135} , sOffsetLarge) 
if (_soffsetlarge!="") {_B.addattr("offset-lg",_soffsetlarge,_B);}
// [3055]  If sOffsetXLarge <> {1136} Then AddAttr( {1137} , sOffsetXLarge) 
if (_soffsetxlarge!="") {_B.addattr("offset-xl",_soffsetxlarge,_B);}
// [3056]  Return Me 
return _B;
// End Sub
};

// [3059] Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement 
_B.appendelement=function(_parent,_tag,_id,_text) {
var _item,_el;
// [3060]  parent = parent.ToLowerCase 
_parent=_parent.toLowerCase();
// [3061]  parent = parent.Replace( {1138} , {1139} ) 
_parent=_parent.split("#").join("");
// [3062]  Dim item As String = {95} 
_item="<" + _tag + " id=\"" + _id + "\"></" + _tag + ">";
// [3063]  Dim el As BANanoElement = BANano.GetElement( {96} ).Append(item).Get( {97} ) 
_el=u("#" + _parent + "").append(_item).find("#" + _id + "").bananofirst();
// [3064]  el.SetText(text) 
_el.text(_text);
// [3065]  Return el 
return _el;
// End Sub
};

// [3069] Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement 
_B.appendelement1=function(_parentid,_tag,_id,_text,_props,_styles,_classes) {
var _el,_k,_v,_strstyle;
// [3070]  parentID = parentID.ToLowerCase 
_parentid=_parentid.toLowerCase();
// [3071]  parentID = parentID.Replace( {1140} , {1141} ) 
_parentid=_parentid.split("#").join("");
// [3072]  id = id.tolowercase 
_id=_id.toLowerCase();
// [3073]  Dim el As BANanoElement = BANano.GetElement( {98} ).Append( {99} ).Get( {100} ) 
_el=u("#" + _parentid + "").append("<" + _tag + " id=\"" + _id + "\"></" + _tag + ">").find("#" + _id + "").bananofirst();
// [3074]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [3075]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [3076]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [3077]  el.SetAttr(k, v) 
_el.attr(_k,_v);
// [3078]  Next 
}
// [3079]  End If 
}
// [3081]  If BANano.IsNull(styles) = False Then 
if (is.null(_styles)==false) {
// [3082]  Dim strStyle As String = BANano.ToJson(styles) 
_strstyle=JSON.stringify(_styles);
// [3083]  el.SetStyle(strStyle) 
_el.css(JSON.parse(_strstyle));
// [3084]  End If 
}
// [3086]  If classes <> {1142} Then el.AddClass(classes) 
if (_classes!="") {_el.addClass(_classes);}
// [3087]  el.settext(text) 
_el.text(_text);
// [3088]  Return el 
return _el;
// End Sub
};

// [3092] Sub CStr(o As Object) As String 
_B.cstr=function(_o) {
// [3093]  If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = {1143} 
if (is.undefined(_o) || is.undefined(_o)) {_o="";}
// [3094]  Return {1144} & o 
return ""+_o;
// End Sub
};

// [3098] Sub Map2List(moptions As Map, sourcefield As String, displayfield As String) As List 
_B.map2list=function(_moptions,_sourcefield,_displayfield) {
var _recs,_k,_v,_nrec;
// [3099]  sourcefield = sourcefield.ToLowerCase 
_sourcefield=_sourcefield.toLowerCase();
// [3100]  displayfield = displayfield.ToLowerCase 
_displayfield=_displayfield.toLowerCase();
// [3101]  Dim recs As List 
_recs=[];
// [3102]  recs.Initialize 
_recs.length=0;
// [3103]  For Each k As String In moptions.Keys 
var _kKeys = Object.keys(_moptions);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [3104]  Dim v As String = moptions.Get(k) 
_v=_moptions[_k];
// [3105]  k = CStr(k) 
_k=_B.cstr(_k,_B);
// [3106]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [3107]  Dim nrec As Map = CreateMap() 
_nrec={};
// [3108]  nrec.Put(sourcefield, k) 
_nrec[_sourcefield]=_k;
// [3109]  nrec.Put(displayfield, v) 
_nrec[_displayfield]=_v;
// [3110]  recs.Add(nrec) 
_recs.push(_nrec);
// [3111]  Next 
}
// [3112]  Return recs 
return _recs;
// End Sub
};

// [3117] Sub NewTreeItem(parentID As String, key As String, text As String, mhref As String, mIcon As String, mDisabled As Boolean) As Map 
_B.newtreeitem=function(_parentid,_key,_text,_mhref,_micon,_mdisabled) {
var _mitem;
// [3118]  parentID = parentID.tolowercase 
_parentid=_parentid.toLowerCase();
// [3119]  key = key.tolowercase 
_key=_key.toLowerCase();
// [3120]  Dim mitem As Map = CreateMap() 
_mitem={};
// [3121]  mitem.Put( {1145} , key) 
_mitem["id"]=_key;
// [3122]  mitem.Put( {1146} , text) 
_mitem["name"]=_text;
// [3123]  mitem.Put( {1147} , mhref) 
_mitem["href"]=_mhref;
// [3124]  mitem.Put( {1148} , mIcon) 
_mitem["icon"]=_micon;
// [3125]  mitem.Put( {1149} , mDisabled) 
_mitem["disabled"]=_mdisabled;
// [3126]  mitem.Put( {1150} , parentID) 
_mitem["parentid"]=_parentid;
// [3127]  Return mitem 
return _mitem;
// End Sub
};

// [3131] Sub FileIcon(ext As String) As String 
_B.fileicon=function(_ext) {
var _extm,_res;
// [3132]  Dim extm As Map = CreateMap() 
_extm={};
// [3133]  extm.Put( {1151} , {1152} ) 
_extm["html"]="mdi-language-html5";
// [3134]  extm.Put( {1153} , {1154} ) 
_extm["js"]="mdi-nodejs";
// [3135]  extm.Put( {1155} , {1156} ) 
_extm["json"]="mdi-code-json";
// [3136]  extm.Put( {1157} , {1158} ) 
_extm["md"]="mdi-markdown";
// [3137]  extm.Put( {1159} , {1160} ) 
_extm["pdf"]="mdi-file-pdf";
// [3138]  extm.Put( {1161} , {1162} ) 
_extm["png"]="mdi-file-image";
// [3139]  extm.Put( {1163} , {1164} ) 
_extm["txt"]="mdi-file-document-outline";
// [3140]  extm.Put( {1165} , {1166} ) 
_extm["xls"]="mdi-file-excel";
// [3141]  extm.Put( {1167} , {1168} ) 
_extm["csv"]="mdi-file-delimited-outline";
// [3142]  extm.Put( {1169} , {1170} ) 
_extm["pre"]="mdi-file-code-outline";
// [3143]  extm.Put( {1171} , {1172} ) 
_extm["code"]="mdi-file-code-outline";
// [3144]  extm.Put( {1173} , {1174} ) 
_extm["doc"]="mdi-file-word-box-outline";
// [3145]  extm.Put( {1175} , {1176} ) 
_extm["mp3"]="mdi-file-music-outline";
// [3146]  extm.Put( {1177} , {1178} ) 
_extm["folder"]="mdi-folder";
// [3147]  extm.Put( {1179} , {1180} ) 
_extm["woff"]="marketweb-webfont.woff";
// [3148]  extm.Put( {1181} , {1182} ) 
_extm["css"]="mdi-language-css3";
// [3150]  ext = ext.ToLowerCase 
_ext=_ext.toLowerCase();
// [3151]  If extm.ContainsKey(ext) Then 
if ((_ext in _extm)) {
// [3152]  Dim res As String = extm.Get(ext) 
_res=_extm[_ext];
// [3153]  Return res 
return _res;
// [3154]  Else 
} else {
// [3155]  Return {1183} 
return "mdi-file-document-outline";
// [3156]  End If 
}
// End Sub
};

// [3160] Sub setItems(s As String) 
_B.setitems=function(_s) {
// [3161]  stItems = s 
_B._stitems=_s;
// [3162]  AddAttr( {1184} , stItems) 
_B.addattr("items",_B._stitems,_B);
// End Sub
};

// [3166] Sub getItems As String 
_B.getitems=function() {
// [3167]  Return stItems 
return _B._stitems;
// End Sub
};

// [3171] Sub setItemText(s As String) 
_B.setitemtext=function(_s) {
// [3172]  AddAttr( {1185} , S) 
_B.addattr("item-text",_s,_B);
// [3173]  stItemText = S 
_B._stitemtext=_s;
// End Sub
};

// [3176] Sub getItemText As String 
_B.getitemtext=function() {
// [3177]  Return stItemText 
return _B._stitemtext;
// End Sub
};

// [3181] Sub setItemValue(s As String) 
_B.setitemvalue=function(_s) {
// [3182]  AddAttr( {1186} , S) 
_B.addattr("item-value",_s,_B);
// [3183]  stItemText = S 
_B._stitemtext=_s;
// End Sub
};

// [3186] Sub getItemValue As String 
_B.getitemvalue=function() {
// [3187]  Return stItemValue 
return _B._stitemvalue;
// End Sub
};

// [3191] Sub setReturnObject(b As Boolean) 
_B.setreturnobject=function(_b) {
// [3192]  AddAttr( {1187} , b) 
_B.addattr(":return-object",_b,_B);
// [3193]  bReturnObject = b 
_B._breturnobject=_b;
// End Sub
};

// [3196] Sub getReturnObject As Boolean 
_B.getreturnobject=function() {
// [3197]  Return bReturnObject 
return _B._breturnobject;
// End Sub
};

// [3201] Sub setMultiple(b As Boolean) 
_B.setmultiple=function(_b) {
// [3202]  AddAttr( {1188} , b) 
_B.addattr(":multiple",_b,_B);
// End Sub
};

// [3205] Sub SetTypeText 
_B.settypetext=function() {
// [3206]  AddAttr( {1189} , {1190} ) 
_B.addattr("type","text",_B);
// End Sub
};

// [3209] Sub SetTypePassword 
_B.settypepassword=function() {
// [3210]  AddAttr( {1191} , {1192} ) 
_B.addattr("type","password",_B);
// End Sub
};

// [3213] Sub SetTypeNumber 
_B.settypenumber=function() {
// [3214]  AddAttr( {1193} , {1194} ) 
_B.addattr("type","number",_B);
// End Sub
};

// [3217] Sub SetTypeTelephone 
_B.settypetelephone=function() {
// [3218]  AddAttr( {1195} , {1196} ) 
_B.addattr("type","tel",_B);
// End Sub
};

// [3221] Sub SetTypeEmail 
_B.settypeemail=function() {
// [3222]  AddAttr( {1197} , {1198} ) 
_B.addattr("type","email",_B);
// End Sub
};

// [3225] Sub SetTypeURL 
_B.settypeurl=function() {
// [3226]  AddAttr( {1199} , {1200} ) 
_B.addattr("type","url",_B);
// End Sub
};

// [3229] Sub SetTypeFile 
_B.settypefile=function() {
// [3230]  AddAttr( {1201} , {1202} ) 
_B.addattr("type","file",_B);
// End Sub
};

// [3261] private Sub getdateformat(item As String, sFormat As String) As String 'ignoredeadcode 
_B.getdateformat=function(_item,_sformat) {
var _svalue;
// [3262]  Dim svalue As String = FormatDisplayDate(item, sFormat) 
_svalue=_B.formatdisplaydate(_item,_sformat,_B);
// [3263]  Return svalue 
return _svalue;
// End Sub
};

// [3267] private Sub getmoneyformat(item As String, sformat As String) As String 'ignoredeadcode 
_B.getmoneyformat=function(_item,_sformat) {
var _svalue;
// [3268]  Dim svalue As String = FormatDisplayNumber(item, sformat) 
_svalue=_B.formatdisplaynumber(_item,_sformat,_B);
// [3269]  Return svalue 
return _svalue;
// End Sub
};

// [3272] private Sub getfilesize(item As String) As String 'ignoredeadcode 
_B.getfilesize=function(_item) {
var _svalue;
// [3273]  Dim svalue As String = FormatFileSize(item) 
_svalue=_B.formatfilesize(_item,_B);
// [3274]  Return svalue 
return _svalue;
// End Sub
};

// [3278] Sub FormatDisplayDate(item As String, sFormat As String) As String 'ignoredeadcode 
_B.formatdisplaydate=function(_item,_sformat) {
var _bo,_sdate;
// [3279]  item = {1214} & item 
_item=""+_item;
// [3280]  If item = {1215} Then Return {1216} 
if (_item=="") { return "";}
// [3281]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {1217} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [3282]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {1218} , Array(item)) 
_bo=BANanoExec("dayjs", window, _item);
// [3283]  Dim sDate As String = bo.RunMethod( {1219} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [3284]  Return sDate 
return _sdate;
// End Sub
};

// [3288] Sub FormatDisplayNumber(item As String, sFormat As String) As String 'ignoredeadcode 
_B.formatdisplaynumber=function(_item,_sformat) {
var _bo,_sdate;
// [3289]  item = {1220} & item 
_item=""+_item;
// [3290]  If item = {1221} Then Return {1222} 
if (_item=="") { return "";}
// [3291]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {1223} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [3292]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {1224} , Array(item)) 
_bo=BANanoExec("numeral", window, _item);
// [3293]  Dim sDate As String = bo.RunMethod( {1225} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [3294]  Return sDate 
return _sdate;
// End Sub
};

// [3298] Sub FormatFileSize(Bytes As Float) As String 'ignoredeadcode 
_B.formatfilesize=function(_bytes) {
var _unit,_po,_si,_i;
// [3299]  If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then 
if (is.null(_bytes) || is.undefined(_bytes)) {
// [3300]  Bytes = 0 
_bytes=0;
// [3301]  End If 
}
// [3302]  Bytes = BANano.parsefloat(Bytes) 
_bytes=parseFloat(_bytes);
// [3303]  Try 
try {
// [3304]  Private Unit() As String = Array As String( {1226} , {1227} , {1228} , {1229} , {1230} , {1231} , {1232} , {1233} , {1234} ) 
_unit=[" Byte"," KB"," MB"," GB"," TB"," PB"," EB"," ZB"," YB"];
// [3305]  If Bytes = 0 Then 
if (_bytes==0) {
// [3306]  Return {1235} 
return "0 Bytes";
// [3307]  Else 
} else {
// [3308]  Private Po, Si As Double 
_po=0;
_si=0;
// [3309]  Private I As Int 
_i=0;
// [3310]  Bytes = Abs(Bytes) 
_bytes=(Math.abs(_bytes));
// [3311]  I = Floor(Logarithm(Bytes, 1024)) 
_i=(Math.floor((Math.log(_bytes)/Math.log(1024))));
// [3312]  Po = Power(1024, I) 
_po=Math.pow(1024,_i);
// [3313]  Si = Bytes / Po 
_si=_bytes/_po;
// [3314]  Return NumberFormat(Si, 1, 3) & Unit(I) 
return BANano_nf(BANano_r(_si, 3),1)+_unit[_i];
// [3315]  End If 
}
// [3316]  Catch 
} catch(err) {
// [3317]  Return {1236} 
return "0 Bytes";
// [3318]  End Try 
}
// End Sub
};

// [3321] Sub NewTextField(elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) 
_B.newtextfield=function(_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
var _k,_v;
// [3322]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [3323]  setLabel(slabel) 
_B.setlabel(_slabel,_B);
// [3324]  setRequired(bRequired) 
_B.setrequired(_brequired,_B);
// [3325]  setPrependIcon(sPrependIcon) 
_B.setprependicon(_sprependicon,_B);
// [3326]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [3327]  setCounter(True) 
_B.setcounter(true,_B);
// [3328]  End If 
}
// [3329]  setPlaceholder(splaceholder) 
_B.setplaceholder(_splaceholder,_B);
// [3330]  setHint(sHint) 
_B.sethint(_shint,_B);
// [3331]  vmodel = vmodel 
_vmodel=_vmodel;
// [3332]  AddAttr( {1237} , {1238} ) 
_B.addattr("type","text",_B);
// [3333]  setRef(vmodel) 
_B.setref(_vmodel,_B);
// [3334]  AddAttr( {1239} , elID) 
_B.addattr("id",_elid,_B);
// [3336]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [3337]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [3338]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [3339]  AddAttr(k, v) 
_B.addattr(_k,_v,_B);
// [3340]  Next 
}
// [3341]  End If 
}
// End Sub
};

}
/* =========================== VueTable =========================== */
function banano_bananovuetifyad3_vuetable() {
var _B=this;
_B._mname="";

_B._meventname="";

_B._mcallback={};

_B._mtarget=null;

_B._melement=null;

_B._mclasses="";

_B._mattributes="";

_B._mstyle="";

_B._classlist={};

_B._stylelist={};

_B._attributelist={};

_B._mtagname="v-data-table";

_B._mstates="";

_B._bindings={};

_B._methods={};

_B._stref="";

_B._stvelse="";

_B._stvelseif="";

_B._stvif="";

_B._stvshow="";

_B._bdense=false;

_B._stitemsperpage="";

_B._stelevation="";

_B._stgroupby="";

_B._bshowgroupby=false;

_B._bshowselect=false;

_B._bsingleselect=false;

_B._items=[];

_B._apptemplatename="#apptemplate";

_B._appendholdername="#appendholder";

_B._placeholdername="#placeholder";

_B._primarykey="id";

_B._column_date="date";

_B._column_text="text";

_B._column_icon="icon";

_B._column_checkbox="checkbox";

_B._column_none="";

_B._column_time="time";

_B._column_datetime="datetime";

_B._column_image="image";

_B._column_money="money";

_B._column_number="number";

_B._column_filesize="filesize";

_B._column_chip="chip";

_B._column_edit="edit";

_B._column_delete="delete";

_B._column_action="action";

_B._column_switch="switch";

_B._column_avatarimg="avatarimg";

_B._column_rating="rating";

_B._column_link="link";

_B._column_progress_circular="progresscircular";

_B._column_progress_linear="progresslinear";

_B._column_save="save";

_B._column_cancel="cancel";

_B._column_button="button";

_B._align_center="center";

_B._align_right="end";

_B._align_left="start";

_B._columnsm={};

_B._filters=[];

_B._hasfilters=false;

_B._exclusions=[];

_B._headers="";

_B._search="";

_B._hdr=[];

_B._mastercolumns=[];

_B._hastotals=false;

_B._hasexternalpagination=false;

_B._totalvisible="";

_B._selected="";

_B._itemsname="";

_B._groupby="";

_B._sortby="";

_B._groupdesc="";

_B._sortdesc="";

_B._expanded="";

_B._keyid="";

// [130] Public Sub Initialize (CallBack As Object, Name As String, EventName As String) 
_B.initialize=function(_callback,_name,_eventname) {
var _sb;
// [131]  mName = Name.ToLowerCase 
_B._mname=_name.toLowerCase();
// [132]  mEventName = EventName.ToLowerCase 
_B._meventname=_eventname.toLowerCase();
// [133]  mCallBack = CallBack 
_B._mcallback=_callback;
// [134]  classList.Initialize 
_B._classlist={};
// [135]  styleList.Initialize 
_B._stylelist={};
// [136]  attributeList.Initialize 
_B._attributelist={};
// [137]  bindings.Initialize 
_B._bindings={};
// [138]  methods.Initialize 
_B._methods={};
// [139]  Items.Initialize 
_B._items.length=0;
// [140]  filters.Initialize 
_B._filters.length=0;
// [141]  hasFilters = False 
_B._hasfilters=false;
// [142]  exclusions.Initialize 
_B._exclusions.length=0;
// [143]  columnsM.Initialize 
_B._columnsm={};
// [144]  masterColumns.Initialize 
_B._mastercolumns.length=0;
// [145]  hasTotals = False 
_B._hastotals=false;
// [146]  hasExternalPagination = False 
_B._hasexternalpagination=false;
// [147]  totalVisible = {203} 
_B._totalvisible="";
// [148]  keyID = {0} 
_B._keyid="" + _B._mname + "key";
// [150]  headers = {1} 
_B._headers="" + _B._mname + "headers";
// [151]  search = {2} 
_B._search="" + _B._mname + "search";
// [152]  selected = {3} 
_B._selected="" + _B._mname + "selected";
// [153]  groupby = {4} 
_B._groupby="" + _B._mname + "groupby";
// [154]  sortby = {5} 
_B._sortby="" + _B._mname + "sortby";
// [155]  groupdesc = {6} 
_B._groupdesc="" + _B._mname + "groupdesc";
// [156]  sortdesc = {7} 
_B._sortdesc="" + _B._mname + "sortdesc";
// [157]  expanded = {8} 
_B._expanded="" + _B._mname + "expanded";
// [158]  itemsname = {9} 
_B._itemsname="" + _B._mname + "items";
// [159]  search = {10} 
_B._search="" + _B._mname + "search";
// [161]  AddAttr( {204} , itemsname) 
_B.addattr(":items",_B._itemsname,_B);
// [162]  AddAttr( {205} , headers) 
_B.addattr(":headers",_B._headers,_B);
// [163]  AddAttr( {206} , selected) 
_B.addattr(":value",_B._selected,_B);
// [164]  AddAttr( {207} , groupby) 
_B.addattr(":group-by",_B._groupby,_B);
// [165]  AddAttr( {208} , sortby) 
_B.addattr(":sort-by",_B._sortby,_B);
// [166]  AddAttr( {209} , groupdesc) 
_B.addattr(":group-desc",_B._groupdesc,_B);
// [167]  AddAttr( {210} , sortdesc) 
_B.addattr(":sort-desc",_B._sortdesc,_B);
// [168]  AddAttr( {211} , expanded) 
_B.addattr(":expanded.sync",_B._expanded,_B);
// [169]  AddAttr( {212} , keyID) 
_B.addattr(":key",_B._keyid,_B);
// [170]  AddAttr( {213} , search) 
_B.addattr(":search",_B._search,_B);
// [172]  setNoDataText( {214} ) 
_B.setnodatatext("Working on it, please wait...",_B);
// [174]  SetSortBy(NewList) 
_B.setsortby(_B.newlist(_B),_B);
// [175]  SetGroupBy(NewList) 
_B.setgroupby(_B.newlist(_B),_B);
// [176]  SetExpanded(NewList) 
_B.setexpanded(_B.newlist(_B),_B);
// [177]  SetGroupDesc(NewList) 
_B.setgroupdesc(_B.newlist(_B),_B);
// [178]  SetSortDesc(NewList) 
_B.setsortdesc(_B.newlist(_B),_B);
// [179]  SetSelected(NewList) 
_B.setselected(_B.newlist(_B),_B);
// [180]  SetHeaders(NewList) 
_B.setheaders(_B.newlist(_B),_B);
// [181]  SetItems(NewList) 
_B.setitems(_B.newlist(_B),_B);
// [183]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [184]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [185]  sb.Append( {11} ) 
_sb.append("" + _B._headers + "=array;");
// [186]  sb.Append( {12} ) 
_sb.append("" + _B._selected + "=array;");
// [187]  sb.Append( {13} ) 
_sb.append("" + _B._groupby + "=array;");
// [188]  sb.Append( {14} ) 
_sb.append("" + _B._sortby + "=array;");
// [189]  sb.Append( {15} ) 
_sb.append("" + _B._groupdesc + "=array;");
// [190]  sb.Append( {16} ) 
_sb.append("" + _B._sortdesc + "=array;");
// [191]  sb.Append( {17} ) 
_sb.append("" + _B._expanded + "=array;");
// [192]  sb.Append( {18} ) 
_sb.append("" + _B._itemsname + "=array;");
// [193]  sb.Append( {19} ) 
_sb.append("" + _B._search + "=string");
// [194]  setStates(sb.ToString) 
_B.setstates(_sb.toString(),_B);
// End Sub
};

// [197] Sub SetItems(records As List) 
_B.setitems=function(_records) {
// [198]  SetData(itemsname, records) 
_B.setdata(_B._itemsname,_records,_B);
// End Sub
};

// [201] Sub SetHeaders(hdrs As List) 
_B.setheaders=function(_hdrs) {
// [202]  SetData(headers, hdrs) 
_B.setdata(_B._headers,_hdrs,_B);
// End Sub
};

// [205] Sub SetSelected(varSortDesc As List) 
_B.setselected=function(_varsortdesc) {
// [206]  SetData(selected, varSortDesc) 
_B.setdata(_B._selected,_varsortdesc,_B);
// End Sub
};

// [210] Sub setNoDataText(varNoDataText As String) 
_B.setnodatatext=function(_varnodatatext) {
// [211]  AddAttr( {215} , varNoDataText) 
_B.addattr("no-data-text",_varnodatatext,_B);
// End Sub
};

// [215] Sub SetGroupBy(varGroupBy As List) 
_B.setgroupby=function(_vargroupby) {
// [216]  SetData(groupby, varGroupBy) 
_B.setdata(_B._groupby,_vargroupby,_B);
// End Sub
};

// [220] Sub SetSortBy(varSortBy As List) 
_B.setsortby=function(_varsortby) {
// [221]  SetData(sortby, varSortBy) 
_B.setdata(_B._sortby,_varsortby,_B);
// End Sub
};

// [225] Sub SetGroupDesc(varGroupDesc As List) 
_B.setgroupdesc=function(_vargroupdesc) {
// [226]  SetData(groupdesc, varGroupDesc) 
_B.setdata(_B._groupdesc,_vargroupdesc,_B);
// End Sub
};

// [229] Sub SetSortDesc(varSortDesc As List) 
_B.setsortdesc=function(_varsortdesc) {
// [230]  SetData(sortdesc, varSortDesc) 
_B.setdata(_B._sortdesc,_varsortdesc,_B);
// End Sub
};

// [234] Sub SetExpanded(varExpanded As List) 
_B.setexpanded=function(_varexpanded) {
// [235]  SetData(expanded, varExpanded) 
_B.setdata(_B._expanded,_varexpanded,_B);
// End Sub
};

// [240] Sub GetItemKeys(lst As List) As List 
_B.getitemkeys=function(_lst) {
var _xlist,_m,_xkey;
// [241]  Dim xlist As List 
_xlist=[];
// [242]  xlist.Initialize 
_xlist.length=0;
// [243]  For Each m As Map In lst 
for (var _mindex=0;_mindex<_lst.length;_mindex++) {
_m=_lst[_mindex];
// [244]  Dim xkey As String = m.GetDefault(PrimaryKey, {216} ) 
_xkey=_m[_B._primarykey]===undefined? "":_m[_B._primarykey];
// [245]  xlist.Add(xkey) 
_xlist.push(_xkey);
// [246]  Next 
}
// [247]  Return xlist 
return _xlist;
// End Sub
};

// [251] Sub GetItemProps(lst As List, prop As String) As List 
_B.getitemprops=function(_lst,_prop) {
var _xlist,_m,_xkey;
// [252]  Dim xlist As List 
_xlist=[];
// [253]  xlist.Initialize 
_xlist.length=0;
// [254]  For Each m As Map In lst 
for (var _mindex=0;_mindex<_lst.length;_mindex++) {
_m=_lst[_mindex];
// [255]  Dim xkey As String = m.GetDefault(prop, {217} ) 
_xkey=_m[_prop]===undefined? "":_m[_prop];
// [256]  xlist.Add(xkey) 
_xlist.push(_xkey);
// [257]  Next 
}
// [258]  Return xlist 
return _xlist;
// End Sub
};

// [262] Sub AddRow(rowData As Map) 
_B.addrow=function(_rowdata) {
// [263]  Items.Add(rowData) 
_B._items.push(_rowdata);
// End Sub
};

// [267] Public Sub DesignerCreateView (Target As BANanoElement, Props As Map) 
_B.designercreateview=function(_target,_props) {
var _gb,_strhtml;
// [268]  mTarget = Target 
_B._mtarget=_target;
// [269]  If Props <> Null Then 
if (_props!=null) {
// [270]  mClasses = Props.Get( {218} ) 
_B._mclasses=_props["Classes"];
// [271]  mAttributes = Props.Get( {219} ) 
_B._mattributes=_props["Attributes"];
// [272]  mStyle = Props.Get( {220} ) 
_B._mstyle=_props["Style"];
// [273]  mStates = Props.Get( {221} ) 
_B._mstates=_props["States"];
// [274]  stRef = Props.Get( {222} ) 
_B._stref=_props["Ref"];
// [275]  stVElse = Props.Get( {223} ) 
_B._stvelse=_props["VElse"];
// [276]  stVElseIf = Props.Get( {224} ) 
_B._stvelseif=_props["VElseIf"];
// [277]  stVIf = Props.Get( {225} ) 
_B._stvif=_props["VIf"];
// [278]  stVShow = Props.Get( {226} ) 
_B._stvshow=_props["VShow"];
// [279]  PrimaryKey = Props.Get( {227} ) 
_B._primarykey=_props["ItemKey"];
// [280]  bDense = Props.Get( {228} ) 
_B._bdense=_props["Dense"];
// [281]  stItemsPerPage = Props.Get( {229} ) 
_B._stitemsperpage=_props["ItemsPerPage"];
// [282]  stElevation = Props.Get( {230} ) 
_B._stelevation=_props["Elevation"];
// [283]  stGroupBy = Props.Get( {231} ) 
_B._stgroupby=_props["GroupBy"];
// [284]  bShowGroupBy = Props.Get( {232} ) 
_B._bshowgroupby=_props["ShowGroupBy"];
// [285]  bShowSelect = Props.Get( {233} ) 
_B._bshowselect=_props["ShowSelect"];
// [286]  bSingleSelect = Props.Get( {234} ) 
_B._bsingleselect=_props["SingleSelect"];
// [287]  End If 
}
// [289]  AddAttr( {235} , stRef) 
_B.addattr("ref",_B._stref,_B);
// [290]  AddAttr( {236} , stVElse) 
_B.addattr("v-else",_B._stvelse,_B);
// [291]  AddAttr( {237} , stVElseIf) 
_B.addattr("v-else-if",_B._stvelseif,_B);
// [292]  AddAttr( {238} , stVIf) 
_B.addattr("v-if",_B._stvif,_B);
// [293]  AddAttr( {239} , stVShow) 
_B.addattr("v-show",_B._stvshow,_B);
// [294]  AddAttr( {240} , PrimaryKey) 
_B.addattr("item-key",_B._primarykey,_B);
// [295]  AddAttr( {241} , bDense) 
_B.addattr(":dense",_B._bdense,_B);
// [296]  AddAttr( {242} , stItemsPerPage) 
_B.addattr("items-per-page",_B._stitemsperpage,_B);
// [297]  setElevation(stElevation) 
_B.setelevation(_B._stelevation,_B);
// [298]  AddAttr( {243} , bShowSelect) 
_B.addattr(":show-select",_B._bshowselect,_B);
// [299]  AddAttr( {244} , bSingleSelect) 
_B.addattr(":single-select",_B._bsingleselect,_B);
// [300]  If BANano.IsNull(stGroupBy) = False Then 
if (is.null(_B._stgroupby)==false) {
// [301]  Dim gb As List = BANanoShared.StrParse( {245} , stGroupBy) 
_gb=_banano_bananovuetifyad3_bananoshared.strparse(",",_B._stgroupby);
// [302]  SetGroupBy(gb) 
_B.setgroupby(_gb,_B);
// [303]  End If 
}
// [304]  AddAttr( {246} , bShowGroupBy) 
_B.addattr(":show-group-by",_B._bshowgroupby,_B);
// [306]  AddClass(mClasses) 
_B.addclass(_B._mclasses,_B);
// [307]  setAttributes(mAttributes) 
_B.setattributes(_B._mattributes,_B);
// [308]  setStyles(mStyle) 
_B.setstyles(_B._mstyle,_B);
// [310]  SetOnItemSelected( {20} ) 
_B.setonitemselected("" + _B._mname + "_ItemSelected",_B);
// [311]  SetOnClickRow( {21} ) 
_B.setonclickrow("" + _B._mname + "_ClickRow",_B);
// [314]  Dim strHTML As String = ToString 
_strhtml=_B.tostring(_B);
// [315]  mElement = mTarget.Append(strHTML).Get( {247} & mName) 
_B._melement=_B._mtarget.append(_strhtml).find("#"+_B._mname).bananofirst();
// [316]  setStates(mStates) 
_B.setstates(_B._mstates,_B);
// End Sub
};

// [320] Sub AppendHolder 
_B.appendholder=function() {
var _stemplate;
// [321]  Dim stemplate As String = BANanoGetHTMLAsIs( {248} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [322]  mElement = BANano.GetElement( {22} ) 
_B._melement=u("#" + _B._mname + "");
// [323]  If mElement <> Null Then 
if (_B._melement!=null) {
// [324]  mElement.Append(stemplate) 
_B._melement.append(_stemplate);
// [325]  End If 
}
// End Sub
};

// [329] Sub GetElementByData(dataattr As String, value As String) As BANanoElement 
_B.getelementbydata=function(_dataattr,_value) {
var _skey,_dataid;
// [330]  dataattr = dataattr.tolowercase 
_dataattr=_dataattr.toLowerCase();
// [331]  Dim skey As String = {23} 
_skey="[data-" + _dataattr + "='" + _value + "']";
// [332]  Dim dataId As BANanoElement 
_dataid=null;
// [333]  dataId.Initialize(skey) 
_dataid=u(_skey);
// [334]  Return dataId 
return _dataid;
// End Sub
};

// [338] Sub AppendHolderTo(target As String) 
_B.appendholderto=function(_target) {
var _stemplate,_elx;
// [339]  Dim stemplate As String = BANanoGetHTMLAsIs( {249} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [340]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [341]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [345] Sub AppendPlaceHolderTo(target As String) 
_B.appendplaceholderto=function(_target) {
var _stemplate,_elx;
// [346]  Dim stemplate As String = BANanoGetHTMLAsIs( {250} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [347]  Dim elx As BANanoElement = BANano.GetElement(target) 
_elx=u(_target);
// [348]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [352] Sub AppendPlaceHolder 
_B.appendplaceholder=function() {
var _stemplate;
// [353]  Dim stemplate As String = BANanoGetHTMLAsIs( {251} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [354]  mElement = BANano.GetElement( {24} ) 
_B._melement=u("#" + _B._mname + "");
// [355]  If mElement <> Null Then 
if (_B._melement!=null) {
// [356]  mElement.Append(stemplate) 
_B._melement.append(_stemplate);
// [357]  End If 
}
// End Sub
};

// [361] private Sub BANanoGetHTMLAsIs(id As String) As String 
_B.bananogethtmlasis=function(_id) {
var _be,_xtemplate;
// [362]  id = id.tolowercase 
_id=_id.toLowerCase();
// [363]  Dim be As BANanoElement 
_be=null;
// [364]  be.Initialize( {25} ) 
_be=u("#" + _id + "");
// [365]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [366]  be.Empty 
_be.empty();
// [367]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [371] Sub BANanoGetHTML(id As String) As String 
_B.bananogethtml=function(_id) {
var _be,_xtemplate;
// [372]  id = id.tolowercase 
_id=_id.toLowerCase();
// [373]  Dim be As BANanoElement 
_be=null;
// [374]  be.Initialize( {26} ) 
_be=u("#" + _id + "");
// [375]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [376]  be.Empty 
_be.empty();
// [377]  xTemplate = xTemplate.Replace( {252} , {253} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [378]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [383] Sub ToString As String 
_B.tostring=function() {
var _classname,_stylename,_istructure,_rslt;
// [385]  Dim className As String = BANanoShared.JoinMapKeys(classList, {254} ) 
_classname=_banano_bananovuetifyad3_bananoshared.joinmapkeys(_B._classlist," ");
// [386]  If className <> {255} Then AddAttr( {256} , className) 
if (_classname!="") {_B.addattr("class",_classname,_B);}
// [388]  Dim styleName As String = BANanoShared.BuildStyle(styleList) 
_stylename=_banano_bananovuetifyad3_bananoshared.buildstyle(_B._stylelist);
// [389]  If styleName <> {257} Then AddAttr( {258} , styleName) 
if (_stylename!="") {_B.addattr("style",_stylename,_B);}
// [391]  Dim iStructure As String = BANanoShared.BuildAttributes(attributeList) 
_istructure=_banano_bananovuetifyad3_bananoshared.buildattributes(_B._attributelist);
// [392]  iStructure = iStructure.trim 
_istructure=_istructure.trim();
// [393]  Dim rslt As String = {27} 
_rslt="<" + _B._mtagname + " id=\"" + _B._mname + "\" " + _istructure + "></" + _B._mtagname + ">";
// [394]  Return rslt 
return _rslt;
// End Sub
};

// [398] Sub getHTML As String 
_B.gethtml=function() {
// [399]  If mElement <> Null Then 
if (_B._melement!=null) {
// [400]  Return mElement.GetHTML 
return _B._melement.html();
// [401]  Else 
} else {
// [402]  Return {259} 
return "";
// [403]  End If 
}
// End Sub
};

// [407] Sub SetData(prop As String, val As Object) 
_B.setdata=function(_prop,_val) {
// [408]  If prop <> {260} Then 
if (_prop!="") {
// [409]  bindings.Put(prop, val) 
_B._bindings[_prop]=_val;
// [410]  End If 
}
// End Sub
};

// [413] Sub NewList As List 
_B.newlist=function() {
var _elx;
// [414]  Dim elx As List 
_elx=[];
// [415]  elx.Initialize 
_elx.length=0;
// [416]  Return elx 
return _elx;
// End Sub
};

// [420] public Sub setStates(varBindings As String) 
_B.setstates=function(_varbindings) {
var _mxitems,_mt,_k,_v,_nl,_nm;
// [421]  If BANano.IsNull(varBindings) Or BANano.IsUndefined(varBindings) Then Return 
if (is.null(_varbindings) || is.undefined(_varbindings)) { return ;}
// [422]  If varBindings = {261} Then Return 
if (_varbindings=="") { return ;}
// [423]  Dim mxItems As List = BANanoShared.StrParse( {262} , varBindings) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varbindings);
// [424]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [425]  Dim k As String = BANanoShared.MvField(mt,1, {263} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [426]  Dim v As String = BANanoShared.MvField(mt,2, {264} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [427]  If v.EqualsIgnoreCase( {265} ) Then 
if (_v.equalsIgnoreCase("false")) {
// [428]  If k <> {266} Then 
if (_k!="") {
// [429]  bindings.Put(k, False) 
_B._bindings[_k]=false;
// [430]  End If 
}
// [431]  else if v.EqualsIgnoreCase( {267} ) Then 
} else if (_v.equalsIgnoreCase("true")) {
// [432]  If k <> {268} Then 
if (_k!="") {
// [433]  bindings.Put(k, True) 
_B._bindings[_k]=true;
// [434]  End If 
}
// [435]  else if v.EqualsIgnoreCase( {269} ) Then 
} else if (_v.equalsIgnoreCase("array")) {
// [436]  If k <> {270} Then 
if (_k!="") {
// [437]  Dim nl As List = NewList 
_nl=_B.newlist(_B);
// [438]  bindings.Put(k, nl) 
_B._bindings[_k]=_nl;
// [439]  End If 
}
// [440]  else if v.EqualsIgnoreCase( {271} ) Then 
} else if (_v.equalsIgnoreCase("object")) {
// [441]  If k <> {272} Then 
if (_k!="") {
// [442]  Dim nm As Map = CreateMap() 
_nm={};
// [443]  bindings.Put(k, nm) 
_B._bindings[_k]=_nm;
// [444]  End If 
}
// [445]  else if v.EqualsIgnoreCase( {273} ) Then 
} else if (_v.equalsIgnoreCase("map")) {
// [446]  If k <> {274} Then 
if (_k!="") {
// [447]  Dim nm As Map = CreateMap() 
_nm={};
// [448]  bindings.Put(k, nm) 
_B._bindings[_k]=_nm;
// [449]  End If 
}
// [450]  else if v.EqualsIgnoreCase( {275} ) Then 
} else if (_v.equalsIgnoreCase("string")) {
// [451]  If k <> {276} Then 
if (_k!="") {
// [452]  bindings.Put(k, {277} ) 
_B._bindings[_k]="";
// [453]  End If 
}
// [454]  else if v.EqualsIgnoreCase( {278} ) Then 
} else if (_v.equalsIgnoreCase("int")) {
// [455]  If k <> {279} Then 
if (_k!="") {
// [456]  bindings.Put(k, 0) 
_B._bindings[_k]=0;
// [457]  End If 
}
// [458]  Else 
} else {
// [459]  If k <> {280} Then 
if (_k!="") {
// [460]  bindings.put(k, v) 
_B._bindings[_k]=_v;
// [461]  End If 
}
// [462]  End If 
}
// [463]  Next 
}
// End Sub
};

// [467] Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String) 
_B.addelement=function(_elid,_tag,_props,_styleprops,_classnames,_loose,_text) {
var _elit,_k,_v,_selement;
// [468]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [469]  elID = elID.Replace( {281} , {282} ) 
_elid=_elid.split("#").join("");
// [470]  Dim elIT As VueElement 
_elit= new banano_bananovuetifyad3_vueelement();
// [471]  elIT.Initialize(mCallBack, elID, tag) 
_elit.initialize(_B._mcallback,_elid,_tag);
// [472]  elIT.SetText(Text) 
_elit.settext(_text);
// [473]  If loose <> Null Then 
if (_loose!=null) {
// [474]  For Each k As String In loose 
for (var _kindex=0;_kindex<_loose.length;_kindex++) {
_k=_loose[_kindex];
// [475]  elIT.SetAttr(k, True) 
_elit.setattr(_k,true);
// [476]  Next 
}
// [477]  End If 
}
// [478]  If props <> Null Then 
if (_props!=null) {
// [479]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [480]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [481]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [482]  Next 
}
// [483]  End If 
}
// [484]  If styleProps <> Null Then 
if (_styleprops!=null) {
// [485]  For Each k As String In styleProps.Keys 
var _kKeys = Object.keys(_styleprops);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [486]  Dim v As String = styleProps.Get(k) 
_v=_styleprops[_k];
// [487]  elIT.SetAttr(k, v) 
_elit.setattr(_k,_v);
// [488]  Next 
}
// [489]  End If 
}
// [490]  If classNames <> Null Then 
if (_classnames!=null) {
// [491]  elIT.AddClasses(classNames) 
_elit.addclasses(_classnames);
// [492]  End If 
}
// [494]  Dim sElement As String = elIT.tostring 
_selement=_elit.tostring();
// [495]  mElement.Append(sElement) 
_B._melement.append(_selement);
// End Sub
};

// [499] public Sub getElement() As BANanoElement 
_B.getelement=function() {
// [500]  Return mElement 
return _B._melement;
// End Sub
};

// [504] Sub setElement(varElement As BANanoElement) 
_B.setelement=function(_varelement) {
// [505]  mElement = varElement 
_B._melement=_varelement;
// End Sub
};

// [509] public Sub getID() As String 
_B.getid=function() {
// [510]  Return mName 
return _B._mname;
// End Sub
};

// [514] public Sub AddToParent(targetID As String) 
_B.addtoparent=function(_targetid) {
// [515]  targetID = targetID.tolowercase 
_targetid=_targetid.toLowerCase();
// [516]  targetID = targetID.Replace( {283} , {284} ) 
_targetid=_targetid.split("#").join("");
// [517]  mTarget = BANano.GetElement( {28} ) 
_B._mtarget=u("#" + _targetid + "");
// [518]  DesignerCreateView(mTarget, Null) 
_B.designercreateview(_B._mtarget,null,_B);
// End Sub
};

// [522] public Sub Remove() 
_B.remove=function() {
// [523]  mElement.Remove 
_B._melement.remove();
// [524]  BANano.SetMeToNull 
_B=null;
// End Sub
};

// [528] public Sub Trigger(event As String, params() As String) 
_B.trigger=function(_event,_params) {
// [529]  If mElement <> Null Then 
if (_B._melement!=null) {
// [530]  mElement.Trigger(event, params) 
_B._melement.trigger(_event, _params);
// [531]  End If 
}
// End Sub
};

// [535] public Sub AddClass(varClass As String) 
_B.addclass=function(_varclass) {
var _mxitems,_mt;
// [536]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [537]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [538]  varClass = varClass.trim 
_varclass=_varclass.trim();
// [539]  If varClass = {285} Then Return 
if (_varclass=="") { return ;}
// [540]  If mElement <> Null Then 
if (_B._melement!=null) {
// [541]  mElement.AddClass(varClass) 
_B._melement.addClass(_varclass);
// [542]  Else 
} else {
// [543]  Dim mxItems As List = BANanoShared.StrParse( {286} , varClass) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(" ",_varclass);
// [544]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [545]  classList.put(mt, mt) 
_B._classlist[_mt]=_mt;
// [546]  Next 
}
// [547]  End If 
}
// End Sub
};

// [550] Sub AddClasses(listOfClasses As List) 
_B.addclasses=function(_listofclasses) {
var _strclass;
// [551]  Dim strClass As String = BANanoShared.Join( {287} , listOfClasses) 
_strclass=_banano_bananovuetifyad3_bananoshared.join(" ",_listofclasses);
// [552]  AddClass(strClass) 
_B.addclass(_strclass,_B);
// End Sub
};

// [556] public Sub AddClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addclassoncondition=function(_varclass,_varcondition,_varshouldbe) {
var _mxitems,_mt;
// [557]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [558]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [559]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [560]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [561]  varClass = varClass.trim 
_varclass=_varclass.trim();
// [562]  If varClass = {288} Then Return 
if (_varclass=="") { return ;}
// [563]  If mElement <> Null Then 
if (_B._melement!=null) {
// [564]  mElement.AddClass(varClass) 
_B._melement.addClass(_varclass);
// [565]  Else 
} else {
// [566]  Dim mxItems As List = BANanoShared.StrParse( {289} , varClass) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(" ",_varclass);
// [567]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [568]  classList.put(mt, mt) 
_B._classlist[_mt]=_mt;
// [569]  Next 
}
// [570]  End If 
}
// End Sub
};

// [574] public Sub AddAttrOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addattroncondition=function(_varclass,_varcondition,_varshouldbe) {
// [575]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [576]  If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return 
if (is.undefined(_varclass) || is.null(_varclass)) { return ;}
// [577]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [578]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [579]  If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass) 
if (is.number(_varclass)) {_varclass=_banano_bananovuetifyad3_bananoshared.cstr(_varclass);}
// [580]  varClass = varClass.trim 
_varclass=_varclass.trim();
// [581]  If varClass = {290} Then Return 
if (_varclass=="") { return ;}
// [582]  AddAttr(varClass, varShouldBe) 
_B.addattr(_varclass,_varshouldbe,_B);
// End Sub
};

// [587] public Sub AddStyle(varProp As String, varStyle As String) 
_B.addstyle=function(_varprop,_varstyle) {
var _astyle,_sstyle;
// [588]  If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return 
if (is.undefined(_varstyle) || is.null(_varstyle)) { return ;}
// [589]  If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle) 
if (is.number(_varstyle)) {_varstyle=_banano_bananovuetifyad3_bananoshared.cstr(_varstyle);}
// [590]  If mElement <> Null Then 
if (_B._melement!=null) {
// [591]  Dim aStyle As Map = CreateMap() 
_astyle={};
// [592]  aStyle.put(varProp, varStyle) 
_astyle[_varprop]=_varstyle;
// [593]  Dim sStyle As String = BANano.ToJSON(aStyle) 
_sstyle=JSON.stringify(_astyle);
// [594]  mElement.SetStyle(sStyle) 
_B._melement.css(JSON.parse(_sstyle));
// [595]  Else 
} else {
// [596]  styleList.put(varProp, varStyle) 
_B._stylelist[_varprop]=_varstyle;
// [597]  End If 
}
// End Sub
};

// [602] public Sub AddStyleOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Object) 
_B.addstyleoncondition=function(_varclass,_varcondition,_varshouldbe) {
// [603]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [604]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [605]  If varShouldBe <> varCondition Then Return 
if (_varshouldbe!=_varcondition) { return ;}
// [606]  AddStyle(varClass, varCondition) 
_B.addstyle(_varclass,_varcondition,_B);
// End Sub
};

// [609] public Sub AddStyleOnConditionTrue(varClass As String, varCondition As Boolean, varShouldBe As Boolean) 
_B.addstyleonconditiontrue=function(_varclass,_varcondition,_varshouldbe) {
// [610]  If BANano.IsUndefined(varShouldBe) Or BANano.IsNull(varShouldBe) Then Return 
if (is.undefined(_varshouldbe) || is.null(_varshouldbe)) { return ;}
// [611]  If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return 
if (is.undefined(_varcondition) || is.null(_varcondition)) { return ;}
// [612]  If varShouldBe Then AddStyle(varClass, varCondition) 
if (_varshouldbe) {_B.addstyle(_varclass,_varcondition,_B);}
// End Sub
};

// [615] Sub SetAttr(varProp As String, varValue As String) 
_B.setattr=function(_varprop,_varvalue) {
// [616]  AddAttr(varProp, varValue) 
_B.addattr(_varprop,_varvalue,_B);
// End Sub
};

// [620] Sub SetText(varText As String) 
_B.settext=function(_vartext) {
// [621]  AddChild(varText) 
_B.addchild(_vartext,_B);
// End Sub
};

// [624] Sub Bind(attr As String, value As String) 
_B.bind=function(_attr,_value) {
// [625]  AddAttr( {29} , value) 
_B.addattr(":" + _attr + "",_value,_B);
// End Sub
};

// [629] Sub BindVueElement(el As VueElement) 
_B.bindvueelement=function(_el) {
var _mbindings,_mmethods,_k,_v,_cb;
// [630]  Dim mbindings As Map = el.bindings 
_mbindings=_el._bindings;
// [631]  Dim mmethods As Map = el.methods 
_mmethods=_el._methods;
// [633]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [634]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [635]  Select Case k 
switch ("" + _k) {
// [636]  Case {291} 
case "" + "key":
// [637]  Case {292} , {293} 
break;
case "" + ":rules":
case "" + ":items":
// [638]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [639]  Case Else 
break;
default:
// [640]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [641]  End Select 
break;
}
// [642]  Next 
}
// [644]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [645]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [646]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [647]  Next 
}
// End Sub
};

// [651] Public Sub AddAttr(varProp As String, varValue As String) 
_B.addattr=function(_varprop,_varvalue) {
var _rname;
// [652]  If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return 
if (is.undefined(_varvalue) || is.null(_varvalue)) { return ;}
// [653]  If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue) 
if (is.number(_varvalue)) {_varvalue=_banano_bananovuetifyad3_bananoshared.cstr(_varvalue);}
// [654]  If varValue = {294} Then varValue = {295} 
if (_varvalue=="none") {_varvalue="";}
// [655]  If varValue = {296} Then Return 
if (_varvalue=="") { return ;}
// [656]  If varProp = {297} And varValue.EqualsIgnoreCase( {298} ) Then Return 
if (_varprop=="align" && _varvalue.equalsIgnoreCase("false")) { return ;}
// [657]  If varProp = {299} And varValue.EqualsIgnoreCase( {300} ) Then Return 
if (_varprop=="justify" && _varvalue.equalsIgnoreCase("false")) { return ;}
// [659]  If BANano.IsBoolean(varValue) Then 
if (is.boolean(_varvalue)) {
// [660]  If varValue = True Then 
if (_varvalue==true) {
// [661]  If mElement <> Null Then 
if (_B._melement!=null) {
// [662]  mElement.SetAttr(varProp, varValue) 
_B._melement.attr(_varprop,_varvalue);
// [663]  Else 
} else {
// [664]  attributeList.put(varProp, varValue) 
_B._attributelist[_varprop]=_varvalue;
// [665]  End If 
}
// [666]  End If 
}
// [667]  Else 
} else {
// [668]  varValue = varValue.Replace( {301} , {302} ) 
_varvalue=_varvalue.split("~").join("=");
// [669]  varValue = varValue.Replace( {303} , {304} ) 
_varvalue=_varvalue.split("#").join("$");
// [671]  If varValue.StartsWith( {305} ) Then 
if (_varvalue.startsWith(":")) {
// [672]  Dim rname As String = BANanoShared.MidString2(varValue, 2) 
_rname=_banano_bananovuetifyad3_bananoshared.midstring2(_varvalue,2);
// [673]  If rname.Contains( {306} ) = False Then 
if (_rname.contains(".")==false) {
// [674]  bindings.Put(rname, Null) 
_B._bindings[_rname]=null;
// [675]  End If 
}
// [676]  If mElement <> Null Then 
if (_B._melement!=null) {
// [677]  mElement.SetAttr( {30} , rname) 
_B._melement.attr(":" + _varprop + "",_rname);
// [678]  Else 
} else {
// [679]  attributeList.put( {31} , rname) 
_B._attributelist[":" + _varprop + ""]=_rname;
// [680]  End If 
}
// [681]  Else 
} else {
// [683]  If varProp.StartsWith( {307} ) Then 
if (_varprop.startsWith(":")) {
// [684]  If varValue.Contains( {308} ) = False Then 
if (_varvalue.contains(".")==false) {
// [685]  bindings.Put(varValue, Null) 
_B._bindings[_varvalue]=null;
// [686]  End If 
}
// [687]  End If 
}
// [689]  If mElement <> Null Then 
if (_B._melement!=null) {
// [690]  mElement.SetAttr(varProp, varValue) 
_B._melement.attr(_varprop,_varvalue);
// [691]  Else 
} else {
// [692]  attributeList.put(varProp, varValue) 
_B._attributelist[_varprop]=_varvalue;
// [693]  End If 
}
// [694]  End If 
}
// [696]  Select Case varProp 
switch ("" + _varprop) {
// [697]  Case {309} , {310} , {311} , {312} , {313} , {314} , {315} 
case "" + "v-model":
case "" + "v-show":
case "" + "v-if":
case "" + "v-else-if":
case "" + "required":
case "" + "disabled":
case "" + "readonly":
// [698]  If varValue <> {316} Then 
if (_varvalue!="") {
// [699]  bindings.Put(varValue, Null) 
_B._bindings[_varvalue]=null;
// [700]  End If 
}
// [701]  End Select 
break;
}
// [702]  End If 
}
// [703]  Return 
return;
// End Sub
};

// [706] Sub RemoveCodeBindings(b As List) 
_B.removecodebindings=function(_b) {
var _k;
// [707]  For Each k As String In b 
for (var _kindex=0;_kindex<_b.length;_kindex++) {
_k=_b[_kindex];
// [708]  If k <> {317} Then 
if (_k!="") {
// [709]  bindings.Remove(k) 
delete _B._bindings[_k];
// [710]  End If 
}
// [711]  Next 
}
// End Sub
};

// [715] Public Sub getClasses() As String 
_B.getclasses=function() {
var _sbclass,_k;
// [716]  Dim sbClass As StringBuilder 
_sbclass=new StringBuilder();
// [717]  sbClass.Initialize 
_sbclass.init();
_sbclass.isinitialized=true;
// [718]  For Each k As String In classList.Keys 
var _kKeys = Object.keys(_B._classlist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [719]  sbClass.Append(k).Append( {318} ) 
_sbclass.append(_k).append(" ");
// [720]  Next 
}
// [721]  mClasses = sbClass.ToString 
_B._mclasses=_sbclass.toString();
// [722]  Return mClasses 
return _B._mclasses;
// End Sub
};

// [725] Sub setClasses(varClasses As String) 
_B.setclasses=function(_varclasses) {
// [726]  AddClass(varClasses) 
_B.addclass(_varclasses,_B);
// End Sub
};

// [730] public Sub setStyle(varStyle As String) 
_B.setstyle=function(_varstyle) {
// [731]  setStyles(varStyle) 
_B.setstyles(_varstyle,_B);
// End Sub
};

// [735] public Sub getStyle() As String 
_B.getstyle=function() {
var _sbstyle,_k,_v;
// [736]  Dim sbStyle As StringBuilder 
_sbstyle=new StringBuilder();
// [737]  sbStyle.Initialize 
_sbstyle.init();
_sbstyle.isinitialized=true;
// [738]  sbStyle.Append( {319} ) 
_sbstyle.append("{");
// [739]  For Each k As String In styleList.Keys 
var _kKeys = Object.keys(_B._stylelist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [740]  Dim v As String = styleList.Get(k) 
_v=_B._stylelist[_k];
// [741]  sbStyle.Append(k).Append( {320} ).Append(v).Append( {321} ) 
_sbstyle.append(_k).append(":").append(_v).append(",");
// [742]  Next 
}
// [743]  sbStyle.Append( {322} ) 
_sbstyle.append("}");
// [744]  mStyle = sbStyle.ToString 
_B._mstyle=_sbstyle.toString();
// [745]  Return mStyle 
return _B._mstyle;
// End Sub
};

// [749] public Sub setAttributes(varAttributes As String) 
_B.setattributes=function(_varattributes) {
var _mxitems,_mt,_k,_v;
// [750]  Dim mxItems As List = BANanoShared.StrParse( {323} , varAttributes) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varattributes);
// [751]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [752]  Dim k As String = BANanoShared.MvField(mt,1, {324} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [753]  Dim v As String = BANanoShared.MvField(mt,2, {325} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [754]  If mElement <> Null Then 
if (_B._melement!=null) {
// [755]  mElement.SetAttr(k, v) 
_B._melement.attr(_k,_v);
// [756]  Else 
} else {
// [757]  attributeList.put(k, v) 
_B._attributelist[_k]=_v;
// [758]  End If 
}
// [759]  Next 
}
// End Sub
};

// [763] public Sub setStyles(varStyles As String) 
_B.setstyles=function(_varstyles) {
var _mxitems,_mt,_k,_v;
// [764]  Dim mxItems As List = BANanoShared.StrParse( {326} , varStyles) 
_mxitems=_banano_bananovuetifyad3_bananoshared.strparse(";",_varstyles);
// [765]  For Each mt As String In mxItems 
for (var _mtindex=0;_mtindex<_mxitems.length;_mtindex++) {
_mt=_mxitems[_mtindex];
// [766]  Dim k As String = BANanoShared.MvField(mt,1, {327} ) 
_k=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,1,"=");
// [767]  Dim v As String = BANanoShared.MvField(mt,2, {328} ) 
_v=_banano_bananovuetifyad3_bananoshared.mvfield(_mt,2,"=");
// [768]  AddStyle(k, v) 
_B.addstyle(_k,_v,_B);
// [769]  Next 
}
// End Sub
};

// [773] public Sub getAttributes() As String 
_B.getattributes=function() {
var _sbattr,_k,_v;
// [774]  Dim sbAttr As StringBuilder 
_sbattr=new StringBuilder();
// [775]  sbAttr.Initialize 
_sbattr.init();
_sbattr.isinitialized=true;
// [776]  For Each k As String In attributeList.Keys 
var _kKeys = Object.keys(_B._attributelist);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [777]  Dim v As String = attributeList.Get(k) 
_v=_B._attributelist[_k];
// [778]  sbAttr.Append(k).Append( {329} ).Append(v).Append( {330} ) 
_sbattr.append(_k).append("=").append(_v).append(";");
// [779]  Next 
}
// [780]  mAttributes = sbAttr.ToString 
_B._mattributes=_sbattr.toString();
// [781]  Return mAttributes 
return _B._mattributes;
// End Sub
};

// [784] public Sub setVElse(varVElse As String) 
_B.setvelse=function(_varvelse) {
// [785]  AddAttr( {331} , varVElse) 
_B.addattr("v-else",_varvelse,_B);
// [786]  stVElse = varVElse 
_B._stvelse=_varvelse;
// End Sub
};

// [789] public Sub getVElse() As String 
_B.getvelse=function() {
// [790]  Return stVElse 
return _B._stvelse;
// End Sub
};

// [793] public Sub setVElseIf(varVElseIf As String) 
_B.setvelseif=function(_varvelseif) {
// [794]  AddAttr( {332} , varVElseIf) 
_B.addattr("v-else-if",_varvelseif,_B);
// [795]  stVElseIf = varVElseIf 
_B._stvelseif=_varvelseif;
// End Sub
};

// [798] public Sub getVElseIf() As String 
_B.getvelseif=function() {
// [799]  Return stVElseIf 
return _B._stvelseif;
// End Sub
};

// [802] public Sub setVIf(varVIf As String) 
_B.setvif=function(_varvif) {
// [803]  AddAttr( {333} , varVIf) 
_B.addattr("v-if",_varvif,_B);
// [804]  stVIf = varVIf 
_B._stvif=_varvif;
// End Sub
};

// [807] public Sub getVIf() As String 
_B.getvif=function() {
// [808]  Return stVIf 
return _B._stvif;
// End Sub
};

// [811] public Sub setVShow(varVShow As String) 
_B.setvshow=function(_varvshow) {
// [812]  AddAttr( {334} , varVShow) 
_B.addattr("v-show",_varvshow,_B);
// [813]  stVShow = varVShow 
_B._stvshow=_varvshow;
// End Sub
};

// [816] public Sub getVShow() As String 
_B.getvshow=function() {
// [817]  Return stVShow 
return _B._stvshow;
// End Sub
};

// [821] Sub AddChild(child As String) 
_B.addchild=function(_child) {
// [822]  mElement.Append(child) 
_B._melement.append(_child);
// End Sub
};

// [826] Sub SetCallBack(methodName As String, cb As BANanoObject) 
_B.setcallback=function(_methodname,_cb) {
// [827]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [828]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// End Sub
};

// [831] private Sub SetEvent(eventName As String, attrName As String, eventValue As String) 
_B.setevent=function(_eventname,_attrname,_eventvalue) {
var _sname,_scode,_e,_cb;
// [832]  Dim sName As String = {32} 
_sname="" + _B._meventname + "_" + _eventname + "";
// [833]  sName = sName.tolowercase 
_sname=_sname.toLowerCase();
// [834]  attrName = attrName.tolowercase 
_attrname=_attrname.toLowerCase();
// [835]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [836]  If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = {335} 
if (is.undefined(_eventvalue) || is.null(_eventvalue)) {_eventvalue="";}
// [837]  Dim sCode As String = {33} 
_scode="" + _sname + "(" + _eventvalue + ")";
// [838]  AddAttr( {34} , sCode) 
_B.addattr("v-on:" + _attrname + "",_scode,_B);
// [840]  Dim e As Object 'ignore 
_e={};
// [841]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [842]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [845] Sub SetOnEvent(eventHandler As Object, eventName As String, attrName As String, eventValue As String) 
_B.setonevent=function(_eventhandler,_eventname,_attrname,_eventvalue) {
var _scode,_e,_cb;
// [846]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [847]  attrName = attrName.tolowercase 
_attrname=_attrname.toLowerCase();
// [848]  If SubExists(eventHandler, eventName) = False Then Return 
if ((typeof _eventhandler[(_eventname).toLowerCase()]==="function")==false) { return ;}
// [849]  If BANano.IsUndefined(eventValue) Or BANano.IsNull(eventValue) Then eventValue = {336} 
if (is.undefined(_eventvalue) || is.null(_eventvalue)) {_eventvalue="";}
// [850]  Dim sCode As String = {35} 
_scode="" + _eventname + "(" + _eventvalue + ")";
// [851]  AddAttr( {36} , sCode) 
_B.addattr("v-on:" + _attrname + "",_scode,_B);
// [853]  Dim e As Object 'ignore 
_e={};
// [854]  Dim cb As BANanoObject = BANano.CallBack(eventHandler, eventName, Array(e)) 
_cb=function(_e) {if (typeof _eventhandler[(_eventname).toLowerCase()]==="function") {return _eventhandler[(_eventname).toLowerCase()](_e,_B)};};
// [855]  methods.Put(eventName, cb) 
_B._methods[_eventname]=_cb;
// End Sub
};

// [860] Sub OnMulti(EventHandler As String, eventName As String, args As String) 'ignoredeadcode 
_B.onmulti=function(_eventhandler,_eventname,_args) {
var _seventname,_sname,_scode,_e,_cb;
// [861]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [862]  EventHandler = EventHandler.tolowercase 
_eventhandler=_eventhandler.toLowerCase();
// [864]  Dim seventname As String = eventName 
_seventname=_eventname;
// [865]  seventname = seventname.Replace( {337} , {338} ) 
_seventname=_seventname.split(".").join("");
// [866]  seventname = seventname.Replace( {339} , {340} ) 
_seventname=_seventname.split(":").join("");
// [868]  Dim sName As String = {37} 
_sname="" + _eventhandler + "_" + _seventname + "";
// [869]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [871]  If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = {341} 
if (is.undefined(_args) || is.null(_args)) {_args="";}
// [872]  Dim sCode As String = {38} 
_scode="" + _sname + "(" + _args + ")";
// [873]  AddAttr( {39} , sCode) 
_B.addattr("v-on:" + _eventname + "",_scode,_B);
// [875]  Dim e As BANanoEvent 'ignore 
_e=null;
// [876]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [877]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [881] Sub On(eventName As String, args As String) 'ignoredeadcode 
_B.on=function(_eventname,_args) {
var _seventname,_sname,_scode,_e,_cb;
// [882]  eventName = eventName.tolowercase 
_eventname=_eventname.toLowerCase();
// [884]  Dim seventname As String = eventName 
_seventname=_eventname;
// [885]  seventname = seventname.Replace( {342} , {343} ) 
_seventname=_seventname.split(".").join("");
// [886]  seventname = seventname.Replace( {344} , {345} ) 
_seventname=_seventname.split(":").join("");
// [888]  Dim sName As String = {40} 
_sname="" + _B._meventname + "_" + _seventname + "";
// [889]  If SubExists(mCallBack, sName) = False Then Return 
if ((typeof _B._mcallback[(_sname).toLowerCase()]==="function")==false) { return ;}
// [891]  If BANano.IsUndefined(args) Or BANano.IsNull(args) Then args = {346} 
if (is.undefined(_args) || is.null(_args)) {_args="";}
// [892]  Dim sCode As String = {41} 
_scode="" + _sname + "(" + _args + ")";
// [893]  AddAttr( {42} , sCode) 
_B.addattr("v-on:" + _eventname + "",_scode,_B);
// [895]  Dim e As BANanoEvent 'ignore 
_e=null;
// [896]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_sname).toLowerCase()]==="function") {return _B._mcallback[(_sname).toLowerCase()](_e,_B)};};
// [897]  methods.Put(sName, cb) 
_B._methods[_sname]=_cb;
// End Sub
};

// [901] Sub IsValidID(idName As String) As Boolean 
_B.isvalidid=function(_idname) {
var _slen,_i,_mout;
// [902]  If idName = {347} Then Return True 
if (_idname=="") { return true;}
// [903]  Dim slen As Int = idName.Length 
_slen=_idname.length;
// [904]  Dim i As Int = 0 
_i=0;
// [905]  For i = 0 To slen - 1 
for (_i=0;_i<=_slen-1;_i++) {
// [906]  Dim mout As String = idName.CharAt(i) 
_mout=_idname.charAt(_i);
// [907]  If {348} .IndexOf(mout) = -1 Then 
if ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".indexOf(_mout)==-1) {
// [908]  Return False 
return false;
// [909]  End If 
}
// [910]  Next 
}
// [911]  Return True 
return true;
// End Sub
};

// [915] Sub AppendElement(parent As String, tag As String, id As String, text As String) As BANanoElement 
_B.appendelement=function(_parent,_tag,_id,_text) {
var _item,_el;
// [916]  parent = parent.ToLowerCase 
_parent=_parent.toLowerCase();
// [917]  parent = parent.Replace( {349} , {350} ) 
_parent=_parent.split("#").join("");
// [918]  Dim item As String = {43} 
_item="<" + _tag + " id=\"" + _id + "\"></" + _tag + ">";
// [919]  Dim el As BANanoElement = BANano.GetElement( {44} ).Append(item).Get( {45} ) 
_el=u("#" + _parent + "").append(_item).find("#" + _id + "").bananofirst();
// [920]  el.SetText(text) 
_el.text(_text);
// [921]  Return el 
return _el;
// End Sub
};

// [925] Sub AppendElement1(parentID As String, tag As String, id As String, text As String, props As Map, styles As Map, classes As String) As BANanoElement 
_B.appendelement1=function(_parentid,_tag,_id,_text,_props,_styles,_classes) {
var _el,_k,_v,_strstyle;
// [926]  parentID = parentID.ToLowerCase 
_parentid=_parentid.toLowerCase();
// [927]  parentID = parentID.Replace( {351} , {352} ) 
_parentid=_parentid.split("#").join("");
// [928]  id = id.tolowercase 
_id=_id.toLowerCase();
// [929]  Dim el As BANanoElement = BANano.GetElement( {46} ).Append( {47} ).Get( {48} ) 
_el=u("#" + _parentid + "").append("<" + _tag + " id=\"" + _id + "\"></" + _tag + ">").find("#" + _id + "").bananofirst();
// [930]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [931]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [932]  Dim v As String = props.Get(k) 
_v=_props[_k];
// [933]  el.SetAttr(k, v) 
_el.attr(_k,_v);
// [934]  Next 
}
// [935]  End If 
}
// [937]  If BANano.IsNull(styles) = False Then 
if (is.null(_styles)==false) {
// [938]  Dim strStyle As String = BANano.ToJson(styles) 
_strstyle=JSON.stringify(_styles);
// [939]  el.SetStyle(strStyle) 
_el.css(JSON.parse(_strstyle));
// [940]  End If 
}
// [942]  If classes <> {353} Then el.AddClass(classes) 
if (_classes!="") {_el.addClass(_classes);}
// [943]  el.settext(text) 
_el.text(_text);
// [944]  Return el 
return _el;
// End Sub
};

// [947] Sub CStr(o As Object) As String 
_B.cstr=function(_o) {
// [948]  If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = {354} 
if (is.undefined(_o) || is.undefined(_o)) {_o="";}
// [949]  Return {355} & o 
return ""+_o;
// End Sub
};

// [953] Sub Map2List(moptions As Map, sourcefield As String, displayfield As String) As List 
_B.map2list=function(_moptions,_sourcefield,_displayfield) {
var _recs,_k,_v,_nrec;
// [954]  sourcefield = sourcefield.ToLowerCase 
_sourcefield=_sourcefield.toLowerCase();
// [955]  displayfield = displayfield.ToLowerCase 
_displayfield=_displayfield.toLowerCase();
// [956]  Dim recs As List 
_recs=[];
// [957]  recs.Initialize 
_recs.length=0;
// [958]  For Each k As String In moptions.Keys 
var _kKeys = Object.keys(_moptions);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [959]  Dim v As String = moptions.Get(k) 
_v=_moptions[_k];
// [960]  k = CStr(k) 
_k=_B.cstr(_k,_B);
// [961]  v = CStr(v) 
_v=_B.cstr(_v,_B);
// [962]  Dim nrec As Map = CreateMap() 
_nrec={};
// [963]  nrec.Put(sourcefield, k) 
_nrec[_sourcefield]=_k;
// [964]  nrec.Put(displayfield, v) 
_nrec[_displayfield]=_v;
// [965]  recs.Add(nrec) 
_recs.push(_nrec);
// [966]  Next 
}
// [967]  Return recs 
return _recs;
// End Sub
};

// [971] Sub AddSave() 
_B.addsave=function() {
var _colfield,_dt;
// [972]  Dim colField As String = {356} 
_colfield="save";
// [973]  Dim dt As DataTableColumn = NewDataTableColumn(colField, {357} ) 
_dt=_B.newdatatablecolumn(_colfield,"Save",_B);
// [974]  AddExclusion( {358} ) 
_B.addexclusion("save",_B);
// [975]  dt.filterable = False 
_dt._filterable=false;
// [976]  dt.ColType = COLUMN_SAVE 
_dt._coltype=_B._column_save;
// [977]  dt.sortable = False 
_dt._sortable=false;
// [978]  dt.align = ALIGN_CENTER 
_dt._align=_B._align_center;
// [979]  dt.icon = {359} 
_dt._icon="mdi-content-save";
// [980]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [984] Sub AddCancel() 
_B.addcancel=function() {
var _colfield,_dt;
// [985]  Dim colField As String = {360} 
_colfield="cancel";
// [986]  Dim dt As DataTableColumn = NewDataTableColumn(colField, {361} ) 
_dt=_B.newdatatablecolumn(_colfield,"Cancel",_B);
// [987]  AddExclusion(colField) 
_B.addexclusion(_colfield,_B);
// [988]  dt.filterable = False 
_dt._filterable=false;
// [989]  dt.ColType = COLUMN_CANCEL 
_dt._coltype=_B._column_cancel;
// [990]  dt.sortable = False 
_dt._sortable=false;
// [991]  dt.align = ALIGN_CENTER 
_dt._align=_B._align_center;
// [992]  dt.icon = {362} 
_dt._icon="mdi-cancel";
// [993]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [998] Sub AddEdit() 
_B.addedit=function() {
var _colfield,_dt;
// [999]  Dim colField As String = {363} 
_colfield="edit";
// [1000]  Dim dt As DataTableColumn = NewDataTableColumn(colField, {364} ) 
_dt=_B.newdatatablecolumn(_colfield,"Edit",_B);
// [1001]  AddExclusion(colField) 
_B.addexclusion(_colfield,_B);
// [1002]  dt.filterable = False 
_dt._filterable=false;
// [1003]  dt.ColType = COLUMN_EDIT 
_dt._coltype=_B._column_edit;
// [1004]  dt.sortable = False 
_dt._sortable=false;
// [1005]  dt.align = ALIGN_CENTER 
_dt._align=_B._align_center;
// [1006]  dt.icon = {365} 
_dt._icon="mdi-pencil";
// [1007]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1011] Sub AddDelete() 
_B.adddelete=function() {
var _colfield,_dt;
// [1012]  Dim colField As String = {366} 
_colfield="delete";
// [1013]  Dim dt As DataTableColumn = NewDataTableColumn(colField, {367} ) 
_dt=_B.newdatatablecolumn(_colfield,"Delete",_B);
// [1014]  AddExclusion(colField) 
_B.addexclusion(_colfield,_B);
// [1015]  dt.filterable = False 
_dt._filterable=false;
// [1016]  dt.ColType = COLUMN_EDIT 
_dt._coltype=_B._column_edit;
// [1017]  dt.sortable = False 
_dt._sortable=false;
// [1018]  dt.align = ALIGN_CENTER 
_dt._align=_B._align_center;
// [1019]  dt.icon = {368} 
_dt._icon="mdi-delete";
// [1020]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1024] Sub AddIcon(colField As String, colTitle As String, colIcon As String) 
_B.addicon=function(_colfield,_coltitle,_colicon) {
// [1025]  AddAction(colField, colTitle, colIcon) 
_B.addaction(_colfield,_coltitle,_colicon,_B);
// End Sub
};

// [1029] Sub AddAction(colField As String, colTitle As String, colIcon As String) 
_B.addaction=function(_colfield,_coltitle,_colicon) {
var _dt;
// [1030]  AddExclusion(colField) 
_B.addexclusion(_colfield,_B);
// [1031]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1032]  AddExclusion(colField) 
_B.addexclusion(_colfield,_B);
// [1033]  dt.filterable = False 
_dt._filterable=false;
// [1034]  dt.ColType = COLUMN_ACTION 
_dt._coltype=_B._column_action;
// [1035]  dt.sortable = False 
_dt._sortable=false;
// [1036]  dt.align = ALIGN_CENTER 
_dt._align=_B._align_center;
// [1037]  dt.icon = colIcon 
_dt._icon=_colicon;
// [1038]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1042] Sub AddIconView(colField As String, colTitle As String, colColor As String) 
_B.addiconview=function(_colfield,_coltitle,_colcolor) {
var _dt;
// [1043]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1044]  dt.filterable = False 
_dt._filterable=false;
// [1045]  dt.ColType = COLUMN_ICON 
_dt._coltype=_B._column_icon;
// [1046]  dt.sortable = False 
_dt._sortable=false;
// [1047]  If colColor <> {369} Then dt.color = colColor 
if (_colcolor!="") {_dt._color=_colcolor;}
// [1048]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1052] Sub AddChip(colField As String, colTitle As String, colColor As String) 
_B.addchip=function(_colfield,_coltitle,_colcolor) {
var _dt;
// [1053]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1054]  dt.filterable = False 
_dt._filterable=false;
// [1055]  dt.ColType = COLUMN_CHIP 
_dt._coltype=_B._column_chip;
// [1056]  dt.sortable = False 
_dt._sortable=false;
// [1057]  If colColor <> {370} Then dt.color = colColor 
if (_colcolor!="") {_dt._color=_colcolor;}
// [1058]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1062] Sub AddSwitch(colField As String, colTitle As String) 
_B.addswitch=function(_colfield,_coltitle) {
var _dt;
// [1063]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1064]  dt.filterable = False 
_dt._filterable=false;
// [1065]  dt.ColType = COLUMN_SWITCH 
_dt._coltype=_B._column_switch;
// [1066]  dt.sortable = False 
_dt._sortable=false;
// [1067]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1071] Sub SetColumnsSwitch(colFields As List) 
_B.setcolumnsswitch=function(_colfields) {
var _col,_colx;
// [1072]  For Each col As String In colFields 
for (var _colindex=0;_colindex<_colfields.length;_colindex++) {
_col=_colfields[_colindex];
// [1073]  Dim colx As DataTableColumn = columnsM.Get(col) 
_colx=_B._columnsm[_col];
// [1074]  colx.ColType = COLUMN_SWITCH 
_colx._coltype=_B._column_switch;
// [1075]  colx.filterable = False 
_colx._filterable=false;
// [1076]  colx.sortable = False 
_colx._sortable=false;
// [1077]  columnsM.Put(col, colx) 
_B._columnsm[_col]=_colx;
// [1078]  Next 
}
// End Sub
};

// [1082] Sub SetColumnsLinks(colFields As List) 
_B.setcolumnslinks=function(_colfields) {
var _col;
// [1083]  For Each col As String In colFields 
for (var _colindex=0;_colindex<_colfields.length;_colindex++) {
_col=_colfields[_colindex];
// [1084]  SetColumnType(col, COLUMN_LINK) 
_B.setcolumntype(_col,_B._column_link,_B);
// [1085]  Next 
}
// End Sub
};

// [1089] Sub SetColumnsCheckBox(colFields As List) 
_B.setcolumnscheckbox=function(_colfields) {
var _col,_colx;
// [1090]  For Each col As String In colFields 
for (var _colindex=0;_colindex<_colfields.length;_colindex++) {
_col=_colfields[_colindex];
// [1091]  Dim colx As DataTableColumn = columnsM.Get(col) 
_colx=_B._columnsm[_col];
// [1092]  colx.ColType = COLUMN_CHECKBOX 
_colx._coltype=_B._column_checkbox;
// [1093]  colx.filterable = False 
_colx._filterable=false;
// [1094]  colx.sortable = False 
_colx._sortable=false;
// [1095]  columnsM.Put(col, colx) 
_B._columnsm[_col]=_colx;
// [1096]  Next 
}
// End Sub
};

// [1100] Sub AddImage(colField As String, colTitle As String) 
_B.addimage=function(_colfield,_coltitle) {
var _dt;
// [1101]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1102]  dt.filterable = False 
_dt._filterable=false;
// [1103]  dt.ColType = COLUMN_IMAGE 
_dt._coltype=_B._column_image;
// [1104]  dt.sortable = False 
_dt._sortable=false;
// [1105]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1109] Sub AddLink(colField As String, colTitle As String, target As String) 
_B.addlink=function(_colfield,_coltitle,_target) {
var _dt;
// [1110]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1111]  dt.ColType = COLUMN_LINK 
_dt._coltype=_B._column_link;
// [1112]  dt.target = target 
_dt._target=_target;
// [1113]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1117] Sub AddAvatarImg(colField As String, colTitle As String) 
_B.addavatarimg=function(_colfield,_coltitle) {
var _dt;
// [1118]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1119]  dt.ColType = COLUMN_AVATARIMG 
_dt._coltype=_B._column_avatarimg;
// [1120]  dt.filterable = False 
_dt._filterable=false;
// [1121]  dt.sortable = False 
_dt._sortable=false;
// [1122]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1126] Sub AddRating(colField As String, colTitle As String) 
_B.addrating=function(_colfield,_coltitle) {
var _dt;
// [1127]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1128]  dt.ColType = COLUMN_RATING 
_dt._coltype=_B._column_rating;
// [1129]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1133] Sub AddProgressCircular(colField As String, colTitle As String) 
_B.addprogresscircular=function(_colfield,_coltitle) {
var _dt;
// [1134]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1135]  dt.ColType = COLUMN_PROGRESS_CIRCULAR 
_dt._coltype=_B._column_progress_circular;
// [1136]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1140] Sub AddProgressLinear(colField As String, colTitle As String) 
_B.addprogresslinear=function(_colfield,_coltitle) {
var _dt;
// [1141]  Dim dt As DataTableColumn = NewDataTableColumn(colField, colTitle) 
_dt=_B.newdatatablecolumn(_colfield,_coltitle,_B);
// [1142]  dt.ColType = COLUMN_PROGRESS_LINEAR 
_dt._coltype=_B._column_progress_linear;
// [1143]  columnsM.Put(colField, dt) 
_B._columnsm[_colfield]=_dt;
// End Sub
};

// [1147] Sub AddEditThrash 
_B.addeditthrash=function() {
// [1148]  AddAction( {371} , {372} , {373} ) 
_B.addaction("edit","Edit","mdi-pencil",_B);
// [1149]  AddAction( {374} , {375} , {376} ) 
_B.addaction("delete","Delete","mdi-delete",_B);
// End Sub
};

// [1153] Sub SetDelete(b As Boolean) 
_B.setdelete=function(_b) {
// [1154]  If b = False Then Return 
if (_b==false) { return ;}
// [1155]  AddAction( {377} , {378} , {379} ) 
_B.addaction("delete","Delete","mdi-delete",_B);
// End Sub
};

// [1159] Sub SetEdit(b As Boolean) 
_B.setedit=function(_b) {
// [1160]  If b = False Then Return 
if (_b==false) { return ;}
// [1161]  AddAction( {380} , {381} , {382} ) 
_B.addaction("edit","Edit","mdi-pencil",_B);
// End Sub
};

// [1165] Sub SetSave(b As Boolean) 
_B.setsave=function(_b) {
// [1166]  If b = False Then Return 
if (_b==false) { return ;}
// [1167]  AddSave 
_B.addsave(_B);
// End Sub
};

// [1171] Sub SetCancel(b As Boolean) 
_B.setcancel=function(_b) {
// [1172]  If b = False Then Return 
if (_b==false) { return ;}
// [1173]  AddCancel 
_B.addcancel(_B);
// End Sub
};

// [1177] Sub SetDownload(b As Boolean) 
_B.setdownload=function(_b) {
// [1178]  If b = False Then Return 
if (_b==false) { return ;}
// [1179]  AddDownload 
_B.adddownload(_B);
// End Sub
};

// [1183] Sub AddDownload 
_B.adddownload=function() {
// [1184]  AddIcon( {383} , {384} , {385} ) 
_B.addicon("download","Download","mdi-download",_B);
// End Sub
};

// [1188] Sub AddMenuH 
_B.addmenuh=function() {
// [1189]  AddIcon( {386} , {387} , {388} ) 
_B.addicon("menu","Menu","mdi-dots-horizontal",_B);
// End Sub
};

// [1193] Sub SetMenu(b As Boolean) 
_B.setmenu=function(_b) {
// [1194]  If b = False Then Return 
if (_b==false) { return ;}
// [1195]  AddMenuV 
_B.addmenuv(_B);
// End Sub
};

// [1199] Sub AddMenuV 
_B.addmenuv=function() {
// [1200]  AddIcon( {389} , {390} , {391} ) 
_B.addicon("menu","Menu","mdi-dots-vertical",_B);
// End Sub
};

// [1204] Sub SetClone(b As Boolean) 
_B.setclone=function(_b) {
// [1205]  If b = False Then Return 
if (_b==false) { return ;}
// [1206]  AddClone 
_B.addclone(_B);
// End Sub
};

// [1210] Sub AddClone 
_B.addclone=function() {
// [1211]  AddIcon( {392} , {393} , {394} ) 
_B.addicon("clone","Clone","mdi-content-copy",_B);
// End Sub
};

// [1215] Sub SetPrint(b As Boolean) 
_B.setprint=function(_b) {
// [1216]  If b = False Then Return 
if (_b==false) { return ;}
// [1217]  AddPrint 
_B.addprint(_B);
// End Sub
};

// [1221] Sub AddPrint 
_B.addprint=function() {
// [1222]  AddIcon( {395} , {396} , {397} ) 
_B.addicon("print","Print","mdi-printer",_B);
// End Sub
};

// [1226] Sub SetDataSource(ds As List) 
_B.setdatasource=function(_ds) {
// [1227]  Items.Initialize 
_B._items.length=0;
// [1228]  SetData(itemsname, ds) 
_B.setdata(_B._itemsname,_ds,_B);
// End Sub
};

// [1232] Sub AddExclusion(colKey As String) 
_B.addexclusion=function(_colkey) {
// [1233]  exclusions.Add(colKey) 
_B._exclusions.push(_colkey);
// End Sub
};

// [1237] Sub AddColumn(colName As String, colTitle As String) 
_B.addcolumn=function(_colname,_coltitle) {
// [1238]  AddColumn1(colName, colTitle, COLUMN_TEXT, 0, True, ALIGN_LEFT) 
_B.addcolumn1(_colname,_coltitle,_B._column_text,0,true,_B._align_left,_B);
// End Sub
};

// [1244] Sub AddDateColumn(colName As String, colTitle As String, colFormat As String) 
_B.adddatecolumn=function(_colname,_coltitle,_colformat) {
// [1245]  AddColumn(colName, colTitle) 
_B.addcolumn(_colname,_coltitle,_B);
// [1246]  SetColumnDateFormat(colName, colFormat) 
_B.setcolumndateformat(_colname,_colformat,_B);
// End Sub
};

// [1252] Sub AddDateTimeColumnDate(colName As String, colTitle As String, colFormat As String) 
_B.adddatetimecolumndate=function(_colname,_coltitle,_colformat) {
// [1253]  AddColumn(colName, colTitle) 
_B.addcolumn(_colname,_coltitle,_B);
// [1254]  SetColumnDateTimeFormat(colName, colFormat) 
_B.setcolumndatetimeformat(_colname,_colformat,_B);
// End Sub
};

// [1260] Sub AddNumberColumn(colName As String, colTitle As String, colFormat As String) 
_B.addnumbercolumn=function(_colname,_coltitle,_colformat) {
// [1261]  AddColumn(colName, colTitle) 
_B.addcolumn(_colname,_coltitle,_B);
// [1262]  SetColumnNumberFormat(colName, colFormat) 
_B.setcolumnnumberformat(_colname,_colformat,_B);
// End Sub
};

// [1268] Sub AddButtonColumn(colName As String, colTitle As String) 
_B.addbuttoncolumn=function(_colname,_coltitle) {
// [1269]  AddColumn(colName, colTitle) 
_B.addcolumn(_colname,_coltitle,_B);
// [1270]  SetColumnType(colName, COLUMN_BUTTON) 
_B.setcolumntype(_colname,_B._column_button,_B);
// [1271]  SetButtonLabel(colName, colTitle) 
_B.setbuttonlabel(_colname,_coltitle,_B);
// End Sub
};

// [1278] Sub AddLinkColumn(colName As String, colTitle As String, target As String) 
_B.addlinkcolumn=function(_colname,_coltitle,_target) {
// [1279]  AddColumn(colName, colTitle) 
_B.addcolumn(_colname,_coltitle,_B);
// [1280]  SetColumnType(colName, COLUMN_LINK) 
_B.setcolumntype(_colname,_B._column_link,_B);
// [1281]  SetColumnTarget(colName, target) 
_B.setcolumntarget(_colname,_target,_B);
// End Sub
};

// [1286] Sub AddColumns(flds As Map) 
_B.addcolumns=function(_flds) {
var _k,_v;
// [1287]  For Each k As String In flds.Keys 
var _kKeys = Object.keys(_flds);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1288]  Dim v As String = flds.Get(k) 
_v=_flds[_k];
// [1289]  AddColumn(k, v) 
_B.addcolumn(_k,_v,_B);
// [1290]  Next 
}
// End Sub
};

// [1295] Sub AddColumn1(colName As String, colTitle As String, colType As String, colWidth As Int, colSortable As Boolean, colAlign As String) 
_B.addcolumn1=function(_colname,_coltitle,_coltype,_colwidth,_colsortable,_colalign) {
var _nf;
// [1296]  masterColumns.Add(colName) 
_B._mastercolumns.push(_colname);
// [1297]  If hasFilters Then 
if (_B._hasfilters) {
// [1298]  If exclusions.IndexOf(colName) = -1 Then 
if (_B._exclusions.indexOf(_colname)==-1) {
// [1299]  If filters.IndexOf(colName) = -1 Then Return 
if (_B._filters.indexOf(_colname)==-1) { return ;}
// [1300]  End If 
}
// [1301]  End If 
}
// [1303]  Dim nf As DataTableColumn = NewDataTableColumn(colName, colTitle) 
_nf=_B.newdatatablecolumn(_colname,_coltitle,_B);
// [1304]  nf.align = colAlign 
_nf._align=_colalign;
// [1305]  nf.sortable = colSortable 
_nf._sortable=_colsortable;
// [1306]  nf.className = Null 
_nf._classname=null;
// [1307]  nf.width = colWidth 
_nf._width=_colwidth;
// [1308]  nf.ColType = colType 
_nf._coltype=_coltype;
// [1309]  columnsM.Put(colName, nf) 
_B._columnsm[_colname]=_nf;
// [1310]  SetColumnType(colName, colType) 
_B.setcolumntype(_colname,_coltype,_B);
// End Sub
};

// [1313] private Sub NewDataTableColumn(colname As String, coltitle As String) As DataTableColumn 
_B.newdatatablecolumn=function(_colname,_coltitle) {
var _nf;
// [1314]  Dim nf As DataTableColumn 
_nf= new banano_bananovuetifyad3_datatablecolumn();
// [1315]  nf.Initialize 
_nf.initialize();
// [1316]  nf.text = coltitle 
_nf._text=_coltitle;
// [1317]  nf.value = colname 
_nf._value=_colname;
// [1318]  nf.align = ALIGN_LEFT 
_nf._align=_B._align_left;
// [1319]  nf.sortable = True 
_nf._sortable=true;
// [1320]  nf.filterable = True 
_nf._filterable=true;
// [1321]  nf.divider = False 
_nf._divider=false;
// [1322]  nf.className = Null 
_nf._classname=null;
// [1323]  nf.width = 0 
_nf._width=0;
// [1324]  nf.filter = Null 
_nf._filter=null;
// [1325]  nf.sort = Null 
_nf._sort=null;
// [1326]  nf.ColType = COLUMN_TEXT 
_nf._coltype=_B._column_text;
// [1327]  nf.Disabled = False 
_nf._disabled=false;
// [1328]  nf.valueFormat = {411} 
_nf._valueformat="";
// [1329]  nf.bindTotals = {412} 
_nf._bindtotals="";
// [1330]  nf.hasTotal = False 
_nf._hastotal=false;
// [1331]  nf.depressed = False 
_nf._depressed=false;
// [1332]  nf.rounded = False 
_nf._rounded=false;
// [1333]  nf.dark = False 
_nf._dark=false;
// [1334]  nf.label = {413} 
_nf._label="";
// [1335]  nf.color = {414} 
_nf._color="";
// [1336]  nf.outlined = False 
_nf._outlined=false;
// [1337]  nf.shaped = False 
_nf._shaped=false;
// [1338]  nf.colprops.Initialize 
_nf._colprops={};
// [1339]  Return nf 
return _nf;
// End Sub
};

// [1343] Sub SetColumnAttr(colName As String, attr As String, value As String) 
_B.setcolumnattr=function(_colname,_attr,_value) {
var _nf;
// [1344]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1345]  Dim nf As DataTableColumn = columnsM.Get(colName) 
_nf=_B._columnsm[_colname];
// [1346]  nf.colprops.put(attr, value) 
_nf._colprops[_attr]=_value;
// [1347]  columnsM.Put(colName, nf) 
_B._columnsm[_colname]=_nf;
// [1348]  End If 
}
// End Sub
};

// [1351] Sub SetColumnTarget(colName As String, target As String) 
_B.setcolumntarget=function(_colname,_target) {
var _col;
// [1352]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1353]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1354]  col.target = target 
_col._target=_target;
// [1355]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1356]  End If 
}
// End Sub
};

// [1360] Sub SetColumnPrefix(colName As String, prefix As String) 
_B.setcolumnprefix=function(_colname,_prefix) {
var _col;
// [1361]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1362]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1363]  col.prefix = prefix 
_col._prefix=_prefix;
// [1364]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1365]  End If 
}
// End Sub
};

// [1371] Sub SetColumnTotal(colName As String, callBackMethod As String) 
_B.setcolumntotal=function(_colname,_callbackmethod) {
var _col;
// [1372]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1373]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1374]  col.bindTotals = callBackMethod 
_col._bindtotals=_callbackmethod;
// [1375]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1376]  hasTotals = True 
_B._hastotals=true;
// [1377]  End If 
}
// End Sub
};

// [1381] Sub SetImageDimensions(colName As String, imgHeight As String, imgWidth As String) 
_B.setimagedimensions=function(_colname,_imgheight,_imgwidth) {
var _col;
// [1382]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1383]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1384]  col.imgHeight = imgHeight 
_col._imgheight=_imgheight;
// [1385]  col.imgWidth = imgWidth 
_col._imgwidth=_imgwidth;
// [1386]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1387]  End If 
}
// End Sub
};

// [1392] Sub SetColumnSortable(colName As String, colSortable As Boolean) 
_B.setcolumnsortable=function(_colname,_colsortable) {
var _col;
// [1393]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1394]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1395]  col.sortable = colSortable 
_col._sortable=_colsortable;
// [1396]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1397]  End If 
}
// End Sub
};

// [1402] Sub SetColumnDisabled(colName As String, colDisabled As Boolean) 
_B.setcolumndisabled=function(_colname,_coldisabled) {
var _col;
// [1403]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1404]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1405]  col.Disabled = colDisabled 
_col._disabled=_coldisabled;
// [1406]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1407]  End If 
}
// End Sub
};

// [1412] Sub SetColumnReadOnly(colName As String, colReadOnly As Boolean) 
_B.setcolumnreadonly=function(_colname,_colreadonly) {
var _col;
// [1413]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1414]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1415]  col.ReadOnly = colReadOnly 
_col._readonly=_colreadonly;
// [1416]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1417]  End If 
}
// End Sub
};

// [1422] Sub SetColumnAlignment(colName As String, colAlign As String) 
_B.setcolumnalignment=function(_colname,_colalign) {
var _col;
// [1423]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1424]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1425]  col.align = colAlign 
_col._align=_colalign;
// [1426]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1427]  End If 
}
// End Sub
};

// [1432] Sub SetColumnIcon(colName As String, icon As String) 
_B.setcolumnicon=function(_colname,_icon) {
var _col;
// [1433]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1434]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1435]  col.icon = icon 
_col._icon=_icon;
// [1436]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1437]  End If 
}
// End Sub
};

// [1442] Sub SetIconDimensions(colName As String, iconSize As String, iconColor As String) 
_B.seticondimensions=function(_colname,_iconsize,_iconcolor) {
var _col;
// [1443]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1444]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1445]  If iconSize <> {415} Then col.iconSize = iconSize 
if (_iconsize!="") {_col._iconsize=_iconsize;}
// [1446]  If iconColor <> {416} Then col.color = iconColor 
if (_iconcolor!="") {_col._color=_iconcolor;}
// [1447]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1448]  End If 
}
// End Sub
};

// [1451] Sub SetIconDimensions1(colName As String, iconSize As String, iconColor As String, columnWidth As String) 
_B.seticondimensions1=function(_colname,_iconsize,_iconcolor,_columnwidth) {
var _col;
// [1452]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1453]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1454]  If iconSize <> {417} Then col.iconSize = iconSize 
if (_iconsize!="") {_col._iconsize=_iconsize;}
// [1455]  If iconColor <> {418} Then col.color = iconColor 
if (_iconcolor!="") {_col._color=_iconcolor;}
// [1456]  If columnWidth <> {419} Then col.width = columnWidth 
if (_columnwidth!="") {_col._width=_columnwidth;}
// [1457]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1458]  End If 
}
// End Sub
};

// [1463] Sub SetProgressCircularDimensions(colName As String, progressColor As String, progressRotate As String, progressSize As String, progressWidth As String) 
_B.setprogresscirculardimensions=function(_colname,_progresscolor,_progressrotate,_progresssize,_progresswidth) {
var _col;
// [1464]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1465]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1466]  col.progressRotate = progressRotate 
_col._progressrotate=_progressrotate;
// [1467]  col.progressSize = progressSize 
_col._progresssize=_progresssize;
// [1468]  col.progressWidth = progressWidth 
_col._progresswidth=_progresswidth;
// [1469]  col.progressColor = progressColor 
_col._progresscolor=_progresscolor;
// [1470]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1471]  End If 
}
// End Sub
};

// [1475] Sub SetProgressLinearDimensions(colName As String, progressColor As String, progressHeight As String, progressShowValue As Boolean) 
_B.setprogresslineardimensions=function(_colname,_progresscolor,_progressheight,_progressshowvalue) {
var _col;
// [1476]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1477]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1478]  col.progressHeight = progressHeight 
_col._progressheight=_progressheight;
// [1479]  col.progressShowValue = progressShowValue 
_col._progressshowvalue=_progressshowvalue;
// [1480]  col.progressColor = progressColor 
_col._progresscolor=_progresscolor;
// [1481]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1482]  End If 
}
// End Sub
};

// [1487] Sub SetButtonDepressed(colName As String) 
_B.setbuttondepressed=function(_colname) {
var _col;
// [1488]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1489]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1490]  col.depressed = True 
_col._depressed=true;
// [1491]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1492]  End If 
}
// End Sub
};

// [1497] Sub SetButtonRounded(colName As String) 
_B.setbuttonrounded=function(_colname) {
var _col;
// [1498]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1499]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1500]  col.rounded = True 
_col._rounded=true;
// [1501]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1502]  End If 
}
// End Sub
};

// [1507] Sub SetButtonShaped(colName As String) 
_B.setbuttonshaped=function(_colname) {
var _col;
// [1508]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1509]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1510]  col.shaped = True 
_col._shaped=true;
// [1511]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1512]  End If 
}
// End Sub
};

// [1519] Sub SetButtonOutlined(colName As String) 
_B.setbuttonoutlined=function(_colname) {
var _col;
// [1520]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1521]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1522]  col.outlined = True 
_col._outlined=true;
// [1523]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1524]  End If 
}
// End Sub
};

// [1529] Sub SetButtonDark(colName As String) 
_B.setbuttondark=function(_colname) {
var _col;
// [1530]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1531]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1532]  col.dark = True 
_col._dark=true;
// [1533]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1534]  End If 
}
// End Sub
};

// [1540] Sub SetButtonLabel(colName As String, label As String) 
_B.setbuttonlabel=function(_colname,_label) {
var _col;
// [1541]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1542]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1543]  col.label = label 
_col._label=_label;
// [1544]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1545]  End If 
}
// End Sub
};

// [1550] Sub SetButtonColor(colName As String, color As String, intensity As String) 
_B.setbuttoncolor=function(_colname,_color,_intensity) {
var _col,_scolor;
// [1551]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1552]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1553]  Dim scolor As String = {49} 
_scolor="" + _color + " " + _intensity + "";
// [1554]  col.color = scolor 
_col._color=_scolor;
// [1555]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1556]  End If 
}
// End Sub
};

// [1561] Sub SetButtonPrimary(colName As String) 
_B.setbuttonprimary=function(_colname) {
var _col;
// [1562]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1563]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1564]  col.color = {420} 
_col._color="primary";
// [1565]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1566]  End If 
}
// End Sub
};

// [1571] Sub SetButtonSuccess(colName As String) 
_B.setbuttonsuccess=function(_colname) {
var _col;
// [1572]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1573]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1574]  col.color = {421} 
_col._color="success";
// [1575]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1576]  End If 
}
// End Sub
};

// [1581] Sub SetButtonError(colName As String) 
_B.setbuttonerror=function(_colname) {
var _col;
// [1582]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1583]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1584]  col.color = {422} 
_col._color="error";
// [1585]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1586]  End If 
}
// End Sub
};

// [1591] Sub SetButtonWarning(colName As String) 
_B.setbuttonwarning=function(_colname) {
var _col;
// [1592]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1593]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1594]  col.color = {423} 
_col._color="warning";
// [1595]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1596]  End If 
}
// End Sub
};

// [1601] Sub SetButtonSecondary(colName As String) 
_B.setbuttonsecondary=function(_colname) {
var _col;
// [1602]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1603]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1604]  col.color = {424} 
_col._color="secondary";
// [1605]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1606]  End If 
}
// End Sub
};

// [1611] Sub SetRatingDimensions(colName As String, ratLength As String, ratColor As String) 
_B.setratingdimensions=function(_colname,_ratlength,_ratcolor) {
var _col;
// [1612]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1613]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1614]  col.iconSize = ratLength 
_col._iconsize=_ratlength;
// [1615]  If ratColor <> {425} Then col.icon = ratColor 
if (_ratcolor!="") {_col._icon=_ratcolor;}
// [1616]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1617]  End If 
}
// End Sub
};

// [1622] Sub SetColumnWidth(colName As String, colWidth As Int) 
_B.setcolumnwidth=function(_colname,_colwidth) {
var _col;
// [1623]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1624]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1625]  col.width = colWidth 
_col._width=_colwidth;
// [1626]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1627]  End If 
}
// End Sub
};

// [1632] Sub SetColumnFilterable(colName As String, colFilter As Boolean) 
_B.setcolumnfilterable=function(_colname,_colfilter) {
var _col;
// [1633]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1634]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1635]  col.filterable = colFilter 
_col._filterable=_colfilter;
// [1636]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1637]  End If 
}
// End Sub
};

// [1642] Sub SetColumnClass(colName As String, colClass As String) 
_B.setcolumnclass=function(_colname,_colclass) {
var _col;
// [1643]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1644]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1645]  col.classname = colClass 
_col._classname=_colclass;
// [1646]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1647]  End If 
}
// End Sub
};

// [1652] private Sub BuildHeaders(colNames As Map) 
_B.buildheaders=function(_colnames) {
var _k,_nf,_header;
// [1653]  hdr.Initialize 
_B._hdr.length=0;
// [1655]  For Each k As String In colNames.keys 
var _kKeys = Object.keys(_colnames);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1657]  Dim nf As DataTableColumn = colNames.Get(k) 
_nf=_colnames[_k];
// [1659]  Dim header As Map = CreateMap() 
_header={};
// [1660]  header.Initialize 
_header={};
// [1661]  header.put( {426} , nf.text) 
_header["text"]=_nf._text;
// [1662]  header.put( {427} , nf.value) 
_header["value"]=_nf._value;
// [1663]  header.put( {428} , nf.align) 
_header["align"]=_nf._align;
// [1664]  header.put( {429} , nf.Sortable) 
_header["sortable"]=_nf._sortable;
// [1665]  header.put( {430} , nf.filterable) 
_header["filterable"]=_nf._filterable;
// [1666]  header.put( {431} , nf.divider) 
_header["divider"]=_nf._divider;
// [1667]  header.Put( {432} , nf.classname) 
_header["class"]=_nf._classname;
// [1668]  If nf.width <> 0 Then header.Put( {433} , nf.width) 
if (_nf._width!=0) {_header["width"]=_nf._width;}
// [1669]  If nf.filter <> Null Then header.put( {434} , nf.filter) 
if (_nf._filter!=null) {_header["filter"]=_nf._filter;}
// [1670]  If nf.sort <> Null Then header.Put( {435} , nf.sort) 
if (_nf._sort!=null) {_header["sort"]=_nf._sort;}
// [1671]  hdr.Add(header) 
_B._hdr.push(_header);
// [1672]  Next 
}
// [1673]  SetData(headers, hdr) 
_B.setdata(_B._headers,_B._hdr,_B);
// End Sub
};

// [1677] Sub SetColumnType(colName As String, colType As String) 
_B.setcolumntype=function(_colname,_coltype) {
var _col,_item,_value,_cb;
// [1678]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [1679]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [1680]  col.ColType = colType 
_col._coltype=_coltype;
// [1681]  Dim item As Map 
_item={};
// [1682]  Dim value As String 
_value="";
// [1683]  Select Case colType 
switch ("" + _coltype) {
// [1684]  Case COLUMN_IMAGE, COLUMN_AVATARIMG, COLUMN_SWITCH, COLUMN_BUTTON 
case "" + _B._column_image:
case "" + _B._column_avatarimg:
case "" + _B._column_switch:
case "" + _B._column_button:
// [1685]  col.filterable = False 
_col._filterable=false;
// [1686]  Case COLUMN_NUMBER 
break;
case "" + _B._column_number:
// [1687]  col.align = ALIGN_RIGHT 
_col._align=_B._align_right;
// [1688]  col.valueFormat = {436} 
_col._valueformat="0";
// [1689]  Dim cb As BANanoObject = BANano.CallBack(Me, {437} , Array(item, value)) 
_cb=function(_item,_value) {if (typeof _B[("getmoneyformat").toLowerCase()]==="function") {return _B[("getmoneyformat").toLowerCase()](_item,_value,_B)};};
// [1691]  SetCallBack( {438} , cb) 
_B.setcallback("getmoneyformat",_cb,_B);
// [1692]  Case COLUMN_MONEY 
break;
case "" + _B._column_money:
// [1693]  col.align = ALIGN_RIGHT 
_col._align=_B._align_right;
// [1694]  col.valueFormat = {439} 
_col._valueformat="0,0.00";
// [1695]  Dim cb As BANanoObject = BANano.CallBack(Me, {440} , Array(item, value)) 
_cb=function(_item,_value) {if (typeof _B[("getmoneyformat").toLowerCase()]==="function") {return _B[("getmoneyformat").toLowerCase()](_item,_value,_B)};};
// [1697]  SetCallBack( {441} , cb) 
_B.setcallback("getmoneyformat",_cb,_B);
// [1698]  Case COLUMN_FILESIZE 
break;
case "" + _B._column_filesize:
// [1699]  col.align = ALIGN_RIGHT 
_col._align=_B._align_right;
// [1700]  Dim cb As BANanoObject = BANano.CallBack(Me, {442} , Array(item)) 
_cb=function(_item) {if (typeof _B[("getfilesize").toLowerCase()]==="function") {return _B[("getfilesize").toLowerCase()](_item,_B)};};
// [1702]  SetCallBack( {443} , cb) 
_B.setcallback("getfilesize",_cb,_B);
// [1703]  Case COLUMN_DATE 
break;
case "" + _B._column_date:
// [1704]  col.valueFormat = {444} 
_col._valueformat="yyyy-MM-dd";
// [1705]  Dim cb As BANanoObject = BANano.CallBack(Me, {445} , Array(item, value)) 
_cb=function(_item,_value) {if (typeof _B[("getdateformat").toLowerCase()]==="function") {return _B[("getdateformat").toLowerCase()](_item,_value,_B)};};
// [1707]  SetCallBack( {446} , cb) 
_B.setcallback("getdateformat",_cb,_B);
// [1708]  Case COLUMN_TIME 
break;
case "" + _B._column_time:
// [1709]  col.valueFormat = {447} 
_col._valueformat="HH:MM";
// [1710]  Dim cb As BANanoObject = BANano.CallBack(Me, {448} , Array(item, value)) 
_cb=function(_item,_value) {if (typeof _B[("getdateformat").toLowerCase()]==="function") {return _B[("getdateformat").toLowerCase()](_item,_value,_B)};};
// [1712]  SetCallBack( {449} , cb) 
_B.setcallback("getdateformat",_cb,_B);
// [1713]  Case COLUMN_DATETIME 
break;
case "" + _B._column_datetime:
// [1714]  col.valueFormat = {450} 
_col._valueformat="yyyy-MM-dd HH:MM";
// [1715]  Dim cb As BANanoObject = BANano.CallBack(Me, {451} , Array(item, value)) 
_cb=function(_item,_value) {if (typeof _B[("getdateformat").toLowerCase()]==="function") {return _B[("getdateformat").toLowerCase()](_item,_value,_B)};};
// [1717]  SetCallBack( {452} , cb) 
_B.setcallback("getdateformat",_cb,_B);
// [1718]  End Select 
break;
}
// [1719]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [1720]  End If 
}
// End Sub
};

// [1724] private Sub BuildSlots 
_B.buildslots=function() {
var _sbtotals,_sb,_k,_nf,_ct,_value,_bindtotals,_methodname,_df,_span,_tmp,_alink,_slink,_mf,_pl,_tmpx,_args,_pc,_rat,_avt,_avtimg,_swt,_aicon,_chp,_abtn,_sout;
// [1725]  mElement.Empty 
_B._melement.empty();
// [1726]  Dim sbTotals As StringBuilder 
_sbtotals=new StringBuilder();
// [1727]  sbTotals.Initialize 
_sbtotals.init();
_sbtotals.isinitialized=true;
// [1728]  If hasTotals Then 
if (_B._hastotals) {
// [1730]  sbTotals.Append( {50} ) 
_sbtotals.append("<template slot=\"body.append\">");
// [1731]  sbTotals.Append( {51} ) 
_sbtotals.append("<tr>");
// [1732]  sbTotals.Append( {52} ) 
_sbtotals.append("<th>Totals</th>");
// [1733]  End If 
}
// [1735]  Dim sb As StringBuilder 
_sb=new StringBuilder();
// [1736]  sb.Initialize 
_sb.init();
_sb.isinitialized=true;
// [1737]  For Each k As String In columnsM.Keys 
var _kKeys = Object.keys(_B._columnsm);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1738]  Dim nf As DataTableColumn = columnsM.Get(k) 
_nf=_B._columnsm[_k];
// [1740]  Dim ct As String = nf.ColType 
_ct=_nf._coltype;
// [1742]  Dim value As String = nf.value 
_value=_nf._value;
// [1743]  Dim bindTotals As String = nf.bindTotals 
_bindtotals=_nf._bindtotals;
// [1744]  Dim methodName As String = {53} 
_methodname="" + _B._mname + "_" + _value + "";
// [1746]  If hasTotals Then 
if (_B._hastotals) {
// [1747]  Select Case bindTotals 
switch ("" + _bindtotals) {
// [1748]  Case {453} 
case "" + "":
// [1749]  sbTotals.Append( {54} ) 
_sbtotals.append("<th></th>");
// [1750]  Case Else 
break;
default:
// [1751]  sbTotals.Append( {55} ) 
_sbtotals.append("<th>{{ " + _bindtotals + " }}</th>");
// [1752]  End Select 
break;
}
// [1753]  End If 
}
// [1756]  Select Case ct 
switch ("" + _ct) {
// [1757]  Case COLUMN_DATE, COLUMN_DATETIME, COLUMN_TIME 
case "" + _B._column_date:
case "" + _B._column_datetime:
case "" + _B._column_time:
// [1759]  Dim df As String = nf.valueFormat 
_df=_nf._valueformat;
// [1761]  Dim span As VueElement 
_span= new banano_bananovuetifyad3_vueelement();
// [1762]  span.Initialize(mCallBack, {56} , {57} ) 
_span.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1763]  span.TagName = {454} 
_span.settagname("span");
// [1764]  span.SetText( {58} ) 
_span.settext("{{ getdateformat(item." + _value + ", \"" + _df + "\") }}");
// [1767]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1768]  tmp.Initialize(mCallBack, {59} , {60} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1769]  tmp.TagName = {455} 
_tmp.settagname("v-template");
// [1770]  tmp.AddAttr( {61} , {456} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1772]  tmp.SetText(span.ToString) 
_tmp.settext(_span.tostring());
// [1773]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1774]  Case COLUMN_LINK 
break;
case "" + _B._column_link:
// [1775]  Dim aLink As VueElement 
_alink= new banano_bananovuetifyad3_vueelement();
// [1776]  aLink.Initialize(mCallBack, {62} , {63} ) 
_alink.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1777]  aLink.TagName = {457} 
_alink.settagname("a");
// [1778]  Dim sLink As String = {64} 
_slink="item." + _value + "";
// [1779]  aLink.AddAttr( {458} , {459} & nf.prefix & {460} & sLink) 
_alink.addattr(":href","'"+_nf._prefix+"' + "+_slink);
// [1780]  aLink.AddAttr( {461} , nf.target) 
_alink.addattr("target",_nf._target);
// [1781]  aLink.SetText( {65} ) 
_alink.settext("{{ item." + _value + " }}");
// [1784]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1785]  tmp.Initialize(mCallBack, {66} , {67} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1786]  tmp.TagName = {462} 
_tmp.settagname("v-template");
// [1787]  tmp.AddAttr( {68} , {463} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1788]  tmp.SetText(aLink.ToString) 
_tmp.settext(_alink.tostring());
// [1789]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1790]  Case COLUMN_MONEY, COLUMN_NUMBER 
break;
case "" + _B._column_money:
case "" + _B._column_number:
// [1792]  Dim mf As String = nf.valueFormat 
_mf=_nf._valueformat;
// [1793]  Dim span As VueElement 
_span= new banano_bananovuetifyad3_vueelement();
// [1794]  span.Initialize(mCallBack, {69} , {70} ) 
_span.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1795]  span.TagName = {464} 
_span.settagname("span");
// [1796]  span.SetText( {71} ) 
_span.settext("{{ getmoneyformat(item." + _value + ", \"" + _mf + "\") }}");
// [1799]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1800]  tmp.Initialize(mCallBack, {72} , {73} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1801]  tmp.TagName = {465} 
_tmp.settagname("v-template");
// [1802]  tmp.AddAttr( {74} , {466} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1803]  tmp.SetText(span.ToString) 
_tmp.settext(_span.tostring());
// [1804]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1805]  Case COLUMN_FILESIZE 
break;
case "" + _B._column_filesize:
// [1806]  Dim span As VueElement 
_span= new banano_bananovuetifyad3_vueelement();
// [1807]  span.Initialize(mCallBack, {75} , {76} ) 
_span.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1808]  span.TagName = {467} 
_span.settagname("span");
// [1809]  span.SetText( {77} ) 
_span.settext("{{ getfilesize(item." + _value + ") }}");
// [1812]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1813]  tmp.Initialize(mCallBack, {78} , {79} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1814]  tmp.TagName = {468} 
_tmp.settagname("v-template");
// [1815]  tmp.AddAttr( {80} , {469} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1816]  tmp.SetText(span.ToString) 
_tmp.settext(_span.tostring());
// [1817]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1818]  Case COLUMN_PROGRESS_LINEAR 
break;
case "" + _B._column_progress_linear:
// [1819]  Dim pl As VueElement 
_pl= new banano_bananovuetifyad3_vueelement();
// [1820]  pl.Initialize(mCallBack, {81} , {82} ) 
_pl.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1821]  pl.TagName = {470} 
_pl.settagname("v-progress-linear");
// [1822]  pl.SetVModel( {83} ) 
_pl.setvmodel("item." + _value + "");
// [1823]  pl.Reactive = True 
_pl.setreactive(true);
// [1824]  pl.Rounded = True 
_pl.setrounded(true);
// [1825]  If nf.progressColor <> {471} Then pl.Color = nf.progressColor 
if (_nf._progresscolor!="") {_pl.setcolor(_nf._progresscolor);}
// [1826]  If nf.progressheight <> {472} Then pl.Height = nf.progressheight 
if (_nf._progressheight!="") {_pl.setheight(_nf._progressheight);}
// [1827]  If nf.progressShowValue Then 
if (_nf._progressshowvalue) {
// [1828]  Dim tmpx As VueElement 
_tmpx= new banano_bananovuetifyad3_vueelement();
// [1829]  tmpx.Initialize(mCallBack, {84} , {85} ) 
_tmpx.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "val","" + _k + "" + _nf._coltype + "val");
// [1830]  tmpx.TagName = {473} 
_tmpx.settagname("strong");
// [1831]  tmpx.SetText( {86} ) 
_tmpx.settext("{{ Math.ceil(item." + _value + ") }}%");
// [1832]  pl.SetText(tmpx.ToString) 
_pl.settext(_tmpx.tostring());
// [1833]  End If 
}
// [1835]  Dim methodName As String = {87} 
_methodname="" + _B._mname + "_change";
// [1836]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [1837]  pl.AddAttr( {474} , {88} ) 
_pl.addattr("v-on:change","" + _methodname + "(item)");
// [1838]  Dim args As List 
_args=[];
// [1839]  SetMethod(methodName, args) 
_B.setmethod(_methodname,_args,_B);
// [1840]  End If 
}
// [1850]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1851]  tmp.Initialize(mCallBack, {89} , {90} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1852]  tmp.TagName = {475} 
_tmp.settagname("v-template");
// [1853]  tmp.AddAttr( {91} , {476} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1854]  tmp.SetText(pl.ToString) 
_tmp.settext(_pl.tostring());
// [1855]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1856]  Case COLUMN_PROGRESS_CIRCULAR 
break;
case "" + _B._column_progress_circular:
// [1857]  Dim pc As VueElement 
_pc= new banano_bananovuetifyad3_vueelement();
// [1858]  pc.Initialize(mCallBack, {92} , {93} ) 
_pc.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1859]  pc.TagName = {477} 
_pc.settagname("v-progress-circular");
// [1860]  pc.SetVModel( {94} ) 
_pc.setvmodel("item." + _value + "");
// [1861]  pc.Reactive = True 
_pc.setreactive(true);
// [1862]  pc.SetText( {95} ) 
_pc.settext("{{ item." + _value + " }}");
// [1863]  If nf.progressRotate <> {478} Then pc.Rotate = nf.progressRotate 
if (_nf._progressrotate!="") {_pc.setrotate(_nf._progressrotate);}
// [1864]  If nf.progressSize <> {479} Then pc.Size = nf.progressSize 
if (_nf._progresssize!="") {_pc.setsize(_nf._progresssize);}
// [1865]  If nf.progressWidth <> {480} Then pc.Width = nf.progressWidth 
if (_nf._progresswidth!="") {_pc.setwidth(_nf._progresswidth);}
// [1866]  If nf.progressColor <> {481} Then pc.Color = nf.progressColor 
if (_nf._progresscolor!="") {_pc.setcolor(_nf._progresscolor);}
// [1875]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1876]  tmp.Initialize(mCallBack, {96} , {97} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1877]  tmp.TagName = {482} 
_tmp.settagname("v-template");
// [1878]  tmp.AddAttr( {98} , {483} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1879]  tmp.SetText(pc.ToString) 
_tmp.settext(_pc.tostring());
// [1880]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1881]  Case COLUMN_RATING 
break;
case "" + _B._column_rating:
// [1882]  Dim rat As VueElement 
_rat= new banano_bananovuetifyad3_vueelement();
// [1883]  rat.Initialize(mCallBack, {99} , {100} ) 
_rat.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1884]  rat.TagName = {484} 
_rat.settagname("v-rating");
// [1885]  rat.Dense = True 
_rat.setdense(true);
// [1886]  rat.SetVModel( {101} ) 
_rat.setvmodel("item." + _value + "");
// [1887]  If nf.Disabled Then rat.disabled = True 
if (_nf._disabled) {_rat.setdisabled(true);}
// [1888]  If nf.ReadOnly Then rat.readonly = True 
if (_nf._readonly) {_rat.setreadonly(true);}
// [1889]  If nf.iconSize <> {485} Then rat.Length = nf.iconSize 
if (_nf._iconsize!="") {_rat.setlength(_nf._iconsize);}
// [1891]  If nf.color.StartsWith( {486} ) Then 
if (_nf._color.startsWith("item.")) {
// [1892]  rat.AddAttr( {487} , nf.color) 
_rat.addattr(":color",_nf._color);
// [1893]  Else 
} else {
// [1894]  If nf.color <> {488} Then rat.Color = nf.color 
if (_nf._color!="") {_rat.setcolor(_nf._color);}
// [1895]  End If 
}
// [1903]  Dim methodName As String = {102} 
_methodname="" + _B._mname + "_change";
// [1904]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [1905]  rat.AddAttr( {489} , {103} ) 
_rat.addattr("v-on:input","" + _methodname + "(item)");
// [1906]  Dim args As List 
_args=[];
// [1907]  SetMethod(methodName, args) 
_B.setmethod(_methodname,_args,_B);
// [1908]  End If 
}
// [1911]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1912]  tmp.Initialize(mCallBack, {104} , {105} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1913]  tmp.TagName = {490} 
_tmp.settagname("v-template");
// [1914]  tmp.AddAttr( {106} , {491} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1915]  tmp.SetText(rat.ToString) 
_tmp.settext(_rat.tostring());
// [1916]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1917]  Case COLUMN_AVATARIMG 
break;
case "" + _B._column_avatarimg:
// [1918]  Dim avt As VueElement 
_avt= new banano_bananovuetifyad3_vueelement();
// [1919]  avt.Initialize(mCallBack, {107} , {108} ) 
_avt.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1920]  avt.TagName = {492} 
_avt.settagname("v-avatar");
// [1922]  Dim avtimg As VueElement 
_avtimg= new banano_bananovuetifyad3_vueelement();
// [1923]  avtimg.Initialize(mCallBack, {109} , {110} ) 
_avtimg.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "img","" + _k + "" + _nf._coltype + "img");
// [1924]  avtimg.TagName = {493} 
_avtimg.settagname("v-img");
// [1925]  avtimg.AddAttr( {494} , {111} ) 
_avtimg.addattr(":src","item." + _value + "");
// [1926]  avtimg.AddAttr( {495} , {112} ) 
_avtimg.addattr(":lazy-src","item." + _value + "");
// [1927]  avtimg.Alt = {496} 
_avtimg.setalt("");
// [1928]  If nf.imgHeight <> {497} Then 
if (_nf._imgheight!="") {
// [1929]  avtimg.Height = nf.imgheight 
_avtimg.setheight(_nf._imgheight);
// [1930]  avtimg.MaxHeight = nf.imgheight 
_avtimg.setmaxheight(_nf._imgheight);
// [1931]  End If 
}
// [1933]  If nf.imgWidth <> {498} Then 
if (_nf._imgwidth!="") {
// [1934]  avtimg.Width = nf.imgWidth 
_avtimg.setwidth(_nf._imgwidth);
// [1935]  avtimg.MaxWidth = nf.imgWidth 
_avtimg.setmaxwidth(_nf._imgwidth);
// [1936]  End If 
}
// [1944]  avt.SetText(avtimg.ToString) 
_avt.settext(_avtimg.tostring());
// [1947]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1948]  tmp.Initialize(mCallBack, {113} , {114} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1949]  tmp.TagName = {499} 
_tmp.settagname("v-template");
// [1950]  tmp.AddAttr( {115} , {500} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1951]  tmp.SetText(avt.ToString) 
_tmp.settext(_avt.tostring());
// [1952]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1953]  Case COLUMN_SWITCH, COLUMN_CHECKBOX 
break;
case "" + _B._column_switch:
case "" + _B._column_checkbox:
// [1954]  Dim swt As VueElement 
_swt= new banano_bananovuetifyad3_vueelement();
// [1955]  swt.Initialize(mCallBack, {116} , {117} ) 
_swt.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1956]  swt.TagName = {501} 
_swt.settagname("v-checkbox");
// [1958]  If ct = COLUMN_SWITCH Then 
if (_ct==_B._column_switch) {
// [1959]  swt.tagname = {502} 
_swt.settagname("v-switch");
// [1960]  swt.SetInset(True) 
_swt.setinset(true);
// [1961]  swt.Dense = True 
_swt.setdense(true);
// [1962]  End If 
}
// [1963]  swt.Value = {503} 
_swt.setvalue("Yes");
// [1964]  swt.TrueValue = {504} 
_swt.settruevalue("Yes");
// [1965]  swt.FalseValue = {505} 
_swt.setfalsevalue("No");
// [1966]  swt.SetVModel( {118} ) 
_swt.setvmodel("item." + _value + "");
// [1967]  If nf.Disabled Then swt.Disabled = True 
if (_nf._disabled) {_swt.setdisabled(true);}
// [1975]  Dim methodName As String = {119} 
_methodname="" + _B._mname + "_change";
// [1976]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [1977]  swt.AddAttr( {506} , {120} ) 
_swt.addattr("v-on:change","" + _methodname + "(item)");
// [1978]  Dim args As List 
_args=[];
// [1980]  SetMethod(methodName, args) 
_B.setmethod(_methodname,_args,_B);
// [1981]  End If 
}
// [1984]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [1985]  tmp.Initialize(mCallBack, {121} , {122} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [1986]  tmp.TagName = {507} 
_tmp.settagname("v-template");
// [1987]  tmp.AddAttr( {123} , {508} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [1988]  tmp.SetText(swt.ToString) 
_tmp.settext(_swt.tostring());
// [1989]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [1990]  Case COLUMN_ICON 
break;
case "" + _B._column_icon:
// [1991]  Dim aicon As VueElement 
_aicon= new banano_bananovuetifyad3_vueelement();
// [1992]  aicon.Initialize(mCallBack, {124} , {125} ) 
_aicon.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [1993]  aicon.TagName = {509} 
_aicon.settagname("v-icon");
// [1994]  aicon.settext( {126} ) 
_aicon.settext("{{ item." + _value + " }}");
// [1995]  If nf.Disabled Then aicon.disabled = True 
if (_nf._disabled) {_aicon.setdisabled(true);}
// [1996]  If nf.iconSize <> {510} Then aicon.Size = nf.iconSize 
if (_nf._iconsize!="") {_aicon.setsize(_nf._iconsize);}
// [1997]  If nf.color.StartsWith( {511} ) Then 
if (_nf._color.startsWith("item.")) {
// [1998]  aicon.AddAttr( {512} , nf.color) 
_aicon.addattr(":color",_nf._color);
// [1999]  Else 
} else {
// [2000]  If nf.color <> {513} Then aicon.Color = nf.color 
if (_nf._color!="") {_aicon.setcolor(_nf._color);}
// [2001]  End If 
}
// [2010]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [2011]  tmp.Initialize(mCallBack, {127} , {128} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [2012]  tmp.TagName = {514} 
_tmp.settagname("v-template");
// [2013]  tmp.AddAttr( {129} , {515} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [2014]  tmp.SetText(aicon.ToString) 
_tmp.settext(_aicon.tostring());
// [2015]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [2016]  Case COLUMN_IMAGE 
break;
case "" + _B._column_image:
// [2017]  Dim avtimg As VueElement 
_avtimg= new banano_bananovuetifyad3_vueelement();
// [2018]  avtimg.Initialize(mCallBack, {130} , {131} ) 
_avtimg.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [2019]  avtimg.TagName = {516} 
_avtimg.settagname("v-img");
// [2020]  avtimg.AddAttr( {517} , {132} ) 
_avtimg.addattr(":src","item." + _value + "");
// [2021]  avtimg.AddAttr( {518} , {133} ) 
_avtimg.addattr(":lazy-src","item." + _value + "");
// [2022]  avtimg.Alt = {519} 
_avtimg.setalt("");
// [2023]  If nf.Disabled Then avtimg.disabled = True 
if (_nf._disabled) {_avtimg.setdisabled(true);}
// [2024]  If nf.imgHeight <> {520} Then 
if (_nf._imgheight!="") {
// [2025]  avtimg.Height = nf.imgheight 
_avtimg.setheight(_nf._imgheight);
// [2026]  avtimg.MaxHeight = nf.imgheight 
_avtimg.setmaxheight(_nf._imgheight);
// [2027]  End If 
}
// [2028]  If nf.imgWidth <> {521} Then 
if (_nf._imgwidth!="") {
// [2029]  avtimg.Width = nf.imgWidth 
_avtimg.setwidth(_nf._imgwidth);
// [2030]  avtimg.MaxWidth = nf.imgWidth 
_avtimg.setmaxwidth(_nf._imgwidth);
// [2031]  End If 
}
// [2040]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [2041]  tmp.Initialize(mCallBack, {134} , {135} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [2042]  tmp.TagName = {522} 
_tmp.settagname("v-template");
// [2043]  tmp.AddAttr( {136} , {523} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [2044]  tmp.SetText(avtimg.ToString) 
_tmp.settext(_avtimg.tostring());
// [2045]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [2046]  Case COLUMN_CHIP 
break;
case "" + _B._column_chip:
// [2047]  Dim chp As VueElement 
_chp= new banano_bananovuetifyad3_vueelement();
// [2048]  chp.Initialize(mCallBack, {137} , {138} ) 
_chp.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [2049]  chp.TagName = {524} 
_chp.settagname("v-chip");
// [2050]  chp.dark = True 
_chp.setdark(true);
// [2051]  chp.Elevation = {525} 
_chp.setelevation("4");
// [2052]  chp.SetText( {139} ) 
_chp.settext("{{ item." + _value + " }}");
// [2053]  If nf.Disabled Then chp.disabled = True 
if (_nf._disabled) {_chp.setdisabled(true);}
// [2054]  If nf.color.StartsWith( {526} ) Then 
if (_nf._color.startsWith("item.")) {
// [2055]  chp.AddAttr( {527} , nf.color) 
_chp.addattr(":color",_nf._color);
// [2056]  Else 
} else {
// [2057]  If nf.color <> {528} Then 
if (_nf._color!="") {
// [2058]  chp.Color = nf.color 
_chp.setcolor(_nf._color);
// [2059]  End If 
}
// [2060]  End If 
}
// [2070]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [2071]  tmp.Initialize(mCallBack, {140} , {141} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [2072]  tmp.TagName = {529} 
_tmp.settagname("v-template");
// [2073]  tmp.AddAttr( {142} , {530} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [2074]  tmp.SetText(chp.ToString) 
_tmp.settext(_chp.tostring());
// [2075]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [2076]  Case COLUMN_BUTTON 
break;
case "" + _B._column_button:
// [2077]  Dim abtn As VueElement 
_abtn= new banano_bananovuetifyad3_vueelement();
// [2078]  abtn.Initialize(mCallBack, {143} , {144} ) 
_abtn.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [2079]  abtn.TagName = {531} 
_abtn.settagname("v-btn");
// [2080]  abtn.AddClass( {532} ) 
_abtn.addclass("mr-2");
// [2081]  abtn.Depressed = nf.depressed 
_abtn.setdepressed(_nf._depressed);
// [2082]  abtn.Rounded = nf.rounded 
_abtn.setrounded(_nf._rounded);
// [2083]  abtn.Dark = nf.dark 
_abtn.setdark(_nf._dark);
// [2084]  abtn.Label = nf.label 
_abtn.setlabel(_nf._label);
// [2085]  abtn.Color = nf.color 
_abtn.setcolor(_nf._color);
// [2086]  abtn.Outlined = nf.outlined 
_abtn.setoutlined(_nf._outlined);
// [2087]  abtn.Shaped = nf.shaped 
_abtn.setshaped(_nf._shaped);
// [2095]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [2096]  abtn.AddAttr( {533} , {145} ) 
_abtn.addattr("v-on:click","" + _B._mname + "_" + _value + "(item)");
// [2097]  Dim args As List 
_args=[];
// [2099]  SetMethod(methodName, args) 
_B.setmethod(_methodname,_args,_B);
// [2100]  End If 
}
// [2103]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [2104]  tmp.Initialize(mCallBack, {146} , {147} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [2105]  tmp.TagName = {534} 
_tmp.settagname("v-template");
// [2106]  tmp.AddAttr( {148} , {535} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [2107]  tmp.SetText(abtn.ToString) 
_tmp.settext(_abtn.tostring());
// [2108]  sb.Append(tmp.tostring) 
_sb.append(_tmp.tostring());
// [2109]  Case COLUMN_ACTION, COLUMN_EDIT, COLUMN_DELETE, COLUMN_SAVE, COLUMN_CANCEL 
break;
case "" + _B._column_action:
case "" + _B._column_edit:
case "" + _B._column_delete:
case "" + _B._column_save:
case "" + _B._column_cancel:
// [2110]  Dim abtn As VueElement 
_abtn= new banano_bananovuetifyad3_vueelement();
// [2111]  abtn.Initialize(mCallBack, {149} , {150} ) 
_abtn.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "","" + _k + "" + _nf._coltype + "");
// [2112]  abtn.TagName = {536} 
_abtn.settagname("v-btn");
// [2113]  abtn.Elevation = {537} 
_abtn.setelevation("4");
// [2114]  abtn.Fab = True 
_abtn.setfab(true);
// [2115]  abtn.Small = True 
_abtn.setsmall(true);
// [2116]  abtn.dark = True 
_abtn.setdark(true);
// [2117]  abtn.AddClass( {538} ) 
_abtn.addclass("mr-2");
// [2118]  If nf.color.StartsWith( {539} ) Then 
if (_nf._color.startsWith("item.")) {
// [2119]  abtn.AddAttr( {540} , nf.color) 
_abtn.addattr(":color",_nf._color);
// [2120]  Else 
} else {
// [2121]  If nf.color <> {541} Then abtn.Color = nf.color 
if (_nf._color!="") {_abtn.setcolor(_nf._color);}
// [2122]  End If 
}
// [2123]  If nf.Disabled Then abtn.disabled = True 
if (_nf._disabled) {_abtn.setdisabled(true);}
// [2131]  Dim aicon As VueElement 
_aicon= new banano_bananovuetifyad3_vueelement();
// [2132]  aicon.Initialize(mCallBack, {151} , {152} ) 
_aicon.initialize(_B._mcallback,"" + _k + "" + _nf._coltype + "icon","" + _k + "" + _nf._coltype + "icon");
// [2133]  aicon.TagName = {542} 
_aicon.settagname("v-icon");
// [2134]  aicon.SetText(nf.icon) 
_aicon.settext(_nf._icon);
// [2135]  If nf.iconSize <> {543} Then aicon.Size = nf.iconSize 
if (_nf._iconsize!="") {_aicon.setsize(_nf._iconsize);}
// [2136]  abtn.SetText(aicon.tostring) 
_abtn.settext(_aicon.tostring());
// [2138]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [2139]  abtn.AddAttr( {544} , {153} ) 
_abtn.addattr("v-on:click","" + _B._mname + "_" + _value + "(item)");
// [2140]  Dim args As List 
_args=[];
// [2142]  SetMethod(methodName, args) 
_B.setmethod(_methodname,_args,_B);
// [2143]  End If 
}
// [2146]  Dim tmp As VueElement 
_tmp= new banano_bananovuetifyad3_vueelement();
// [2147]  tmp.Initialize(mCallBack, {154} , {155} ) 
_tmp.initialize(_B._mcallback,"" + _k + "tmp","" + _k + "tmp");
// [2148]  tmp.TagName = {545} 
_tmp.settagname("v-template");
// [2149]  tmp.AddAttr( {156} , {546} ) 
_tmp.addattr("v-slot:item." + _value + "","{ item }");
// [2150]  tmp.SetText(abtn.ToString) 
_tmp.settext(_abtn.tostring());
// [2151]  sb.Append(tmp.ToString) 
_sb.append(_tmp.tostring());
// [2152]  End Select 
break;
}
// [2153]  Next 
}
// [2155]  If hasTotals Then 
if (_B._hastotals) {
// [2156]  sbTotals.Append( {157} ) 
_sbtotals.append("</tr>");
// [2157]  sbTotals.Append( {547} ) 
_sbtotals.append("</template>");
// [2158]  sb.Append(sbTotals.ToString) 
_sb.append(_sbtotals.toString());
// [2159]  End If 
}
// [2160]  Dim sout As String = sb.tostring 
_sout=_sb.toString();
// [2161]  mElement.Append(sout) 
_B._melement.append(_sout);
// End Sub
};

// [2165] Sub SetTotalVisible(varTotalVisible As String) 
_B.settotalvisible=function(_vartotalvisible) {
// [2166]  totalVisible = varTotalVisible 
_B._totalvisible=_vartotalvisible;
// End Sub
};

// [2170] Sub Refresh 
_B.refresh=function() {
// [2172]  BuildHeaders(columnsM) 
_B.buildheaders(_B._columnsm,_B);
// [2173]  BuildSlots 
_B.buildslots(_B);
// [2184]  SetData(keyID, DateTime.Now) 
_B.setdata(_B._keyid,DateTime.Now(),_B);
// [2185]  If Items.Size > 0 Then 
if (_B._items.length>0) {
// [2186]  SetData(itemsname, Items) 
_B.setdata(_B._itemsname,_B._items,_B);
// [2187]  End If 
}
// End Sub
};

// [2191] Sub setCalculateWidths(varCalculateWidths As Boolean) 
_B.setcalculatewidths=function(_varcalculatewidths) {
// [2192]  AddAttr( {550} , varCalculateWidths) 
_B.addattr(":calculate-widths",_varcalculatewidths,_B);
// End Sub
};

// [2195] Sub setDisableFiltering(varDisableFiltering As Boolean) 
_B.setdisablefiltering=function(_vardisablefiltering) {
// [2196]  AddAttr( {551} , varDisableFiltering) 
_B.addattr(":disable-filtering",_vardisablefiltering,_B);
// End Sub
};

// [2200] Sub setDisablePagination(varDisablePagination As Boolean) 
_B.setdisablepagination=function(_vardisablepagination) {
// [2201]  AddAttr( {552} , varDisablePagination) 
_B.addattr(":disable-pagination",_vardisablepagination,_B);
// End Sub
};

// [2205] Sub setDisableSort(varDisableSort As Boolean) 
_B.setdisablesort=function(_vardisablesort) {
// [2206]  AddAttr( {553} , varDisableSort) 
_B.addattr(":disable-sort",_vardisablesort,_B);
// End Sub
};

// [2210] Sub setFixedHeader(varFixedHeader As Boolean) 
_B.setfixedheader=function(_varfixedheader) {
// [2211]  AddAttr( {554} , varFixedHeader) 
_B.addattr(":fixed-header",_varfixedheader,_B);
// End Sub
};

// [2215] Sub setHideDefaultFooter(varHideDefaultFooter As Boolean) 
_B.sethidedefaultfooter=function(_varhidedefaultfooter) {
// [2216]  AddAttr( {555} , varHideDefaultFooter) 
_B.addattr(":hide-default-footer",_varhidedefaultfooter,_B);
// End Sub
};

// [2220] Sub setHideDefaultHeader(varHideDefaultHeader As Boolean) 
_B.sethidedefaultheader=function(_varhidedefaultheader) {
// [2221]  AddAttr( {556} , varHideDefaultHeader) 
_B.addattr(":hide-default-header",_varhidedefaultheader,_B);
// End Sub
};

// [2225] Sub setLight(varLight As Boolean) 
_B.setlight=function(_varlight) {
// [2226]  AddAttr( {557} , varLight) 
_B.addattr(":light",_varlight,_B);
// End Sub
};

// [2230] Sub setLoading(varLoading As Boolean) 
_B.setloading=function(_varloading) {
// [2231]  AddAttr( {558} , varLoading) 
_B.addattr(":loading",_varloading,_B);
// End Sub
};

// [2235] Sub setMultiSort(varMultiSort As Boolean) 
_B.setmultisort=function(_varmultisort) {
// [2236]  AddAttr( {559} , varMultiSort) 
_B.addattr(":multi-sort",_varmultisort,_B);
// End Sub
};

// [2240] Sub setMustSort(varMustSort As Boolean) 
_B.setmustsort=function(_varmustsort) {
// [2241]  AddAttr( {560} , varMustSort) 
_B.addattr(":must-sort",_varmustsort,_B);
// End Sub
};

// [2245] Sub setShowExpand(varShowExpand As Boolean) 
_B.setshowexpand=function(_varshowexpand) {
// [2246]  AddAttr( {561} , varShowExpand) 
_B.addattr("show-expand",_varshowexpand,_B);
// End Sub
};

// [2250] Sub setShowGroupBy(varShowGroupBy As Boolean) 
_B.setshowgroupby=function(_varshowgroupby) {
// [2251]  AddAttr( {562} , varShowGroupBy) 
_B.addattr(":show-group-by",_varshowgroupby,_B);
// [2252]  stGroupBy = varShowGroupBy 
_B._stgroupby=_varshowgroupby;
// End Sub
};

// [2256] Sub setShowSelect(varShowSelect As Boolean) 
_B.setshowselect=function(_varshowselect) {
// [2257]  AddAttr( {563} , varShowSelect) 
_B.addattr(":show-select",_varshowselect,_B);
// [2258]  bShowSelect = varShowSelect 
_B._bshowselect=_varshowselect;
// End Sub
};

// [2262] Sub setSingleExpand(varSingleExpand As Boolean) 
_B.setsingleexpand=function(_varsingleexpand) {
// [2263]  AddAttr( {564} , varSingleExpand) 
_B.addattr(":single-expand",_varsingleexpand,_B);
// End Sub
};

// [2267] Sub setSingleSelect(varSingleSelect As Boolean) 
_B.setsingleselect=function(_varsingleselect) {
// [2268]  AddAttr( {565} , varSingleSelect) 
_B.addattr(":single-select",_varsingleselect,_B);
// [2269]  bSingleSelect = varSingleSelect 
_B._bsingleselect=_varsingleselect;
// End Sub
};

// [2273] Sub setItemKey(varItemKey As String) 
_B.setitemkey=function(_varitemkey) {
// [2274]  PrimaryKey = varItemKey 
_B._primarykey=_varitemkey;
// [2275]  AddAttr( {566} , varItemKey) 
_B.addattr("item-key",_varitemkey,_B);
// End Sub
};

// [2279] Sub setItemsPerPage(varItemsPerPage As String) 
_B.setitemsperpage=function(_varitemsperpage) {
// [2280]  AddAttr( {567} , varItemsPerPage) 
_B.addattr("items-per-page",_varitemsperpage,_B);
// End Sub
};

// [2284] Sub setLoadingText(varLoadingText As String) 
_B.setloadingtext=function(_varloadingtext) {
// [2285]  AddAttr( {568} , varLoadingText) 
_B.addattr("loading-text",_varloadingtext,_B);
// End Sub
};

// [2289] Sub setPage(varPage As String) 
_B.setpage=function(_varpage) {
// [2290]  If varPage = {569} Then Return 
if (_varpage=="") { return ;}
// [2291]  varPage = BANano.parseInt(varPage) 
_varpage=parseInt(_varpage);
// [2292]  AddAttr( {570} , varPage) 
_B.addattr(":page.sync",_varpage,_B);
// End Sub
};

// [2296] Sub SetExternalPagination 
_B.setexternalpagination=function() {
var _scode;
// [2297]  setPage( {571} ) 
_B.setpage("1",_B);
// [2298]  SetData( {159} , {572} ) 
_B.setdata("" + _B._mname + "pagecount","0",_B);
// [2299]  Dim scode As String = mName & {573} 
_scode=_B._mname+"pagecount = $event";
// [2300]  AddAttr( {574} , scode) 
_B.addattr("v-on:page-count",_scode,_B);
// [2301]  setHideDefaultFooter(True) 
_B.sethidedefaultfooter(true,_B);
// [2302]  hasExternalPagination = True 
_B._hasexternalpagination=true;
// End Sub
};

// [2306] Sub setSelectableKey(varSelectableKey As String) 
_B.setselectablekey=function(_varselectablekey) {
// [2307]  AddAttr( {575} , varSelectableKey) 
_B.addattr("selectable-key",_varselectablekey,_B);
// End Sub
};

// [2311] Sub SetOnClickRow(methodName As String) 
_B.setonclickrow=function(_methodname) {
var _e,_cb;
// [2312]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [2313]  If SubExists(mCallBack, methodName) = False Then Return 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [2314]  Dim e As BANanoEvent 
_e=null;
// [2315]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_methodname).toLowerCase()]==="function") {return _B._mcallback[(_methodname).toLowerCase()](_e,_B)};};
// [2316]  AddAttr( {576} , methodName) 
_B.addattr("v-on:click:row",_methodname,_B);
// [2318]  SetCallBack(methodName, cb) 
_B.setcallback(_methodname,_cb,_B);
// End Sub
};

// [2322] Sub SetOnItemSelected(methodName As String) 
_B.setonitemselected=function(_methodname) {
var _e,_cb;
// [2323]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [2324]  If SubExists(mCallBack, methodName) = False Then Return 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [2325]  Dim e As BANanoEvent 
_e=null;
// [2326]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(e)) 
_cb=function(_e) {if (typeof _B._mcallback[(_methodname).toLowerCase()]==="function") {return _B._mcallback[(_methodname).toLowerCase()](_e,_B)};};
// [2327]  AddAttr( {577} , methodName) 
_B.addattr("v-on:item-selected",_methodname,_B);
// [2329]  SetCallBack(methodName, cb) 
_B.setcallback(_methodname,_cb,_B);
// End Sub
};

// [2332] Sub SetColumnsFormatDateTime(dates As List) 
_B.setcolumnsformatdatetime=function(_dates) {
// [2333]  SetDateTimeColumns(dates) 
_B.setdatetimecolumns(_dates,_B);
// End Sub
};

// [2337] Sub SetDateTimeColumns(dates As List) 
_B.setdatetimecolumns=function(_dates) {
var _k;
// [2338]  For Each k As String In dates 
for (var _kindex=0;_kindex<_dates.length;_kindex++) {
_k=_dates[_kindex];
// [2339]  SetColumnType(k, COLUMN_DATETIME) 
_B.setcolumntype(_k,_B._column_datetime,_B);
// [2340]  Next 
}
// End Sub
};

// [2344] Sub SetFileSizeColumns(dates As List) 
_B.setfilesizecolumns=function(_dates) {
var _k;
// [2345]  For Each k As String In dates 
for (var _kindex=0;_kindex<_dates.length;_kindex++) {
_k=_dates[_kindex];
// [2346]  SetColumnType(k, COLUMN_FILESIZE) 
_B.setcolumntype(_k,_B._column_filesize,_B);
// [2347]  Next 
}
// End Sub
};

// [2350] Sub SetColumnsFormatFileSize(dates As List) 
_B.setcolumnsformatfilesize=function(_dates) {
// [2351]  SetFileSizeColumns(dates) 
_B.setfilesizecolumns(_dates,_B);
// End Sub
};

// [2356] Sub SetTimeColumns(dates As List) 
_B.settimecolumns=function(_dates) {
var _k;
// [2357]  For Each k As String In dates 
for (var _kindex=0;_kindex<_dates.length;_kindex++) {
_k=_dates[_kindex];
// [2358]  SetColumnType(k, COLUMN_TIME) 
_B.setcolumntype(_k,_B._column_time,_B);
// [2359]  Next 
}
// End Sub
};

// [2362] Sub SetColumnsFormatTime(dates As List) 
_B.setcolumnsformattime=function(_dates) {
// [2363]  SetTimeColumns(dates) 
_B.settimecolumns(_dates,_B);
// End Sub
};

// [2366] Sub SetColumnsFormatMoney(dates As List) 
_B.setcolumnsformatmoney=function(_dates) {
// [2367]  SetMoneyColumns(dates) 
_B.setmoneycolumns(_dates,_B);
// End Sub
};

// [2371] Sub SetMoneyColumns(dates As List) 
_B.setmoneycolumns=function(_dates) {
var _k;
// [2372]  For Each k As String In dates 
for (var _kindex=0;_kindex<_dates.length;_kindex++) {
_k=_dates[_kindex];
// [2373]  SetColumnType(k, COLUMN_MONEY) 
_B.setcolumntype(_k,_B._column_money,_B);
// [2374]  Next 
}
// End Sub
};

// [2378] Sub SetNumberColumns(dates As List) 
_B.setnumbercolumns=function(_dates) {
var _k;
// [2379]  For Each k As String In dates 
for (var _kindex=0;_kindex<_dates.length;_kindex++) {
_k=_dates[_kindex];
// [2380]  SetColumnType(k, COLUMN_NUMBER) 
_B.setcolumntype(_k,_B._column_number,_B);
// [2381]  Next 
}
// End Sub
};

// [2384] Sub SetItemClass(methodName As String) 
_B.setitemclass=function(_methodname) {
var _item,_cb;
// [2385]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [2386]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [2387]  AddAttr( {578} , methodName) 
_B.addattr(":item-class",_methodname,_B);
// [2388]  Dim Item As Map 
_item={};
// [2389]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, Array(Item)) 
_cb=function(_item) {if (typeof _B._mcallback[(_methodname).toLowerCase()]==="function") {return _B._mcallback[(_methodname).toLowerCase()](_item,_B)};};
// [2391]  SetCallBack(methodName, cb) 
_B.setcallback(_methodname,_cb,_B);
// [2392]  End If 
}
// End Sub
};

// [2396] Sub SetColumnDateFormat(colName As String, colFormat As String) 
_B.setcolumndateformat=function(_colname,_colformat) {
var _col,_item,_cb;
// [2398]  SetColumnType(colName, COLUMN_DATE) 
_B.setcolumntype(_colname,_B._column_date,_B);
// [2399]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [2400]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [2401]  col.valueFormat = colFormat 
_col._valueformat=_colformat;
// [2402]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [2404]  Dim item As Map 
_item={};
// [2405]  Dim cb As BANanoObject = BANano.CallBack(Me, {579} , Array(item, colFormat)) 
_cb=function(_item,_colformat) {if (typeof _B[("getdateformat").toLowerCase()]==="function") {return _B[("getdateformat").toLowerCase()](_item,_colformat,_B)};};
// [2407]  SetCallBack( {580} , cb) 
_B.setcallback("getdateformat",_cb,_B);
// [2408]  End If 
}
// End Sub
};

// [2412] Sub SetColumnDateTimeFormat(colName As String, colFormat As String) 
_B.setcolumndatetimeformat=function(_colname,_colformat) {
var _col,_item,_cb;
// [2414]  SetColumnType(colName, COLUMN_DATETIME) 
_B.setcolumntype(_colname,_B._column_datetime,_B);
// [2415]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [2416]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [2417]  col.valueFormat = colFormat 
_col._valueformat=_colformat;
// [2418]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [2420]  Dim item As Map 
_item={};
// [2421]  Dim cb As BANanoObject = BANano.CallBack(Me, {581} , Array(item, colFormat)) 
_cb=function(_item,_colformat) {if (typeof _B[("getdateformat").toLowerCase()]==="function") {return _B[("getdateformat").toLowerCase()](_item,_colformat,_B)};};
// [2423]  SetCallBack( {582} , cb) 
_B.setcallback("getdateformat",_cb,_B);
// [2424]  End If 
}
// End Sub
};

// [2428] Sub SetColumnNumberFormat(colName As String, colFormat As String) 
_B.setcolumnnumberformat=function(_colname,_colformat) {
var _col,_item,_cb;
// [2430]  SetColumnType(colName, COLUMN_NUMBER) 
_B.setcolumntype(_colname,_B._column_number,_B);
// [2431]  If columnsM.ContainsKey(colName) Then 
if ((_colname in _B._columnsm)) {
// [2432]  Dim col As DataTableColumn = columnsM.Get(colName) 
_col=_B._columnsm[_colname];
// [2433]  col.valueFormat = colFormat 
_col._valueformat=_colformat;
// [2434]  col.align = ALIGN_RIGHT 
_col._align=_B._align_right;
// [2435]  columnsM.Put(colName,col) 
_B._columnsm[_colname]=_col;
// [2437]  Dim item As Map 
_item={};
// [2438]  Dim cb As BANanoObject = BANano.CallBack(Me, {583} , Array(item, colFormat)) 
_cb=function(_item,_colformat) {if (typeof _B[("getmoneyformat").toLowerCase()]==="function") {return _B[("getmoneyformat").toLowerCase()](_item,_colformat,_B)};};
// [2440]  SetCallBack( {584} , cb) 
_B.setcallback("getmoneyformat",_cb,_B);
// [2441]  End If 
}
// End Sub
};

// [2444] private Sub getdateformat(item As String, sFormat As String) As String 'ignoredeadcode 
_B.getdateformat=function(_item,_sformat) {
var _svalue;
// [2445]  Dim svalue As String = FormatDisplayDate(item, sFormat) 
_svalue=_B.formatdisplaydate(_item,_sformat,_B);
// [2446]  Return svalue 
return _svalue;
// End Sub
};

// [2450] private Sub getmoneyformat(item As String, sformat As String) As String 'ignoredeadcode 
_B.getmoneyformat=function(_item,_sformat) {
var _svalue;
// [2451]  Dim svalue As String = FormatDisplayNumber(item, sformat) 
_svalue=_B.formatdisplaynumber(_item,_sformat,_B);
// [2452]  Return svalue 
return _svalue;
// End Sub
};

// [2455] private Sub getfilesize(item As String) As String 'ignoredeadcode 
_B.getfilesize=function(_item) {
var _svalue;
// [2456]  Dim svalue As String = FormatFileSize(item) 
_svalue=_B.formatfilesize(_item,_B);
// [2457]  Return svalue 
return _svalue;
// End Sub
};

// [2461] Sub FormatDisplayDate(item As String, sFormat As String) As String 'ignoredeadcode 
_B.formatdisplaydate=function(_item,_sformat) {
var _bo,_sdate;
// [2462]  item = {585} & item 
_item=""+_item;
// [2463]  If item = {586} Then Return {587} 
if (_item=="") { return "";}
// [2464]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {588} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [2465]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {589} , Array(item)) 
_bo=BANanoExec("dayjs", window, _item);
// [2466]  Dim sDate As String = bo.RunMethod( {590} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [2467]  Return sDate 
return _sdate;
// End Sub
};

// [2471] Sub FormatDisplayNumber(item As String, sFormat As String) As String 'ignoredeadcode 
_B.formatdisplaynumber=function(_item,_sformat) {
var _bo,_sdate;
// [2472]  item = {591} & item 
_item=""+_item;
// [2473]  If item = {592} Then Return {593} 
if (_item=="") { return "";}
// [2474]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {594} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [2475]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {595} , Array(item)) 
_bo=BANanoExec("numeral", window, _item);
// [2476]  Dim sDate As String = bo.RunMethod( {596} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [2477]  Return sDate 
return _sdate;
// End Sub
};

// [2480] Sub FormatFileSize(Bytes As Float) As String 'ignoredeadcode 
_B.formatfilesize=function(_bytes) {
var _unit,_po,_si,_i;
// [2481]  If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then 
if (is.null(_bytes) || is.undefined(_bytes)) {
// [2482]  Bytes = 0 
_bytes=0;
// [2483]  End If 
}
// [2484]  Bytes = BANano.parsefloat(Bytes) 
_bytes=parseFloat(_bytes);
// [2485]  Try 
try {
// [2486]  Private Unit() As String = Array As String( {597} , {598} , {599} , {600} , {601} , {602} , {603} , {604} , {605} ) 
_unit=[" Byte"," KB"," MB"," GB"," TB"," PB"," EB"," ZB"," YB"];
// [2487]  If Bytes = 0 Then 
if (_bytes==0) {
// [2488]  Return {606} 
return "0 Bytes";
// [2489]  Else 
} else {
// [2490]  Private Po, Si As Double 
_po=0;
_si=0;
// [2491]  Private I As Int 
_i=0;
// [2492]  Bytes = Abs(Bytes) 
_bytes=(Math.abs(_bytes));
// [2493]  I = Floor(Logarithm(Bytes, 1024)) 
_i=(Math.floor((Math.log(_bytes)/Math.log(1024))));
// [2494]  Po = Power(1024, I) 
_po=Math.pow(1024,_i);
// [2495]  Si = Bytes / Po 
_si=_bytes/_po;
// [2496]  Return NumberFormat(Si, 1, 3) & Unit(I) 
return BANano_nf(BANano_r(_si, 3),1)+_unit[_i];
// [2497]  End If 
}
// [2498]  Catch 
} catch(err) {
// [2499]  Return {607} 
return "0 Bytes";
// [2500]  End Try 
}
// End Sub
};

// [2505] public Sub setDense(varDense As Boolean) 
_B.setdense=function(_vardense) {
// [2506]  AddAttr( {608} , varDense) 
_B.addattr(":dense",_vardense,_B);
// [2507]  bDense = varDense 
_B._bdense=_vardense;
// End Sub
};

// [2511] public Sub getDense() As Boolean 
_B.getdense=function() {
// [2512]  Return bDense 
return _B._bdense;
// End Sub
};

// [2516] public Sub getItemKey() As String 
_B.getitemkey=function() {
// [2517]  Return PrimaryKey 
return _B._primarykey;
// End Sub
};

// [2521] public Sub setElevation(varElevation As String) 
_B.setelevation=function(_varelevation) {
// [2522]  If BANano.IsNull(varElevation) Then varElevation = {609} 
if (is.null(_varelevation)) {_varelevation="";}
// [2523]  If varElevation = {610} Then Return 
if (_varelevation=="") { return ;}
// [2524]  AddAttr( {611} , varElevation) 
_B.addattr("elevation",_varelevation,_B);
// [2525]  AddClass( {612} & varElevation) 
_B.addclass("elevation-"+_varelevation,_B);
// [2526]  stElevation = varElevation 
_B._stelevation=_varelevation;
// End Sub
};

// [2529] public Sub getElevation() As String 
_B.getelevation=function() {
// [2530]  Return stElevation 
return _B._stelevation;
// End Sub
};

// [2533] public Sub getGroupBy() As String 
_B.getgroupby=function() {
// [2534]  Return stGroupBy 
return _B._stgroupby;
// End Sub
};

// [2538] public Sub getShowSelect() As Boolean 
_B.getshowselect=function() {
// [2539]  Return bShowSelect 
return _B._bshowselect;
// End Sub
};

// [2542] Sub getSingleSelect() As Boolean 
_B.getsingleselect=function() {
// [2543]  Return bSingleSelect 
return _B._bsingleselect;
// End Sub
};

// [2547] Sub SetMethod(methodName As String, args As List) 
_B.setmethod=function(_methodname,_args) {
var _cb;
// [2548]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [2549]  If SubExists(mCallBack, methodName) Then 
if ((typeof _B._mcallback[(_methodname).toLowerCase()]==="function")) {
// [2550]  Dim cb As BANanoObject = BANano.CallBack(mCallBack, methodName, args) 
_cb=function(_args) {if (typeof _B._mcallback[(_methodname).toLowerCase()]==="function") {return _B._mcallback[(_methodname).toLowerCase()](_args,_B)};};
// [2551]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// [2552]  End If 
}
// End Sub
};

}
/* =========================== VuetifyApp =========================== */
function banano_bananovuetifyad3_vuetifyapp() {
var _B=this;
_B._vuerouter=null;

_B._emit=null;

_B._modules={};

_B._methods={};

_B._computed={};

_B._watches={};

_B._filters={};

_B._opt={};

_B._refs=null;

_B._path="";

_B._name="";

_B._query={};

_B._eventhandler={};

_B._routes=[];

_B._components={};

_B._options={};

_B._vue=null;

_B._themes={};

_B._colormap={};

_B._errors={};

_B._vuetify=null;

_B._data={};

_B._alert_border_left="left";

_B._alert_border_right="right";

_B._alert_border_bottom="bottom";

_B._alert_border_top="top";

_B._alert_type_success="success";

_B._alert_type_info="info";

_B._alert_type_warning="warning";

_B._alert_type_error="error";

_B._border_default="";

_B._border_dashed="dashed";

_B._border_dotted="dotted";

_B._border_double="double";

_B._border_groove="groove";

_B._border_hidden="hidden";

_B._border_inset="inset";

_B._border_none="none";

_B._border_outset="outset";

_B._border_ridge="ridge";

_B._border_solid="solid";

_B._color_amber="amber";

_B._color_black="black";

_B._color_blue="blue";

_B._color_bluegrey="blue-grey";

_B._color_brown="brown";

_B._color_cyan="cyan";

_B._color_deeporange="deep-orange";

_B._color_deeppurple="deep-purple";

_B._color_green="green";

_B._color_grey="grey";

_B._color_indigo="indigo";

_B._color_lightblue="light-blue";

_B._color_lightgreen="light-green";

_B._color_lime="lime";

_B._color_orange="orange";

_B._color_pink="pink";

_B._color_purple="purple";

_B._color_red="red";

_B._color_teal="teal";

_B._color_transparent="transparent";

_B._color_white="white";

_B._color_yellow="yellow";

_B._color_none="";

_B._color_amber_text="amber--text";

_B._color_black_text="black--text";

_B._color_blue_text="blue--text";

_B._color_bluegrey_text="blue-grey--text";

_B._color_brown_text="brown--text";

_B._color_cyan_text="cyan--text";

_B._color_deeporange_text="deep-orange--text";

_B._color_deeppurple_text="deep-purple--text";

_B._color_green_text="green--text";

_B._color_grey_text="grey--text";

_B._color_indigo_text="indigo--text";

_B._color_lightblue_text="light-blue--text";

_B._color_lightgreen_text="light-green--text";

_B._color_lime_text="lime--text";

_B._color_orange_text="orange--text";

_B._color_pink_text="pink--text";

_B._color_purple_text="purple--text";

_B._color_red_text="red--text";

_B._color_teal_text="teal--text";

_B._color_transparent_text="transparent--text";

_B._color_white_text="white--text";

_B._color_yellow_text="yellow--text";

_B._color_primary_text="primary--text";

_B._color_secondary_text="secondary--text";

_B._color_accent_text="accent--text";

_B._color_error_text="error--text";

_B._color_info_text="info--text";

_B._color_success_text="success--text";

_B._color_warning_text="warning--text";

_B._breakpoint_xs="xs";

_B._breakpoint_sm="sm";

_B._breakpoint_md="md";

_B._breakpoint_lg="lg";

_B._breakpoint_xl="xl";

_B._breakpoint_xsonly="xsOnly";

_B._breakpoint_smonly="smOnly";

_B._breakpoint_smanddown="smAndDown";

_B._breakpoint_smandup="smAndUp";

_B._breakpoint_mdonly="mdOnly";

_B._breakpoint_mdanddown="mdAndDown";

_B._breakpoint_mdandup="mdAndUp";

_B._breakpoint_lgonly="lgOnly";

_B._breakpoint_lganddown="lgAndDown";

_B._breakpoint_lgandup="lgAndUp";

_B._breakpoint_xlonly="xlOnly";

_B._intensity_normal="";

_B._intensity_lighten5="lighten-5";

_B._intensity_lighten4="lighten-4";

_B._intensity_lighten3="lighten-3";

_B._intensity_lighten2="lighten-2";

_B._intensity_lighten1="lighten-1";

_B._intensity_darken1="darken-1";

_B._intensity_darken2="darken-2";

_B._intensity_darken3="darken-3";

_B._intensity_darken4="darken-4";

_B._intensity_accent1="accent-1";

_B._intensity_accent2="accent-2";

_B._intensity_accent3="accent-3";

_B._intensity_accent4="accent-4";

_B._justify_center="center";

_B._justify_start="start";

_B._justify_end="end";

_B._align_center="center";

_B._align_start="start";

_B._align_end="end";

_B._align_stretch="stretch";

_B._iconpos_left="left";

_B._iconpos_right="right";

_B._store=null;

_B._state={};

_B._body=null;

_B._template="";

_B._size_h1="h1";

_B._size_h2="h2";

_B._size_h3="h3";

_B._size_h4="h4";

_B._size_h5="h5";

_B._size_h6="h6";

_B._size_p="p";

_B._size_span="span";

_B._size_blockquote="blockquote";

_B._size_div="div";

_B._icon_small="small";

_B._icon_large="large";

_B._icon_xsmall="x-small";

_B._icon_xlarge="x-large";

_B._button_small="small";

_B._button_large="large";

_B._button_xsmall="x-small";

_B._button_xlarge="x-large";

_B._transition_slide_x="slide-x-transition";

_B._transition_slide_x_reverse="slide-x-reverse-transition";

_B._transition_slide_y="slide-y-transition";

_B._transition_slide_y_reverse="slide-y-reverse-transition";

_B._transition_scroll_x="scroll-x-transition";

_B._transition_scroll_x_reverse="scroll-x-reverse-transition";

_B._transition_scroll_y="scroll-y-transition";

_B._transition_scroll_y_reverse="scroll-y-reverse-transition";

_B._transition_scale="scale-transition";

_B._transition_fade="fade-transition";

_B._transition_fab="fab-transition";

_B._flex_grow_0="flex-grow-0";

_B._flex_grow_1="flex-grow-1";

_B._flex_shrink_0="flex-shrink-0";

_B._flex_shrink_1="flex-shrink-1";

_B._text_left="text-left";

_B._text_center="text-center";

_B._text_right="text-right";

_B._text_no_wrap="text-no-wrap";

_B._text_truncate="text-truncate";

_B._text_lowercase="text-lowercase";

_B._text_uppercase="text-uppercase";

_B._text_capitalize="text-capitalize";

_B._locale_afrikaans="af";

_B._locale_arabic="ar";

_B._locale_catalan="ca";

_B._locale_czech="cs";

_B._locale_german="de";

_B._locale_greek="el";

_B._locale_english="en";

_B._locale_spanish="es";

_B._locale_estonian="et";

_B._locale_persian="fa";

_B._locale_finnish="fi";

_B._locale_french="fr";

_B._locale_hebrew="he";

_B._locale_croatian="hr";

_B._locale_hungarian="hu";

_B._locale_indonesian="id";

_B._locale_italian="it";

_B._locale_japanese="ja";

_B._locale_korean="ko";

_B._locale_lithuanian="lt";

_B._locale_latvian="lv";

_B._locale_dutch="nl";

_B._locale_norwegian="no";

_B._locale_polish="pl";

_B._locale_portuguese="pt";

_B._locale_romanian="ro";

_B._locale_russian="ru";

_B._locale_slovak="sk";

_B._locale_slovene="sl";

_B._locale_serbian="srCyrl";

_B._locale_swedish="sv";

_B._locale_thai="th";

_B._locale_turkish="tr";

_B._locale_ukrainian="uk";

_B._locale_chinese="zhHans";

_B._locale_chinese1="zhHant";

_B._visibility_printonly="print-only";

_B._visibility_screenonly="screen-only";

_B._visibility_xsonly="xs-only";

_B._visibility_smonly="sm-only";

_B._visibility_smanddown="sm-and-down";

_B._visibility_smandup="sm-and-up";

_B._visibility_mdonly="md-only";

_B._visibility_mdanddown="md-and-down";

_B._visibility_mdandup="md-and-up";

_B._visibility_lgonly="lg-only";

_B._visibility_lganddown="lg-and-down";

_B._visibility_lgandup="lg-and-up";

_B._visibility_xlonly="xl-only";

_B._visibility_all="";

_B._breakpoint={};

_B._breakpointname="";

_B._visibility_hidden_md_and_up="hidden-md-and-up";

_B._visibility_hidden_sm_and_down="hidden-sm-and-down";

_B._visibility_hidden_md_and_down="hidden-md-and-down";

_B._visibility_hidden_xl_and_down="hidden-xl-and-down";

_B._visibility_hidden_sm_and_up="hidden-sm-and-up";

_B._visibility_hidden_xl_and_up="hidden-xl-and-up";

_B._visibility_hidden_xs_only="hidden-xs-only";

_B._visibility_hidden_xl_only="hidden-xl-only";

_B._event_click="click";

_B._event_change="change";

_B._event_clickstop="click.stop";

_B._event_dblclick="dblclick";

_B._event_mousemove="MouseMove";

_B._event_mouseout="MouseOut";

_B._event_keyup="KeyUp";

_B._event_keypress="KeyPress";

_B._event_clickalt="Click.Alt";

_B._event_clickshift="Click.Shift";

_B._event_clickprevent="Click.Prevent";

_B._rtl=false;

_B._dark=false;

_B._vuetifyoptions={};

_B._lang="";

_B._basepath="/";

_B._apptemplatename="#apptemplate";

_B._appendholdername="#appendholder";

_B._placeholdername="#placeholder";

// [307] Sub Import(comp As VueComponent) 
_B.import=function(_comp) {
var _compname,_compx;
// [308]  Dim compname As String = comp.mName 
_compname=_comp._mname;
// [309]  compname = compname.tolowercase 
_compname=_compname.toLowerCase();
// [310]  If components.ContainsKey(compname) = True Then Return 
if ((_compname in _B._components)==true) { return ;}
// [311]  Dim compx As Map = comp.Component 
_compx=_comp.component();
// [312]  components.Put(compname, compx) 
_B._components[_compname]=_compx;
// End Sub
};

// [316] Sub AppendHolderTo(target As String) 
_B.appendholderto=function(_target) {
var _stemplate,_elx;
// [317]  target = target.ToLowerCase 
_target=_target.toLowerCase();
// [318]  target = target.Replace( {284} , {285} ) 
_target=_target.split("#").join("");
// [319]  Dim stemplate As String = BANanoGetHTMLAsIs( {286} ) 
_stemplate=_B.bananogethtmlasis("appendholder",_B);
// [320]  Dim elx As BANanoElement 
_elx=null;
// [321]  elx.Initialize( {0} ) 
_elx=u("#" + _target + "");
// [322]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [326] Sub SnackBarInitialize 
_B.snackbarinitialize=function() {
// [327]  SetData( {287} , {288} ) 
_B.setdata("appsnackmessage","",_B);
// [328]  SetData( {289} , False) 
_B.setdata("appsnackshow",false,_B);
// [329]  SetData( {290} , True) 
_B.setdata("appsnackright",true,_B);
// [330]  SetData( {291} , True) 
_B.setdata("appsnacktop",true,_B);
// [331]  SetData( {292} , {293} ) 
_B.setdata("appsnackcolor","",_B);
// [332]  SetData( {294} , False) 
_B.setdata("appsnackbottom",false,_B);
// [333]  SetData( {295} , False) 
_B.setdata("appsnackcentered",false,_B);
// [334]  SetData( {296} , False) 
_B.setdata("appsnackoutlined",false,_B);
// [335]  SetData( {297} , False) 
_B.setdata("appsnackleft",false,_B);
// [336]  SetData( {298} , True) 
_B.setdata("appsnackshaped",true,_B);
// [337]  SetData( {299} , False) 
_B.setdata("appsnackrounded",false,_B);
// End Sub
};

// [340] Sub SnackBarColor(s As String) As VuetifyApp 
_B.snackbarcolor=function(_s) {
// [341]  SetData( {300} ,s) 
_B.setdata("appsnackcolor",_s,_B);
// [342]  Return Me 
return _B;
// End Sub
};

// [345] Sub SnackBarRounded(b As Boolean) As VuetifyApp 
_B.snackbarrounded=function(_b) {
// [346]  SetData( {301} ,b) 
_B.setdata("appsnackrounded",_b,_B);
// [347]  Return Me 
return _B;
// End Sub
};

// [350] Sub SnackBarShaped(b As Boolean) As VuetifyApp 
_B.snackbarshaped=function(_b) {
// [351]  SetData( {302} ,b) 
_B.setdata("appsnackshaped",_b,_B);
// [352]  Return Me 
return _B;
// End Sub
};

// [355] Sub SnackBarOutlined(b As Boolean) As VuetifyApp 
_B.snackbaroutlined=function(_b) {
// [356]  SetData( {303} ,b) 
_B.setdata("appsnackoutlined",_b,_B);
// [357]  Return Me 
return _B;
// End Sub
};

// [360] Sub SnackBarTopLeft As VuetifyApp 
_B.snackbartopleft=function() {
// [361]  SetData( {304} , False) 
_B.setdata("appsnackright",false,_B);
// [362]  SetData( {305} , True) 
_B.setdata("appsnackleft",true,_B);
// [363]  SetData( {306} , True) 
_B.setdata("appsnacktop",true,_B);
// [364]  SetData( {307} ,False) 
_B.setdata("appsnackbottom",false,_B);
// [365]  SetData( {308} ,False) 
_B.setdata("appsnackcentered",false,_B);
// [366]  Return Me 
return _B;
// End Sub
};

// [369] Sub SnackBarTopCentered As VuetifyApp 
_B.snackbartopcentered=function() {
// [370]  SetData( {309} , False) 
_B.setdata("appsnackright",false,_B);
// [371]  SetData( {310} , False) 
_B.setdata("appsnackleft",false,_B);
// [372]  SetData( {311} , True) 
_B.setdata("appsnacktop",true,_B);
// [373]  SetData( {312} ,False) 
_B.setdata("appsnackbottom",false,_B);
// [374]  SetData( {313} ,True) 
_B.setdata("appsnackcentered",true,_B);
// [375]  Return Me 
return _B;
// End Sub
};

// [379] Sub SnackBarBottomCentered As VuetifyApp 
_B.snackbarbottomcentered=function() {
// [380]  SetData( {314} , False) 
_B.setdata("appsnackright",false,_B);
// [381]  SetData( {315} , False) 
_B.setdata("appsnackleft",false,_B);
// [382]  SetData( {316} , True) 
_B.setdata("appsnacktop",true,_B);
// [383]  SetData( {317} ,True) 
_B.setdata("appsnackbottom",true,_B);
// [384]  SetData( {318} ,True) 
_B.setdata("appsnackcentered",true,_B);
// [385]  Return Me 
return _B;
// End Sub
};

// [388] Sub SnackBarTopRight As VuetifyApp 
_B.snackbartopright=function() {
// [389]  SetData( {319} , True) 
_B.setdata("appsnackright",true,_B);
// [390]  SetData( {320} , False) 
_B.setdata("appsnackleft",false,_B);
// [391]  SetData( {321} , True) 
_B.setdata("appsnacktop",true,_B);
// [392]  SetData( {322} ,False) 
_B.setdata("appsnackbottom",false,_B);
// [393]  SetData( {323} ,False) 
_B.setdata("appsnackcentered",false,_B);
// [394]  Return Me 
return _B;
// End Sub
};

// [397] Sub SnackBarBottomLeft As VuetifyApp 
_B.snackbarbottomleft=function() {
// [398]  SetData( {324} , False) 
_B.setdata("appsnackright",false,_B);
// [399]  SetData( {325} , True) 
_B.setdata("appsnackleft",true,_B);
// [400]  SetData( {326} , False) 
_B.setdata("appsnacktop",false,_B);
// [401]  SetData( {327} ,True) 
_B.setdata("appsnackbottom",true,_B);
// [402]  SetData( {328} ,False) 
_B.setdata("appsnackcentered",false,_B);
// [403]  Return Me 
return _B;
// End Sub
};

// [406] Sub SnackBarBottomRight As VuetifyApp 
_B.snackbarbottomright=function() {
// [407]  SetData( {329} , True) 
_B.setdata("appsnackright",true,_B);
// [408]  SetData( {330} , False) 
_B.setdata("appsnackleft",false,_B);
// [409]  SetData( {331} , False) 
_B.setdata("appsnacktop",false,_B);
// [410]  SetData( {332} ,True) 
_B.setdata("appsnackbottom",true,_B);
// [411]  SetData( {333} ,False) 
_B.setdata("appsnackcentered",false,_B);
// [412]  Return Me 
return _B;
// End Sub
};

// [415] Sub SnackBarCentered As VuetifyApp 
_B.snackbarcentered=function() {
// [416]  SetData( {334} , False) 
_B.setdata("appsnackright",false,_B);
// [417]  SetData( {335} , False) 
_B.setdata("appsnackleft",false,_B);
// [418]  SetData( {336} , False) 
_B.setdata("appsnacktop",false,_B);
// [419]  SetData( {337} ,False) 
_B.setdata("appsnackbottom",false,_B);
// [420]  SetData( {338} ,True) 
_B.setdata("appsnackcentered",true,_B);
// [421]  Return Me 
return _B;
// End Sub
};

// [424] Sub ShowDialog(b As Boolean) 
_B.showdialog=function(_b) {
// [425]  SetData( {339} , b) 
_B.setdata("dialogshow",_b,_B);
// End Sub
};

// [429] Sub ShowDialog1 
_B.showdialog1=function() {
// [430]  SetData( {340} , True) 
_B.setdata("dialogshow",true,_B);
// End Sub
};

// [434] Sub HideDialog 
_B.hidedialog=function() {
// [435]  SetData( {341} , False) 
_B.setdata("dialogshow",false,_B);
// End Sub
};

// [439] Sub DialogInitialize 
_B.dialoginitialize=function() {
// [440]  SetData( {342} , {343} ) 
_B.setdata("dialogwidth","400",_B);
// [441]  SetData( {344} , False) 
_B.setdata("dialogshow",false,_B);
// [442]  SetData( {345} , {346} ) 
_B.setdata("dialogtitle","",_B);
// [443]  SetData( {347} , {348} ) 
_B.setdata("dialogmessage","",_B);
// [444]  SetData( {349} , True) 
_B.setdata("dialogokshow",true,_B);
// [445]  SetData( {350} , {351} ) 
_B.setdata("dialogoktitle","Ok",_B);
// [446]  SetData( {352} , {353} ) 
_B.setdata("dialogcanceltitle","Cancel",_B);
// [447]  SetData( {354} , False) 
_B.setdata("dialogcancelshow",false,_B);
// [448]  SetData( {355} , {356} ) 
_B.setdata("apppromptlabel","Text",_B);
// [449]  SetData( {357} , {358} ) 
_B.setdata("apppromptplaceholder","",_B);
// [450]  SetData( {359} , {360} ) 
_B.setdata("appprompthint","",_B);
// [451]  SetData( {361} , {362} ) 
_B.setdata("apppromptvalue","",_B);
// [452]  SetData( {363} , False) 
_B.setdata("apppromptshow",false,_B);
// End Sub
};

// [456] Sub GetPromptValue As String 
_B.getpromptvalue=function() {
var _sapppromptvalue;
// [457]  Dim sapppromptvalue As String = GetData( {364} ) 
_sapppromptvalue=_B.getdata("apppromptvalue",_B);
// [458]  sapppromptvalue = sapppromptvalue.trim 
_sapppromptvalue=_sapppromptvalue.trim();
// [459]  Return sapppromptvalue 
return _sapppromptvalue;
// End Sub
};

// [463] Sub ShowConfirm(process As String, Title As String, Message As String, ConfirmText As String, CancelText As String) 
_B.showconfirm=function(_process,_title,_message,_confirmtext,_canceltext) {
// [464]  process = process.tolowercase 
_process=_process.toLowerCase();
// [465]  SetData( {365} , False) 
_B.setdata("apppromptshow",false,_B);
// [466]  SetData( {366} , process) 
_B.setdata("confirmkey",_process,_B);
// [467]  SetData( {367} , Title) 
_B.setdata("dialogtitle",_title,_B);
// [468]  SetData( {368} , Message) 
_B.setdata("dialogmessage",_message,_B);
// [469]  SetData( {369} , ConfirmText) 
_B.setdata("dialogoktitle",_confirmtext,_B);
// [470]  SetData( {370} , True) 
_B.setdata("dialogokshow",true,_B);
// [471]  SetData( {371} , CancelText) 
_B.setdata("dialogcanceltitle",_canceltext,_B);
// [472]  SetData( {372} , True) 
_B.setdata("dialogcancelshow",true,_B);
// [473]  SetData( {373} , True) 
_B.setdata("dialogshow",true,_B);
// End Sub
};

// [477] Sub ShowPrompt(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String) 
_B.showprompt=function(_process,_title,_label,_placeholder,_hint,_defaultvalue,_oktext,_canceltext) {
// [478]  process = process.tolowercase 
_process=_process.toLowerCase();
// [479]  SetData( {374} , process) 
_B.setdata("confirmkey",_process,_B);
// [480]  SetData( {375} , Title) 
_B.setdata("dialogtitle",_title,_B);
// [481]  SetData( {376} , {377} ) 
_B.setdata("dialogmessage","",_B);
// [482]  SetData( {378} , OkText) 
_B.setdata("dialogoktitle",_oktext,_B);
// [483]  SetData( {379} , True) 
_B.setdata("dialogokshow",true,_B);
// [484]  SetData( {380} , CancelText) 
_B.setdata("dialogcanceltitle",_canceltext,_B);
// [485]  SetData( {381} , True) 
_B.setdata("dialogcancelshow",true,_B);
// [486]  SetData( {382} , True) 
_B.setdata("dialogshow",true,_B);
// [487]  SetData( {383} , Label) 
_B.setdata("apppromptlabel",_label,_B);
// [488]  SetData( {384} , Placeholder) 
_B.setdata("apppromptplaceholder",_placeholder,_B);
// [489]  SetData( {385} , Hint) 
_B.setdata("appprompthint",_hint,_B);
// [490]  SetData( {386} , DefaultValue) 
_B.setdata("apppromptvalue",_defaultvalue,_B);
// [491]  SetData( {387} , True) 
_B.setdata("apppromptshow",true,_B);
// End Sub
};

// [496] Sub ShowAlert(Title As String, Message As String, OkText As String) 
_B.showalert=function(_title,_message,_oktext) {
// [497]  SetData( {388} , False) 
_B.setdata("apppromptshow",false,_B);
// [498]  SetData( {389} , {390} ) 
_B.setdata("confirmkey","alert",_B);
// [499]  SetData( {391} , Title) 
_B.setdata("dialogtitle",_title,_B);
// [500]  SetData( {392} , Message) 
_B.setdata("dialogmessage",_message,_B);
// [501]  SetData( {393} , OkText) 
_B.setdata("dialogoktitle",_oktext,_B);
// [502]  SetData( {394} , True) 
_B.setdata("dialogokshow",true,_B);
// [503]  SetData( {395} , {396} ) 
_B.setdata("dialogcanceltitle","Cancel",_B);
// [504]  SetData( {397} , False) 
_B.setdata("dialogcancelshow",false,_B);
// [505]  SetData( {398} , True) 
_B.setdata("dialogshow",true,_B);
// End Sub
};

// [509] Sub getConfirm As String 
_B.getconfirm=function() {
var _s;
// [510]  Dim s As String = GetData( {399} ) 
_s=_B.getdata("confirmkey",_B);
// [511]  Return s 
return _s;
// End Sub
};

// [514] Sub ShowSnackBarError(Message As String) As VuetifyApp 
_B.showsnackbarerror=function(_message) {
// [515]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [516]  SetData( {400} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [517]  SetData( {401} , {402} ) 
_B.setdata("appsnackcolor","error",_B);
// [518]  SetData( {403} , True) 
_B.setdata("appsnackshow",true,_B);
// [519]  Return Me 
return _B;
// End Sub
};

// [522] Sub ShowSnackBarSuccess(Message As String) As VuetifyApp 
_B.showsnackbarsuccess=function(_message) {
// [523]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [524]  SetData( {404} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [525]  SetData( {405} , {406} ) 
_B.setdata("appsnackcolor","success",_B);
// [526]  SetData( {407} , True) 
_B.setdata("appsnackshow",true,_B);
// [527]  Return Me 
return _B;
// End Sub
};

// [530] Sub ShowSnackBarPrimary(Message As String) As VuetifyApp 
_B.showsnackbarprimary=function(_message) {
// [531]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [532]  SetData( {408} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [533]  SetData( {409} , {410} ) 
_B.setdata("appsnackcolor","primary",_B);
// [534]  SetData( {411} , True) 
_B.setdata("appsnackshow",true,_B);
// [535]  Return Me 
return _B;
// End Sub
};

// [538] Sub ShowSnackBarSecondary(Message As String) As VuetifyApp 
_B.showsnackbarsecondary=function(_message) {
// [539]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [540]  SetData( {412} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [541]  SetData( {413} , {414} ) 
_B.setdata("appsnackcolor","secondary",_B);
// [542]  SetData( {415} , True) 
_B.setdata("appsnackshow",true,_B);
// [543]  Return Me 
return _B;
// End Sub
};

// [546] Sub ShowSnackBarInfo(Message As String) As VuetifyApp 
_B.showsnackbarinfo=function(_message) {
// [547]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [548]  SetData( {416} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [549]  SetData( {417} , {418} ) 
_B.setdata("appsnackcolor","info",_B);
// [550]  SetData( {419} , True) 
_B.setdata("appsnackshow",true,_B);
// [551]  Return Me 
return _B;
// End Sub
};

// [555] Sub ShowSnackBarWarning(Message As String) As VuetifyApp 
_B.showsnackbarwarning=function(_message) {
// [556]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [557]  SetData( {420} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [558]  SetData( {421} , {422} ) 
_B.setdata("appsnackcolor","warning",_B);
// [559]  SetData( {423} , True) 
_B.setdata("appsnackshow",true,_B);
// [560]  Return Me 
return _B;
// End Sub
};

// [563] Sub ShowSnackBar(Message As String) As VuetifyApp 
_B.showsnackbar=function(_message) {
// [564]  If BANano.IsNull(Message) Then Return Me 
if (is.null(_message)) { return _B;}
// [565]  SetData( {424} , Message) 
_B.setdata("appsnackmessage",_message,_B);
// [566]  SetData( {425} , {426} ) 
_B.setdata("appsnackcolor","",_B);
// [567]  SetData( {427} , True) 
_B.setdata("appsnackshow",true,_B);
// [568]  Return Me 
return _B;
// End Sub
};

// [571] Sub HideSnackBar As VuetifyApp 
_B.hidesnackbar=function() {
// [572]  SetData( {428} , False) 
_B.setdata("appsnackshow",false,_B);
// [573]  Return Me 
return _B;
// End Sub
};

// [578] Sub AppendPlaceHolderTo(target As String) 
_B.appendplaceholderto=function(_target) {
var _stemplate,_elx;
// [579]  target = target.ToLowerCase 
_target=_target.toLowerCase();
// [580]  target = target.Replace( {429} , {430} ) 
_target=_target.split("#").join("");
// [581]  Dim stemplate As String = BANanoGetHTMLAsIs( {431} ) 
_stemplate=_B.bananogethtmlasis("placeholder",_B);
// [582]  Dim elx As BANanoElement 
_elx=null;
// [583]  elx.Initialize( {1} ) 
_elx=u("#" + _target + "");
// [584]  elx.append(stemplate) 
_elx.append(_stemplate);
// End Sub
};

// [589] Sub BANanoGetHTMLAsIs(id As String) As String 
_B.bananogethtmlasis=function(_id) {
var _be,_xtemplate;
// [590]  id = id.tolowercase 
_id=_id.toLowerCase();
// [591]  id = id.Replace( {432} , {433} ) 
_id=_id.split("#").join("");
// [592]  Dim be As BANanoElement 
_be=null;
// [593]  be.Initialize( {2} ) 
_be=u("#" + _id + "");
// [594]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [595]  be.Empty 
_be.empty();
// [596]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [601] Sub BANanoGetHTML(id As String) As String 
_B.bananogethtml=function(_id) {
var _be,_xtemplate;
// [602]  id = id.tolowercase 
_id=_id.toLowerCase();
// [603]  id = id.Replace( {434} , {435} ) 
_id=_id.split("#").join("");
// [604]  Dim be As BANanoElement 
_be=null;
// [605]  be.Initialize( {3} ) 
_be=u("#" + _id + "");
// [606]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [607]  be.Empty 
_be.empty();
// [608]  xTemplate = xTemplate.Replace( {436} , {437} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [609]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [614] Sub BindVueElement(elx As VueElement) 
_B.bindvueelement=function(_elx) {
var _mbindings,_mmethods,_k,_v,_cb;
// [615]  Dim mbindings As Map = elx.bindings 
_mbindings=_elx._bindings;
// [616]  Dim mmethods As Map = elx.methods 
_mmethods=_elx._methods;
// [618]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [619]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [620]  Select Case k 
switch ("" + _k) {
// [621]  Case {438} 
case "" + "key":
// [622]  Case {439} , {440} 
break;
case "" + ":rules":
case "" + ":items":
// [623]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [624]  Case Else 
break;
default:
// [625]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [626]  End Select 
break;
}
// [627]  Next 
}
// [629]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [630]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [631]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [632]  Next 
}
// End Sub
};

// [636] Sub GetBreakPointName As String 
_B.getbreakpointname=function() {
var _bp,_res;
// [637]  Dim bp As BANanoObject = Vuetify.GetField( {441} ) 
_bp=_B._vuetify["breakpoint"];
// [638]  Dim res As String = bp.GetField( {442} ).Result 
_res=_bp["name"];
// [639]  Return res 
return _res;
// End Sub
};

// [643] Public Sub Initialize(Module As Object) 
_B.initialize=function(_module) {
// [645]  body = BANano.GetElement( {443} ) 
_B._body=u("#body");
// [646]  body.Append( {4} ) 
_B._body.append("<div id=\"app\"><div id=\"placeholder\" v-if=\"placeholder\"></div><div id=\"appendholder\" v-if=\"appendholder\"></div><v-template id=\"apptemplate\" v-if=\"apptemplate\"></v-template></div>");
// [649]  SetData( {444} , False) 
_B.setdata("placeholder",false,_B);
// [650]  SetData( {445} , False) 
_B.setdata("appendholder",false,_B);
// [651]  SetData( {446} , False) 
_B.setdata("apptemplate",false,_B);
// [653]  Vue.Initialize( {447} ) 
_B._vue=Vue;
// [656]  state.Initialize 
_B._state={};
// [657]  Errors.Initialize 
_B._errors={};
// [658]  Modules.Initialize 
_B._modules={};
// [659]  methods.Initialize 
_B._methods={};
// [660]  computed.Initialize 
_B._computed={};
// [661]  watches.Initialize 
_B._watches={};
// [662]  filters.Initialize 
_B._filters={};
// [663]  opt.Initialize 
_B._opt={};
// [664]  Query.Initialize 
_B._query={};
// [665]  EventHandler = Module 
_B._eventhandler=_module;
// [666]  routes.Initialize 
_B._routes.length=0;
// [667]  components.Initialize 
_B._components={};
// [668]  Options.Initialize 
_B._options={};
// [669]  Modules.Initialize 
_B._modules={};
// [670]  Themes.Initialize 
_B._themes={};
// [671]  data.Initialize 
_B._data={};
// [672]  InitColors 
_B.initcolors(_B);
// [674]  RTL = False 
_B._rtl=false;
// [675]  Dark = False 
_B._dark=false;
// [676]  lang = {448} 
_B._lang="en";
// [677]  VuetifyOptions.Initialize 
_B._vuetifyoptions={};
// End Sub
};

// [680] private Sub InitColors 
_B.initcolors=function() {
// [681]  ColorMap.Initialize 
_B._colormap={};
// [682]  ColorMap.put( {449} , {450} ) 
_B._colormap["red lighten-5"]="#ffebee";
// [683]  ColorMap.put( {451} , {452} ) 
_B._colormap["red lighten-4"]="#ffcdd2";
// [684]  ColorMap.put( {453} , {454} ) 
_B._colormap["red lighten-3"]="#ef9a9a";
// [685]  ColorMap.put( {455} , {456} ) 
_B._colormap["red lighten-2"]="#e57373";
// [686]  ColorMap.put( {457} , {458} ) 
_B._colormap["red lighten-1"]="#ef5350";
// [687]  ColorMap.put( {459} , {460} ) 
_B._colormap["red"]="#f44336";
// [688]  ColorMap.put( {461} , {462} ) 
_B._colormap["red darken-1"]="#e53935";
// [689]  ColorMap.put( {463} , {464} ) 
_B._colormap["red darken-2"]="#d32f2f";
// [690]  ColorMap.put( {465} , {466} ) 
_B._colormap["red darken-3"]="#c62828";
// [691]  ColorMap.put( {467} , {468} ) 
_B._colormap["red darken-4"]="#b71c1c";
// [692]  ColorMap.put( {469} , {470} ) 
_B._colormap["red accent-1"]="#ff8a80";
// [693]  ColorMap.put( {471} , {472} ) 
_B._colormap["red accent-2"]="#ff5252";
// [694]  ColorMap.put( {473} , {474} ) 
_B._colormap["red accent-3"]="#ff1744";
// [695]  ColorMap.put( {475} , {476} ) 
_B._colormap["red accent-4"]="#d50000";
// [696]  ColorMap.put( {477} , {478} ) 
_B._colormap["pink lighten-5"]="#fce4ec";
// [697]  ColorMap.put( {479} , {480} ) 
_B._colormap["pink lighten-4"]="#f8bbd0";
// [698]  ColorMap.put( {481} , {482} ) 
_B._colormap["pink lighten-3"]="#f48fb1";
// [699]  ColorMap.put( {483} , {484} ) 
_B._colormap["pink lighten-2"]="#f06292";
// [700]  ColorMap.put( {485} , {486} ) 
_B._colormap["pink lighten-1"]="#ec407a";
// [701]  ColorMap.put( {487} , {488} ) 
_B._colormap["pink"]="#e91e63";
// [702]  ColorMap.put( {489} , {490} ) 
_B._colormap["pink darken-1"]="#d81b60";
// [703]  ColorMap.put( {491} , {492} ) 
_B._colormap["pink darken-2"]="#c2185b";
// [704]  ColorMap.put( {493} , {494} ) 
_B._colormap["pink darken-3"]="#ad1457";
// [705]  ColorMap.put( {495} , {496} ) 
_B._colormap["pink darken-4"]="#880e4f";
// [706]  ColorMap.put( {497} , {498} ) 
_B._colormap["pink accent-1"]="#ff80ab";
// [707]  ColorMap.put( {499} , {500} ) 
_B._colormap["pink accent-2"]="#ff4081";
// [708]  ColorMap.put( {501} , {502} ) 
_B._colormap["pink accent-3"]="#f50057";
// [709]  ColorMap.put( {503} , {504} ) 
_B._colormap["pink accent-4"]="#c51162";
// [710]  ColorMap.put( {505} , {506} ) 
_B._colormap["purple lighten-5"]="#f3e5f5";
// [711]  ColorMap.put( {507} , {508} ) 
_B._colormap["purple lighten-4"]="#e1bee7";
// [712]  ColorMap.put( {509} , {510} ) 
_B._colormap["purple lighten-3"]="#ce93d8";
// [713]  ColorMap.put( {511} , {512} ) 
_B._colormap["purple lighten-2"]="#ba68c8";
// [714]  ColorMap.put( {513} , {514} ) 
_B._colormap["purple lighten-1"]="#ab47bc";
// [715]  ColorMap.put( {515} , {516} ) 
_B._colormap["purple"]="#9c27b0";
// [716]  ColorMap.put( {517} , {518} ) 
_B._colormap["purple darken-1"]="#8e24aa";
// [717]  ColorMap.put( {519} , {520} ) 
_B._colormap["purple darken-2"]="#7b1fa2";
// [718]  ColorMap.put( {521} , {522} ) 
_B._colormap["purple darken-3"]="#6a1b9a";
// [719]  ColorMap.put( {523} , {524} ) 
_B._colormap["purple darken-4"]="#4a148c";
// [720]  ColorMap.put( {525} , {526} ) 
_B._colormap["purple accent-1"]="#ea80fc";
// [721]  ColorMap.put( {527} , {528} ) 
_B._colormap["purple accent-2"]="#e040fb";
// [722]  ColorMap.put( {529} , {530} ) 
_B._colormap["purple accent-3"]="#d500f9";
// [723]  ColorMap.put( {531} , {532} ) 
_B._colormap["purple accent-4"]="#aa00ff";
// [724]  ColorMap.put( {533} , {534} ) 
_B._colormap["deep-purple lighten-5"]="#ede7f6";
// [725]  ColorMap.put( {535} , {536} ) 
_B._colormap["deep-purple lighten-4"]="#d1c4e9";
// [726]  ColorMap.put( {537} , {538} ) 
_B._colormap["deep-purple lighten-3"]="#b39ddb";
// [727]  ColorMap.put( {539} , {540} ) 
_B._colormap["deep-purple lighten-2"]="#9575cd";
// [728]  ColorMap.put( {541} , {542} ) 
_B._colormap["deep-purple lighten-1"]="#7e57c2";
// [729]  ColorMap.put( {543} , {544} ) 
_B._colormap["deep-purple"]="#673ab7";
// [730]  ColorMap.put( {545} , {546} ) 
_B._colormap["deep-purple darken-1"]="#5e35b1";
// [731]  ColorMap.put( {547} , {548} ) 
_B._colormap["deep-purple darken-2"]="#512da8";
// [732]  ColorMap.put( {549} , {550} ) 
_B._colormap["deep-purple darken-3"]="#4527a0";
// [733]  ColorMap.put( {551} , {552} ) 
_B._colormap["deep-purple darken-4"]="#311b92";
// [734]  ColorMap.put( {553} , {554} ) 
_B._colormap["deep-purple accent-1"]="#b388ff";
// [735]  ColorMap.put( {555} , {556} ) 
_B._colormap["deep-purple accent-2"]="#7c4dff";
// [736]  ColorMap.put( {557} , {558} ) 
_B._colormap["deep-purple accent-3"]="#651fff";
// [737]  ColorMap.put( {559} , {560} ) 
_B._colormap["deep-purple accent-4"]="#6200ea";
// [738]  ColorMap.put( {561} , {562} ) 
_B._colormap["indigo lighten-5"]="#e8eaf6";
// [739]  ColorMap.put( {563} , {564} ) 
_B._colormap["indigo lighten-4"]="#c5cae9";
// [740]  ColorMap.put( {565} , {566} ) 
_B._colormap["indigo lighten-3"]="#9fa8da";
// [741]  ColorMap.put( {567} , {568} ) 
_B._colormap["indigo lighten-2"]="#7986cb";
// [742]  ColorMap.put( {569} , {570} ) 
_B._colormap["indigo lighten-1"]="#5c6bc0";
// [743]  ColorMap.put( {571} , {572} ) 
_B._colormap["indigo"]="#3f51b5";
// [744]  ColorMap.put( {573} , {574} ) 
_B._colormap["indigo darken-1"]="#3949ab";
// [745]  ColorMap.put( {575} , {576} ) 
_B._colormap["indigo darken-2"]="#303f9f";
// [746]  ColorMap.put( {577} , {578} ) 
_B._colormap["indigo darken-3"]="#283593";
// [747]  ColorMap.put( {579} , {580} ) 
_B._colormap["indigo darken-4"]="#1a237e";
// [748]  ColorMap.put( {581} , {582} ) 
_B._colormap["indigo accent-1"]="#8c9eff";
// [749]  ColorMap.put( {583} , {584} ) 
_B._colormap["indigo accent-2"]="#536dfe";
// [750]  ColorMap.put( {585} , {586} ) 
_B._colormap["indigo accent-3"]="#3d5afe";
// [751]  ColorMap.put( {587} , {588} ) 
_B._colormap["indigo accent-4"]="#304ffe";
// [752]  ColorMap.put( {589} , {590} ) 
_B._colormap["blue lighten-5"]="#e3f2fd";
// [753]  ColorMap.put( {591} , {592} ) 
_B._colormap["blue lighten-4"]="#bbdefb";
// [754]  ColorMap.put( {593} , {594} ) 
_B._colormap["blue lighten-3"]="#90caf9";
// [755]  ColorMap.put( {595} , {596} ) 
_B._colormap["blue lighten-2"]="#64b5f6";
// [756]  ColorMap.put( {597} , {598} ) 
_B._colormap["blue lighten-1"]="#42a5f5";
// [757]  ColorMap.put( {599} , {600} ) 
_B._colormap["blue"]="#2196f3";
// [758]  ColorMap.put( {601} , {602} ) 
_B._colormap["blue darken-1"]="#1e88e5";
// [759]  ColorMap.put( {603} , {604} ) 
_B._colormap["blue darken-2"]="#1976d2";
// [760]  ColorMap.put( {605} , {606} ) 
_B._colormap["blue darken-3"]="#1565c0";
// [761]  ColorMap.put( {607} , {608} ) 
_B._colormap["blue darken-4"]="#0d47a1";
// [762]  ColorMap.put( {609} , {610} ) 
_B._colormap["blue accent-1"]="#82b1ff";
// [763]  ColorMap.put( {611} , {612} ) 
_B._colormap["blue accent-2"]="#448aff";
// [764]  ColorMap.put( {613} , {614} ) 
_B._colormap["blue accent-3"]="#2979ff";
// [765]  ColorMap.put( {615} , {616} ) 
_B._colormap["blue accent-4"]="#2962ff";
// [766]  ColorMap.put( {617} , {618} ) 
_B._colormap["light-blue lighten-5"]="#e1f5fe";
// [767]  ColorMap.put( {619} , {620} ) 
_B._colormap["light-blue lighten-4"]="#b3e5fc";
// [768]  ColorMap.put( {621} , {622} ) 
_B._colormap["light-blue lighten-3"]="#81d4fa";
// [769]  ColorMap.put( {623} , {624} ) 
_B._colormap["light-blue lighten-2"]="#4fc3f7";
// [770]  ColorMap.put( {625} , {626} ) 
_B._colormap["light-blue lighten-1"]="#29b6f6";
// [771]  ColorMap.put( {627} , {628} ) 
_B._colormap["light-blue"]="#03a9f4";
// [772]  ColorMap.put( {629} , {630} ) 
_B._colormap["light-blue darken-1"]="#039be5";
// [773]  ColorMap.put( {631} , {632} ) 
_B._colormap["light-blue darken-2"]="#0288d1";
// [774]  ColorMap.put( {633} , {634} ) 
_B._colormap["light-blue darken-3"]="#0277bd";
// [775]  ColorMap.put( {635} , {636} ) 
_B._colormap["light-blue darken-4"]="#01579b";
// [776]  ColorMap.put( {637} , {638} ) 
_B._colormap["light-blue accent-1"]="#80d8ff";
// [777]  ColorMap.put( {639} , {640} ) 
_B._colormap["light-blue accent-2"]="#40c4ff";
// [778]  ColorMap.put( {641} , {642} ) 
_B._colormap["light-blue accent-3"]="#00b0ff";
// [779]  ColorMap.put( {643} , {644} ) 
_B._colormap["light-blue accent-4"]="#0091ea";
// [780]  ColorMap.put( {645} , {646} ) 
_B._colormap["cyan lighten-5"]="#e0f7fa";
// [781]  ColorMap.put( {647} , {648} ) 
_B._colormap["cyan lighten-4"]="#b2ebf2";
// [782]  ColorMap.put( {649} , {650} ) 
_B._colormap["cyan lighten-3"]="#80deea";
// [783]  ColorMap.put( {651} , {652} ) 
_B._colormap["cyan lighten-2"]="#4dd0e1";
// [784]  ColorMap.put( {653} , {654} ) 
_B._colormap["cyan lighten-1"]="#26c6da";
// [785]  ColorMap.put( {655} , {656} ) 
_B._colormap["cyan"]="#00bcd4";
// [786]  ColorMap.put( {657} , {658} ) 
_B._colormap["cyan darken-1"]="#00acc1";
// [787]  ColorMap.put( {659} , {660} ) 
_B._colormap["cyan darken-2"]="#0097a7";
// [788]  ColorMap.put( {661} , {662} ) 
_B._colormap["cyan darken-3"]="#00838f";
// [789]  ColorMap.put( {663} , {664} ) 
_B._colormap["cyan darken-4"]="#006064";
// [790]  ColorMap.put( {665} , {666} ) 
_B._colormap["cyan accent-1"]="#84ffff";
// [791]  ColorMap.put( {667} , {668} ) 
_B._colormap["cyan accent-2"]="#18ffff";
// [792]  ColorMap.put( {669} , {670} ) 
_B._colormap["cyan accent-3"]="#00e5ff";
// [793]  ColorMap.put( {671} , {672} ) 
_B._colormap["cyan accent-4"]="#00b8d4";
// [794]  ColorMap.put( {673} , {674} ) 
_B._colormap["teal lighten-5"]="#e0f2f1";
// [795]  ColorMap.put( {675} , {676} ) 
_B._colormap["teal lighten-4"]="#b2dfdb";
// [796]  ColorMap.put( {677} , {678} ) 
_B._colormap["teal lighten-3"]="#80cbc4";
// [797]  ColorMap.put( {679} , {680} ) 
_B._colormap["teal lighten-2"]="#4db6ac";
// [798]  ColorMap.put( {681} , {682} ) 
_B._colormap["teal lighten-1"]="#26a69a";
// [799]  ColorMap.put( {683} , {684} ) 
_B._colormap["teal"]="#009688";
// [800]  ColorMap.put( {685} , {686} ) 
_B._colormap["teal darken-1"]="#00897b";
// [801]  ColorMap.put( {687} , {688} ) 
_B._colormap["teal darken-2"]="#00796b";
// [802]  ColorMap.put( {689} , {690} ) 
_B._colormap["teal darken-3"]="#00695c";
// [803]  ColorMap.put( {691} , {692} ) 
_B._colormap["teal darken-4"]="#004d40";
// [804]  ColorMap.put( {693} , {694} ) 
_B._colormap["teal accent-1"]="#a7ffeb";
// [805]  ColorMap.put( {695} , {696} ) 
_B._colormap["teal accent-2"]="#64ffda";
// [806]  ColorMap.put( {697} , {698} ) 
_B._colormap["teal accent-3"]="#1de9b6";
// [807]  ColorMap.put( {699} , {700} ) 
_B._colormap["teal accent-4"]="#00bfa5";
// [808]  ColorMap.put( {701} , {702} ) 
_B._colormap["green lighten-5"]="#e8f5e9";
// [809]  ColorMap.put( {703} , {704} ) 
_B._colormap["green lighten-4"]="#c8e6c9";
// [810]  ColorMap.put( {705} , {706} ) 
_B._colormap["green lighten-3"]="#a5d6a7";
// [811]  ColorMap.put( {707} , {708} ) 
_B._colormap["green lighten-2"]="#81c784";
// [812]  ColorMap.put( {709} , {710} ) 
_B._colormap["green lighten-1"]="#66bb6a";
// [813]  ColorMap.put( {711} , {712} ) 
_B._colormap["green"]="#4caf50";
// [814]  ColorMap.put( {713} , {714} ) 
_B._colormap["green darken-1"]="#43a047";
// [815]  ColorMap.put( {715} , {716} ) 
_B._colormap["green darken-2"]="#388e3c";
// [816]  ColorMap.put( {717} , {718} ) 
_B._colormap["green darken-3"]="#2e7d32";
// [817]  ColorMap.put( {719} , {720} ) 
_B._colormap["green darken-4"]="#1b5e20";
// [818]  ColorMap.put( {721} , {722} ) 
_B._colormap["green accent-1"]="#b9f6ca";
// [819]  ColorMap.put( {723} , {724} ) 
_B._colormap["green accent-2"]="#69f0ae";
// [820]  ColorMap.put( {725} , {726} ) 
_B._colormap["green accent-3"]="#00e676";
// [821]  ColorMap.put( {727} , {728} ) 
_B._colormap["green accent-4"]="#00c853";
// [822]  ColorMap.put( {729} , {730} ) 
_B._colormap["light-green lighten-5"]="#f1f8e9";
// [823]  ColorMap.put( {731} , {732} ) 
_B._colormap["light-green lighten-4"]="#dcedc8";
// [824]  ColorMap.put( {733} , {734} ) 
_B._colormap["light-green lighten-3"]="#c5e1a5";
// [825]  ColorMap.put( {735} , {736} ) 
_B._colormap["light-green lighten-2"]="#aed581";
// [826]  ColorMap.put( {737} , {738} ) 
_B._colormap["light-green lighten-1"]="#9ccc65";
// [827]  ColorMap.put( {739} , {740} ) 
_B._colormap["light-green"]="#8bc34a";
// [828]  ColorMap.put( {741} , {742} ) 
_B._colormap["light-green darken-1"]="#7cb342";
// [829]  ColorMap.put( {743} , {744} ) 
_B._colormap["light-green darken-2"]="#689f38";
// [830]  ColorMap.put( {745} , {746} ) 
_B._colormap["light-green darken-3"]="#558b2f";
// [831]  ColorMap.put( {747} , {748} ) 
_B._colormap["light-green darken-4"]="#33691e";
// [832]  ColorMap.put( {749} , {750} ) 
_B._colormap["light-green accent-1"]="#ccff90";
// [833]  ColorMap.put( {751} , {752} ) 
_B._colormap["light-green accent-2"]="#b2ff59";
// [834]  ColorMap.put( {753} , {754} ) 
_B._colormap["light-green accent-3"]="#76ff03";
// [835]  ColorMap.put( {755} , {756} ) 
_B._colormap["light-green accent-4"]="#64dd17";
// [836]  ColorMap.put( {757} , {758} ) 
_B._colormap["lime lighten-5"]="#f9fbe7";
// [837]  ColorMap.put( {759} , {760} ) 
_B._colormap["lime lighten-4"]="#f0f4c3";
// [838]  ColorMap.put( {761} , {762} ) 
_B._colormap["lime lighten-3"]="#e6ee9c";
// [839]  ColorMap.put( {763} , {764} ) 
_B._colormap["lime lighten-2"]="#dce775";
// [840]  ColorMap.put( {765} , {766} ) 
_B._colormap["lime lighten-1"]="#d4e157";
// [841]  ColorMap.put( {767} , {768} ) 
_B._colormap["lime"]="#cddc39";
// [842]  ColorMap.put( {769} , {770} ) 
_B._colormap["lime darken-1"]="#c0ca33";
// [843]  ColorMap.put( {771} , {772} ) 
_B._colormap["lime darken-2"]="#afb42b";
// [844]  ColorMap.put( {773} , {774} ) 
_B._colormap["lime darken-3"]="#9e9d24";
// [845]  ColorMap.put( {775} , {776} ) 
_B._colormap["lime darken-4"]="#827717";
// [846]  ColorMap.put( {777} , {778} ) 
_B._colormap["lime accent-1"]="#f4ff81";
// [847]  ColorMap.put( {779} , {780} ) 
_B._colormap["lime accent-2"]="#eeff41";
// [848]  ColorMap.put( {781} , {782} ) 
_B._colormap["lime accent-3"]="#c6ff00";
// [849]  ColorMap.put( {783} , {784} ) 
_B._colormap["lime accent-4"]="#aeea00";
// [850]  ColorMap.put( {785} , {786} ) 
_B._colormap["yellow lighten-5"]="#fffde7";
// [851]  ColorMap.put( {787} , {788} ) 
_B._colormap["yellow lighten-4"]="#fff9c4";
// [852]  ColorMap.put( {789} , {790} ) 
_B._colormap["yellow lighten-3"]="#fff59d";
// [853]  ColorMap.put( {791} , {792} ) 
_B._colormap["yellow lighten-2"]="#fff176";
// [854]  ColorMap.put( {793} , {794} ) 
_B._colormap["yellow lighten-1"]="#ffee58";
// [855]  ColorMap.put( {795} , {796} ) 
_B._colormap["yellow"]="#ffeb3b";
// [856]  ColorMap.put( {797} , {798} ) 
_B._colormap["yellow darken-1"]="#fdd835";
// [857]  ColorMap.put( {799} , {800} ) 
_B._colormap["yellow darken-2"]="#fbc02d";
// [858]  ColorMap.put( {801} , {802} ) 
_B._colormap["yellow darken-3"]="#f9a825";
// [859]  ColorMap.put( {803} , {804} ) 
_B._colormap["yellow darken-4"]="#f57f17";
// [860]  ColorMap.put( {805} , {806} ) 
_B._colormap["yellow accent-1"]="#ffff8d";
// [861]  ColorMap.put( {807} , {808} ) 
_B._colormap["yellow accent-2"]="#ffff00";
// [862]  ColorMap.put( {809} , {810} ) 
_B._colormap["yellow accent-3"]="#ffea00";
// [863]  ColorMap.put( {811} , {812} ) 
_B._colormap["yellow accent-4"]="#ffd600";
// [864]  ColorMap.put( {813} , {814} ) 
_B._colormap["amber lighten-5"]="#fff8e1";
// [865]  ColorMap.put( {815} , {816} ) 
_B._colormap["amber lighten-4"]="#ffecb3";
// [866]  ColorMap.put( {817} , {818} ) 
_B._colormap["amber lighten-3"]="#ffe082";
// [867]  ColorMap.put( {819} , {820} ) 
_B._colormap["amber lighten-2"]="#ffd54f";
// [868]  ColorMap.put( {821} , {822} ) 
_B._colormap["amber lighten-1"]="#ffca28";
// [869]  ColorMap.put( {823} , {824} ) 
_B._colormap["amber"]="#ffc107";
// [870]  ColorMap.put( {825} , {826} ) 
_B._colormap["amber darken-1"]="#ffb300";
// [871]  ColorMap.put( {827} , {828} ) 
_B._colormap["amber darken-2"]="#ffa000";
// [872]  ColorMap.put( {829} , {830} ) 
_B._colormap["amber darken-3"]="#ff8f00";
// [873]  ColorMap.put( {831} , {832} ) 
_B._colormap["amber darken-4"]="#ff6f00";
// [874]  ColorMap.put( {833} , {834} ) 
_B._colormap["amber accent-1"]="#ffe57f";
// [875]  ColorMap.put( {835} , {836} ) 
_B._colormap["amber accent-2"]="#ffd740";
// [876]  ColorMap.put( {837} , {838} ) 
_B._colormap["amber accent-3"]="#ffc400";
// [877]  ColorMap.put( {839} , {840} ) 
_B._colormap["amber accent-4"]="#ffab00";
// [878]  ColorMap.put( {841} , {842} ) 
_B._colormap["orange lighten-5"]="#fff3e0";
// [879]  ColorMap.put( {843} , {844} ) 
_B._colormap["orange lighten-4"]="#ffe0b2";
// [880]  ColorMap.put( {845} , {846} ) 
_B._colormap["orange lighten-3"]="#ffcc80";
// [881]  ColorMap.put( {847} , {848} ) 
_B._colormap["orange lighten-2"]="#ffb74d";
// [882]  ColorMap.put( {849} , {850} ) 
_B._colormap["orange lighten-1"]="#ffa726";
// [883]  ColorMap.put( {851} , {852} ) 
_B._colormap["orange"]="#ff9800";
// [884]  ColorMap.put( {853} , {854} ) 
_B._colormap["orange darken-1"]="#fb8c00";
// [885]  ColorMap.put( {855} , {856} ) 
_B._colormap["orange darken-2"]="#f57c00";
// [886]  ColorMap.put( {857} , {858} ) 
_B._colormap["orange darken-3"]="#ef6c00";
// [887]  ColorMap.put( {859} , {860} ) 
_B._colormap["orange darken-4"]="#e65100";
// [888]  ColorMap.put( {861} , {862} ) 
_B._colormap["orange accent-1"]="#ffd180";
// [889]  ColorMap.put( {863} , {864} ) 
_B._colormap["orange accent-2"]="#ffab40";
// [890]  ColorMap.put( {865} , {866} ) 
_B._colormap["orange accent-3"]="#ff9100";
// [891]  ColorMap.put( {867} , {868} ) 
_B._colormap["orange accent-4"]="#ff6d00";
// [892]  ColorMap.put( {869} , {870} ) 
_B._colormap["deep-orange lighten-5"]="#fbe9e7";
// [893]  ColorMap.put( {871} , {872} ) 
_B._colormap["deep-orange lighten-4"]="#ffccbc";
// [894]  ColorMap.put( {873} , {874} ) 
_B._colormap["deep-orange lighten-3"]="#ffab91";
// [895]  ColorMap.put( {875} , {876} ) 
_B._colormap["deep-orange lighten-2"]="#ff8a65";
// [896]  ColorMap.put( {877} , {878} ) 
_B._colormap["deep-orange lighten-1"]="#ff7043";
// [897]  ColorMap.put( {879} , {880} ) 
_B._colormap["deep-orange"]="#ff5722";
// [898]  ColorMap.put( {881} , {882} ) 
_B._colormap["deep-orange darken-1"]="#f4511e";
// [899]  ColorMap.put( {883} , {884} ) 
_B._colormap["deep-orange darken-2"]="#e64a19";
// [900]  ColorMap.put( {885} , {886} ) 
_B._colormap["deep-orange darken-3"]="#d84315";
// [901]  ColorMap.put( {887} , {888} ) 
_B._colormap["deep-orange darken-4"]="#bf360c";
// [902]  ColorMap.put( {889} , {890} ) 
_B._colormap["deep-orange accent-1"]="#ff9e80";
// [903]  ColorMap.put( {891} , {892} ) 
_B._colormap["deep-orange accent-2"]="#ff6e40";
// [904]  ColorMap.put( {893} , {894} ) 
_B._colormap["deep-orange accent-3"]="#ff3d00";
// [905]  ColorMap.put( {895} , {896} ) 
_B._colormap["deep-orange accent-4"]="#dd2c00";
// [906]  ColorMap.put( {897} , {898} ) 
_B._colormap["brown lighten-5"]="#efebe9";
// [907]  ColorMap.put( {899} , {900} ) 
_B._colormap["brown lighten-4"]="#d7ccc8";
// [908]  ColorMap.put( {901} , {902} ) 
_B._colormap["brown lighten-3"]="#bcaaa4";
// [909]  ColorMap.put( {903} , {904} ) 
_B._colormap["brown lighten-2"]="#a1887f";
// [910]  ColorMap.put( {905} , {906} ) 
_B._colormap["brown lighten-1"]="#8d6e63";
// [911]  ColorMap.put( {907} , {908} ) 
_B._colormap["brown"]="#795548";
// [912]  ColorMap.put( {909} , {910} ) 
_B._colormap["brown darken-1"]="#6d4c41";
// [913]  ColorMap.put( {911} , {912} ) 
_B._colormap["brown darken-2"]="#5d4037";
// [914]  ColorMap.put( {913} , {914} ) 
_B._colormap["brown darken-3"]="#4e342e";
// [915]  ColorMap.put( {915} , {916} ) 
_B._colormap["brown darken-4"]="#3e2723";
// [916]  ColorMap.put( {917} , {918} ) 
_B._colormap["grey lighten-5"]="#fafafa";
// [917]  ColorMap.put( {919} , {920} ) 
_B._colormap["grey lighten-4"]="#f5f5f5";
// [918]  ColorMap.put( {921} , {922} ) 
_B._colormap["grey lighten-3"]="#eeeeee";
// [919]  ColorMap.put( {923} , {924} ) 
_B._colormap["grey lighten-2"]="#e0e0e0";
// [920]  ColorMap.put( {925} , {926} ) 
_B._colormap["grey lighten-1"]="#bdbdbd";
// [921]  ColorMap.put( {927} , {928} ) 
_B._colormap["grey"]="#9e9e9e";
// [922]  ColorMap.put( {929} , {930} ) 
_B._colormap["grey darken-1"]="#757575";
// [923]  ColorMap.put( {931} , {932} ) 
_B._colormap["grey darken-2"]="#616161";
// [924]  ColorMap.put( {933} , {934} ) 
_B._colormap["grey darken-3"]="#424242";
// [925]  ColorMap.put( {935} , {936} ) 
_B._colormap["grey darken-4"]="#212121";
// [926]  ColorMap.put( {937} , {938} ) 
_B._colormap["blue-grey lighten-5"]="#eceff1";
// [927]  ColorMap.put( {939} , {940} ) 
_B._colormap["blue-grey lighten-4"]="#cfd8dc";
// [928]  ColorMap.put( {941} , {942} ) 
_B._colormap["blue-grey lighten-3"]="#b0bec5";
// [929]  ColorMap.put( {943} , {944} ) 
_B._colormap["blue-grey lighten-2"]="#90a4ae";
// [930]  ColorMap.put( {945} , {946} ) 
_B._colormap["blue-grey lighten-1"]="#78909c";
// [931]  ColorMap.put( {947} , {948} ) 
_B._colormap["blue-grey"]="#607d8b";
// [932]  ColorMap.put( {949} , {950} ) 
_B._colormap["blue-grey darken-1"]="#546e7a";
// [933]  ColorMap.put( {951} , {952} ) 
_B._colormap["blue-grey darken-2"]="#455a64";
// [934]  ColorMap.put( {953} , {954} ) 
_B._colormap["blue-grey darken-3"]="#37474f";
// [935]  ColorMap.put( {955} , {956} ) 
_B._colormap["blue-grey darken-4"]="#263238";
// [936]  ColorMap.put( {957} , {958} ) 
_B._colormap["black"]="#000000";
// [937]  ColorMap.put( {959} , {960} ) 
_B._colormap["white"]="#ffffff";
// [938]  ColorMap.put( {961} , {962} ) 
_B._colormap["transparent"]="transparent";
// End Sub
};

// [942] Sub AddTheme(themeName As String, ForeColor As String, ForeColorIntensity As String, BackColor As String, BackColorIntensity As String) 
_B.addtheme=function(_themename,_forecolor,_forecolorintensity,_backcolor,_backcolorintensity) {
var _fc,_fci,_bc,_classline;
// [943]  themeName = themeName.ToLowerCase 
_themename=_themename.toLowerCase();
// [945]  Dim fc As String = {5} 
_fc="" + _forecolor + "--text";
// [946]  Dim fci As String = {6} 
_fci="text--" + _forecolorintensity + "";
// [947]  Dim bc As String = {7} 
_bc="" + _backcolor + " " + _backcolorintensity + "";
// [949]  fc = fc.trim 
_fc=_fc.trim();
// [950]  fci = fci.Trim 
_fci=_fci.trim();
// [952]  If fc = {963} Then fc = {964} 
if (_fc=="--text") {_fc="";}
// [953]  If fci = {965} Then fci = {966} 
if (_fci=="text--") {_fci="";}
// [955]  Dim classLine As String = {8} 
_classline="" + _fc + " " + _fci + " " + _bc + "";
// [956]  classLine = classLine.Trim 
_classline=_classline.trim();
// [957]  classLine = classLine.Replace( {967} , {968} ) 
_classline=_classline.split("  ").join(" ");
// [958]  classLine = classLine.Trim 
_classline=_classline.trim();
// [959]  Themes.Put(themeName, classLine) 
_B._themes[_themename]=_classline;
// End Sub
};

// [963] Sub GetElementByData(dataattr As String, value As String) As BANanoElement 
_B.getelementbydata=function(_dataattr,_value) {
var _skey,_dataid;
// [964]  dataattr = dataattr.tolowercase 
_dataattr=_dataattr.toLowerCase();
// [965]  Dim skey As String = {9} 
_skey="[data-" + _dataattr + "='" + _value + "']";
// [966]  Dim dataId As BANanoElement 
_dataid=null;
// [967]  dataId.Initialize(skey) 
_dataid=u(_skey);
// [968]  Return dataId 
return _dataid;
// End Sub
};

// [972] Sub CreateOwnComponent(id As String, compName As String) As VueElement 
_B.createowncomponent=function(_id,_compname) {
var _elx;
// [973]  Dim elx As VueElement 
_elx= new banano_bananovuetifyad3_vueelement();
// [974]  elx.Initialize(Me, id, compName) 
_elx.initialize(_B,_id,_compname);
// [975]  Return elx 
return _elx;
// End Sub
};

// [979] Sub CreateDynamicComponent(id As String, viewID As String, compID As String) As VueElement 
_B.createdynamiccomponent=function(_id,_viewid,_compid) {
var _elx;
// [980]  Dim elx As VueElement 
_elx= new banano_bananovuetifyad3_vueelement();
// [981]  elx.Initialize(Me, id, {969} ) 
_elx.initialize(_B,_id,"component");
// [982]  elx.BindDynamicComponent(viewID, compID) 
_elx.binddynamiccomponent(_viewid,_compid);
// [983]  Return elx 
return _elx;
// End Sub
};

// [986] Sub GetHexColor(Color As String, Intensity As String) As String 
_B.gethexcolor=function(_color,_intensity) {
var _scode,_hexcolor;
// [987]  Dim sCode As String = {10} 
_scode="" + _color + " " + _intensity + "";
// [988]  sCode = sCode.Trim 
_scode=_scode.trim();
// [990]  Dim hexColor As String = {970} 
_hexcolor="";
// [991]  If ColorMap.ContainsKey(sCode) Then 
if ((_scode in _B._colormap)) {
// [992]  hexColor = ColorMap.Get(sCode) 
_hexcolor=_B._colormap[_scode];
// [993]  End If 
}
// [994]  Return hexColor 
return _hexcolor;
// End Sub
};

// [998] Sub GetColorHex(sColor As String) As String 
_B.getcolorhex=function(_scolor) {
var _xcolor;
// [999]  sColor = sColor.tolowercase 
_scolor=_scolor.toLowerCase();
// [1000]  If ColorMap.ContainsKey(sColor) Then 
if ((_scolor in _B._colormap)) {
// [1001]  Dim xColor As String = ColorMap.Get(sColor) 
_xcolor=_B._colormap[_scolor];
// [1002]  Return xColor 
return _xcolor;
// [1003]  End If 
}
// [1004]  Return {971} 
return "";
// End Sub
};

// [1007] Sub ModuleExist(tagName As String) As Boolean 
_B.moduleexist=function(_tagname) {
var _b;
// [1008]  tagName = tagName.tolowercase 
_tagname=_tagname.toLowerCase();
// [1009]  Dim b As Boolean = Modules.ContainsKey(tagName) 
_b=(_tagname in _B._modules);
// [1010]  Return b 
return _b;
// End Sub
};

// [1014] Sub AddModule(tagName As String) 
_B.addmodule=function(_tagname) {
// [1015]  tagName = tagName.tolowercase 
_tagname=_tagname.toLowerCase();
// [1016]  Modules.Put(tagName, tagName) 
_B._modules[_tagname]=_tagname;
// End Sub
};

// [1020] Sub ImportComponentBO(compName As String, comp As BANanoObject) 
_B.importcomponentbo=function(_compname,_comp) {
// [1021]  If components.ContainsKey(compName) = True Then Return 
if ((_compname in _B._components)==true) { return ;}
// [1022]  components.Put(compName, comp) 
_B._components[_compname]=_comp;
// End Sub
};

// [1025] Sub NewList As List 
_B.newlist=function() {
var _elx;
// [1026]  Dim elx As List 
_elx=[];
// [1027]  elx.Initialize 
_elx.length=0;
// [1028]  Return elx 
return _elx;
// End Sub
};

// [1031] Sub NewMap As Map 
_B.newmap=function() {
var _nm;
// [1032]  Dim nm As Map 
_nm={};
// [1033]  nm.Initialize 
_nm={};
// [1034]  Return nm 
return _nm;
// End Sub
};

// [1038] Sub AddRoute(comp As VueComponent) 
_B.addroute=function(_comp) {
var _eachroute,_compx;
// [1039]  If comp.mname = {972} Then 
if (_comp._mname=="") {
// [1040]  Log( {973} ) 
console.log("AddRoute: Please specify the name of the Route!");
// [1041]  End If 
}
// [1043]  Dim eachroute As Map = CreateMap() 
_eachroute={};
// [1044]  eachroute.Put( {974} , comp.path) 
_eachroute["path"]=_comp._path;
// [1045]  eachroute.Put( {975} , comp.mname) 
_eachroute["name"]=_comp._mname;
// [1046]  Dim compx As Map = comp.Component 
_compx=_comp.component();
// [1047]  eachroute.Put( {976} , compx) 
_eachroute["component"]=_compx;
// [1049]  routes.Add(eachroute) 
_B._routes.push(_eachroute);
// End Sub
};

// [1054] Sub RegisterComponent(compName As String, compOptions As Map) 
_B.registercomponent=function(_compname,_compoptions) {
// [1055]  compName = compName.tolowercase 
_compname=_compname.toLowerCase();
// [1056]  Vue.RunMethod( {978} , Array(compName, compOptions)) 
_B._vue["component"](_compname,_compoptions);
// End Sub
};

// [1061] Sub Empty(elID As String) 
_B.empty=function(_elid) {
var _ph;
// [1062]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1063]  Dim ph As BANanoElement 
_ph=null;
// [1064]  ph.Initialize(elID) 
_ph=u(_elid);
// [1065]  ph.empty 
_ph.empty();
// End Sub
};

// [1081] Sub SetMounted(module As Object, methodName As String, args As List) 
_B.setmounted=function(_module,_methodname,_args) {
var _mounted;
// [1082]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1083]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1084]  Dim mounted As BANanoObject = BANano.CallBack(module, methodName, args) 
_mounted=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1085]  Options.Put( {982} , mounted) 
_B._options["mounted"]=_mounted;
// [1086]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1090] Sub SetDestroyed(module As Object, methodName As String, args As List) 
_B.setdestroyed=function(_module,_methodname,_args) {
var _destroyed;
// [1091]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1092]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1093]  Dim destroyed As BANanoObject = BANano.CallBack(module, methodName, args) 
_destroyed=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1094]  Options.Put( {983} , destroyed) 
_B._options["destroyed"]=_destroyed;
// [1095]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1100] Sub SetActivated(module As Object, methodName As String, args As List) 
_B.setactivated=function(_module,_methodname,_args) {
var _activated;
// [1101]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1102]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1103]  Dim activated As BANanoObject = BANano.CallBack(module, methodName, args) 
_activated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1104]  Options.Put( {984} , activated) 
_B._options["activated"]=_activated;
// [1105]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1110] Sub SetDeActivated(module As Object, methodName As String, args As List) 
_B.setdeactivated=function(_module,_methodname,_args) {
var _deactivated;
// [1111]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1112]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1113]  Dim deactivated As BANanoObject = BANano.CallBack(module, methodName, args) 
_deactivated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1114]  Options.Put( {985} , deactivated) 
_B._options["deactivated"]=_deactivated;
// [1115]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1120] Sub SetUpdated(module As Object, methodName As String, args As List) 
_B.setupdated=function(_module,_methodname,_args) {
var _updated;
// [1121]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1122]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1123]  Dim updated As BANanoObject = BANano.CallBack(module, methodName, args) 
_updated=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1124]  Options.Put( {986} , updated) 
_B._options["updated"]=_updated;
// [1125]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1129] Sub SetBeforeMount(module As Object, methodName As String, args As List) 
_B.setbeforemount=function(_module,_methodname,_args) {
var _beforemount;
// [1130]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1131]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1132]  Dim beforeMount As BANanoObject = BANano.CallBack(module, methodName, args) 
_beforemount=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1133]  Options.Put( {987} , beforeMount) 
_B._options["beforeMount"]=_beforemount;
// [1134]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1138] Sub SetBeforeUpdate(module As Object, methodName As String, args As List) 
_B.setbeforeupdate=function(_module,_methodname,_args) {
var _beforeupdate;
// [1139]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1140]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1141]  Dim beforeUpdate As Boolean = BANano.CallBack(module, methodName, args) 
_beforeupdate=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1142]  Options.Put( {988} , beforeUpdate) 
_B._options["beforeUpdate"]=_beforeupdate;
// [1143]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1147] Sub SetBeforeDestroy(module As Object, methodName As String, args As List) 
_B.setbeforedestroy=function(_module,_methodname,_args) {
var _beforedestroy;
// [1148]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1149]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1150]  Dim beforeDestroy As Boolean = BANano.CallBack(module, methodName, args) 
_beforedestroy=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1151]  Options.Put( {989} , beforeDestroy) 
_B._options["beforeDestroy"]=_beforedestroy;
// [1152]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1157] Sub SetBeforeCreate(module As Object, methodName As String, args As List) 
_B.setbeforecreate=function(_module,_methodname,_args) {
var _beforecreate;
// [1158]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1159]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1160]  Dim beforeCreate As BANanoObject = BANano.CallBack(module, methodName, args) 
_beforecreate=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1161]  Options.Put( {990} , beforeCreate) 
_B._options["beforeCreate"]=_beforecreate;
// [1162]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1167] Sub SetCreated(module As Object, methodName As String, args As List) 
_B.setcreated=function(_module,_methodname,_args) {
var _created;
// [1168]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1169]  If SubExists(module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1170]  Dim created As BANanoObject = BANano.CallBack(module, methodName, args) 
_created=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1171]  Options.Put( {991} , created) 
_B._options["created"]=_created;
// [1172]  SetMethod(module, methodName, args) 
_B.setmethod(_module,_methodname,_args,_B);
// End Sub
};

// [1176] Sub State2Another(source As String, target As String, defaultValue As Object) 
_B.state2another=function(_source,_target,_defaultvalue) {
var _readobj;
// [1177]  Dim readObj As Object = GetData(source) 
_readobj=_B.getdata(_source,_B);
// [1178]  If readObj = Null Then readObj = defaultValue 
if (_readobj==null) {_readobj=_defaultvalue;}
// [1179]  SetStateSingle(target, readObj) 
_B.setstatesingle(_target,_readobj,_B);
// End Sub
};

// [1183] Sub SetFocus(refID As String) 
_B.setfocus=function(_refid) {
// [1184]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [1185]  refs.GetField(refID).RunMethod( {992} , Null) 
_B._refs[_refid]["focus"]();
// End Sub
};

// [1189] Sub NullifyFileSelect(refID As String) 
_B.nullifyfileselect=function(_refid) {
// [1190]  RefNull(refID) 
_B.refnull(_refid,_B);
// End Sub
};

// [1193] Sub RefNull(refID As String) 
_B.refnull=function(_refid) {
// [1194]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [1195]  refs.GetField(refID).SetField( {993} , Null) 
_B._refs[_refid]["value"]=null;
// End Sub
};

// [1200] Sub RefClick(refID As String) 
_B.refclick=function(_refid) {
// [1201]  refID = refID.tolowercase 
_refid=_refid.toLowerCase();
// [1202]  refs.GetField(refID).RunMethod( {994} , Null) 
_B._refs[_refid]["click"]();
// End Sub
};

// [1206] Sub ShowFileSelect(fsName As String) 
_B.showfileselect=function(_fsname) {
// [1207]  RefClick(fsName) 
_B.refclick(_fsname,_B);
// End Sub
};

// [1211] Sub RefreshKey(keyName As String) 
_B.refreshkey=function(_keyname) {
// [1212]  keyName = keyName.ToLowerCase 
_keyname=_keyname.toLowerCase();
// [1213]  SetData(keyName, DateTime.now) 
_B.setdata(_keyname,DateTime.Now(),_B);
// End Sub
};

// [1217] Sub SetStore(prop As String, value As Object) 
_B.setstore=function(_prop,_value) {
// [1218]  SetDataGlobal(prop, value) 
_B.setdataglobal(_prop,_value,_B);
// End Sub
};

// [1222] private Sub SetDataGlobal(prop As String, value As Object) 
_B.setdataglobal=function(_prop,_value) {
var _bo,_cb;
// [1223]  prop = prop.ToLowerCase 
_prop=_prop.toLowerCase();
// [1224]  state.Put(prop, value) 
_B._state[_prop]=_value;
// [1226]  Try 
try {
// [1227]  Dim bo As BANanoObject = store.GetField(prop) 
_bo=_B._store[_prop];
// [1228]  If BANano.IsNull(bo) Then Return 
if (is.null(_bo)) { return ;}
// [1229]  If BANano.IsUndefined(bo) Then Return 
if (is.undefined(_bo)) { return ;}
// [1231]  store.GetField(prop).SetField(prop, value) 
_B._store[_prop][_prop]=_value;
// [1232]  Catch 
} catch(err) {
// [1234]  End Try 'ignore 
}
// [1237]  If computed.ContainsKey(prop) = False Then 
if ((_prop in _B._computed)==false) {
// [1238]  Dim cb As BANanoObject = BANano.CallBackExtra(Me, {995} , Null, Array(prop)) 
_cb=function() {if (typeof _B[("getglobalstate").toLowerCase()]==="function") {return _B[("getglobalstate").toLowerCase()](_prop,_B)};};
// [1239]  computed.Put(prop, cb.Result) 
_B._computed[_prop]=_cb;
// [1240]  End If 
}
// End Sub
};

// [1245] private Sub getglobalstate(prop As String) As Object 'IgnoreDeadCode 
_B.getglobalstate=function(_prop) {
var _rslt;
// [1246]  prop = prop.tolowercase 
_prop=_prop.toLowerCase();
// [1247]  Dim rslt As Object = GetDataGlobal(prop) 
_rslt=_B.getdataglobal(_prop,_B);
// [1248]  Return rslt 
return _rslt;
// End Sub
};

// [1252] Sub ListPopGlobal(lstname As String) 
_B.listpopglobal=function(_lstname) {
// [1253]  lstname = lstname.tolowercase 
_lstname=_lstname.toLowerCase();
// [1254]  store.GetField(lstname).RunMethod( {996} , Null) 
_B._store[_lstname]["pop"]();
// End Sub
};

// [1257] Sub ListFirstItemGlobal(lstName As String) As Object 
_B.listfirstitemglobal=function(_lstname) {
var _lst,_obj;
// [1258]  lstName = lstName.tolowercase 
_lstname=_lstname.toLowerCase();
// [1259]  Dim lst As List = store.GetField(lstName).result 
_lst=_B._store[_lstname];
// [1260]  Dim obj As Object = lst.Get(0) 
_obj=_lst[0];
// [1261]  Return obj 
return _obj;
// End Sub
};

// [1265] Sub ListPushGlobal(listName As String, item As Object) 
_B.listpushglobal=function(_listname,_item) {
// [1266]  listName = listName.ToLowerCase 
_listname=_listname.toLowerCase();
// [1267]  store.GetField(listName).RunMethod( {997} , item) 
_B._store[_listname]["push"](_item);
// End Sub
};

// [1271] Sub ListUnshiftGlobal(lstname As String, obj As Object) 
_B.listunshiftglobal=function(_lstname,_obj) {
// [1272]  lstname = lstname.tolowercase 
_lstname=_lstname.toLowerCase();
// [1273]  store.GetField(lstname).RunMethod( {998} , obj) 
_B._store[_lstname]["unshift"](_obj);
// End Sub
};

// [1277] Sub GetStore(prop As String) As Object 
_B.getstore=function(_prop) {
// [1278]  Return GetDataGlobal(prop) 
return _B.getdataglobal(_prop,_B);
// End Sub
};

// [1282] private Sub GetDataGlobal(prop As String) As Object 'IgnoreDeadCode 
_B.getdataglobal=function(_prop) {
var _rslt,_bo;
// [1283]  prop = prop.tolowercase 
_prop=_prop.toLowerCase();
// [1284]  Dim rslt As Object 
_rslt={};
// [1285]  rslt = state.GetDefault(prop, Null) 
_rslt=_B._state[_prop]===undefined? null:_B._state[_prop];
// [1286]  Try 
try {
// [1287]  Dim bo As BANanoObject = store.GetField(prop) 
_bo=_B._store[_prop];
// [1288]  If BANano.IsNull(bo) Then Return {999} 
if (is.null(_bo)) { return "";}
// [1289]  If BANano.IsUndefined(bo) Then Return {1000} 
if (is.undefined(_bo)) { return "";}
// [1290]  rslt = store.GetField(prop).Result 
_rslt=_B._store[_prop];
// [1291]  Catch 
} catch(err) {
// [1293]  End Try 'ignore 
}
// [1294]  Return rslt 
return _rslt;
// End Sub
};

// [1298] Sub Increment(prop As String, addVal As Int) 
_B.increment=function(_prop,_addval) {
var _cc;
// [1299]  prop = prop.tolowercase 
_prop=_prop.toLowerCase();
// [1301]  Dim cc As Int = GetData(prop) 
_cc=_B.getdata(_prop,_B);
// [1302]  If BANano.IsNull(cc) Or cc = {1001} Then cc = 0 
if (is.null(_cc) || _cc=="") {_cc=0;}
// [1303]  cc = BANano.parseInt(cc) 
_cc=parseInt(_cc);
// [1305]  cc = cc + addVal 
_cc=_cc+_addval;
// [1307]  SetData(prop, cc) 
_B.setdata(_prop,_cc,_B);
// End Sub
};

// [1311] Sub Decrement(prop As String, addVal As Int) 
_B.decrement=function(_prop,_addval) {
var _cc;
// [1312]  prop = prop.tolowercase 
_prop=_prop.toLowerCase();
// [1314]  Dim cc As Int = GetData(prop) 
_cc=_B.getdata(_prop,_B);
// [1315]  If BANano.IsNull(cc) Or cc = {1002} Then cc = 0 
if (is.null(_cc) || _cc=="") {_cc=0;}
// [1316]  cc = BANano.parseInt(cc) 
_cc=parseInt(_cc);
// [1318]  cc = cc - addVal 
_cc=_cc-_addval;
// [1320]  SetData(prop, cc) 
_B.setdata(_prop,_cc,_B);
// End Sub
};

// [1324] Sub SetFilter(Module As Object, methodName As String, args As List) 
_B.setfilter=function(_module,_methodname,_args) {
var _cb;
// [1325]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1326]  If SubExists(Module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [1327]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1328]  filters.Put(methodName, cb) 
_B._filters[_methodname]=_cb;
// [1329]  Else 
} else {
// [1331]  End If 'ignore 
}
// End Sub
};

// [1335] Sub SetLocale(slang As String) 
_B.setlocale=function(_slang) {
// [1336]  lang = slang 
_B._lang=_slang;
// [1337]  Try 
try {
// [1338]  Vuetify.GetField( {1003} ).SetField( {1004} , slang) 
_B._vuetify["lang"]["current"]=_slang;
// [1339]  Catch 
} catch(err) {
// [1340]  Log(LastException) 
console.log(err);
// [1341]  End Try 
}
// End Sub
};

// [1345] Sub SetComputed(k As String, module As Object, methodName As String, args As List) 
_B.setcomputed=function(_k,_module,_methodname,_args) {
var _cb;
// [1346]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1347]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1348]  If SubExists(module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [1349]  Dim cb As BANanoObject = BANano.CallBack(module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1350]  computed.Put(k, cb.Result) 
_B._computed[_k]=_cb;
// [1351]  End If 
}
// End Sub
};

// [1355] Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, Module As Object, methodName As String, args As List) 
_B.setwatch=function(_k,_bimmediate,_bdeep,_module,_methodname,_args) {
var _cb,_deepit;
// [1356]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [1357]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1358]  If SubExists(Module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [1359]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1360]  Dim deepit As Map = CreateMap() 
_deepit={};
// [1361]  deepit.Put( {1005} , methodName) 
_deepit["handler"]=_methodname;
// [1362]  deepit.Put( {1006} , bDeep) 
_deepit["deep"]=_bdeep;
// [1363]  deepit.Put( {1007} , bImmediate) 
_deepit["immediate"]=_bimmediate;
// [1364]  watches.Put(k, deepit) 
_B._watches[_k]=_deepit;
// [1365]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// [1366]  End If 
}
// End Sub
};

// [1369] Sub RunMethod(methodName As String, params As Object) As BANanoObject 
_B.runmethod=function(_methodname,_params) {
// [1370]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [1371]  Return Vue.RunMethod(methodName, params) 
return _B._vue[_methodname](_params);
// End Sub
};

// [1374] Sub CallMethod(methodName As String) 
_B.callmethod=function(_methodname) {
// [1375]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [1376]  Vue.RunMethod(methodName, Null) 
_B._vue[_methodname]();
// End Sub
};

// [1381] Sub SetMethod(Module As Object, methodName As String, args As List) 
_B.setmethod=function(_module,_methodname,_args) {
var _cb;
// [1382]  methodName = methodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1383]  If SubExists(Module, methodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [1384]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args) 
_cb=function(_args) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_args,_B)};};
// [1385]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// [1386]  End If 
}
// End Sub
};

// [1390] Sub SetCallBack(methodName As String, cb As BANanoObject) 
_B.setcallback=function(_methodname,_cb) {
// [1391]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [1392]  methods.Put(methodName, cb) 
_B._methods[_methodname]=_cb;
// End Sub
};

// [1396] Sub SetState(m As Map) 
_B.setstate=function(_m) {
var _k,_v;
// [1397]  For Each k As String In m.Keys 
var _kKeys = Object.keys(_m);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1398]  Dim v As Object = m.Get(k) 
_v=_m[_k];
// [1399]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [1400]  Next 
}
// End Sub
};

// [1404] Sub HasState(k As String) As Boolean 
_B.hasstate=function(_k) {
// [1405]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1406]  Return data.ContainsKey(k) 
return (_k in _B._data);
// End Sub
};

// [1410] Sub ToggleItem(elID As String) 
_B.toggleitem=function(_elid) {
var _sstate;
// [1411]  elID = elID.ToLowerCase 
_elid=_elid.toLowerCase();
// [1412]  Dim sstate As String = {12} 
_sstate="" + _elid + "show";
// [1413]  ToggleState(sstate) 
_B.togglestate(_sstate,_B);
// End Sub
};

// [1417] Sub Toggle(stateID As String) 
_B.toggle=function(_stateid) {
// [1418]  ToggleState(stateID) 
_B.togglestate(_stateid,_B);
// End Sub
};

// [1423] Sub ToggleState(stateName As String) 
_B.togglestate=function(_statename) {
var _bcurrent,_optx;
// [1424]  Dim bcurrent As Boolean = GetState(stateName) 
_bcurrent=_B.getstate(_statename,_B);
// [1425]  bcurrent = Not(bcurrent) 
_bcurrent=!(_bcurrent);
// [1426]  Dim optx As Map = CreateMap() 
_optx={};
// [1427]  optx.Put(stateName, bcurrent) 
_optx[_statename]=_bcurrent;
// [1428]  SetState(optx) 
_B.setstate(_optx,_B);
// End Sub
};

// [1433] Sub StateExists(stateName As String) As Boolean 
_B.stateexists=function(_statename) {
// [1434]  Return HasState(stateName) 
return _B.hasstate(_statename,_B);
// End Sub
};

// [1438] Sub SetStateMap(mapKey As String, mapValues As Map) 
_B.setstatemap=function(_mapkey,_mapvalues) {
var _opt;
// [1439]  mapKey = mapKey.tolowercase 
_mapkey=_mapkey.toLowerCase();
// [1440]  Dim opt As Map = CreateMap() 
_opt={};
// [1441]  opt.Put(mapKey, mapValues) 
_opt[_mapkey]=_mapvalues;
// [1442]  SetState(opt) 
_B.setstate(_opt,_B);
// End Sub
};

// [1447] Sub SetStateList(mapKey As String, mapValues As List) 
_B.setstatelist=function(_mapkey,_mapvalues) {
var _opt;
// [1448]  mapKey = mapKey.tolowercase 
_mapkey=_mapkey.toLowerCase();
// [1449]  Dim opt As Map = CreateMap() 
_opt={};
// [1450]  opt.Put(mapKey, mapValues) 
_opt[_mapkey]=_mapvalues;
// [1451]  SetState(opt) 
_B.setstate(_opt,_B);
// End Sub
};

// [1455] Sub SetStateListValues(mapValues As List) 
_B.setstatelistvalues=function(_mapvalues) {
var _lstvalue,_opt;
// [1456]  For Each lstValue As String In mapValues 
for (var _lstvalueindex=0;_lstvalueindex<_mapvalues.length;_lstvalueindex++) {
_lstvalue=_mapvalues[_lstvalueindex];
// [1457]  lstValue = lstValue.tolowercase 
_lstvalue=_lstvalue.toLowerCase();
// [1458]  Dim opt As Map = CreateMap() 
_opt={};
// [1459]  opt.Put(lstValue, {1008} ) 
_opt[_lstvalue]="";
// [1460]  SetState(opt) 
_B.setstate(_opt,_B);
// [1461]  Next 
}
// End Sub
};

// [1464] Sub GetStates(lst As List) As Map 
_B.getstates=function(_lst) {
var _smm,_lstrec,_ostate;
// [1465]  Dim smm As Map = CreateMap() 
_smm={};
// [1466]  For Each lstrec As String In lst 
for (var _lstrecindex=0;_lstrecindex<_lst.length;_lstrecindex++) {
_lstrec=_lst[_lstrecindex];
// [1467]  lstrec = lstrec.tolowercase 
_lstrec=_lstrec.toLowerCase();
// [1468]  Dim ostate As Object = GetData(lstrec) 
_ostate=_B.getdata(_lstrec,_B);
// [1469]  smm.Put(lstrec, ostate) 
_smm[_lstrec]=_ostate;
// [1470]  Next 
}
// [1471]  Return smm 
return _smm;
// End Sub
};

// [1474] Sub SetStateTrue(k As String) 
_B.setstatetrue=function(_k) {
// [1475]  SetStateSingle(k,True) 
_B.setstatesingle(_k,true,_B);
// End Sub
};

// [1478] Sub SetStateFalse(k As String) 
_B.setstatefalse=function(_k) {
// [1479]  SetStateSingle(k,False) 
_B.setstatesingle(_k,false,_B);
// End Sub
};

// [1482] Sub CStr(o As Object) As String 
_B.cstr=function(_o) {
// [1483]  If BANano.IsUndefined(o) Or BANano.IsUndefined(o) Then o = {1009} 
if (is.undefined(_o) || is.undefined(_o)) {_o="";}
// [1484]  Return {1010} & o 
return ""+_o;
// End Sub
};

// [1488] Sub SetStateSingle(k As String, v As Object) 
_B.setstatesingle=function(_k,_v) {
var _optx;
// [1489]  k = k.tolowercase 
_k=_k.toLowerCase();
// [1490]  Dim optx As Map = CreateMap() 
_optx={};
// [1491]  optx.Put(k, v) 
_optx[_k]=_v;
// [1492]  SetState(optx) 
_B.setstate(_optx,_B);
// End Sub
};

// [1496] Sub GetElementByID(elID As String) As BANanoElement 
_B.getelementbyid=function(_elid) {
var _elx;
// [1497]  elID = elID.ToLowerCase 
_elid=_elid.toLowerCase();
// [1498]  elID = elID.Replace( {1011} , {1012} ) 
_elid=_elid.split("#").join("");
// [1499]  Dim elx As BANanoElement 
_elx=null;
// [1500]  elx.Initialize( {13} ) 
_elx=u("#" + _elid + "");
// [1501]  Return elx 
return _elx;
// End Sub
};

// [1505] Sub Serve 
_B.serve=function() {
var _mlang,_theme,_ropt,_rkey,_sstore,_emitkey,_srouter;
// [1507]  Template = BANanoGetHTML( {1013} ) 
_B._template=_B.bananogethtml("apptemplate",_B);
// [1509]  Dim mlang As Map = CreateMap() 
_mlang={};
// [1510]  mlang.Put( {1014} , lang) 
_mlang["current"]=_B._lang;
// [1512]  Dim theme As Map = CreateMap() 
_theme={};
// [1513]  theme.Put( {1015} , Dark) 
_theme["dark"]=_B._dark;
// [1514]  VuetifyOptions.Put( {1016} , RTL) 
_B._vuetifyoptions["rtl"]=_B._rtl;
// [1515]  VuetifyOptions.Put( {1017} , theme) 
_B._vuetifyoptions["theme"]=_theme;
// [1516]  VuetifyOptions.Put( {1018} , mlang) 
_B._vuetifyoptions["lang"]=_mlang;
// [1517]  VuetifyOptions.Put( {1019} , CreateMap( {1020} : 6)) 
_B._vuetifyoptions["breakpoint"]={"scrollBarWidth":6};
// [1520]  store = Vue.RunMethod( {1021} , Array(state)) 
_B._store=_B._vue["observable"](_B._state);
// [1521]  Vue.GetField( {1022} ).SetField( {1023} , store) 
_B._vue["prototype"]["$store"]=_B._store;
// [1523]  Options.Put( {1024} , {1025} ) 
_B._options["el"]="#app";
// [1524]  Options.Put( {1026} , store) 
_B._options["store"]=_B._store;
// [1526]  If routes.Size > 0 Then 
if (_B._routes.length>0) {
// [1527]  Dim ropt As Map = CreateMap() 
_ropt={};
// [1529]  ropt.Put( {1029} , routes) 
_ropt["routes"]=_B._routes;
// [1530]  ropt.Put( {1030} , BasePath) 
_ropt["base"]=_B._basepath;
// [1531]  ropt.Put( {1031} , {1032} ) 
_ropt["path"]="*";
// [1532]  ropt.Put( {1033} , BasePath) 
_ropt["redirect"]=_B._basepath;
// [1534]  VueRouter.Initialize2( {1034} , Array(ropt)) 
_B._vuerouter=new VueRouter(_ropt);
// [1535]  Options.Put( {1035} , VueRouter) 
_B._options["router"]=_B._vuerouter;
// [1536]  End If 
}
// [1538]  Vuetify.Initialize2( {1036} , VuetifyOptions) 
_B._vuetify=new Vuetify(_B._vuetifyoptions);
// [1539]  Options.Put( {1037} , Vuetify) 
_B._options["vuetify"]=_B._vuetify;
// [1542]  Options.Put( {1038} , components) 
_B._options["components"]=_B._components;
// [1543]  Options.put( {1039} , data) 
_B._options["data"]=_B._data;
// [1544]  Options.Put( {1040} , methods) 
_B._options["methods"]=_B._methods;
// [1545]  Options.Put( {1041} , filters) 
_B._options["filters"]=_B._filters;
// [1546]  Options.Put( {1042} , computed) 
_B._options["computed"]=_B._computed;
// [1547]  Options.Put( {1043} , watches) 
_B._options["watch"]=_B._watches;
// [1548]  Options.Put( {1044} , Template) 
_B._options["template"]=_B._template;
// [1549]  Vue.Initialize2( {1045} , Array(Options)) 
_B._vue=new Vue(_B._options);
// [1551]  Dim rKey As String = {1046} 
_rkey="$refs";
// [1552]  refs = Vue.GetField(rKey) 
_B._refs=_B._vue[_rkey];
// [1553]  Dim sstore As String = {1047} 
_sstore="$store";
// [1554]  store = Vue.GetField(sstore) 
_B._store=_B._vue[_sstore];
// [1555]  Dim emitKey As String = {1048} 
_emitkey="$emit";
// [1556]  Emit = Vue.GetField(emitKey) 
_B._emit=_B._vue[_emitkey];
// [1557]  Dim srouter As String = {1049} 
_srouter="$router";
// [1558]  VueRouter = Vue.GetField(srouter) 
_B._vuerouter=_B._vue[_srouter];
// End Sub
};

// [1562] Sub NavigateTo(sPath As String) 
_B.navigateto=function(_spath) {
var _namem;
// [1563]  sPath = sPath.tolowercase 
_spath=_spath.toLowerCase();
// [1564]  Dim namem As Map = CreateMap() 
_namem={};
// [1565]  namem.put( {1050} , sPath) 
_namem["path"]=_spath;
// [1566]  VueRouter.RunMethod( {1051} , Array(namem)) 
_B._vuerouter["push"](_namem);
// End Sub
};

// [1571] Sub Use(bo As BANanoObject) 
_B.use=function(_bo) {
// [1572]  Vue.RunMethod( {1052} , bo) 
_B._vue["use"](_bo);
// End Sub
};

// [1577] Sub Use1(bo As BANanoObject, uopt As Map) 
_B.use1=function(_bo,_uopt) {
// [1578]  Vue.RunMethod( {1053} , Array(bo, uopt)) 
_B._vue["use"](_bo,_uopt);
// End Sub
};

// [1582] Sub NotState(stateName As String) As Boolean 
_B.notstate=function(_statename) {
var _bcurrent;
// [1583]  Dim bcurrent As Boolean = GetData(stateName) 
_bcurrent=_B.getdata(_statename,_B);
// [1584]  If bcurrent = Null Then bcurrent = True 
if (_bcurrent==null) {_bcurrent=true;}
// [1585]  bcurrent = Not(bcurrent) 
_bcurrent=!(_bcurrent);
// [1586]  Return bcurrent 
return _bcurrent;
// End Sub
};

// [1589] Sub SetRequired(elID As String, b As Boolean) 
_B.setrequired=function(_elid,_b) {
// [1590]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1591]  SetStateSingle( {14} , b) 
_B.setstatesingle("" + _elid + "required",_b,_B);
// End Sub
};

// [1594] Sub Enable(elID As String) 
_B.enable=function(_elid) {
// [1595]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1596]  SetStateSingle( {15} , False) 
_B.setstatesingle("" + _elid + "disabled",false,_B);
// End Sub
};

// [1599] Sub Disable(elID As String) 
_B.disable=function(_elid) {
// [1600]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1601]  SetStateSingle( {16} , True) 
_B.setstatesingle("" + _elid + "disabled",true,_B);
// End Sub
};

// [1604] Sub SetEnabled(elID As String, b As Boolean) 
_B.setenabled=function(_elid,_b) {
// [1605]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1606]  SetStateSingle( {17} , b) 
_B.setstatesingle("" + _elid + "disabled",_b,_B);
// End Sub
};

// [1610] Sub Hide(elID As String) 
_B.hide=function(_elid) {
// [1611]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1612]  SetStateSingle( {18} , False) 
_B.setstatesingle("" + _elid + "show",false,_B);
// End Sub
};

// [1616] Sub Show(elID As String) 
_B.show=function(_elid) {
// [1617]  SetStateSingle( {19} , True) 
_B.setstatesingle("" + _elid + "show",true,_B);
// End Sub
};

// [1621] Sub GetPlaceholderHTML As String 
_B.getplaceholderhtml=function() {
var _be,_xtemplate;
// [1622]  Dim be As BANanoElement 
_be=null;
// [1623]  be.Initialize( {1054} ) 
_be=u("#placeholder");
// [1624]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [1625]  be.Empty 
_be.empty();
// [1626]  xTemplate = xTemplate.Replace( {1055} , {1056} ) 
_xtemplate=_xtemplate.split("v-template").join("template");
// [1627]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [1631] Sub GetPlaceholder As String 
_B.getplaceholder=function() {
var _be,_xtemplate;
// [1632]  Dim be As BANanoElement 
_be=null;
// [1633]  be.Initialize( {1057} ) 
_be=u("#placeholder");
// [1634]  Dim xTemplate As String = be.GetHTML 
_xtemplate=_be.html();
// [1635]  Return xTemplate 
return _xtemplate;
// End Sub
};

// [1639] Sub SetOnClick(Module As Object, methodName As String) 
_B.setonclick=function(_module,_methodname) {
var _e,_cb;
// [1640]  methodName = methodName.tolowercase 
_methodname=_methodname.toLowerCase();
// [1641]  If SubExists(Module, methodName) = False Then Return 
if ((typeof _module[(_methodname).toLowerCase()]==="function")==false) { return ;}
// [1642]  Dim e As BANanoEvent 
_e=null;
// [1643]  Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(e)) 
_cb=function(_e) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_e,_B)};};
// [1645]  SetCallBack(methodName, cb) 
_B.setcallback(_methodname,_cb,_B);
// End Sub
};

// [1650] Sub SetRTL(b As Boolean) 
_B.setrtl=function(_b) {
// [1651]  Vuetify.SetField( {1058} , b) 
_B._vuetify["rtl"]=_b;
// End Sub
};

// [1655] Sub ScrollTo(elID As String, duration As Int, offset As Int, easing As String) 
_B.scrollto=function(_elid,_duration,_offset,_easing) {
var _el,_opt;
// [1656]  Try 
try {
// [1657]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1658]  Dim el As BANanoObject = refs.GetField(elID) 
_el=_B._refs[_elid];
// [1659]  If duration = Null Then duration = 300 
if (_duration==null) {_duration=300;}
// [1660]  If offset = Null Then offset = 0 
if (_offset==null) {_offset=0;}
// [1661]  If easing = {1059} Then easing = {1060} 
if (_easing=="") {_easing="easeInOutCubic";}
// [1662]  Dim opt As Map = CreateMap() 
_opt={};
// [1663]  opt.Put( {1061} , duration) 
_opt["duration"]=_duration;
// [1664]  opt.Put( {1062} , offset) 
_opt["offset"]=_offset;
// [1665]  opt.Put( {1063} , easing) 
_opt["easing"]=_easing;
// [1666]  Vuetify.RunMethod( {1064} , Array(el, opt)) 
_B._vuetify["goTo"](_el,_opt);
// [1667]  Catch 
} catch(err) {
// [1668]  Log( {1065} ) 
console.log("ScrollTo Error");
// [1669]  End Try 
}
// End Sub
};

// [1674] Sub Goto(elID As String) 
_B.goto=function(_elid) {
// [1675]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1676]  Vuetify.RunMethod( {1066} , Array(elID)) 
_B._vuetify["goTo"](_elid);
// End Sub
};

// [1681] Sub AddRule(ruleName As String, Module As Object, MethodName As String) 
_B.addrule=function(_rulename,_module,_methodname) {
var _rules,_v,_cb;
// [1682]  If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = {1067} 
if (is.null(_rulename) || is.undefined(_rulename)) {_rulename="";}
// [1683]  ruleName = ruleName.ToLowerCase 
_rulename=_rulename.toLowerCase();
// [1684]  If ruleName = {1068} Then Return 
if (_rulename=="") { return ;}
// [1685]  MethodName = MethodName.ToLowerCase 
_methodname=_methodname.toLowerCase();
// [1686]  Dim rules As List 
_rules=[];
// [1687]  If data.ContainsKey(ruleName) Then 
if ((_rulename in _B._data)) {
// [1688]  rules = data.Get(ruleName) 
_rules=_B._data[_rulename];
// [1689]  Else 
} else {
// [1690]  rules = NewList 
_rules=_B.newlist(_B);
// [1691]  End If 
}
// [1693]  Dim v As Object 
_v={};
// [1694]  Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(v)) 
_cb=function(_v) {if (typeof _module[(_methodname).toLowerCase()]==="function") {return _module[(_methodname).toLowerCase()](_v,_B)};};
// [1695]  If SubExists(Module, MethodName) Then 
if ((typeof _module[(_methodname).toLowerCase()]==="function")) {
// [1696]  rules.Add(cb.Result) 
_rules.push(_cb);
// [1697]  End If 
}
// [1698]  data.put(ruleName, rules) 
_B._data[_rulename]=_rules;
// End Sub
};

// [1703] Sub GetReadyState As String 
_B.getreadystate=function() {
var _rs;
// [1704]  Dim rs As String = BANano.Window.GetField( {1069} ).GetField( {1070} ).Result 
_rs=window["document"]["readyState"];
// [1705]  Return rs 
return _rs;
// End Sub
};

// [1709] Sub SetOnReadyChange(Module As Object) 
_B.setonreadychange=function(_module) {
var _e,_cb;
// [1710]  If SubExists(Module, {1071} ) = False Then Return 
if ((typeof _module[("ReadyChange").toLowerCase()]==="function")==false) { return ;}
// [1711]  Dim e As BANanoEvent 
_e=null;
// [1712]  Dim cb As BANanoObject = BANano.callback(Module, {1072} , Array(e)) 
_cb=function(_e) {if (typeof _module[("ReadyChange").toLowerCase()]==="function") {return _module[("ReadyChange").toLowerCase()](_e,_B)};};
// [1713]  BANano.Window.GetField( {1073} ).AddEventListener( {1074} , cb, True) 
window["document"].addEventListener("readystatechange", _cb, true);
// End Sub
};

// [1716] private Sub HideBody 
_B.hidebody=function() {
var _stylem;
// [1717]  Dim stylem As Map = CreateMap( {1075} : {1076} ) 
_stylem={"visibility":"hidden"};
// [1718]  body.SetStyle(BANano.ToJson(stylem)) 
_B._body.css(JSON.parse(JSON.stringify(_stylem)));
// End Sub
};

// [1721] private Sub ShowBody 
_B.showbody=function() {
var _stylem;
// [1722]  Dim stylem As Map = CreateMap( {1077} : {1078} ) 
_stylem={"visibility":"visible"};
// [1723]  body.SetStyle(BANano.ToJson(stylem)) 
_B._body.css(JSON.parse(JSON.stringify(_stylem)));
// End Sub
};

// [1727] Sub DateDiff(currentDate As String, otherDate As String) As Int 
_B.datediff=function(_currentdate,_otherdate) {
var _bo,_bo1,_rslt;
// [1728]  If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0 
if (is.null(_currentdate) || is.undefined(_currentdate)) { return 0;}
// [1729]  If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0 
if (is.null(_otherdate) || is.undefined(_otherdate)) { return 0;}
// [1731]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {1079} , Array(currentDate)) 
_bo=BANanoExec("dayjs", window, _currentdate);
// [1732]  Dim bo1 As BANanoObject = BANano.RunJavascriptMethod( {1080} , Array(otherDate)) 
_bo1=BANanoExec("dayjs", window, _otherdate);
// [1734]  Dim rslt As String = bo.RunMethod( {1081} , Array(bo1, {1082} )).Result 
_rslt=_bo["diff"](_bo1,"day");
// [1735]  Return rslt 
return _rslt;
// End Sub
};

// [1738] Sub RemoveDataItems(items As List) 
_B.removedataitems=function(_items) {
var _k;
// [1739]  For Each k As String In items 
for (var _kindex=0;_kindex<_items.length;_kindex++) {
_k=_items[_kindex];
// [1740]  RemoveData(k) 
_B.removedata(_k,_B);
// [1741]  Next 
}
// End Sub
};

// [1744] Sub RemoveData(key As String) 
_B.removedata=function(_key) {
// [1745]  key = key.ToLowerCase 
_key=_key.toLowerCase();
// [1746]  data.Remove(key) 
delete _B._data[_key];
// End Sub
};

// [1750] Sub SetData(prop As String, value As Object) 
_B.setdata=function(_prop,_value) {
// [1751]  data.put(prop, value) 
_B._data[_prop]=_value;
// End Sub
};

// [1754] Sub GetData(prop As String) As Object 
_B.getdata=function(_prop) {
var _obj;
// [1755]  Dim obj As Object = data.GetDefault(prop, {1083} ) 
_obj=_B._data[_prop]===undefined? "":_B._data[_prop];
// [1756]  If BANano.IsNull(obj) Then Return {1084} 
if (is.null(_obj)) { return "";}
// [1757]  If BANano.IsUndefined(obj) Then Return {1085} 
if (is.undefined(_obj)) { return "";}
// [1758]  Return obj 
return _obj;
// End Sub
};

// [1761] private Sub GetState(prop As String) As Object 
_B.getstate=function(_prop) {
var _obj;
// [1762]  Dim obj As Object = data.GetDefault(prop, {1086} ) 
_obj=_B._data[_prop]===undefined? "":_B._data[_prop];
// [1763]  Return obj 
return _obj;
// End Sub
};

// [1767] Sub FormatDisplayDate(item As String, sFormat As String) As String 
_B.formatdisplaydate=function(_item,_sformat) {
var _bo,_sdate;
// [1768]  item = {1087} & item 
_item=""+_item;
// [1769]  If item = {1088} Then Return {1089} 
if (_item=="") { return "";}
// [1770]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {1090} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [1771]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {1091} , Array(item)) 
_bo=BANanoExec("dayjs", window, _item);
// [1772]  Dim sDate As String = bo.RunMethod( {1092} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [1773]  Return sDate 
return _sdate;
// End Sub
};

// [1777] Sub FormatDisplayNumber(item As String, sFormat As String) As String 
_B.formatdisplaynumber=function(_item,_sformat) {
var _bo,_sdate;
// [1778]  item = {1093} & item 
_item=""+_item;
// [1779]  If item = {1094} Then Return {1095} 
if (_item=="") { return "";}
// [1780]  If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return {1096} 
if (is.null(_item) || is.undefined(_item)) { return "";}
// [1781]  Dim bo As BANanoObject = BANano.RunJavascriptMethod( {1097} , Array(item)) 
_bo=BANanoExec("numeral", window, _item);
// [1782]  Dim sDate As String = bo.RunMethod( {1098} , Array(sFormat)).Result 
_sdate=_bo["format"](_sformat);
// [1783]  Return sDate 
return _sdate;
// End Sub
};

// [1787] Sub FormatFileSize(Bytes As Float) As String 
_B.formatfilesize=function(_bytes) {
var _unit,_po,_si,_i;
// [1788]  If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then 
if (is.null(_bytes) || is.undefined(_bytes)) {
// [1789]  Bytes = 0 
_bytes=0;
// [1790]  End If 
}
// [1791]  Bytes = BANano.parsefloat(Bytes) 
_bytes=parseFloat(_bytes);
// [1792]  Try 
try {
// [1793]  Private Unit() As String = Array As String( {1099} , {1100} , {1101} , {1102} , {1103} , {1104} , {1105} , {1106} , {1107} ) 
_unit=[" Byte"," KB"," MB"," GB"," TB"," PB"," EB"," ZB"," YB"];
// [1794]  If Bytes = 0 Then 
if (_bytes==0) {
// [1795]  Return {1108} 
return "0 Bytes";
// [1796]  Else 
} else {
// [1797]  Private Po, Si As Double 
_po=0;
_si=0;
// [1798]  Private I As Int 
_i=0;
// [1799]  Bytes = Abs(Bytes) 
_bytes=(Math.abs(_bytes));
// [1800]  I = Floor(Logarithm(Bytes, 1024)) 
_i=(Math.floor((Math.log(_bytes)/Math.log(1024))));
// [1801]  Po = Power(1024, I) 
_po=Math.pow(1024,_i);
// [1802]  Si = Bytes / Po 
_si=_bytes/_po;
// [1803]  Return NumberFormat(Si, 1, 3) & Unit(I) 
return BANano_nf(BANano_r(_si, 3),1)+_unit[_i];
// [1804]  End If 
}
// [1805]  Catch 
} catch(err) {
// [1806]  Return {1109} 
return "0 Bytes";
// [1807]  End Try 
}
// End Sub
};

// [1811] Sub BindVueTable(el As VueTable) 
_B.bindvuetable=function(_el) {
var _mbindings,_mmethods,_k,_v,_cb;
// [1812]  el.refresh 
_el.refresh();
// [1813]  Dim mbindings As Map = el.bindings 
_mbindings=_el._bindings;
// [1814]  Dim mmethods As Map = el.methods 
_mmethods=_el._methods;
// [1816]  For Each k As String In mbindings.Keys 
var _kKeys = Object.keys(_mbindings);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1817]  Dim v As Object = mbindings.Get(k) 
_v=_mbindings[_k];
// [1818]  Select Case k 
switch ("" + _k) {
// [1819]  Case {1110} 
case "" + "key":
// [1820]  Case {1111} , {1112} 
break;
case "" + ":rules":
case "" + ":items":
// [1821]  SetData(v, NewList) 
_B.setdata(_v,_B.newlist(_B),_B);
// [1822]  Case Else 
break;
default:
// [1823]  SetData(k, v) 
_B.setdata(_k,_v,_B);
// [1824]  End Select 
break;
}
// [1825]  Next 
}
// [1827]  For Each k As String In mmethods.Keys 
var _kKeys = Object.keys(_mmethods);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1828]  Dim cb As BANanoObject = mmethods.Get(k) 
_cb=_mmethods[_k];
// [1829]  SetCallBack(k, cb) 
_B.setcallback(_k,_cb,_B);
// [1830]  Next 
}
// End Sub
};

// [1834] Sub UpdateButton(Module As Object, elID As String, sLabel As String, eColor As String, bOutlined As Boolean, props As Map) As VueElement 
_B.updatebutton=function(_module,_elid,_slabel,_ecolor,_boutlined,_props) {
var _mbutton,_k,_v,_clickevent,_clickeventstop,_clickeventprevent;
// [1835]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1836]  elID = elID.Replace( {1113} , {1114} ) 
_elid=_elid.split("#").join("");
// [1838]  Dim mbutton As VueElement 
_mbutton= new banano_bananovuetifyad3_vueelement();
// [1839]  mbutton.Initialize(Module, elID, elID) 
_mbutton.initialize(_module,_elid,_elid);
// [1840]  mbutton.Caption = sLabel 
_mbutton.setcaption(_slabel);
// [1841]  mbutton.AddAttr( {1115} , elID) 
_mbutton.addattr("id",_elid);
// [1842]  If bOutlined Then mbutton.Outlined = True 
if (_boutlined) {_mbutton.setoutlined(true);}
// [1843]  mbutton.color = eColor 
_mbutton.setcolor(_ecolor);
// [1845]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1846]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1847]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1848]  mbutton.AddAttr(k, v) 
_mbutton.addattr(_k,_v);
// [1849]  Next 
}
// [1850]  End If 
}
// [1852]  Dim clickEvent As String = {20} 
_clickevent="" + _elid + "_click";
// [1853]  mbutton.SetOnEvent(Module, clickEvent, {1116} , {1117} ) 
_mbutton.setonevent(_module,_clickevent,"click","");
// [1855]  Dim clickEventStop As String = {21} 
_clickeventstop="" + _elid + "_clickstop";
// [1856]  mbutton.SetOnEvent(Module, clickEventStop, {1118} , {1119} ) 
_mbutton.setonevent(_module,_clickeventstop,"click.stop","");
// [1858]  Dim clickEventPrevent As String = {22} 
_clickeventprevent="" + _elid + "_clickprevent";
// [1859]  mbutton.SetOnEvent(Module, clickEventPrevent, {1120} , {1121} ) 
_mbutton.setonevent(_module,_clickeventprevent,"click.prevent","");
// [1861]  Return mbutton 
return _mbutton;
// End Sub
};

// [1866] Sub UpdateSelects(Module As Object, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement 
_B.updateselects=function(_module,_elid,_vmodel,_slabel,_brequired,_bmultiple,_splaceholder,_sourcetable,_sourcefield,_displayfield,_returnobject,_shelpertext,_props) {
var _vselect,_lst,_k,_v,_clickevent;
// [1867]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1868]  elID = elID.Replace( {1122} , {1123} ) 
_elid=_elid.split("#").join("");
// [1870]  Dim vselect As VueElement 
_vselect= new banano_bananovuetifyad3_vueelement();
// [1871]  vselect.Initialize(Module, elID, elID) 
_vselect.initialize(_module,_elid,_elid);
// [1873]  vselect.label = sLabel 
_vselect.setlabel(_slabel);
// [1874]  vselect.Required = bRequired 
_vselect.setrequired(_brequired);
// [1875]  vselect.Placeholder = sPlaceHolder 
_vselect.setplaceholder(_splaceholder);
// [1876]  vselect.Hint = sHelperText 
_vselect.sethint(_shelpertext);
// [1877]  vselect.Multiple = bMultiple 
_vselect.setmultiple(_bmultiple);
// [1878]  vselect.Items = {23} 
_vselect.setitems(":" + _sourcetable + "");
// [1879]  If displayField <> {1124} Then vselect.ItemText = displayField 
if (_displayfield!="") {_vselect.setitemtext(_displayfield);}
// [1880]  If sourceField <> {1125} Then vselect.ItemValue = sourceField 
if (_sourcefield!="") {_vselect.setitemvalue(_sourcefield);}
// [1881]  vselect.VModel = vmodel 
_vselect.setvmodel(_vmodel);
// [1883]  If bMultiple Then 
if (_bmultiple) {
// [1884]  Dim lst As List = NewList 
_lst=_B.newlist(_B);
// [1885]  SetData(vmodel, lst) 
_B.setdata(_vmodel,_lst,_B);
// [1886]  Else 
} else {
// [1887]  SetData(vmodel, Null) 
_B.setdata(_vmodel,null,_B);
// [1888]  End If 
}
// [1890]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1891]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1892]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1893]  vselect.AddAttr(k, v) 
_vselect.addattr(_k,_v);
// [1894]  Next 
}
// [1895]  End If 
}
// [1897]  Dim clickEvent As String = {24} 
_clickevent="" + _elid + "_change";
// [1898]  vselect.SetOnEvent(Module, clickEvent, {1126} , {1127} ) 
_vselect.setonevent(_module,_clickevent,"change","");
// [1900]  SetData(sourceTable, NewList) 
_B.setdata(_sourcetable,_B.newlist(_B),_B);
// [1901]  Return vselect 
return _vselect;
// End Sub
};

// [1905] Sub UpdatePassword(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement 
_B.updatepassword=function(_module,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
var _bshowpassword,_vtextfield,_k,_v;
// [1906]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1907]  elID = elID.Replace( {1128} , {1129} ) 
_elid=_elid.split("#").join("");
// [1909]  Dim bshowPassword As String = {25} 
_bshowpassword="" + _elid + "ShowPassword";
// [1910]  bshowPassword = bshowPassword.tolowercase 
_bshowpassword=_bshowpassword.toLowerCase();
// [1911]  SetData(bshowPassword, False) 
_B.setdata(_bshowpassword,false,_B);
// [1914]  Dim vtextfield As VueElement 
_vtextfield= new banano_bananovuetifyad3_vueelement();
// [1915]  vtextfield.Initialize(Module, elID, elID) 
_vtextfield.initialize(_module,_elid,_elid);
// [1916]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [1917]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [1918]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [1919]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [1920]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [1921]  End If 
}
// [1922]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [1923]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [1924]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [1925]  vtextfield.AddAttr( {1130} , {1131} ) 
_vtextfield.addattr("type","text");
// [1926]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [1927]  vtextfield.AddAttr( {1132} , {26} ) 
_vtextfield.addattr(":type","" + _bshowpassword + " ? 'text' : 'password'");
// [1928]  vtextfield.AddAttr( {1133} , {27} ) 
_vtextfield.addattr(":append-icon","" + _bshowpassword + " ? 'mdi-eye' : 'mdi-eye-off'");
// [1929]  vtextfield.AddAttr( {1134} , {28} ) 
_vtextfield.addattr("v-on:click:append","" + _bshowpassword + " = !" + _bshowpassword + "");
// [1930]  vtextfield.AddAttr( {1135} , {1136} ) 
_vtextfield.addattr("autocomplete","off");
// [1932]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1933]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1934]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1935]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [1936]  Next 
}
// [1937]  End If 
}
// [1939]  Return vtextfield 
return _vtextfield;
// End Sub
};

// [1944] Sub UpdateTextField(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement 
_B.updatetextfield=function(_module,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
var _vtextfield,_k,_v;
// [1945]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1946]  elID = elID.Replace( {1137} , {1138} ) 
_elid=_elid.split("#").join("");
// [1949]  Dim vtextfield As VueElement 
_vtextfield= new banano_bananovuetifyad3_vueelement();
// [1950]  vtextfield.Initialize(Module, elID, elID) 
_vtextfield.initialize(_module,_elid,_elid);
// [1951]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [1952]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [1953]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [1954]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [1955]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [1956]  End If 
}
// [1957]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [1958]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [1959]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [1960]  vtextfield.AddAttr( {1139} , {1140} ) 
_vtextfield.addattr("type","text");
// [1961]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [1962]  If SubExists(Module, {29} ) Then vtextfield.AddAttr( {1141} , {30} ) 
if ((typeof _module[("" + _elid + "_clickappend").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:append","" + _elid + "_clickappend");}
// [1963]  If SubExists(Module, {31} ) Then vtextfield.AddAttr( {1142} , {32} ) 
if ((typeof _module[("" + _elid + "_clickprepend").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:prepend","" + _elid + "_clickprepend");}
// [1964]  If SubExists(Module, {33} ) Then vtextfield.AddAttr( {1143} , {34} ) 
if ((typeof _module[("" + _elid + "_clickappendouter").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:append-outer","" + _elid + "_clickappendouter");}
// [1965]  If SubExists(Module, {35} ) Then vtextfield.AddAttr( {1144} , {36} ) 
if ((typeof _module[("" + _elid + "_clickprependinner").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:prepend-inner","" + _elid + "_clickprependinner");}
// [1967]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [1968]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [1969]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [1970]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [1971]  Next 
}
// [1972]  End If 
}
// [1974]  Return vtextfield 
return _vtextfield;
// End Sub
};

// [1979] Sub UpdateTextArea(Module As Object, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement 
_B.updatetextarea=function(_module,_elid,_vmodel,_slabel,_splaceholder,_brequired,_sprependicon,_imaxlen,_shint,_props) {
var _vtextfield,_k,_v;
// [1980]  elID = elID.tolowercase 
_elid=_elid.toLowerCase();
// [1981]  elID = elID.Replace( {1145} , {1146} ) 
_elid=_elid.split("#").join("");
// [1984]  Dim vtextfield As VueElement 
_vtextfield= new banano_bananovuetifyad3_vueelement();
// [1985]  vtextfield.Initialize(Module, elID, elID) 
_vtextfield.initialize(_module,_elid,_elid);
// [1986]  vtextfield.Label = slabel 
_vtextfield.setlabel(_slabel);
// [1987]  vtextfield.Required = bRequired 
_vtextfield.setrequired(_brequired);
// [1988]  vtextfield.PrependIcon = sPrependIcon 
_vtextfield.setprependicon(_sprependicon);
// [1989]  If iMaxLen > 0 Then 
if (_imaxlen>0) {
// [1990]  vtextfield.Counter = True 
_vtextfield.setcounter(true);
// [1991]  End If 
}
// [1992]  vtextfield.Placeholder = splaceholder 
_vtextfield.setplaceholder(_splaceholder);
// [1993]  vtextfield.Hint = sHint 
_vtextfield.sethint(_shint);
// [1994]  vtextfield.VModel = vmodel 
_vtextfield.setvmodel(_vmodel);
// [1995]  vtextfield.Ref = vmodel 
_vtextfield.setref(_vmodel);
// [1996]  If SubExists(Module, {37} ) Then vtextfield.AddAttr( {1147} , {38} ) 
if ((typeof _module[("" + _elid + "_clickappend").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:append","" + _elid + "_clickappend");}
// [1997]  If SubExists(Module, {39} ) Then vtextfield.AddAttr( {1148} , {40} ) 
if ((typeof _module[("" + _elid + "_clickprepend").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:prepend","" + _elid + "_clickprepend");}
// [1998]  If SubExists(Module, {41} ) Then vtextfield.AddAttr( {1149} , {42} ) 
if ((typeof _module[("" + _elid + "_clickappendouter").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:append-outer","" + _elid + "_clickappendouter");}
// [1999]  If SubExists(Module, {43} ) Then vtextfield.AddAttr( {1150} , {44} ) 
if ((typeof _module[("" + _elid + "_clickprependinner").toLowerCase()]==="function")) {_vtextfield.addattr("v-on:click:prepend-inner","" + _elid + "_clickprependinner");}
// [2002]  If BANano.IsNull(props) = False Then 
if (is.null(_props)==false) {
// [2003]  For Each k As String In props.Keys 
var _kKeys = Object.keys(_props);
for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {
_k=_kKeys[_kindex];
// [2004]  Dim v As Object = props.Get(k) 
_v=_props[_k];
// [2005]  vtextfield.AddAttr(k, v) 
_vtextfield.addattr(_k,_v);
// [2006]  Next 
}
// [2007]  End If 
}
// [2009]  Return vtextfield 
return _vtextfield;
// End Sub
};

}
