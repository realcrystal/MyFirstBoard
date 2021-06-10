<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 설정</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div id="nav">
  <%@ include file="../include/nav.jsp" %>
</div>
<h2>${user.nickname}님의 설정</h2>
<p>내 아이디: ${user.id}</p>
<form method="post">
  <input type="hidden" name="id" value="${user.id}" /><br/>
  <lable>비밀번호: </lable>
  <input type="password" name="pwd" /><br/>
  <button type="submit">비밀번호 변경</button>
</form>
</div>
</body>
</html>