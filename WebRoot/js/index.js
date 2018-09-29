/**
 * Created by Administrator on 2016/4/9.
 */

//鐗堟湰鏇存柊
var config = {
    base: '/platform',
    paths: {
        'libs': '/public/js/libs',
        'plugs':'/public/js/plugs'
    },
    comboSuffix: '?v='+__ver
};
seajs.config(config);

var COOKIE_NAME = 'student_no';
if ($.cookie(COOKIE_NAME) && $.cookie(COOKIE_NAME) != "null") {
    $("#user_name").val($.cookie(COOKIE_NAME));
    document.getElementById("remember").checked = true;
}
seajs.use(['libs/md5','libs/dialog'],function(security) {
    $('#img_valid_code').click(function () {
        $(this).attr('src', '/login/validcode?' + Math.random());
    });
    var _submit_flag = false;
    var login = function () {
        if(is_sso == 1){
            //鍗曠偣鐧诲綍鐩存帴鐧诲綍
        }else{
            var user_name = $.trim($("#user_name").val());
            var school_id = $(this).data('id');
            if (user_name.length < 1) {
                if (school_id == '196') {
                    $.showMessage('璇疯緭鍏�18浣嶈韩浠借瘉鍙�');
                } else {
                    $.showMessage('璇疯緭鍏ュ鍙�');
                }
                return false;
            }
            var password = $.trim($('#password').val());
            if (password.length < 1) {
                if (school_id == '196') {
                    $.showMessage('璇疯緭鍏�18浣嶈韩浠借瘉鍙�');
                } else {
                    $.showMessage('璇疯緭鍏ュ瘑鐮�');
                }
                return false;
            }
            password = security.hex_md5(password);

            var valid_code = $.trim($("#valid_code").val());

        }
        if (!_submit_flag) {
            _submit_flag = true;
            $.ajax({
                url: '/login/submit',
                type: 'post',
                dataType: "json",
                data: {
                    user_name: user_name,
                    password: password,
                    valid_code: valid_code
                },
                success: function (result) {
                    _submit_flag = false;
                    if (result.code == 1) {
                        if (result.data.qr_code_url) {
                            $('.login_qr img').attr('src', result.data.qr_code_url)
                            $('.login_qr').show();
                            $('.login-form').hide();
                            setTimeout(function(){
                                $("#login_btn").trigger('click');
                            },5000);
                        } else {
                            setCookie();
                            $.cookie('remember_inform_student',null,{path: '/'});
                            $.showMessage('鐧诲綍鎴愬姛');
                            if ($.cookie('isBack')=='true') {
                                $.cookie('isBack', 'false');
                                history.back();
                            } else {
                                location.href = '/student';
                            }
                        }
                    }
                    else {
                        if (!!result.data.logo_need_valid) {
                            $('#div_code_input').show();
                            $('#div_code').show();
                        }
                        $('#img_valid_code').attr('src', '/login/validcode?' + Math.random());
                        $.showMessage(result.msg,3000);
                    }
                },
                error:function(){
                    _submit_flag = false;
                    $.showMessage('鐧诲綍澶辫触锛屾湇鍔″櫒杩炴帴澶辫触锛�');
                }
            });
        } else {
            $.showMessage('璇蜂笉瑕侀噸澶嶇櫥褰�');
        }
    };
    $('.login-form').on('click', '#login_btn', function() {
        login();
    });
    if(is_sso == 1){
        login();
    }
    var setCookie = function () {
        if (document.getElementById("remember").checked) {
            $.cookie(COOKIE_NAME, $("#user_name").val(), {path: '/', expires: 10});
            //var date = new Date();
            //date.setTime(date.getTime() + (3 * 24 * 60 * 60 * 1000)); //涓夊ぉ鍚庣殑杩欎釜鏃跺€欒繃鏈�
            //$.cookie(COOKIE_NAME, $("#username").val(), { path: '/', expires: date });
        } else {
            $.cookie(COOKIE_NAME, null, {path: '/'});  //鍒犻櫎cookie
        }
    };

    //蹇樿瀵嗙爜
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
            return $.showMessage('瀛﹀彿涓嶈兘涓虹┖锛�');
        }
        if (!sfzhm) {
            return $.showMessage('韬唤璇佸彿鍚庡叚浣嶄笉鑳戒负绌猴紒');
        }
        if (!password) {
            return $.showMessage('鏂板瘑鐮佷笉鑳戒负绌猴紒');
        }
        if (!valid_code) {
            return $.showMessage('鍥惧舰楠岃瘉鐮佷笉鑳戒负绌猴紒');
        }

        var data = {
            user_name: user_name,
            sfzhm: sfzhm,
            password: password,
            valid_code: valid_code
        };

        ajaxReset(data);
    });

    $('.login-form').on('click', '#span_ico_eye', function(){
        var is_eye_open = $(this).hasClass('glyphicon-eye-open');
        if(is_eye_open){
            $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('title', '瀵嗙爜涓嶅彲瑙�');
            $('#password').attr('type', 'password');
        }
        else{
            $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('title', '瀵嗙爜鍙');
            $('#password').attr('type', 'text');
        }
    });


    //娉ㄥ唽
    $('.login-form').on('click', '#showReg', function() {
        $("#reg_block").show();
    });
    //娉ㄥ唽
    $('.login-form').on('click', '#showReg', function() {
        $("#reg_block").show();
    });
    //鍙栨秷娉ㄥ唽
    $('#reg_hide').click(function () {
        $("#reg_block").hide();
    });
    //鍒锋柊楠岃瘉鐮�
    $('.img_code').click(function () {
        $('.img_code').attr('src', '/login/validcode?' + Math.random());
    });
    //娉ㄥ唽-鏄剧ず瀵嗙爜
    $('#reg_ico_eye').click(function(){
        var is_eye_open = $(this).hasClass('glyphicon-eye-open');
        if(is_eye_open){
            $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('title', '瀵嗙爜涓嶅彲瑙�');
            $('#reg_password').attr('type', 'password');
        }
        else{
            $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('title', '瀵嗙爜鍙');
            $('#reg_password').attr('type', 'text');
        }
    });

    var _reg_flag = false;
    //娉ㄥ唽-鎻愪氦
    $("#btnReg").click(function () {
        //鍙栨暟鏍￠獙蹇呭～
        var data = {
            reg_mobile:$.trim($("#reg_mobile").val()),
            reg_password:$.trim($("#reg_password").val()),
            reg_valid_code:$.trim($("#reg_valid_code").val()),
            reg_year:$.trim($("#reg_year").val()),
            reg_school_name:$.trim($("#reg_school_name").val()),
            reg_zy:$.trim($("#reg_zy").val()),
            reg_xl:$.trim($("#reg_xl").val()),
            reg_xh:$.trim($("#reg_xh").val()),
            reg_xm:$.trim($("#reg_xm").val()),
            reg_szfh:$.trim($("#reg_szfh").val())
        }
        for(var key in data){
            if(data[key] == '') {
                $.showMessage("璇疯緭鍏�" + $("#" + key).prop('placeholder'));
                $("#" + key).focus();
                return;
            }
        }
        //瀵嗙爜涓嶈兘灏忎簬6浣嶆暟
        if(data.reg_mobile.length != 11){
            $.showMessage('璇疯緭鍏ユ纭殑鎵嬫満鍙�');
            $("#reg_mobile").focus();
            return;
        }
        //瀵嗙爜涓嶈兘灏忎簬6浣嶆暟
        if(data.reg_password.length < 6){
            $.showMessage('瀵嗙爜涓嶈兘灏忎簬6浣嶆暟');
            $("#reg_password").focus();
            return;
        }

        if (!_reg_flag) {
            _reg_flag = true;
            $.ajax({
                url: '/login/reg',
                type: 'post',
                dataType: "json",
                data: data,
                success: function (result) {
                    _reg_flag = false;
                    $.showMessage(result.msg,2000);
                    if (result.code == 1) {
                        $("#reg_block").hide();
                        //鑷姩濉厖璐﹀彿瀵嗙爜鐧诲綍
                        $("#user_name").val(data.reg_mobile);
                        $("#password").val(data.reg_password);
                        login();
                    }
                    else {
                        $('.img_code').attr('src', '/login/validcode?' + Math.random());
                    }
                },
                error:function(){
                    _reg_flag = false;
                    $.showMessage('鐧诲綍澶辫触锛屾湇鍔″櫒杩炴帴澶辫触锛�');
                }
            });
        } else {
            $.showMessage('璇蜂笉瑕侀噸澶嶇櫥褰�');
        }
    });

    $('.login-form').on('click', '.img_code', function(){
        $(this).attr('src', '/login/validcode?'+Math.random());
    });

    var ajaxReset = function(data) {
        $.ajax({
            url: '/login/reset_password',
            type: 'post',
            data: data,
            success: function(result) {
                if (result.code == 1) {
                    $.showMessage('淇敼鎴愬姛锛�');
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
    resetHtml.push('<p class="f18 mb18">閲嶇疆瀵嗙爜</p>');
    resetHtml.push('<table id="reset_block">');
    resetHtml.push('<tr><td>瀛﹀彿</td><td><input type="text" id="user_name" class="form-control"></td></tr>');
    resetHtml.push('<tr><td>韬唤璇佸悗鍏綅</td><td><input type="text" id="sfzhm" class="form-control"></td></tr>');
    resetHtml.push('<tr><td>鏂板瘑鐮�</td><td style="position:relative;"><input type="text" id="password" class="form-control"><span class="glyphicon glyphicon-eye-open" title="瀵嗙爜鍙" id="span_ico_eye" aria-hidden="true"></span></td></tr>');
    resetHtml.push('<tr><td>鍥惧舰鐮�</td><td><input type="text" id="valid_code" class="form-control"><img class="img_code" src="/login/validcode" style="height:33px;"></td></tr>');
    resetHtml.push('<tr><td><input type="button" id="resetPassword" class="btn-pr ok-btn" value="鎻愪氦"></td><td><span id="showLogin" class="login_tips" style="margin-left:10px;">宸叉湁璐﹀彿锛熷幓鐧诲綍</span></td></tr>');
    resetHtml.push('</table>');
    resetHtml = resetHtml.join('');

});