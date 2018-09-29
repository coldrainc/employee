// JavaScript Document

$(function()
{
	//ie6
	
	if ( $.browser.msie){
		 if(parseInt( $.browser.version )<7){
			 $("body").prepend("<div class='ie6' style='display:none;'><span>鍏抽棴</span>闈炲父鎶辨瓑锛屾湰绔欎笉鍐嶆敮鎸佹偍鐨勬祻瑙堝櫒锛岃鍗囩骇鎮ㄧ殑娴忚鍣ㄥ埌 <a href='http://www.microsoft.com/zh-cn/download/internet-explorer-8-details.aspx' target='_blank' style='text-decoration:underline'>鏇撮珮鐨勭増鏈�</a>锛佷互鑾峰緱鏇村ソ鐨勮鐪嬫晥鏋溿€�</div>");
			 $(".ie6").animate({height:"toggle",opacity:"toggle"},1000);
			 $(".ie6 span").click(function(){$(".ie6").slideUp()})
	}}
	
	////灏忓睆骞�
	
	$("#smenu").toggle(function()
	{
		$(this).addClass("active");
		$("#nav").addClass("active");
		$("header .search").addClass("active");
	},function()
	{
		$(this).removeClass("active");
		$("#nav").removeClass("active");
		$("header .search").removeClass("active");
	})		
	
	
	////灏忓瓙瀵艰埅鑿滃崟
	$("#subsmenu").toggle(function()
	{
		$(".enav li").show();
		$(".monthnav li").show();
	},function()
	{
		$(".enav li:not('.current')").hide();
		$(".monthnav li:not('.month')").hide();
	})	
	
	
	$(".ulink .socialnet").click(function(){
		
		$(this).find(".socialwraper").toggle();
		})
	
	///婊氬姩鍥剧墖缈婚〉鎸夐挳
	
	$(".subchannel .slidegallery").hover(function(){
		$(".subchannel .slidegallery .sliderbutton").fadeIn("fast");
		},function(){
		$(".subchannel .slidegallery .sliderbutton").fadeOut("fast");	
		});

})
