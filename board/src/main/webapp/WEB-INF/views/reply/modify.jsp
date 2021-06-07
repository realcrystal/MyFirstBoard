<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 수정</title>
</head>
<body>

<div id="nav">
  <%@ include file="../include/nav.jsp" %>
</div>

<form method="post">
  <p>
    <label>댓글 작성자: </label>${reply.writer}
  </p>
  <p>
    <textarea rows="5" cols="50" name="content">${reply.content}</textarea>
  </p>
  <p>
    <input type="hidden" name="bno" value="${reply.bno}">
    <button type="submit">댓글 수정</button>
  </p>
</form>

</body>
</html>