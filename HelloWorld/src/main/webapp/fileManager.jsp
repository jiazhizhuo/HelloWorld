<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 -->
 <%
String path = request.getContextPath();
/* 						/HelloWorld		 */ 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
/* 							http	   ://			127.0.0.1		 :  8080			/HelloWorld	  / 	*/
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件管理</title>
	<link rel="shortcut icon" type="image/x-icon" href="<%=path %>/style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/type/classic.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/style/type/goudy.css" media="all" />
	<!-- 
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/uploadify/uploadify.css" />

	<script type="text/javascript" src="<%=path %>/style/js/jquery-2.1.4.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/jquery-browser.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/superfish.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="<%=path %>/style/js/scripts.js"></script>
	<script type="text/javascript" src="<%=path %>/uploadify/jquery.uploadify.min.js"></script>

</head>
<body>
  <!-- Begin Wrapper -->
  <div id="wrapper">
    <div class="one-half" align="center">
      	 <a href="#" class="button green">Upload</a>
       	 <a href="#" class="button purple">mul_Up</a>
    </div>
    <div class="one-half last" align="center">
    	<a href="#" class="button red" >Delete</a> <a href="#" class="button blue">Down</a>
    </div>
    <!-- 多文件上传 -->
    <form name="lalala" action="<%=path %>/uploadFile/" enctype="multipart/form-data" method="post">
    	<input type="file" name="upfile" >
    <!-- 	<input type="button" id="btn_add" value="增加一行"> -->
    	<input type="submit" value="上传">
    </form>
    
    
<input type="hidden" id="path" value="<%=path %>"/>    
<input type="file" name="file_upload" id="file_upload" />
<a href="javascript:$('#file_upload').uploadify('upload','*')">Upload Files</a>
<script type="text/javascript">
$(function() {
    $("#file_upload").uploadify({
        'auto'     : false,
        'swf'      : $('#path').val()+'/uploadify/uploadify.swf',
        /* 'uploader' : $('#path').val()+'/uploadify/uploadify.php' */
        'uploader' : $('#path').val()+'/uploadFile' 
    });
});
</script>




  </div>
</body>
</html>