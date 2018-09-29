<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="cn">
<head>
<meta name="renderer" content="webkit">
<title>校园就业管理系统</title>
<meta charset=UTF-8 />
<meta name="keywords" content="招聘,招聘网,人才网,求职,找工作" />
<meta name="description" content="问财招聘是全国性权威人才网站,为求职者提供更新更全的招聘信息,为企业提供网络招聘,校园招聘,猎头,培训,测评和人事外包等一站式专业人力资源服务.好工作上问财招聘." />
<meta name="baidu-site-verification" content="DN49YFAOvMKT6OI2" />
<meta name="360-site-verification" content="7e4b4b3f530e75b01c33c4453aad1676" />
<meta name="google-site-verification" content="17pJtanqBS_WNoKwEq6qaj8Lg3539CGT9qZQlM72vQ8" />

<link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
<link rel="stylesheet" href="//img00.zhaopin.cn/2012/css/index/index.min-L.css?version=20150804" />
<link rel="stylesheet" href="//img01.zhaopin.cn/2012/other/lmadjust/css/adbox_s.css" />
<script src="//img07.zhaopin.cn/2014/head_foot/js/global.js"></script>
<link rel="stylesheet"	href="//desktop-bucket.zhaopin.cn/vendors.63fc14.css">
<link rel="stylesheet" href="//desktop-bucket.zhaopin.cn/index.1945f9.css">
<link rel="stylesheet" type="text/css" href="//images.zhaopin.cn//www/ihome/font/iconfont.css">
<script src="//common-bucket.zhaopin.cn/js/polyfill.min/polyfill.min-6.23.0.js"></script>
<script src="//common-bucket.zhaopin.cn/js/idangerous.swiper.min/idangerous.swiper.min-2.7.6.js"></script>
<link href="//common-bucket.zhaopin.cn/css/idangerous.swiper.min/idangerous.swiper.min-2.7.6.css" rel="stylesheet">
</head>
<body>
	<s:if test="{#session.resume==null}">
		<s:action name="lookResumeAction"></s:action>
	</s:if>
	<div id="root" data-server-rendered="true" class="zp">
		<div id="rightNav_top" class="zp-header clearfix">
			<div class="zp-container zp-header-content">
				<div class="zp-topMenu zp-container">
					<div class="clearfix sf-header-top">
						<div class="fl">
							<div>
								<span class="zp-location-city">全国站</span> 
								<a target="_blank" href="javascript:0" class="zp-change-city">[切换城市]</a>
							</div>
						</div>
						<div class="fr">
							<div class="zp-phone">
								<a class="return-to-old" style="display:;"></a>
								 <i class="icon zp-iconfont zp-dianhua fs12"></i>18870166097
							</div>
						</div>
					</div>
				</div>
				<div class="zp-search-wrapper">
					<div class="clearfix">
						<div class="zp-search-box ">
							<div class="fl zf-logo">
								<a href="#" target="_self" class="fl zp-logo-link">
								<img src="img/jxufe.jpg" alt="暂无法显示图片" style="width: 80px; margin-left: 55px; margin-top: -20px;" />
							</div>
							<div class="fl sf-search-box">
								<div class="zp-search-common-wrapper" data-v-36a77b84>
									<div class="zp-search-common-old" data-v-36a77b84>
										<div class="zp-i-select-old"
											data-v-c7911568 data-v-36a77b84>
											<div class="zp-i-select-label-wrapper" data-v-c7911568>
												<div class="zp-i-select-label zp-iconfont" data-v-c7911568>
													<span data-v-c7911568>职位</span>
												</div>
											</div>
										</div>
										<form action="result.jsp" method="post" id="chaxun">
											<input type="text" placeholder="请输入关键词,例如:JAVA,销售代表,行政助理等" class="zp-search-input" data-v-36a77b84 name="keywords">
											 <a class="zp-search-btn zp-blue-button" data-v-36a77b84 href="javascript:0" id="tijiao">
												<i class="icon zp-iconfont zp-search" data-v-36a77b84></i>
											 </a>
											<ul class="zp-search-list" style="display:none;" data-v-36a77b84></ul>
											<input type="submit" value="提交" hidden>
										</form>
									</div>
								</div>
							</div>
							<div class="fr qrcode"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="zp-main zp-main-container-1" style="z-index:1;">
			<div class="zp-main-channel">
				<ul class="zp-container zp-channel clearfix">
					<li class="zp-channel-item on commom-li" style="line-height:;"><a
						href="#" target="_self"><span
							class="zp-channel-item--name"><span>首页</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>城市频道</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>校园招聘</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#"
						target="_blank"><span class="zp-channel-item--name"><span>高端职位</span>
								<!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>海外招聘</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>智联教育</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>智联测评</span> <!----></span></a></li>
					<li class="zp-channel-item commom-li" style="line-height:;"><a
						href="#" target="_blank"><span
							class="zp-channel-item--name"><span>职Q</span> <i
								class="zp-hot"></i></span></a></li>
				</ul>
				<!---->
			</div>
			<div class="zp-container zp-main-container">
				<!---->
				<div class="zp-jobNavigater zp-main-jobnav">
					<ol class="zp-jobNavigater-list">
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">互联网IT</div>
							<div class="zp-jobNavigater-pop" style="top:-10px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">互联网IT</div>
									<div class="zp-jobNavigater-pop-list">
										<a>Java开发</a><a>UI设计师</a><a>Web前端</a><a>PHP</a><a>Python</a><a>Android</a><a>美工</a><a>深度学习</a><a>算法工程师</a><a>Hadoop</a><a>Node.js</a><a>数据开发</a><a>数据分析师</a><a>数据架构</a><a>人工智能</a><a>区块链</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>电气工程师</a><a>电子工程师</a><a>PLC</a><a>测试工程师</a><a>设备工程师</a><a>硬件工程师</a><a>结构工程师</a><a>工艺工程师</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>产品经理</a><a>新媒体运营</a><a>运营专员</a><a>淘宝运营</a><a>天猫运营</a><a>产品助理</a><a>产品运营</a><a>淘宝客服</a><a>游戏运营</a><a>编辑</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">金融</div>
							<div class="zp-jobNavigater-pop" style="top:-54px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">金融</div>
									<div class="zp-jobNavigater-pop-list">
										<a>投资经理</a><a>风控</a><a>催收</a><a>银行柜员</a><a>银行销售</a><a>信审</a><a>信用卡</a><a>贷款</a><a>金融产品</a><a>汽车金融</a><a>金融研究</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>证券</a><a>交易员</a><a>投资经理</a><a>期货</a><a>操盘手</a><a>基金</a><a>股票</a><a>投资顾问</a><a>信托</a><a>典当</a><a>担保</a><a>信贷</a><a>权证</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>财产保险</a><a>保险内勤</a><a>理赔</a><a>精算师</a><a>保险销售</a><a>理财顾问</a><a>查勘定损</a><a>车险</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">房地产/建筑</div>
							<div class="zp-jobNavigater-pop" style="top:-98px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">房地产/建筑</div>
									<div class="zp-jobNavigater-pop-list">
										<a>土建工程师</a><a>施工员</a><a>资料员</a><a>预算员</a><a>造价员</a><a>一级建造师</a><a>室内设计师</a><a>土建</a><a>暖通</a><a>项目经理</a><a>电气工程师</a><a>建筑设计</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>置业顾问</a><a>房地产销售</a><a>房地产招商</a><a>开发报建</a><a>房地产策划</a><a>房地产开发</a><a>房地产评估</a><a>地产经纪</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>物业</a><a>物业经理</a><a>保安</a><a>客服</a><a>物业管理</a><a>物业客服</a><a>电工</a><a>物业主管</a><a>物业维修</a><a>消防</a><a>客服主管</a><a>前台</a><a>文员</a><a>物业项目经理</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">贸易/零售/物流</div>
							<div class="zp-jobNavigater-pop" style="top:-142px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">贸易/零售/物流</div>
									<div class="zp-jobNavigater-pop-list">
										<a>采购</a><a>外贸</a><a>外贸业务员</a><a>外贸跟单</a><a>采购助理</a><a>外贸日语</a><a>采购专员</a><a>外贸英语</a><a>外贸助理</a><a>采购经理</a><a>买手</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>导购</a><a>营业员</a><a>店长</a><a>收银员</a><a>销售</a><a>导购员</a><a>督导</a><a>客服</a><a>新零售产品</a><a>理货员</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>供应链</a><a>物流专员</a><a>物流经理</a><a>物流运营</a><a>物流跟单</a><a>物流管理</a><a>物仓调度</a><a>货运代理</a><a>报检报关</a><a>仓储管理</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">教育/传媒/广告</div>
							<div class="zp-jobNavigater-pop" style="top:-186px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">教育/传媒/广告</div>
									<div class="zp-jobNavigater-pop-list">
										<a>教师</a><a>英语老师</a><a>课程顾问</a><a>英语</a><a>教务</a><a>美术老师</a><a>幼教</a><a>小学教师</a><a>班主任</a><a>助教</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>编导</a><a>摄影师</a><a>编剧</a><a>摄影</a><a>后期制作</a><a>制片</a><a>记者</a><a>剪辑</a><a>化妆师</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>广告创意</a><a>美术指导</a><a>策划经理</a><a>文案</a><a>广告制作</a><a>媒介</a><a>广告审核</a><a>平面设计</a><a>网页设计</a><a>插画师</a><a>工业设计</a><a>视觉设计</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">服务业</div>
							<div class="zp-jobNavigater-pop" style="top:-230px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">服务业</div>
									<div class="zp-jobNavigater-pop-list">
										<a>美容师</a><a>美容学徒</a><a>美容导师</a><a>纹绣师</a><a>医美</a><a>美甲师</a><a>健身教练</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>导游</a><a>旅游顾问</a><a>旅游计调</a><a>签证</a><a>旅游销售</a><a>票务</a><a>服务员</a><a>收银员</a><a>店长</a><a>酒店前台</a><a>酒店管理</a><a>餐饮管理</a><a>收银</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>保安</a><a>保洁</a><a>月嫂</a><a>保姆</a><a>家政</a><a>婚礼策划</a><a>育婴师</a><a>催乳师</a><a>司机</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">市场/销售</div>
							<div class="zp-jobNavigater-pop" style="top:-274px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">市场/销售</div>
									<div class="zp-jobNavigater-pop-list">
										<a>市场营销</a><a>市场策划</a><a>市场顾问</a><a>市场总监</a><a>市场推广</a><a>SEO</a><a>品牌经理</a><a>SEM</a><a>商务渠道</a><a>网络营销</a><a>活动策划</a><a>
											APP推广</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>销售专员</a><a>销售经理</a><a>客户代表</a><a>销售代表</a><a>BD经理</a><a>大客户销售</a><a>渠道销售</a><a>销售助理</a><a>电话销售</a><a>销售顾问</a><a>商品经理</a><a>广告销售</a><a>网络营销</a><a>营销主管</a><a>销售总监</a><a>商务总监</a><a>城市经理</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><div
								class="zp-jobNavigater-item-txt">人事/财务/行政</div>
							<div class="zp-jobNavigater-pop" style="top:-318px;">
								<div class="zp-jobNavigater-popContainer">
									<div class="zp-jobNavigater-pop-title">人事/财务/行政</div>
									<div class="zp-jobNavigater-pop-list">
										<a>人力资源主管</a><a>招聘</a><a>HRBP</a><a>人力资源专员</a><a>培训</a><a>薪资福利</a><a>绩效考核</a><a>人力资源经理</a><a>人力资源总监</a><a>员工关系</a><a>组织发展</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>会计</a><a>出纳</a><a>财务顾问</a><a>结算</a><a>税务</a><a>风控</a><a>财务经理</a><a>财务主管</a><a>财务分析</a><a>法务专员</a><a>律师</a><a>法律顾问</a><a>法务主管</a>
									</div>
									<div class="zp-jobNavigater-pop-list">
										<a>行政专员</a><a>前台</a><a>行政主管</a><a>经理助理</a><a>后勤</a><a>司机</a><a>行政经理</a><a>行政总监</a>
									</div>
								</div>
							</div></li>
						<li class="zp-jobNavigater-item"><a
							href="#" target="_search"
							class="zp-jobNavigater-item-txt2">全部职类</a></li>
					</ol>
				</div>
				<div class="activites zp-main-activit" data-v-a1325f38>
					<div class="swiper-container" data-v-a1325f38>
						<ul style="width:4200px;" data-v-a1325f38>
							<li class="active" style="left:0px;z-index:1;" data-v-a1325f38><a
								href="#" target="_blank"
								data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/01_171908308911.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
							<li style="left:-700px;z-index:0;" data-v-a1325f38><a
								href="https://sxh.zhaopin.com/" target="_blank" data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/biye_151941932461.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
							<li style="left:-1400px;z-index:0;" data-v-a1325f38><a
								href="http://special.zhaopin.com/2018/bj/tsjt020817/"
								target="_blank" data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/05_085930730410.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
							<li style="left:-2100px;z-index:0;" data-v-a1325f38><a
								href="#"
								target="_blank" data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/03_085842745643.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
							<li style="left:-2800px;z-index:0;" data-v-a1325f38><a
								href="#" target="_blank"
								data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/02_085825460752.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
							<li style="left:-3500px;z-index:0;" data-v-a1325f38><a
								href="#"
								target="_blank" data-v-a1325f38><img
									src="//img00.zhaopin.cn/img_button/201806/27/01_085804472202.jpg?x-oss-process=image/resize,m_lfit,h_410,w_700"
									width="700" height="410" data-v-a1325f38></a></li>
						</ul>
						<div class="pagination" style="width:132px;" data-v-a1325f38>
							<i class="pagination_btn pagination_btn_active" data-v-a1325f38></i><i
								class="pagination_btn" data-v-a1325f38></i><i
								class="pagination_btn" data-v-a1325f38></i><i
								class="pagination_btn" data-v-a1325f38></i><i
								class="pagination_btn" data-v-a1325f38></i><i
								class="pagination_btn" data-v-a1325f38></i>
						</div>
					</div>
				</div>
				<div class="zp-main-r">
					<!-- <div class="zp-main-me">
						<div>
							<div class="me-login">
								<p class="me-login__title">
									<span class="me-login__title__item"> 个人登录 </span>
									<a href="javascript:;" class="me-login__title__item me-login__title__item--company">
									企业登录
									</a>
								</p>
								<div>
									<form action="#" method="post">
										<input type="hidden" name="int_count" value="999"/>
										<input type="hidden" name="errUrl" value="https://passport.zhaopin.com/account/login"/>
										<input type="hidden" name="requestFrom" value="portal"/>
										<input type="hidden" name="RememberMe" value="true"/>
										
										<div class="me-login__body__item-wrapper">
											<input placeholder="请输入账号" name="loginname" type="text" class="me-login__body__input"/>
											<p class="me-login__body__err-tip" style="display: none;"></p>
										</div>
										<div class="me-login__body__item-wrapper">
											<input placeholder="请输入密码" name="Password" type="password" class="me-login__body__input"/>
											<p class="me-login__body__err-tip" style="display: none;"></p>
										</div>
										<div class="me-login__body__btns clearfix fl">
											<button type="button" class="a-button me-login__body__btns__submit fl a--bordered a--medium a--primary">
												登录
											</button>
											<span class="f1">
												<input type="checkbox" id="rememberMe"/>
												<label for="rememberMe" onselectstart="return false;">自动登录</label>
											</span>
										</div>
									</form>
									
									<div class="me-login__other-ways clearfix fr">
										<div>
											<a class="me-login__other-ways__ways-btn">其他登录方式</a>
											<a href="//passport.zhaopin.com/oauth/qq/enter" class="iconfont icon-qq" style="display: none;"></a>
											<a href="//passport.zhaopin.com/oauth/weixin/enter" class="iconfont icon-weixin" style="display: none;"></a>
											<a href="//passport.zhaopin.com/oauth/weibo/enter" class="iconfont icon-xinlangweibo" style="display: none;"></a>
										</div>
										<a href="https://passport.zhaopin.com/findpassword/email/step1" class="me-login__other-ways__forget-btn fr">忘记密码?</a>
									</div>
								</div>
								<div class="clearfix" style="clear: both;">
									<a href="javascript:;" class="me-login__register-btn fl">注册找工作</a>
									<a href="javascript:;" class="me-login__register-btn fr">免费发工作</a>
								</div>
							</div>

						</div>
					</div> -->
					
					<div class="zp-pfme zp-main-me">
						<div class="zp-pfme-info clearfix">
							<div class="zp-pfme-info-avater">
								<img alt="我是头像" src="img/touxiang/<s:property value="#session.resume.tximage"/>">
								<a href="lookResumeAction.action" target="_myzl">上传头像</a>
							</div>
							
							<div class="zp-pfme-info-welcome">
								<h6>Hi, <s:property value="#session.loginUser.username"/></h6>
								<p>欢迎回来，上午好!</p>
							</div>
							</div>
							<ul class="zp-pfme-nums">
								<li>
									<a href="#" target="_myzl">
										<span class="num">1</span>
										家
										<br>
										<span class="dt-text">企业看过</span>
									</a>
								</li>
								
								<li>
									<a target="_myzl" href="#">
										
										<span class="num">0</span>
										条
										<br>
										<span class="dt-text">企业反馈</span>
									</a>
								</li>
							</ul>
							
							<div class="zp-pfme-funcs">
							
							<a href="lookResumeAction.action" target="_self" class="zp-pfme-funcs-link">
								<img alt="我的简历" src="//images.zhaopin.cn//www/ihome/img/resume.png">
								<p>我的简历</p>
								<div class="zp-pfme-funcs-link-masker"></div>
							</a>
							
							<a href="_blank" class="zp-pfme-funcs-link">
								<img alt="刷新简历" src="//images.zhaopin.cn//www/ihome/img/refresh_resume.png">
								<p>刷新简历</p>
								<div class="zp-pfme-funcs-link-masker"></div>
							</a>
							
							<a href="#" target="_myzl" class="zp-pfme-funcs-link">
								<img alt="置顶简历" src="//images.zhaopin.cn//www/ihome/img/top_resume.png">
								<p>指定简历</p>
								<div class="zp-pfme-funcs-link-masker"></div>
							</a>
							</div>
							
							
						
					</div>
					
					<div class="zp-main-notice">
						<div class="zp-notice-t clearfix">
							<h6 class="on">职场热点</h6>
						</div>
						<div class="zp-notice-c">
							<a target="_notice" href="#"> <!---->
								错开金三银四找工作，工资翻一倍
							</a><a target="_notice"
								href="#">
								<!----> 19届毕业生，该如何求职？
							</a><a target="_notice"
								href="#"><span></span>
								为什么现代人很浮躁？ </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<ol class="zp-sideBar">
			<li><a class="zp-iconfont zp-sousuo zp-sideBar-maps"><span>搜索</span></a></li>
			<li><a class="zp-iconfont zp__icon-brand zp-sideBar-maps"><span>品牌</span></a></li>
			<li><a class="zp-iconfont zp__icon-city zp-sideBar-maps"><span>城市</span></a></li>
			<li><a class="zp-iconfont zp-fankui zp-sideBar-maps"><span>反馈</span></a></li>
			<li><a class="zp-iconfont zp-fanhuidingbu" href="#root"></a></li>
		</ol>
	</div>
	<script>__INITIAL_STATE__={"currentCity":{"id":530,"name":"北京"},"user":{"Name":"","Resume":{}},"newsletter":[],"jobSchool":[],"discover":{"banner":{"desc":"上班以后的问题，都能解答","iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_entrance_discover.png","jumpUrl":"https://zq.zhaopin.com/","title":"职Q"},"mainArea":{"otherInfoList":[{"contentList":[{"desc":"2回答 286阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1294193?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"#蚌埠学院#我是蚌埠学院17届食品科学与工程毕...","type":1},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1294193?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"https://ask-image.zhaopin.cn/discover_images/yunixiangguan1.jpg","title":"","type":2},{"desc":"2回答 114阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1290019?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"#质量工程师#想继续找质量工程师的工作，但是感...","type":1},{"desc":"12回答 23171阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1257649?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"身边同事很多改了简历，工资待遇翻了一倍！？","type":1},{"desc":"5回答 1726阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1294736?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"培训机构刚出来 学的android  该怎么找工作","type":1},{"desc":"8回答 1211阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1295234?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E4%BD%A0%E7%9B%B8%E5%85%B3&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"在深圳找工作真的好难呀，尤其是应届毕业生","type":1}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_xiangguan.png","title":"与你相关"},{"contentList":[{"desc":"3581回答 6145赞","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/91BFBECD39B74AF69274F58EFA97333C?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"老韩：答案请点收藏 北京乡野筑梦旅游文化有限公司","type":1},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/91BFBECD39B74AF69274F58EFA97333C?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"https://ask-image.zhaopin.cn/discover_images/jinpaidazhu1.jpg","title":"","type":2},{"desc":"257回答 2248赞","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/67085475C72E4F2B98EFF6D6BB76FFCD?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"梨花与虎🏅🏆 山东中尊医道实业有限公司","type":1},{"desc":"531回答 13298赞","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/FD5E83AB5E444BA4829D1BF39492DCB0?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"Steven陈👑 拓之林（北京）文化传媒有限公司","type":1},{"desc":"554回答 2600赞","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/F226BF52F8A54E2898ADF8C546218159?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"杨女士 58赶集集团","type":1},{"desc":"459回答 12009赞","isHot":0,"jumpUrl":"https://zq.zhaopin.com/u/A8E6DA3B62064F8F98926277AF450F37?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E9%87%91%E7%89%8C%E7%AD%94%E4%B8%BB&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"小北：最近缺关注➕ 云硬件与大公式有限责任公司","type":1}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_jinpai.png","title":"金牌答主"},{"contentList":[{"desc":"84回答 10万+阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/824143?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E7%B2%BE%E9%80%89%E9%97%AE%E7%AD%94&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"面试提到薪资这一块，大家都遇到哪些套路，如何应对？","type":1},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/824143?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E7%B2%BE%E9%80%89%E9%97%AE%E7%AD%94&utm_campaign=&utm_term=&utm_content=","picUrl":"https://ask-image.zhaopin.cn/discover_images/jingxuanwenda1.jpg","title":"","type":2},{"desc":"257回答 10万+阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/865772?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E7%B2%BE%E9%80%89%E9%97%AE%E7%AD%94&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"女，三十岁，国企员工，工作清闲无挑战，工资也相...","type":1},{"desc":"209回答 10万+阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/827309?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E7%B2%BE%E9%80%89%E9%97%AE%E7%AD%94&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"31岁，大专，从事销售工作10年，传统行业做过...","type":1},{"desc":"235回答 10万+阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/824066?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E7%B2%BE%E9%80%89%E9%97%AE%E7%AD%94&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"从毕业到现在一直在做销售，从电销坐席到电销团队...","type":1}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_jingxuan.png","title":"精选问答"},{"contentList":[{"desc":"10回答 30342阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1290504?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"#董事长秘书#做了三年董秘，如何做好职业规划","type":1},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1290504?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"https://ask-image.zhaopin.cn/discover_images/qiushengzhi1.jpg","title":"","type":2},{"desc":"17回答 16603阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1293050?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"87年，英语专八，现在想找一份高薪工作，不怕苦...","type":1},{"desc":"401回答 90292阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1274614?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"为什么现在的孩子很浮躁。?","type":1},{"desc":"8回答 6905阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1288927?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"一个地方呆久了，明明很想闯一番事业的，一直在混...","type":1},{"desc":"13回答 6656阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1290499?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%B6%A8%E8%96%AA%E6%B0%B4&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"胆小内向不知该如何请假去面试","type":1}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_shengzhi.png","title":"涨薪水"},{"contentList":[{"desc":"400回答 90147阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1274614?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"为什么现在的孩子很浮躁。?","type":1},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1274614?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"https://ask-image.zhaopin.cn/discover_images/baofanwan1.jpg","title":"","type":2},{"desc":"4回答 582阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1303064?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"在锦州有半年了，最近辞职了，24岁应该做点什么...","type":1},{"desc":"99回答 31070阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1272003?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"公司刚起步，新招聘到的人该如何管理呢？望大神支招","type":1},{"desc":"7回答 296阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1304121?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"学历是门槛吗","type":1},{"desc":"7回答 1851阅读","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1290319?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%BF%9D%E9%A5%AD%E7%A2%97&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"#司机/驾驶员#开车需要这么高的学历干什么？没...","type":1}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_baofanwan.png","title":"保饭碗"}],"title":"职Q","userInfo":{"askGroupUrl":"https://zq.zhaopin.com/?askGroupId=","askIconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_smallask1.png","groupList":[{"avatar":"http://zhaopin-c-ask.oss-cn-beijing.aliyuncs.com/discover_images/group_avatar2.png","createdTime":"","id":1,"isValid":0,"jumpURl":"https://zq.zhaopin.com/?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E6%88%91%E5%90%8C%E6%A0%A1&utm_campaign=&utm_term=&utm_content=&askGroupId=1","keywords":["蚌埠学院","上海-浦东新区"],"name":"有86位【蚌埠学院】的校友也在上海-浦东新区工作，有什么想问他们的吗？","num":40,"updatedTime":""},{"avatar":"http://zhaopin-c-ask.oss-cn-beijing.aliyuncs.com/discover_images/group_avatar2.png","createdTime":"","id":7,"isValid":0,"jumpURl":"https://zq.zhaopin.com/?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E6%88%91%E5%90%8C%E8%A1%8C&utm_campaign=&utm_term=&utm_content=&askGroupId=7","keywords":["Java开发工程师"],"name":"有4082名做【Java开发工程师】的相关求职者也在这里，有什么想问他们的吗？","num":30,"updatedTime":""},{"avatar":"http://zhaopin-c-ask.oss-cn-beijing.aliyuncs.com/discover_images/group_avatar2.png","createdTime":"","id":3,"isValid":0,"jumpURl":"https://zq.zhaopin.com/?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E4%B8%8E%E6%88%91%E5%90%8C%E4%BA%8B&utm_campaign=&utm_term=&utm_content=&askGroupId=3","keywords":["上海天夕实业有限公司"],"name":"有22位在【上海天夕实业有限公司】工作的同事也在这里，有什么想问他们的吗？","num":12,"updatedTime":""}],"iconUrl":"https://ask-image.zhaopin.cn/discover_images/pc_icon_kaishi.png","inviteList":[{"content":"#上海朝海实业有限公司#是不是骗子？","createdTime":"2018-06-25 08:29:56.90856","extra":"{\"isAnonymous\":0,\"questionId\":1260770,\"userNick\":\"章女士\",\"avatar\":\"https://img00.zhaopin.cn/2012/img/my/v5/lookResumes.jpg?x-oss-process=image/resize,h_200\",\"userId\":1002319814,\"jumpUrl\":\"https://zq.zhaopin.com/question/1260770\"}","id":373695862,"isPushed":0,"isRead":0,"isValid":1,"title":"章女士 邀请你回答","type":1,"uid":715287102,"updatedTime":"2018-06-25 08:29:56.90856"}],"title":"从这里开始","unreadJumpUrl":"https://zq.zhaopin.com/?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E6%9C%AA%E8%AF%BB%E6%B6%88%E6%81%AF&utm_campaign=&utm_term=&utm_content=","unreadNum":34}},"msg":"获取发现信息成功","newsList":[{"contentList":[{"desc":"","isHot":0,"jumpUrl":"http://zpm.so/02LUUO","picUrl":"","title":"错开金三银四找工作，工资翻一倍","type":0},{"desc":"","isHot":0,"jumpUrl":"https://zq.zhaopin.com/question/1270040?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E8%81%8C%E5%9C%BA%E7%83%AD%E7%82%B92&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"17届毕业生，该如何求职？","type":0},{"desc":"","isHot":1,"jumpUrl":"https://zq.zhaopin.com/question/1274614?utm_source=%E5%B7%B2%E7%99%BB%E9%99%86%E9%A6%96%E9%A1%B5&utm_medium=%E8%81%8C%E5%9C%BA%E7%83%AD%E7%82%B93&utm_campaign=&utm_term=&utm_content=","picUrl":"","title":"为什么现代人很浮躁？","type":0}],"title":"职场干货"},{"contentList":[],"title":"求职热议"}]},"adv":{"top":[{"href":"//c.highpin.cn/?utm_source=ad81&utm_medium=cpc&utm_campaign=ad81&utm_term=ad81&utm_content=ad81&FromType=241","src":"//img00.zhaopin.cn/img_button/201706/12/dbzp99053_105929699893.jpg"}],"left":[{"href":"//zhujirencai.zhaopin.com/notice.html","src":"//img00.zhaopin.cn/img_button/201806/29/02_134905715778.gif"},{"href":"//xiaoyuan.zhaopin.com/","src":"//img00.zhaopin.cn/img_button/201803/16/00_103646697519.gif"}]},"slidePhoto":[],"backgroundPhoto":{},"zpGatedToken":"0","bannerData":[{"img":"//img00.zhaopin.cn/img_button/201806/27/01_171908308911.jpg","url":"https://zq.zhaopin.com/question/1235901","width":"700","height":"410","note":"","companyId":4392,"companyName":"ְQ","companyShowName":"","blockId":14858,"locationId":452846},{"img":"//img00.zhaopin.cn/img_button/201806/27/biye_151941932461.jpg","url":"https://sxh.zhaopin.com/","width":"700","height":"410","note":"","companyId":4392,"companyName":"��ҵ��ʧҵ","companyShowName":"","blockId":14858,"locationId":452847},{"img":"//img00.zhaopin.cn/img_button/201806/27/05_085930730410.jpg","url":"http://special.zhaopin.com/2018/bj/tsjt020817/","width":"700","height":"410","note":"","companyId":4392,"companyName":"������","companyShowName":"","blockId":14858,"locationId":452851},{"img":"//img00.zhaopin.cn/img_button/201806/27/03_085842745643.jpg","url":"https://zhilianzhiding.supadata.cn/ischool/resource/views/pc/home.html","width":"700","height":"410","note":"","companyId":4392,"companyName":"�����Ż�","companyShowName":"","blockId":14858,"locationId":452850},{"img":"//img00.zhaopin.cn/img_button/201806/27/02_085825460752.jpg","url":"http://sf-design.zhaopin.com/","width":"700","height":"410","note":"","companyId":4392,"companyName":"˳��","companyShowName":"","blockId":14858,"locationId":452849},{"img":"//img00.zhaopin.cn/img_button/201806/27/01_085804472202.jpg","url":"https://company.zhaopin.com/CZ000136560.htm","width":"700","height":"410","note":"","companyId":4392,"companyName":"��������","companyShowName":"","blockId":14858,"locationId":452848}],"searchQuery":{}}</script>
	<script src="//desktop-bucket.zhaopin.cn/manifest.web.2d541f.js"></script>
	<script src="//desktop-bucket.zhaopin.cn/vendors.web.d797ac.js"></script>
	<script src="//desktop-bucket.zhaopin.cn/index.web.22114c.js"></script>



	<div id="wrapper" style="margin-bottom: 100px;">

		<!--2015.7.7 职位导航 更改部分begin -->
		<div id="cityNavBar" class="blockT">
			<div class="ti">职位导航</div>
			<ul>
				<li>A</li>
				<li>B</li>
				<li>C</li>
				<li>D</li>
				<li>F</li>
				<li>G</li>
				<li>H</li>
				<li>J</li>
				<li>K</li>
				<li>L</li>
				<li>M</li>
				<li>N</li>
				<li>P</li>
				<li>Q</li>
				<li>R</li>
				<li>S</li>
				<li>T</li>
				<li>V</li>
				<li>W</li>
				<li>X</li>
				<li>Y</li>
				<li>Z</li>
			</ul>
			<script type="text/javascript"
				src="//img00.zhaopin.cn/2014/common/js/jquery-1.9.1.min.js"></script>
			<script type="text/javascript">
    //2015.7.6 职位导航js部分
    $(function(){
      for (var i = $("#cityNavBar ul li").length - 1; i >= 0; i--) {
        //给每个li添加index索引值
        $("#cityNavBar ul li").eq(i)[0].index=i;
        //给每个li添加点击事件
        $("#cityNavBar ul li").eq(i).click(function(){
          //先隐藏所有的content   div
          $(".cityNavBar_content > div").hide();
          //计算content框的出现位置

           if(window.IS_HOME_PAGE){
              var e = ($(this).offset().top - $("#wrapper").offset().top) / 1.21212121;
              var g = ($(this).offset().left - $("#wrapper").offset().left) / 1.21212121;
              var g1 = ($("#cityNavBar li:first").offset().left - $("#wrapper").offset().left) / 1.21212121;
            }else{
              var e = $(this).offset().top;
              var g = $(this).offset().left;
              var g1 = $("#cityNavBar li:first").offset().left;
            }

          var g2 = $("#cityNavBar ul").width() - 21;

          //var e = $(this).offset().top;
          //var g = $(this).offset().left;
          //var g1 = $("#cityNavBar li:first").offset().left;
          //var g2 = $("#cityNavBar ul").width()-21;
          //显示content div
          var nowClick=$(".cityNavBar_content > div").eq($(this)[0].index);
          nowClick.children(".cityNavPopIdx").css("left",g).css("top",e);
          nowClick.children(".cityNavPopBd").css("left",g1).css("top",e+20).css("width",g2);
          nowClick.show();
        });
      };
      //给关闭按钮添加点击事件
      $(".cityNavClose").click(function(){
          $(".cityNavBar_content > div").hide();
      });
    });
      
    </script>
		</div>
		<!--2015.7.7 职位导航 更改部分end -->
		<div class="infoBoxGroup">

			<dl class="infoBox">
				<dt class="blockT">
					<div class="ti ti1 fl" title="职场聚焦"
						onmousedown="return AdsClick(121111550,'new_zpindex_zcjj')">
						<div class="tiC">
							<span>职场聚焦</span>
						</div>
					</div>
				</dt>
				<dd>
					<div>

						<a href="http://zpm.so/00mUEj"
							onmousedown=" return AdsClick(121111550, 'new_zpindex_zcjj1') "
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/6fc430db-e382-475e-a158-b82562ebee36.jpg"
							width="94" height="74" class="infoBoxPic" />
						</a> <br /> <a href="http://zpm.so/00mUEj"
							onmousedown=" return AdsClick(121111550, 'new_zpindex_zcjj1') "
							target="_blank">这不是妄想奇妙夜</a>

					</div>
					<ul>
						<li><a href="http://zpm.so/00mClH"
							onmousedown="return AdsClick(121111550,'new_zpindex_zcjj2')"
							target="_blank">杠精的5个套路</a></li>
						<li><a href="http://zpm.so/00m0wl"
							onmousedown="return AdsClick(121111550,'new_zpindex_zcjj3')"
							target="_blank">转战新一线，我买了两套房</a></li>
						<li><a href="http://zpm.so/00m0vp"
							onmousedown="return AdsClick(121111550,'new_zpindex_zcjj4')"
							target="_blank">想回前东家，先想好这4件事</a></li>
						<li><a href="http://zpm.so/00lxOd"
							onmousedown="return AdsClick(121111550,'new_zpindex_zcjj5')"
							target="_blank">辞职时挽留你的领导，在想啥？</a></li>
						<li><a href="http://zpm.so/00lxPs"
							onmousedown="return AdsClick(121111550,'new_zpindex_zcjj6')"
							target="_blank">致不谈钱的人：活该你吃亏</a></li>
					</ul>

				</dd>
			</dl>


			<dl class="infoBox">
				<dt class="blockT">
					<div class="ti ti2 fl" title="应届生求职"
						onmousedown="return AdsClick(121111550,'new_zpindex_yjjqz')">
						<div class="tiC">
							<span>应届生求职</span>
						</div>
					</div>
				</dt>
				<dd>
					<div>

						<a href="http://suo.im/1MbtSM"
							onmousedown=" return AdsClick(121111550, 'new_zpindex_yjjqz1') "
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/49a62c3b-55c1-4b80-ad47-8d276de22abe.png"
							width="94" height="74" class="infoBoxPic" />
						</a> <br /> <a href="http://suo.im/1MbtSM"
							onmousedown=" return AdsClick(121111550, 'new_zpindex_yjjqz1') "
							target="_blank">新媒体招聘节</a>

					</div>
					<ul>
						<li><a href="http://zpm.so/00mGXz"
							onmousedown="return adsclick(121111550,'new_zpindex_yjjqz2')"
							target=" _blank">如何从面试邀请选公司？</a></li>
						<li><a href="http://zpm.so/00mCq7"
							onmousedown="return adsclick(121111550,'new_zpindex_yjjqz3')"
							target=" _blank">裸辞后，你爽了吗？</a></li>
						<li><a href="http://zpm.so/00lgth"
							onmousedown="return adsclick(121111550,'new_zpindex_yjjqz4')"
							target=" _blank">如何从装修判断一家公司能不能...</a></li>
						<li><a href="http://zpm.so/00lTkq"
							onmousedown="return adsclick(121111550,'new_zpindex_yjjqz5')"
							target=" _blank">5个学生思维，你躺枪几个？</a></li>
						<li><a href="http://zpm.so/00mEhp"
							onmousedown="return adsclick(121111550,'new_zpindex_yjjqz6')"
							target=" _blank">90%的人面试不做这3项功课</a></li>
					</ul>

				</dd>
			</dl>


			<dl class="infoBox adsFix">
				<dt class="blockT">
					<div class="ti ti3 fl" title="社区精华"
						onmousedown="return AdsClick(121111550,'new_zpindex_sqjh')">
						<div class="tiC">
							<span>社区精华</span>
						</div>
					</div>
				</dt>
				<dd>
					<div>

						<a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100369.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_sqjh1')"
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/767a6192-19b3-4767-ac52-dede075f7a97.jpg"
							width="94" height="74" class="infoBoxPic" />
						</a> <br /> <a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100369.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_sqjh1')"
							target="_blank">裸辞后，你爽了吗...</a>
					</div>
					<ul>
						<li><a href="http://zpm.so/00lPpc"
							onmousedown="return adsclick(121111550, 'new_zpindex_sqjh2' ) "
							target=" _blank">“我最后悔的事，就是来读研”</a></li>
						<li><a href="http://suo.im/2ACzKO"
							onmousedown="return adsclick(121111550, 'new_zpindex_sqjh3' ) "
							target=" _blank">工资不如烤冷面大妈 ，为什么...</a></li>
						<li><a href="http://suo.im/4mHZtN"
							onmousedown="return adsclick(121111550, 'new_zpindex_sqjh4' ) "
							target=" _blank">3个实习生心态阻碍你月薪过万...</a></li>
						<li><a href="http://uee.me/GrgB"
							onmousedown="return adsclick(121111550, 'new_zpindex_sqjh5' ) "
							target=" _blank">今天我们谈职场大女主，到底在...</a></li>
						<li><a href="http://dwz.cn/7wDY6q"
							onmousedown="return adsclick(121111550, 'new_zpindex_sqjh6' ) "
							target=" _blank">“那么拼命干什么？最后还不是...</a></li>
					</ul>

				</dd>
			</dl>

		</div>
		<!-- 热门职位 -->
		<script type="text/javascript"
			src="//img01.zhaopin.cn/2014/seo/js/addHrefParams.js"></script>
		<div id="rmzw" class="clearfix">
			<div class="blockT blockTL">
				<div class="ti">热门职位</div>
			</div>
			<div class="colsBg clearfix">
				<ul>


					<li><a
						href='http://www.51code.com/htm/java4a/zhaopinrmzwwz.htm'
						onmousedown="return AdsClick(1055,7697)" rel='nofollow'
						target='_blank'>博为峰51Code</a> <span><a
							href='http://www.51code.com/htm/java4a/zhaopinrmzwwz.htm'
							onmousedown="return AdsClick(1055,7697)" rel='nofollow'
							target='_blank'>急招应往届毕业生</a></span></li>
					<li><a
						href='http://www.51testing.net/htm/zpwling/zhaopinrmzwwz.htm'
						onmousedown="return AdsClick(1055,7695)" rel='nofollow'
						target='_blank'>51Testing</a> <span><a
							href='http://www.51testing.net/htm/zpwling/zhaopinrmzwwz.htm'
							onmousedown="return AdsClick(1055,7695)" rel='nofollow'
							target='_blank'>诚招 实训生</a></span></li>
					<!--ZHAOPININDEX_HOTJOBS Success end-->


				</ul>
			</div>
		</div>

		<div class="infoBoxGroup">

			<dl class="infoBox">
				<dt class="blockT">
					<div class="ti ti1 tl" title="简历制作|模板">
						<div class="tiC">
							<span>简历制作|模板</span>
						</div>
					</div>
				</dt>
				<dd>
					<div>

						<a href="http://zpm.so/00mF54"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz1')"
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/39975be5-6ef5-43e0-a94c-1767d525b440.jpg"
							width="94" height="74" class="infoBoxPic" />
						</a><br /> <a href="http://zpm.so/00mF54"
							onmousedown="return AdsClick(121111550,'new_zpindex_jlzz1')"
							target="_blank"> 1分钟学会简历排... </a>
					</div>
					<ul>
						<li><a href="http://zpm.so/00mF5M"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz2') "
							target="_blank">如何拍好简历照？</a></li>
						<li><a href="http://zpm.so/00mFO5"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz3') "
							target="_blank">如何画好简历妆？</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100052.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz4') "
							target="_blank">为什么简历不要超过一张纸？</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100051.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz5') "
							target="_blank">简历指导！解析为什么个人简历...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100050.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_jlzz6') "
							target="_blank">选好简历模板的四大诀窍</a></li>
					</ul>

				</dd>
			</dl>


			<dl class="infoBox">
				<dt class="blockT">
					<div class="ti ti1 tl" title="面试技巧">
						<div class="tiC">
							<span>面试技巧</span>
						</div>
					</div>
				</dt>
				<dd>

					<div>

						<a href="http://dwz.cn/6NW0e8"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq1')"
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/bf8c0f51-fa14-47b0-b078-0f184dbb7922.jpg"
							width="94" height="74" class="infoBoxPic" />
						</a><br /> <a href="http://dwz.cn/6NW0e8"
							onmousedown="return AdsClick(121111550,'new_zpindex_msjq1')"
							target="_blank">7分的人如何找到...</a>
					</div>
					<ul>
						<li><a href="http://dwz.cn/6NTWue"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq2') "
							target="_blank">是不是校招没过，就找不到好公...</a></li>
						<li><a href=" http://dwz.cn/6NTA4e"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq3') "
							target="_blank">面试官的刁钻问题，有哪些回答...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100046.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq4') "
							target="_blank">准备个性化面试为上策</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100045.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq5') "
							target="_blank">面试中最可怕的四个问题是啥，...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100044.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_msjq6') "
							target="_blank">铲除考场中的紧张与不自信</a></li>
					</ul>


				</dd>
			</dl>

			<dl class="infoBox adsFix">
				<dt class="blockT">
					<div class="ti ti1 tl" title="江财调研">
						<div class="tiC">
							<span>江财调研</span>
						</div>
					</div>
				</dt>
				<dd>
					<div>

						<a href="http://dwz.cn/7iOEqG"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy1')"
							target="_blank"> <img
							lazy_src="//article.zhaopin.com/marketing/upload/e3f7a689-642d-4093-9da4-128718c5b315.jpg"
							width="94" height="74" class="infoBoxPic" />
						</a> <br /> <a href="http://dwz.cn/7iOEqG"
							onmousedown="return AdsClick(121111550,'new_zpindex_zldy1')"
							target="_blank">2018全国白领...</a>
					</div>
					<ul>
						<li><a href=" http://dwz.cn/6NTNQI"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy2') "
							target="_blank">2018秋季全国平均薪酬曝光</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100150.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy3') "
							target="_blank">2018年秋季中国雇主需求与...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100144.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy4') "
							target="_blank">新一线城市白领归属感更高，没...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100143.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy5') "
							target="_blank">2018年秋季白领事业信心指...</a></li>
						<li><a
							href="http://article.zhaopin.com/marketing/pub/view/detail-100139.html"
							onmousedown="return AdsClick(121111550, 'new_zpindex_zldy6') "
							target="_blank">2018年中国职场情感现状...</a></li>
					</ul>

				</dd>
			</dl>

		</div>
	</div>
	<div id="footer">
		<div class="footerFuncCity clearfix">

			<ul>
				<li class="char">A</li>
				<li><strong><a href="//www.zhaopin.com/anshan/">鞍山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/anshun/">安顺</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/anyang/">安阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/anqing/">安庆</a></strong>|</li>

				<li><strong><a href="//www.zhaopin.com/ankang/">安康</a></strong></li>
				<li class="char">B</li>
				<li><strong><a href="//www.zhaopin.com/beijing/">北京</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baoding/">保定</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baotou/">包头</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/binzhou/">滨州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baoji/">宝鸡</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/bozhou/">亳州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/beihai/">北海</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/bengbu/">蚌埠</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baiyin/">白银</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baicheng/">白城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/baishan/">白山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/bazhong/">巴中</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/bijie/">毕节</a></strong></li>

				<li class="char">C</li>
				<li><strong><a href="//www.zhaopin.com/changchun/">长春</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/changzhutan/">长株潭</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chengdu/">成都</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chongqing/">重庆</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/changzhou/">常州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/cangzhou/">沧州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/changde/">常德</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/changshu/ ">常熟</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chuzhou/">滁州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chengde/">承德</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chenzhou/">郴州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chaozhou/">潮州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/changzhi/">长治</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/chizhou/">池州</a></strong>|</li>
				<li><a href="//www.zhaopin.com/chifeng/">赤峰</a></strong></li>

				<li class="char">D</li>
				<li><strong><a href="//www.zhaopin.com/dalian/">大连</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dongguan/">东莞</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/daqing/">大庆</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dandong/">丹东</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dongying/">东营</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dezhou/">德州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/deyang/">德阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/datong/">大同</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dazhou/">达州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/dali/">大理</a></strong></li>
				<li class="char">E</li>
				<li><strong><a href="//www.zhaopin.com/eerduosi/">鄂尔多斯</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/ezhou/">鄂州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/enshi/">恩施</a></strong></li>
				<li class="char">F</li>
				<li><strong><a href="//www.zhaopin.com/fuzhou/">福州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/foshan/">佛山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/fushun/">抚顺</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/fu3zhou/">抚州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/fuyang/">阜阳</a></strong></li>
				<li class="char">G</li>
				<li><strong><a href="//www.zhaopin.com/guangzhou/">广州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/guiyang/">贵阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/ganzhou/">赣州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/guilin/">桂林</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/guangyuan/">广元</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/guangan/">广安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/gansu/">甘肃</a></strong></li>

				<li class="char">H</li>
				<li><strong><a href="//www.zhaopin.com/haerbin/">哈尔滨</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hangzhou/">杭州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hefei/">合肥</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hengyang/">衡阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hengshui/">衡水</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/handan/">邯郸</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/haikou/">海口</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huhehaote/">呼和浩特</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huzhou/">湖州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huaian/">淮安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/heze/">菏泽</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huaibei/">淮北</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hanzhong/">汉中</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hulunbeier/">呼伦贝尔</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huludao/">葫芦岛</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huizhou/">惠州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hebi/">鹤壁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huainan/">淮南</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/hunchun/">珲春</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huanggang/">黄冈</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huangshi/">黄石</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huangshan/">黄山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/huaihua/">怀化</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/heihe/">黑河</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/heyuan/">河源</a></strong></li>

				<li class="char">J</li>
				<li><strong><a href="//www.zhaopin.com/jinan/">济南</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jilin/">吉林</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiaxing/">嘉兴</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiangmen/">江门</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiangyin/">江阴</a></strong>|</li>
				<li><strong><a href=" //www.zhaopin.com/jiujiang/">九江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jining/">济宁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jinhua/">金华</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jingzhou/">荆州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiaozuo/">焦作</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jieyang/">揭阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiamusi/">佳木斯</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jinzhou/">锦州</a></strong></li>
				<li><strong><a href="//www.zhaopin.com/jinzhong/">晋中</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jian/">吉安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jingdezhen/">景德镇</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jincheng/">晋城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jiyuan/">济源</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/jishoushi/">吉首市</a></strong></li>

				<li class="char">K</li>
				<li><strong><a href="//www.zhaopin.com/kaifeng/">开封</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/kunming/">昆明</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/kunshan/">昆山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/kaiping/">开平</a></strong></li>

				<li class="char">L</li>
				<li><strong><a href="//www.zhaopin.com/linyi/">临沂</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/lanzhou/">兰州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/luoyang/">洛阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/lianyungang/">连云港</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liaocheng/">聊城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liuzhou/">柳州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/langfang/">廊坊</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liupanshui/">六盘水</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/luohe/">漯河</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/laiwu/">莱芜</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/leshan/">乐山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liaoyang/">辽阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/longyan/">龙岩</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/lishui/">丽水</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liuan/">六安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/linfen/">临汾</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/lvliang/">吕梁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/liaoyuan/">辽源</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/luzhou/">泸州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/loudi/">娄底</a></strong></li>

				<li class="char">M</li>
				<li><strong><a href="//www.zhaopin.com/maanshan/">马鞍山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/mianyang/">绵阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/meizhou/">梅州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/maoming/">茂名</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/mudanjiang/">牡丹江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/mengzishi/">蒙自市</a></strong></li>

				<li class="char">N</li>
				<li><strong><a href="//www.zhaopin.com/nanchong/">南充</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nanjing/">南京</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nanyang/">南阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/ningbo/">宁波</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nanchang/">南昌</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nantong/">南通</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nanning/">南宁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/nanping/">南平</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/ningde/">宁德</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/neijiang/">内江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/ningxia/">宁夏</a></strong></li>
				<li class="char">P</li>
				<li><strong><a href="//www.zhaopin.com/pingdingshan/">平顶山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/putian/">莆田</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/puyang/">濮阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/puning/">普宁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/panjin/">盘锦</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/panzhihua/">攀枝花</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/pingxiang/">萍乡</a></strong></li>

				<li class="char">Q</li>
				<li><strong><a href="//www.zhaopin.com/qingdao/">青岛</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qinhuangdao/">秦皇岛</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/quanzhou/">泉州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qingyuan/">清远</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qinghai/">青海</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qujing/">曲靖</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qiqihaer/">齐齐哈尔</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/quzhou/">衢州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/qianxinan/">黔西南</a></strong></li>



				<li class="char">R</li>
				<li><strong><a href="//www.zhaopin.com/rizhao/">日照</a></strong></li>
				<li class="char">S</li>
				<li><strong><a href="//www.zhaopin.com/shanghai/">上海</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shangqiu/">商丘</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shenzhen/">深圳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shenyang/">沈阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shijiazhuang/">石家庄</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/suqian/">宿迁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/suzhou/">苏州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/su4zhou/">宿州</a></strong>|</li>
				<li><strong><a href=" //www.zhaopin.com/suizhou/">随州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shaoxing/">绍兴</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/sanya/">三亚</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shantou/">汕头</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/siping/">四平</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shangrao/">上饶</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shaoyang/">邵阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shiyan/">十堰</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/sanmenxia/">三门峡</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shangluo/">商洛</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/suining/">遂宁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/sanming/">三明</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shaoguan/">韶关</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/songyuan/">松原</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/suihua/">绥化</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/shanwei/">汕尾</a></strong></li>

				<li class="char">T</li>
				<li><strong><a href="//www.zhaopin.com/tianjin/">天津</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/taiyuan/">太原</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tangshan/">唐山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/taizhou/">台州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tieling/">铁岭</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/taian/">泰安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tzhou/">泰州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tongchuan/">铜川</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tongliao/">通辽</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tongling/">铜陵</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tonghua/">通化</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tianshui/">天水</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/tongren/">铜仁</a></strong></li>
				<li class="char">W</li>
				<li><strong><a href="//www.zhaopin.com/wuhan/">武汉</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/wuxi/">无锡</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/wenzhou/">温州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/weihai/">威海</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/wulumuqi/">乌鲁木齐</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/wuhu/">芜湖</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/weifang/">潍坊</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/weinan/">渭南</a></strong></li>

				<li class="char">X</li>
				<li><strong><a href="//www.zhaopin.com/xian/">西安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xiamen/">厦门</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xinxiang/">新乡</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xuchang/">许昌</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xuzhou/">徐州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xiangyang/">襄阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xizang/">西藏</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xianyang/">咸阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xinyang/">信阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xingtai/">邢台</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xinjiang/">新疆</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xinyu/">新余</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xiaogan/">孝感</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xuancheng/">宣城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xianning/">咸宁</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/xining/">西宁</a></strong></li>

				<li class="char">Y</li>
				<li><strong><a href="//www.zhaopin.com/yangzhou/"><strong>扬州</strong></a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yantai/">烟台</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yiwu/">义乌</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yingkou/">营口</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yancheng/">盐城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yulin/">榆林</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yuncheng/">运城</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yichang/">宜昌</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yixing/">宜兴</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yu4lin/">玉林</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yueyang/">岳阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yibin/">宜宾</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yanan/">延安</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yanbian/">延边</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yinchuan/">银川</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yangquan/">阳泉</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yongzhou/">永州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yangjiang/">阳江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yiyang/">益阳</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yichun/">宜春</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yuxi/">玉溪</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/yingtan/">鹰潭</a>|</strong></li>
				<li><strong><a href="//www.zhaopin.com/yaan/">雅安</a>|</strong></li>
				<li><strong><a href="//www.zhaopin.com/yunfu/">云浮</a></strong></li>

				<li class="char">Z</li>
				<li><strong><a href=" //www.zhaopin.com/zhangjiagang/">张家港</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhangjiakou/">张家口</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhengzhou/">郑州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhongshan/">中山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhuhai/">珠海</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zibo/">淄博</a></strong>|</li>
				<!-- <li><strong><a href="//www.zhaopin.com/zhusanjiao/">珠三角</a></strong>|</li> -->
				<li><strong><a href="//www.zhaopin.com/zhangzhou/">漳州</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhenjiang/">镇江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhanjiang/">湛江</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhaoqing/">肇庆</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zaozhuang/">枣庄</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zunyi/">遵义</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhumadian/">驻马店</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhoukou/">周口</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zigong/">自贡</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhoushan/">舟山</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhangye/">张掖</a></strong>|</li>
				<li><strong><a href="//www.zhaopin.com/zhangjiajie/">张家界</a></strong></li>
			</ul>
		</div>
	</div>
	<input type="hidden" id="smpfrom" value="14" />
	<script type="text/javascript"
		src="//img01.zhaopin.cn/2012/js/index/jq.min-L.js"></script>
	<script>
;(function(){
  zlzpUtils.pictureSlider("#slider1", 4e3)
    zlzpUtils.pictureSlider("#slider2", 4e3)
  $("img").lazyload({
  threshold: 200
  })
})();
</script>
	<script type="text/javascript"
		src="//www.zhaopin.com/static/analytics.js"></script>
	<script type="text/javascript"
		src="//img05.zhaopin.cn/2014/common/js/za/ga.js"></script>
	<script type="text/javascript"
		src="//img09.zhaopin.cn/2014/common/js/clickheat-original.js"></script>
	<noscript>
		<p>noscript</p>
	</noscript>


	<div class="zp-footer">
		<div class="zp-links-footer">
			<div class="zp-container">
				<dl class="zp-main-footer">
					<dt class="zp-font-weight">关于</dt>
					<dd>
						<a onmousedown="return AdsClick(121115223,'zhilianjieshao')"
							target="_blank"
							href="//special.zhaopin.com/sh/2009/aboutus/about.html"
							rel="nofollow">校招介绍</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'zhiweisuoyin')"
							target="_blank" href="//jobs.zhaopin.com/">人才招聘</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'lianxifangshi')"
							target="_blank"
							href="//special.zhaopin.com/sh/2009/aboutus/contact.html"
							rel="nofollow">联系方式</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'wangzhanditu')"
							target="_blank" href="//www.zhaopin.com/sitemap.html">学校地图</a>
					</dd>
				</dl>
				<dl class="zp-main-footer">
					<dt class="zp-font-weight">帮助</dt>
					<dd>
						<a onmousedown="return AdsClick(121115223,'jiaruzhilian')"
							target="_blank"
							href="//special.zhaopin.com/sh/2009/aboutus/join.html"
							rel="nofollow">加入我们</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'changjianwenti')"
							target="_blank"
							href="//jobseeker.zhaopin.com/zhaopin/faq/question.html"
							rel="nofollow">常见问题</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'falvshengming')"
							target="_blank"
							href="//special.zhaopin.com/sh/2009/aboutus/law.html"
							rel="nofollow">法律声明</a>
					</dd>
					<dd>
						<a onmousedown="return AdsClick(121115223,'baomichengnuo')"
							target="_blank"
							href="//special.zhaopin.com/sh/2009/aboutus/secrecy.html"
							rel="nofollow">隐私政策</a>
					</dd>
				</dl>
				<dl class="zp-main-footer" style="display:none;">
					<dt class="zp-main-footer-hover">
						<span class="zp-font-weight">合作</span> <i
							class="icon zp-iconfont zp-jiantoucebianlan xiangxiajiatou"></i>
						<div class="zp-cooperation-container zp-main-footer-show">
							<i class="zp-arrow"></i>
							<div class="zp-toggle-box">
								<div class="zp-toggle-left">
									<a target="_blank" href="http://www.babajob.com">BabaJob-India</a><a
										target="_blank" href="http://www.bdjobs.com">BDJobs-Bangladesh</a><a
										target="_blank" href="http://www.brightermonday.com">BrighterMonday-East
										Africa</a><a target="_blank" href="http://www.catho.com.br">Catho-Brazil</a><a
										target="_blank" href="http://www.jobberman.com">Jobberman-West
										Africa</a><a target="_blank" href="http://www.jobsdb.com">JobsDB-S.E.
										Asia</a>
								</div>
								<div class="zp-toggle-right">
									<a target="_blank" href="http://www.jobstreet.com">JobStreet-S.E.
										Asia</a><a target="_blank" href="https://www.jora.com">Jora-Worldwide</a><a
										target="_blank" href="http://www.manager.com.br">Manager-Brazil</a><a
										target="_blank" href="https://www.occ.com.mx">OCC
										Mundial-Mexico</a><a target="_blank" href="http://www.seek.com.au">SEEK-Australia</a><a
										target="_blank" href="http://www.cjol.com">CJOL</a>
								</div>
							</div>
						</div>
					</dt>
					<dd>
						<a target="_blank" href="http://www.babajob.com">BabaJob-India</a>
					</dd>
					<dd>
						<a target="_blank" href="http://www.bdjobs.com">BDJobs-Bangladesh</a>
					</dd>
					<dd>
						<a target="_blank" href="http://www.brightermonday.com">BrighterMonday-East
							Africa</a>
					</dd>
					<dd>
						<a target="_blank" href="http://www.catho.com.br">Catho-Brazil</a>
					</dd>
					<dd>
						<a target="_blank" href="http://www.jobberman.com">Jobberman-West
							Africa</a>
					</dd>
				</dl>
				<dl class="zp-main-footer zp-wechat">
					<dt>
						<span>江财在手</span> <span>工作我有</span>
					</dt>
					<dd>
						<div>
							<img src="img/wechat.jpg">
							<p>江财微信</p>
						</div>
						<div>
							<img src="//desktop-bucket.zhaopin.cn/pre/assets/zp.a10900.png">
							<p>官方微信</p>
						</div>
					</dd>
				</dl>
			</div>
		</div>
		<div class="zp-ICP-footer clearfix">
			<div class="zp-container">
				<p class="zp-footer-text">
					未经 www.jxufe.edu.cn 同意，不得转载本网站之所有招聘信息及作品 江财招聘网版权所有 <br>京ICP备xxxxxxx号
					京ICP证xxxxxx号 电信业务审批[2018]字第xxx号函 京公网安备 xxxxxxxxxxxxxxxxx号
				</p>
				<div class="fr">
					<a href="http://www.cyberpolice.cn/wfjb/" class="zp-footerInfor"><img
						src="//images.zhaopin.cn//2012/img/badge2.png"> <span>网络110报警</span>
						<br> <span> 服务 </span></a><a
						href="//img00.zhaopin.cn/new2011/bottom/license.html"
						class="zp-footerInfor"><img
						src="//images.zhaopin.cn//2012/img/badge1.png"> <span>电子营业</span>
						<br> <span> 执照 </span></a><a
						href="https://ss.knet.cn/verifyseal.dll?sn=e14032711010547573rieg000000&amp;ct=df&amp;a=1&amp;pa=500267"
						class="zp-footerInfor"><img
						src="//images.zhaopin.cn//2012/img/knetSealLogo.png"> <span></span>
						<br> <span> </span></a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#tijiao").click(function(){
			$("#chaxun").submit();
		});
	</script>
</body>
</html>
