!function ($) {
	var template = "";
	var categorySelected = "";
	var addArticle = function(data){
		template = template + '<div class="span3" category="'+data.category+'"><div class="tile">'+
                    '<img src="../lib/images/1.jpg" alt="picture" class="tile-image"><h3 class="tile-title">'+data.title+
                    '</h3><span class="info">Author:<span id="author">'+data.author+
                    '</span></span><p>'+data.introduction+
                    '</p><a class="btn btn-primary btn-large btn-block" href="../article/article.html?address='+data.address+
                    '">View More &raquo;</a></div></div>';
	}
	$(function(){
		var phpUrl = "../php/lightinblog.php";
		$.ajax({
			type	 : "GET",
			url		 : phpUrl,
			dataType : "json",
			success  : function(data){
				console.log(data);
				for(var i = 0; i < data.length ; i++){
					addArticle(data[i]);
				}
				$(".span12").html(template);
			}
		});
	});

	$(".todo li").click(function(e) {
		e.preventDefault();
		$(".todo li.todo-done").removeClass("todo-done");
		if(categorySelected != $(this).attr("id")){
			$(this).addClass("todo-done");
			categorySelected = $(this).attr("id");
		}else{
			categorySelected = "";
		}
    });
	$(".btn-primary").click(function(e){
		e.preventDefault();
		var testUrl = "../php/selectblog.php";
		var author = $("#author").val();
		var title = $("#article").val();
		if(author === ""){
			author = 0;
		}
		if(title === ""){
			title = 0;
		}
		switch(categorySelected)
		{
			case "categoryOne":
		  		categorySelected = 1;
		  		break;
			case "categoryTwo":
		 		 categorySelected = 2;
		  		break;
		 	case "categoryThree":
		  		categorySelected = 3;
		  		break;
		  	case "categoryFour":
		  		categorySelected = 4;
		  		break;
			default:
				categorySelected = 0;
		}
		$.ajax({
			type	 : "GET",
			url		 : testUrl,
			dataType : "json",
			data     : { category: categorySelected, author: author, title: title },
			success  : function(data){
				template = "";
				for(var i = 0; i < data.length ; i++){
					addArticle(data[i]);
				}
				$(".span12").html(template);
			}
		});
	});

}(window.jQuery);