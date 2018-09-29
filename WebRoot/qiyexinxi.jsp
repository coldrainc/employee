<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>企业信息</title>
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="keywords" content="全国 企业 信用 信息 公示" />
		<meta name="description" content="国家企业信用信息公示系统" />
		<meta http-equiv="Cache-Control" content="no-transform" />

		<link rel="stylesheet" href="qiyexinxi_css/zxx.lib.css" />
		<link rel="stylesheet" href="qiyexinxi_css/portal.css" />
		<link rel="stylesheet" href="qiyexinxi_css/newInfo.css" />
		<link href="css/css7.css" rel="stylesheet" />
		<link href="css/css8.css" rel="stylesheet" />
		<link href="css/css9.css" rel="stylesheet" />
		<link href="css/css10.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/amaze.min.css" />
		<link rel="stylesheet" href="css/defined.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/amazeui.min.js"></script>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">

		function Tabs1(tabobj, obj) {
			var tablist = $("#" + tabobj + " div");
			for (var i = 0; i < tablist.size(); i++) {
				if (tablist[i].id == obj.id) {
					$("#" + tabobj + "_" + i).attr("class", "findhy" + "-1");
					$("#" + tabobj + "_box_" + i).show();
				} else {
					$("#" + tabobj + "_" + i).attr("class", "findhy" + "-0");
					$("#" + tabobj + "_box_" + i).hide();
				}
			}
		}
		function showAndHidden1(){
	        var login=document.getElementById("login");
	        var dwfb=document.getElementById("dwfb");
	        if(login.style.display=='block') login.style.display='none';
	        else login.style.display='block';
	        if(dwfb.style.display=='block') dwfb.style.display='none';
	        else dwfb.style.display='block';
	    }
	
	    function showAndHidden2(){
	        var zpxz=document.getElementById("zpxz");
	        var zpxq=document.getElementById("zpxq");
	        if(zpxz.style.display=='block') zpxz.style.display='none';
	        else zpxz.style.display='block';
	        if(zpxq.style.display=='block') zpxq.style.display='none';
	        else zpxq.style.display='block';
	    }
	    function showAndHidden3(){
	        var zpxq=document.getElementById("zpxq");
	        var zpxz=document.getElementById("zpxz");
	        if(zpxq.style.display=='block') zpxq.style.display='none';
	        else zpxq.style.display='block';
	        if(zpxz.style.display=='block') zpxz.style.display='none';
	        else zpxz.style.display='block';
	    }
	    $(function(){
	    	Cms.siteFlow("", location.href, document.referrer);
			$("#jvForm").validate();
	        $("#publishBtn").click(function(){
	            var types=$('input:radio[name="docInlineRadio"]:checked').val();
	            location.href='index.php?c=member&a=release&tid='+types;
	        });
		    //审核通过
	    })
	</script>

<style type="text/css">
	body{ margin-top:0;margin-left:0}
    li{list-style: none;}
    .get {
        background: #018e72;
        color: #fff;
        text-align: center;
        margin: 10px -20px 0 -10px;
    }

    .get-title {
        font-size: 200%;
        border: 2px solid #fff;
        padding: 20px;
        display: inline-block;
    }

    .get-btn {
        background: #fff;
    }

    .detail-h3 {
        color: #1f8dd6;
    }

    .footer #bor {
        color: #ffffff;
        margin: 0;
        padding: 10px 0 0 10px;
        text-align: center;
        background: #f37b1d;
        font-size: 1.2rem;
    }
    .am-slides li {
        width: 682px;
        float: left;
        display: block;
    }
    .am-topbar-inverse  {
        background-color: #f37b1d; /*重定义类的背景色*/
    }
    .am-btn-secondary {
        background-color: #143270; /*重定义类的背景色*/
        border-color: #143270;
    }
    .am-form-horizontal .am-form-label {
        text-align:left;
        padding-bottom: .6em;
    }
    .am-ul ul{list-style: none;}
    .am-ul li{float:left}
    .am-topbar-nav>li.defined-active>a{background:rgba(0,0,0,.1)}
    .am-form-group textarea{width: 100% !important;}
    .am-form-group input{margin-left: 5px}

    .imglist {
        width: 680px;
        float: left;
        margin-left: -23px;
    }
    .imglist li{
        width: 200px;
        float: left;
        margin: 15px 0 0 24px;
        list-style-type: none;
        height: 215px;

    }
    .frm_control_group {
        padding-bottom: 25px;
    }
    .frm_controls {
        display: table-cell;
        vertical-align: top;
        float: none;
        width: auto;
    }
    .frm_label {
        float: left;
        width: 5em;
        margin-top: .3em;
        font-size: 14px;
    }

    .frm_input_box {
        display: inline-block;
        position: relative;
        height: 30px;
        vertical-align: middle;
        width: 278px;
        font-size: 14px;
        padding: 0 10px;
        border: 1px solid #e7e7eb;
        box-shadow: none;
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        border-radius: 0;
        -moz-border-radius: 0;
        -webkit-border-radius: 0;
        background-color: #fff;
    }

    .frm_input, .frm_textarea {
        width: 100%;
        background-color: transparent;
        border: 0;
        outline: 0;
    }

    .inp{
        width: 100%;
        background-color: transparent;
        border: 0;
        outline: 0;
    }
    ul.processor_bar,ul.processor_bar li{float: left;}
    ul.processor_bar{border-bottom: 1px solid #eeeeee;width: 100%;padding: 0;color: #747474;}
    ul.processor_bar li{width: 20%;height: 43px;line-height: 43px;text-align: center;}
    ul.processor_bar li.current{background: #0e90d2;color: #fff;}
    ul.processor_bar li.step{background: url("/jy//template/ZSXXW/images/bg_processor218877.png") no-repeat 0 0;}
    ul.processor_bar li.next{background-position: 0 -88px;}
    ul.processor_bar li.next,ul.processor_bar li.nnext{text-indent: 1rem;}
    ul.processor_bar li.prev{background-position: right -44px;}
    ul.processor_bar li.pprev{background-position: right 0;}
    .processor_bar h4 {
        margin: 0;padding: 0;
        font-weight: 400;
        font-style: normal;
        width: auto;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        word-wrap: normal
    }
    @media only screen and (max-width: 420px) {
        .processor_bar h4 {font-size: 1.4rem;}
    }

	.index-page #focus-news .focus-list .focus-item.curr {
		z-index: 2
	}
	
	.index-page .container #panel-list {
		border-bottom: none;
	}
	
	.index-page .container #panel-list .panel-item {
		border-bottom: 1px solid #dedede;
		padding: 0 10px;
	}
	
	.topframe {
		text-align: center;
		position: fixed;
		left: 0;
		right: 0;
		top: 0;
		z-index: 99999;
		background-color: #f2dede;
		border: 1px solid #ebccd1;
		color: #a94442;
		padding: 15px;
	}
	
	.topframe a {
		font-weight: bold;
		color: #843534;
	}
	
	.index-page .container #panel-list .panel-item .panel-list .block-item .panel-item-content .left-part
		{
		width: 200px
	}
	
	.index-page .rich03-nav #nav #index-link {
		display: inline-block !important;
	}
	
	.list-pic-item {
		display: inline-block;
		width: 237px;
		margin-right: 10px;
		padding: 25px 0px
	}
	
	.list-pic-item:last-child {
		margin-right: 0px
	}
	
	.list-pic-link {
		display: block;
		width: 100%;
		overflow: hidden;
		border-radius: 3px
	}
	
	.list-pic {
		transition: transform .5s linear
	}
	
	.list-pic-item:hover .list-pic {
		transform: scale(1.2)
	}
	
	.list-pic-tit {
		margin: 5px 0px;
		height: 36px;
		overflow: hidden;
	}
	
	#login-block ul:hover{
		position: absolute;
		left: 0 !important;
	}
</style>

</head>
	<body>
		<s:include value="top.jsp"></s:include>
		<s:action name="auditEnterprise" executeResult="true"/>
		<div class="container1">
			<div class="page">
				<div class="bgPop"></div>
				<div class="pop">
					<div class="pop-top">
						<div style="height:30px;width: 650px;">
							<span class="pop-close">Ｘ</span>
						</div>
						<div class="yyzz-all">
							<div class="bottom">2018年07月10日</div>
						</div>
					</div>
				</div>
				<div class="mask" id="mask"></div>
				<div class="nameBox  clearfix">
					<div class="yyzz">
						<a href="javascript:void(0)" class="yyzz a" onclick="popYyzz();"></a>
					</div>
					<div class="companyDetail clearfix">
						<div class="companyName">
							<h1 class="fullName">企业信息审核</h1>
							<span class="companyStatus" title="存续（在营、开业、在册）">存续（在营、开业、在册）</span>
							<span class="status"></span>
							<input type="hidden" value="<s:property value="#request.enterprise.enterRegisterNum"/>" id="enterpriseNum"/>
						</div>
						<span class="owner">
							<i class="abs fa fa-user1"></i>企业名称：
							<span style="margin-left:10px;" class="nameBoxColor" id="enterName"><s:property value="#request.enterprise.enterName"/></span>
						</span>
						<span class="regNum_inner">
		                 	<i class="abs fa fa-info-circle1"></i>注册地址： 
		                 	<span style="margin-left:10px;" class="nameBoxColor" id="enterRegisterAddr"><s:property value="#request.enterprise.enterRegisterAddr"/></span>
						</span>
						<span class="owner">
							<i class="abs fa fa-user1"></i>公司法人：
							<span style="margin-left:10px;" class="nameBoxColor" id="enterLawyer"><s:property value="#request.enterprise.enterLawyer"/></span>
						</span>				
						<span class="regNum_inner">
		                 	<i class="abs fa fa-info-circle1"></i>成立日期 : 
		                 	<span style="margin-left:10px;" class="nameBoxColor" id="enterFoundTime"><s:property value="#request.enterprise.enterFoundTime.toString()"/></span>
						</span>	
						<span class="regNum_inner">
		                 	 <i class="abs fa fa-map-marker1"></i>注册资金： 
		                 	 <span style="margin-left:10px;" class="nameBoxColor" id="enterRegisterWAge"><s:property value="#request.enterprise.enterRegisterWage"/></span>￥
						</span>
						<span class="regNum_inner">
		                	 <i class="abs fa fa-info-circle1"></i>CEO： 
		                 	 <span style="margin-left:10px;" class="nameBoxColor" id="ceo"><s:property value="#request.enterprise.ceo"/></span>
						</span>	
						<span class="regNum_inner">
			                 <i class="abs fa fa-info-circle1"></i>学位要求： 
			                 <span style="margin-left:10px;" class="nameBoxColor" id="degreeDemand">
			                 	<s:if test="%{#request.enterprise.degreeDemand==1}">本科</s:if>
			                 	<s:elseif test="%{#request.enterprise.degreeDemand==2}">研究生</s:elseif>
			                 	<s:elseif test="%{#request.enterprise.degreeDemand==3}">博士</s:elseif>
			                 </span>
						</span>	
						<%-- <span class="regNum_inner">
			                 <i class="abs fa fa-info-circle1"></i>核准日期： 
			                 <span style="margin-left:10px;" class="nameBoxColor">XXXX年XX月XX日</span>
						</span>	 --%>	
						<span class="regNum_inner">
		                 	 <i class="abs fa fa-map-marker1"></i>平均工资：
		                 	 <span style="margin-left:10px;" class="nameBoxColor" id="perWage"><s:property value="#request.enterprise.perWage"/></span>￥
						</span>	
						<span class="regNum_inner">
		                 	 <i class="abs fa fa-map-marker1"></i>工作时长： 
		                 	 <span style="margin-left:10px;" class="nameBoxColor" id="workExp"><s:property value="#request.enterprise.workExp"/></span>
						</span>	
						<input type="hidden" id="subsites" value="100000" />
						<input type="hidden" id="prip" value="" />
						<input type="hidden" id="scId" value=""/>
					</div>
					<div class="button-box r">
						<a href="jiuyeliebiao.jsp" id="btn_send_pdf" class="bt1 tc wh">返回上一页</a>
						<a href="#" id="btn_share" class="bt2 tc wh" onclick="pass()">审核通过</a>
						<a href="#" id="btn_print" class="bt3 tc wh" onclick="fail()">审核未通过</a>
						<div style="display:none">
							<button id="pop-captcha-share" type="button" style="display: none;"></button>
							<div id="popup-captcha-share-div" style="display: none;"></div>
							<button id="pop-captcha-pdf" type="button" style="display: none;"></button>
							<div id="popup-captcha-pdf-div" style="display: none;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		</div>
		</div>
		</div>
		</div>
		<style type="text/css">
			.blacka {
				font-size: 14px;
				color: black !important;
			}
		</style>
		<style type="text/css">
			.public-footer {
				width: 100%;
				height: 79px;
				text-align: center;
				font-size: 12px;
				color: #888;
				background-color: #fff;
				border-top: 1px solid #d5d5d5;
				margin: auto;
			}
			
			.public-footer .center {
				height: 127px;
				background: url(../images/footer-bg.jpg) no-repeat right bottom;
				padding-top: 1px;
			}
			
			.public-footer p {
				line-height: 20px;
			}
		</style>
		<script>
		function pass(){
	    	var enterRegisterNum = $("#enterpriseNum").val();
	    	/* alert(enterRegisterNum); */
	    	$.ajax({
				url : 'auditEnterprisePass.action',
				type : 'post',
				dateType: 'json',
				data : {
					enterRegisterNum : enterRegisterNum
				},
				success : function(result) {
					/* alert(result); */
					result = eval("(" + result + ")");
					alert('保存成功');
					$("#enterName").html(result.enterName);
					$("#enterpriseNum").val(result.enterRegisterNum);
					$("#enterRegisterAddr").html(result.enterRegisterAddr);
					$("#enterLawyer").html(result.enterLawyer);
					$("#enterRegisterWage").html(result.enterRegisterWage);
					$("#enterFoundTime").html(result.enterFoundTime);
					$("#ceo").html(result.ceo);
					$("#degreeDemand").html(result.degreeDemand);
					$("#perWage").html(result.perWage);
					$("#workExp").html(result.workExp);
				},
				error : function() {
					alert('没有待审核的企业信息了');
				}
			});
		};
		
		function fail(){
	    	var enterRegisterNum = $("#enterpriseNum").val();
	    	/* alert(enterRegisterNum); */
	    	$.ajax({
				url : 'auditEnterpriseFail.action',
				type : 'post',
				dateType: 'json',
				data : {
					enterRegisterNum : enterRegisterNum
				},
				success : function(result) {
					/* alert(result); */
					result = eval("(" + result + ")");
					alert('保存成功');
					$("#enterName").html(result.enterName);
					$("#enterpriseNum").val(result.enterRegisterNum);
					$("#enterRegisterAddr").html(result.enterRegisterAddr);
					$("#enterLawyer").html(result.enterLawyer);
					$("#enterRegisterWage").html(result.enterRegisterWage);
					$("#enterFoundTime").html(result.enterFoundTime);
					$("#ceo").html(result.ceo);
					$("#degreeDemand").html(result.degreeDemand);
					$("#perWage").html(result.perWage);
					$("#workExp").html(result.workExp);
				},
				error : function() {
					alert('没有待审核的企业信息了');
				}
			});
		};
		</script>
		<div>
			<iframe src="http://www.gsxt.gov.cn/index.html" style="width: 1100px; height: 500px; margin-left: 200px;" name="main"></iframe>
		</div>
		<%@ include file="bottom.jsp" %>
	</body>
</html>