/*********************************************************************
*  #### Twitter Post Fetcher v14.0 ####
*  Coded by Jason Mayes 2015. A present to all the developers out there.
*  www.jasonmayes.com
*  Please keep this disclaimer with my code if you use it. Thanks. :-)
*  Got feedback or questions, ask here:
*  http://www.jasonmayes.com/projects/twitterApi/
*  Github: https://github.com/jasonmayes/Twitter-Post-Fetcher
*  Updates will be posted to this site.
*********************************************************************/
(function(B,n){"function"===typeof define&&define.amd?define([],n):"object"===typeof exports?module.exports=n():n()})(this,function(){function B(a){if(null===r){for(var g=a.length,c=0,k=document.getElementById(C),f="<ul>";c<g;)f+="<li>"+a[c]+"</li>",c++;k.innerHTML=f+"</ul>"}else r(a)}function n(a){return a.replace(/<b[^>]*>(.*?)<\/b>/gi,function(a,c){return c}).replace(/class="(?!(tco-hidden|tco-display|tco-ellipsis))+.*?"|data-query-source=".*?"|dir=".*?"|rel=".*?"/gi,"")}function D(a){a=a.getElementsByTagName("a");
for(var g=a.length-1;0<=g;g--)a[g].setAttribute("target","_blank")}function l(a,g){for(var c=[],k=new RegExp("(^| )"+g+"( |$)"),f=a.getElementsByTagName("*"),h=0,b=f.length;h<b;h++)k.test(f[h].className)&&c.push(f[h]);return c}function E(a){if(void 0!==a)return a=a.innerHTML.match(/data-srcset="([A-z0-9%_\.-]+)/i)[0],decodeURIComponent(a).split('"')[1]}var C="",g=20,F=!0,w=[],y=!1,x=!0,t=!0,z=null,A=!0,G=!0,r=null,H=!0,I=!1,u=!0,J=!0,K=!1,m=null,L={fetch:function(a){void 0===a.maxTweets&&(a.maxTweets=
20);void 0===a.enableLinks&&(a.enableLinks=!0);void 0===a.showUser&&(a.showUser=!0);void 0===a.showTime&&(a.showTime=!0);void 0===a.dateFunction&&(a.dateFunction="default");void 0===a.showRetweet&&(a.showRetweet=!0);void 0===a.customCallback&&(a.customCallback=null);void 0===a.showInteraction&&(a.showInteraction=!0);void 0===a.showImages&&(a.showImages=!1);void 0===a.linksInNewWindow&&(a.linksInNewWindow=!0);void 0===a.showPermalinks&&(a.showPermalinks=!0);void 0===a.dataOnly&&(a.dataOnly=!1);if(y)w.push(a);
else{y=!0;C=a.domId;g=a.maxTweets;F=a.enableLinks;t=a.showUser;x=a.showTime;G=a.showRetweet;z=a.dateFunction;r=a.customCallback;H=a.showInteraction;I=a.showImages;u=a.linksInNewWindow;J=a.showPermalinks;K=a.dataOnly;var l=document.getElementsByTagName("head")[0];null!==m&&l.removeChild(m);m=document.createElement("script");m.type="text/javascript";m.src="https://cdn.syndication.twimg.com/widgets/timelines/"+a.id+"?&lang="+(a.lang||"en")+"&callback=twitterFetcher.callback&suppress_response_codes=true&rnd="+
Math.random();l.appendChild(m)}},callback:function(a){function m(a){var b=a.getElementsByTagName("img")[0];b.src=b.getAttribute("data-src-2x");return a}var c=document.createElement("div");c.innerHTML=a.body;"undefined"===typeof c.getElementsByClassName&&(A=!1);a=[];var k=[],f=[],h=[],b=[],p=[],q=[],e=0;if(A)for(c=c.getElementsByClassName("tweet");e<c.length;){0<c[e].getElementsByClassName("retweet-credit").length?b.push(!0):b.push(!1);if(!b[e]||b[e]&&G)a.push(c[e].getElementsByClassName("e-entry-title")[0]),
p.push(c[e].getAttribute("data-tweet-id")),k.push(m(c[e].getElementsByClassName("p-author")[0])),f.push(c[e].getElementsByClassName("dt-updated")[0]),q.push(c[e].getElementsByClassName("permalink")[0]),void 0!==c[e].getElementsByClassName("inline-media")[0]?h.push(c[e].getElementsByClassName("inline-media")[0]):h.push(void 0);e++}else for(c=l(c,"tweet");e<c.length;)a.push(l(c[e],"e-entry-title")[0]),p.push(c[e].getAttribute("data-tweet-id")),k.push(m(l(c[e],"p-author")[0])),f.push(l(c[e],"dt-updated")[0]),
q.push(l(c[e],"permalink")[0]),void 0!==l(c[e],"inline-media")[0]?h.push(l(c[e],"inline-media")[0]):h.push(void 0),0<l(c[e],"retweet-credit").length?b.push(!0):b.push(!1),e++;a.length>g&&(a.splice(g,a.length-g),k.splice(g,k.length-g),f.splice(g,f.length-g),b.splice(g,b.length-g),h.splice(g,h.length-g),q.splice(g,q.length-g));var c=[],e=a.length,d=0;if(K)for(;d<e;)c.push({tweet:a[d].innerHTML,author:k[d].innerHTML,time:f[d].innerText,image:E(h[d]),rt:b[d],tid:p[d],permalinkURL:q[d].href}),d++;else for(;d<
e;){if("string"!==typeof z){var b=f[d].getAttribute("datetime"),v=new Date(f[d].getAttribute("datetime").replace(/-/g,"/").replace("T"," ").split("+")[0]),b=z(v,b);f[d].setAttribute("aria-label",b);if(a[d].innerText)if(A)f[d].innerText=b;else{var v=document.createElement("p"),r=document.createTextNode(b);v.appendChild(r);v.setAttribute("aria-label",b);f[d]=v}else f[d].textContent=b}b="";F?(u&&(D(a[d]),t&&D(k[d])),t&&(b+='<div class="user">'+n(k[d].innerHTML)+"</div>"),b+='<p class="tweet">'+n(a[d].innerHTML)+
"</p>",x&&(b=J?b+('<p class="timePosted"><a href="'+q[d]+'">'+f[d].getAttribute("aria-label")+"</a></p>"):b+('<p class="timePosted">'+f[d].getAttribute("aria-label")+"</p>"))):a[d].innerText?(t&&(b+='<p class="user">'+k[d].innerText+"</p>"),b+='<p class="tweet">'+a[d].innerText+"</p>",x&&(b+='<p class="timePosted">'+f[d].innerText+"</p>")):(t&&(b+='<p class="user">'+k[d].textContent+"</p>"),b+='<p class="tweet">'+a[d].textContent+"</p>",x&&(b+='<p class="timePosted">'+f[d].textContent+"</p>"));H&&
(b+='<p class="interact"><a href="https://twitter.com/intent/tweet?in_reply_to='+p[d]+'" class="twitter_reply_icon"'+(u?' target="_blank">':">")+'Reply</a><a href="https://twitter.com/intent/retweet?tweet_id='+p[d]+'" class="twitter_retweet_icon"'+(u?' target="_blank">':">")+'Retweet</a><a href="https://twitter.com/intent/favorite?tweet_id='+p[d]+'" class="twitter_fav_icon"'+(u?' target="_blank">':">")+"Favorite</a></p>");I&&void 0!==h[d]&&(b+='<div class="media"><img src="'+E(h[d])+'" alt="Image from tweet" /></div>');
c.push(b);d++}B(c);y=!1;0<w.length&&(L.fetch(w[0]),w.splice(0,1))}};return window.twitterFetcher=L});

/*
<div class="media">
Removed--><img src="'+l+'" alt="Image from tweet" />
</div>
*/

 var config1 = {
  "id": '388634487975714816',
  "domId": 'dccps-tweets',
  "maxTweets": 1,
  "enableLinks": true
};
twitterFetcher.fetch(config1);