$(function(){

	var $container = $('#container');
	
	$.ajax({
		dataType:"json",
		url:"getBlogs",
		type:"post",
//		data:data,
		success:function(data){
			var blog = null;
			var $textPost = null;
			for(var i in data){
				blog = data[i];
				
//				blog.title;
//				blog.brief_info;
//				blog.create_time;
				
				$textPost = createTextPost();
				$textPost.find('.title').html(blog.title);
				$textPost.find('.brief-info').html(blog.brief_info);
				
				$container.prepend($textPost);


			}
			// 创建一个textPost div的jQuery对象。
			function createTextPost(){
				var $textTemplate = $('#textTemplate');
				return $($textTemplate.html());
			}
		}
	});
	
	

});