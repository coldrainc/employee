/**
*鎵€鏈� http://www.tsinghua.edu.cn 鏇挎崲涓� /
**/
$(document).ready(function() {
 var repAddr="/";
 $("a:contains('娓呭崕涓婚〉')").attr("target","_blank");
 $("a:contains('娓呭崕澶у涓婚〉')").attr("target","_blank");
 $("a:contains('娓呭崕澶у涓枃涓婚〉')").attr("target","_blank");
 $("a[title='娓呭崕澶у']").attr("target","_blank");
 $("a[title='娓呭崕澶у涓婚〉']").attr("target","_blank");
 $("a[title='娓呭崕澶у涓枃涓婚〉']").attr("target","_blank");
 $("a[href='http://www.tsinghua.edu.cn/qhdwzy/index.jsp']").attr("href",repAddr).attr("target","_blank");
 $("a[href='http://www.tsinghua.edu.cn/']").attr("target","_blank");
 $("a[href='http://www.tsinghua.edu.cn']").attr("target","_blank");
 //$('a[href^=http://100.tsinghua.edu.cn]').css('visibility','hidden');
 $('a[href^=http://100.tsinghua.edu.cn]').hide();
});
/**
*杩囨护鎵€鏈� http://wwwadm.tsinghua.edu.cn涓虹┖
**/
$(document).ready(function() {
 $("a[href^='http://wwwadm.cic.tsinghua.edu.cn']").each(function(){
   var oldhref = $(this).attr("href");
   $(this).attr("href",oldhref.replace("http://wwwadm.cic.tsinghua.edu.cn",""));
 });
});
/**
*鎼滅储閰嶇疆
**/
$(document).ready(function(){
//鐩稿璺緞
var pathName=window.location.pathname.split("/");
//鍗忚
var protocol=window.location.protocol;
//涓绘満
var host=window.location.host;
jQuery.getJSON("/public/plugin/source/search/action.js", function(json){
	if(pathName[2]!="news"){$("#searchForm").attr("action",json[0].action);}
	else{$("#searchForm").attr("action","http://166.111.4.101:8082/thusearch/search.do");}
});
  $("#searchVpath").attr("value",protocol+"//"+host+"/"+pathName[1]+"/"+pathName[2]+"/");
});