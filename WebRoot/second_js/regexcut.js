function thunews_infosummary(thunews_classname){
	var indexThreshold = 100;
	var thunews_patterns = [/(.)*[0-9]{1,2}(\s)?月(\s)?[0-9]{1,2}(\s)?日(\s)?电/,
	      /(.)*【新闻中心讯[\s\S]*】/,
	      /(.)*(\uFF08|\u0028)记者+[\s\S]*(\uFF09|\u0029)/,
		  /(.)*(\uFF08|\u0028)学生记者+[\s\S]*(\uFF09|\u0029)/,
		  /(.)*(\uFF08|\u0028)研通社记者+[\s\S]*(\uFF09|\u0029)/,
		   /(.)*(\uFF08|\u0028)实习记者+[\s\S]*(\uFF09|\u0029)/,
		  /(.)*(\uFF08|\u0028)学生通讯员+[\s\S]*(\uFF09|\u0029)/,
	      /(.)*(\uFF08|\u0028)通讯员+[\s\S]*(\uFF09|\u0029)/, /\u25CF/ ];
		  var thunews_class = $("."+thunews_classname);
		  thunews_class.each(function(){
			 var thunews_div = $(this);
			var fffContent = thunews_div.html();
    var suffix = fffContent.substring(indexThreshold);
    fffContent = fffContent.substring(0, indexThreshold);
			$.each(thunews_patterns, function(i, thunews_pattern) {
				fffContent = fffContent.replace(thunews_pattern, "");
		    });
fffContent +=suffix ;
			fffContent = fffContent.substring(fffContent.indexOf("来源："));
			fffContent = $.trim(fffContent);
			thunews_div.html(fffContent);
		  })
	};
$(function() {
	  thunews_infosummary("thnews_jqzy");
	  
	});