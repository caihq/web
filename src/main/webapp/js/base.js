/**开发自定义插件**/

/**状态**/
$.status = {
	FAILED:0, // 失败
	SUCCESS:1, // 成功
	ERROR:500, // 错误
	NOTACCEPTABLE:406 // 拒绝
}
/**工具**/
$.utils = {
	isBlank: function(param){
		if(param == null || param == undefined || $.trim(param) == '') {
			return true;
		}
		return false;
	},
	isNotBlank: function(param) {
		if(param == null || param == undefined || $.trim(param) == '') {
			return false;
		}
		return true;
	},
	showLoading: function() {
		$(".loading-container").removeClass("loading-inactive");
		$(".loading-container").addClass("loading-active");
	},
	hideLoading: function() {
		$(".loading-container").addClass("loading-inactive");
		$(".loading-container").removeClass("loading-active");
	},
	showSuccessMsg: function(msg) {
		msg == null ? "" : msg ;
		Notify(msg, 'top-right', '5000', 'success', 'fa-info', true);
	},
	showErrorMsg: function(msg) {
		msg == null ? "" : msg ;
		Notify(msg, 'top-right', '5000', 'danger', 'fa-info', true);
	}
}

