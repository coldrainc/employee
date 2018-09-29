<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<link rel="icon" href="img/favicon.ico" otype="image/x-icon" />
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<link href="css/css13.css" rel="stylesheet">
<link href="css/css12.css" rel="stylesheet">

<title>企业登录</title>
<style>
a:hover {
	color: white;
	text-decoration: none;
}

.qq-help a:hover {
	color: #337ab7;
	text-decoration: none;
}
</style>

<style type="text/css">
#particles-js canvas {
	background-color: rgb(93, 172, 129);
}

.log-jumbotron {
	position: relative;
	overflow: hidden;
	background: #2a2b3c url(/pcend/public/images/login_bg.png);
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
	margin-top: -180px;
	margin-left: 150px;
	opacity: .9;
	width: 388px;
	padding: 32px 40px;
	background-color: #fff;
	border-radius: 8px;
}

@media ( max-width : 1100px) {
	.log-publicity {
		top: 100px;
		right: auto;
		position: relative;
		margin: 0 auto;
		margin-top: 0 !important;
	}
	.log-panel {
		left: auto;
		position: relative;
		top: 200px;
		margin: 0 auto;
	}
	
}
a:hover{
        	color: rgb(104,178,252);
        }
</style>
</head>
<body class="loginpage" style="overflow: hidden">
	<div class="manage-header">
		<div class="container-fixed">
			<img id="img_logo" src="img/logo.png" height="50px" class="hide">
			<span style="line-height: 50px;font-size: 22px;">云就业企业校招管理平台</span> <span
				class="pull-right qq-help" style="margin: 10px 100px 0 0"> <a
				target="_blank"
				href="https://wpa.qq.com/msgrd?v=3&uin=879656665&site=qq&menu=yes">

			</a>
			</span>
		</div>
	</div>

	<div class="container">
		<div class="log-jumbotron" style="height: 1000px;">
			<div id="particles-js"></div>
			<div class="log-publicity">
				<h1 style="font-size: 40px;">
					<strong>全国首家“互联网+精准就业”平台</strong>
				</h1>
				<h4 style="color: rgba(255,255,255,.6);">覆盖：20个省200+高校&nbsp;&nbsp;&nbsp;&nbsp;130万+毕业生&nbsp;&nbsp;&nbsp;&nbsp;20万+单位入驻</h4>
				<br> <br>
				<p style="color: rgba(255,255,255,.6);">
					帮助天下毕业生走稳求职第一步
					<!--<a href="http://www.bibibi.net" style="color: rgba(255,255,255,.6);" target="_blank">Copyright © 2015-2018 云研科技 </a>-->
				</p>
			</div>
			<form action="enterpriseLoginAction" method="post">
			<div class="log-panel form-signin" style="right: 100px;">
				<p class="f18 mb18">
					企业登录<span style="color: orangered">(建议您使用谷歌浏览器)</span>
				</p>
				<s:fielderror cssStyle="color:red;"></s:fielderror>
				<div class="text-wrap">
					<span class="icon icon-name"></span> <input type="text"
						placeholder="用户名（手机号码）" id="user_name" name="number">
				</div>
				<div class="text-wrap">
					<span class="icon icon-pass"></span> <input type="password"
						placeholder="密码" id="password" name="password">
					<input type="hidden" value="2" name="permission"/>
				</div>
				<div class="text-wrap" id="div_code_input"
					style="width: 200px;float: left;display:none">
					<span class="icon icon-pass"></span> <input type="text"
						style="width: 150px" placeholder="验证码" id="valid_code"
						name="valid_code">
				</div>
				<div class="text-wrap" id="div_code"
					style="float: left;padding: 3px;border-left: none;display:none">
					<img id="img_code" alt="点击刷新验证码" title="点击刷新验证码">
				</div>
				<div class="login">
					<input type="checkbox" id="remember" /> <label for="remember"
						class="f14">记住登录账号</label>
					<!--                 <a style="width:100px;padding: 0; class="btn-pr ok-btn f14 login-btn align-c" id="link_new_register">注册</a>
 -->
					<button type="submit" id="btn_login" style="width:100px;padding: 0"
						class="btn-pr ok-btn f14 login-btn align-c">登录</button>
				</div>
				<p class="error-info color-red" id="error_info"></p>
				<p style="cursor: pointer;font-size: 12px;color: gray;">
                    	<span>
                    	<a href="zhaohuimima.jsp">忘记登录密码?</a>
                    	</span>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	<span>
                    	<a href="register.jsp">注册</a>
                    	</span>
            </p>
				
			</div>
			</form>
		</div>
	</div>
</body>
</html>
<script>
	var G_MODULES = [ [ 'login', 'index' ], [ 'libs', 'md5' ] ];
</script>
<script src="js/js17.js"></script>
<script src="js/js18.js"></script>

<script>
	if (location.href.indexOf('hr.hunbys.com') > 0) {
		document.title = '湖南省普通高校毕业生就业创业精准服务平台';
		$('#plat_name').text('湖南省普通高校毕业生就业创业精准服务平台');
		$('#copyright').text('湖南省大中专学校学生信息咨询与就业指导中心');

		$('#img_logo').attr('src',
				'http://pic.bibibi.net/school/1463388776-6096.jpg');
		$('#img_bg').attr('src',
				'http://pic.bibibi.net/public/images/bg/hunbys_bg.jpg');

		$('#link_new_register')
				.attr('href',
						'http://hr.hunbys.com/login/schoolregister?school_token=yxqqnn0000000000')
				.attr('style', 'width:100px;padding: 0;');

	}
	var G_CONFIG = {};

	$.ajax({
		type : "get",
		url : "/login/gconfig",
		async : false,
		success : function(result) {
			G_CONFIG = result.data;
		}
	});

	//版本更新
	var config = {
		base : '/pcend',
		paths : {
			'libs' : 'public/js/libs',
			'plugs' : 'public/js/plugs'
		},
		comboSuffix : '?v=' + G_CONFIG.version + '_3'
	};

	_modulePath = [];
	for (var i = 0, len = G_MODULES.length; i < len; i++) {
		var module = G_MODULES[i];
		if (i == 0) {
			config.paths[module[0]] = 'company/js/' + module[i];
		}
		_modulePath.push(module.join('/'));
	}

	seajs.config(config);
	_modulePath.push('plugs/browserCheck');
	_modulePath.push('company/js/utils');
	_modulePath.push('libs/md5');
	_modulePath.push('libs/template');
	_modulePath.push('libs/dialog');
	_modulePath.push('libs/artDialog/src/dialog-plus');
	_modulePath.push('libs/artDialog/src/artdialog');
	_modulePath.push('libs/artDialog/src/drag');
	_modulePath.push('libs/artDialog/src/popup');
	_modulePath.push('libs/artDialog/src/dialog-config');

	//处理菜单
	var module = $('body').data('module') || location.pathname.split('/')[1];
	$('a[data-module="' + module + '"]').parent('dd').addClass('on');

	//注册按钮处理
	if ($.getQueryStr('school_token')
			|| location.href.indexOf('hr.hunbys.com') > 0) {
		$('#link_new_register').show();
	} else {
		$('#link_new_register').hide();
	}

	var is_auth = $('#div_menu').attr('data-state');
	$('dd>a', '#div_menu')
			.each(
					function() {
						var url = $(this).attr('data-href');

						if (is_auth == 1 || url == '/setting/info'
								|| url == '/user/bind') {
							$(this).attr('href', $(this).attr('data-href'));
						}
					})
			.on(
					'click',
					function() {
						var url = $(this).attr('data-href');
						if (is_auth == 0
								&& (url != '/setting/info'
										&& url != '/gallery/index' && url != '/user/bind')) {
							$('#tip_auth').show();
						}
					});

	seajs
			.use(
					_modulePath,
					function() {
						$.browserCheck();
						var _security = arguments[arguments.length - 8];

						//登录相关
						var login_url = '/login/index.html';
						if (location.href.indexOf('/login/') < 0) {
							if (!G_CONFIG.hr) {
								var dialog = $.dialog({
									content : '登录超时',
									quickClose : true
								}).show();
								_timeout = setTimeout(function() {
									dialog.close().remove();
									location.href = login_url;
								}, 2000);
							} else {
								$('#btn_logout').click(function() {
									$.get('/login/logout', function(data) {
										var dialog = $.dialog({
											content : '退出登录成功',
											quickClose : true
										}).show();
										_timeout = setTimeout(function() {
											dialog.close().remove();
											location.href = login_url;
										}, 2000);
									});
								});
							}
						} else if (location.href.indexOf(login_url) > 0) {
							if (!!G_CONFIG.hr) {
								//企业登录与就业网打通
								if (!!G_CONFIG.ticket) {
									var sso_url = $.getQueryStr('sso_url');
									if (!!sso_url) {
										location.href = sso_url
												+ (sso_url.indexOf('?') > 0 ? '&'
														: '?')
												+ 'ticket='
												+ encodeURIComponent(G_CONFIG.ticket);
										return;
									}
								}
								var fair_id = $.getQueryStr('fair_id');
								if (!!fair_id) {
									var url_jobfair = '/campus/jobfair?school_token='
											+ $.getQueryStr('school_token')
											+ '&apply_type='
											+ $.getQueryStr('apply_type')
											+ '&fair_id=' + fair_id;

									var job_fair = $.getQueryStr('job_fair');
									if (!!job_fair) {
										url_jobfair += '&job_fair='
												+ encodeURIComponent(job_fair);
									}

									var meet_time = $.getQueryStr('meet_time');
									if (!!meet_time) {
										url_jobfair += '&meet_time='
												+ encodeURIComponent(meet_time);
									}

									var address = $.getQueryStr('address');
									if (!!address) {
										url_jobfair += '&address='
												+ encodeURIComponent(address);
									}
									location.href = url_jobfair;
								} else {
									location.href = '/gallery/index';
								}
							}
						}

						//修改密码
						$("#update_pwd")
								.click(
										function() {
											$
													.message({
														title : '修改密码',
														content : ''
																+ '<div class="form-group"><label for="pwd" class="control-label">旧密码：</label><input id="pwd" type="password" class="form-control" placeholder="请输入旧密码"/></div>'
																+ '<div class="form-group"><label for="pwd1" class="control-label">新密码：</label><input id="pwd1" type="password" class="form-control" placeholder="请输入新密码"/></div>'
																+ '<div class="form-group"><label for="pwd2" class="control-label">重复新密码：</label><input id="pwd2" type="password" class="form-control" placeholder="请重复输入新密码"/></div>',
														btns : [
																[
																		'取消',
																		function() {
																			this
																					.close();
																		} ],
																[
																		'确定',
																		function() {
																			var _this = this;
																			var postData = {};
																			if ($
																					.trim($(
																							"#pwd")
																							.val()).length > 0
																					&& $
																							.trim($(
																									"#pwd1")
																									.val()).length > 0) {
																				postData.pwd = _security
																						.hex_md5($(
																								"#pwd")
																								.val());
																				postData.pwd1 = _security
																						.hex_md5($(
																								"#pwd1")
																								.val());
																				postData.pwd2 = _security
																						.hex_md5($(
																								"#pwd2")
																								.val());
																				if (postData.pwd1 != postData.pwd2) {
																					$(
																							"#pwd2")
																							.val(
																									"")
																							.focus();
																					var dialog = $
																							.dialog(
																									{
																										content : '两次密码输入不一致',
																										quickClose : true
																									})
																							.show();
																					_timeout = setTimeout(
																							function() {
																								dialog
																										.close()
																										.remove();
																							},
																							2000);
																					return false;
																				} else if (postData.pwd == postData.pwd1) {
																					var dialog = $
																							.dialog(
																									{
																										content : '新密码和旧密码不能一样',
																										quickClose : true
																									})
																							.show();
																					_timeout = setTimeout(
																							function() {
																								dialog
																										.close()
																										.remove();
																							},
																							2000);
																					return false;
																				}

																				$
																						.ajax({
																							url : "/login/update_pwd",
																							dataType : "json",
																							type : 'post',
																							data : postData,
																							success : function(
																									data) {
																								var d = $
																										.dialog(
																												{
																													content : data.msg,
																													quickClose : true
																												})
																										.show();
																								setTimeout(
																										function() {
																											d
																													.close()
																													.remove();
																											if (data.code == 1)
																												_this
																														.close();
																										},
																										1000);
																							}
																						});
																			}
																			return false;
																		} ] ]
													});
											$("#txtFaculty_name").focus();
										});

						arguments[0].init(Array.prototype.slice.call(arguments,
								1));
					});
</script>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?38ebd6cc310b1f1816a3450dbafcb03b";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
<script type="text/javascript">
	$(function() {
		$(window).resize(function() {
			var myDivHeight = $(window).height() - 60;
			$(".log-jumbotron").css("height", myDivHeight);
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
	});
</script>
