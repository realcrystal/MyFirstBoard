<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div id="login">
  <%@ include file="/WEB-INF/views/include/login.jsp" %>
</div>
<div id="nav">
  <%@ include file="/WEB-INF/views/include/nav.jsp" %>
</div>

</body>
</html>
