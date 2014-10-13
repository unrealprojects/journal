/* Modernizr 2.0.6 (Custom Build) | MIT & BSD
 * Contains: input | inputtypes
 */
;window.Modernizr=function(a,b,c){function y(){e.input=function(a){for(var b=0,c=a.length;b<c;b++)p[a[b]]=a[b]in k;return p}("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")),e.inputtypes=function(a){for(var d=0,e,g,h,i=a.length;d<i;d++)k.setAttribute("type",g=a[d]),e=k.type!=="text",e&&(k.value=l,k.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(g)&&k.style.WebkitAppearance!==c?(f.appendChild(k),h=b.defaultView,e=h.getComputedStyle&&h.getComputedStyle(k,null).WebkitAppearance!=="textfield"&&k.offsetHeight!==0,f.removeChild(k)):/^(search|tel)$/.test(g)||(/^(url|email)$/.test(g)?e=k.checkValidity&&k.checkValidity()===!1:/^color$/.test(g)?(f.appendChild(k),f.offsetWidth,e=k.value!=l,f.removeChild(k)):e=k.value!=l)),o[a[d]]=!!e;return o}("search tel url email datetime date month week time datetime-local number range color".split(" "))}function x(a,b){return!!~(""+a).indexOf(b)}function w(a,b){return typeof a===b}function v(a,b){return u(prefixes.join(a+";")+(b||""))}function u(a){j.cssText=a}var d="2.0.6",e={},f=b.documentElement,g=b.head||b.getElementsByTagName("head")[0],h="modernizr",i=b.createElement(h),j=i.style,k=b.createElement("input"),l=":)",m=Object.prototype.toString,n={},o={},p={},q=[],r,s={}.hasOwnProperty,t;!w(s,c)&&!w(s.call,c)?t=function(a,b){return s.call(a,b)}:t=function(a,b){return b in a&&w(a.constructor.prototype[b],c)};for(var z in n)t(n,z)&&(r=z.toLowerCase(),e[r]=n[z](),q.push((e[r]?"":"no-")+r));e.input||y(),u(""),i=k=null,e._version=d;return e}(this,this.document);