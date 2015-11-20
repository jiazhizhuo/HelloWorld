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
	<!-- 
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	 -->
	<script type="text/javascript" src="style/js/jquery-2.1.4.js"></script>
	<script type="text/javascript" src="style/js/jquery-browser.js"></script>

	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/jquery.aw-showcase.js"></script>
	<script type="text/javascript" src="style/js/scripts.js"></script>
	<link rel="stylesheet" type="text/css" href="CSS/register.css" />
	<script type="text/javascript" src="JS/register.js"></script>
</head>
<body>
	<!-- Begin Header -->
	<!-- End Header -->
	
	<!-- Begin Body -->
	<div align="center">
	<!-- 注册	 -->
	<form method="post" action="register">
	<table >
		<tr>
			<td>账号：</td>
			<td><input type="text" id="rId" name="id" /></td>
			<td><font id="rIdInfo">&nbsp;2~32字符</font></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" id="rPassword" name="password" /></td>
			<td><font id="rPasswordInfo">&nbsp;6~32字符</font></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td></td>
			<td><input type="password" id="rPassword2" name="rPassword2" /></td>
			<td><font id="rPassword2Info">&nbsp;(再次输入你的密码)</font></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr><td><br/></td></tr>
		<tr>
			<td align="center" colspan="2"><input id="submit" type="submit" value="注册" /></td>
  		</tr>
	</table>
	</form>
	</div>
	<!-- End Body -->
	
	<!-- Begin Footer -->
	<!-- End Footer -->

</body>
</html>