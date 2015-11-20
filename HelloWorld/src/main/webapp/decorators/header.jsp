<%@ page language="java" contentType="text/html; charset=utf-8"  import="web.domain.*"
    pageEncoding="utf-8"%>  
 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!-- Begin Header -->
<div id="header">
	<div class="logo">
		<a href="<%=path %>/index.html"><img src="<%=path %>/style/images/logo.png" alt="" /></a>
	</div>
	<!-- Begin Menu -->
	<div class="menu">
		<ul class="sf-menu">
			<li><a href="<%=path %>/index.jsp">主页</a>
				<ul>
					<li><a href="<%=path %>/index.html">Slider I</a></li>
					<li><a href="<%=path %>/index2.html">Slider II</a></li>
					<li><a href="<%=path %>/index3.html">Slider III</a></li>
				</ul></li>
			<li><a href="<%=path %>/blog.jsp">记录</a>
				<ul>
					<li><a href="<%=path %>/pages/user/write.jsp">Write</a></li>
					<li><a href="<%=path %>/post.jsp">Post</a></li>
					<li><a href="<%=path %>/post.jsp">Post</a></li>
				</ul></li>
			<li><a href="<%=path %>/gallery.jsp">画廊</a></li>
			<li><a href="<%=path %>/fileManager.jsp">my cloud</a></li>
			<li><a href="<%=path %>/typography.jsp">Typography</a></li>
			<li><a href="<%=path %>/columns.jsp">Columns</a></li>
			<li><a href="<%=path %>/contact.jsp">留言</a></li>
		</ul>
	</div>
	
	<% User user = (User)session.getAttribute("user");
	if(user == null){
	%>
	<div style="float:right;">
		<a href="login.jsp">登陆</a>
		<a href="#">.</a>
		<a href="register.jsp">注册</a>
	</div>
	<%}else{ %>
	<script type="text/javascript" src="<%=path %>/JS/header.js"></script>
	<div style="float:right;"><!-- onmouseover="overUser(this)" onmouseout="outUser(this)"  -->
		<a href="#" ><%=user.getName() %></a>
		<!-- TODO 改为悬浮列表 -->
	 	<ul>
	 	<li><a href="<%=path %>/cancel">cancel</a></li>
	 	<li><a href="<%=path %>/pages/user/write.jsp">write blog</a>
	 	</ul>
	</div>
	<%} %>
	<div class="clear"></div>
	<!--  
	清除浮动用的。因为上面有div的float设置成了left或right，不清除浮动的话，父div高度就不会随内容而增加。
	http://zhidao.baidu.com/link?url=-2_eZuGvJe_4X6-Diu9Fwg1h84nRuL3OT3ysm-DT4GaiQszoZ39VgHfrIzTD1dk7mlxmQw-etyOkgPCvod1EQq
	 -->
	<!-- End Menu -->

</div>
<!-- End Header -->
