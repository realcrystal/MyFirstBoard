<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 로그인 시작 -->
<c:if test="${empty user}">
<form action="/member/signIn" method="post" autocomplete="off">
  <label for="id">아이디: </label>
  <input type="text" name="id">
  <label for="pwd">비밀번호: </label>
  <input type="password" name="pwd">
  <button type="submit">로그인</button>
</form>
<a href="/member/signUp">회원가입</a>
</c:if>
<c:if test="${!empty user}">
  <p>${user.nickname}</p>
  <a href="/member/signOut">로그아웃</a>
</c:if>
<!-- 로그인 끝 -->