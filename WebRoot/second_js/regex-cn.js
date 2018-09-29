$(function() {
  var $pFocus = $(".jiequ");
  $pFocus.each(function() {
    $(this).find("script").remove();
    var txt = $(this).text();
    if (txt.match(/\.\.\.$/)) {
      $(this).text(cutLastWord(txt));
    }
  });

  function cutLastWord(txt) {
    return txt.replace(/(\s)[\S]*$/, "") + "...";
  }
 
});
$(function(){//修复主页链接地址
	$(".mainWrap .topwraper .thuhome a").filter(function(){
		return $(this).attr("href")=="/publish/newthu/index.html";
	}).attr("href","http://www.tsinghua.edu.cn");
	$(".mainWrap .topwraper .thuold a").filter(function(){
		return $(this).attr("href")=="/publish/news/index.html";
	}).attr("href","http://www.tsinghua.edu.cn/publish/news/index.html");
	$(".mainWrap .copyright a").filter(function(){
		return $(this).attr("href")=="/publish/newthu/newthu_cnt/intothu/picture/map.png";
	}).attr("href","http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/picture/map.png");
});