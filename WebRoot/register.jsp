<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	企业注册
</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<link rel="stylesheet" type="text/css" href="//js.51jobcdn.com/ehire2007/css/20180702/defaultnew/common.css" />
<link rel="stylesheet" type="text/css" href="//js.51jobcdn.com/ehire2007/css/20180702/defaultnew/register.css" />
<link rel="stylesheet" type="text/css" href="//js.51jobcdn.com/ehire2007/css/20180702/defaultnew/ucontrol.css" />
<body>
    <script type="text/javascript">
        var langen =  '';
        var lang = 'ch';
        var nomoreselect = "最多可选{0}项";
        var SET_Label_Mask = "请输入企业所在城市，例如：上海";
        var ImagePath = '//img07.51jobcdn.com/imehire/ehire2007/defaultnew/image/';
    </script>
    <script src="//js.51jobcdn.com/ehire2007/js/20180702/ehirereg/ehirereg.js" type="text/javascript"></script>
    <script type="text/javascript" src="//js.51jobcdn.com/ehire2007/js/20180702/jquery/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="//js.51jobcdn.com/ehire2007/js/20180702/control/Bs.CommonLayer.js"></script>
    <script type="text/javascript" src="//js.51jobcdn.com/ehire2007/js/20180702/DictTable.js"></script>
    <script type="text/javascript" src="//js.51jobcdn.com/ehire2007/js/20180702/control/NewDictLayer.js"></script>
    <script type="text/javascript" src="//js.51jobcdn.com/ehire2007/js/20180702/PublicFunction.js" language="javascript"></script>
    <script src="//js.51jobcdn.com/ehire2007/js/20180702/control/LianXiangLayer.js" type="text/javascript"></script>
    <link href="css/css7.css" rel="stylesheet">
<link href="css/css8.css" rel="stylesheet">
<link href="css/css9.css" rel="stylesheet">
<link href="css/css10.css" rel="stylesheet">
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/amaze.min.css" />
<link rel="stylesheet" href="css/defined.css" />
<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
    <form method="post" action="RegPage.aspx" id="pagebody">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTkyODgzMTIwOGRk" />
</div>

<script>var GLOBAL_IMAGEPATH="//img07.51jobcdn.com/imehire/ehire2007/default/image/";</script>
    <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
        <tr>
            <td>
                
<style type="text/css">
    .navTourist {color: #ffffff; float: right; margin-top: 30px;height:28px;}
    .navTourist a {color: #ffffff;display:inline-block;height:29px; *height:32px; text-decoration:none; }
    .navTourist a{ color: #fff;}
    .navTourist a:visited{color: #fff;}
    .navTourist a:hover{color: #d4ecff;}
   
    .dqList{overflow: hidden;}
    .dqList ul{float: left; margin-right: 20px; width: 270px; padding-left:0px;}
    .dqList li{line-height: 24px; padding-left:20px; position: relative; }
    .dqList li span{margin-right:8px; color: #fe5400; position: absolute; top: 0px; left: 0px;}
    .dqList li a{ display: inline-block; margin-right: 4px;}
    .headerBanner { margin: 10px auto; width: 1000px;height:65px;}
</style>
<%@ include file = "top.jsp" %>
<map name="Mapa" id="Mapa">
<area shape="rect" coords="0,0,210,58" href="http://www.51job.com/default.php" alt="" />
</map>
<div id="navigete_appImg" style="position: absolute; z-index: 201; display: none;" onmousemove="ShowAreaN(this,'navigete_appImg')" onmouseout="HideAreaN(this,'navigete_appImg')">
    <div class="ap_code_ml">
        <iframe style="z-index:-1; right:0px;filter:alpha(opacity=60);-moz-opacity:0.6;_filter:alpha(opacity=0.6);opacity:0.6; width:265px; height:237px; position:absolute;"></iframe>
        <img width="265" height="237" src="//img07.51jobcdn.com/imehire/ehire2007/defaultnew/image/commonnew/ap_code2-1009.png">
    </div>
</div>
<!-- 地区频道 -->
<div id="allchannelnew" class="panelBox panel_select_major panelBox--allchannel" style="display:none;position: absolute; z-index:100;" onmouseover="this.style.display='block'" onmouseout="this.style.display='none'">
</div>
<script type="text/javascript">
    var city = { "abc": [
        { "city": "安庆", "link": "anqing" },
        { "city": "安阳", "link": "anyang" },
        { "city": "鞍山", "link": "anshan" },
        { "city": "蚌埠", "link": "bangbu" },
        { "city": "包头", "link": "baotou" },
        { "city": "宝鸡", "link": "baoji" },
        { "city": "保定", "link": "baoding" },
        { "city": "北京", "link": "beijing" },
        { "city": "滨州", "link": "binzhou" },
        { "city": "沧州", "link": "cangzhou" },
        { "city": "常德", "link": "changde" },
        { "city": "常熟", "link": "changshu" },
        { "city": "常州", "link": "changzhou" },
        { "city": "潮州", "link": "chaozhou" },
        { "city": "郴州", "link": "chenzhou" },
        { "city": "成都", "link": "chengdu" },
        { "city": "赤峰", "link": "chifeng" },
        { "city": "滁州", "link": "chuzhou" },
        { "city": "长春", "link": "changchun" },
        { "city": "长沙", "link": "changsha" },
        { "city": "长治", "link": "changzhi" },
        { "city": "重庆", "link": "chongqing" }
    ],
        "def": [
        { "city": "达州", "link": "dazhou" },
        { "city": "大连", "link": "dalian" },
        { "city": "大庆", "link": "daqing" },
        { "city": "大同", "link": "datong" },
        { "city": "丹东", "link": "dandong" },
        { "city": "德阳", "link": "deyang" },
        { "city": "德州", "link": "dezhou" },
        { "city": "东莞", "link": "dongguan" },
        { "city": "东营", "link": "dongying" },
        { "city": "鄂尔多斯", "link": "eerduosi" },
        { "city": "鄂州", "link": "dongzhou" },
        { "city": "佛山", "link": "foshan" },
        { "city": "福州", "link": "fuzhou" },
        { "city": "抚顺", "link": "fushun" },
        { "city": "抚州", "link": "fz" },
        { "city": "阜阳", "link": "fuyang" }
    ],
        "ghj": [
        { "city": "赣州", "link": "ganzhou" },
        { "city": "广安", "link": "guangan" },
        { "city": "广元", "link": "guangyuan" },
        { "city": "广州", "link": "guangzhou" },
        { "city": "贵港", "link": "guigang" },
        { "city": "贵阳", "link": "guiyang" },
        { "city": "桂林", "link": "guilin" },
        { "city": "哈尔滨", "link": "harbin" },
        { "city": "海口", "link": "haikou" },
        { "city": "邯郸", "link": "handan" },
        { "city": "汉中", "link": "hanzhong" },
        { "city": "杭州", "link": "hangzhou" },
        { "city": "合肥", "link": "hefei" },
        { "city": "河源", "link": "heyuan" },
        { "city": "菏泽", "link": "heze" },
        { "city": "衡水", "link": "hengshui" },
        { "city": "衡阳", "link": "hengyang" },
        { "city": "呼和浩特", "link": "huhhot" },
        { "city": "湖州", "link": "huzhou" },
        { "city": "怀化", "link": "huaihua" },
        { "city": "淮安", "link": "huaian" },
        { "city": "淮北", "link": "huaibei" },
        { "city": "淮南", "link": "huainan" },
        { "city": "黄冈", "link": "huanggang" },
        { "city": "黄石", "link": "huangshi" },
        { "city": "惠州", "link": "huizhou" },
        { "city": "吉安", "link": "jian" },
        { "city": "吉林", "link": "jilin" },
        { "city": "济南", "link": "jinan" },
        { "city": "济宁", "link": "jining" },
        { "city": "嘉兴", "link": "jiaxing" },
        { "city": "江门", "link": "jiangmen" },
        { "city": "焦作", "link": "jiaozuo" },
        { "city": "揭阳", "link": "jieyang" },
        { "city": "金华", "link": "jinhua" },
        { "city": "锦州", "link": "jinzhou" },
        { "city": "晋中", "link": "jinzhong" },
        { "city": "荆门", "link": "jingmen" },
        { "city": "荆州", "link": "jingzhou" },
        { "city": "九江", "link": "jiujiang" }
    ],
        "klm": [
        { "city": "开封", "link": "kaifeng" },
        { "city": "昆明", "link": "kunming" },
        { "city": "昆山", "link": "kunshan" },
        { "city": "兰州", "link": "lanzhou" },
        { "city": "廊坊", "link": "langfang" },
        { "city": "乐山", "link": "leshan" },
        { "city": "连云港", "link": "lianyungang" },
        { "city": "聊城", "link": "liaocheng" },
        { "city": "临汾", "link": "linfen" },
        { "city": "临沂", "link": "linyi" },
        { "city": "柳州", "link": "liuzhou" },
        { "city": "六安", "link": "liuan" },
        { "city": "娄底", "link": "loudi" },
        { "city": "泸州", "link": "luzhou" },
        { "city": "洛阳", "link": "luoyang" },
        { "city": "漯河", "link": "luohe" },
        { "city": "马鞍山", "link": "maanshan" },
        { "city": "茂名", "link": "maoming" },
        { "city": "眉山", "link": "meishan" },
        { "city": "梅州", "link": "meizhou" },
        { "city": "绵阳", "link": "mianyang" }
    ],
        "npq": [
        { "city": "南昌", "link": "nanchang" },
        { "city": "南充", "link": "nanchong" },
        { "city": "南京", "link": "nanjing" },
        { "city": "南宁", "link": "nanning" },
        { "city": "南通", "link": "nantong" },
        { "city": "南阳", "link": "nanyang" },
        { "city": "内江", "link": "neijiang" },
        { "city": "宁波", "link": "ningbo" },
        { "city": "宁德", "link": "ningde" },
        { "city": "平顶山", "link": "pingdingshan" },
        { "city": "莆田", "link": "putian" },
        { "city": "濮阳", "link": "puyang" },
        { "city": "齐齐哈尔", "link": "qiqihaer" },
        { "city": "秦皇岛", "link": "qinghuangdao" },
        { "city": "青岛", "link": "qingdao" },
        { "city": "清远", "link": "qingyuan" },
        { "city": "衢州", "link": "quzhou" },
        { "city": "曲靖", "link": "qujing" },
        { "city": "泉州", "link": "quanzhou" }
    ],
        "rst": [
        { "city": "日照", "link": "rizhao" },
        { "city": "三亚", "link": "sanya" },
        { "city": "汕头", "link": "shantou" },
        { "city": "汕尾", "link": "shanwei" },
        { "city": "商丘", "link": "shangqiu" },
        { "city": "上海", "link": "shanghai" },
        { "city": "上饶", "link": "shangrao" },
        { "city": "韶关", "link": "shaoguan" },
        { "city": "邵阳", "link": "shaoyang" },
        { "city": "绍兴", "link": "shaoxing" },
        { "city": "深圳", "link": "shenzhen" },
        { "city": "沈阳", "link": "shenyang" },
        { "city": "十堰", "link": "shiyan" },
        { "city": "石家庄", "link": "shijiazhuang" },
        { "city": "苏州", "link": "suzhou" },
        { "city": "随州", "link": "suizhou" },
        { "city": "遂宁", "link": "suining" },
        { "city": "宿迁", "link": "suqian" },
        { "city": "宿州", "link": "sz" },
        { "city": "台州", "link": "tz" },
        { "city": "太原", "link": "taiyuan" },
        { "city": "泰安", "link": "taian" },
        { "city": "泰州", "link": "taizhou" },
        { "city": "唐山", "link": "tangshan" },
        { "city": "天津", "link": "tianjin" },
        { "city": "铁岭", "link": "tieling" }
    ],
        "wx": [
        { "city": "乌鲁木齐", "link": "urumqi" },
        { "city": "威海", "link": "weihai" },
        { "city": "潍坊", "link": "weifang" },
        { "city": "渭南", "link": "weinan" },
        { "city": "温州", "link": "wenzhou" },
        { "city": "无锡", "link": "wuxi" },
        { "city": "芜湖", "link": "wuhu" },
        { "city": "武汉", "link": "wuhan" },
        { "city": "西安", "link": "xian" },
        { "city": "西宁", "link": "xining" },
        { "city": "咸宁", "link": "xianning" },
        { "city": "咸阳", "link": "xianyang" },
        { "city": "湘潭", "link": "xiangtan" },
        { "city": "襄阳", "link": "xiangyang" },
        { "city": "孝感", "link": "xiaogan" },
        { "city": "新乡", "link": "xinxiang" },
        { "city": "信阳", "link": "xinyang" },
        { "city": "邢台", "link": "xingtai" },
        { "city": "厦门", "link": "xiamen" },
        { "city": "徐州", "link": "xuzhou" },
        { "city": "许昌", "link": "xuchang" },
        { "city": "宣城", "link": "xuancheng" }
    ],
        "yz": [
        { "city": "烟台", "link": "yantai" },
        { "city": "盐城", "link": "yancheng" },
        { "city": "扬州", "link": "yangzhou" },
        { "city": "阳江", "link": "yangjiang" },
        { "city": "宜宾", "link": "yibin" },
        { "city": "宜昌", "link": "yichang" },
        { "city": "宜春", "link": "yichun" },
        { "city": "义乌", "link": "yiwu" },
        { "city": "益阳", "link": "yiyang" },
        { "city": "银川", "link": "yinchuan" },
        { "city": "营口", "link": "yingkou" },
        { "city": "永州", "link": "yongzhou" },
        { "city": "玉林", "link": "yulin" },
        { "city": "岳阳", "link": "yueyang" },
        { "city": "运城", "link": "yuncheng" },
        { "city": "枣庄", "link": "zaozhuang" },
        { "city": "湛江", "link": "zhanjiang" },
        { "city": "张家港", "link": "zhangjiagang" },
        { "city": "张家口", "link": "zhangjiakou" },
        { "city": "漳州", "link": "zhangzhou" },
        { "city": "肇庆", "link": "zhaoqing" },
        { "city": "镇江", "link": "zhenjiang" },
        { "city": "郑州", "link": "zhengzhou" },
        { "city": "中山", "link": "zhongshan" },
        { "city": "周口", "link": "zhoukou" },
        { "city": "珠海", "link": "zhuhai" },
        { "city": "株洲", "link": "zhuzhou" },
        { "city": "驻马店", "link": "zhumadian" },
        { "city": "淄博", "link": "zibo" },
        { "city": "遵义", "link": "zunyi" }
    ]
    };
    var cityLink = "http://www.51job.com/";
    function getTpl(data, name) {
        var tpl = "";
        for (var i = 0; i < data[name].length; i++) {
            tpl += "<a href=\"" + cityLink + data[name][i].link + "\">" + data[name][i].city + "</a>";
        }
        return tpl;
    }
    var abc = getTpl(city, "abc");
    var def = getTpl(city, "def");
    var ghj = getTpl(city, "ghj");
    var klm = getTpl(city, "klm");
    var npq = getTpl(city, "npq");
    var rst = getTpl(city, "rst");
    var wx = getTpl(city, "wx");
    var yz = getTpl(city, "yz");
    var mainDom = document.getElementById("allchannelnew");
    var mainTpl = "<div class=\"pannel_body \">\n    <h1><strong>\u70ED\u95E8\u57CE\u5E02</strong> <a href=\"" + cityLink + "beijing\">\u5317\u4EAC</a><a href=\"" + cityLink + "shanghai\">\u4E0A\u6D77</a><a href=\"" + cityLink + "guangzhou\">\u5E7F\u5DDE</a><a href=\"" + cityLink + "shenzhen\">\u6DF1\u5733</a><a href=\"" + cityLink + "wuhan\">\u6B66\u6C49</a><a href=\"" + cityLink + "xian\">\u897F\u5B89</a><a href=\"" + cityLink + "hangzhou\">\u676D\u5DDE</a><a href=\"" + cityLink + "nanjing\">\u5357\u4EAC</a><a href=\"" + cityLink + "chengdu\">\u6210\u90FD</a><a href=\"" + cityLink + "chongqing\">\u91CD\u5E86</a></h1>\n  \t<ul class=\"panelBox--allchannel__list\">\n  \t\t<li class=\"clearfix\">\n  \t\t\t<span>ABC</span>\n            <div>\n              " + abc + "\n  \t\t\t</div>\n          </li>\n        <li class=\"clearfix\">\n  \t\t\t<span>DEF</span>\n            <div>\n              " + def + "\n  \t\t\t</div>\n         </li>\n        <li class=\"clearfix\">\n  \t\t\t<span>GHJ</span>\n            <div>\n              " + ghj + "\n  \t\t\t</div>\n          </li>\n         <li class=\"clearfix\">\n  \t\t\t<span>KLM</span>\n            <div>\n              " + klm + "\n  \t\t\t</div>\n          </li>\n        <li class=\"clearfix\">\n  \t\t\t<span>NPQ</span>\n            <div>\n              " + npq + "\n  \t\t\t</div>\n          </li>\n          <li class=\"clearfix\">\n  \t\t\t<span>RST</span>\n            <div>\n              " + rst + "\n  \t\t\t</div>\n          </li>\n         <li class=\"clearfix\">\n  \t\t\t<span>WX</span>\n            <div>\n              " + wx + "\n  \t\t\t</div>\n          </li>\n          <li class=\"clearfix\">\n  \t\t\t<span>YZ</span>\n            <div>\n              " + yz + "\n  \t\t\t</div>\n  \t\t</li>\n  \t</ul>\n  </div>";
    mainDom.innerHTML = mainTpl;
</script>

<script type="text/jscript">
    function ShowAreaN(sender, id) {
        document.getElementById(id).style.display = "block";
        var leftpos = 0, toppos = 0, rightpos = 0;
        var pObject = document.getElementById("ehiremovelabel");
        if (pObject) {
            leftpos += pObject.offsetLeft-163;
            toppos += pObject.offsetTop;
            rightpos += pObject.offsetRight;
        }
        while (pObject = pObject.offsetParent) {
            leftpos += pObject.offsetLeft;
            toppos += pObject.offsetTop;
            rightpos += pObject.offsetRight;
        };
        document.getElementById("allchannelnew").style.right = "0px";
        document.getElementById("navigete_appImg").style.left = leftpos + "px";
    }

    function HideAreaN(sender, id) {
        document.getElementById(id).style.display = "none";
    }
    window.setInterval(function () {
        $(".ev-online042").delay(500).animate({ top: '0px' }, "fast").animate({ top: '2px' }, "fast").animate({ top: '-2px' }, "fast").animate({ top: '2px' }, "fast").animate({ top: '-2px' }, "fast").animate({ top: '0px' }, "fast");
    }, 800)
    function ShowService() {
        var iWidth = 365; //弹出窗口的宽度; 
        var iHeight = 500; //弹出窗口的高度; 
        //获得窗口的垂直位置 
        var iTop = (window.screen.availHeight - 65 - iHeight);
        //获得窗口的水平位置 
        var iLeft = (window.screen.availWidth - 70 - iWidth);
        var openurl = "https://webchat.7moor.com/wapchat.html?accessId=16055120-5ae4-11e7-a543-395dab8f672b&fromUrl=https%3a%2f%2fehire.51job.com";
        window.open(openurl, "_blank", 'height=' + iHeight + ',innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=0,titlebar=no')
        return;
    }
</script>
            </td>
        </tr>
    </table>
    <div class="commonMain" style="margin: 40px 0 100px 0;">
        <div class="ct">
            
            <div class="fn-main border-top">
                
                <div class="registerList">
                    <div class="textTab">
                        <span class="active">招聘企业信息</span>
                    </div>
                    <!---->
                    <div class="listUnit_p">
                        <div class="inpList_top_set">
                            您要为哪家企业开通招聘服务？ &nbsp;&nbsp;&nbsp;&nbsp;
                             <a href="#" class="btn-blue">
                                马上登录</a>
                        </div>
                        <div id="Div_hukou_Border" class="inpList">
                            <div class="inpTitle">
                                城&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;市</div>
                            <div class="inpRegion">
                                <input name="search_hukou_txt" type="text" id="search_hukou_txt" onfocus="EHRRegister.InfoFocus(&#39;#search_hukou_txt&#39;,&#39;#Div_Msg_hukou&#39;,&#39;#Div_Msg_Next&#39;)" onblur="EHRRegister.OnBlurCommon(&#39;#search_hukou_txt&#39;,&#39;#Div_Msg_hukou&#39;)" autocomplete="off" placeholder="请输入企业所在城市，例如：上海" data-text="请输入城市！|请输入企业所在城市，例如：上海" />
                            </div>
                            <div id="search_hukou_weizao" class="input" style="color: rgb(153, 153, 153); display: block;">
                            </div>
                            <div class="inpList_choose">
                                <a href="javascript:void(0);" onclick="javascript:EHRRegister.InfoCityClick(this,'#Div_Msg_hukou');return false;"
                                    class="chooseIcon"><i class="icon icon-th-large_grey"></i></a>
                            </div>
                            <input type="hidden" name="search_hukou_hid" id="search_hukou_hid" />
                            <br />
                            <div id='search_hukou_Mind'>
                            </div>
                        </div>
                        <div id="Div_Msg_hukou" class="inptext_bot_stb" style="display: none;">
                        </div>
                        <div id="Div_CmpName_Border" class="inpList clearfix">
                            <div class="inpTitle">
                                公司名称</div>
                            <div class="inpRegion">
                                <input name="search_CmpName_txt" type="text" id="search_CmpName_txt" onfocus="EHRRegister.InfoFocus(&#39;#search_CmpName_txt&#39;,&#39;#Div_Msg_CmpName&#39;,&#39;#Div_Msg_Next&#39;)" onblur="EHRRegister.InfoFocusOut(&#39;#search_CmpName_txt&#39;,&#39;#Div_Msg_CmpName&#39;)" autocomplete="off" maxlength="100" placeholder="请与贵公司营业执照注册名保持一致" data-text="请输入企业名称！|企业名长度不能超过100个字符！|公司名只支持纯文本格式！|公司名不能少于10个字符！|该公司已注册！|公司名称不能含有英文字母！|公司名称有误！请输入正确的公司名称！" /></div>
                        </div>
                        <div id="Div_Msg_CmpName" class="inptext_bot_stb" style="display: none;">
                        </div>
                    </div>
                    <div id="Div_Msg_Next" class="inptext_bot_stb" style="display: none;">
                    </div>
                    <div class="box-center">
                        <a href="javascript:void(0)" class="btn-blue-b" id="btnNext" onclick="EHRRegister.InfoCheck();stopBub();">
                            下一步</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" name="hidComAa" id="hidComAa" />
    <input type="hidden" name="hidComNe" id="hidComNe" />
    <input type="hidden" name="isokdacc" id="isokdacc" />
    <input type="hidden" name="ishassales" id="ishassales" />
    <input type="hidden" name="salename" id="salename" />
    <input type="hidden" name="sex" id="sex" />
    <input type="hidden" name="cphone" id="cphone" />
    <input type="hidden" name="email" id="email" />
    <input type="hidden" name="hidFlag" id="hidFlag" />
    <input type="hidden" name="hidBranch" id="hidBranch" />
    <input type="hidden" name="City" id="City" />
    <input type="hidden" name="CityNm" id="CityNm" />
    <input type="hidden" name="hidb" id="hidb" />
    
    <style>
  *{margin: 0;padding: 0;list-style: none;text-decoration: none;}
  body{
  font-family: "Microsoft YaHei";
  }
  .xing{
  background-color: #ffffff;
  width: 100%;
  border-top: 1px solid #e4e4e4;

  font-family: "Microsoft YaHei";
  }
  .xing span{
  color: #333;
  }
  .lines{
  /*	width: 100%;border-bottom: 2px solid #e4e4e4;
  */
  margin-top: 8px;
  }
  .xing #footer_ul{
  width:1000px;
  margin: 0 auto;
  height:32px;
  background-repeat: repeat-x;
  text-align:center;
  }
  .xing #bottom
  {
  clear: both;
  margin: 0 auto;
  width:100%;

  }
  .xing .list li
  {
  float:left;
  padding:5px;
  vertical-align:middle;
  font-size:12px;
  }
  .xing .list
  {
  margin-left:200px;
  line-height: 24px;
  }
  .xing .copyright
  {
  padding-bottom:6px ;
  clear: both;
  width: 100%;
  }
  .xing .copyright span{
  color: #999
  }
  .xing .fontright
  {
  font-size: 12px;
  color: #999;
  text-align: center;
  line-height: 23px;
  margin-bottom: 6px;
  }
</style>

<%@ include file = "bottom.jsp" %>
    <script type="text/javascript">
        EHRRegister.init('btnNext', '1');
        $(document).ready(function ()
        {
            if ($.browser.mozilla) //$('input').removeAttr("disabled");
                EHR.InitMaskDiv();
            if (lang != "en")
            {
                LianXiang.registerListener();
            }
            $('#search_hukou_hid').val('');
            $(window).resize(EHRRegister.setMask);
        });       
    </script>
    </form>
</body>
</html>
