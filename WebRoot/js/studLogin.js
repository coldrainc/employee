/**
 * Created by Administrator on 2016/4/9.
 */
var _submit_flag = false;
var config = {
	base : '/platform',
	paths : {
		'libs' : '/public/js/libs',
		'plugs' : '/public/js/plugs'
	},
	comboSuffix : '?v=' + __ver
};
seajs.config(config);

var COOKIE_NAME = 'student_no';
if ($.cookie(COOKIE_NAME) && $.cookie(COOKIE_NAME) != "null") {
	$("#user_name").val($.cookie(COOKIE_NAME));
	document.getElementById("remember").checked = true;
}

function stuLogin() {
	login();
	alert(_submit_flag + "dd");
	return _submit_flag;
}

$('#img_valid_code').click(function() {
	$(this).attr('src', '/login/validcode?' + Math.random());
});

var permission = $("#permission1").val();
var login = function() {
	if (!_submit_flag) {
		$.ajax({
			url : 'loginAction',
			type : 'post',
			dataType : 'json',
			data : {
				number : user_name,
				password : password,
				valid_code : valid_code,
				permission : permission
			},
			success : function(result) {
				alert(result);
				result = eval("(" + result + ")");
				alert('返回成功')
				if (result.code == 1) {
					alert('验证成功');
					_submit_flag = true;
					alert("_submit_flat" + _submit_flag);
				} else {
					if (!!result.data.logo_need_valid) {
						$('#div_code_input').show();
						$('#div_code').show();
					}
					$('#img_valid_code').attr('src',
							'/login/validcode?' + Math.random());
					$.showMessage(result.msg, 3000);
				}
			},
			error : function() {
				alert("错误");
				_submit_flag = false;
				$.showMessage('系统错误');
			}
		});
	} else {
		$.showMessage('b');
	}
};
$('.login-form').on('click', '#login_btn', function() {
	alert('ff');
	/*stuLogin();*/
});
if (is_sso == 1) {
	login();
}
var setCookie = function() {
	if (document.getElementById("remember").checked) {
		$.cookie(COOKIE_NAME, $("#user_name").val(), {
			path : '/',
			expires : 10
		});
	} else {
		$.cookie(COOKIE_NAME, null, {
			path : '/'
		});
	}
};

$('.login-form').on('click', '#showReset', function() {
	html = $('.login-form').html();
	$('.login-form').html(resetHtml);
});

$('.login-form').on('click', '#showLogin', function() {
	$('.login-form').html(html);
});

$('.login-form').on('click', '#resetPassword', function() {
	var user_name = $.trim($('#user_name').val());
	var sfzhm = $.trim($('#sfzhm').val());
	var password = security.hex_md5($.trim($('#password').val()));
	var valid_code = $.trim($('#valid_code').val());

	if (!user_name) {
		return $.showMessage('b');
	}
	if (!sfzhm) {
		return $.showMessage('e');
	}
	if (!password) {
		return $.showMessage('e');
	}
	if (!valid_code) {
		return $.showMessage('e');
	}

	var data = {
		user_name : user_name,
		sfzhm : sfzhm,
		password : password,
		valid_code : valid_code
	};

	ajaxReset(data);
});

$('.login-form').on(
		'click',
		'#span_ico_eye',
		function() {
			var is_eye_open = $(this).hasClass('glyphicon-eye-open');
			if (is_eye_open) {
				$(this).removeClass('glyphicon-eye-open').addClass(
						'glyphicon-eye-close').attr('title', 'd');
				$('#password').attr('type', 'password');
			} else {
				$(this).removeClass('glyphicon-eye-close').addClass(
						'glyphicon-eye-open').attr('title', 'b');
				$('#password').attr('type', 'text');
			}
		});

$('.login-form').on('click', '#showReg', function() {
	$("#reg_block").show();
});

$('.login-form').on('click', '#showReg', function() {
	$("#reg_block").show();
});

$('#reg_hide').click(function() {
	$("#reg_block").hide();
});

$('.img_code').click(function() {
	$('.img_code').attr('src', '/login/validcode?' + Math.random());
});

$('#reg_ico_eye').click(
		function() {
			var is_eye_open = $(this).hasClass('glyphicon-eye-open');
			if (is_eye_open) {
				$(this).removeClass('glyphicon-eye-open').addClass(
						'glyphicon-eye-close').attr('title', 'e');
				$('#reg_password').attr('type', 'password');
			} else {
				$(this).removeClass('glyphicon-eye-close').addClass(
						'glyphicon-eye-open').attr('title', 'e');
				$('#reg_password').attr('type', 'text');
			}
		});

var _reg_flag = false;

$("#btnReg").click(
		function() {

			var data = {
				reg_mobile : $.trim($("#reg_mobile").val()),
				reg_password : $.trim($("#reg_password").val()),
				reg_valid_code : $.trim($("#reg_valid_code").val()),
				reg_year : $.trim($("#reg_year").val()),
				reg_school_name : $.trim($("#reg_school_name").val()),
				reg_zy : $.trim($("#reg_zy").val()),
				reg_xl : $.trim($("#reg_xl").val()),
				reg_xh : $.trim($("#reg_xh").val()),
				reg_xm : $.trim($("#reg_xm").val()),
				reg_szfh : $.trim($("#reg_szfh").val())
			}
			for ( var key in data) {
				if (data[key] == '') {
					$.showMessage("d" + $("#" + key).prop('placeholder'));
					$("#" + key).focus();
					return;
				}
			}

			if (data.reg_mobile.length != 11) {
				$.showMessage('d');
				$("#reg_mobile").focus();
				return;
			}

			if (data.reg_password.length < 6) {
				$.showMessage('b');
				$("#reg_password").focus();
				return;
			}

			if (!_reg_flag) {
				_reg_flag = true;
				$.ajax({
					url : '/login/reg',
					type : 'post',
					dataType : "json",
					data : data,
					success : function(result) {
						_reg_flag = false;
						$.showMessage(result.msg, 2000);
						if (result.code == 1) {
							$("#reg_block").hide();
							$("#user_name").val(data.reg_mobile);
							$("#password").val(data.reg_password);
							login();
						} else {
							$('.img_code').attr('src',
									'/login/validcode?' + Math.random());
						}
					},
					error : function() {
						_reg_flag = false;
						$.showMessage('c');
					}
				});
			} else {
				$.showMessage('d');
			}
		});

$('.login-form').on('click', '.img_code', function() {
	$(this).attr('src', '/login/validcode?' + Math.random());
});

var ajaxReset = function(data) {
	$.ajax({
		url : '/login/reset_password',
		type : 'post',
		data : data,
		success : function(result) {
			if (result.code == 1) {
				$.showMessage('f');
				setTimeout(function() {
					location.reload();
				}, 2000);
			} else {
				$.showMessage(result.msg);
			}
		}
	});
};

var html = '';
var resetHtml = [];
resetHtml.push('<p class="f18 mb18">dd</p>');
resetHtml.push('<table id="reset_block">');
resetHtml
		.push('<tr><td>f</td><td><input type="text" id="user_name" class="form-control"></td></tr>');
resetHtml
		.push('<tr><td>d</td><td><input type="text" id="sfzhm" class="form-control"></td></tr>');
resetHtml
		.push('<tr><td>d</td><td style="position:relative;"><input type="text" id="password" class="form-control"><span class="glyphicon glyphicon-eye-open" title="d" id="span_ico_eye" aria-hidden="true"></span></td></tr>');
resetHtml
		.push('<tr><td>f</td><td><input type="text" id="valid_code" class="form-control"><img class="img_code" src="/login/validcode" style="height:33px;"></td></tr>');
resetHtml
		.push('<tr><td><input type="button" id="resetPassword" class="btn-pr ok-btn" value="r"></td><td><span id="showLogin" class="login_tips" style="margin-left:10px;">d</span></td></tr>');
resetHtml.push('</table>');
resetHtml = resetHtml.join('');