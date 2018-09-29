var trackPoints = {
    'trackbuttonClick': {
        trackType: '1',
        elementsStr: "[track-type='trackButtonClick']",
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: '',
            pageCode: 11214
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    },
    'trackButtonClickNew': {
        trackType: '1',
        elementsStr: "[track-type='trackButtonClickNew']",
        paramsRank: ["VerType", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            VerType: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: ''
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['pageCode'] = $("#pageCode").length > 0 ? $("#pageCode").val() : '19999';
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            params['cusParam'] = ["1", trackConfig.accountid, "51job_web", trackConfig.partner, typeof($(e).attr("track-resumeid")) == 'undefined' ? '' : $(e).attr("track-resumeid"), ''].join(String.fromCharCode(22));
            return params;
        }
    },
    'reBindTrackbuttonClick': {
        trackType: '4',
        elementsStr: "[track-type='reBindTrackButtonClick']",
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: '',
            pageCode: 11214
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    },
    'reBindTrackbuttonClickNew': {
        trackType: '4',
        elementsStr: "[track-type='reBindTrackButtonClickNew']",
        paramsRank: ["VerType", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            VerType: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: ''
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['pageCode'] = $("#pageCode").length > 0 ? $("#pageCode").val() : '19999';
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            params['cusParam'] = ["1", trackConfig.accountid, "51job_web", trackConfig.partner, typeof($(e).attr("track-resumeid")) == 'undefined' ? '' : $(e).attr("track-resumeid"), ''].join(String.fromCharCode(22));
            return params;
        }
    },
    'manualTrackbuttonClick': {
        trackType: '4',
        elementsStr: "",
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: '',
            pageCode: 11214
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            params['logTime'] = new Date().getTime() + d_system_client_time;
            
            return params;
        }
    },
    'trackTriresumeClick': {
        trackType: '3',
        elementsStr: '',
        paramsRank: ["logCode", "webId", "ip", "guid", "domain", "eventType", "pageCode", "traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            domain: "i.51job.com",
            pageCode: 19999,
            traceName: "",
        },
        dealParamsAfterEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['accountId'] = trackConfig.accountid;
            switch (trackConfig.refpage) {
                case '/resume/standard_resume.php':
                    guideSource = 1;
                    break;
                case '':
                    guideSource = 2;
                    break;
                case '/':
                    guideSource = 5;
                    break;
                case '/userset/my_51job.php':
                    guideSource = 6;
                    break;
                case '/userset/resume_browsed.php':
                    guideSource = 7;
                    break;
                default:
                    if (trackConfig.refpage.indexOf(".html")!= -1)
                    {
                        guideSource = 3;
                    }
                    else
                    {
                        guideSource = 4;
                    }
                    break;
            }

            if ($.inArray(params['eventType'], ['2001','2002','2003','2004','2005']) > -1)
            {
                var str = new Array;
                $('.error:visible').each(function(i,n){str.push($(this).siblings("label").text().replace("*", "")+"："+$(this).text());});
                if (str.length>0)
                {
                    paramInfo = "1" + String.fromCharCode(22) + str.join('|');
                }else{
                    paramInfo = "";
                }
            }
            else
            {
                paramInfo = '';
            }
			
			params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid + String.fromCharCode(22) + "1" + String.fromCharCode(22) + String.fromCharCode(22) + guideSource + String.fromCharCode(22) + paramInfo + String.fromCharCode(22) + $('#registertype').val();
            
            params['logTime'] = new Date().getTime() + d_system_client_time;
			
            return params;
        }
    }
}