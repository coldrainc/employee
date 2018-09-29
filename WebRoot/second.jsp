<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>简历信息</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link href="second_css/base.css" rel="stylesheet" type="text/css">
		<link href="second_css/font.css" rel="stylesheet" type="text/css">
		<link href="second_css/inner.css" rel="stylesheet" type="text/css">
		<script src="second_js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<link rel="stylesheet" href="second_css/slick.css">
		<script src="second_js/slick.min.js" type="text/javascript"></script>
		<script src="second_js/regexcut.js" type="text/javascript"></script>
		<link rel="stylesheet" href="second_css/owl.carousel.css">
		<script src="second_js/owl.carousel.min.js" type="text/javascript"></script>
		<script src="second_js/comm.js" type="text/javascript"></script>
		<!--[if lt IE 9]>
<script src="/publish/thunews/js/html5.js" type="text/javascript"></script>
<script src="/publish/thunews/js/json2.js" type="text/javascript"></script>
<![endif]-->
		<script src="second_js/regex-cn.js" type="text/javascript"></script>
		<!--[if lt IE 8]>
 <link rel="stylesheet" href="/publish/thunews/font/ie7/ie7.css">
<!--<![endif]-->
		<script language="javascript" type="text/javascript">
			window.onerror = function() {
				return true;
			};

			function cutSummary(summaryStr, lengTh) {
				if(summaryStr.length > lengTh) {
					summaryStr = summaryStr.substring(0, lengTh) + "...";
				}
				document.write(summaryStr);
			}
			$(document).ready(function() {
				$("a.nivo-nextNav").click();
			});
		</script>
		<script type="text/javascript">
			// 对Date的扩展，将 Date 转化为指定格式的String 
			// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
			// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
			// 例子： 
			// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
			// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
			Date.prototype.Format = function(fmt) {
				//author: meizz 
				var o = {
					"M+": this.getMonth() + 1, //月份 
					"d+": this.getDate(), //日 
					"h+": this.getHours(), //小时 
					"m+": this.getMinutes(), //分 
					"s+": this.getSeconds(), //秒 
					"q+": Math.floor((this.getMonth() + 3) / 3), //季度 
					"S": this.getMilliseconds() //毫秒 
				};
				if(/(y+)/.test(fmt))
					fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
				for(var k in o)
					if(new RegExp("(" + k + ")").test(fmt))
						fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
				return fmt;
			}
			//2015.08 年.月
			function getYM(dtStr, id) {
				var dtArr = dtStr.split("-");
				var dt = new Date(dtArr[0], dtArr[1] - 1, dtArr[2]);
				//var time1 = dt.Format("yyyy-MM-dd hh:mm:ss");  
				var time2 = dt.Format("yyyy.MM.dd");
				var yyyy = time2.substr(0, 7);
				$("#" + id).text(yyyy);
				return yyyy;
			}
			//10 日期
			function getDay(dtStr, id) {
				var dtArr = dtStr.split("-");
				var dt = new Date(dtArr[0], dtArr[1] - 1, dtArr[2]);
				//var time1 = dt.Format("yyyy-MM-dd hh:mm:ss");  
				var time2 = dt.Format("yyyy.MM.dd");
				var md = time2.substr(8);
				$("#" + id).text(md);
				return md;
			}
			//2015.08.10 年.月.日
			function getYMD(dtStr, id) {
				var dtArr = dtStr.split("-");
				var dt = new Date(dtArr[0], dtArr[1] - 1, dtArr[2]);
				//var time1 = dt.Format("yyyy-MM-dd hh:mm:ss");  
				var time2 = dt.Format("yyyy.MM.dd");
				//var md=time2.substr(8);
				$("#" + id).text(time2);
				return time2;
			}

			function getMdd(dtStr) {
				var dtArr = dtStr.split("-");
				var dt = new Date(dtArr[0], dtArr[1] - 1, dtArr[2]);
				//var time1 = dt.Format("yyyy-MM-dd hh:mm:ss");  
				var time2 = dt.Format("MM.dd.yyyy");
				var mdd = time2.substr(0, 5);
				$(".mdd").text(mdd);
				return mdd;
			}
		</script>
		<script type="text/javascript">
			function getResData(fwl) {
				jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=" + fwl + "&" + Math.random(), function(data) {
					$(".itemlist_total_" + fwl).empty().text(data);
				});
			};
			//时间
			getResData('20180706092156675719218');
			getResData('20180704153044806282729');
			getResData('20180704114720826726471');
			getResData('20180702162822176492477');
			getResData('20180703093604668475797');
			getResData('20180702202030987183498');
			getResData('20180702160155772188956');
			getResData('20180702112504358178836');
			getResData('20180702102816830315070');
			getResData('20180701054059450577087');
			getResData('20180630081128687287653');
			getResData('20180629085109763717159');
			getResData('20180628175855052139018');
			getResData('20180628132633811166292');
			getResData('20180627151055587932653');
			getResData('20180627084840892112506');
			getResData('20180627104422869242471');
			getResData('20180627103821225458140');
			getResData('20180625114014836407477');
			getResData('20180626101216193843479');
			getResData('20180626084219221395410');
			getResData('20180625142146897669207');
			getResData('20180625084040550469253');
			getResData('20180625112105082806120');
			getResData('20180624161754397730505');
			getResData('20180622221857419877922');
			getResData('20180624143512690134163');
			getResData('20180619113443864476425');
			getResData('20180619084104591525966');
			getResData('20180619081218925310553');
			getResData('20180617094044318214080');
			getResData('20180615162909442758357');
			getResData('20180614151058661165141');
			getResData('20180614144219777909885');
			getResData('20180613090911371375425');
			getResData('20180614100946826656600');
			getResData('20180612092209520599530');
			getResData('20180613113234058275726');
			getResData('20180612102553382392177');
			getResData('20180611094432748610518');
			getResData('20180612110516580167806');
			getResData('20180611132341416501770');
			getResData('20180611132601180161825');
			getResData('20180611090240762612885');
			getResData('20180608155308367663779');
			getResData('20180608110944189704680');
			getResData('20180608132531952362684');
			getResData('20180607160454238954523');
			getResData('20180606080910706351187');
			getResData('20180606082724817118905');
		</script>
	</head>

	<body>
		<header class="clearfix">
			<section class="mainWrap">
				<div class="topwraper relative clearfix">
					<div class="ulink">

						<!--<ul class="clearfix">
                     <li class="socialnet"><a href="http://weibo.com/tsinghua" class="circle"  title="微博" target="_blamk"><i class="thunews-weibo"></i></a>
                    <li class="socialnet"><a href="javascript:;" class="circle"  title="微信"><i class="thunews-weixin"></i></a>
                     <div class="socialwraper"><i><em></em></i><img src="/publish/thunews/images/weixin.jpg"></div>
                    </li>
                  </li>
                      <li class="socialnet"><a href="/publish/thunews/10237/index.html" class="circle"   title="rss订阅"><i class="thunews-rss"></i></a></li>
                    <li class="mr"><a href="/publish/thunewsen/index.html" class="en" target="_blank">ENGLISH</a></li>
                                        <li class="thuhome mr"><a href=http://www.tsinghua.edu.cn target="_blank">清华主页</a></li>
                </ul>-->
					</div>
					<!--<a href="/publish/thunews/index.html" class="logo"><img src="/publish/thunews/images/logo.png" alt="logo"></a>-->
					<!--<div class="search">
               <form id="searchForm" target="_blank">
<input name="query" type="text" >
<input name="ie" type="hidden" value="utf8">
<input name="cid" type="hidden" value="3">
 <a href="javascript:;" onclick="searchSub();"><i class="thunews-search"></i></a>
</form>
            </div>-->
				</div>
			</section>
			<script src="second_js/searchsub.js"></script>
			<nav class="navwrap yahei">
				<section class="mainWrap">
					<div id="smenu" class="smenu"><i class="thunews-bars"></i></div>
					<script type="text/javascript">
						jQuery(function() {
							jQuery('#nav li a [class^=item]').removeClass('current');
							jQuery('#nav li a.item10303').addClass('current');
						});
					</script>
					<!--<ul id="nav">
   <li><a href="/publish/thunews/index.html" class="item0">首页</a></li>
   <li><a href="/publish/thunews/9648/index.html" class="item9648">头条新闻</a></li>
   <li><a href="/publish/thunews/10303/index.html" class="item10303">综合新闻</a></li>
   <li><a href="/publish/thunews/9649/index.html" class="item9649">要闻聚焦</a>
   <ul>
    <i><em></em></i>
    <li><a href="/publish/thunews/9658/index.html#dqwz">时讯快递</a></li>
    <li><a href="/publish/thunews/9659/index.html#dqwz">学术科研</a></li>
    <li><a href="/publish/thunews/9660/index.html#dqwz">教育教学</a></li>
    <li><a href="/publish/thunews/9661/index.html#dqwz">招生就业</a></li>
    <li><a href="/publish/thunews/9662/index.html#dqwz">交流合作</a></li>
    <li><a href="/publish/thunews/9663/index.html#dqwz">观点报道</a></li>
    <li><a href="/publish/thunews/9664/index.html#dqwz">社会服务</a></li>
   </ul>
   </li>
   <li><a href="/publish/thunews/9650/index.html" class="item9650">媒体清华</a></li>
   <li><a href="/publish/thunews/9652/index.html" class="item9652">图说清华</a></li>
   <li><a href="http://tv.tsinghua.edu.cn/" target="_blank">视频空间</a></li>
   <li><a href="/publish/thunews/9656/index.html" class="item9656">清华人物</a></li>
   <li><a href="/publish/thunews/9654/index.html" class="item9654">校园写意</a>
   <ul>
    <i><em></em></i>
    <li><a href="/publish/thunews/9665/index.html#dqwz">广角透视</a></li>
    <li><a href="/publish/thunews/9666/index.html#dqwz">校园生活</a></li>
    <li><a href="/publish/thunews/9667/index.html#dqwz">微观清华</a></li>
    <li><a href="/publish/thunews/9668/index.html#dqwz">清华史苑</a></li>
    <li><a href="/publish/thunews/9669/index.html#dqwz">高教视点</a></li>
   </ul>
   </li>
   <li><a href="/publish/thunews/9655/index.html" class="item9655">专题新闻</a></li>
   <li><a href="/publish/thunews/10304/index.html" class="item10304">新闻排行</a></li>
   <li><a href="/publish/thunews/9657/index.html" class="item9657">新闻合集</a></li>
   </ul>-->

				</section>
			</nav>
		</header>
		<div class="content yahei subchannel">
			<div class="mainWrap clearfix" style="margin-left: 30%;">
				<section class="colunm1">
					<h2 class="channeltitle" style="position: relative;">审核简历 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     	&nbsp;&nbsp;
     	<a href="instIndex.jsp" style="color: #6D4D91; font-size: 15px; font-weight: 1000;">返回首页</a></h2>
					<ul class="whitenewslist clearfix">
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180705165308560904875&" + Math.random(), function(data) {

										$("#itemlist_total_20180705165308560904875").empty();
										$("#itemlist_total_20180705165308560904875").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="third.jsp" target="_blank" class="jiequ">XXX的简历</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月4日晚8点。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.06  <font id="font_itemlist_total_20180705165308560904875"><span id="itemlist_total_20180705165308560904875"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180706092156675719218&" + Math.random(), function(data) {

										$("#itemlist_total_20180706092156675719218").empty();
										$("#itemlist_total_20180706092156675719218").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180706092156675719218/20180706092156675719218_.html" target="_blank" class="jiequ">【组图】2018年清华大学毕业长跑举行</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月4日下午，“拥抱新时代·青春正起航——清华大学2018年毕业长跑”在清华校园举行，在毕业季节，本科生、研究生毕业生，其他年级年级的同学、老师、校友共计3000余人齐聚西大操场，以长跑的形式，回忆校园生活，回首青春年华。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.06  <font id="font_itemlist_total_20180706092156675719218"><span id="itemlist_total_20180706092156675719218"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180706102425280955238&" + Math.random(), function(data) {

										$("#itemlist_total_20180706102425280955238").empty();
										$("#itemlist_total_20180706102425280955238").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180706102425280955238/20180706102425280955238_.html" target="_blank" class="jiequ">邱勇会见SK高级别代表团 双方签署捐赠协议</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日下午，韩国SK高级别代表团访问清华大学，校长邱勇，原校长、高等研究院院长顾秉林，校党委原副书记胡显章，SK集团首席副会长崔再源、集团顾问金在烈、集团中国总裁吴作义等出席会谈，并见证双方签署捐赠协议和未来芯片技术及新能源电池领域合作谅解备忘录。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.06  <font id="font_itemlist_total_20180706102425280955238"><span id="itemlist_total_20180706102425280955238"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180705153907993789051&" + Math.random(), function(data) {

										$("#itemlist_total_20180705153907993789051").empty();
										$("#itemlist_total_20180705153907993789051").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180705153907993789051/20180705153907993789051_.html" target="_blank" class="jiequ">清华大数据系统软件国家工程实验室承办“大数据赋能实体经济”高峰论坛</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月1日，由工业和信息化部、北京市人民政府主办，清华大学大数据系统软件国家工程实验室和国家工业信息安全发展研究中心承办的2018软博会第五场高峰论坛 “大数据赋能实体经济”专题论坛在北京展览馆举行。工业和信息化部信息化和软件服务业司司长谢少锋、中国工程院院士兼清华大数据系统软件国家工程实验室主任孙家广、北京市经济和信息化委员会智慧城市建设处（大数据应用处）副处长刘旭、美国服务研究与创新协会总裁克里斯·辛格等参加高峰论坛。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.06  <font id="font_itemlist_total_20180705153907993789051"><span id="itemlist_total_20180705153907993789051"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180705214351562147907&" + Math.random(), function(data) {

										$("#itemlist_total_20180705214351562147907").empty();
										$("#itemlist_total_20180705214351562147907").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180705214351562147907/20180705214351562147907_.html" target="_blank" class="jiequ">校长邱勇与医学实验班及临床医学专业毕业班学生代表座谈</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日下午，清华大学医学院医学实验班及北京协和医学院-清华大学医学部临床医学专业毕业生代表座谈会在生物学馆举行。校长邱勇与同学们围坐在一起，听同学们分享求学生涯的感悟和收获，畅谈学校未来发展和同学们的职业发展规划，并认真倾听同学们的意见和建议。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.05  <font id="font_itemlist_total_20180705214351562147907"><span id="itemlist_total_20180705214351562147907"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180705102922778429753&" + Math.random(), function(data) {

										$("#itemlist_total_20180705102922778429753").empty();
										$("#itemlist_total_20180705102922778429753").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180705102922778429753/20180705102922778429753_.html" target="_blank" class="jiequ">清华与谷歌联合举办人工智能学术研讨会</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("6月28-29日，“清华-谷歌人工智能学术研讨会”在清华大学李兆基科技大楼举行。会议由清华大学人工智能研究院和谷歌AI中国中心联合举办，目的在促进人工智能领域的国际合作，共同解决其中的关键科学问题。研讨会邀请到中国科学院院士、清华大学人工智能研究院院长张钹，美国工程院院士、谷歌AI总负责人杰夫·迪恩（Jeffrey Dean），斯坦福大学人工智能实验室主任、谷歌云人工智能和机器学习首席科学家、谷歌AI中国中心主任李飞飞，麻省理工大学计算机系原副主任、世界知名AI科学家比尔·弗里曼（Bill Freeman）等参加。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.05  <font id="font_itemlist_total_20180705102922778429753"><span id="itemlist_total_20180705102922778429753"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704132526615735319&" + Math.random(), function(data) {

										$("#itemlist_total_20180704132526615735319").empty();
										$("#itemlist_total_20180704132526615735319").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704132526615735319/20180704132526615735319_.html" target="_blank" class="jiequ">清华大学启动高级公共管理硕士香港政务人才项目招生</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日，清华大学高级公共管理硕士（EMPA）香港政务人才项目新闻发布会在清华大学公共管理学院一层大厅举行。副校长、教务长杨斌教授，清华大学公共管理学院院长薛澜、高级公共管理硕士（EMPA）香港政务人才项目主任潘洁、研究生招生办公室主任杨帆等嘉宾出席。发布会由清华大学公共管理学院副院长王亚华教授主持。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.05 <font id="font_itemlist_total_20180704132526615735319"><span id="itemlist_total_20180704132526615735319"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704153044806282729&" + Math.random(), function(data) {

										$("#itemlist_total_20180704153044806282729").empty();
										$("#itemlist_total_20180704153044806282729").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704153044806282729/20180704153044806282729_.html" target="_blank" class="jiequ">清华材料学院朱宏伟教授课题组在多功能石墨烯宏观组装体研究方面取得新进展</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日，清华大学材料学院朱宏伟教授课题组在《先进材料》（Advanced Materials）上发表了题为《基于仿生矿化过程合成可再造型、自修复的多功能石墨烯复合材料》（Synthetic Multifunctional Graphene Composites with Reshaping and Self-Healing Features via a Facile Biomineralization-Inspired Process）的研究论文。该论文提出了一种室温下快速合成多功能石墨烯宏观组装体的方法。通过调节水分含量调控石墨烯组装体的软硬状态，实现反复造型功能及可回收性，有望用于石墨烯材料的多维多尺度快速加工与成形。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.05  <font id="font_itemlist_total_20180704153044806282729"><span id="itemlist_total_20180704153044806282729"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704134832039875465&" + Math.random(), function(data) {

										$("#itemlist_total_20180704134832039875465").empty();
										$("#itemlist_total_20180704134832039875465").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704134832039875465/20180704134832039875465_.html" target="_blank" class="jiequ">丘成桐获马塞尔·格罗斯曼奖 系首位获奖华人数学家</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月2日，在意大利首都罗马开幕的第十五届马塞尔·格罗斯曼会议上，著名数学家丘成桐教授获“马塞尔·格罗斯曼奖”，成为获得该物理大奖的首位华人数学家。该奖称赞丘成桐教授在证明广义相对论中总质量的正定性、完善“准局域质量”概念、证明“卡拉比猜想”，以及在黑洞物理研究等工作中作出巨大贡献。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704134832039875465"><span id="itemlist_total_20180704134832039875465"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704165715323931337&" + Math.random(), function(data) {

										$("#itemlist_total_20180704165715323931337").empty();
										$("#itemlist_total_20180704165715323931337").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704165715323931337/20180704165715323931337_.html" target="_blank" class="jiequ">清华大学与湖北省签署战略合作协议</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月2日下午，湖北省与清华大学战略合作协议签约仪式在工字厅东厅举行。湖北省委书记、省人大常委会主任蒋超良，清华大学党委书记陈旭出席仪式。湖北省委常委、常务副省长黄楚平，清华大学副校长尤政代表双方签署省校战略合作协议。双方有关部门负责人分别在战略咨询、人才合作、科技合作、军民融合、产业发展等领域签署合作备忘录。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704165715323931337"><span id="itemlist_total_20180704165715323931337"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704110357356140886&" + Math.random(), function(data) {

										$("#itemlist_total_20180704110357356140886").empty();
										$("#itemlist_total_20180704110357356140886").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704110357356140886/20180704110357356140886_.html" target="_blank" class="jiequ">清华大学共同主办第十四届交流直流电力传输国际会议</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("6月28-29日，第十四届交流直流电力传输国际会议在成都举办。本届交流直流电力传输国际会议由英国工程技术学会、清华大学及清华四川能源互联网研究院共同主办。吸引了来自世界各地600余名参会代表，针对当下交流直流输电领域的热点技术与发展前景进行了广泛的交流与讨论。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704110357356140886"><span id="itemlist_total_20180704110357356140886"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704114720826726471&" + Math.random(), function(data) {

										$("#itemlist_total_20180704114720826726471").empty();
										$("#itemlist_total_20180704114720826726471").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704114720826726471/20180704114720826726471_.html" target="_blank" class="jiequ">“全球华人慈善行动—清华论坛”举行</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("6月27至28日，“全球华人慈善行动—清华论坛”在荷风送爽的清华园举行。中央统战部副部长谭天星，清华大学校长邱勇、副校长杨斌，美国洛杉矶加州大学校长吉因·布洛克（Gene D. Block）、副校长范芝芬（C. Cindy Fan），美国尔湾加州大学副校长布莱恩·赫维（Brian T. Hervey），香港恒隆集团主席陈启宗、美国洛杉矶亚美公义促进中心创始人和主席郭志明等出席相关活动。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704114720826726471"><span id="itemlist_total_20180704114720826726471"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704102315241999993&" + Math.random(), function(data) {

										$("#itemlist_total_20180704102315241999993").empty();
										$("#itemlist_total_20180704102315241999993").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704102315241999993/20180704102315241999993_.html" target="_blank" class="jiequ">【微观清华】郑艺：西北的星空，有我一份点缀</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("郑艺，2012年进入清华大学能动系学习，2016年本科毕业后选择本系攻读硕士学位。毕业后，选择位于兰州市的中国航天科技集团第510研究所从事研发设计工作，2018年启航奖金奖获得者。他从小生活在黄土高原上，那里有他热爱的土地和亲人。然而比起暖暖的回忆，故乡的贫穷与落后更是令他难以忘怀。他暗下决心，学成之后，回家。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704102315241999993"><span id="itemlist_total_20180704102315241999993"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180704095632354572659&" + Math.random(), function(data) {

										$("#itemlist_total_20180704095632354572659").empty();
										$("#itemlist_total_20180704095632354572659").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180704095632354572659/20180704095632354572659_.html" target="_blank" class="jiequ">【微观清华】清华大学首批录取通知书寄出，毕业生向新生传递学习成长“接力棒”</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日，清华大学2018级新生首批录取通知书开始寄送。随通知书一起寄出的，还有校长邱勇送给新生的特别礼物——科普经典名著《从一到无穷大》。收到首批录取通知书和校长赠书的将是179名保送生。正在清华参加集训的生物学奥林匹克竞赛国家队队员杨雨翔同学获得首封录取通知书。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.04  <font id="font_itemlist_total_20180704095632354572659"><span id="itemlist_total_20180704095632354572659"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180703164453955339477&" + Math.random(), function(data) {

										$("#itemlist_total_20180703164453955339477").empty();
										$("#itemlist_total_20180703164453955339477").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180703164453955339477/20180703164453955339477_.html" target="_blank" class="jiequ">清华师生学习习近平总书记在同团中央新一届领导班子成员集体谈话时的重要讲话和...</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月3日上午，30余名清华青年师生齐聚校团委大会议室，学习习近平总书记在同团中央新一届领导班子成员集体谈话时的重要讲话和团十八大精神，并展开了热烈的讨论。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.03  <font id="font_itemlist_total_20180703164453955339477"><span id="itemlist_total_20180703164453955339477"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180703104854645683673&" + Math.random(), function(data) {

										$("#itemlist_total_20180703104854645683673").empty();
										$("#itemlist_total_20180703104854645683673").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180703104854645683673/20180703104854645683673_.html" target="_blank" class="jiequ">中国绿色创新夏季学院2018启动仪式在清华举行</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("7月2日上午，中国绿色创新夏季学院（SICGI，以下简称夏季学院）2018年启动仪式在清华大学主楼接待厅举行。清华大学公共管理学院院长、中国绿色创新夏季学院项目主任薛澜，苹果公司大中华区零售业务高级总监李德（Richard Hames）出席了启动仪式并致辞。中国气象局气候变化特别顾问丁一汇院士作主题发言。环保部宣传教育中心主任贾峰、苹果公司成员及全体2018学员共同出席了启动仪式。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.03  <font id="font_itemlist_total_20180703104854645683673"><span id="itemlist_total_20180703104854645683673"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180703093604668475797&" + Math.random(), function(data) {

										$("#itemlist_total_20180703093604668475797").empty();
										$("#itemlist_total_20180703093604668475797").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180703093604668475797/20180703093604668475797_.html" target="_blank" class="jiequ">清华大学校园参观实行网上预约 多措并举提升服务管理</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("清华大学校园参观备受关注，参观热情与日俱增。2018年暑期即将到来，清华大学继续秉承“坚持开放，加强服务，有序管理”的原则，从今年暑期开始，实行校园参观网上预约，并配套多项服务保障和管理措施，进一步优化和规范秩序、改善参观体验。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.03  <font id="font_itemlist_total_20180703093604668475797"><span id="itemlist_total_20180703093604668475797"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180702202030987183498&" + Math.random(), function(data) {

										$("#itemlist_total_20180702202030987183498").empty();
										$("#itemlist_total_20180702202030987183498").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180702202030987183498/20180702202030987183498_.html" target="_blank" class="jiequ">校长邱勇向2018级新生赠书《从一到无穷大》 并致信勉励新生“感受科学魅力...</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("2018级本科新生将收到校长邱勇赠送的第一份礼物——科普经典名著《从一到无穷大》，以及“致新生的一封信”。这份特别的礼物将从7月3日起随录取通知书一起陆续寄出。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.02  <font id="font_itemlist_total_20180702202030987183498"><span id="itemlist_total_20180702202030987183498"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180702160155772188956&" + Math.random(), function(data) {

										$("#itemlist_total_20180702160155772188956").empty();
										$("#itemlist_total_20180702160155772188956").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180702160155772188956/20180702160155772188956_.html" target="_blank" class="jiequ">“清华学堂人才培养计划”2018届学生荣誉证书颁发仪式举行</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("6月29日下午，“清华学堂人才培养计划”2018届学生荣誉证书颁发仪式在清华主楼接待厅举行。清华大学副校长、教务长杨斌，学堂班首席教授丘成桐、朱邦芬、张希、施一公、姚期智、郑泉水，教务处处长彭刚出席。教务处副处长苏芃主持仪式。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.02  <font id="font_itemlist_total_20180702160155772188956"><span id="itemlist_total_20180702160155772188956"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180702112504358178836&" + Math.random(), function(data) {

										$("#itemlist_total_20180702112504358178836").empty();
										$("#itemlist_total_20180702112504358178836").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180702112504358178836/20180702112504358178836_.html" target="_blank" class="jiequ">清华师生自发追思唐仲英先生</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("6月30日晚，清华大学职业发展中心华为厅里却一片肃穆。由清华大学学生唐仲英爱心社成员、学生领导力唐仲英计划学员和仲英青年学者自发发起的“唐仲英先生追思会”在这里隆重举行。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.02  <font id="font_itemlist_total_20180702112504358178836"><span id="itemlist_total_20180702112504358178836"></span></font>
									</span>
								</div>

							</figure>
						</li>
						<script language="javascript" type="text/javascript">
							$(document).ready(function() {
								getResData();

								function getResData() {
									jQuery.get("/application/visitor/article_list_visitors_2.jsp?articleID=20180702153524433231148&" + Math.random(), function(data) {

										$("#itemlist_total_20180702153524433231148").empty();
										$("#itemlist_total_20180702153524433231148").append(data);

									});
								};
							});
						</script>

						<li>
							<figure>
								<figcaption>
									<a href="/publish/thunews/10303/2018/20180702153524433231148/20180702153524433231148_.html" target="_blank" class="jiequ">【微观清华】手工定制、独一无二 | 清华大学2018新版录取通知书制作揭秘</a>
								</figcaption>
								<div class="contentwraper">
									<p>
										<script language="javascript" type="text/javascript">
											cutSummary("亲爱的同学，你好！你的高考志愿填完了吗？是不是在焦急地等待录取通知书？如果你选择了清华，那么恭喜你！由清华师生共同打造的2018新版录取通知书，已经整装待发了！很快，你就会收到这份手工定制、独一无二的录取通知书。", 65);
										</script>
									</p>

									<span class="time"><img src="img/time.png" width="20px" height="20px">  2018.07.02  <font id="font_itemlist_total_20180702153524433231148"><span id="itemlist_total_20180702153524433231148"></span></font>
									</span>
								</div>

							</figure>
						</li>
					</ul>
					<script type="text/javascript">
						var strUrl = window.location.href;
						var curPage = 1;
						var pageCount = 444; //total pages count
						if(strUrl.lastIndexOf('index_') != -1)
							curPage = parseInt(strUrl.substring(strUrl.lastIndexOf('_') + 1, strUrl.lastIndexOf('.'))); //current page number
						var pageStr = "<div class=\"pager\">";
						if(pageCount > 1) {
							pageStr += '<a href="javascript:;" class="p" title="前一页" onclick="doGo(' + (curPage - 1) + ');">«</a>';
						}
						if(pageCount <= 9) {
							for(var i = 0; i < pageCount; i++) {
								var currentClass = ((i + 1) == curPage) ? "current" : "";
								pageStr += '<a href="javascript:;" class="' + currentClass + '" onclick="doGo(' + (i + 1) + ')">' + (i + 1) + '</a>';
							}
						} else if(pageCount > 9 && (curPage + 4) <= pageCount && (curPage - 4) <= 0) {
							for(var i = 0; i < 9; i++) {
								var currentClass = ((i + 1) == curPage) ? "current" : "";
								pageStr += '<a href="javascript:;" class="' + currentClass + '" onclick="doGo(' + (i + 1) + ')">' + (i + 1) + '</a>';
							}
						} else if(pageCount > 9 && (curPage + 4) <= pageCount && (curPage - 4) > 0) {
							for(var i = (curPage - 3); i < (curPage + 4); i++) {
								var currentClass = ((i + 1) == curPage) ? "current" : "";
								pageStr += '<a href="javascript:;" class="' + currentClass + '" onclick="doGo(' + (i + 1) + ')">' + (i + 1) + '</a>';
							}
						} else {
							for(var i = (pageCount - 8); i < (pageCount); i++) {
								var currentClass = ((i + 1) == curPage) ? "current" : "";
								pageStr += '<a href="javascript:;" class="' + currentClass + '" onclick="doGo(' + (i + 1) + ')">' + (i + 1) + '</a>';
							}
						}
						if(curPage < pageCount) {
							pageStr += '<a href="javascript:;" onclick="doGo(' + (curPage + 1) + ')" class="p" title="后一页">»</a>';
						}
						pageStr += "<span>到第<input name=\"\" type=\"text\" id=\"ymz\">页 <a href=\"#\"  onclick=\"goto_ymz()\">确定</a></span>";
						pageStr += "</div>";
						var pageStr1 = "<div class=\"mobilemore clearfix\">";
						if(pageCount > 1) {
							pageStr1 += '<a href="javascript:;" class="prev" title="上一页" onclick="doGo(' + (curPage - 1) + ');">上一页</a>';
						}
						if(curPage < pageCount) {
							pageStr1 += '<a href="javascript:;" onclick="doGo(' + (curPage + 1) + ')" class="next" title="下一页">下一页</a>';
						}
						pageStr1 += "</div>";
						document.write(pageStr);
						document.write(pageStr1);
					</script>
					<script type="text/javascript">
						function doGo(jumpvalue) {
							if(jumpvalue < 1 || jumpvalue > 444)
								return;
							var urlstr = window.location.href;
							var urlColumnId = urlstr.substr(urlstr.indexOf('#') + 1, 8);
							urlColumnId = urlColumnId.replace("/", "");
							//if(1==jumpvalue){
							//  urlstr = urlstr.substr(0,urlstr.lastIndexOf('/')+1)+'index.html';
							// }else{
							//urlstr = urlstr.substr(0,urlstr.lastIndexOf('/')+1)+'index_'+jumpvalue+'.html';
							// }
							// window.location.href = urlstr;
							//}
							/*function goto_ymz(){
							 jumpvalue0 = $('#ymz').val();
							 if(jumpvalue0<1 || jumpvalue0>444)
							   return;
							 var urlstr0 = window.location.href;  
							// if(1==jumpvalue0){
							//urlstr0 = urlstr0.substr(0,urlstr0.lastIndexOf('/')+1)+'index.html';
							// }else{
							//urlstr0 = urlstr0.substr(0,urlstr0.lastIndexOf('/')+1)+'index_'+jumpvalue0+'.html';
							// }
							   window.location.href = urlstr0;
							}*/
					</script>
					<p style="display:none">
						<span style='font-size:12px'>
		共<b>9309</b>条&nbsp;&nbsp;
		分<b>444</b>页&nbsp;&nbsp;
		当前&nbsp;第<b>1</b>页&nbsp;&nbsp;
		 <font color='#C0C0C0'>首页</font>
		 <font color='#C0C0C0'>上一页</font>
		 <a href='#'><font color='#000000'>下一页</font></a>
		 <a href='#'><font color='#000000'>末页</font></a>
</span></p>
					<!--<a id="mobilemore" class="mobilemore" href="javascript:;">... 加载更多 ...</a>-->
				</section>
				<!--<section class="colunm2">
       <section class="mod">
        <h2><a href="/publish/thunews/9652/index.html" class="more" target="_blank">更多 &#8250;</a><span class="iconwraper"><i class="thunews-picture-o"></i></span>图说清华</h2>
            <div class="slidegallery">
    <ul id="thunews_tsqh">
    
                </ul>
          </div>
      </section>
         <section class="mod withborder">
        <h2><a href="http://tv.tsinghua.edu.cn/" class="more" target="_blank">更多 &#8250;</a><span class="iconwraper"><i class="thunews-play-circle"></i></span>精彩视频</h2>
       <ul class="promvideolist clearfix" id="thunews_jcsp">
          
        </ul>
      </section>
        <section class="mod withborder">
        <h2 class="red"><span class="iconwraper"><i class="thunews-line-chart"></i></span>近期热点</h2>
       <ul class="newslist clearfix"  id="resText">
   
        </ul>
      </section>
    </section>-->

				<script>
					jQuery.ajaxSettings.async = false;
					getResData1();

					function getResData1() {
						jQuery.getJSON("/publish/thunews/thunews_tsqh.json?r=" + Math.random(), function(data) {
							//$("#thunews_tsqh").empty();
							jQuery.each(data, function(index) {

								var html = "<li>";
								html += "<a href=\"" + data[index]["href"] + "\" title=\"" + data[index]["span"] + "\" target=\"_blank\">";
								html += "<img src=\"" + data[index]["src"] + "\">";
								html += "<div><b></b>";
								html += "<span>" + data[index]["span"] + "</span>"
								html += "</div></a></li>";
								$("#thunews_tsqh").append(html);
							});
						});
						getResData3();
					};

					function getResData3() {
						jQuery.getJSON("/publish/thunews/thunews_jcsp.json?r=" + Math.random(), function(data) {
							//$("#thunews_jcsp").empty();
							jQuery.each(data, function(index) {

								var html = "<li><figure>";
								html += "<a class=\"promvideo\" href=\"" + data[index]["href"] + "\" target=\"_blank\">";
								html += "<b></b><img src=\"" + data[index]["src"] + "\"></a>";
								html += "<figcaption><a href=\"" + data[index]["href"] + "\"  target=\"_blank\">" + data[index]["span"] + "</a></figcaption>";
								html += " </figure></li>";
								$("#thunews_jcsp").append(html);
							});
						});
						getResData4();
					};

					function getResData4() {
						jQuery.getJSON("/publish/thunews/thunews_jqrd.json?r=" + Math.random(), function(data) {
							//$("#resText").empty();
							jQuery.each(data, function(entryIndex, entry) {
								var datet = entry["datetime"];
								datet = datet.replace(/-/g, '.');
								var html = "<li>";
								html += "<div class='thumb'><i class='thunews-clock-o'></i>" + datet;
								html += "<i class='thunews-eye'></i>" + entry["dotnum"];
								html += "</div>";
								html += "<a href=\"" + entry["href"] + "\" title=\"" + entry["title"] + "\" target=\"_blank\">" + entry["title"] + "</a>"
								html += "</li>";
								$("#resText").append(html);
							});
						});
						test();
					};

					function test() {
						$('.slidegallery ul').slick({
							infinite: true,
							slidesToShow: 1,
							slidesToScroll: 1,
							autoplay: true,
							centerMode: false,
							dots: true,
							prevArrow: "<div class=\"sliderbutton prev\"><i class=\"thunews-angle-left\"></i></div>",
							nextArrow: "<div class=\"sliderbutton next\"><i class=\"thunews-angle-right\"></i></div>"
						});
						$('.slidegallery .sliderbutton.prev,.slidegallery .sliderbutton.next').hide();
					}
				</script>
			</div>
		</div>
		<footer>
			<div class="mainWrap clearfix">
				<section>
					<div class="thulogo"><img></div>
					<!--<div class="copyright"><span><a href="/publish/thunews/10274/index.html">网站地图</a>　│　<a href="/publish/thunews/10225/index.html">关于我们</a>　│　<a href="/publish/thunews/10217/index.html">友情链接</a>　│　<a href="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/picture/map.png" target="_blank">清华地图</a></span>
            清华大学新闻中心版权所有，清华大学新闻网编辑部维护，电子信箱:news@tsinghua.edu.cn<br>
Copyright 2001-2020 news.tsinghua.edu.cn. All rights reserved.
            </div>-->
				</section>
			</div>
		</footer>
	</body>

</html>
