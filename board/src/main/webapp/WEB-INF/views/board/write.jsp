<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div id="nav">
  <%@ include file="../include/nav.jsp" %>
</div>

<form method="post">

<lable>제목</lable>
<input type="hidden" name="userId" value="${user.id}"/>
<input type="text" name="title" /><br/>
<input type="hidden" name="writer" value="${user.nickname}"/>
<lable>내용</lable>
<textarea cols="50" rows="5" name="content"></textarea><br/>

<button type="submit">작성</button>

</form>

</body>
</html>