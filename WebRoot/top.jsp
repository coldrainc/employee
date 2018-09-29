<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

	<input type="hidden" id="token" value="yxqqnn0900000014">
	<input type="hidden" id="qrcode_url"
		value="http://mmbiz.qpic.cn/mmbiz_jpg/wyPSt6XmlibIrL7raC83eNd5SQSz8oxFich7dicL3IT6aYPFEpbc8Muquto8GuwXYf6G6G9NiadLIVwAH54LKa0PzA/0">
	<input type="hidden" id="qq_services" value="">
	<div class="header rich03-header">
		<div class="header-wrap clearfix">
			<div class="header-line"></div>
			<a href="javascript:;" class="fl"> <img class="logo-img"
				src="http://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/school/1495449423-3394.png" />
			</a>
			<div id="wxQRCode" class="fl">
				<img
					src="http://pic.bibibi.net/public/images/other/s-yxqqnn0900000014.png"
					onerror="wxQRCode.style.display='none'">
			</div>
			<div class="pub-search fr" id="search_bar">
				<div class="search-inner">
					<div class="search-txt-wrap">
						<input class="search-txt" placeholder="搜索你感兴趣的内容" id="G_keyword"
							type="text"
							onkeydown="if(event.keyCode==13){location.href='/module/search?keyword='+G_keyword.value;}">
					</div>
					<a class="search-btn has-icon-svg" id="search_btn"
						onclick="location.href='/module/search?keyword='+G_keyword.value;">
						<span class="icon-svg icon-svg-search"></span>
					</a>
				</div>
			</div>
		</div>
	</div>

