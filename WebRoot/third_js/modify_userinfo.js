var IMGPATH = window.cfg.domain.img;
var MYPATH = window.cfg.domain.my;
var CSSPATH = window.cfg.domain.cdn + "/in/css/";
var IPATH = window.cfg.domain.i;

var LOGINPATH = window.cfg.domain.login;


function Modify_Info( action,show )
{
	var isenglish = window.cfg.lang;
	var action_url = IPATH+"/resume/ajax/userinfo_edit.php?"+ Math.random() + '&jsoncallback=?';
	$.getJSON( action_url, { action: action, isenglish:isenglish,show:show} , function(result) {
		oLayerSettings = jQuery.FLayer.init();
		jQuery.FLayer.setContent(oLayerSettings,result.html);
		jQuery.FLayer.open(oLayerSettings);		
		$('#layer_back_drop').css({"filter":"Alpha(Opacity=70)"});
		if(typeof placeholder !='undefined' && placeholder instanceof Function)
		{
			$('#newusername').placeholder({customClass:'my-placeholder'});
			$('#userpwd').placeholder({customClass:'my-placeholder'});
			$('#newuserpwd').placeholder({customClass:'my-placeholder'});	
		}
		//国际短信
		bindNation(typeof d_nation == 'undefined' ? {} : d_nation, 'newphonenum', 'modify_phone_err_tr');
	} );
	
	return false;
}


function Change_CodeImage()
{
		var objDate = new Date();
	    var strTime = objDate.getTime();
	    url = $('#change_code').attr('src');
		var type = $('#change_code').attr('type');
		if(type == '' || type == undefined){
			type=3;
		}
	    if(url.indexOf('?') > 0)
	    {
	    	url = url.replace(/\?.*/g,'?');
	    }else
	    {
	    	url = url + '?';
	    }
	    url = url + 'type=' + type + '&from_domain='+window.location.host+'&t=' + strTime;
	    
	    $('#change_code').attr('src',url);
}


function EmailResend(emailurl,isenglish )
{
	var email = $("#this_success_email").html();
	var sUrl = IPATH + "/resume/ajax/userinfo_edit.php?" + Math.random() + '&jsoncallback=?';
	
	$.getJSON(sUrl, {action_type: "send_email", action: "user_email", emailurl: emailurl ,isenglish:isenglish} , function(result) {

	if (result.status !='0'){
		oLayerSettings = jQuery.FLayer.init();
		jQuery.FLayer.setContent(oLayerSettings,result.html);
		jQuery.FLayer.open(oLayerSettings);
	}else{
		self.location.href=MYPATH_MY+'/My_SignOut.php'
	}
	} );
}


function checkUserEmailFormat( str,language )
{
	var language = (arguments[1]!='')?arguments[1]:'c';
	
	if( str.length > 100 ){
		if(language == 'e')
		{
			$("#this_email_had").find("span.error").text( "Wrong email" );
		}
		else
		{
			$("#this_email_had").find("span.error").text( "邮箱错误" );
		}
        $("#this_email_had").show();
		return false;
	}
	str = str.toLowerCase()
	var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.|。])+([a-zA-Z]{2}|net|com|gov|mil|org|edu|int|name|asia)$";
	var re = new RegExp( regu );
	if( str.search( re ) == -1 )
	{
		if(language == 'e')
		{
			$("#this_email_had").find("span.error").text( "Wrong email" );
		}
		else
		{
			$("#this_email_had").find("span.error").text ( "邮箱错误" );
		}
        $("#this_email_had").show();
		return false;
	}
	else
	{
		return true;
	}
}

function Save_Email( language )
{
	var email = $.trim($("#newemail")[0].value).toLowerCase().replace('。', '.');
	var vldcode = $.trim($("#validatecode")[0].value);
	var action_url = IPATH+"/resume/ajax/userinfo_edit.php?" + Math.random();
    $(".note_msg").hide();

	if( email == '' ){
		if(language == 'e')
		{
			$("#this_email_had").find("span.error").text( "Wrong email" );
		}
		else
		{
			$("#this_email_had").find("span.error").text( "邮箱错误" );
		}
        $("#this_email_had").show();
		$("#newemail")[0].focus();
		return false;
	}
	if(vldcode == '')
	{
		if(language == 'e')
		{
			$("#this_alert_err").find("span.error").text( "Wrong graphic code" );
		}
		else
		{
			$("#this_alert_err").find("span.error").text( '图形验证码错误' );
		}
        $("#this_alert_err").show();
		$("#validatecode")[0].focus();
		return false;
	}

	if( checkUserEmailFormat( email,language ) )
	{
		$("#this_email_had").hide();
		$('body').css('zoom','');
		$("#this_alert_err").hide();
		$.post( action_url, {action_type: "save", action: "user_email", newemail: email, vldcode:vldcode,isenglish: language} , function(data) {
		
		var result = JSON.parse(data);
		
		if(result.status == 1)
		{                        
            $("#this_success_email").html(email);
            var html = $("#this_success").html();		
            oLayerSettings = jQuery.FLayer.init();
            jQuery.FLayer.setContent(oLayerSettings,html);
            jQuery.FLayer.open(oLayerSettings);	
            if($("#newEmailStr").length > 0){
                $("#newEmailStr").text("（" + email + "）");
            }
            if($("#email").is('input'))
            {
                $("#email").val(email);	
                if(language == 'e'){
                    $("#emailpointer").html("Edit");
                }else{
                    $("#emailpointer").html("修改");
                }
            }
            else
            {
                aEmail = email.split("@");
                $("#email").html(aEmail[0].substring(0,2) + "***@" + aEmail[1]);	
            }   			
		}
		else if(result.result =="email已存在")
		{
			$("#this_email_had").show();			
			$('body').css('zoom','1');
			$("#forget_url").attr("href",$("#forget_url").attr("href")+$("#newemail").val()) ;
			Change_CodeImage();
		}
		else
		{
			$("#this_alert_err").show();
			$("#this_alert_content").html(result.result);
			Change_CodeImage();
		}
			
		} );
	}
    return false;
}

function chk_UserName( str,language )
{
    var usernameErr = $("#newusername_err").find("span.error");
    
	if( str == '' ){
		if(language == 'e')
		{
			usernameErr.text( "Please enter username" );
		}
		else
		{
			usernameErr.text( "请填写用户名" );
		}
        $("#newusername_err").show();
		return false;
	}
	if( str.length < 4 ){
		if(language == 'e')
		{
			usernameErr.text( "Username shall be at least 4-digits numbers/letters" );
		}
		else
		{
			usernameErr.text( "用户名至少4位数字或字母" );
		}
        $("#newusername_err").show();
		return false;
	}
	if( str.length > 100 ){
		if(language == 'e')
		{
			usernameErr.text( "Member ID shall be less than 50 characters" );
		}
		else
		{
			usernameErr.text( "您的用户名不能超过50位 " );
		}
        $("#newusername_err").show();
		return false;
	}
	
	var regu = "^([0-9a-zA-Z]+[_0-9a-zA-Z@.-]*)$"
	var re = new RegExp(regu);
	if( str.search( re ) != -1 ){
		var sReg = /^(1[3456789]{1,1}[0-9]{9,9})$/;
		if(sReg.test(str))
		{
			if(language == 'e')
			{
				usernameErr.text( "Please use correct member ID" );
			}
			else
			{
				usernameErr.text( "用户名不能为手机号" );
			}
            $("#newusername_err").show();
			return false;
		}
		else
		{
			return true;
		}
	}else{
		if(language == 'e')
		{
			usernameErr.text( "Username shall be at least 4-digits numbers/letters" );
		}
		else
		{
			usernameErr.text( "用户名至少4位数字或字母" );
		}
        $("#newusername_err").show();
		return false;
	}	
 }

function Save_UserName( language )
{
	var userpwd_v = $.trim($("#userpwd")[0].value);
	var newusername_v =  $.trim($("#newusername")[0].value).toLowerCase();
	var vldcode_v = $.trim($("#validatecode").val());
    $(".note_msg").hide();
	if(newusername_v == '')
	{
		if(language == 'e')
		{
			$("#newusername_err").find("span.error").text( "Please enter username" );
		}
		else
		{
			$("#newusername_err").find("span.error").text( "请填写用户名" );
		}
        $("#newusername_err").show();
		$("#newusername")[0].focus();
		return false;
	}
	
	if( userpwd_v == '' ){
		if(language == 'e')
		{
			$("#userpwd_err").find("span.error").text( "Your login password is incorrect" );
		}
		else
		{
			$("#userpwd_err").find("span.error").text( '密码错误，请填写该账号的登录密码来验证身份' );
		}
        $("#userpwd_err").show();
		$("#userpwd")[0].focus();
		return false;
	}
	if(vldcode_v == '')
	{
		if(language == 'e')
		{
			$("#this_alert_err").find("span.error").text( "Wrong graphic code" );
		}
		else
		{
			$("#this_alert_err").find("span.error").text( '图形验证码错误' );
		}
        $("#this_alert_err").show();
		$("#validatecode")[0].focus();
		return false;
	}
	
	if( chk_UserName( newusername_v,language ) )
	{
		var action_url = IPATH+"/resume/ajax/userinfo_edit.php?" + Math.random();
		$.post(action_url,{ isenglish:language,action: "user_name", action_type: "save",userpwd: userpwd_v, newusername: newusername_v, vldcode: vldcode_v} , function(data) {
			
		var result = JSON.parse(data);
		
		if(language == "e")
		{
			var html = '<div class="panel_lnp panel_py"><h2><p>Advice</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">Congratulations! Username updated.</strong></div></div></div>';
		}
		else
		{
			var html = '<div class="panel_lnp panel_py"><h2><p>资料修改</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">恭喜你，修改成功！</strong></div></div></div>';
		}
		
		if(result.status == 1)
		{
			oLayerSettings = jQuery.FLayer.init();
			jQuery.FLayer.setContent(oLayerSettings,html);
			jQuery.FLayer.open(oLayerSettings);
			$("#top_username").html(newusername_v.substring(0,22));
			setTimeoutClose();
		}
		else
		{			
			$("#this_alert_err").show();
			$("#this_alert_content").html(result.result);
			Change_CodeImage();
		}


		} );
	}else{
		$("#newusername")[0].focus();
		return false;
	}
}

function chkUpwdIsCorrect()
{
	var chkResult = 0;
	var str = $.trim($("#newuserpwd")[0].value);
	if(str.length == '')
	{
		chkResult = 1;

	}else if(str.length < 6 || str.length > 16)
	{
		chkResult = 2;
	}else
	{
		//检查密码中是否输入ascii码在[0,32],[127-255]之间的字符，这2个区间的字符非法
		var i,as_code;
		for(i = 0; i < str.length; i++)
		{
			as_code = str.charCodeAt(i);
			if(as_code < 33 || as_code > 126 )
			{
				chkResult = 3;
				return chkResult;
			}
		}

		//检查密码与用户名或者邮箱是否重复
		var user_email = $.trim($("#my_email").val());
		var user_name  = $.trim($("#my_username").val());
		if(str == user_email.toLowerCase() || str == user_name.toLowerCase())
		{
			chkResult = 4;
		}else //检查密码是否单一类型
		{
			//单一数字，字母，特殊符号
			var re_num    = /^[0-9]+$/g;
			var re_char	  = /^[a-zA-Z]+$/gi;
			var re_spchar = /^[^0-9a-zA-Z]+$/gi;
			if( re_num.test(str) || re_char.test(str) || re_spchar.test(str))
			{
				chkResult = 3;
			}
		}
	}
	return chkResult;
}

function Save_PassWord( language )
{
	var olduserpwd_v = $.trim($("#olduserpwd")[0].value);
	var newuserpwd_v = $.trim($("#newuserpwd")[0].value);
	var newuserpwdcfm_v = $.trim($("#newuserpwdcfm")[0].value);
	var vldcode_v       = $.trim($("#validatecode")[0].value);
    $(".note_msg").hide();

	if( olduserpwd_v == '' ){
		if(language == 'e')
		{
			$("#password_err").find("span.error").text( "Wrong password" );
		}
		else
		{
			$("#password_err").find("span.error").text( "密码错误" );
		}
		$("#olduserpwd")[0].focus();
        $("#password_err").show();
		return false;
	}

	var chkResult = chkUpwdIsCorrect();
	var error_msg='';
	switch(chkResult)
	{
		case 1:
			error_msg = language == 'e' ? 'Please enter new password' : '请填写新密码';
			break;
		case 2:
			error_msg = language == 'e' ? 'Password does not meet requirements' : '不符合密码格式要求';
			break;
		case 3:
			error_msg = language == 'e' ? 'Password is a combination of 6-16 numbers and characters' : '密码必须为6-16位字母/数字/符号组合';
			break;
		case 4:
			error_msg = language == 'e' ? 'Cannot be the same as the user name or email' : '新密码不能和用户名或邮箱一样';
			break;
	}
	if(error_msg != '')
	{
		$("#newuserpwd_err").find("span.error").text( error_msg );
        $("#newuserpwd_err").show();
		$("#newuserpwd")[0].focus();
		return false;
	}

	if( newuserpwdcfm_v == '' || newuserpwd_v != newuserpwdcfm_v ){
		if(language == 'e')
		{
			$("#newuserpwdcfm_err").find("span.error").text( "New passwords are not consistent" );
		}
		else
		{
			$("#newuserpwdcfm_err").find("span.error").text( "与新密码不一致" );
		}
		$("#newuserpwdcfm")[0].focus();
        $("#newuserpwdcfm_err").show();
		return false;
	}

	if(vldcode_v == '')
	{
		if(language == 'e')
		{
			$("#this_alert_err").find("span.error").text( "Wrong graphic code" );
		}
		else
		{
			$("#this_alert_err").find("span.error").text( '图形验证码错误' );
		}
		$("#validatecode")[0].focus();
        $("#this_alert_err").show();
		return false;
	}

	var action_url = IPATH+"/resume/ajax/userinfo_edit.php?" + Math.random();
	$.post(action_url,{isenglish:language,action:"user_password",action_type:"save",olduserpwd:olduserpwd_v,newuserpwd:newuserpwd_v,newuserpwdcfm:newuserpwdcfm_v,vldcode:vldcode_v},function(data) {
				
		var result = JSON.parse(data);

		if(language == "e")
		{
			var html = '<div class="panel_lnp panel_py"><h2><p>Advice</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">Congratulations! Password updated.</strong></div></div></div>';
		}
		else
		{
			var html = '<div class="panel_lnp panel_py"><h2><p>资料修改</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">恭喜你，修改成功！</strong></div></div></div>';
		}

		if(result.status == 1)
		{
			oLayerSettings = jQuery.FLayer.init();
			jQuery.FLayer.setContent(oLayerSettings,html);
			jQuery.FLayer.open(oLayerSettings);
			setTimeoutClose();
		}
		else
		{
			$("#this_alert_err").show();
			$("#this_alert_content").html(result.result);
			Change_CodeImage();
		}
	});
    return false;
}


//返回强度级别
function checkStrong(password){
	var chkResult = chkUpwdIsCorrect();
	var pwdLevel = '0';
	if( chkResult == 0 ) //chkResult=0说明密码中数字，字母，特殊符号至少包含2种且长度在6-16
	{
		var re_num    = /[0-9]+/g;	    //包含数字
		var re_char	  = /[a-zA-Z]+/gi; //包含字母
		var re_spchar = /[^0-9a-zA-Z]+/gi; //包含特殊字符
		if(password.length > 5 && password.length < 11) //6-10 中或者低
		{
			if(re_num.test(password) && re_char.test(password) && re_spchar.test(password))
			{
				pwdLevel = '2';
			}else
			{
				pwdLevel = '1';
			}
		}else if(password.length > 10 && password.length < 17) //11-16 中或者高
		{
			if(re_num.test(password) && re_char.test(password) && re_spchar.test(password))
			{
				pwdLevel = '3';
			}else
			{
				pwdLevel = '2';
			}
		}
	}
	return pwdLevel;
}

//显示颜色
function pwStrength(pwd)
{
	$("#userpwd_strength").show();
	var O_color="#eeeeee";
	var L_color="#eb0027";
	var M_color="#ffc200";
	var H_color="#11b100";

	var Lcolor,Mcolor,Hcolor,O_color;

	$("#strength_L")[0].style.color = "#000000";
	$("#strength_M")[0].style.color = "#000000";
	$("#strength_H")[0].style.color = "#000000";

	if (pwd==null||pwd=='')
	{
		Lcolor=Mcolor=Hcolor=O_color;
	}
	else
	{
		S_level=checkStrong(pwd);
		switch(S_level) {
			case '0':
				Lcolor=Mcolor=Hcolor=O_color;
				break;
			case '1': //低
				Lcolor=L_color;
				Mcolor=Hcolor=O_color;
				$("#strength_L")[0].style.color = "#ffffff";
				break;
			case '2': //中
				Lcolor=Mcolor=M_color;
				Hcolor=O_color;
				$("#strength_L")[0].style.color = "#ffffff";
				$("#strength_M")[0].style.color = "#ffffff";
				break;
			case '3': //高
				Lcolor=Mcolor=Hcolor=H_color;
				$("#strength_L")[0].style.color = "#ffffff";
				$("#strength_M")[0].style.color = "#ffffff";
				$("#strength_H")[0].style.color = "#ffffff";
			break;
		}
	}
	$("#strength_L")[0].style.background = Lcolor;
	$("#strength_M")[0].style.background = Mcolor;
	$("#strength_H")[0].style.background = Hcolor;
	return;
}

var mobileComponent = function() {
    return {
	        sMobileErrorMessage_CHINA_CN: '手机号码格式不正确，请重新输入',
	        sMobileErrorMessage_CHINA_EN: 'Wrong mobile',
	        sMobileEmptyErrorMessage_CN: '请填写手机号',
	        sMobileEmptyErrorMessage_EN: 'Please enter mobile',
	        sMobileErrorMessage_CN: '请填写大陆手机号',
	        sMobileErrorMessage_EN: 'Please enter mobile registered in China mainland',
	        sBindMobileErrorMessage_MOBILE_SAME_CN: '请填写新手机号',
	        sBindMobileErrorMessage_MOBILE_SAME_EN: 'Please enter new mobile',
	        sBindMobileErrorMessage_foreign_EN:'You can save mobile directly as it is not registered in China mainland. (This might cause security risk in your account)',
			sBindMobileErrorMessage_foreign_CN:'该号码为非大陆手机号，确认使用该号码请直接点击“保存”（注意：未验证手机号码的账号会存在严重安全隐患）',
	        checkMobile: function(iMobile, sMpCountry) {
				var sReg = /^(1[3456789]{1,1}[0-9]{9,9})$/;
				var lengthFormat = iMobile.length == 11;

				if ('' != sMpCountry && undefined != sMpCountry && 'CN' != sMpCountry) {
					sReg = /^([0-9]{0,15})$/;
					lengthFormat = iMobile.length <= 15;

					if ($.inArray(sMpCountry, d_specialNation) != -1)
					{
						lengthFormat = (iMobile.length < 15) && (iMobile.length >= 8);
					}
				}

				return (sReg.test(iMobile) && lengthFormat);
    	}
	}
};

//定时器
var wait=60;
var id_set_timeout = null;
function sendPhoneCodetime(isEnglish)
{
	var obj = $('#btn7');
	var nation = $.trim($('#selectednatonid').val());
	if(document.getElementById("btn7")){
		if(wait <= 0){
            $('#modify_phone_err_tr').hide();
			if (nation == 'CN' || nation == '')
			{
				$('#mobiletips').show();
			}
            $('#btn7').removeClass('gain_grey');
            $('#btn7').addClass('gain');
			id_set_timeout = null;
			$("#btn7").attr('disabled',false);
            if (isEnglish == 'e') {
                obj.attr('value',"Send Code");
            } else {
                obj.attr('value',"发送验证码");
            }
            $('#newphonenum').attr('disabled',false);
            $('#newphonenum').css('background','');
	    	document.getElementById("btn7").onclick=function(){sendPhoneCode(isEnglish);}
	        wait = 60;
		}else{
            $("#btn7").attr('disabled',true);
	    	document.getElementById("btn7").onclick=function(){return false;};
            if (isEnglish == 'e') {
                obj.attr('value',"Resend(" + wait + ")");
            } else {
                obj.attr('value',"重新发送(" + wait + ")");
            }
	    	wait--;
	        id_set_timeout = setTimeout(function() {
	        	sendPhoneCodetime(isEnglish);
	        },
	        1000);
		}
	}else{
		clearTimeout(id_set_timeout);
		id_set_timeout = null
		wait = 60;
	}
}

//修改手机号 提交修改
function Save_Phone(isEnglish)
{
	var phone_num = $('#newphonenum').val();
	var oldphone = $('#oldPhone').val();
	var nation = $.trim($('#selectednatonid').val());

	var phoneVerifyCode = $('#validatecode').attr('value');
	if(chk_phone_num(isEnglish,"mobile") == 1 && $.trim(phoneVerifyCode) == ''){
          if(isEnglish == 'e')
  		{
              $('#modify_phone_err_notice').html('Wrong SMS code');
              $('#modify_phone_err_tr').show();
  		}
  		else
  		{
              $('#modify_phone_err_notice').html('短信验证码错误');
              $('#modify_phone_err_tr').show();
  		}
		$('#validatecode').focus();
		return false;
	} else if((chk_phone_num(isEnglish,"mobile") == 1 && $.trim(phoneVerifyCode) != '') || chk_phone_num(isEnglish,"mobile") == 2) {
		$("#modify_phone_err_tr").hide();
		//ajax 提交修改
		var action_url = IPATH+"/resume/ajax/userinfo_edit.php?" + Math.random();
		$.post( action_url, {action_type: "save", action: "user_phone",phone:oldphone,newphone: phone_num, nation: nation, isenglish: isEnglish, phonecode:phoneVerifyCode } , function(data) {
		
		var result = JSON.parse(data);
		
		if(result.status == 1)
		{           
            if(isEnglish == "e")
            {
                var html = '<div class="panel_lnp panel_py"><h2><p>Advice</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">Congratulations! Phone updated.</strong></div></div></div>';
            }
            else
            {
                var html = '<div class="panel_lnp panel_py"><h2><p>资料修改</p><a class="layer_close" href="javascript:;"><i></i></a></h2><div class="pannel_con"><div class="gp3"><strong class="wd f16 center c_orange">恭喜你，修改成功！</strong></div></div></div>';
            }
            
            oLayerSettings = jQuery.FLayer.init();
            jQuery.FLayer.setContent(oLayerSettings,html);
            jQuery.FLayer.open(oLayerSettings);

			if (nation != 'CN')
			{
				if (typeof d_nation[nation] != 'undefined')
				{
					phone_num = d_nation[nation]['code'] + '-' + phone_num;
				}
			}

			if($("#tele").is('input'))
            {
                $("#tele").val(phone_num);
                if(isEnglish == 'e'){
                    $("#mobilepointer").html("Edit");
                }else{
                    $("#mobilepointer").html("修改");
                }
            }
            else
            {
                $("#tele").html(phone_num);					
            }
            $("#mobile_confirm_verifystatus").val("1");
            $("#tri_mobilepointer").parent().removeClass("pointer").attr("onclick", "");
            $("#tri_mobilepointer").remove();   
            setTimeoutClose();	
		}
		else
		{
			$("#modify_phone_err_tr").show();
			$("#modify_phone_err_notice").html(result.result);
		}
		
		});//end save phone post
		
	}
	return false;
}

function chk_phone_num(isEnglish,ismobile){
	var phone_num = $.trim($('input[name="newPhone"]').attr('value'));
	var nation = ($('#selectednatonid').val() == '') ? 'CN' : $('#selectednatonid').val();
	var oldPhone = $('#oldPhone').attr('value');
	var oldNation = ($('#oldNation').val() == '') ? 'CN' : $('#oldNation').val();
    var verifystatus = $('#verifystatus').attr('value');
	var errMsg = '';
    var objPhoneCheck =  new mobileComponent();//使用的是本文件的mobileComponent
	if ($.trim(phone_num) == '') {
        if (isEnglish == 'e') {
            errMsg = objPhoneCheck.sMobileEmptyErrorMessage_EN;
        } else {
            errMsg = objPhoneCheck.sMobileEmptyErrorMessage_CN;
        }
	} else {
		if (!objPhoneCheck.checkMobile(phone_num, nation)) {
			if (isEnglish == 'e') {
				errMsg = objPhoneCheck.sMobileErrorMessage_CHINA_EN;
			} else {
				errMsg = objPhoneCheck.sMobileErrorMessage_CHINA_CN;
			}
		}
		if (phone_num == oldPhone && nation == oldNation && verifystatus == 3) {
			if (isEnglish == 'e') {
				errMsg = objPhoneCheck.sBindMobileErrorMessage_MOBILE_SAME_EN;
			} else {
				errMsg = objPhoneCheck.sBindMobileErrorMessage_MOBILE_SAME_CN;
			}
		}
	}
	if(errMsg != '')
	{
		$("#modify_phone_err_notice").html(errMsg);
		$("#modify_phone_err_tr").show();
		return 0;
	}
	else
	{
		$('#modify_phone_err_notice').html('');
		$('#modify_phone_err_tr').hide();
		return 1;
	}
}


function sendPhoneCode(isEnglish){
    if ($("#btn7").attr('disabled') == 'disabled') return;
    $("#btn7").attr('disabled',true);

	var phoneNum = $.trim($('input[name="newPhone"]').attr('value'));
	var oldPhone = $('#oldPhone').attr('value');
	var nation = $.trim($('#selectednatonid').val());
	if(chk_phone_num(isEnglish, 'mobile') == 1 && chk_phone_num(isEnglish) == 1){
		var url = LOGINPATH+"/ajax/sendphonecode.php?rand="+new Date().getTime()+"&jsoncallback=?&";
		var data = { mobile: phoneNum, nation: nation,isEnglish:isEnglish, type:10 };
		//ajax 发送手机验证码短信
		$.getJSON(url, data , function(result) {
            $("#btn7").attr('disabled',false);
			if(result.status != 1)
			{
                $("#modify_phone_err_tr").show();
                $("#modify_phone_err_notice").html(result.result);
			}
			else
			{
				//定时器
				sendPhoneCodetime(isEnglish);
				//发送成功
				if(isEnglish == 'c')
				{
					$("#modify_phone_err_tr").show();
					$("#modify_phone_err_notice").html("验证码已发送，请查看手机。");
				}
				else
				{
					$("#modify_phone_err_tr").show();
					$("#modify_phone_err_notice").html('We have sended the code to your phone，please check your SMS');
				}
			}
		})// end getJSON
	}
    else
    {
        $("#btn7").attr('disabled',false);
    }
}

function setTimeoutClose()
{
	//2秒自动隐藏处理
	if ( this.showMemoTimtout ) {
		clearTimeout( this.showMemoTimtout );
	}
	this.showMemoTimtout = setTimeout( function() {
		$("#layer_id").fadeOut(300);
		$("#layer_back_drop").fadeOut(300);
        if($.trim($("#needrefresh").val()) == "1")
        {
            window.location.reload();
        }       
	} , 2000 );
}

//国际短信
function bindNation(p_aNation)
{
    var phoneInput = arguments[1] || 'phone';
    phoneInput =  $('#' + phoneInput);
    var phoneErr =  arguments[2] || 'phone_err';
    phoneErr = $('#' + phoneErr);
    var phoneOk =  arguments[3] || 'phone_ok';
    phoneOk = $('#' + phoneOk);
    var sLang = (typeof window.cfg.lang == 'undefined' || window.cfg.lang != 'e') ? 'c' : 'e';

    //国家列表初始化
    var oNationList = $('#nationlist');
    var sHtml = '';
	$.each(d_sortNation, function(sortId, nationArr){
		if ($.isArray(nationArr) && nationArr.length > 0)
		{
			var sHotCityTip = (sLang == 'e') ? 'Hot Spots' : '热门地区';
			sHtml = '<li class="tl">'+ ((sortId == 'hot') ? sHotCityTip : sortId) +'</li>';
			oNationList.append(sHtml);
			$.each(nationArr, function(id,value){
				if (p_aNation.hasOwnProperty(value))
				{
					sHtml = '<li id="nationlist_'+ value +'" nationid="'+ value +'" title="'+ p_aNation[value][sLang] +'"><span>' + p_aNation[value][sLang] + '</span><i>+' + p_aNation[value]['code'] + '</i></li>';
					oNationList.append(sHtml);
				}
			});
		}
	});

	oNationList.find("li:not('.tl'):first").addClass('on');
	oNationList.find("li:not('.tl')").click(function(){
		var sNationId = $(this).attr('nationid');
		oNationList.find('li.on').removeClass('on');
		$(this).addClass('on');
		//$("#selectednation").val('').attr('placeholder', p_aNation[sNationId][sLang]).val(p_aNation[sNationId][sLang]);
		$("#selectednationcode").val('').attr('placeholder','+' + p_aNation[sNationId]['code']).val('+' + p_aNation[sNationId]['code']);
		$("#selectednatonid").val(sNationId);

		oNationList.scrollTop($(this).position().top-oNationList.find('li:first').position().top);
		var lengthLimit = (sNationId == 'CN') ? 11 : 15;
		phoneInput.attr('maxlength', lengthLimit).val('');
		phoneErr.hide();
		phoneOk.hide();
	});

    //国家列表下拉
    $('body').click(function(){
        oNationList.hide();
    });
    $('#nationbtn').click(function(event) {
        event.stopPropagation();
        oNationList.toggle();
    });
    //自动填充国际短信
    if ($("#selectednatonid").val() != 'CN')
    {
        var tmp = phoneInput.val();
        var tmpFlag = false;

        if (!(phoneErr.is(":hidden") || phoneErr.text() == ''))
        {
            tmpFlag = true;
        }
        $('#nationlist_' + $("#selectednatonid").val()).click();
        if (tmpFlag == true)
        {
            phoneErr.show();
        }
        phoneInput.val(tmp);
    }
}