<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	if ("loginAction".equals(request.getParameter("action"))) {
		String username = request.getParameter("username");
		String password = request.getParameter("Password");
		if (username.equals("admin") && password.equals("1234")) {
			response.sendRedirect("./manager/index.html");
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>管理员登录</title>
<link rel="icon" href="/favicon.ico" otype="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link href="css/css11.css" rel="stylesheet">
<script type="text/javascript" src="js/js14.js"></script>
<script type="text/javascript" src="js/js15.js"></script>
<script type="text/javascript" src="js/js16.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	var _url = location.href;
	if (_url.indexOf('222.204.6.143') > 0 && _url.indexOf('school_token') < 0) {
		location.href = "http://222.204.6.143:8085/?school_token=yxqqnn0900000001";
	}
</script>
<style type="text/css">
#particles-js canvas {
	background-color: rgb(93, 172, 129);
}

.browser-check {
	background-color: #f6f6b4;
	font-size: 20px;
	text-align: center;
	line-height: 60px;
	display: none;
}

.browser-check img {
	height: 18px;
	vertical-align: baseline;
}

.manage-header {
	position: relative;
	opacity: 0.9;
}

.login-type-icon {
	cursor: pointer;
	width: 47px;
	height: 47px;
	background-image:
		url(https://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/public/images/icon/qr_ico.png);
	position: absolute;
	top: 5px;
	right: 5px;
}

.login-tip {
	position: absolute;
	top: 10px;
	right: 52px;
}

.poptip {
	border: 1px solid #f3d995;
	height: 30px;
	line-height: 30px;
	padding: 0 20px 5px 15px;
	background: #fefcee;
	position: relative;
	z-index: 9999;
	display: block;
}

.poptip-arrow {
	top: 8px;
	right: 0;
	position: absolute;
	z-index: 10;
}

.poptip-arrow em,.poptip-arrow span {
	position: absolute;
	width: 0;
	height: 0;
	border-color: rgba(255, 255, 255, 0);
	border-color: transparent \0;
	_border-color: tomato;
	_filter: chroma(color = tomato);
	border-style: solid;
	overflow: hidden;
	top: 0;
	left: 0;
	font-style: normal;
	font-weight: 400;
}

.poptip-arrow em {
	top: 0;
	left: 1px;
	border-left-color: #f3d995;
	border-width: 6px 0 6px 6px;
}

.poptip-arrow span {
	border-left-color: #fefcee;
	border-width: 6px 0 6px 6px;
}

.poptip .poptip-content {
	color: #df9c1f;
	font-size: 12px;
	font-weight: 400;
}

.qrcode-login {
	text-align: center
}

.qrcode-main {
	margin: 20px 0 20px 95px
}

.j-qr-img {
	width: 120px;
	height: 120px
}

.log-jumbotron {
	position: relative;
	overflow: hidden;
	background: #2a2b3c url(/backend/public/images/login_bg.png);
	height: 100%;
}

#particles-js {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.log-publicity {
	margin: 0;
	position: absolute;
	right: 50%;
	top: 45%;
	margin-top: -120px !important;
	color: #fff;
	width: 700px;
	margin-right: -120px;
}

.log-panel {
	position: absolute;
	left: 50%;
	top: 45%;
	margin-top: -160px;
	margin-left: 150px;
	opacity: .9;
	width: 388px;
	padding: 32px 40px;
	background-color: #fff;
	border-radius: 8px;
	-webkit-animation: log-panel 2s infinite linear;
	animation: log-panel 2s infinite linear;
}

@
keyframes log-panel { 0%,100% {
	opacity: .9;
	-moz-box-shadow: 0px 0px 2px #FFFFFF;
	-webkit-box-shadow: 0px 0px 2px #FFFFFF;
	box-shadow: 0px 0px 2px #FFFFFF;
}

50%
{
opacity
:
 
1;
-moz-box-shadow
:
0px
 
0
px
 
15
px
 
#FFFFFF
;

                
-webkit-box-shadow
:
0px
 
0
px
 
15
px
 
#FFFFFF
;

                
box-shadow
:
0px
 
0
px
 
15
px
 
#FFFFFF
;

            
}
}
@media ( max-width : 1100px) {
	.log-panel {
		left: auto;
		position: relative;
		top: 50px;
		margin: 0 auto;
	}
	.log-publicity {
		top: 100px;
		right: auto;
		position: relative;
		margin: 0 auto;
		margin-top: 0 !important;
	}
}

.login-btn {
	line-height: 40px;
	font-size: 14px;
	width: 130px;
	padding: 0;
	position: relative;
}

.error-info {
	font-size: 14px;
}

@
-webkit-keyframes ui-dialog-loading { 0% {
	-webkit-transform: rotate(0deg);
}

100%
{
-webkit-transform
:
 
rotate
(360deg);

            
}
}
@
keyframes ui-dialog-loading { 0% {
	transform: rotate(0deg);
}

100%
{
transform
:
 
rotate
(360deg);

            
}
}
.ui-dialog-loading {
	vertical-align: middle;
	position: absolute;
	display: inline-block;
	overflow: hidden;
	width: 32px;
	height: 32px;
	top: 18px;
	margin: -16px auto 0 auto;
	font-size: 0;
	text-indent: -999em;
	color: #ffffff;
	left: 10px;
	display: none;
}

.ui-dialog-loading {
	width: 100% \9;
	text-indent: 0\9;
	line-height: 32px\9;
	text-align: center\9;
	font-size: 12px\9;
}

.ui-dialog-loading::after {
	position: absolute;
	content: '';
	width: 3px;
	height: 3px;
	margin-top: 15px;
	border-radius: 100%;
	box-shadow: 0 -10px 0 1px #fff, 10px 0px #fff, 0 10px #fff, -10px 0 #fff,
		-7px -7px 0 0.5px #fff, 7px -7px 0 1.5px #fff, 7px 7px #fff, -7px 7px
		#fff;
	-webkit-transform: rotate(360deg);
	-webkit-animation: ui-dialog-loading 1.5s infinite linear;
	transform: rotate(360deg);
	animation: ui-dialog-loading 1.5s infinite linear;
	display: none\9;
}
</style>
</head>
<body class="loginpage">
	<div class="browser-check">
		为了您能正常使用网站功能，推荐使用<img src="/backend/public/images/icon/chrome.png">Chrome浏览器。
		<a
			href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=chrome%E4%B8%8B%E8%BD%BD&oq=chrome%E4%B8%8B%E8%BD%BD&rsv_pq=ebb306a000019485&rsv_t=c0b2TpIGEjmKl5XOmYzFxS5UqBhFMDiz97br%2F4tvLTeBLwpSOjSF7wf2WMs&rsv_enter=0"
			target="_blank">点击下载 </a>
	</div>
	<div class="log-jumbotron container">
		<div id="particles-js"></div>
		<div class="manage-header">
			<div class="container-fixed" style="max-width:1200px;">
				<img
					src="http://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/school/1495449423-3394.png"
					height="50px">
			</div>
		</div>
		<div class="log-panel form-signin">
			<div class="login-type-icon"></div>
			<div class="login-tip">
				<div class="poptip">
					<div class="poptip-arrow">
						<em></em> <span></span>
					</div>
					<div class="poptip-content">扫码登录更安全</div>
				</div>
			</div>
			<div class="clearfix">
				<form action="adminLogin.jsp?action=loginAction" method="post">
					<p class="f18 mb18">管理员登录</p>
					<div class="j-pc">
						<div class="text-wrap">
							<span class="icon icon-name"></span> <input type="text"
								placeholder="用户名" id="user_name" name="username" required>
						</div>
						<div class="text-wrap" id="div_password">
							<span class="icon icon-pass"></span> <input type="password"
								placeholder="密码" id="password" name="Password">
						</div>
						<!-- <div id="div_code_input" class="text-wrap hide"
							style="width: 190px;float: left;">
							<span class="icon icon-pass"></span> <input id="validcode"
								type="text" style="width: 140px" placeholder="验证码">
						</div>
						<div class="text-wrap hide" id="div_code"
							style="float: right;padding: 3px;border-left: none;">
							<img id="valid_code" alt="点击刷新验证码" title="点击刷新验证码">
						</div> -->
						<div class="login" style="float:left;width:100%;">
							<input type="checkbox" id="remember" /> <label for="remember"
								class="f14">记住登录账号</label>
							<button type="submit" id="login_btn"
								class="btn btn-success login-btn">
								<span class="ui-dialog-loading"></span> <span class="login-span">登录</span>
							</button>
							<p class="error-info color-red" id="error_info"></p>
						</div>
					</div>
					<div class="qrcode-login j-qr" style="display: none">
						<div class="qrcode-mod">
							<div class="qrcode-main">
								<div class="qrcode-img" style="opacity: 1;">
									<img class="j-qr-img" style="display: block;">
								</div>
							</div>
							<div class="qrcode-desc">
								<p>
									打开<a href="javascript:;">微信</a>，扫一扫登录 <br> <strong>更安全的登录方式</strong>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="log-publicity">
			<h1 style="font-size: 40px;">
				<strong>全国首家“互联网+精准就业”平台</strong>
			</h1>
			<h4 style="color: rgba(255,255,255,.6);">覆盖：20个省200+高校&nbsp;&nbsp;&nbsp;&nbsp;130万+毕业生&nbsp;&nbsp;&nbsp;&nbsp;20万+单位入驻</h4>
			<br> <br>
			<p style="color: rgba(255,255,255,.6);">
				帮助天下毕业生走稳求职第一步
				<!--<a href="http://www.bibibi.net" style="color: rgba(255,255,255,.6);"-->
				<!--target="_blank">Copyright © 2015-2018 云研科技 </a>-->
			</p>
		</div>

	</div>


	<script type="text/javascript">
		$(function() {
			$(window).resize(function() {
				$(".log-jumbotron").css("height", $(window).height());
			}).resize();

			particlesJS('particles-js', {
				particles : {
					color : '#fff',
					shape : 'triangle', // "circle", "edge" or "triangle"
					opacity : 0.5,
					size : 5,
					size_random : true,
					nb : 150,
					line_linked : {
						enable_auto : true,
						distance : 150,
						color : '#fff',
						opacity : 0.5,
						width : 1,
						condensed_mode : {
							enable : false,
							rotateX : 600,
							rotateY : 600
						}
					},
					anim : {
						enable : true,
						speed : 2
					}
				},
				interactivity : {
					enable : true,
					mouse : {
						distance : 300
					},
					detect_on : 'canvas', // "canvas" or "window"
					mode : 'grab',
					line_linked : {
						opacity : 0.5
					},
					events : {
						onclick : {
							enable : true,
							mode : 'push', // "push" or "remove"
							nb : 4
						}
					}
				},
				/* Retina Display Support */
				retina_detect : true
			});

			//浏览器兼容
			if (!!window.ActiveXObject || "ActiveXObject" in window) {
				$('.browser-check').slideDown();
			}
			//扫码登录
			var Login = {
				fnQrLogin : function() {
					$.get('/welcome/login_qr', function(result) {
						if (result.code === 1) {
							var data = result.data;
							if (!!data && !!data.redirect) {
								window.setTimeout(function() {
									location.href = data.redirect;
								}, 150);
							} else {
								$('.j-qr-img').attr('src', data.qr_login);
							}
						}
					});
				},
				formLogin : function() {
					var _self = this;
					var _name = $.trim($("#user_name").val());
					var _code = $.trim($("#validcode").val());
					if (_name.length == 0) {
						$('#error_info').text("请输入用户名");
						return false;
					}
					if ($("#div_code_input").hasClass('hide') == false) {
						if (_code.length == 0) {
							$('#error_info').text("请输入验证码");
							return false;
						}
					}
					if ($("#remember").prop('checked')) {
						localStorage.setItem('user_name', _name);
					} else {
						localStorage.setItem('user_name', '');
					}
					$('.ui-dialog-loading').show();
					$('#login_btn').attr("disabled", true);
					$('.login-span').text("登录中...");
					$('#error_info').text("");
					$.post('/welcome/validate', {
						user_name : _name,
						password : hex_md5($("#password").val()),
						valid_code : _code
					}, function(result) {
						if (result.code == 1) {
							$('.login-span').text("正在进入...");
							if (result.data)
								location.href = result.data;
							else
								location.href = '/welcome/index';
						} else {
							$('#login_btn').removeAttr("disabled");
							$('.login-span').text("登录");
							$('.ui-dialog-loading').hide();
							if (!!result.data.valid) {
								$('#div_code_input').removeClass('hide');
								$('#div_code').removeClass('hide');
							}
							_self.valid();

							$('#error_info').text(result.msg);
						}
					});
				},
				valid : function() {
					if ($("#div_code_input").hasClass('hide') == false)
						$('#valid_code').attr('src',
								'/welcome/validcode?' + Math.random());
				},
				init : function() {
					var _self = this;
					_self.valid();
					$('#valid_code').click(function() {
						_self.valid();
					});
					setTimeout(function() {
						_self.valid();
					}, 30000);
					var _interval;
					$('.login-type-icon')
							.click(
									function() {
										var bg_url = $(this).css(
												'background-image');
										if (bg_url.indexOf('pc_') > 0) {
											$(this)
													.css(
															'background-image',
															'url(https://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/public/images/icon/qr_ico.png)');
											$('.poptip-content')
													.text('扫码登录更安全');
											$('.j-pc').show();
											$('.j-qr').hide();
											window.clearInterval(_interval);
										} else {
											$('.j-pc').hide();
											$('.j-qr').show();
											$(this)
													.css(
															'background-image',
															'url(https://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/public/images/icon/pc_ico.png)');
											$('.poptip-content')
													.text('密码登录在这里');
											_self.fnQrLogin();
											_interval = window.setInterval(
													function() {
														_self.fnQrLogin();
													}, 3000);
										}

									});
					$("#login_btn").click(function() {
						_self.formLogin();
					});
					var _name = localStorage.getItem('user_name');
					if (_name != null && _name != '') {
						$("#user_name").val(_name);
						$('#remember').prop("checked", true);
					}
					$("#password").keydown(function() {
						if (event.keyCode == 13) {
							event.returnValue = false;
							event.cancel = true;
							_self.formLogin();
						}
					});
					$("#validcode").keydown(function() {
						if (event.keyCode == 13) {
							event.returnValue = false;
							event.cancel = true;
							_self.formLogin();
						}
					});
				}
			};
			Login.init();

		});
		var _interval;
		$(function() {
			//登录方式

		});
	</script>

</body>
</html>

