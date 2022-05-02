<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var= "path" value="${pageContext.request.contextPath}/resources/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Insert title here</title>
</head>
<body>
<footer>
<div id="footerdiv1">
    <a href="#">사이트맵</a><span class="footerspan"></span>
    <a href="#">이용약관</a><span class="footerspan"></span>
    <a href="#">개인정보 처리방침</a><span class="footerspan"></span>
    <a href="#">저작권 안내</a><span class="footerspan"></span>
    <a href="#">보증안내</a><span class="footerspan"></span>
    <a href="#">자동차 교환 및 환불 중재 규정 안내</a><span class="footerspan"></span>
    <a href="#">하자 재발 통보 안내</a>
    <div id="snsimg">
      <i class="fab fa-facebook-f"></i>
      <i class="fab fa-instagram"></i>
      <i class="fab fa-youtube"></i>
    </div>
</div>
<div id="footerdiv2">
  <a href="#">챔피언십</a>
  <a href="#">부티크</a>
  <a href="#">업데이트</a>
  <a href="#">아카데미</a>
  <div id="language">
    <a href="#">ENG</a><a href="#">KOR</a>
  </div>
</div>
<div id="footerlogo">
  <img id="footerlogoimg" src="${path}/images/whitelogo.png" alt="">
<p>© Copyright 2022 Hyundai Motor Company.
  All Rights Reserved.</p>
</div>
</footer> 
</body>
</html>