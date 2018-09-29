<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>分团委登录</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ui-dialog.css" rel="stylesheet">
    <style>
        html,body{
            height: 100%;
        }
        body{
            border-top: 4px solid #44b549;
            background: rgb(93,172,129) url('//o.bysjy.com.cn/public/images/bg/login_bg_2018-06-05-03.jpg');
            background-size: cover;

        }
        .log-jumbotron {
            position: relative;
            overflow: hidden;
            background-color: rgba(0,0,0,0.1);
        }
        .manage-header{
            border-top: none !important;
            opacity: 0.9;
        }
        .outerContainer{
            width: 1200px;
            margin: auto;
            min-height: 95%;
        }
        .gray-bottom{
            width: 100%;
            background-color: rgb(241,242,242);
            position: absolute;
            top: 64px;
            height: 351px;
        }
        #reset_block{
            width:100%;
        }
        #reset_block td{
            padding: 5px 0;
        }
        #reset_block #valid_code{
            width:129px;
            display: inline-block;
            margin-right: 10px;
        }
        .login_tips{
            cursor:pointer;
            font-size:12px;
            color:gray;
            position: absolute;
        }
        .login_reg{
            color:#0c8ce9;
            font-size: 12px;
            position: absolute;
            right: 0;
        }
        #span_ico_eye{
            position:absolute;
            right:9px;
            top:16px;
            cursor:pointer
        }
        #reg_ico_eye{
            position:absolute;
            right:9px;
            top:8px;
            cursor:pointer
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
            padding: 0 40px;
            background-color: #fff;
            border-radius: 8px;
        }
        @media (max-width: 1100px) {
            .log-panel {
                left: auto;
                position: relative;
                top: 50px;
                margin: 0 auto;
            }

            .log-publicity {
                top: 300px;
                right: auto;
                position: relative;
                margin: 0 auto;
                margin-top: 0 !important;
            }
        }
        .div-reg{
            position: relative;
            line-height: 40px;
            height: 20px;
        }

        .reg-dialog{
            background: rgba(0, 0, 0, 0.3);
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            overflow: hidden;
            user-select: none;
            z-index: 99;
            opacity: 1;
            display: none;
        }
        .reg-dialog-content{
            width:500px;
            padding: 10px 40px 20px 40px;
            background-color: #f0f2f5;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1), 0 0 256px rgba(255, 255, 255, .3);
            border-radius: 0 0 5px 5px;
            margin: 0 auto;
            display: flex;
            flex-flow: column;
        }
        .form-control{
            margin-bottom: 5px;
        }
        .login_qr{
            margin: 20px 0;
        }
    </style>
</head>
<body class="loginpage" style="overflow: hidden">
    <div class="manage-header">
        <div class="container-fixed">
	        <img src="http://yun-campus-res.oss-cn-shenzhen.aliyuncs.com/school/1495449423-3394.png" height="70px">
	        <span class="pull-right qq-help" style="margin: 10px 0 0 0"></span>
        </div>
    </div>
    <div class="container">
        <div class="log-jumbotron" style="height: 1000px;">
            <div id="particles-js"></div>
            <div class="log-panel form-signin">
            <form action="instLoginAction" method="post">
                <div class="login-form">
                    <p class="f18 mb18">分团委登录<span style="color: orangered"></span></p>
                    <s:fielderror cssStyle="color:red;"></s:fielderror>
                    <div class="text-wrap">
                        <span class="icon icon-name"></span>
                        <input type="text" placeholder="学工号" id="user_name" name="number" value="" required >
                        <input type="hidden" value="1" name="permission">
                    </div>
                    <div class="text-wrap" id="div_password">
                        <span class="icon icon-pass"></span>
                        <input data="1433" type="password" placeholder="密码" id="password" name="password">
                        <input type="hidden" id="passwd_enc" name="LoginForm[password]">
                    </div>
                    <div class="text-wrap" id="div_code_input" style="width: 200px;float: left;display:none">
                        <span class="icon icon-pass"></span>
                        <input id="valid_code" type="text" style="width: 150px" placeholder="验证码" name="LoginForm[validcode]">
                    </div>
                    <div class="text-wrap" id="div_code" style="float: left;padding: 3px;border-left: none;display:none">
                        <img id="img_valid_code" alt="点击刷新验证码" title="点击刷新验证码" src="/login/validcode" >
                    </div>
                    <div class="login">
                        <input type="checkbox" id="remember" />
                        <label for="remember" class="f14">记住登录账号</label>
                        <button type="submit" id="login_btn" class="btn-pr ok-btn f14 login-btn" data-id="1433">登录</button>
                    </div>
                    <p class="error-info color-red" id="error_info"></p>
                    <div class="div-reg">
                        <p id="showReset" class="login_tips">忘记登录密码?</p>
                     </div>
                  </div>
                <div style="display:none;" class="login_qr">
                    <img src="" style="width:180px;display:block;margin:0 auto;">
                    <div style="text-align: center;font-size: 14px;">
                        <p>打开微信</p>
                        <p>扫一扫绑定账号进入系统</p>
                    </div>
                </div>
             </form>
            </div>
            <div class="log-publicity">
                <h1 style="font-size:30px;"><span>海阔凭鱼跃 · 天高任鸟飞</span></h1>
                <h4 style="color: rgba(255,255,255,.6);">覆盖：20个省200+高校&nbsp;&nbsp;&nbsp;&nbsp;190万+毕业生&nbsp;&nbsp;&nbsp;&nbsp;20万+单位入驻</h4>
                <br>
                <p style="color: rgba(255,255,255,.6);">帮助天下毕业生走稳求职第一步
                    <!--<a href="http://www.bibibi.net" style="color: rgba(255,255,255,.6);" target="_blank">Copyright © 2015-2018 云研科技 </a>-->
                </p>
            </div>

        </div>
    </div>

        <script>
        var __ver = '20180703';
    </script>
<script type="text/javascript" src="js/jquery-cookie.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/particles.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $(window).resize(function () {
                var myDivHeight = $(window).height() - 60;
                $(".log-jumbotron").css("height", myDivHeight);
            }).resize();

            particlesJS('particles-js', {
                particles: {
                    color: '#fff',
                    shape: 'triangle', // "circle", "edge" or "triangle"
                    opacity: 0.5,
                    size: 5,
                    size_random: true,
                    nb: 150,
                    line_linked: {
                        enable_auto: true,
                        distance: 150,
                        color: '#fff',
                        opacity: 0.5,
                        width: 1,
                        condensed_mode: {
                            enable: false,
                            rotateX: 600,
                            rotateY: 600
                        }
                    },
                    anim: {
                        enable: true,
                        speed: 2
                    }
                },
                interactivity: {
                    enable: true,
                    mouse: {
                        distance: 300
                    },
                    detect_on: 'canvas', // "canvas" or "window"
                    mode: 'grab',
                    line_linked: {
                        opacity: 0.5
                    },
                    events: {
                        onclick: {
                            enable: true,
                            mode: 'push', // "push" or "remove"
                            nb: 4
                        }
                    }
                },
                /* Retina Display Support */
                retina_detect: true
            });
        });
        var is_sso = 0;    </script>
</body>
</html>

