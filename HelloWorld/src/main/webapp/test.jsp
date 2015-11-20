<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   

<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>日志</title>
	<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="style/type/classic.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/type/goudy.css" media="all" />
	<!-- 
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	 -->
	<script type="text/javascript" src="style/js/jquery-2.1.4.js"></script>
	<script type="text/javascript" src="style/js/jquery-browser.js"></script>
	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/scripts.js"></script>
	<script type="text/javascript" src="JS/test.js"></script>
</head>
<body>
<div id="body-wrapper"> 
    <!-- 多文件上传 -->
    <form name="lalala" action="uploadFile" enctype="multipart/form-data" method="post">
    	<input type="file" name="upfile">
    <!-- 	<input type="button" id="btn_add" value="增加一行"> -->
    	<input type="submit" value="上传">
    </form>
</div>
<!-- End Body Wrapper -->
</body>
</html>