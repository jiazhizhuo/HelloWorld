<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<html>
<head>
    <title>hello word</title>
	<decorator:head />
    <jsp:include page="header.jsp" flush="true"/>
</head>
<body>
   	<decorator:body />  
  	<jsp:include page="footer.jsp" flush="true"/>  
</body>
</html>