(function($) {
    $.fn.calendarSelect = function(options)
    {
        var oSettings = {
            'id'                                :'id',
            'input_id'                          :'input_id',
            'hidden_id'                         :'hidden_id',
            'div_id'                            :'div_id',
            'type'                              :'1',
            'language'                          :'c',
            'title_show'                        :'1',
            'sofar_show'                        :'0',
            'noworkexp_show'                    :'0',
            'start_year'                        :1946,
            'year_page'                         :0,
            'future_select'                     :'0',
            'last_year_click'                   :0,
            'ym_futrue_css'                     :'0',
            'show_pre_yearpage'                 :'0',
            'afterClick'                        :""
        };
        var sDateNow = window.cfg.nowdate;
        var iYearNow = Number(sDateNow.substr(0, 4));
        var iMonthNow = Number(sDateNow.substr(5, 2));
        var iDayNow = Number(sDateNow.substr(8, 2));
        return this.each(function(){
            if(options)
            {
                $.extend(oSettings, options);
            }
            oSettings = initSettings(oSettings);
            initcalendar(oSettings);
            bindClickEvent(oSettings);
        });
        
        function initSettings(oSettings)
        {
            var oPrivateInit = {
                'title_show'                        :'1',
                'noworkexp_show'                    :'0',
                'sofar_show'                        :'0',
                'start_year'                        :1946,
                'year_page'                         :0,
                'future_select'                     :'0',
                'language'                          :'c',
                'last_year_click'                   :0,
                'ym_futrue_css'                     :'0', 
                'show_pre_yearpage'                 :'0',
                'afterClick'                        :function after(){return;}
            }
            
            $.each(oPrivateInit, function (i, value) {
                if ('' == oSettings[i]) {
                    oSettings[i] = value;
                }
            });
            if(oSettings['year_page'] == 0)
            {
                oSettings['year_page'] = Math.ceil((iYearNow - oSettings.start_year + 1)/20);
            }
            oSettings['last_year'] = iYearNow + oSettings['last_year_click']
            return oSettings;
        }

        function getYearCode(oSettings)
        {
            var sYearCode = '<div class="fin" id="' + oSettings.hidden_id + '_calendar_yeardiv">';
            sYearCode += '<em class="prev" yearpage="1" id="' + oSettings.hidden_id + '_calendar_yearprev"></em><em class="next off" yearpage="-1" id="' + oSettings.hidden_id + '_calendar_yearnext"></em>';
            iYearPage = Math.ceil((oSettings.last_year - oSettings.start_year + 1)/20);
            iYearNowRank = oSettings.last_year - oSettings.start_year - (iYearPage - 1) * 20;
            for(var i=0; i<20; i++)
            {
                sYearCode += '<span class="ek' + (i > iYearNowRank ? " off" : "") + '" year="' + (oSettings.last_year + i - iYearNowRank) + '">' + (oSettings.last_year + i - iYearNowRank) + '</span>'
            }
            sYearCode += '</div>';
            
            return sYearCode;
        }
        
        function getMonthCode(oSettings)
        {
            var sMonthCode = '<div class="fin f2" style="display:none" id="' + oSettings.hidden_id + '_calendar_monthdiv">';
            for(var i=0; i<12; i++)
            {
                sMonthCode += '<span class="ek" month="' + (i + 1) + '">' + (i + 1) + '</span>'
            }
            sMonthCode += '</div>';
            
            return sMonthCode;
        }
        
        function getDayCode(oSettings)
        {
            var sDayCode = '<div class="fin f3" style="display:none" id="' + oSettings.hidden_id + '_calendar_daydiv">';
            for(var i=0; i<31; i++)
            {
                sDayCode += '<span class="ek" day="' + (i + 1) + '">' + (i + 1) + '</span>';
            }
            sDayCode += '</div>';
            
            return sDayCode;
        }
        
        function initcalendar(oSettings)
        {
            if(oSettings.title_show == "1")
            {
                $("#" + oSettings.div_id).append('<p class="ftitle" id="' + oSettings.hidden_id + '_title"><span id="' + oSettings.hidden_id + '_title_text">' + (oSettings.language == 'c' ? "请选择日期" : "Please select a date") + '</span><em class="prev" id="' + oSettings.hidden_id + '_title_prev" style="display:none"></em></p>');
            }
            if(oSettings.sofar_show == "1")
            {
                $("#" + oSettings.div_id).append('<p class="now" id="' + oSettings.hidden_id + '_tonow">' + (oSettings.language == 'c' ? "至今" : "Present") + '</p>')
            }
            if(oSettings.noworkexp_show == "1")
            {
                $("#" + oSettings.div_id).append('<p class="now" id="' + oSettings.hidden_id + '_noworkexp">' + (oSettings.language == 'c' ? "暂无经验" : "No experience") + '</p>')
            }
            $("#" + oSettings.div_id).append(getYearCode(oSettings) + getMonthCode(oSettings) + getDayCode(oSettings));
            
        }
        
        function bindClickEvent(oSettings)
        {
            $("#" + oSettings.hidden_id + "_calendar_yearprev").click(function(event){
                event.stopPropagation();
                var sYear = $("#"  + oSettings.hidden_id).val() == "" ? "" : $("#"  + oSettings.hidden_id).val().split("/")[0];
                var iNowPage = Number($("#" + oSettings.hidden_id + "_calendar_yearprev").attr("yearpage")) - 1;
                turnYear(sYear, iNowPage + 1, oSettings);
            });
            
            $("#" + oSettings.hidden_id + "_calendar_yearnext").click(function(event){
                event.stopPropagation();
                var sYear = $("#"  + oSettings.hidden_id).val() == "" ? "" : $("#"  + oSettings.hidden_id).val().split("/")[0];
                var iNowPage = Number($("#" + oSettings.hidden_id + "_calendar_yearprev").attr("yearpage")) - 1;
                turnYear(sYear, iNowPage - 1, oSettings);
            });
            
            $("#" + oSettings.hidden_id + "_calendar_yeardiv").children("span.ek").click(function(event){
                event.stopPropagation();
                if($(this).hasClass("off") && oSettings.future_select == "0")
                {
                    return;
                }
                $(this).parent().find("span.on").attr("class", "ek");
                var sYear = $(this).attr("year");
                var sPreDate = $("#" + oSettings.hidden_id).val();
                var aPreDate = sPreDate.split("/");
                $(this).attr("class", "ek on");
                switch(oSettings.type)
                {
                    case '1':
                        calendarShow(false, oSettings);
                        $("#" + oSettings.hidden_id).val(sYear);
                        $("#" + oSettings.input_id).val(sYear);
                        oSettings.afterClick();
                        break;
                    case '2':
                        var sDate = sYear + (sPreDate == "" ? "/1" : sPreDate.substr(4));
                        var aDate = setTitleText(sYear, oSettings);
                        $("#" + oSettings.hidden_id).val(sDate);
                        $("#" + oSettings.input_id).val(sDate.split("/")[0] + "-" + sDate.split("/")[1]);
                        $("#" + oSettings.hidden_id + "_calendar_monthdiv").children("span.ek").attr("class", "ek");
                        $("#" + oSettings.hidden_id + "_title_prev").show();
                        $("#" + oSettings.hidden_id + "_calendar_monthdiv").children("span.ek").each(function(){
                            if(oSettings.ym_futrue_css == "1" && Number(sYear) == iYearNow && Number($(this).attr("month")) > iMonthNow)
                            {
                                $(this).attr("class", "ek off");
                            }
                            $(this).removeClass("on");
                            if(Number($(this).attr("month")) == Number(aPreDate[1]))
                            {
                                $(this).addClass("on");
                            }
                        });
                        divShow("month");
                        break;
                    case '3':
                        var sDate = sYear + (sPreDate == "" ? "/1/1" : sPreDate.substr(4));
                        var aDate = setTitleText(sYear, oSettings);
                        $("#" + oSettings.hidden_id).val(sDate);
                        $("#" + oSettings.input_id).val(sDate.split("/")[0] + "-" + sDate.split("/")[1] + "-" + sDate.split("/")[2]);
                        $("#" + oSettings.hidden_id + "_calendar_monthdiv").children("span.ek").attr("class", "ek");
                        $("#" + oSettings.hidden_id + "_title_prev").show();
                        $("#" + oSettings.hidden_id + "_calendar_monthdiv").children("span.ek").each(function(){
                            if(oSettings.ym_futrue_css == "1" && Number(sYear) == iYearNow && Number($(this).attr("month")) > iMonthNow)
                            {
                                $(this).attr("class", "ek off");
                            }
                            $(this).removeClass("on");
                            if(Number($(this).attr("month")) == Number(aPreDate[1]))
                            {
                                $(this).addClass("on");
                            }
                        });
                        divShow("month");
                        break;
                }
            });
            
            $("#" + oSettings.hidden_id + "_calendar_monthdiv").children("span.ek").click(function(event){
                event.stopPropagation();
                if($(this).hasClass("off") && oSettings.future_select == "0")
                {
                    return;
                }
                var sMonth = $(this).attr("month");
                var sPreDate = $("#" + oSettings.hidden_id).val();
                var aPreDate = sPreDate.split("/");
                
                switch(oSettings.type)
                {
                    case '1':
                        break;
                    case '2':
                        calendarShow(false, oSettings);
                        $("#" + oSettings.input_id).val(aPreDate[0] + "-" + sMonth);
                        $("#" + oSettings.hidden_id).val(aPreDate[0] + "/" + sMonth);
                        result = setTitleText(aPreDate[0] + "/" + sMonth, oSettings);
                        oSettings.afterClick();
                        break;
                    case '3':
                        $("#" + oSettings.input_id).val(aPreDate[0] + "-" + sMonth + "-" + aPreDate[2]);
                        $("#" + oSettings.hidden_id).val(aPreDate[0] + "/" + sMonth + "/" + aPreDate[2]);
                        result = setTitleText(aPreDate[0] + "/" + sMonth, oSettings);
                        var iMaxDay = new Date(aPreDate[0],sMonth,0).getDate();
                        var i = 0;
                        $("#" + oSettings.hidden_id + "_calendar_daydiv").children("span.ek").each(function()
                        {
                            $(this).attr("class", "ek");
                            if(iYearNow == Number(aPreDate[0]) && iMonthNow == Number(sMonth) && oSettings.ym_futrue_css == "1")
                            {
                                if(Number($(this).attr("day")) > iDayNow)
                                {
                                    $(this).attr("class", "ek off");
                                }
                            }
                            $(this).removeClass("on");
                            if(Number($(this).attr("day")) == Number(aPreDate[2]))
                            {
                                $(this).addClass("on");
                            }
                            $(this).show();
                            i++;
                            if(i > iMaxDay)
                            {
                                $(this).hide();
                            }
                        });
                        divShow("day");
                        break;
                }
            });
            
            $("#" + oSettings.hidden_id + "_calendar_daydiv").children("span.ek").click(function(event){
                event.stopPropagation();
                if($(this).hasClass("off") && oSettings.future_select == "0")
                {
                    return;
                }
                var sDay = $(this).attr("day");
                var sPreDate = $("#" + oSettings.hidden_id).val();
                var aPreDate = sPreDate.split("/");
                calendarShow(false, oSettings);
                $("#" + oSettings.input_id).val(aPreDate[0] + "-" + aPreDate[1] + "-" + sDay);
                $("#" + oSettings.hidden_id).val(aPreDate[0] + "/"  + aPreDate[1] + "/" + sDay);
                oSettings.afterClick();
            });
            
            $("#" + oSettings.hidden_id + "_title_prev").click(function(event){
                event.stopPropagation();
                if(!$("#" + oSettings.hidden_id + "_calendar_daydiv").is(":hidden"))
                {
                    divShow("month");
                    return;
                }
                if(!$("#" + oSettings.hidden_id + "_calendar_monthdiv").is(":hidden"))
                {
                    divShow("year");
                    return;
                }
                
            });
            
            if(oSettings.sofar_show == "1")
            {
                $("#" + oSettings.hidden_id + "_tonow").click(function(event){
                    event.stopPropagation();
                    calendarShow(false, oSettings);
                    $("#" + oSettings.input_id).val(oSettings.language == 'c' ? "至今" : "Present");
                    $("#" + oSettings.hidden_id).val("");
                });
            }
            
            if(oSettings.noworkexp_show == "1")
            {
                $("#" + oSettings.hidden_id + "_noworkexp").click(function(event){
                    event.stopPropagation();
                    calendarShow(false, oSettings);
                    $("#" + oSettings.hidden_id).val("0");
                    $("#" + oSettings.input_id).val($(this).text());
                });
            }
            var i =3;
            
            $("#" + oSettings.id).find("input.ef,span.i_calendar").click(function(event){
                event.stopPropagation();
                $('#' + oSettings.input_id).focus();
                if($("#" + oSettings.id).attr("float-on") == "true")
                {
                    calendarShow(false, oSettings);
                }
                else
                {
                    if(!checkDate(oSettings))
                    {
                        $("#" + oSettings.hidden_id).val("");
                    }
                    $("#" + oSettings.hidden_id + "_div").find(".ek").removeClass("on");
                    var sHiddenVal = $("#" + oSettings.hidden_id).val();
                    var aSelectedDate = setTitleText(sHiddenVal, oSettings);
                    var sYear = aSelectedDate == "" ? "" : aSelectedDate[0];
                    turnYear(sYear, "", oSettings);
                    $("#" + oSettings.hidden_id + "_title_prev").hide();
                    calendarShow(true, oSettings);
                }
            });
            $("#" + oSettings.id).click(function(event){
                event.stopPropagation();
            });
        }
        
        function turnYear(sYear, iTurn, oSettings)
        {
            var iPage = Math.ceil((Number(sYear) - oSettings.start_year + 1) /20) - 1;
            var iPageNow = Math.ceil((oSettings.last_year - oSettings.start_year + 1) /20) - 1;
            if(sYear != "")
            {
                if(iTurn === "")
                {
                    iTurn = iPageNow - iPage;
                }
            }
            else
            {
                if(iTurn === "" && oSettings.show_pre_yearpage == "1")
                {
                    iTurn = 1;
                }
            }
            var iMaxPage = iPageNow;
            var iMinPage = iPageNow - oSettings.year_page + 1;
            if(iTurn > iMaxPage || iTurn < iMinPage)
            {
                return;
            }
            var iNowPage = Number($("#" + oSettings.hidden_id + "_calendar_yearprev").attr("yearpage")) - 1;
            if(iTurn == iMinPage)
            {
                $("#" + oSettings.hidden_id + "_calendar_yearprev").attr("class", "prev");
                $("#" + oSettings.hidden_id + "_calendar_yearnext").attr("class", "next off");
            }
            else if(iTurn == iMaxPage)
            {
                $("#" + oSettings.hidden_id + "_calendar_yearprev").attr("class", "prev off");
                $("#" + oSettings.hidden_id + "_calendar_yearnext").attr("class", "next");
            }
            else
            {
                $("#" + oSettings.hidden_id + "_calendar_yearprev").attr("class", "prev");
                $("#" + oSettings.hidden_id + "_calendar_yearnext").attr("class", "next");
            }
            $("#" + oSettings.hidden_id + "_calendar_yearprev").attr("yearpage", iTurn + 1);
            $("#" + oSettings.hidden_id + "_calendar_yearnext").attr("yearpage", iTurn - 1);
            $("#" + oSettings.hidden_id + "_calendar_yeardiv").find("span.ek").each(function(){
                $(this).removeClass("on");
                $(this).text(Number($(this).attr("year")) - 20 * (iTurn - iNowPage));
                $(this).attr("year", (Number($(this).attr("year")) - 20 * (iTurn - iNowPage)));
                if(Number($(this).attr("year")) > oSettings.last_year)
                {
                    $(this).attr("Class", "ek off");
                }
                else
                {
                    $(this).attr("Class", "ek");
                }
                if(sYear != "")
                {
                    if($(this).attr("year") == sYear)
                    {
                        $(this).attr("class", "ek on");
                    }
                }
            });
        }
        
        function setTitleText(sDate, oSettings)
        {
            if(sDate != "")
            {
                if(oSettings.noworkexp_show == "1" && sDate == "0")
                {
                    $("#" + oSettings.hidden_id + "_title_text").text((oSettings.language == 'c' ? "暂无经验" : "No experience"));
                    return "";
                }
                else
                {
                    var aSelectedDate = sDate.split("/");
                    switch (oSettings.type)
                    {
                        case '1':
                            $("#" + oSettings.hidden_id + "_title_text").text(aSelectedDate[0]);
                            break;
                        case '2':
                            $("#" + oSettings.hidden_id + "_title_text").text(aSelectedDate[0] + (aSelectedDate.length > 1 ? ("-" + aSelectedDate[1]) : ""));
                            break;
                        case '3':
                            $("#" + oSettings.hidden_id + "_title_text").text(aSelectedDate[0] +  (aSelectedDate.length > 1 ? ("-" + aSelectedDate[1]) : "") + (aSelectedDate.length > 2 ? ("-" + aSelectedDate[2]) : ""));
                            break;
                    }
                    return aSelectedDate;
                }
            }
            else
            {
                if(oSettings.sofar_show == "1")
                {
                    $("#" + oSettings.hidden_id + "_title_text").text((oSettings.language == 'c' ? "至今" : "Present"));
                }
                else
                {
                    $("#" + oSettings.hidden_id + "_title_text").text((oSettings.language == 'c' ? "请选择日期" : "Please select a date"));
                }
                return "";
            }
        }
        
        function divShow(p_Str)
        {
            $("#" + oSettings.hidden_id + "_calendar_monthdiv").hide().css("z-index", "1");
            $("#" + oSettings.hidden_id + "_calendar_daydiv").hide().css("z-index", "1");
            $("#" + oSettings.hidden_id + "_calendar_yeardiv").hide().css("z-index", "1");
            $("#" + oSettings.hidden_id + "_calendar_" + p_Str + "div").show().css("z-index", "2");
        }
        
        function calendarShow(p_bShow, oSettings)
        {
            var $wp = $("#" + oSettings.id).parents('.flboxwp,.ln,.c,.box');
            closeAllFloatDiv($("#" + oSettings.id), $wp);
            if(p_bShow)
            {
                divShow("year");
                $("#" + oSettings.id).addClass("on");
                $wp.attr("float-index", "true").css("z-index", "4");
                $("#" + oSettings.id).attr("float-on", "true");

                if(oSettings.sofar_show == "1")
                {
                    $("#" + oSettings.hidden_id + "_tonow").removeClass("on")
                    if($("#" + oSettings.hidden_id).val() == "")
                    {
                        $("#" + oSettings.hidden_id + "_tonow").addClass("on");
                    }
                }
                
                if(oSettings.noworkexp_show == "1")
                {
                    $("#" + oSettings.hidden_id + "_noworkexp").removeClass("on");
                    if($("#" + oSettings.hidden_id).val() == "0")
                    {
                        $("#" + oSettings.hidden_id + "_noworkexp").addClass("on");
                    }
                }
            }
            else
            {
                closeAllFloatDiv(null,null);
                $("#" + oSettings.id).removeClass("on");
                $wp.attr("float-index", "false").css("z-index", "");
                $("#" + oSettings.id).attr("float-on", "false");
            }
        }
        
        function checkDate(oSettings)
        {
            var sStr = $("#" + oSettings.hidden_id).val();
            if(sStr == "")
            {
                return true;
            }
            if(oSettings.noworkexp_show == "1" && sStr == "0")
            {
                return true;
            }
            switch (oSettings.type)
            {
                case '3':
                    var result = sStr.match(/^(\d{1,4})(\/)(\d{1,2})\2(\d{1,2})$/);
                    if(result == null)
                    {
                        return false;
                    }
                    var d = new Date(result[1], result[3] - 1, result[4]);
                    return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3] && d.getDate() == result[4]);
                    break;
                case '2':
                    var result = sStr.match(/^(\d{1,4})(\/)(\d{1,2})$/);
                    if(result == null)
                    {
                        return false;
                    }
                    var d = new Date(result[1], result[3] - 1, "1")
                    return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3]);
                    break;
                case '1':
                    return checkNumber(sStr, "int");
            }
        }
        
    }
})(jQuery);