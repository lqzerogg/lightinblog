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
				url = "/lightinblog/template/php/getInfo.php",
				getArgs = {
					type: 1,
					id: args["id"]
				};

			$.get(url, getArgs, $.proxy(this.callback, getArgs), "json");
		},

		/**
		 * @description 回调方法
		 */
		callback: function(json) {
			/*json = {
				name: "lqzerogg",
				id: "123465",
				author: "Zero",
				category: "technology",
				text: "Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui"
			};*/

			var $heroUnit = $(".hero-unit"),
				$content = $(".content");
			
			if(json && json.length) {
				$heroUnit.find(".caption").html(this["name"]);
				$heroUnit.find(".author .text").html(this["author"]);
				$heroUnit.find(".category .text").html(this["category"]);
				$content.html(json["text"]);
			}else {
				$heroUnit.find(".error").removeClass("none").html("不存在该文章，请返回首页");
			}
		}
	};

	task.init();
});