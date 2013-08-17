!function ($) {
	var addArticle = function(data){
		var template = '<div class="span4" cateory="'+data.articleCategory+'"><h2>'+data.articleTitle+
		'</h2><div class="author">author: <em>'+data.articleAuthor+
		'</em></div><p>'+data.article+'</p><p><a class="btn" href="#">View details &raquo;</a></p></div>';
		$("#article").append(template);
	}
	var composing = function(){
		$("#article .span4").each(function(index){
			if(index%3 === 0){
				$(this).css("margin-left",0);
			}
		});
	}
	window.onload = function(){
		var phpUrl = "../php/readme.json";
		$.ajax({
			type	 : "GET",
			url		 : phpUrl,
			dataType : "json",
			success  : function(data){
				for(var i = 0; i < data.articlesList.length ; i++){
					addArticle(data.articlesList[i]);
				}
				composing();
			}
		});
	}
}(window.jQuery);