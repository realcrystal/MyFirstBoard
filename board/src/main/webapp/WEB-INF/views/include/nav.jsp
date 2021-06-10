<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>게시판</h1>
<ul class="list-inline">
  <li>
  	<a href="/board/listPageSearch?num=1">글 목록 (페이징 + 검색)</a>
  </li>
  <c:if test="${!empty user}">
  <li>
  	<a href="/board/write">글 작성</a>
  </li>
  </c:if>
</ul>