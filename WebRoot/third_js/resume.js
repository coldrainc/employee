$(function(){
    questionMarkSet();
    addModuleLocate();
});

function addModuleLocate()
{
    $('.add').click(function(){
        var btop='';
        if($(this).parent('.hd')[0]){
            btop=$(this).parents('.box').offset().top+1;    
        }
        if($(this).parent('.tit')[0]){
            btop=$(this).parent('.tit').offset().top-60;
        }
        $(window).scrollTop(btop);

    })
}

function setUpToTop(){
    var stop='';
   $(window).scroll(function(){
        stop=$(this).scrollTop();
        if(stop>0){
            $('#goTop').show();
        }else{
            $('#goTop').hide();
        }
   });
}

function setPageAction()
{
    var mainW=$('.main').width();
    var columnW=$('.column').width();
    $(window).scroll(function(event) {
        linkage();
    })
    $('.nav_body a').eq(0).addClass('on').append('<em></em>');
    var navTop = $('.nav').length ? $('.nav').offset().top : 0;
    linkage();
    function linkage(){
        var st=$(window).scrollTop();
        if(st>=navTop){
            $('.nav').css({'position':'fixed','top':'0','z-index':9});
        }else if(st<navTop){
            $('.nav').css({'position':''});
        }
        var abc = 0;
        var le = $('.mk').length;
        $('.mk').each(function(index, val) {
            var a = $(this).offset().top;
            var b = $('.nav').offset().top;
            if(a>=b){
                abc = index;
                if( index == 0 || index == le ){
                         abc = index+1;
                }
                return false;
            }
        });
        $('.mk').children('.hd').removeClass('on').css({left:''}).next().css({'margin-top':''});
        $('.nav_body a').removeClass('on').children('em').remove();
        $('.mk').eq(abc-1).children('.hd').addClass('on').next().css({'margin-top':'59px'});

        $('.nav_body a').eq(abc-1).addClass('on').append('<em></em>');

        var navL=$(document).scrollLeft();
        var windowW=$(window).width();
        var hleft='';
        if(windowW<=mainW) {
            $('.nav').css({'left':-navL});
            hleft=mainW-columnW-navL;
        }else{
            $('.nav').css({'left':''});
            hleft=mainW-$('.column').width()+$('.main').offset().left;
        }
        $('.mk').eq(abc-1).children('.hd').css({'left':hleft});
    }
}

function questionMarkSet()
{
    var sSelecter = arguments[0] ? arguments[0] : '.hp';
    $(sSelecter).click(function(event){
        var module = "gk";
        var id = $(this).attr("id");
        switch(id)
        {
            case "openess_question":
                window.open("http://help.51job.com/qa.html?flag=true&sign=3.4.1");
                break;
            case "star_question":
                window.open("http://help.51job.com/qa.html?flag=true&sign=3.4.2");
                break;
            case "education_question":
                window.open("http://help.51job.com/qa.html?flag=true&sign=3.4.3");
                break;
            case "step1_eduquestion":
                window.open("http://help.51job.com/qa.html?flag=true&sign=3.4.3");
                break;
            default:
                break;
        }
	});
}

(function(){
	$("input[type='text'],textarea").each(function(){
		if($(this).val() == $(this).attr('title')){
			$(this).val('');
		}
		addInput($(this));
	});
})();

$("input[type='text'],textarea").focus(function(){	
	var v = $(this).attr('title');
	if(v){
		if($(this).val() == v){
			$(this).val('');
		}
		$(this).removeClass('clb');
	}
	
}).blur(function(){
	if(!$(this).val()){
		addInput($(this));
	}
});

function addInput(obj){
	if(!obj.val() && obj.attr('title')){
		obj.addClass('clb');
		obj.val(obj.attr('title'));
	}
}

function showMoreClickEvent(p_oEvent)
{
    if($('.main').hasClass('eng')){
        if(($(p_oEvent).hasClass('on'))){
            $(p_oEvent).removeClass('on').children('span').html('More').next().css('display','none').parent().next().css('display','none');
        }else{
            $(p_oEvent).addClass('on').children('span').html('Hide').next().css('display','block').parent().next().css('display','block');
        }
    }else{
        if( ($(p_oEvent).hasClass('on')) && (!$(p_oEvent).parent().parent().hasClass('m1')) ){
            $(p_oEvent).removeClass('on').children('span').html('更多展开').next().css('display','none').parent().next().css('display','none');
        }else if( (!$(p_oEvent).hasClass('on')) && (!$(p_oEvent).parent().parent().hasClass('m1')) ){
            $(p_oEvent).addClass('on').children('span').html('更多收起').next().css('display','block').parent().next().css('display','block');
        }else if( ($(p_oEvent).hasClass('on')) && ($(p_oEvent).parent().parent().hasClass('m1')) ){
            $(p_oEvent).removeClass('on').children('em').css('display','none').parent().next().css('display','none');
        }else{
            $(p_oEvent).addClass('on').children('em').css('display','block').parent().next().css('display','block');
        }
    }
}

(function($) {
    $.fn.switchselection = function(options)
    {
        var oSettings = {
            'hidden_id'                         :'hidden_id',
            'default_selection'                 :'0',
            'data'                              :{
                                                    "hidden_id_0":{
                                                        "k": "0",
                                                        "v": "男"
                                                    }, 
                                                    'hidden_id_1':{
                                                        "k": "1",
                                                        "v": "女"
                                                    }
                                                },
            'beforeClick'                       :"",
            'afterClick'                        :""
        };
        return this.each(function(){
            if(options)
            {
                $.extend(oSettings, options);
            }
            oSettings = initSettings(oSettings);
            initSelection(oSettings);
            $.each(oSettings.data, function(key, value){
                $("#" + key).click(function(){
                    if(oSettings.beforeClick(value.k))
                    {
                        if($("#" + oSettings.hidden_id).val() == value.k)
                        {
                            return;
                        }
                        $("#" + oSettings.hidden_id).val(value.k);
                        $(this).parent().find("span.on").removeClass("on");
                        $(this).addClass("on");
                        oSettings.afterClick(value.k);
                    }
                });
            });
        })
        
        function initSettings(oSettings)
        {
            var oPrivateInit = {
                'default_selection'             :'0',
                'beforeClick'                   :function before(sSelection){return true;},
                'afterClick'                    :function after(sSelection){return;}
            }
            
            $.each(oPrivateInit, function (i, value) {
                if ('' == oSettings[i]) {
                    oSettings[i] = value;
                }
            });
            
            return oSettings;
        }
        
        function initSelection(oSettings)
        {
            sHiddenVal = $("#" + oSettings.hidden_id).val();
            if(sHiddenVal == "")
            {
                if(oSettings.default_selection != "")
                {
                    $("#" + oSettings.hidden_id + "_" + oSettings.default_selection).addClass("on");
                    $("#" + oSettings.hidden_id).val(oSettings.default_selection);
                }
            }
            else
            {
                $("#" + oSettings.hidden_id + "_" + sHiddenVal).addClass("on");
            }
        }
    }
})(jQuery);

function unsetControler(id)
{
    $("#" + id).find("div.ul").empty();
    $("#" + id).unbind("click");
    $("#" + id).unbind("keydown");
}

function checkBoxClick(p_sHiddenId, p_oObject)
{
    var sEmStr = arguments[2] || '';
    p_oObject = sEmStr == '' ? p_oObject : sEmStr;
    
	if($(p_oObject).hasClass("on")){
		$(p_oObject).removeClass("on");
        $("#" + p_sHiddenId).val("0");
	}else{
		$(p_oObject).addClass("on");
        $("#" + p_sHiddenId).val("1");
	}
}

function viewPicture(p_imageid, p_imgage)
{
    p_imgage = p_imgage + '&' + Math.random();
    var image= new Image();
    image.src = p_imgage;
    var oLayerParams = {'layer_close_class': 'pic_view_' + p_imageid};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    jQuery.FLayer.setContent(oLayerSettings, '<div class="View_pop"><div class="imgBox" id="pic_div_'+ p_imageid +'"><img style="margin-left:320px;margin-top:280px;" width="40" height="40" id="pic_loading_'+ p_imageid +'" src="'+ window.cfg.root_img +'/pop/loading_pop.gif" /><img style="display:none;margin-top:280px;margin-left:320px" id="pic_'+ p_imageid +'" src="'+ p_imgage +'" width="40" height="40" alt="图片"></div><div class="close pic_view_' + p_imageid +'"></div></div>');
    jQuery.FLayer.open(oLayerSettings);
    var timer = setInterval(function(){
        if ($('#pic_' + p_imageid)[0].complete == true)
        {
            var height = image.height; 
            var width = image.width; 
            var size = ResizeImage(height, width, 600, 680);
            $('#pic_' + p_imageid).attr('width', size.width);
            $('#pic_' + p_imageid).attr('height', size.height);
            $('#pic_' + p_imageid).css('margin-left', (680 - size.width)/2);
            $('#pic_' + p_imageid).css('margin-top', (600 - size.height)/2);
            $('#pic_loading_' + p_imageid).hide();
            $('#pic_' + p_imageid).fadeIn("normal","linear");
            clearInterval(timer);
        }
    }, 20);
}

function ResizeImage(height, width, maxheight, maxwidth)
{
    var ratio = 1;
    if (height == 0) height = maxheight;
    if (width == 0) width = maxwidth;
    if (width >= maxwidth && height >= maxheight)
    {
        if (width > height)
        {
            ratio = maxwidth / width;
            height = height * ratio;
            width = maxwidth;
        }
        else
        {
            ratio = maxheight / height;
            width = width * ratio;
            height = maxheight;
        }
    }        
    else if (width >= maxwidth)
    {
        ratio = maxwidth / width;
        height = height * ratio;
        width = maxwidth;
    }
    else if (height >= maxheight)
    {
        ratio = maxheight / height;
        width = width * ratio;
        height = maxheight;
    }
    
    return {height: height, width: width, ratio: ratio};
}

function setAvatar()
{
    var oLayerParams = {'layer_close_class': 'pic_avatar_close'};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    if (window.cfg.lang == 'c'){
        jQuery.FLayer.setContent(oLayerSettings, '<div class="panel_lnp panel_py panel_photo"><form name="avatar" id="avatar_form" method="post" action="'+ window.cfg.root_ajax +'/avatar.php"><input id="avatar_action" type="hidden" name="action" value="upload"><input id="avatar_resumeid" name="userid" type="hidden" value=""><input id="avatar_x" name="x" type="hidden" value=""><input id="avatar_y" name="y" type="hidden" value=""><input id="avatar_x1" name="x1" type="hidden" value=""><input id="avatar_y1" name="y1" type="hidden" value=""><h2><p>上传照片</p><a href="javascript:void(0)" class="pic_avatar_close" onclick="deleteAvatarTemp();return false;"><i></i></a></h2><div class="panel_pin"><div class="l"><p class="nt"><strong>调整照片</strong><br>拖拽方框，调整照片合适的位置和尺寸<br><span class="c_999">(大小不能超过1M，支持格式为:gif、jpg、png等)</span></p><div class="panel_u_photo"><div style="background-color:#dddddd;width:296px;height:296px;display:none;"><img style="display:none;margin-left:130px;margin-top:130px;" width="40" height="40" id="pic_avatar_loading" src="'+ window.cfg.root_img +'/pop/loading_pop.gif" /></div><img id="avatar_pic" width="296" height="296" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default1.png" alt=""></div></div><div class="r"><div class="buox"><p class="flbut"><input name="avatar" id="avatar_choose" type="file" accept="image/gif,image/jpeg,image/jpg,image/png" onchange="uploadAvatar();"><span>选择图片</span></p><span class="note c_orange" id="avatar_wrong" style="display:none;">请选择图片</span></div><p class="tl"><strong>照片预览</strong></p><div class="panel_r_photo" style="width:90px;height:110px;overflow:hidden;"><img id="avatar_preview" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default2.png" alt=""></div><div class="panel_r_photo photo2"><img id="avatar_preview2" width="90" height="110" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default3.png" alt=""></div></div><div class="clear"></div></div><div class="but_box"><span class="p_but" onclick="saveAvatar();">保存</span><span class="p_but gray pic_avatar_close" onclick="deleteAvatarTemp();">取消</span></div></form></div>');
    }else{
        jQuery.FLayer.setContent(oLayerSettings, '<div class="panel_lnp panel_py panel_photo"><form name="avatar" id="avatar_form" method="post" action="'+ window.cfg.root_ajax +'/avatar.php"><input id="avatar_action" type="hidden" name="action" value="upload"><input id="avatar_resumeid" name="userid" type="hidden" value=""><input id="avatar_x" name="x" type="hidden" value=""><input id="avatar_y" name="y" type="hidden" value=""><input id="avatar_x1" name="x1" type="hidden" value=""><input id="avatar_y1" name="y1" type="hidden" value=""><h2><p>Upload Photo</p><a href="javascript:void(0)" class="pic_avatar_close" onclick="deleteAvatarTemp();return false;"><i></i></a></h2><div class="panel_pin"><div class="l"><p class="nt"><strong>Adjust the photo</strong><br>Drag the box, adjust to the suitable location and size.<br><span class="c_999">(GIF, JPG, PNG, maximum 1M)</span></p><div class="panel_u_photo"><div style="background-color:#dddddd;width:296px;height:296px;display:none;"><img style="display:none;margin-left:130px;margin-top:130px;" width="40" height="40" id="pic_avatar_loading" src="'+ window.cfg.root_img +'/pop/loading_pop.gif" /></div><img id="avatar_pic" width="296" height="296" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default1.png" alt=""></div></div><div class="r"><div class="buox"><p class="flbut"><input name="avatar" id="avatar_choose" type="file" accept="image/gif,image/jpeg,image/jpg,image/png" onchange="uploadAvatar();"><span>Select Photo</span></p><span class="note c_orange" id="avatar_wrong" style="display:none;">请选择图片</span></div><p class="tl"><strong>Photo preview</strong></p><div class="panel_r_photo" style="width:90px;height:110px;overflow:hidden;"><img id="avatar_preview" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default2.png" alt=""></div><div class="panel_r_photo photo2"><img id="avatar_preview2" width="90" height="110" src="' + window.cfg.domain.img + '/im/2016/pop/pop_photo_default3.png" alt=""></div></div><div class="clear"></div></div><div class="but_box"><span class="p_but" onclick="saveAvatar();">Save</span><span class="p_but gray pic_avatar_close" onclick="deleteAvatarTemp();">Cancel</span></div></form></div>');
    }
    jQuery.FLayer.open(oLayerSettings);
}

var isAvatarUploaded = 0;
function uploadAvatar()
{
    $('#avatar_wrong').hide();
    $('#avatar_pic').imgAreaSelect({hide:true});
    $('#avatar_resumeid').val($('#resumeid').val());
    $("#avatar_form").ajaxSubmit({
        dataType : 'json',
        success : function showResponse(responseJson,statusText){
            if(responseJson.check == 1)
            {
                var src = window.cfg.root_ajax +'/image.php?type=avatartemp&userid='+$('#resumeid').val()+'&'+Math.random();
                $('#avatar_pic').attr('src', src);
                $('#avatar_preview').attr('src', src);
                $('#avatar_preview2').attr('src', src);
                var image= new Image();
                image.src = src;
                $('#pic_avatar_loading').show();
                $('#pic_avatar_loading').parent().show();
                $('#avatar_pic').hide();
                var timer = setInterval(function(){
                    if (image.complete == true)
                    {
                        isAvatarUploaded = 1;
                        $('#pic_avatar_loading').hide();
                        $('#pic_avatar_loading').parent().hide();
                        var isSmallPic = false;
                        var height = image.height; 
                        var width = image.width; 
                        var isSmall = false;
                        var size = ResizeImage(image.height, image.width, 296, 296);
                        var cutWidth = 0;
                        var cutHeight = 0;
                        if (image.height <= 296 && image.width <= 296)
                        {
                            isSmallPic = true;
                            if (image.height > image.width)
                            {
                                size.ratio = 296 / image.height;
                                size.width = image.width * size.ratio;
                                size.height = 296;
                            }else{
                                size.ratio = 296 / image.width;
                                size.height = image.height * size.ratio;
                                size.width = 296;
                            }
                        }
                        var imgMarginLeft = (296 - size.width)/2;
                        if (size.width > size.height)
                        {
                            if (isSmallPic){
                                cutWidth = size.height * 9 / 11;
                                cutHeight = size.height;
                                var scale = 110 / size.height;
                            }else{
                                cutWidth = size.ratio * image.height * 9 / 11;
                                cutHeight = size.ratio * image.height;
                                var scale = 90 / (size.ratio * image.height * 9 / 11);
                            }
                        }else if(size.width < size.height){
                            if (isSmallPic){
                                if ((size.width * 11 / 9) > (296 * 9 / 11))
                                {
                                    cutWidth = 296 * 9 / 11;
                                    cutHeight = 296;
                                    var scale = 110 / (296);
                                }else{
                                    cutWidth = size.width;
                                    cutHeight = size.width * 11 / 9;
                                    var scale = 90 / size.width;
                                }
                            }else{
                                if (size.ratio * image.width > (296 * 9 / 11))
                                {
                                    cutWidth = 296 * 9 / 11;
                                    cutHeight = 296;
                                    var scale = 110 / (296);
                                }else{
                                    cutWidth = size.ratio * image.width;
                                    cutHeight = size.ratio * image.width * 11 / 9;
                                    var scale = 110 / (size.ratio * image.width * 11 / 9);
                                }
                            }
                        }else{
                            cutWidth = 296 * 9 / 11;
                            cutHeight = 296;
                            var scale = 110 / 296;
                        }
                        
                        var cutMarginLeft = (size.width - cutWidth)/2;
                        $('#avatar_x').val(cutMarginLeft);
                        $('#avatar_y').val(0);
                        $('#avatar_x1').val(cutMarginLeft + cutWidth);
                        $('#avatar_y1').val(cutHeight);
                        
                        $('#avatar_preview,#avatar_preview2').css({
                            width: Math.round(scale * size.width),
                            height: Math.round(scale * size.height),
                            marginLeft: -(size.width-cutWidth)/2 * 90 / cutWidth,
                            marginTop: 0
                        });
                        $('#avatar_pic').attr('width', size.width);
                        $('#avatar_pic').attr('height', size.height);
                        $('#avatar_pic').css('margin-left',imgMarginLeft);
                        $('#avatar_ratio').val(size.ratio);
                        $('#avatar_pic').show();
                        
                        $('#avatar_pic').imgAreaSelect({
                            x1: (size.width-cutWidth)/2,
                            x2: size.width - (size.width-cutWidth)/2,
                            y1: 0,
                            y2: $('#avatar_y1').val(),
                            hide: false,
                            aspectRatio: '9:11',
                            handles: true,
                            onSelectEnd: function (img, selection) {
                                if (!selection.width || !selection.height)
                                    return;
                                if (size.width > size.height)
                                {
                                    var scale = 90 / selection.width;
                                }else{
                                    var scale = 110 / selection.height;
                                }
                                $('#avatar_preview,#avatar_preview2').css({
                                    width: Math.round(scale * size.width),
                                    height: Math.round(scale * size.height),
                                    marginLeft: -Math.round(scale * selection.x1),
                                    marginTop: -Math.round(scale * selection.y1)
                                });
                                $('#avatar_x').val(selection.x1);
                                $('#avatar_y').val(selection.y1);
                                $('#avatar_x1').val(selection.x2);
                                $('#avatar_y1').val(selection.y2);
                            }
                        });
                        clearInterval(timer);
                    }
                }, 20);
            }else{
                if (responseJson.check == -1){
                        if (window.cfg.lang=='c'){
                            $('#avatar_wrong').html('上传文件失败');
                        }else{
                            $('#avatar_wrong').html('upload file fail');
                        }
                    }else if(responseJson.check == -3){
                        if (window.cfg.lang=='c'){
                            $('#avatar_wrong').html('上传文件格式错误，仅限JPG、PNG和GIF格式');
                        }else{
                            $('#avatar_wrong').html('Wrong type, JPG, PNG and GIF only');
                        }
                    }else if(responseJson.check == -2){
                        if (window.cfg.lang=='c'){
                            $('#avatar_wrong').html('上传文件大小错误，限定1M');
                        }else{
                            $('#avatar_wrong').html('Wrong size，max 1M');
                        }
                    }
                    $('#avatar_wrong').show();
            }
        }
    });
    return false;
}

function saveAvatar()
{
    if ($('#avatar_x1').val() == 'NaN' || $('#avatar_y1').val() == 'NaN') {
        if (window.cfg.lang=='c'){
            $('#avatar_wrong').html('请选择头像区域');
        }else{
            $('#avatar_wrong').html('Select area to cut');
        }
        $('#avatar_wrong').show();
    }else {
        if(isAvatarUploaded)
    {
        isAvatarUploaded = 0;
        $('#avatar_action').val('cut');
        $("#avatar_form").ajaxSubmit({
            dataType : 'json',
            success : function showResponse(responseJson,statusText){
                if (responseJson.result == 1)
                {
                    $('#base_avatar').attr('src', window.cfg.root_ajax +'/image.php?type=avatar&userid='+ $('#resumeid').val()+'&'+Math.random());
                    isAvatarUploaded = 0;
                    $('#avatar_pic').imgAreaSelect({hide:true});
                    $('.pic_avatar_close').click();
                    $('#base_avatar_delete').bind("click", function(){deleteAvatarConfirm()});
                    $('#base_avatar_delete').removeClass("clb");
                    $('#base_avatar_delete').css("cursor", "pointer");
                    $('#avatar_choose').val('');
                }else{
                    isAvatarUploaded = 1;
                    if (window.cfg.lang=='c'){
                        $('#avatar_wrong').html('保存失败,请稍后尝试');
                    }else{
                        $('#avatar_wrong').html('Try later');
                    }
                    $('#avatar_wrong').show();
                }
            }
        });
    }else{
        if (window.cfg.lang=='c'){
            $('#avatar_wrong').html('请选择图片');
        }else{
            $('#avatar_wrong').html('Please select photo')
        }
        $('#avatar_wrong').show();
    }
    }
}


function deleteAvatarTemp()
{
    if (isAvatarUploaded)
    {
        var url = window.cfg.root_ajax +'/avatar.php';
        $.post(url, {action: 'deletetemp', userid: $('#resumeid').val()});
        isAvatarUploaded = 0;
    }
    $('#avatar_pic').imgAreaSelect({hide:true});
}


function deleteAvatarConfirm()
{
    if($("#base_avatar").attr("src").indexOf("image.php") == '-1')
    {
        return; 
    }
    var oLayerParams = {'layer_close_class': 'pic_delete_avatar_close'};
    oLayerSettings = jQuery.FLayer.init(oLayerParams);
    if (window.cfg.lang == 'c'){
        jQuery.FLayer.setContent(oLayerSettings, '<div class="panel_lnp panel_py"><h2><p>提示</p><a href="javascript:void(0);" class="pic_delete_avatar_close"><i></i></a></h2><div class="pannel_con"><div class="gp2"><p class="wd center c_666">确定要删除照片吗？<br>删除照片后企业将无法获取对你的第一感官印象</p></div></div><div class="but_box b2"><span class="p_but" onclick="deleteAvatar();">确定</span><span class="p_but gray" onclick="$(\'.pic_delete_avatar_close\').click();">取消</span></div></div>');
    }else{
        jQuery.FLayer.setContent(oLayerSettings, '<div class="panel_lnp panel_py"><h2><p>Advice</p><a href="javascript:void(0);" class="pic_delete_avatar_close"><i></i></a></h2><div class="pannel_con"><div class="gp2"><p class="wd center c_666">Are you sure to delete the photo？<br>HR will not be able to get your first impression without a photo.</p></div></div><div class="but_box b2"><span class="p_but" onclick="deleteAvatar();">Confirm</span><span class="p_but gray" onclick="$(\'.pic_delete_avatar_close\').click();">Cancel</span></div></div>');
    }
    jQuery.FLayer.open(oLayerSettings);
}

function deleteAvatar()
{
    var url = window.cfg.root_ajax +'/avatar.php';
    $.post(url, {action: 'delete', userid: $('#resumeid').val()}, function(responseJson){
        if (responseJson.result == 1)
        {
			if($("#base_sex").val()=='0'){
				$('#base_avatar').attr('src', window.cfg.root_img + '/resume/man.png');
			}else{
				$('#base_avatar').attr('src', window.cfg.root_img + '/resume/woman.png');
			}
            $('.pic_delete_avatar_close').click();
            $('#base_avatar_delete').css("cursor", "default");
            $('#base_avatar_delete').addClass("clb");
        }
    }, 'json');
}

var existEditDiv = false;
window.onbeforeunload = function(){
    if (existEditDiv){
        if (window.cfg.lang == 'c'){
            return '内容还未保存，确认离开该页面吗？';
        }else {
            return 'Change is not saved yet,sure to leave?';
        }
    }
}

function closeAllFloatDiv()
{
    var p_oJqueryOn = arguments[0] ? arguments[0] : "";
    var p_oJqueryIndex = arguments[1] ? arguments[1] : "";
    var p_oJqueryAssoInput = arguments[2] ? arguments[2] : "";
    $("div[float-on='true']").not(p_oJqueryOn).each(function(){
        $(this).removeClass("on");
        $(this).attr("float-on", "false");
        $(this).removeClass("focusinput");
    });
    $("div[float-on='false']").not(p_oJqueryOn).each(function(){
        $(this).removeClass("focusinput");
    });
     
    $("div[float-index='true']").not(p_oJqueryIndex).each(function(){
        $(this).css("z-index", "0");
        $(this).attr("float-index", "false");
    });
    $("div[layer_float_on='true']").each(function(){
        $(this).css("display", "none");
        $(this).attr("layer_float_on", "false");
    });
    $("input[pre_value='']").not(p_oJqueryAssoInput).each(function(){
        if($(this).hasClass("placeholder"))
        {
            return;
        }
        else
        {
            $(this).val("");
        }
    });
    $("input[pre_code='']").val("");
    
    $('.flboxwp,.ln,.c,.box').css("z-index", "");
    $('.hpBox').removeClass("on").parents('.c,.box,.top_wrap,.wrap,.cup').css("z-index", "");
}

function checkTextAreaInput(p_oObj, p_iMaxLen)
{
    var sLang = arguments[2] ? arguments[2] : "c";
    var sId = arguments[3] ? arguments[3] : (p_oObj.id.toString() + "_chars");
    if (p_oObj == null || p_oObj == undefined || p_oObj == "")
    {
        return;
    };
    if ($("#" + sId).length == 0)
    {
        return;
    }
    if (p_iMaxLen == null || p_iMaxLen == undefined || p_iMaxLen == "")
    {
        p_iMaxLen = sLang == "e" ? 2000 : 1000;
    }
    var iLen = sLang == "e" ? Math.ceil(strlength(p_oObj.value)) : Math.ceil(strlength(p_oObj.value)/2);
    var sMessage = iLen + "/" + p_iMaxLen + " " + lang['character'];
    $("#" + sId).text(sMessage);
    if (iLen > p_iMaxLen)
    { 
        $("#" + sId).addClass("c_orange");
    }
    else
    {
        $("#" + sId).removeClass("c_orange");
    }   
}

function strlength(str){
	return str.replace(/[^\x00-\xff]/gi,'xx').length;
}

function checkNumandChar(p_sStr)
{
    var sFormat = /^[A-Za-z0-9]*$/;
    return p_sStr.match(sFormat) ? true : false;
}

function checkEmpty(p_sStr)
{
    if($.trim(p_sStr).length == 0)
    {
        return false;
    }
    return true;
}

function checkNumber(p_sStr)
{
    var sType = arguments[1] || "";
    if(isNaN(p_sStr))
    {
        return false;
    }
    if(sType == "int")
    {
        var sFormat = /^[1-9][0-9]*$/;
        if(!p_sStr.match(sFormat))
        {
            return false;
        }
    }
    if(sType == "numberchar")
    {
        var sFormat = /^[0-9][0-9]*$/;
        if(!p_sStr.match(sFormat))
        {
            return false;
        }
    }
    return true;
}

function checkLength(p_sStr, p_sMin, p_sMax)
{
    if(p_sMin == "" && p_sMax != "")
    {
        if(strlength(p_sStr) > Number(p_sMax))
        {
            return false;
        }
    }
    if(p_sMax == "" && p_sMin != "")
    {
        if(strlength(p_sStr) < Number(p_sMin))
        {
            return false;
        }
    }
    if(p_sMax != "" && p_sMin != "")
    {
        if(strlength(p_sStr) < Number(p_sMin) || strlength(p_sStr) > Number(p_sMax))
        {
            return false;
        }
    }
    return true;
}

function checkFixedLength(p_sStr, p_sLength)
{
    if(strlength(p_sStr) != Number(p_sLength))
    {
        return false;
    }
    return true;
}

function compareNum(p_sStr, p_sSmallStr)
{
    if(Number(p_sStr) <= Number(p_sSmallStr))
    {
        return false;
    }
    return true;
}

function checkDateFormat(p_sStr, p_sType)
{
    if(p_sStr == "")
    {
        return true;
    }
    switch (p_sType)
    {
        case 'full':
            var result = p_sStr.match(/^(\d{1,4})(\/)(\d{1,2})\2(\d{1,2})$/);
            if(result == null)
            {
                return false;
            }
            var d = new Date(result[1], result[3] - 1, result[4]);
            return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3] && d.getDate() == result[4]);
            break;
        case 'ym':
            var result = p_sStr.match(/^(\d{1,4})(\/)(\d{1,2})$/);
            if(result == null)
            {
                return false;
            }
            var d = new Date(result[1], result[3] - 1, "1")
            return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3]);
            break;
        case 'y':
            return checkNumber(p_sStr, "int");
    }
}

function checkDateRange(p_sStr, p_sType, p_minDate, p_maxDate)
{
    if(p_sStr == "")
    {
        return true;
    }
    switch (p_sType)
    {
        case 'full':
            if(p_maxDate == "now")
            {
                nowDate = window.cfg.nowdate.split("-");
                p_maxDate = nowDate[0] + "/" +　nowDate[1] + "/" + nowDate[2];
            }
            var aMin = p_minDate.match(/^(\d{1,4})(\/)(\d{1,2})\2(\d{1,2})$/);
            var aMax = p_maxDate.match(/^(\d{1,4})(\/)(\d{1,2})\2(\d{1,2})$/);
            var result = p_sStr.match(/^(\d{1,4})(\/)(\d{1,2})\2(\d{1,2})$/);
            var dMinDate = new Date(aMin[1], Number(aMin[3]) - 1, aMin[4]);
            var dMaxDate =  new Date(aMax[1], Number(aMax[3]) - 1, aMax[4]);
            var dDate = new Date(result[1], Number(result[3]) - 1, result[4]);
            return dDate >= dMinDate && dDate <= dMaxDate;
            break;
        case 'ym':
            if(p_maxDate == "now")
            {
                nowDate = window.cfg.nowdate.split("-");
                p_maxDate = nowDate[0] + "/" +　nowDate[1];
            }
            if(p_maxDate == "now+5")
            {
                nowDate = window.cfg.nowdate.split("-");
                p_maxDate = nowDate[0] + "/" +　(Number(nowDate[1]) + 5);
            }
            var aMin = p_minDate.match(/^(\d{1,4})(\/)(\d{1,2})$/);
            var aMax = p_maxDate.match(/^(\d{1,4})(\/)(\d{1,2})$/);
            var result = p_sStr.match(/^(\d{1,4})(\/)(\d{1,2})$/);
            var dMinDate = new Date(aMin[1], Number(aMin[3]) - 1, "1");
            var dMaxDate =  new Date(aMax[1], Number(aMax[3]) - 1, "1");
            var dDate = new Date(result[1], Number(result[3]) - 1, "1");
            return dDate >= dMinDate && dDate <= dMaxDate;
            break;
        case 'y':
            if(p_maxDate == "now")
            {
                nowDate = window.cfg.nowdate;
                p_maxDate = nowDate.split("-")[0];
            }
            return Number(p_sStr) >= Number(p_minDate) && Number(p_sStr) <= Number(p_maxDate);
            break;
    }
}

function checkMobilephoneFormat(p_sStr)
{
    var sReg = /^(1[3456789]{1,1}[0-9]{9,9})$/;
    return p_sStr.match(sReg) ? true : false;
}

function checkEmailFormat(p_sStr)
{
    p_sStr = p_sStr.toLocaleLowerCase();
    var sReg = /^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.|。])+([a-zA-Z]{2}|net|com|gov|mil|org|edu|int|name|asia)$/;
    return p_sStr.match(sReg) ? true : false;
}

function checkCardNum(p_sIdNum, p_sType)
{
    var sBirthday = arguments[2] || "";
    switch(p_sType)
    {
        case '0':
            var bResult = checkIdCardFormat(p_sIdNum) && checkIdCardBirth(p_sIdNum, sBirthday);
            break;
        case '1':
        case '2':
        case '4':
        case '3':
            var bResult = checkLength(p_sIdNum, "", "25");
            break;
    }
    return bResult;
}

function compareDate(p_sDate2, p_sDate1)
{
    if(p_sDate1 == "")
    {
        return true;
    }
    var arr = p_sDate1.split("/");
    var starttime = new Date(arr[0], arr[1], "01");
    var starttimes = starttime.getTime();
    var arrs = p_sDate2.split("/");
    var lktime = new Date(arrs[0], arrs[1], "01");
    var lktimes = lktime.getTime();
    if (starttimes > lktimes) {
        return false;
    }
    else
    {
        return true;
    }
}

function checkIdCardFormat(p_sIdNum)
{
    if(p_sIdNum.length == 18 && checkNumber(p_sIdNum.substr(0, 14), "numberchar") && checkNumandChar(p_sIdNum.substr(14, 4)) || p_sIdNum.length == 15 && checkNumber(p_sIdNum))
    {
        return true;
    }
    else
    {
        return false;
    }
}

function checkIdCardBirth(p_sIdNum, p_sBirthDate)
{
    var aBirth = p_sBirthDate.split("/");
    if(p_sIdNum.length == 18 && Number(aBirth[0]) == Number(p_sIdNum.substr(6, 4)) && Number(aBirth[1]) == Number(p_sIdNum.substr(10, 2)) && Number(aBirth[2]) == Number(p_sIdNum.substr(12, 2)) || p_sIdNum.length == 15 && Number(aBirth[0].substr(2, 2)) == Number(p_sIdNum.substr(6, 2)) && Number(aBirth[1]) == Number(p_sIdNum.substr(8, 2)) && Number(aBirth[2]) == Number(p_sIdNum.substr(10, 2)))
    {
        return true;
    }
    else
    {
        return false;
    }
}

function checkSalary(p_sStr)
{
    if((!checkNumber(p_sStr)) || (p_sStr.indexOf(".") > 1 && p_sStr.substr(0, 1) == "0") || $.trim(p_sStr).length > 6 || Number(p_sStr) > 999.99 || (p_sStr.indexOf(".") > -1 && p_sStr.indexOf(".") <  $.trim(p_sStr).length - 3) || p_sStr.indexOf(".") == -1 && p_sStr.substr(0, 1) == "0" && p_sStr != "0"|| Number(p_sStr) < 0 || p_sStr.substr(0, 1) == "+")
    {
        return false;
    }
    return true;
}

function checkResumeKey(p_sStr)
{
    var aArr = p_sStr.split(" ");
    if (aArr.length>10 || aArr.length != $.unique(aArr).length)
    {
        return 1;
    }
    var bLong = true;
    $.each(aArr, function(k, v){
        if(strlength(v) > 24)
        {
            bLong = false;
        }
    });
    if(!bLong)
    {
        return 2;
    }
    return 0;
}

function checkMultiSelect(p_sStr, p_sType, p_sMaxNum)
{
    if(p_sStr == "")
    {
        return true;
    }
    var aArr = p_sStr.split(",");
    if(aArr.length>Number(p_sMaxNum)) 
    {
        return false;
    }
    switch(p_sType)
    {
        case 'area':
            break;
        case 'func':
            break;
        case 'ind':
            break;
    }
    return true;
}

function checkUrl(p_sStr)
{
    var sReg = /^((http|https):\/\/)?([\w-_]+\..+)+/i;
    return p_sStr.match(sReg) ? true : false;
}

function checkSelfDefineMajor(p_sCode, p_sStr)
{
    if(p_sCode == "" || p_sCode.substr(p_sCode.length-2, 2) != "00")
    {
        return true;
    }
    if(p_sStr == "")
    {
        return false;
    }
    return true;
}

function checkSeletedMajor(p_sCode, p_sStr, p_sDegree)
{
    if(p_sCode == "" && p_sStr == "" && (p_sDegree == '1' || p_sDegree == '2'))
    {
        return true;
    }
    if(p_sCode == "")
    {
        return false;
    }
    return true;
}

function checkExpecSalary()
{
    if(!$("#int_salaryselect_list").is(":hidden"))
    {
        if($("#int_inputsalary").val() == "")
        {
            return "1";
        }
    }
    if(!$("#int_inputsalary").is(":hidden"))
    {
        if($("#int_inputsalary").val() == "")
        {
            return "2";
        }
        else
        {
            if((!checkNumber($("#int_inputsalary").val(), "int")) || Number($("#int_inputsalary").val()) > 9999999)
            {
                return "4";
            }
        }
    }
    if((!$("#int_salarymin").is(":hidden")) && (!$("#int_salarymax").is(":hidden")))
    {
        if($("#int_salarymin").val() == "" || $("#int_salarymax").val() == "")
        {
            return "2";
        }
        else
        {
            if(!checkNumber($("#int_salarymin").val(), "int") || !checkNumber($("#int_salarymax").val(), "int") || Number($("#int_salarymin").val()) > 9999999 || Number($("#int_salarymax").val()) > 9999999)
            {
                return "4";
            }
            if(Number($("#int_salarymin").val()) >= Number($("#int_salarymax").val()))
            {
                return "3";
            }
        }
    }
    return "0";
}

function getTypeInfo(sModule)
{
    return aConfig[sModule]['info'];
}

function checkInput(sModule, p_sWhen)
{
    var needShowError = arguments[2] == '0' ? '0' : '1';
    var bResult = true;
    var oCheckSetting = [];
    var oCheckDetail = [];
    var aWhen = [];
    var iCheckResult = 0;
    oCheckSetting = typeof sModule == 'string' ? aConfig[sModule]['validate'] : sModule;
    for (var key in oCheckSetting ){
        oCheckDetail = oCheckSetting[key];
        aWhen = oCheckDetail.when.split(",");
        if($.inArray(p_sWhen, aWhen) == -1)
        {
            break;
        }
        iCheckResult = checkInputByType(oCheckDetail.id, oCheckDetail.checktype, oCheckDetail.condition);
        $("#" + oCheckDetail.errid).hide();
        $('body').css('zoom','');
        if(iCheckResult != 0)
        {
            if(needShowError == '1'){
                showErrorBox(oCheckDetail.errid, oCheckDetail["err_" + iCheckResult]);
            }
            bResult = false;
        }
    }
    return bResult;
}

function getInputData(sModule, oData)
{
    $.each(aConfig[sModule]['data'], function (i, value) {
        oData[i] = $('#' + value).val();
    });
    
    switch(sModule)
    {
        case 'basedetail':
            var sBirthday= $('#base_birthday').val();
            aBirth = sBirthday.split("/");
            oData['birthday'] = aBirth[0] + "/" + (aBirth[1].length == 1 ? "0" : "") + aBirth[1] + "/" + (aBirth[2].length == 1 ? "0" : "") + aBirth[2];
            break;
        case 'salary':
            $.each(oData, function (i, value) {
                if(value.substr(0, 1) == ".")
                {
                    oData[i] = "0" + value;
                }
                if(oData[i].indexOf(".") != -1)
                {
                    if(oData[i].split(".")[1] == "0" || oData[i].split(".")[1] == "00")
                    {
                        oData[i] = oData[i].split(".")[0];
                    }
                }
            });
            break;
        case 'intention':
            if((!$("#int_salarymin").is(":hidden")) && (!$("#int_salarymax").is(":hidden")))
            {
                oData['inputsalary'] = $("#int_salarymin").val() + "-" + $("#int_salarymax").val();
            }
            else
            {
                oData['inputsalary'] = $("#int_inputsalary").val();
            }
            break;
        case 'work':
            oData['isoverseas'] = $("#work_isoverseas").val() == ""? "0" : $("#work_isoverseas").val();
            break;
		case 'step1':
			oData['userid'] = "";
			oData['current_situation'] = "0";
			oData['hukou'] = "";
			oData['marriage'] = "";
			oData['politics_status'] = "";
			oData['stature'] = "";
			oData['address'] = "";
			oData['zipcode'] = "";
			oData['homepage'] = "";
			oData['idcard'] = "";
			oData['othercontacts'] = "";
			oData['eduid'] = "";
			oData['cdescribe'] = "";
			oData['isoverseas'] = "0";
            oData['email'] = oData['email'].replace('。', '.');
			break;
        case 'step2':
            oData['workid'] = "";
            oData['companysize'] = "";
            oData['worktype'] = "0";
            oData['isoverseas'] = "0";
            oData['reportperson'] = "";
            oData['creportboss'] = "";
            oData['cscore'] = "";
            oData['cleavereason'] = "";
			break;
        case 'step3':
            oData['seektype'] = '0';
            oData['entrytime'] = "";
            if((!$("#int_salarymin").is(":hidden")) && (!$("#int_salarymax").is(":hidden")))
            {
                oData['inputsalary'] = $("#int_salarymin").val() + "-" + $("#int_salarymax").val();
            }
            else
            {
                oData['inputsalary'] = $("#int_inputsalary").val();
            }
			break;
        default:
            break;
    }
    $.each(oData, function(k, v){
        oData[k] = $.trim(v);
    });
    return oData;
}

function checkInputByType(p_sId, p_sType, p_oCondition)
{
    var iResult = 0;
    var aCheckList = p_sType.split(",");
    if($("#" + p_sId).length == 0)
    {
        return 0;
    }
    var sStr = $.trim($("#" + p_sId).val());
    for(i in aCheckList)
    {
        iResult += 1;
        switch(aCheckList[i])
        {
            case "equal":
                var equalval = p_oCondition.equalval ? p_oCondition.equalval : "";
                var equalid = p_oCondition.equalid ? p_oCondition.equalid : "";
                var sStr2 = $("#" + equalid).val();
                if(sStr2 !== equalval)
                {
                    return iResult;
                }
                break;
            case "number":
                if(!checkNumber(sStr, ""))
                {
                    return iResult;
                }
                break;
            case "numberint":
                if(sStr == "")
                {
                    return 0;
                }
                if(!checkNumber(sStr, "int"))
                {
                    return iResult;
                }
                break;
            case "numberchar":
                if(sStr == "")
                {
                    return 0;
                }
                if(!checkNumber(sStr, "numberchar"))
                {
                    return iResult;
                }
                break;
            case "numberandchar":
                if(!checkNumandChar(sStr))
                {
                    return iResult;
                }
                break;
            case "dateformat":
                if(p_sId == "base_workyear" && sStr == "0")
                {
                    return 0;
                }
                var datetype = p_oCondition.datetype ? p_oCondition.datetype : "";
                if(!checkDateFormat(sStr, datetype))
                {
                    return iResult;
                }
                break;
            case "daterange":
                var mindate = p_oCondition.mindate ? p_oCondition.mindate : "";
                var maxdate = p_oCondition.maxdate ? p_oCondition.maxdate : "";
                var datetype = p_oCondition.datetype ? p_oCondition.datetype : "";
                var sSmallStr = p_oCondition.smallid ? $("#" + p_oCondition.smallid).val() : "";
                if(!checkDateRange(sStr, datetype, mindate, maxdate) || !checkDateRange(sSmallStr, datetype, mindate, maxdate))
                {
                    return iResult;
                }
                break;
            case "length":
                var minlen = p_oCondition.min ? p_oCondition.min : "";
                var maxlen = p_oCondition.max ? p_oCondition.max : "";    
                if(!checkLength(sStr, minlen, maxlen))
                {
                    return iResult;
                }
                break;
            case "fixedlength":
                if(sStr == "")
                {
                    return 0;
                }
                var flength = p_oCondition.flength ? p_oCondition.flength : "";
                if(!checkFixedLength(sStr, flength))
                {
                    return iResult;
                }
                break;
            case "mobilephone":
                if(!checkMobilephoneFormat(sStr))
                {
                    return iResult;
                }
                break;
            case "email":
                if(!checkEmailFormat(sStr))
                {
                    return iResult;
                }
                break;
            case "empty":
                if(!checkEmpty(sStr))
                {
                    return iResult;
                }
                break;
            case "emptyboth":
                var sSecStr = p_oCondition.secid ? $("#" + p_oCondition.secid).val() : "";
                if((!checkEmpty(sStr)) && (!checkEmpty(sSecStr)))
                {
                    return iResult;
                }
                break;
            case "numcompare":
                var sSmallStr = p_oCondition.smallid ? $("#" + p_oCondition.smallid).val() : "";
                if(!compareNum(sStr, sSmallStr))
                {
                    return iResult;
                }
                break;
            case "datecompare":
                var sSmallStr = p_oCondition.smallid ? $("#" + p_oCondition.smallid).val() : "";
                if(!compareDate(sStr, sSmallStr))
                {
                    return iResult;
                }
                break;
            case "checkidcard":
                if($("#base_idcard").val() == "")
                {
                    return 0;
                }
                var sType = $("#base_idtype").val();
                var birthday = $("#base_birthday").val();
                if(sType == "0")
                {
                   if(!checkCardNum(sStr, sType, birthday))
                    {
                        return iResult;
                    } 
                }
                else
                {
                    if(!checkCardNum(sStr, sType))
                    {
                        return iResult + 1;
                    }
                }
                
                break;
            case "checkothercontact":
                if(sStr == "")
                {
                    return 0;
                }
                var sType = $("#base_contacttype").val();
                $sResult = checkOtherContact(sStr, sType);
                if($sResult != "0")
                {
                    return $sResult;
                }
                break;
            case "checkresumekey":
                if(sStr == "")
                {
                    return 0;
                }
                $sResult = checkResumeKey(sStr);
                if($sResult != "0")
                {
                    return $sResult;
                }
                break;
            case 'checkexpecsalary':
                $sResult = checkExpecSalary();
                if($sResult != "0")
                {
                    return $sResult;
                }
                break;
            case "checkmultiselect":
                var multitype = p_oCondition.multitype || "";
                var maxnum = p_oCondition.maxnum || "";
                if(!checkMultiSelect(sStr, multitype, maxnum))
                {
                    return iResult;
                }
                break;
            case 'checksalary':
                if(!checkSalary(sStr))
                {
                    return iResult;
                }
                break;
            case 'checkurl':
                if(!checkUrl(sStr))
                {
                    return iResult;
                }
                break;
            case 'checkemailexist':
                if(checkemail()){
                    return iResult;
                }
                break;
            case 'checkemailexistbyhiddeninput':
                var sHiddenInputValue = p_oCondition.hiddenid ? $("#" + p_oCondition.hiddenid).val() : "";
                if(sHiddenInputValue == '0'){
                    return iResult;
                }
                break;
            case 'selfdefinemajor':
                var sMajorCode = p_oCondition.secid ? $("#" + p_oCondition.secid).val() : "";
                if(!checkSelfDefineMajor(sMajorCode, sStr))
                {
                    return iResult;
                }
                break;
            case 'checkSelectedMajor':
                var sMajorCode = p_oCondition.secid ? $("#" + p_oCondition.secid).val() : "";
                var degreeid = p_oCondition.degreeid ? $("#" + p_oCondition.degreeid).val() : "";
                if(!checkSeletedMajor(sMajorCode, sStr, degreeid))
                {
                    return iResult;
                }
                break;
        }
    }
    return 0;
}

function showErrorBox(p_sId, p_sError)
{
    $("#" + p_sId).html(p_sError);
    $("#" + p_sId).show();
    $('body').css('zoom','1');
    if($("#" + p_sId).parents(".all").css("display") == "none")
    {
        showMoreClickEvent($("#" + p_sId).parents(".all").prevAll(".mbox"));
    }
}

function showbutton(event){
    var arr = [32,109,110,111,186,187,188,189,190,191,192,219,220,221,222,229];
    if((event.keyCode >= 48 && event.keyCode <=90) || (event.keyCode >= 94 && event.keyCode <=107) || $.inArray(event.keyCode, arr) != -1){
        $("#int_resumekey_add").show();
    }
    if($.trim($("#int_resumekey_input").val())==""){
        $("#int_resumekey_add").hide();
    }
}

function setRedBox(sType)
{
    $('textarea,input').focus(function(){
        $(this).parent().addClass("focusinput");
    });
    
    $('textarea,input').each(function(){
        if($(this).parent().attr("float-on") != "false" && $(this).parent().attr("float-on") != "true")
        {
            $(this).blur(function(){
                $(this).parent().removeClass("focusinput");
            });
        }
    });
}

var copyMajorName = function()
{
    $("#edu_majordes").val($("#edu_major_input").val());
};

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
    $.each(p_aNation, function(id, value){
        sHtml = '<li id="nationlist_'+ id +'" nationid="'+ id +'" title="'+ value[sLang] +'"><span>' + value[sLang] + '</span><i>+' + value['code'] + '</i></li>';
        oNationList.append(sHtml);
    });
    oNationList.find('li:first').addClass('on');
    oNationList.find('li').click(function(){
        var sNationId = $(this).attr('nationid');
        oNationList.find('li.on').removeClass('on');
        $(this).addClass('on');
        $("#selectednation").val('').attr('placeholder', p_aNation[sNationId][sLang]);
        $("#selectednationcode").val('').attr('placeholder','+' + p_aNation[sNationId]['code']);
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