<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>记录</title>
<!-- ue begin 不知道为什么放到后面会影响head的样式显示 -->
    <link href="<%=path %>/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=path %>/umeditor1_2_2-utf8-jsp/third-party/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=path %>/umeditor1_2_2-utf8-jsp/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=path %>/umeditor1_2_2-utf8-jsp/umeditor.min.js"></script>
    <script type="text/javascript" src="<%=path %>/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<!-- ue end -->

	<link rel="shortcut icon" type="image/x-icon" href="<%=path %>/style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/type/classic.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/type/goudy.css" media="all" />
	<!-- 
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	 -->
	<script type="text/javascript" src="<%=path %>/style/js/jquery-2.1.4.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/jquery-browser.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/superfish.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/scripts.js"></script>
	
	<script type="text/javascript" src="<%=path %>/JS/write.js"></script>

</head>
<body>
<div id="body-wrapper"> 
  
  <!-- Begin Wrapper -->
  <div id="wrapper">
  
   <div class="intro">Phasellus vitae lectus sit amet ipsum fringilla viverra at et leo. Cras iaculis, sem vel venenatis sodales, elit dui elementum lorem, ut semper ligula ipsum at sapien.</div>
   
  	<!-- Begin Blog -->
  	<div class="container">
  	<div class="post photo">
    <div class="icon-photo"></div>
    <div class="content">
		<form class="forms" action="<%=path %>/pages/user/saveBlog" method="post">
				<h1>Title:<input  style="width:500px;height:20px;" type="text" name="title" value="" />
				</h1>
			<fieldset>
		<script type="text/plain" id="myEditor"  style="width:590px;height:240px;">
<p>这里我可以写一些输入提示</p>
		</script>
				<br/>
			  	<input type="hidden" name="blogContent" id="myContent" value="" />
			  	<input type="hidden" name="briefInfo" id="briefInfo" value="" />
			  	<input type="hidden" name="createTime" id="createTime" value="" />
				<input type="submit" value="submit" id="submit" name="submit" class="btn-submit" />
				<input type="button" value="cancel" name="cancel" class="btn-submit" />
				
			</fieldset>
		</form>
		
    	<!--TODO  -->
    <!-- 	<textarea cols="20" rows="5">shuru</textarea> -->

    </div>
    </div>  
	</div> <!-- End Container -->
	
	<div class="sidebar">
	
		<div class="sidebox">
			<h3 class="line">About</h3>
			<p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
			<br />
			<p>Amet risus nullam quis risus eget urna mollis ornare vel eu leo. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. </p>
		</div>
		
		<div class="sidebox">
			<h3 class="line">Popular Posts</h3>
			<ul class="popular-posts">
				<li>
					<a href="#"><img src="<%=path %>/style/images/art/ad1.jpg" alt="" /></a>
					<h5><a href="#">Dolor Commodo Consectetur</a></h5>
					<span>26 August 2011 | <a href="#">21 Comments</a></span>
				</li>
				
				<li>
					<a href="#"><img src="<%=path %>/style/images/art/ad2.jpg" alt="" /></a>
					<h5><a href="#">Dolor Commodo Consectetur</a></h5>
					<span>26 August 2011 | <a href="#">21 Comments</a></span>
				</li>
				
				<li>
					<a href="#"><img src="<%=path %>/style/images/art/ad3.jpg" alt="" /></a>
					<h5><a href="#">Dolor Commodo Consectetur</a></h5>
					<span>26 August 2011 | <a href="#">21 Comments</a></span>
				</li>
			</ul>
		</div>
		
		
		<div class="sidebox">
			<h3 class="line">Categories</h3>
			<ul class="cat-list">
				<li><a href="#">Web Design (15)</a></li>
				<li><a href="#">Photography (17)</a></li>
				<li><a href="#">Grapic Design (34)</a></li>
				<li><a href="#">Manipulation (24)</a></li>
				<li><a href="#">Web Design (15)</a></li>
				<li><a href="#">Photography (17)</a></li>
				<li><a href="#">Grapic Design (34)</a></li>
				<li><a href="#">Manipulation (24)</a></li>
			</ul>
		</div>
		
		<div class="sidebox">
			<h3 class="line">Search</h3>
			<form class="searchform" method="get">
          		<input type="text" id="s" name="s" value="type and hit enter" onfocus="this.value=''" onblur="this.value='type and hit enter'"/>
        	</form>
		</div>
		
	</div>
    <div class="clear"></div>
    
  </div>
  <!-- End Wrapper -->
  
  <div class="push"></div>
</div>
<!-- End Body Wrapper -->

</body>
</html>