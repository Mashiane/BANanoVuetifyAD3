
/* bananofirestore */
function banano_bananofirestore_bananofirestoredb() {var _B=this;_B.__d6={};_B.__d7="";_B.__d8="";_B.__d9="";_B.__da="";_B.__db="";_B.__dc="";_B.__dd="";_B.__de="";_B.__df=null;_B.__e0=null;_B.__e1=null;_B.__e2="==";_B.__e3=">";_B.__e4=">=";_B.__e5="<";_B.__e6="<=";_B.__e7="in";_B.__e8="array-contains-any";_B.__e9="array-contains";_B.__ea="ne";_B.__eb="asc";_B.__ec="desc";_B.__ed="added";_B.__ee="modified";_B.__ef="removed";_B.__f0=null;_B.__f1=null;_B.__f2=null;_B.__f3=null;_B.__f4= new banano_bananofirestore_fbmessaging();_B.__f5={};_B.__f6="";_B.__f7="";_B.initialize=function() {var __126;_B.__d6={};_B.__d7="";_B.__d8="";_B.__d9="";_B.__da="";_B.__db="";_B.__dc="";_B.__dd="";_B.__de="";_B.__f6="";try {__126=eval("firebaseConfig");if (("apiKey" in __126)) {_B.__d7=__126["apiKey"];}if (("appId" in __126)) {_B.__dd=__126["appId"];}if (("authDomain" in __126)) {_B.__d8=__126["authDomain"];}if (("databaseURL" in __126)) {_B.__d9=__126["databaseURL"];}if (("measurementId" in __126)) {_B.__de=__126["measurementId"];}if (("messagingSenderId" in __126)) {_B.__dc=__126["messagingSenderId"];}if (("projectId" in __126)) {_B.__da=__126["projectId"];}if (("storageBucket" in __126)) {_B.__db=__126["storageBucket"];}} catch(err) {console.log("firebaseConfig not found!");}_B.__df=firebase;_B.__f5={};return _B;};_B.connect=function() {var __ca1;if (_B.__d7!="") {_B.__d6["apiKey"]=_B.__d7;}if (_B.__d8!="") {_B.__d6["authDomain"]=_B.__d8;}if (_B.__d9!="") {_B.__d6["databaseURL"]=_B.__d9;}if (_B.__da!="") {_B.__d6["projectId"]=_B.__da;}if (_B.__db!="") {_B.__d6["storageBucket"]=_B.__db;}if (_B.__dc!="") {_B.__d6["messagingSenderId"]=_B.__dc;}if (_B.__dd!="") {_B.__d6["appId"]=_B.__dd;}if (_B.__de!="") {_B.__d6["measurementId"]=_B.__de;}if (_B.isconnected(_B)) { return true;}_B.__e0=_B.__df["initializeApp"](_B.__d6);if (_B.__d9!="") {_B.__f1=_B.__df["database"]();}if (_B.__db!="") {_B.__e1=_B.__e0["firestore"]();if (Object.keys(_B.__f5).length>0) {_B.__e1["settings"]=_B.__f5;}}if (_B.__dc!="") {_B.__f4.initialize(_B.__df,_B.__f6,_B.__f7);}__ca1=_B.isconnected(_B);return __ca1;};_B.connectanalytics=function() {_B.__f3=_B.__df["analytics"]();};_B.connectperformance=function() {_B.__f2=_B.__df["performance"]();};_B.connectstorage=function() {_B.__f0=_B.__df["storage"]();};_B.isconnected=function() {var _apps;_apps=_B.__df["apps"];if (_apps.length==0) {return false;} else {return true;}};_B.delete=function() {var __ca3;__ca3=_B.__e0["delete"]();return __ca3;};_B.collection=function(__ca4) {var _lbc;_lbc= new banano_bananofirestore_fbcollection();_lbc.initialize(_B.__e1,__ca4);return _lbc;};_B.getaccesstoken=function(__111) {var _bo,__ca6;_bo=__111;__ca6=_bo["credential"]["accessToken"];return __ca6;};_B.timestampsinsnapshots=function() {_B.__f5["timestampsInSnapshots"]=true;return _B;};_B.enablepersistence=function() {var __ca7,__ca8;__ca7={"synchronizeTabs":true};__ca8=_B.__e1["enablePersistence"](__ca7);return __ca8;};_B.disablenetwork=function() {var __ca8;__ca8=_B.__e1["disableNetwork"]();return __ca8;};_B.enablenetwork=function() {var __ca8;__ca8=_B.__e1["enableNetwork"]();return __ca8;};_B.auth=function() {var __ca9;__ca9= new banano_bananofirestore_fbauth();__ca9.initialize(_B.__e0);return __ca9;};_B.getdisplayname=function(_resp) {var _dn;_dn=_resp["displayName"];return _dn;};_B.updatedisplayname=function(_res,__cab) {var _rec,__cac;_rec={"displayName":__cab};__cac=_res["user"]["updateProfile"](_rec);return __cac;};_B.docchanges=function(__cad) {var __cae,__caf,_recs,_recx,__498,_doc,__cb0,_uid;__cae=__cad;__caf=__cae["docChanges"]();_recs=[];_recs.length=0;for (var _recxindex=0;_recxindex<__caf.length;_recxindex++) {_recx=__caf[_recxindex];__498=_recx["type"];_doc=_recx["doc"];__cb0=_doc["data"]();_uid=_doc["id"];__cb0["changetype"]=__498;__cb0["id"]=_uid;_recs.push(__cb0);}return _recs;};_B.isremoved=function(_m) {var _ct;_ct=_B.getchangetype(_m,_B);if (_ct=="removed") { return true;}return false;};_B.isadded=function(_m) {var _ct;_ct=_B.getchangetype(_m,_B);if (_ct=="added") { return true;}return false;};_B.ismodified=function(_m) {var _ct;_ct=_B.getchangetype(_m,_B);if (_ct=="modified") { return true;}return false;};_B.getchangetype=function(_item) {var _ct;_ct=_item["changetype"];return _ct;};_B.getid=function(__111) {var _res;if (("id" in __111)) {_res=__111["id"];return _res;} else if (("message" in __111)) {_res=__111["message"];return _res;}};_B.getmessage=function(__118) {var _res;_res=__118["message"];return _res;};_B.getrecord=function(__111) {var _id,__56;_id=__111["id"];__56=__111["data"]();__56["id"]=_id;return __56;};_B.getdatabaseref=function(__cb3) {var _bo;_bo=_B.__f1["ref"](__cb3);return _bo;};_B.databasepush=function(__cb3,__11a) {var _tbl,_bp;_tbl=_B.getdatabaseref(__cb3,_B);_bp=_tbl["push"](__11a);return _bp;};_B.getstorageref=function(__cb3) {var _bo;_bo=_B.__f0["ref"](__cb3);return _bo;};_B.storageput=function(__cb3,_fo) {var _tbl,_bp;_tbl=_B.getstorageref(__cb3,_B);_bp=_tbl["put"](_fo);return _bp;};_B.getstorageuri=function(__cad) {var _suri;_suri=__cad["metadata"]["fullPath"];return _suri;};_B.getdownloadurl=function(__cad) {var _bp;_bp=__cad["ref"]["getDownloadURL"]();return _bp;};}function banano_bananofirestore_fbauth() {var _B=this;_B.__f8=null;_B.__f9=null;_B.__fa=null;_B.__fb=null;_B.__fc=null;_B.initialize=function(__e0) {_B.__f8=__e0["auth"]();return _B;};_B.signinwithpopupgoogle=function() {var _si;_B.__f9=new firebase.auth.GoogleAuthProvider();_B.__f9["addScope"]("https://www.googleapis.com/auth/contacts.readonly");_si=_B.__f8["signInWithPopup"](_B.__f9);return _si;};_B.signinwithpopupfacebook=function() {var _si;_B.__fa=new firebase.auth.FacebookAuthProvider();_si=_B.__f8["signInWithPopup"](_B.__fa);return _si;};_B.signinwithpopuptwitter=function() {var _si;_B.__fb=new firebase.auth.TwitterAuthProvider();_si=_B.__f8["signInWithPopup"](_B.__fb);return _si;};_B.signinwithpopupgithub=function() {var _si;_B.__fc=new firebase.auth.GithubAuthProvider();_si=_B.__f8["signInWithPopup"](_B.__fc);return _si;};_B.signinanonymously=function() {var _si;_si=_B.__f8["signInAnonymously"]();return _si;};_B.onauthstatechanged=function(__b5c,__268) {var _user,_cb;__268=__268.toLowerCase();_user={};_cb=function(_user) {if (typeof __b5c[(__268).toLowerCase()]==="function") {return __b5c[(__268).toLowerCase()](_user,_B)};};_B.__f8["onAuthStateChanged"](_cb);};_B.getcurrentuser=function() {var __cba,_usr;__cba=_B.__f8["currentUser"];if (is.null(__cba) || is.undefined(__cba)) { return null;}_usr=_B.getuserdata(__cba,_B);return _usr;};_B.getcurrentuid=function() {var _user,_uid;_user=_B.getcurrentuser(_B);_uid=_user["uid"];return _uid;};_B.getuid=function(__cbc) {var _suid;_suid=__cbc["uid"];return _suid;};_B.getuser=function(_resp) {var _usr;_usr=_resp["user"];return _usr;};_B.getsignedinuserdetails=function(_user) {var _usr,_usr1;_usr=_B.getuser(_user,_B);_usr1=_B.getuserdata(_usr,_B);return _usr1;};_B.getuserdata=function(_user) {var __cbc,__cab,__8b,__cbf,__cc0,__cc1,_uid,__cc2;__cbc={};if (is.null(_user) || is.undefined(_user)) { return __cbc;}__cab=_user["displayName"];__8b=_user["email"];__cbf=_user["emailVerified"];__cc0=_user["photoURL"];__cc1=_user["isAnonymous"];_uid=_user["uid"];__cc2=_user["phoneNumber"];__cbc["displayName"]=__cab;__cbc["email"]=__8b;__cbc["emailVerified"]=__cbf;__cbc["photoURL"]=__cc0;__cbc["isAnonymous"]=__cc1;__cbc["uid"]=_uid;__cbc["phoneNumber"]=__cc2;return __cbc;};_B.createuserwithemailandpassword=function(__cc3,__86) {var __cc4;__cc4=_B.__f8["createUserWithEmailAndPassword"](__cc3,__86);return __cc4;};_B.signinwithemailandpassword=function(__cc3,__86) {var __cc4;__cc4=_B.__f8["signInWithEmailAndPassword"](__cc3,__86);return __cc4;};_B.signout=function() {var __cc4;__cc4=_B.__f8["signOut"]();return __cc4;};_B.sendpasswordresetemail=function(__8b) {var __cc4;__cc4=_B.__f8["sendPasswordResetEmail"](__8b);return __cc4;};_B.sendemailverification=function() {var __cc4;__cc4=_B.__f8["user"]["sendEmailVerification"]();return __cc4;};}function banano_bananofirestore_fbcollection() {var _B=this;_B._co=null;_B.__fe={};_B.__ff="";_B.__100={};_B.__101="";_B.initialize=function(_fb,__ca4) {_B._co=_fb["collection"](__ca4);return _B;};_B.onsnapshot=function(__b5c,__268) {var _docx,_cb;_B.__fe=__b5c;_B.__ff=__268;_docx={};_cb=function(_docx) {if (typeof _B[("onSnapshotx").toLowerCase()]==="function") {return _B[("onSnapshotx").toLowerCase()](_docx,_B)};};_B._co["onSnapshot"](_cb);};_B.onsnapshotx=function(__cc6) {var __caf,_recx,__498,_docx,__cb0,_uid;__caf=__cc6["docChanges"]();for (var _recxindex=0;_recxindex<__caf.length;_recxindex++) {_recx=__caf[_recxindex];__498=_recx["type"];_docx=_recx["doc"];__cb0=_docx["data"]();_uid=_docx["id"];__cb0["changetype"]=__498;__cb0["id"]=_uid;(function() {if (typeof _B.__fe[(_B.__ff).toLowerCase()]==="function") {var CSr = _B.__fe[(_B.__ff).toLowerCase()](__cb0,_B);if(CSr!=null) {return CSr}}})();}};_B.add=function(__11a) {var __cc7;__cc7=_B._co["add"](__11a);return __cc7;};_B.addwait=async function(__11a) {var __cc8,__cc9,_res;__cc8={};__cc9=null;__cc9=_B.add(__11a,_B);__cc8=await __cc9;_res=_B.getid(__cc8,_B);return _res;};_B.getwait=async function() {var __cc6,__cca,_docs,_recs,_userx,_uid,__ccc;__cc6={};__cca=null;__cca=_B.get(_B);__cc6=await __cca;_docs=__cc6["docs"];_recs=[];_recs.length=0;for (var _userxindex=0;_userxindex<_docs.length;_userxindex++) {_userx=_docs[_userxindex];_uid=_userx["id"];__ccc=_userx["data"]();__ccc["id"]=_uid;_recs.push(__ccc);}return _recs;};_B.getid=function(__111) {var _res;if (("id" in __111)) {_res=__111["id"];return _res;} else if (("message" in __111)) {_res=__111["message"];_res="error."+_res;return _res;}};_B.doc=function(_pv) {var _docx;_docx= new banano_bananofirestore_fbdocument();_docx.initialize(_B._co,_pv);return _docx;};_B.orderby=function(_fld,__cce) {_B._co=_B._co["orderBy"](_fld,__cce);return _B;};_B.limit=function(__ccf) {_B._co=_B._co["limit"](__ccf);return _B;};_B.get=function() {var __cd0;__cd0=_B._co["get"]();return __cd0;};_B.startat=function(__ccf) {_B._co=_B._co["startAt"](__ccf);return _B;};_B.endat=function(__ccf) {_B._co=_B._co["endAt"](__ccf);return _B;};_B.where=function(_fld,_oper,__271) {switch ("" + _oper) {case "" + "ne":_B._co=_B._co["where"](_fld,"<",__271);_B._co=_B._co["where"](_fld,">",__271);break;default:_B._co=_B._co["where"](_fld,_oper,__271);break;}return _B;};_B.insertwait=async function(__81,_rec) {var _d,_r;_d=_B.doc(__81,_B);_r=await _d.setmergewait(_rec);return _r;};_B.updatewait=async function(__81,_rec) {var _d,_r;_d=_B.doc(__81,_B);_r=await _d.updatewait(_rec);return _r;};_B.readwait=async function(__81) {var _d,_r;_d=_B.doc(__81,_B);_r=await _d.getwait();return _r;};_B.deletewait=async function(__81) {var _d,_r;_d=_B.doc(__81,_B);_r=await _d.deletewait();return _r;};}function banano_bananofirestore_fbdocument() {var _B=this;_B._doc=null;_B.__fe={};_B.__ff="";_B.initialize=function(_co,_pv) {_B._doc=_co["doc"](_pv);return _B;};_B.onsnapshot=function(__b5c,__268) {var _docx,_cb;_B.__fe=__b5c;_B.__ff=__268;_docx={};_cb=function(_docx) {if (typeof _B[("onSnapshotx").toLowerCase()]==="function") {return _B[("onSnapshotx").toLowerCase()](_docx,_B)};};_B._doc["onSnapshot"](_cb);};_B.onsnapshotx=function(_docx) {var __cb0,_uid;__cb0=_docx["data"]();_uid=_docx["id"];__cb0["id"]=_uid;(function() {if (typeof _B.__fe[(_B.__ff).toLowerCase()]==="function") {var CSr = _B.__fe[(_B.__ff).toLowerCase()](__cb0,_B);if(CSr!=null) {return CSr}}})();};_B.update=function(__11a) {var __cc7;__cc7=_B._doc["update"](__11a);return __cc7;};_B.delete=function() {var __cd2;__cd2=_B._doc["delete"]();return __cd2;};_B.set=function(__11a) {var __cd3;__cd3=_B._doc["set"](__11a);return __cd3;};_B.setmerge=function(__11a) {var _m,__cd3;_m={};_m["merge"]=true;__cd3=_B._doc["set"](__11a,_m);return __cd3;};_B.get=function() {var __cd0;__cd0=_B._doc["get"]();return __cd0;};_B.getwait=async function() {var _docx,__cca,__cd4,_uid,__ccc,_m;_docx=null;__cca=null;__cca=_B.get(_B);_docx=await __cca;__cd4=_docx["exists"];if (__cd4) {_uid=_docx["id"];__ccc=_docx["data"]();__ccc["id"]=_uid;return __ccc;} else {_m={};return _m;}};_B.setwait=async function(__11a) {var __cc8,__cc9;__cc8={};__cc9=null;__cc9=_B.set(__11a,_B);__cc8=await __cc9;if (is.null(__cc8) || is.undefined(__cc8)) {return true;} else {return false;}};_B.setmergewait=async function(__11a) {var __cc8,__cc9;__cc8={};__cc9=null;__cc9=_B.setmerge(__11a,_B);__cc8=await __cc9;if (is.null(__cc8) || is.undefined(__cc8)) {return true;} else {return false;}};_B.updatewait=async function(__11a) {var __cc8,__cc9,_res;__cc8={};__cc9=null;__cc9=_B.update(__11a,_B);__cc8=await __cc9;if (is.null(__cc8) || is.undefined(__cc8)) {return "";} else {_res=_B.getid(__cc8,_B);return _res;}};_B.deletewait=async function() {var __cc8,__cc9,_res;__cc8={};__cc9=null;__cc9=_B.delete(_B);__cc8=await __cc9;if (is.null(__cc8) || is.undefined(__cc8)) {return "";} else {_res=_B.getid(__cc8,_B);return _res;}};_B.getid=function(__111) {var _res;if (("id" in __111)) {_res=__111["id"];return _res;} else if (("message" in __111)) {_res=__111["message"];_res="error."+_res;return _res;} else {return "";}};}function banano_bananofirestore_fbmessaging() {var _B=this;_B.__f4=null;_B._key="";_B.__104="";_B.__105="";_B.initialize=function(_fb,__f6,_sk) {_B.__f4=_fb["messaging"]();_B._key=__f6;_B.__104="";_B.__105=_sk;return _B;};_B.issubscribed=function(__111) {if ((__111.status<200 || __111.status>=400)) {return false;} else {return true;}};_B.issent=function(__111) {if ((__111.status<200 || __111.status>=400)) {return false;} else {return true;}};_B.requestpermission=function() {var _rp;_rp=_B.__f4["requestPermission"]();return _rp;};_B.gettoken=function() {var _opt,_t;_opt={};_opt["vapidKey"]=_B._key;_t=_B.__f4["getToken"](_opt);return _t;};_B.deletetoken=function() {var _dt;_dt=_B.__f4["deleteToken"](_B.__104);return _dt;};_B.deletetokenandwait=async function() {var _done,__cd7;_done=false;__cd7=null;__cd7=_B.deletetoken(_B);_done=await __cd7;return _done;};_B.settoken=function(__cd8) {_B.__104=__cd8;};_B.onmessage=function(__b5c,__268) {var __cd9,_cb;__268=__268.toLowerCase();__cd9={};_cb=function(__cd9) {if (typeof __b5c[(__268).toLowerCase()]==="function") {return __b5c[(__268).toLowerCase()](__cd9,_B)};};_B.__f4["onMessage"](_cb);};_B.ontokenrefresh=function(__b5c,__268) {var _cb;__268=__268.toLowerCase();_cb=function() {if (typeof __b5c[(__268).toLowerCase()]==="function") {return __b5c[(__268).toLowerCase()](_B)};};_B.__f4["onTokenRefresh"](_cb);};_B.sendtotoken=function(__cda,__315,__cdb,__cdc,__39e) {var __31,_hdrs,__cdd,__5b,__cde;__31={};__31={};__31.method="POST";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__cdd={};__cdd["title"]=__315;__cdd["body"]=__cdb;__cdd["icon"]=__39e;__5b={};__5b["to"]=__cda;__5b["notification"]=__cdd;__5b["data"]=__cdc;__31.body=JSON.stringify(__5b);__cde={};__cde=fetch("https://fcm.googleapis.com/fcm/send",__31);return __cde;};_B.sendtotokenandwait=async function(__cda,__315,__cdb,__cdc,__39e) {var __cdf,__111,__cde,_res;__cdf="";__111={};__cde={};__cde=_B.sendtotoken(__cda,__315,__cdb,__cdc,__39e,_B);__111=await __cde;_res=await __111.json();if (__111.ok) {__cdf=_res["message_id"];}return __cdf;};_B.sendtotopic=function(__ce0,__315,__cdb,__cdc,__39e) {var __31,_hdrs,__cdd,__5b,__cde;__31={};__31={};__31.method="POST";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__cdd={};__cdd["title"]=__315;__cdd["body"]=__cdb;__cdd["icon"]=__39e;__5b={};__5b["to"]="/topics/" + __ce0 + "";__5b["data"]=__cdc;__5b["notification"]=__cdd;__31.body=JSON.stringify(__5b);__cde={};__cde=fetch("https://fcm.googleapis.com/fcm/send",__31);return __cde;};_B.sendtotopicandwait=async function(__ce0,__315,__cdb,__cdc,__39e) {var __cdf,__111,__cde,_res;__cdf="";__111={};__cde={};__cde=_B.sendtotopic(__ce0,__315,__cdb,__cdc,__39e,_B);__111=await __cde;_res=await __111.json();if (__111.ok) {__cdf=_res["message_id"];}return __cdf;};_B.validatetoken=function() {var __cde,__31,_hdrs,__ce1;__cde={};__31={};__31={};__31.method="GET";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__ce1="https://iid.googleapis.com/iid/info/" + _B.__104 + "";__cde=fetch(__ce1,__31);return __cde;};_B.validatetokenandwait=async function(__ce0) {var _done,__cde;_done=false;__cde={};__cde=_B.validatetoken(_B);_done=await __cde;return _done;};_B.subscribe=function(__ce0) {var __cde,__31,_hdrs,__ce1;__cde={};__ce0=__ce0.trim();if (__ce0=="") { return __cde;}__31={};__31={};__31.method="POST";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__ce1="https://iid.googleapis.com/iid/v1/" + _B.__104 + "/rel/topics/" + __ce0 + "";__cde=fetch(__ce1,__31);return __cde;};_B.subscribeandwait=async function(__ce0) {var _done,__cde;_done=false;__cde={};__cde=_B.subscribe(__ce0,_B);_done=await __cde;return _done;};_B.unsubscribeandwait=async function(__ce0) {var _done,__cde;_done=false;__cde={};__cde=_B.unsubscribe(__ce0,_B);_done=await __cde;return _done;};_B.unsubscribe=function(__ce0) {var __cde,__31,_hdrs,__ce1;__cde={};__ce0=__ce0.trim();if (__ce0=="") { return __cde;}__31={};__31={};__31.method="DELETE";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__ce1="https://iid.googleapis.com/iid/v1/" + _B.__104 + "/rel/topics/" + __ce0 + "";__cde=fetch(__ce1,__31);return __cde;};_B.createtopic=function(__ce0) {var __cde,__31,__5b,_hdrs;__cde={};__ce0=__ce0.trim();if (__ce0=="") { return __cde;}__31={};__31={};__31.method="POST";__31.mode="cors";__5b={};__5b["to"]="/topics/" + __ce0 + "";__5b["registration_tokens"]=[_B.__104];__31.body=JSON.stringify(__5b);_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__cde=fetch("https://iid.googleapis.com/iid/v1:batchAdd",__31);return __cde;};_B.createtopicandwait=async function(__ce0) {var _done,__cde;_done=false;__cde={};__cde=_B.createtopic(__ce0,_B);_done=await __cde;return _done;};_B.removetopic=function(__ce0) {var __cde,__31,__5b,_hdrs;__cde={};__ce0=__ce0.trim();if (__ce0=="") { return __cde;}__31={};__31={};__31.method="POST";__31.mode="cors";__5b={};__5b["to"]="/topics/" + __ce0 + "";__5b["registration_tokens"]=[_B.__104];__31.body=JSON.stringify(__5b);_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__cde=fetch("https://iid.googleapis.com/iid/v1:batchRemove",__31);return __cde;};_B.removetopicandwait=async function(__ce0) {var _done,__cde;_done=false;__cde={};__cde=_B.removetopic(__ce0,_B);_done=await __cde;return _done;};_B.getsubscriptions=function() {var __31,_hdrs,__ce1,__cde;__31={};__31={};__31.method="GET";__31.mode="cors";_hdrs={};_hdrs["Content-Type"]="application/json;";_hdrs["Authorization"]="key="+_B.__105;__31.headers=_hdrs;__ce1="https://iid.googleapis.com/iid/info/" + _B.__104 + "?details=true";__cde={};__cde=fetch(__ce1,__31);return __cde;};_B.subscribetotopicsandwait=async function(__ce2) {var __ce3,_strtopic,__cde,__ce4;__ce3=[];__ce3.length=0;for (var _strtopicindex=0;_strtopicindex<__ce2.length;_strtopicindex++) {_strtopic=__ce2[_strtopicindex];__cde=_B.subscribe(_strtopic,_B);__ce3.push(__cde);}__ce4=[];__ce4=await Promise.all(__ce3);return true;};_B.getsubscriptionsandwait=async function() {var __ce5,__111,__cde,_res,_rel;__ce5={};__111={};__cde={};__cde=_B.getsubscriptions(_B);__111=await __cde;_res=await __111.json();_rel=_res["rel"];__ce5=_rel["topics"];return __ce5;};_B.gettokenandwait=async function() {var __ca6,__cde;__ca6="";__cde={};__cde=_B.gettoken(_B);__ca6=await __cde;return __ca6;};}