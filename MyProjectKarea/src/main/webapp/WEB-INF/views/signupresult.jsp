<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${PageContext.request.contextPath}/resources" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="${path}css/headerfooter.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>
<script src="${path}/js/script.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
		<h1>Karea 회원가입이 완료되었습니다.</h1>
		<h3>회원님은 Karea의 모든 기능을 사용하실 수 있습니다. 회원 접속 후 이용 가능합니다.</h3>
         <a href="${pageContext.request.contextPath}/login">로그인 페이지로 이동</a>

	</main>



	<jsp:include page="header.jsp"></jsp:include>
</body>
</html>