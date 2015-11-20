<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>登陆</title>
	<link rel="shortcut icon" type="image/x-icon"
		href="style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="style/type/classic.css"
		media="all" />
	<link rel="stylesheet" type="text/css" href="style/type/goudy.css"
		media="all" />
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/jquery.aw-showcase.js"></script>
	<script type="text/javascript" src="style/js/scripts.js"></script>
	<!-- <link rel="stylesheet" type="text/css" href="css/login.css" />
	<script type="text/javascript" src="js/login.js"></script>
	 -->
</head>
<body>
	<!-- Begin Header -->
	<!-- End Header -->
	
	<!-- Begin Body -->
	<div align="center">
	<!-- 登陆	 -->
	<form method="post" action="login">
	<table >
		<tr>
			<td>账号：</td>
			<td><input type="text" id="lId" name="id" /></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" id="lPassword" name="password" /></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td align="left"><input type="submit" value="登陆" /></td>
			<td align="right"><input type="button" value="忘记密码？" /></td>
  		</tr>
	</table>
	</form>
	</div>
	<!-- End Body -->
	
	<!-- Begin Footer -->
	<!-- End Footer -->

</body>
</html>