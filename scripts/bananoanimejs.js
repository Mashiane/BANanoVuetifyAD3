
/* bananoanimejs */
function banano_bananoanimejs_bananoanimejs() {var _B=this;_B.__4e=null;_B.__4f=[];_B.__3={};_B.__50=[];_B.__51="1turn";_B.__52="linear";_B.__53="spring";_B.__54="easeInQuad";_B.__55="easeInCubic";_B.__56="easeInQuart";_B.__57="easeInQuint";_B.__58="easeInSine";_B.__59="easeInExpo";_B.__5a="easeInCirc";_B.__5b="easeInBack";_B.__5c="easeOutQuad";_B.__5d="easeOutCubic";_B.__5e="easeOutQuart";_B.__5f="easeOutQuint";_B.__60="easeOutSine";_B.__61="easeOutExpo";_B.__62="easeOutCirc";_B.__63="easeOutBack";_B.__64="easeInBounce";_B.__65="easeInOutQuad";_B.__66="easeInOutCubic";_B.__67="easeInOutQuart";_B.__68="easeInOutQuint";_B.__69="easeInOutSine";_B.__6a="easeInOutExpo";_B.__6b="easeInOutCirc";_B.__6c="easeInOutBack";_B.__6d="easeInOutBounce";_B.__6e="easeOutBounce";_B.__6f="easeOutInQuad";_B.__70="easeOutInCubic";_B.__71="easeOutInQuart";_B.__72="easeOutInQuint";_B.__73="easeOutInSine";_B.__74="easeOutInExpo";_B.__75="easeOutInCirc";_B.__76="easeOutInBack";_B.__77="easeOutInBounce";_B.__78="alternate";_B.__79="reverse";_B.__7a="normal";_B.__7b= new banano_bananoanimejs_bananoanimejsitem();_B.__7c=false;_B.initialize=function(__7b2,__856) {_B.__4f.length=0;_B.__3=__7b2;_B.__50.length=0;_B.__7b.initialize();_B.target(__856,_B);_B.__7c=false;return _B;};_B.animation=function() {var _ajsa;_ajsa= new banano_bananoanimejs_bananoanimejsitem();_ajsa.initialize();return _ajsa;};_B.keyframes=function(_kf) {_B.__50.push(_kf.pop());return _B;};_B.target=function(__859) {_B.__4f.push(__859);return _B;};_B.create=function() {var __7d;_B.__7c=true;__7d=_B.__7b.pop();if (_B.__50.length>0) {__7d["keyframes"]=_B.__50;}__7d["targets"]=_B.__4f;_B.__4e=anime(__7d);};_B.play=function() {if (_B.__7c==false) {_B.create(_B);}_B.__4e["play"]();};_B.pause=function() {_B.__4e["pause"]();};_B.restart=function() {_B.__4e["restart"]();};_B.reverse=function() {_B.__4e["reverse"]();};}function banano_bananoanimejs_bananoanimejsitem() {var _B=this;_B.__7d={};_B.__4f=[];_B.initialize=function() {_B.__7d={};_B.__4f.length=0;return _B;};_B.delay=function(_d) {_B.__7d["delay"]=_d;return _B;};_B.delaycallback=function(__7b2,__1b8) {var _el,_i,_cb;_el={};_i={};_cb=function(_el,_i) {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_el,_i,_B)};};_B.__7d["delay"]=_cb;};_B.translatexcallback=function(__7b2,__1b8) {var _el,_i,_cb;_el={};_i={};_cb=function(_el,_i) {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_el,_i,_B)};};_B.__7d["translateX"]=_cb;};_B.updatecallback=function(__7b2,__1b8) {var _cb;_cb=function() {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_B)};};_B.__7d["update"]=_cb;};_B.translateycallback=function(__7b2,__1b8) {var _el,_i,_cb;_el={};_i={};_cb=function(_el,_i) {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_el,_i,_B)};};_B.__7d["translateY"]=_cb;};_B.scalecallback=function(__7b2,__1b8) {var _el,_i,_l,_cb;_el={};_i={};_l={};_cb=function(_el,_i,_l) {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_el,_i,_l,_B)};};_B.__7d["scale"]=_cb;};_B.rotatecallback=function(__7b2,__1b8) {var _cb;_cb=function() {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_B)};};_B.__7d["rotate"]=_cb;};_B.borderradiuscallback=function(__7b2,__1b8) {var _cb;_cb=function() {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_B)};};_B.__7d["borderRadius"]=_cb;};_B.durationcallback=function(__7b2,__1b8) {var _cb;_cb=function() {if (typeof __7b2[(__1b8).toLowerCase()]==="function") {return __7b2[(__1b8).toLowerCase()](_B)};};_B.__7d["duration"]=_cb;};_B.value=function(_v) {_B.__7d["value"]=_v;return _B;};_B.opacity=function(_v) {_B.__7d["opacity"]=_v;return _B;};_B.easing=function(_e) {_B.__7d["easing"]=_e;return _B;};_B.steps=function(__85b) {_B.__7d["easing"]="steps(" + __85b + ")";return _B;};_B.cubicbezier=function(_x1,_y1,_x2,_y2) {_B.__7d["easing"]="cubicBezier(" + _x1 + ", " + _y1 + ", " + _x2 + ", " + _y2 + "})";return _B;};_B.spring=function(_mass,__85d,__85e,__85f) {_B.__7d["easing"]="spring(" + _mass + ", " + __85d + ", " + __85e + ", " + __85f + ")";return _B;};_B.easeinelastic=function(__860,__861) {_B.__7d["easing"]="easeInElastic(" + __860 + ", " + __861 + ")";return _B;};_B.easeoutelastic=function(__860,__861) {_B.__7d["easing"]="easeOutElastic(" + __860 + ", " + __861 + ")";return _B;};_B.easeinoutelastic=function(__860,__861) {_B.__7d["easing"]="easeInOutElastic(" + __860 + ", " + __861 + ")";return _B;};_B.easeoutinelastic=function(__860,__861) {_B.__7d["easing"]="easeOutInElastic(" + __860 + ", " + __861 + ")";return _B;};_B.duration=function(_d) {_B.__7d["duration"]=_d;return _B;};_B.pop=function() {if (_B.__4f.length>0) {_B.__7d["targets"]=_B.__4f;}return _B.__7d;};_B.change=function(_prop,__862) {_B.__7d[_prop]=__862;return _B;};_B.change1=function(_prop,__863,__864) {var __865;__865=[];__865.length=0;__865.push(__863);__865.push(__864);_B.__7d[_prop]=__865;return _B;};_B.left=function(_l) {_B.change("left",_l,_B);return _B;};_B.backgroundcolor=function(_bg) {_B.change("backgroundColor",_bg,_B);return _B;};_B.borderradius=function(__863,__864) {_B.change1("borderRadius",__863,__864,_B);return _B;};_B.translatex=function(_x) {_B.change("translateX",_x,_B);return _B;};_B.translatex1=function(_x0,_x1) {var __488;__488=[];__488.length=0;__488.push(_x0);__488.push(_x1);_B.change("translateX",__488,_B);return _B;};_B.translatey=function(_x) {_B.change("translateY",_x,_B);return _B;};_B.translatez=function(_x) {_B.change("translateZ",_x,_B);return _B;};_B.rotate=function(_r) {_B.change("rotate",_r,_B);return _B;};_B.rotatex=function(_r) {_B.change("rotateX",_r,_B);return _B;};_B.rotatey=function(_r) {_B.change("rotateY",_r,_B);return _B;};_B.rotatez=function(_r) {_B.change("rotateZ",_r,_B);return _B;};_B.scale=function(_s) {_B.change("scale",_s,_B);return _B;};_B.scalex=function(_s) {_B.change("scaleX",_s,_B);return _B;};_B.scaley=function(_s) {_B.change("scaleY",_s,_B);return _B;};_B.scalez=function(_s) {_B.change("scaleZ",_s,_B);return _B;};_B.skew=function(_s) {_B.change("skew",_s,_B);return _B;};_B.skewx=function(_s) {_B.change("skewX",_s,_B);return _B;};_B.skewy=function(_s) {_B.change("skewY",_s,_B);return _B;};_B.perspective=function(_s) {_B.change("perspective",_s,_B);return _B;};_B.roundit=function(_s) {_B.change("round",_s,_B);return _B;};_B.loopit=function(_s) {_B.change("loop",_s,_B);return _B;};_B.basefrequency=function(_s) {_B.change("baseFrequency",_s,_B);return _B;};_B.direction=function(_d) {_B.change("direction",_d,_B);return _B;};_B.enddelay=function(_s) {_B.change("endDelay",_s,_B);return _B;};_B.innerhtml=function(__863,__864) {_B.change1("innerHTML",__863,__864,_B);return _B;};_B.autoplay=function(_b) {_B.change("autoplay",_b,_B);return _B;};_B.width=function(_w) {_B.change("width",_w,_B);return _B;};_B.height=function(_h) {_B.change("height",_h,_B);return _B;};_B.target=function(__859) {_B.__4f.push(__859);return _B;};}function banano_bananoanimejs_bananoanimejstimeline() {var _B=this;_B.__4e=null;_B.__4f=[];_B.__3={};_B.__7e= new banano_bananoanimejs_bananoanimejsitem();_B.__7f=null;_B.__7c=false;_B.initialize=function(__7b2) {_B.__4f.length=0;_B.__3=__7b2;_B.__7e.initialize();_B.__4e=anime;_B.__7c=false;return _B;};_B.create=function() {var __7d;_B.__7c=true;__7d=_B.__7e.pop();_B.__7f=_B.__4e["timeline"](__7d);return _B;};_B.animation=function() {var _ajsa;_ajsa= new banano_bananoanimejs_bananoanimejsitem();_ajsa.initialize();return _ajsa;};_B.add=function(_anim) {var __7d;if (_B.__7c==false) {_B.create(_B);}__7d=_anim.pop();_B.__7f["add"](__7d);return _B;};_B.addoffset=function(_anim,__86b) {var __7d;if (_B.__7c==false) {_B.create(_B);}__7d=_anim.pop();_B.__7f["add"](__7d,__86b);return _B;};_B.play=function() {_B.__7f["play"]();};_B.pause=function() {_B.__7f["pause"]();};_B.restart=function() {_B.__7f["restart"]();};_B.reverse=function() {_B.__7f["reverse"]();};}