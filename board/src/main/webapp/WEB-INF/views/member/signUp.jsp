<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>

<div id="nav">
  <%@ include file="../include/nav.jsp" %>
</div>

<form method="post">

<lable>별명</lable>
<input type="text" name="nickname" /><br/>

<lable>아이디</lable>
<input type="text" name="id" /><br/>

<lable>비밀번호</lable>
<input type="text" name="pwd" /><br/>

<button type="submit">가입</button>

</form>

</body>
</html>