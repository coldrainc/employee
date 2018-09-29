//公共ajax取数据
function pubajax(targetUrl,actionstr,divID)
{
	$.ajax({
        url: targetUrl+"?no-cache="+Math.random()+"&"+actionstr,
        type: 'GET',
        dataType: 'html',
        timeout: 5000,
        success: function(transport){
        	var returnvalue=transport; 
            if (returnvalue.indexOf("??")>-1) 
                document.getElementById(divID).innerHTML=''; 
            else 
                document.getElementById(divID).innerHTML=returnvalue; 
        }
    });
}

//公共ajax取数据
function pubPostAjax(targetUrl,divID)
{
	
	var siteId = document.getElementById("vw_class_siteId").value;//站点ID
	var classId = document.getElementById("vw_class_classId").value;//栏目ID
	var tempPath = document.getElementById("vw_class_tempPath").value;//栏目列表模板
	var pageSize = document.getElementById("vw_class_PageSize").value;//每页新闻数量
	var currPage = document.getElementById("vw_class_currPage").value;//当前第几页
	var pageTotal = document.getElementById("vw_class_totalPages").value;//总页数
	var recordCount = document.getElementById("vw_class_totalRecordNum").value;//总记录条数
	var str_NewsType = document.getElementById("vw_class_labelType").value; // 标签类型
	var str_ListType = document.getElementById("vw_class_listType").value; // 列表类型
	var str_isSub = document.getElementById("vw_class_isSub").value; // 相关新闻是否调用本类下的子类

	// 标识每行显示多少条新闻
	var n_Cols;
	
	//if (Input.IsInteger(request.getParameter("vw_class_cols"))) {
	//	n_Cols = Integer.parseInt(request.getParameter("vw_class_cols"));
	//} else {
	//	n_Cols = 1;
	//}
	//if (n_Cols < 1)
	//	n_Cols = 1;

	var str_Desc = document.getElementById("vw_class_desc").value; // 排序字段
	var str_DescType = document.getElementById("vw_class_descType").value; // 排列方式
	var str_isDiv = document.getElementById("vw_class_isDiv").value; // 输出格式
	var str_ulID = document.getElementById("vw_class_ulID").value; // DIV的ul属性ID
	var str_ulClass = document.getElementById("vw_class_ulClass").value; // DIV的ul属性Class
	var str_bfStr = document.getElementById("vw_class_bfStr").value; // 页面分隔符
	var str_isPic = document.getElementById("vw_class_isPic").value; // 是否调用图片新闻
	var str_NaviNumber = document.getElementById("vw_class_naviNumber").value; // 导读显示字数
	var str_TitleNumer = document.getElementById("vw_class_titleNumer").value; // 标题显示字数
	var str_ContentNumber = document.getElementById("vw_class_contentNumber").value; // 内容切取字数(默认为200)
	var str_ShowNavi = document.getElementById("vw_class_showNavi").value; // 为在标题前加导航。（0表示无；1表示1234样式；2表示ABC样式，3表示自定义图片,默认为0）
	var str_NaviCSS = document.getElementById("vw_class_naviCSS").value; // 标题前的导航样式
	var str_ColbgCSS = document.getElementById("vw_class_colbgCSS").value; // 格式：VW:ColbgCSS=css1|css2,表示：css1表示奇数项的背景CSS，CSS2表示偶数项的背景CSS，如果为空，则不控制
	var str_NaviPic = document.getElementById("vw_class_naviPic").value; // 自定义图片地址
	var str_PageStyle = document.getElementById("vw_class_pageStyle").value;
	$('#'+divID).showLoading();
	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        data:{     
			siteId : siteId,     
			classId : classId,
			tempPath : tempPath,
			pageSize : pageSize,
			currPage : currPage,
			pageTotal : pageTotal,
			recordCount : recordCount,
    		str_NewsType : str_NewsType,
    		str_ListType : str_ListType,
    		str_isSub : str_isSub,
    		n_Cols : n_Cols,
    		str_Desc : str_Desc,
    		str_DescType : str_DescType,
    		str_isDiv : str_isDiv,
    		str_ulID : str_ulID,
    		str_ulClass : str_ulClass,
    		str_bfStr : str_bfStr,
    		str_isPic : str_isPic,
    		str_NaviNumber : str_NaviNumber,
    		str_TitleNumer : str_TitleNumer,
    		str_ContentNumber : str_ContentNumber,
    		str_ShowNavi : str_ShowNavi,
    		str_NaviCSS : str_NaviCSS,
    		str_ColbgCSS : str_ColbgCSS,
    		str_NaviPic : str_NaviPic,
    		str_PageStyle : str_PageStyle
        },
        type: 'post',
        dataType: 'html',
        success:function(data) {     
        	document.getElementById(divID).innerHTML=data; 
        	$('#'+divID).hideLoading();
		},     
		error : function() {        
			document.getElementById(divID).innerHTML="";   
			$('#'+divID).hideLoading();
		}     
    });
}

function getNewsCommentForm(targetUrl,divID){
	var siteId = document.getElementById("vw_newsComment_siteId").value;//站点ID
	var newsId = document.getElementById("vw_newsComment_newsId").value;//新闻ID
	var tempPath = document.getElementById("vw_newsComment_tempPath").value;//新闻评论模板
	
	$('#'+divID).showLoading();
	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        data:{     
			siteId : siteId,     
			newsId : newsId,
			tempPath : tempPath
        },
        type: 'post',
        dataType: 'html',
        success:function(data) {     
        	document.getElementById(divID).innerHTML=data; 
        	$('#'+divID).hideLoading();
		},     
		error : function() {        
			document.getElementById(divID).innerHTML="";   
			$('#'+divID).hideLoading();
		}     
    });
}
function pubPostNewsComment(targetUrl,siteId,newsId){
	if ( !$("#vw_newsCommentForm_guessName").is(":checked") ){
		if(  $("#vw_newsCommentForm_userName").val()=="" ){
			alert("请填写网名！");
			return;
		}
	}
	if(  $("#vw_newsCommentForm_verifyCode").val()=="" ){
		alert("请填写验证码！");
		return;
	}
	if(  $("#vw_newsCommentForm_content").val()=="" ){
		alert("请填写评论内容！");
		return;
	}
	var userName = $("#vw_newsCommentForm_userName").val();
	var password = $("#vw_newsCommentForm_passWord").val();
	var verifyCode = $("#vw_newsCommentForm_verifyCode").val();
	var content = $("#vw_newsCommentForm_content").val();
	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        data:{     
			siteId : siteId,     
			newsId : newsId,
			userName : userName,
			password : password,
			verifyCode : verifyCode,
			content : content
        },
        type: 'post',
        dataType: 'html',
        success:function(data) {   
        	alert(data);
		},     
		error : function() {        
			alert("提交失败！");
		}     
    });
}
//公共ajax取数据
function getNewsCommentListAjax(targetUrl,divID)
{
	
	var siteId = document.getElementById("vw_newsCommentList_siteId").value;//站点ID
	var newsId = document.getElementById("vw_newsCommentList_newsId").value;//栏目ID
	var tempPath = document.getElementById("vw_newsCommentList_tempPath").value;//栏目列表模板
	var pageSize = document.getElementById("vw_newsCommentList_PageSize").value;//每页新闻数量
	var currPage = document.getElementById("vw_newsCommentList_currPage").value;//当前第几页
	var pageTotal = document.getElementById("vw_newsCommentList_totalPages").value;//总页数
	var recordCount = document.getElementById("vw_newsCommentList_totalRecordNum").value;//总记录条数

	var str_bfStr = document.getElementById("vw_newsCommentList_bfStr").value; // 页面分隔符
	var str_PageStyle = document.getElementById("vw_newsCommentList_pageStyle").value;
	$('#'+divID).showLoading();
	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        data:{     
			siteId : siteId,     
			newsId : newsId,
			tempPath : tempPath,
			pageSize : pageSize,
			currPage : currPage,
			pageTotal : pageTotal,
			recordCount : recordCount,
    		str_bfStr : str_bfStr,
    		str_PageStyle : str_PageStyle
        },
        type: 'post',
        dataType: 'html',
        success:function(data) {     
        	document.getElementById(divID).innerHTML=data; 
        	$('#'+divID).hideLoading();
		},     
		error : function() {        
			document.getElementById(divID).innerHTML="";   
			$('#'+divID).hideLoading();
		}     
    });
}

function fixErrorForm(siteId)
{
	var targetUrl = "/front/onlineFixError/addErrorInfoForm.jsp?siteId="+siteId;
	//window.showModalDialog(targetUrl,window,"help:no;status:no;dialogWidth:650px;dialogHeight:300px");
	window.open(targetUrl,'newwin','height=300,width=650,top=200,left=400,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no');
}

//ajax前台会员注册
function frontMemberRegistSubmit(){
	if($.trim($("#mem_account").val())==''){
		 alert('注册账号不能为空！');
		 return;
	}

	if($.trim($("#mem_password").val())==''){
		 alert('密码不能为空！');
		 return;
	}

	if($.trim($("#mem_passwordN").val())==''){
		 alert('确认密码不能为空！');
		 return;
	}

	if($("#mem_password").val()!=$("#mem_passwordN").val()){
		 alert('两次密码不一致！');
		 return;
	}

	if($.trim($("#mem_verifyCode").val())==''){
		 alert('验证码不能为空！');
		 return;
	}

	if($.trim($("#mem_nickname").val())==''){
		 alert('昵称不能为空！');
		 return;
	}

	var siteId = $.trim($("#mem_siteId").val());

	var account = $.trim($("#mem_account").val());
	var password = $.trim($("#mem_password").val());
	var nickname = $.trim($("#mem_nickname").val());
	var sex = $.trim($("#mem_sex").val());
	var email = $.trim($("#mem_email").val());
	var qq = $.trim($("#mem_qq").val());
	var area = $.trim($("#mem_area").val());
	var phone = $.trim($("#mem_phone").val());
	var verifyCode = $.trim($("#mem_verifyCode").val());

	$.ajax({
        url: '/fmember_regist.action?no-cache='+Math.random(),
        data:{     
			siteId : siteId,     
			account : account,
			password : password,
			nickname : nickname,
			sex : sex,
			email : email,
			qq : qq,
			area: area,
			phone : phone,
			verifyCode : verifyCode
        },
        type: 'post',
        dataType: 'json',
        success:function(data) {     
				var msg = data.obj;
				if(msg=='success'){
					alert('注册成功！');
					location.href = "/templets/scxzf/registSuccess.html";
				}
				else if(msg=='accountExist'){
					alert('账号已经存在！');
				}
				else if(msg=='verifyCodeError'){
					alert('验证码错误！');
				}
		}    
    });

}

//ajax前台会员登录
function frontMemberLoginSubmit(){
	if($.trim($("#mem_account").val())==''){
		 alert('账号不能为空！');
		 return;
	}

	if($.trim($("#mem_password").val())==''){
		 alert('密码不能为空！');
		 return;
	}
	var siteId = $.trim($("#mem_siteId").val());
	var account = $.trim($("#mem_account").val());
	var password = $.trim($("#mem_password").val());

	$.ajax({
        url: '/fmember_login.action?no-cache='+Math.random(),
        data:{     
			siteId : siteId,     
			account : account,
			password : password
        },
        type: 'post',
        dataType: 'json',
        success:function(data) {   
				var msg = data.obj;
				if(msg=='success'){
					//alert('登录成功！');
					location.reload();
				}
				else if(msg=='fail'){
					alert('账号密码不对，登录失败！');
				}
		}    
    });

}

//ajax获取登录后的会员信息
function ajaxGetMemberInfo(){
	var targetUrl = '/front/common/memberInfo.jsp';

	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        type: 'GET',
        dataType: 'json',
        success: function(data){
			if(data!=null && data!=''){
				var account = data.account;
				var nickname = data.nickname;
				$("#_mem_span").html('欢迎您！'+nickname+'['+account+']&nbsp;<a href="javascript:void(0)" onclick="frontMemberLogout();">退出</a>');
			}
        }
    });
}

//ajax前台会员退出
function frontMemberLogout(){
	var targetUrl = '/front/common/memberLogout.jsp';

	$.ajax({
        url: targetUrl+"?no-cache="+Math.random(),
        type: 'GET',
        dataType: 'html',
        success: function(data){
			//alert(data);
			location.reload();			
        }
    });
}

