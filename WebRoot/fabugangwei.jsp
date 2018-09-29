<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>

<html lang="zh" xmlns:wb="http://open.weibo.com/wb">

	<head>
		<meta charset="utf-8">
		<meta name="applicable-device" content="pc" />

		<title></title>

		<meta name="description" content="" />

		<meta name="keywords" content="" />

		<link href="https://image4.highpin.cn/css/shared/base.css?version=20180705193138" rel="stylesheet" />

		<link href="https://image5.highpin.cn/css/shared/HeaderandFooter/header-and-footer.css?version=20180705193138" rel="stylesheet" />

		<link href="https://image1.highpin.cn/css/shared/suggestion.css?version=20180705193138" rel="stylesheet" />

		<link href="https://image2.highpin.cn/css/shared/layer/customlayer.css?version=20180705193138" rel="stylesheet" />

		<link href="https://image3.highpin.cn/css/jobs/common.css?version=20180705193138" rel="stylesheet" />

		<script src="https://image4.highpin.cn/js/shared/common/jquery-1.7.1.min.js?version=20180705193138"></script>

		<script src="https://image5.highpin.cn/js/shared/common/utilities.js?version=20180705193138"></script>

		<script src="https://image1.highpin.cn/js/shared/common/baiduLinksubmit.js?version=20180705193138"></script>

		<meta http-equiv="Cache-Control" content="no-transform" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />

	</head>
<style>
	#head {
		font-size: 25px;
		font-weight: bold;
		line-height: 1.25em;
		color: #59228a;
		border-bottom: 2px solid #59228a;
		padding-bottom: 0.25em;
		margin:0 260px;
	}
</style>

	<body>
		<img src="img/top.png" style="width: 100%;"/>
		<div id="head">发布职位</div>
		<br/><br/>
		<div id="content">
			<div id="kuangjia">
				
				<!-- css -->
				<link href="https://image5.highpin.cn/css/Shared/layer/layer.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image1.highpin.cn/css/Shared/Common/common.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image2.highpin.cn/css/Seeker/reset.min.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image3.highpin.cn/css/Jobs/SearchJobs.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image4.highpin.cn/css/Shared/grade.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image5.highpin.cn/Css/Shared/LayerMode/layermode.css?version=20180705193138" rel="stylesheet" />

				<link href="https://image1.highpin.cn/css/index/index.css?version=20180705193138" rel="stylesheet" />

				<!-- js -->
				<script src="https://image2.highpin.cn/Js/Jobs/SearchJobsConditions.js?version=20180705193138"></script>

				<script src="https://image3.highpin.cn/Js/shared/data/taxonomydata_cn.js?version=20180705193138"></script>

				<script src="https://image4.highpin.cn/Js/shared/data/poplayer_dic_cn.js?version=20180705193138"></script>

				<script src="https://image5.highpin.cn/Js/shared/dictionary/dic.js?version=20180705193138"></script>

				<script src="https://image1.highpin.cn/Js/Shared/Layer/poplayer_cn_v2.js?version=20180705193138"></script>

				<script src="https://image2.highpin.cn/js/shared/layer/commonlayer.js?version=20180705193138"></script>

				<script src="https://image3.highpin.cn/js/shared/common/highlight.js?version=20180705193138"></script>

				<script src="https://image4.highpin.cn/js/shared/common/utilities.js?version=20180705193138"></script>

				<script src="https://image5.highpin.cn/Js/shared/common/adjustHeight.js?version=20180705193138"></script>

				<div class="search-ourter withBor" style="position: relative; height: 230px;">
					<div style="position:absolute; left: 15%;">
					<form action="#" enctype="#" id="#" method="#">
						<div class="c-search-list-record" id="c-search-list">
							<table class="search-criteria">

								<tr class="c-tr-1">
									<td class="padding-b10"><span class="c-td-label">关键词</span></td>
									<td class="padding-b10">
										<select class="s-wid84 c-select-ht " id="qTitle" name="qTitle" onchange="changeQtitle(this.value);">
											<option selected="selected" value="1">职位名</option>
											<option value="2">公司名</option>
											<option value="3">全文</option>
										</select>

										<input class="c-key-input" id="Q" name="Q" placeholder="请输入职位关键词" type="text" value="" />
									</td>
									<td class="padding-b10" style="padding-left: 20px;"><span class="c-td-label">工作地点</span></td>
									<td class="padding-b10">
										<div class="highpinlayershow" style="height: 19px;" id="ParentShowstored_joblocation">
											<div style="height: 28px;" id="Showstored_joblocation" class="mutilshowdiv longlocation" onclick='InitLayer("stored_joblocation", "ShowSubstored_joblocation", "工作地点", "location",2, 3,"ResetLocation")'></div>
											<div id="ShowSubstored_joblocation" class="categorylayer_float_select ht28"></div>
										</div>
										<input id="stored_joblocation" name="JobLocation" style="display:none" type="hidden" value="" />
									</td>

								</tr>

								<tr class="c-tr-1">
									<td class="padding-b10"><span class="c-td-label">行业类别</span></td>
									<td class="padding-b10">
										<div class="highpinlayershow" style="height: 28px;" id="ParentShowstored_industry">
											<div style="height: 28px;" id="Showstored_industry" class="mutilshowdiv longindustry" onclick='InitLayer("stored_industry", "ShowSubstored_industry", "行业", "industry",2, 3,"ResetIndestry")'></div>
											<div id="ShowSubstored_industry" class="categorylayer_float_select ht28"></div>
										</div>
										<input id="stored_industry" name="CompanyIndustry" style="display:none" type="hidden" value="" />

									</td>

									<td class="padding-b10" style="padding-left: 20px;"><span class="c-td-label">职位类别</span></td>
									<td class="padding-b10">
										<div class="highpinlayershow" style="height: 19px;" id="ParentShowstored_jobtype">
											<div style="height: 28px;" id="Showstored_jobtype" class="mutilshowdiv longjobtype" onclick='InitLayer("stored_jobtype", "ShowSubstored_jobtype", "职位类别", "job_type",2, 3,"ResetJobType")'></div>
											<div id="ShowSubstored_jobtype" class="categorylayer_float_select ht28"></div>
										</div>
										<input id="stored_jobtype" name="JobType" style="display:none" type="hidden" value="" />
									</td>
								</tr>

								<tr>
									<td colspan="4" class="padding-b10">
										<span class="c-td-label">年薪范围</span>
										<select class="s-wid120 c-select-ht ml-3" id="AnnualSalaryMin" name="AnnualSalaryMin">
											<option value="0">不限</option>
											<option value="10">10</option>
											<option value="15">15</option>
											<option value="20">20</option>
											<option value="30">30</option>
											<option value="50">50</option>
											<option value="100">100</option>
										</select>
										--
										<select class="s-wid120 c-select-ht" id="AnnualSalaryMax" name="AnnualSalaryMax">
											<option value="0">不限</option>
											<option value="10">10</option>
											<option value="15">15</option>
											<option value="20">20</option>
											<option value="30">30</option>
											<option value="50">50</option>
											<option value="100">100</option>
										</select>
										<span style="font-family: 'microsoft yahei'; font-size: 14px;">万元</span>
										<span class="c-td-label">企业性质</span>
										<select class="s-wid120 c-select-ht" id="CompanyType" name="CompanyType">
											<option value="0">不限</option>
											<option value="1">国企</option>
											<option value="2">外商独资</option>
											<option value="3">代表处</option>
											<option value="4">合资</option>
											<option value="5">民营</option>
											<option value="8">股份制企业</option>
											<option value="9">上市公司</option>
											<option value="6">国家机关</option>
											<option value="10">事业单位</option>
											<option value="11">银行</option>
											<option value="12">医院</option>
											<option value="13">学校/下级学院</option>
											<option value="14">律师事务所</option>
											<option value="15">社会团体</option>
											<option value="16">港澳台公司</option>
											<option value="7">其它</option>
										</select>
										<span class="c-td-label">职位类型</span>
										<select class="s-wid120 c-select-ht" id="ReferrerType" name="ReferrerType">
											<option value="0">全部</option>
											<option value="2">企业职位</option>
											<option value="1">猎头职位</option>
										</select>
										<span class="c-td-label">发布时间</span>
										<select class="s-wid120 c-select-ht" id="ReleaseDate" name="ReleaseDate">
											<option value="0">不限</option>
											<option value="1">今天</option>
											<option value="3">最近三天</option>
											<option value="7">最近一周</option>
											<option value="30">最近一个月</option>
										</select>
									</td>
								</tr>
							</table>
							<input id="pageSize" name="pageSize" type="hidden" value="20" />
							<input id="qSort" name="Sort" type="hidden" value="ModifyDate desc" />
							<input id="islogin" name="islogin" type="hidden" value="False" />
							<div class="btn-box-record">
								<input value="发布职位" class="c-search-btns" type="submit" />
							</div>
						</div>
					</form>
				</div>
				<!--<script type="text/javascript">
					//修改关键词的条件
					function changeQtitle(value) {
						if(value == 1) {
							$("#Q").attr("placeholder", "请输入职位关键词");
						} else if(value == 2) {
							$("#Q").attr("placeholder", "请输入公司关键词");
						} else if(value == 3) {
							$("#Q").attr("placeholder", "请输入关键词");
						}
					}

					$(function() {
						$(function() {
							AddQRCode(null, "https://image1.highpin.cn/image/shared/QRCode/wSearchJob824.png?v=20170803");
						});

						$("#ReferrerType").on("change", function() {
							if($(this).val() != 1) {
								$("#qSort").val("ModifyDate desc")
							}
						})

						var stitle = $("#stitle").html();
						if(stitle != null) {
							stitle = HP.cutString(stitle, 130);
							$("#stitle").html(stitle);
						}

					})
				</script>-->
				</div>
			</div>
			
		</div>

		<script src="https://image5.highpin.cn/js/shared/common/dynamicdata.js?version=20180705193138"></script>

		<script src="https://image1.highpin.cn/js/shared/common/jquery.form.js?version=20180705193138"></script>

		<script src="https://image2.highpin.cn/js/shared/layer/commonlayer.js?version=20180705193138"></script>

		<script src="https://image3.highpin.cn/js/seeker/seekercommon.js?version=20180705193138"></script>

		<script src="https://image4.highpin.cn/js/seeker/suggestion.js?version=20180705193138"></script>

		<script src="https://image5.highpin.cn/js/shared/navigation/navigation.js?version=20180705193138"></script>

		<script src="https://image1.highpin.cn/js/shared/common/sea.js?version=20180705193138"></script>

		<script src="https://image2.highpin.cn/js/modules/common/base_init.js?version=20180705193138"></script>

		<script src="https://image3.highpin.cn/js/shared/common/reference_ga.js?version=20180705193138"></script>

		<script src="https://image4.highpin.cn/js/shared/common/uniclicktracking.js?version=20180705193138"></script>
		
		<script src="https://image5.highpin.cn/Js/Shared/Common/qqOnline.js?version=20180705193138"></script>

		<script src="https://image1.highpin.cn/js/shared/common/navdrainpopup.js?version=20180705193138"></script>
		
		<img src="img/bottom.png" style="position: absolute; bottom: 0;width: 100%;"/>
	</body>

</html>