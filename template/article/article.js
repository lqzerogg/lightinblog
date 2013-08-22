$(function() {
	/**
	 * @description 获取查询字符窜
	 * @return {object} 返回键值对形式的对象
	 */
	$.getQueryStringArgs = function() {
		var qs = (location.search.length > 0? location.search.substring(1): ""),
			items = qs.split("&");
			args = {};		

		var i = 0,
			item = null,
			length = items.length,
			name = null,
			value = null;

		for(i = 0; i != length; ++i) {
			item = items[i].split("=");
			name = decodeURIComponent(item[0]);
			value = decodeURIComponent(item[1]);
			if(name.length > 0) {
				args[name] = value;
			}
		}

		return args;
	};

	var task = {

		/**
		 * @description 初始化方法
		 */
		init: function() {
			var args = $.getQueryStringArgs(),
				url = "../php/blog.php",
				getArgs = {
					id: args["id"]
				};

			$.get(url, getArgs, this.callback, "json");			
		},

		/**
		 * @description 回调方法
		 */
		callback: function(json) {

			var $heroUnit = $(".hero-unit"),
				$content = $(".content");			
			
			if(json) {				
				$heroUnit.find(".caption").html(json[0]["title"]);
				$heroUnit.find(".author .text").html(json[0]["author"]);
				$heroUnit.find(".category .text").html(json[0]["category"]);
				$content.html(json[0]["contents"]);
			}else {
				$heroUnit.find(".error").removeClass("none").html("不存在该文章，请返回首页");
			}
		}
	};

	task.init();
});