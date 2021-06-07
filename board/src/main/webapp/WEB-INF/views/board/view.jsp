<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>

<div id="nav">
  <%@ include file="../include/nav.jsp" %>
</div>

<h1>${view.title}</h1>
<lable>작성자: </lable>
${view.writer} <fmt:formatDate value="${view.regDate}" pattern="yyyy.MM.dd. HH:mm" />
<hr/>
${view.content}
<hr/>
<div>
  <a href="/board/modify?bno=${view.bno}">게시물 수정</a>, <a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
</div>

<!-- 댓글 시작 -->

<hr/>
<ul>
  <c:forEach items="${reply}" var="reply">
  	<li>
      <div>
        <p>${reply.writer} <fmt:formatDate value="${reply.regDate}" pattern="yyyy.MM.dd. HH:mm" />
          <a href="/reply/modify?bno=${view.bno}&rno=${reply.rno}">댓글 수정</a>
        </p>
        <p>${reply.content}</p>
      </div>
    </li>
  </c:forEach>
</ul>
<hr/>
<div>
  <form method="post" action="/reply/write">
    <p>
      <label>댓글 작성자</label> <input type="text" name="writer" required>
    </p>
    <p>
      <textarea rows="5" cols="50" name="content" required></textarea>
    </p>
    <p>
      <input type="hidden" name="bno" value="${view.bno}">
      <button type="submit">댓글 작성</button>
    </p>
  </form>
</div>

<!-- 댓글 끝 -->

</body>
</html>