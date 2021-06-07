<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 로그인 시작 -->
<c:if test="${empty user}">
<form class="form-inline" action="/member/signIn" method="post" autocomplete="off">
  <div class="form-group">
    <label for="id">아이디: </label>
    <input class="form-control" type="text" name="id">
  </div>
  <div class="form-group">
    <label for="pwd">비밀번호: </label>
    <input class="form-control" type="password" name="pwd">
  </div>
  <button type="submit" class="btn btn-primary">로그인</button>
</form>
<p>회원이 아니신가요? <a href="/member/signUp">회원가입</a><p>
</c:if>
<c:if test="${!empty user}">
  <p>${user.nickname}님 좋은 하루 되세요! </p>
  <button onclick="document.location='/member/signOut'">로그아웃</button>
</c:if>
<!-- 로그인 끝 -->