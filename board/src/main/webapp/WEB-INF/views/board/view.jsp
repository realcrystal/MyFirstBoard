<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회 - ${view.title}</title>
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
<!-- 게시글 정보 -->
<h1>${view.title}</h1>
<p>작성자:${view.writer}&nbsp;&nbsp;<fmt:formatDate value="${view.regDate}" pattern="yyyy.MM.dd. HH:mm" /></p>
<c:if test="${!empty user && user.id eq view.userId}">
  <div>
    <a href="/board/modify?bno=${view.bno}">게시물 수정</a>, <a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
  </div>
</c:if>

<hr/>
<!-- 게시글 내용 -->
${fn:replace(view.content, replaceChar, "<br/>")}
<hr/>

<!-- 댓글 시작 -->
<!-- 댓글 목록 시작-->
<ul>
  <c:forEach items="${reply}" var="reply">
  	<li>
      <div>
        <p><b>${reply.writer}</b> <fmt:formatDate value="${reply.regDate}" pattern="yyyy.MM.dd. HH:mm" />
        <c:if test="${!empty user && user.id eq reply.userId}">
          <a href="/reply/modify?bno=${view.bno}&rno=${reply.rno}">댓글 수정</a>
          <a href="/reply/delete?bno=${view.bno}&rno=${reply.rno}">댓글 삭제</a>
        </c:if>
        </p>
        <p>${fn:replace(reply.content, replaceChar, "<br/>")}</p>
      </div>
    </li>
  </c:forEach>
</ul>
<hr/>
<!-- 댓글 목록 끝 -->
<!-- 댓글 입력창 -->
<c:if test="${!empty user}">
<div>
  <form method="post" action="/reply/write">
    <p>${user.nickname}</p>
    <p>
      <textarea rows="5" cols="50" name="content" required></textarea>
    </p>
    <p>
      <input type="hidden" name="bno" value="${view.bno}">
      <input type="hidden" name="userId" value="${user.id}">
      <button type="submit">댓글 작성</button>
    </p>
  </form>
</div>
</c:if>

<!-- 댓글 끝 -->
</div>
</body>
</html>