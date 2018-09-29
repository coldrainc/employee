/*
 *	soChange 1.5 - simple gallery with jQuery
 *	made by bujichong 2010-01-29
 *	浣滆€咃細涓嶇緛铏�  2010-01-29
 * http://hi.baidu.com/bujichong/
 */
;(function($){
	$.fn.extend({
		"soChange": function(o){

		o= $.extend({
			thumbObj:null,//瀵艰埅瀵硅薄
			botPrev:null,//鎸夐挳涓婁竴涓�
			botNext:null,//鎸夐挳涓嬩竴涓�
			thumbNowClass:'now',//瀵艰埅瀵硅薄褰撳墠鐨刢lass,榛樿涓簄ow
			thumbOverEvent:true,//榧犳爣缁忚繃thumbObj鏃舵槸鍚﹀垏鎹㈠璞★紝榛樿涓簍rue锛屼负false鏃讹紝鍙湁榧犳爣鐐瑰嚮thumbObj鎵嶅垏鎹㈠璞�
			slideTime:1000,//骞虫粦杩囨浮鏃堕棿锛岄粯璁や负1000ms
			autoChange:true,//鏄惁鑷姩鍒囨崲锛岄粯璁や负true
			clickFalse:true,//瀵艰埅瀵硅薄濡傛灉鏈夐摼鎺ワ紝鐐瑰嚮鏄惁閾炬帴鏃犳晥锛屽嵆鏄惁杩斿洖return false锛岄粯璁ゆ槸return false閾炬帴鏃犳晥锛屽綋thumbOverEvent涓篺alse鏃讹紝姝ら」蹇呴』涓簍rue锛屽惁鍒欓紶鏍囩偣鍑讳簨浠跺啿绐�
			overStop:true,//榧犳爣缁忚繃鍒囨崲瀵硅薄鏃讹紝鍒囨崲瀵硅薄鏄惁鍋滄鍒囨崲锛屽苟浜庨紶鏍囩寮€鍚庨噸鍚嚜鍔ㄥ垏鎹紝鍓嶆彁鏄凡寮€鍚嚜鍔ㄥ垏鎹�
			changeTime:5000,//鑷姩鍒囨崲鏃堕棿
			delayTime:300//榧犳爣缁忚繃鏃跺璞″垏鎹㈣繜婊炴椂闂达紝鎺ㄨ崘鍊间负300ms
		}, o || {});

		var _self = $(this);
		var thumbObj;
		var size = _self.size();
		var nowIndex =0; //瀹氫箟鍏ㄥ眬鎸囬拡
		var index;//瀹氫箟鍏ㄥ眬鎸囬拡
		var startRun;//棰勫畾涔夎嚜鍔ㄨ繍琛屽弬鏁�
		var delayRun;//棰勫畾涔夊欢杩熻繍琛屽弬鏁�

	//涓诲垏鎹㈠嚱鏁�
	function fadeAB () {
		if (nowIndex != index) {
			if (o.thumbObj!=null) {
			$(o.thumbObj).removeClass(o.thumbNowClass).eq(index).addClass(o.thumbNowClass);}
			if (o.slideTime <= 0) {
				_self.eq(nowIndex).hide();
				_self.eq(index).show();	
			}else{
				_self.eq(nowIndex).fadeOut(o.slideTime);
				_self.eq(index).fadeIn(o.slideTime);
			}
			nowIndex = index;
			if (o.autoChange==true) {
			clearInterval(startRun);//閲嶇疆鑷姩鍒囨崲鍑芥暟
			startRun = setInterval(runNext,o.changeTime);}
			}
	}


	//鍒囨崲鍒颁笅涓€涓�
	function runNext() {
		index =  (nowIndex+1)%size;
		fadeAB();
	}

	//鍒濆鍖�
			_self.hide().eq(0).show();

	//鐐瑰嚮浠讳竴鍥剧墖
		if (o.thumbObj!=null) {
		thumbObj = $(o.thumbObj);

	//鍒濆鍖杢humbObj
			thumbObj.removeClass(o.thumbNowClass).eq(0).addClass(o.thumbNowClass);
			thumbObj.click(function () {
				index = thumbObj.index($(this));
				fadeAB();
				if (o.clickFalse == true) {
					return false;
				}
			});
			if (o.thumbOverEvent == true) {
			thumbObj.mouseenter(function () {
				index = thumbObj.index($(this));
				delayRun = setTimeout(fadeAB,o.delayTime);
			});
			thumbObj.mouseleave(function () {
				clearTimeout(delayRun);
			});
			}
		}

	//鐐瑰嚮涓婁竴涓�
		if (o.botNext!=null) {
			$(o.botNext).click(function () {
				if(_self.queue().length<1){
				runNext();}
				return false;
			});
		}

	//鐐瑰嚮涓嬩竴涓�
		if (o.botPrev!=null) {
			$(o.botPrev).click(function () {
				if(_self.queue().length<1){
				index = (nowIndex+size-1)%size;
				fadeAB();}
				return false;
		});
		}

	//鑷姩杩愯
		if (o.autoChange==true) {
		startRun = setInterval(runNext,o.changeTime);
		if (o.overStop == true) {
			_self.mouseenter(function () {
				clearInterval(startRun);//閲嶇疆鑷姩鍒囨崲鍑芥暟
				
			});
			_self.mouseleave(function () {
				startRun = setInterval(runNext,o.changeTime);
			});
			}
		}

	}

	})

})(jQuery);

