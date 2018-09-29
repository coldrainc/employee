<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="icon" href="ico/favicon.ico" type="image/x-icon" />
		<title><s:property value="#session.loginUser.username"/>的简历</title>
		
		<link href="third_css/base.css" rel="stylesheet" type="text/css" />
		<link href="third_css/form.css" rel="stylesheet" type="text/css" />
		<link href="third_css/panel-pop.css" rel="stylesheet" type="text/css" />
		<link href="third_css/imgareaselect.css" rel="stylesheet" type="text/css" />
		<link href="third_css/resume2016.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
		<style type="text/css">
			#basedetail-all,#intention-all,#jy-all,#project-all{
				display:none;
			}
			#first{
				z-index:100;
			}
			#base_area_input
			{
				z-index:1;
			}
			#two{
				z-index:2;
			}
			#file_wrap{
				z-index:1200;
				position:absolute;
				top:100px;
				display:inline-block;
				width:500px;
				left:0;
				right:0;
				margin:0 auto;
				height:100px;
				background:#fff;
				display:none;
			}
			#zhezhao{
				position:absolute;
				z-index:900;
				width:100%;
				height:200%;
				background:#ccc;
				opacity:0.9;
				display:none;
			}
			#workType{
				width:280px;
				height:36px;
			}
			#workType:hover{
				cursor:pointer;
			}
		</style>
		
		<script type="text/javascript">
			$(function(){
				$("#salaryexp").click(function(){
					$(this).next().show().css({"background":"red"});
				});
				$('#arrows').click(function (e) {
			        if ($('#uls').is(':hidden')) {
			            $("#uls").show();
			        } else {
			            $('#uls').hide();
			        }
			        $(document).one('click', function () {
			            $('#uls').hide();
			        });
			        e.stopPropagation();
			    });
			    $('#uls').on('click', function (e) {
			        e.stopPropagation();
			    });
			    $(".s1").click(function(){
			    	$(".s1").removeClass("on");
			    	$(this).addClass("on");
			    	$("#status").val($(this).html());
			    	$("#uls").hide();
			    });
			    //点击修改
			    $("#update").click(function(){
			    	$("#zhezhao").hide();
			    	$("#file_wrap").show();
			    	$("#file_wrap").css("z-index","1200");
			    });
				//点击保存
				$("#saveTx").click(function(){
					$("#zhezhao").hide().css({"display":"none"});
					$("#file_wrap").hide().css({"display":"none"});
				});
				//单击修改按钮
				$("#basedetail_edit").click(function(){
					$("#basedetail").hide();
					$("#basedetail-all").show();
				});
				$("#intention_new").click(function(){
					$("#intention").hide();
					$("#intention-all").show();
				});
				$("#work_edit").click(function(){
					$("#jy").hide();
					$("#jy-all").show();
				});
				$("#project_edit").click(function(){
					$("#project").hide();
					$("#project-all").show();
				});
				//单击取消按钮
				$("#basedetail_cancel").click(function(){
					$("#basedetail-all").hide();
					$("#basedetail").show();
				});
				$("#intention_cancel").click(function(){
					$("#intention-all").hide();
					$("#intention").show();
				});
				$("#work_cancel").click(function(){
					$("#jy").show();
					$("#jy-all").hide();
				});
				$("#project_cancel").click(function(){
					$("#project").show();
					$("#project-all").hide();
				});
				//单击保存基本信息按钮
				$("#basedetail_save").click(function(){
					var name = $("#base_name").val();
					var gender = $("#gender").val();
					var phone = $("#phone").val();
					var status = $("#status").val();
					var mail = $("#mail").val();
					var residence = $("#base_area_input").val();
					var university = $("#university").val();
					var age = $("#age").val();
					var major = $("#major").val();
					/* alert(name + " " + gender + " " + phone + " " + status + " " + mail + " " + residence + " " + university + " " + age); */
					$.ajax({
						url : 'updateResumeInfoAction',
						type : 'post',
						dataType : 'json',
						data : {
							name : name,
							gender : gender,
							phone : phone,
							status : status,
							mail : mail,
							residence : residence,
							university : university,
							age : age,
							major : major
						},
						success : function(result) {
							result = eval("(" + result + ")");
							/* alert(result.code); */
							alert("保存成功");
							$("#basedetail-all").hide();
							$("#basedetail").show();
							$("#name_1").html(name);
							$("#gender_1").html(gender);
							$("#phone_1").html(phone);
							$("#status_1").html(status);
							$("#mail_1").html(mail);
							$("#residence_1").html(residence);
							$("#university_1").html(university);
							$("#school").html(university);
							$("#age_1").html(age);
							$("#major_1").html(major);
						},
						error : function() {
							alert('系统错误');
						}
					});
				});
				//保存意向
				$("#intention_save").click(function(){
					var expectSalary = $("#expectSalary").val();
					var workPlace = $("#int_expectarea_input").val();
					var workFunction = $("#int_expectfunc_input").val();
					var position = $("#int_position").val();
					var profession = $("#int_expectindustry_input").val();
					var workType = $("#workType").val();
					/* alert(expectSalary + " " + workPlace + " " + workFunction + " " + position + " " + profession + " " + workType); */
					$.ajax({
						url : 'updateIntentionAction',
						type : 'post',
						data : {
							expectSalary : expectSalary,
							workPlace : workPlace,
							workFunction : workFunction,
							position : position,
							profession : profession,
							workType : workType,
						},
						success : function() {
							alert("保存成功");
							$("#intention-all").hide();
							$("#intention").show();
							
							$("#salary").html(expectSalary);
							$("#place").html(workPlace);
							$("#pro").html(workFunction + "/" + position);
							$("#hy").html(profession);
							$("#wtype").html(workType);
						},
						error : function() {
							alert('系统错误');
						}
					});
				});
				
				//工作经验保存
				$("#work_save").click(function(){
					var workExp = $("#workExp").val();
					/* alert(workExp); */
					$.ajax({
						url : 'updateWorkExpAction',
						type : 'post',
						data : {
							workExp : workExp
						},
						success : function() {
							alert("保存成功");
							$("#jy-all").hide();
							$("#jy").show();
							$(".workExp").html(workExp);
						},
						error : function() {
							alert('系统错误');
						}
					});
				});
				//项目经验保存
				$("#project_save").click(function(){
					var projectExp = $("#projectExp_new").val();
					$.ajax({
						url : 'updateProjectExpAction',
						type : 'post',
						data : {
							projectExp : projectExp
						},
						success : function() {
							alert("保存成功");
							$("#project-all").hide();
							$("#project").show();
							$(".projectExp").html(projectExp);
						},
						error : function() {
							alert('系统错误');
						}
					});
				});
				$("#base_sex_0").click(function(){
					$(".Fm .nan em").css({"background-position":"-20px -80px"});
					$(".Fm .nv em").css({"background-position":"-40px -80px"});
					$(this).css({"background":"#FF9F20"});
					$("#base_sex_1").css({"background":"white","color":"black"});
					$("#base_sex_0").css({"color":"white"});
					$("#gender").val("男");
					
				});
				$("#base_sex_1").click(function(){
					$(".Fm .nan em").css({"background-position":"0 -80px"});
					$(".Fm .nv em").css({"background-position":"-60px -80px"});
					$(this).css({"background":"#FF9F20"});
					$("#base_sex_0").css({"background":"white","color":"black"});
					$("#base_sex_1").css({"color":"white"});
					$("#gender").val("女");
				}) ;
			})
		</script>
	</head>

	<body>
		<div id="zhezhao"></div>
		<div id="file_wrap">
			<form action="txUploadAction.action" method="post" enctype="multipart/form-data">
				选择上传的文件：<input type="file" id="file" name="uploadImage">
				<input type="submit" value="保存" id="saveTx">
			</form>
		</div>
		<div class="header" id="top">
			<div class="nag">
				<div class="in">
					<a href="gradPage.jsp">
						<img class="logo" width="116" height="46" src="img/logo_20jubilee_116x46.png" alt="问财招聘">
					</a>
					<img class="slogen" width="162" height="17" src="img/slogen.png" alt="好工作尽在问财招聘">
					<p class="nlink n2">
						<a href="gradPage.jsp">首页</a>
						<a href="#">我的工作</a>
						<a href="#">简历中心</a>
					</p>
				</div>
			</div>
		</div>
		<input type="hidden" id="pageCode" value="11214" />
		<div class="main">
			<!-- 左边导航部分开始 -->
			<div class="nav">
				<div class="top_wrap" id="resume">
					<div class="nav_top">
						<p class="nkt">
							<span class="name" id="resume_nameview">我的简历1</span>
							<span class="ed_icon_blue icons" onclick="editResumeName()"></span>
							<span class="ed_icon_yellow icons"></span>
						</p>
					</div>
					<div class="cupBox">
						<div class="cup">更新：<span id="resume_lastupdate">2018-07-09</span></div>
						<div class="cup dt">
							公开：<span id="resume_openess">完全保密</span>
							<div class="hpBox h_open">
								<div class="h_head">
									<em id="openess_question" class="hp"></em>
									<div class="h_arr"></div>
								</div>
								<div class="h_body">
									<div class="h_top"></div>
									<div class="h_box">
										<div class="h_con">
											简历公开程度：即设置查看简历的人员范围。<br/>
											<span class="bold">对所有公开：</span>允许51job的专业人员及所有通过51job审核的公司查看您的简历。您将会获得职位推荐、面试邀约和求职秘籍等最全面的求职服务。<br/>
											<span class="bold">对无忧公开：</span>只允许51job的专业人员及认证猎头人士查看您的简历。51job的专业人员也会不定期的与您联系，为您提供符合您的职位发展机会。<br/>
											<span class="bold">完全保密：</span>不允许任何人员或公司查看您的简历，个人信息完全保密，除非您主动投递职位。但如果您希望能够接受面试邀约或职位推荐，我们建议您更改此选项，将简历公开程度设定为“对所有公开”。
											<div class="org">注意：只允许有1份简历可以选择对所有公开！</div>
										</div>
									</div>
									<div class="h_btm"></div>
								</div>
							</div>
						</div>
						<div class="cup dt">
							<span class="n_star" id="resume_bstar"></span>
							<span class="star s3" id="resume_star"></span>
							<div class="hpBox h_star">
								<div class="h_head">
									<em id="star_question" class="hp"></em>
									<div class="h_arr"></div>
								</div>
								<div class="h_body">
									<div class="h_top"></div>
									<div class="h_box">
										<div class="h_con">
											简历星级：即简历的质量、完整度，星越多代表简历填写的内容越详细。同时，HR搜索到你的几率也会越大。
											<div class="org">注意：当基本信息填写不完整时，简历星为空，只有当基本信息填写完整后，简历星级才会点亮。</div>
										</div>
									</div>
									<div class="h_btm"></div>
								</div>
							</div>
						</div>
						<div class="cup">
							<a href="javascript:0" id="resume_switchto">英文简历</a>
						</div>
					</div>
					<div class="btnbox">
						<span class="p_but " onclick="refreshResume()">刷新</span><span class="p_but  geige" onclick="javascript:0">预览</span>
					</div>
				</div>
				<!-- 左边导航部分 -->
				<div class="nav_body">
					<a href="#Basic" id="base_index"><span class="left a"></span>基本信息<span id="base_complete" class="right y"></span></a>
					<a href="#Career" id="intention_index"><span class="left b"></span>求职意向<span id="intention_complete" class="right y"></span></a>
					<a href="#Work" id="work_index"><span class="left c"></span>工作经验<span id="work_complete" class="right y"></span></a>
					<a href="#Project" class="" id="project_index"><span class="left d"></span>项目经验<span id="project_complete" class="right y"></span></a>
					<a href="#Education" id="education_index"><span class="left e"></span>教育经历<span id="education_complete" class="right y"></span></a>
					<a href="#Skills" class="" id="skill_index"><span class="left g"></span>技能特长<span id="skill_complete" class="right y"></span></a>
				</div>
			</div>
			<!-- 左边导航部分结束 -->
			<!-- 主要部分 -->
			<div class="column Fm" id="maincontent">
				<div class="box mk top_wrap" id="basedetail">
					<div class="head" id="Basic">
						<div class="face">
							<img src="img/touxiang/<s:property value='#session.resume.tximage'/>" width="85" height="104" alt="头像">
						</div>
						<div class="name" id="name_1"><s:property value="#session.resume.name"/></div>
						<p class="at">现居住于<span id="residence_1"><s:property value="#session.resume.residence"/></span>
							│&nbsp;<span id="workExp_1"><s:property value="#session.resume.workExp"/></span>年工作经验
							│&nbsp;<span id="gender_1"><s:property value="#session.resume.gender"/></span>
							│&nbsp;<span id="age_1"><s:property value="#session.resume.age"/></span>岁
							│&nbsp;<span id="status_1"><s:property value="#session.resume.status"/></span>
						</p>
						<div class="tab">
							<span class="email icons at" title="<s:property value="#session.resume.mail"/>"><s:property value="#session.resume.mail"/></span>&nbsp;
							<span class="tel icons"><s:property value="#session.resume.phone"/></span>
						</div>
						<div class="abox">
							<div class="mbox" onclick="showMoreClickEvent(this)">
								<span class="icons">更多展开</span><em class="icons"></em>
							</div>
							<div class="all">
								<div class="e e2 ef">
									<label>毕业院校</label><i>：</i>
									<div id="university_1"><s:property value="#session.resume.university"/></div>
								</div>
								<div class="e e2">
									<label>学号</label><i>：</i>
									<div><s:property value="#session.loginUser.number"/></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<span class="ed_icon_blue icons" id="basedetail_edit"></span>
					<span class="ed_icon_yellow icons"></span>
				</div>
				<div class="box mk com" id="basedetail-all">
				<!-- 编辑 -->
				<div class="head" id="Basic">
					<div class="face f2">
						<img id="base_avatar" src="img/touxiang/<s:property value='#session.resume.tximage'/>" width="85" height="104" alt="头像"> <span class="esp" id="update" onclick="setAvatar();">修改</span> | 
						<span id="base_avatar_delete" class="esp " "="" onclick="deleteAvatarConfirm();">删除</span>
					</div>
					<div class="cbox">
						<div class="h30">
							<div class="c c2">
								<label>姓名</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="base_name" class="ef" maxlength="20" type="text" value='<s:property value="#session.resume.name"/>'>
									</div>
								</div>
								<div class="err" id="base_name_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
							<div class="c c4">
								<label>性别</label><i>*</i>
								<div class="btox" id="base_sex_div">
									<input type="hidden" id="gender" value="<s:property value='#session.resume.gender'/>">
									<span class="btn nan on" id="base_sex_0">
										<em class="icons" style="background-position:-20px -80px;"></em>男
									</span>
									<span class="btn nv " id="base_sex_1">
										<em	class="icons" style="background-position:-40px -80px;"></em>女
									</span>
								</div>
								<input id="base_sex" type="hidden" value="0">
								<div class="err" id="base_sex_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
						</div>
						<div class="h30" style="*position:relative;*z-index:2">
							<div class="c c2">
								<label>手机</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="phone" class="ef" maxlength="20" type="text" value="<s:property value="#session.resume.phone"/>">
									</div>
								</div>
								<div class="err" id="base_mobile_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
							<div class="c c4" float-index="false" id="first">
								<label>求职状态</label><i>*</i>
								<div class="sh">
									<div class="txt pointer" id="base_csituation_list" float-on="false">
										<input class="ef" type="text" readonly="readonly" id="status" value="<s:property value="#session.resume.status"/>" input-type="selectionlist">
										<span class="ic i_arrow" id="arrows"></span>
										<div class="ul" id="uls">
											<span data-value="0" class="li s1" title="目前正在找工作">目前正在找工作</span>
											<span data-value="3" class="li s1" title="还在考虑当中">还在考虑当中</span>
											<span data-value="4" class="li s1" title="我目前不想换工作">我目前不想换工作</span>
										</div>
									</div>
									<input id="base_csituation" type="hidden" value="3">
								</div>
								<div class="err" id="base_csituation_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
						</div>
						<div class="h30" style="*position:relative;*z-index:1">
							<div class="c c2">
								<label>邮箱</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="mail" class="ef" maxlength="20" type="text" value="<s:property value="#session.resume.mail"/>">
									</div>
								</div>
								<div class="err" id="base_email_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
							<div class="c c4" float-index="false" id="base_area_index">
								<label>居住地</label><i>*</i>
								<div class="sh">
									<div class="txt pointer" float-on="false" id="base_area_div">
										<input class="ef cursor" maxlength="35" type="text" style="z-index:-1"
											id="base_area_input" placeholder="填写/选择" value="<s:property value="#session.resume.residence"/>"
											pre_value="余姚市"> 
										<span class="ic i_block pointer"id="base_area_click"></span>
										<div class="ul u3" id="base_area_list" style="display:none">
										</div>
									</div>
									<input class="ef" id="base_area" type="hidden" value="080308" pre_code="080308">
								</div>
								<div class="err" id="base_area_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
						</div>
						<div class="h30">
							<div class="c c2">
								<label>毕业院校</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="university" class="ef" maxlength="20" type="text" value="<s:property value="#session.resume.university"/>">
									</div>
								</div>
								<div class="err" id="base_name_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
							<div class="c c4" id="two">
								<label>年龄</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="age" class="ef" maxlength="20" type="text" value="<s:property value="#session.resume.age"/>">
									</div>
								</div>
								<div class="err" id="base_name_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
						</div>
						<div class="h30">
							<div class="c c2">
								<label>专业</label><i>*</i>
								<div class="sh">
									<div class="txt">
										<input id="major" class="ef" maxlength="20" type="text" value='<s:property value="#session.resume.major"/>'>
									</div>
								</div>
								<div class="err" id="base_name_warning" style="display:none">
									<em class="icons"></em>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="btnbox">
					<span class="p_but" id="basedetail_save">保存</span>
					<span class="p_but gray" id="basedetail_cancel">取消</span>
				</div>
			</div>
				<%-- <div class="box m1 top_wrap" id="salary">
					<div class="hd">
						<strong class="icons"><em class="e0 icons"></em>目前年收入</strong>&nbsp;<span class="f16"></span><span class="f12">（包含基本工资、补贴、奖金、股权收益等）</span>
					</div>
					<div class="none icons">完善年收入情况，让HR更了解你！</div>
					<span class="ed_icon_blue icons" id="salary_edit" onclick="editButtonClick(this)"></span><span class="ed_icon_yellow icons"></span>
				</div> --%>
				<div class="box mk top_wrap" id="intention">
					<div class="hd"><strong class="icons" id="Career"><em class="e1 icons"></em>求职意向</strong></div>
					<div>
						<div class="bd">
							<div class="con">
								<div class="e e3">
									<label>期望薪资</label><i>：</i>
									<div><span id="salary"><s:property value="#session.resume.expectSalary"/></span>元/月</div>
								</div>
								<div class="e e3">
									<label>工作地点</label><i>：</i>
									<div><span class="ong" id="place"><s:property value="#session.resume.workPlace"/></span></div>
								</div>
								<div class="e e3 ef">
									<label>职能/职位</label><i>：</i>
									<div>
										<span class="ong" id="pro"><s:property value="#session.resume.workFunction"/>/<s:property value="#session.resume.position"/></span>
									</div>
								</div>
								<div class="e e3">
									<label>行业</label><i>：</i>
									<div>
										<span class="ong" id="hy"><s:property value="#session.resume.profession"/></span>
									</div>
								</div>
								<div class="e e2">
									<label>到岗时间</label><i>：</i>
									<div>待定</div>
								</div>
								<div class="e e2">
									<label>工作类型</label><i>：</i>
									<div><span id="wtype"><s:property value="#session.resume.workType"/></span></div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<span class="ed_icon_blue icons" id="intention_new"></span>
					<span class="ed_icon_yellow icons"></span>
				</div>
				
				<div class="box mk" id="intention-all" float-index="false" style=""><!-- 编辑 -->
					<div class="hd" style="">
    					<strong class="icons" id="Career"><em class="e1 icons"></em>求职意向</strong>
					</div>
					<div>
    					<div class="bd com">
        					<div class="con">
           						 <div class="c" float-index="false">
               						 <label>期望薪资</label><i>*</i>
                						<div class="h30">
                    						<div class="err" id="int_salarytype_warning" style="display:none"><em class="icons"></em></div>
                    						<div class="sh sl" id="int_inputsalarydiv_select" style="display:">
                        						<div class="txt pointer" id="int_salaryselect_list" float-on="false">
                            						<input class="ef" type="text" value="<s:property value="#session.resume.expectSalary"/>" id="expectSalary">
                       							</div>
                    						</div>
                    						<div class="sh sl" id="int_inputsalarydiv_minmax" style="display:none">
					                        <div class="txt sg">
					                            <input class="ef" maxlength="7" id="int_salarymin" type="text" placeholder="薪资下限" value="">
					                        </div>
					                        <span class="gao">-</span>
					                        <div class="txt sg">
					                            <input class="ef" maxlength="7" id="int_salarymax" type="text" placeholder="薪资上限" value="">
					                        </div>
                    					</div>
					                    <div class="sh sl" id="int_inputsalarydiv_one" style="display:none">
					                        <div class="txt pointer">
					                            <input class="ef" maxlength="7" id="int_inputsalary" type="text" title="请填写薪资" value="14">
					                        </div>
					                    </div>
                    					<span id="int_salary_unit">元/月</span>
                    					<div class="err" id="int_salary_warning" style="display:none"><em class="icons"></em></div>
                					</div>
           						 </div>
            					 <div class="c" float-index="false" id="int_expectarea_index" style="">
					                <label>地点</label><i>*</i>
					                <div class="tbox" id="int_expectarea_under" >
					                <div class="clear"></div>
					          	 </div>
				                <div class="h30">
				                    <div class="sh">
				                        <div class="txt pointer" float-on="false" id="int_expectarea_div">
				                            <input placeholder="填写/选择" class="ef cursor" id="int_expectarea_input" type="text" value='<s:property value="#session.resume.workPlace"/>'>
				                            <span class="ic i_block pointer" id="int_expectarea_click"></span>
				                            <div class="udbox" id="int_expectarea_list" layer_float_on="false" style="display: none;"><div class="ul"><span data-value="010000" class="li int_expectarea_input_association_each_click">北京</span></div></div>
				                        </div>
				                        <input id="int_expectarea" type="hidden" value="">
				                    </div>
				                    <div class="err" id="int_expectarea_warning" style="display:none"><em class="icons"></em></div>
				                </div>
            				</div>
            <div class="c" float-index="false" id="int_expectfunc_index" style="">
                <label>职能</label><i>*</i>
                <div id="int_expectfunc_under" class="tbox"><div class="clear"></div></div>
                <div class="h30">
                    <div class="sh">
                        <div class="txt pointer" float-on="false" id="int_expectfunc_div">
                            <input placeholder="填写/选择" class="ef cursor" id="int_expectfunc_input" type="text" value='<s:property value="#session.resume.workFunction"/>'>
                            <span class="ic i_block pointer" id="int_expectfunc_click"></span>
                            <div class="udbox" id="int_expectfunc_list" layer_float_on="false" style="display: none;"><div class="ul u3"><span class="li off">没有找到合适的结果</span></div></div>
                        </div>
                        <input id="int_expectfunc" type="hidden" value="">
                    </div>
                    <div class="err" id="int_expectfunc_warning" style="display:none"><em class="icons"></em></div>
                </div>
            </div>
            <div class="c" float-index="false" id="int_position_index" style="">
                <label>职位<i>*</i></label>
                <div class="h30">
                    <div class="sh">
                        <div class="txt" float-on="false" id="int_position_div">
                            <input class="ef" id="int_position" maxlength="50" type="text" value='<s:property value="#session.resume.position"/>'>
                             <span class="ic i_block pointer" id="int_expectindustry_click"></span>
                            <div class="udbox" id="int_position_list" layer_float_on="false" style="display: none;"><div class="ul"><span data-value="技术总监助理" class="li int_position_association_each_click">技术总监助理</span><span data-value="技术总监" class="li int_position_association_each_click">技术总监</span></div></div>
                        </div>
                    </div>
                    <div class="err" id="int_position_warning" style="display:none"><em class="icons"></em></div>
                </div>
            </div>
            <div class="c" float-index="false" id="int_expectindustry_index" style="">
                <label>行业</label>
                <div class="tbox" id="int_expectindustry_under">
                <div class="clear"></div>
                </div>
                <div class="h30">
                    <div class="sh">
                        <div class="txt pointer" float-on="false" id="int_expectindustry_div">
                            <input placeholder="填写/选择" class="ef cursor" id="int_expectindustry_input" type="text" maxlength="24" value='<s:property value="#session.resume.profession"/>'>
                            <span class="ic i_block pointer" id="int_expectindustry_click"></span>
                            <div class="udbox" id="int_expectindustry_list" layer_float_on="false" style="display: none;"><div class="ul"><span data-value="01" class="li int_expectindustry_input_association_each_click">计算机软件</span></div></div>
                        </div>
                        <input id="int_expectindustry" type="hidden" value="">
                    </div>
                    <div class="err" id="int_expectindustry_warning" style="display:none"><em class="icons"></em></div>
                </div>
            </div>
            <div class="h30">
                <div class="c c3" float-index="false">
                    <label>工作类型</label>
                    <div class="sh">
                        <div class="txt pointer" id="int_seektype_list" float-on="false">
                            <%-- <input class="ef" type="text" readonly="readonly" id="workType"  value='<s:property value="#session.resume.workType"/>'>
                            <span class="ic i_arrow"></span> --%>
                          <!--   <div class="ul"> -->
                            	<select id="workType" value='<s:property value="#session.resume.workType"/>'>
                            		<option value="全职" selected>全职</option>
                            		<option value="兼职">兼职</option>
                            		<option value="实习">实习</option>
                            		<option value="全/兼职">全/兼职</option>
                            	</select>
	                           <%--  <span data-value="0" class="li on" title="全职">全职</span>
	                            <span data-value="1" class="li" title="兼职">兼职</span>
	                            <span data-value="2" class="li" title="实习">实习</span>
	                            <span data-value="3" class="li" title="全/兼职">全/兼职</span> --%>
                            <!-- </div> -->
                        </div>
                        <input id="int_seektype" type="hidden" value="0">
                    </div>
                </div>
            </div>
        </div>
				<div class="btnbox">
		     		<span class="p_but" id="intention_save">保存</span>
		    		<span class="p_but gray" id="intention_cancel">取消</span>
				</div>
			</div>
		</div>
	</div>
				<div class="box mk" id="jy">
				<div class="hd">
					<strong class="icons" id="Work"><em class="e2 icons"></em>工作经验</strong>
				</div>
				<div id="work">
					<div class="bd" id="work_view_267510086">
						<div class="con edit ebox">
							<div class="sp">
								<span><label class="workExp"><s:property value="#session.resume.workExp"/></label>年工作经验</span>
							</div>
							<div class="clear"></div>
							<span class="ed_icon"><em class="edi icons" id="work_edit"></em></span>
						</div>
					</div>
				</div>
				</div>
				<div class="box mk" id="jy-all">
					<div class="hd">
						<strong class="icons" id="Work"><em class="e2 icons"></em>工作经验</strong>
					</div>
					<div class="bd com">
		        		<div class="con">
			            	<div class="h30 h2">
			                	<div class="c c3">
			                   		<label>目前工作过</label>
			                    	<div class="sh sl">
				                        <div class="txt">
				                            <input class="ef" maxlength="6" id="workExp" type="text" value='<s:property value="#session.resume.workExp"/>'>
				                        </div>
			                    	</div>年
			                    	<div class="err" id="sal_salary_warning" style="display:none"></div>
		                		</div>
	           				</div>
	           			</div>
				        <div class="btnbox">
				            <span class="p_but" id="work_save">保存</span>
				            <span class="p_but gray" id="work_cancel">取消</span>
				        </div>
        			</div>
        		</div>
				<div class="box mk" id="project">
					<div class="hd">
						<strong class="icons" id="Project"><em class="e3 icons"></em>项目经验</strong>
					</div>
					<div id="project">
						<div class="bd" id="project_view_59689788">
							<div class="con edit">
								<div class="sp">
									<span class="projectExp"><s:property value="#session.resume.projectExp"/></span>
								</div>
								<div class="clear"></div>
								<span class="ed_icon">
									<em class="edi icons" id="project_edit"></em>
									<!-- <em class="del icons" id="project_delete_59689788" onclick="deleteButtonClick(this)"></em> -->
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="box mk" id="project-all">
					<div class="hd">
						<strong class="icons" id="Project"><em class="e3 icons"></em>项目经验</strong>
					</div>
					<div class="bd com">
		        		<div class="con">
			            	<div class="h30 h2">
			                	<div class="c c3">
			                   		<label>项目经验</label>
			                    	<div class="sh sl">
				                        <div class="txt">
				                            <input class="ef" maxlength="100" class="projectExp_new" id="projectExp_new" type="text" value='<s:property value="#session.resume.projectExp"/>'>
				                        </div>
			                    	</div>
			                    	<div class="err" id="sal_salary_warning" style="display:none"></div>
		                		</div>
	           				</div>
	           			</div>
				        <div class="btnbox">
				            <span class="p_but" id="project_save">保存</span>
				            <span class="p_but gray" id="project_cancel">取消</span>
				        </div>
        			</div>
        		</div>
				<div class="box mk">
					<div class="hd">
						<strong class="icons" id="Education"><em class="e4 icons"></em>教育经历</strong>
					</div>
					<div id="education">
						<div class="bd" id="education_view_147511468">
							<div class="con edit">
								<div class="sp">
									<strong class="fbox ">
										<span class="at" title="<s:property value='#session.resume.university'/>" id="school"><s:property value="#session.resume.university"/></span>
										<input type="hidden" id="education_verify_147511468" value="0">
									</strong>
									<strong class="w140 at" title="软件工程" id="major_1"><s:property value='#session.resume.major'/></strong>
									<span class="cl3 w140 at">本科</span>
								</div>
								<div class="clear"></div>
								<span class="ed_icon">
									<em class="edi icons" id="education_edit"></em>
									<!-- <em class="del icons" id="education_delete_147511468" onclick="deleteButtonClick(this)"></em> -->
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="box mk">
					<div class="hd">
						<strong class="icons" id="Skills"><em class="e6 icons"></em>技能特长</strong><span class="f12">（包含IT技能、语言能力、证书、成绩、培训经历）</span>
					</div>
					<div class="tit">
						<span>技能/语言</span>
						<!-- <a id="skilllanguage_new" onclick="newButtonClick(this);" class="add icons">新增技能/语言</a> -->
					</div>
					<div id="skilllanguage">
						<div class="bd" id="skilllanguage_view_149334218">
							<div class="con edit">
								<div class="cell">
									<strong class="at" title="<s:property value="#session.resume.skills"/>"><s:property value="#session.resume.skills"/></strong>
									<span><i>精通</i></span>|
									<em class="fork icons"></em>
								</div>
								<%-- <span class="ed_icon">
									<em class="edi icons" id="skilllanguage_edit_149334218" onclick="editButtonClick(this)"></em>
									<em class="del icons" id="skilllanguage_delete_149334218" onclick="deleteButtonClick(this)"></em>
								</span> --%>
							</div>
						</div>
					</div>
				</div>
				<%-- <div class="box mk">
					<div class="hd"><strong class="icons" id="Additional"><em class="e7 icons"></em>附加信息</strong></div>
					<s:property value="#session.resume.additionalInfo"/>
					<div class="tit" id="additionattach_title">
						<span>附件</span>
						<a id="additionattach_new" onclick="newButtonClick(this);" class="add icons">新增附件</a>
					</div>
					<div id="additionattach">
						<div class="none icons" id="additionattach_empty">完善附件信息，展现专业能力，让HR更了解你！</div>
					</div>
					<div class="tit" id="additionother_title">
						<span>其他</span>
						<a id="additionother_new" onclick="newButtonClick(this);" class="add icons">新增其他</a>
					</div>
					<div id="additionother">
						<div class="none icons" id="additionother_empty">完善其他信息，丰富简历，让HR更了解你！</div>
					</div>
				</div> --%>
			</div>
			<div class="clear"></div>
			<a href="#top" id="goTop" style="display: inline;">回到<br>顶部</a>
		</div>
		<input type="hidden" id="isenglish" value="c" name="isenglish">
		<input type="hidden" id="resumeid" value="367246668" name="resumeid">
		<input type="hidden" id="showguide" value="0" name="showguide">
		<input type="hidden" id="work_num" value="0" name="work_num">
		<input type="hidden" id="project_num" value="0" name="project_num">
		<input type="hidden" id="education_num" value="0" name="education_num">
		<input type="hidden" id="schoolaward_num" value="0" name="schoolaward_num">
		<input type="hidden" id="schooljob_num" value="0" name="schooljob_num">
		<input type="hidden" id="skilllanguage_num" value="0" name="skilllanguage_num">
		<input type="hidden" id="skillcertification_num" value="0" name="skillcertification_num">
		<input type="hidden" id="skilltrain_num" value="0" name="skilltrain_num">
		<input type="hidden" id="additionquiz_num" value="0" name="additionquiz_num">
		<input type="hidden" id="additionattach_num" value="0" name="additionattach_num">
		<input type="hidden" id="additionother_num" value="0" name="additionother_num">
		<div class="footer f2">
			<div class="in">
				<p class="note">
					<span>未经问才招聘同意，不得转载本网站之所有招聘信息及作品&nbsp;|&nbsp;问才工作网版权所有&copy;2017-2018</span>
				</p>
			</div>
		</div>
		</div>
 		<script type="text/javascript" src="third_js/pointtrack2.js"></script>
		
		<script type="text/javascript" src="third_js/jquery.form.min.js"></script>
		<script type="text/javascript" src="third_js/auth.js"></script>
		<script type="text/javascript" src="third_js/resume_c.js"></script>
		<script type="text/javascript" src="third_css/merge_data_c.js"></script>
		<script type="text/javascript" src="third_js/jquery.imgareaselect.min.js"></script>
		<script type="text/javascript" src="third_js/calendar.js"></script>
		<script type="text/javascript" src="third_js/layer.js"></script>
		<script type="text/javascript" src="third_js/common_select.js"></script>
		<script type="text/javascript" src="third_js/common_layer.js"></script>
		<script type="text/javascript" src="third_js/common_association.js"></script>
		<script type="text/javascript" src="third_js/layer_c.js"></script>
		<script type="text/javascript" src="third_js/indtype_array_c.js"></script>
		<script type="text/javascript" src="third_js/funtype_array_c.js"></script>
		<script type="text/javascript" src="third_js/area_array_c.js"></script>
		<script type="text/javascript" src="third_js/cert_array_c.js"></script>
		<script type="text/javascript" src="third_js/itskill_array_c.js"></script>
		<script type="text/javascript" src="third_js/major_array_c.js"></script>
		<script type="text/javascript" src="third_js/association_main.js"></script>
		<script type="text/javascript" src="third_js/layer_main_navigation.js"></script>
		<script type="text/javascript" src="third_js/layer_main_map.js"></script>
		<script type="text/javascript" src="third_js/layer_main.js"></script>
		<script type="text/javascript" src="third_js/RefreshResume.js"></script>
		<script type="text/javascript" src="third_js/standard_resume.js"></script>
		<script type="text/javascript" src="third_js/modify_userinfo.js"></script>
		<script type="text/javascript" src="third_js/jquery.placeholder.min.js"></script>
		<script type="text/javascript" src="third_js/mobile_original.js"></script>
		<script type="text/javascript" src="third_js/d_nation.js"></script>
		<script type="text/javascript" src="third_js/pointtrack_resume.js"></script>
		<script type="text/javascript" src="third_js/selectionlist.js"></script>
		<script type="text/javascript" src="third_js/resume.js"></script>
	</body>

</html>



