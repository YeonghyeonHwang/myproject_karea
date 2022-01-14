<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}/resources/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="${path}/css/headerfooter.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>
<script src="${path}/js/script.js"></script>
<title>Insert title here</title>
<style>
h1 {
	color: white;
	font-weight: lighter;
	font-size: 3.7rem;
}

main {
	margin-top: 10vh;
	width: 100%;
	height: 70vh;
	background: url("${path}/images/GV60-slide.jpeg") center no-repeat;
	background-size: cover;
	background-position: 50% 70%;
}

#maintext {
	padding-top: 10vh;
	margin-left: 5vw;
}

#maintext>p {
	margin-top: 2vh;
}

#maintext>div {
	width: 10vw;
	height: 5vh;
	border: 1px solid white;
	float: left;
	text-align: center;
	line-height: 5vh;
	margin-top: 25vh;
	margin-right: 2vw;
}

#logindiv {
	background-color: white;
}

#signdiv {
	background-color: #111111;
}

#logindiv>a {
	color: black;
	display: block;
}

#signdiv>a {
	display: block;
}
</style>
</head>
<body>
	<!-- header 시작 -->
	<header>

		<a id="logoA" href="${pageContext.request.contextPath}/main"><img
			id="logo" src="${path}/images/whitelogo.png" alt=""></a>


		<ul>
			<li><h2 id="customerservice">고객센터</h2></li>
			<li><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></li>
			<li><a href="${pageContext.request.contextPath}/map">지점 찾기</a></li>
		</ul>
	</header>
	<div id="menuslide">
		<ul id="menuslideUl1" class="menuslideUl">
			<li><a href="">고객센터 안내</a></li>
			<li><a href="">공지사항</a></li>
			<li><a href="">이벤트</a></li>
			<li><a href="">자주 묻는 질문</a></li>
			<li><a href="">다운로드 센터</a></li>
			<li><a href="">PR센터</a></li>
		</ul>
		<hr id="headerhr">
		<ul id="menuslideUl2" class="menuslideUl">
			<li><a href="">서비스 센터 찾기</a></li>
			<li><a href="">네비게이션 업데이트</a></li>
		</ul>
	</div>
	<div id="boxshadow"></div>
	<!-- footer 끝 -->
	<main>
		<div id="maintext">
			<h1>MY PAGE</h1>
			<p>Your daily life will be special the moment you select Karea</p>
			<div id="logindiv">
				<a href="${pageContext.request.contextPath}/gologin">로그인</a>
			</div>
			<div id="signdiv">
				<a href="${pageContext.request.contextPath}/signup">회원가입</a>
			</div>
		</div>
	</main>
	<!-- footer 시작 -->
	<footer>
		<div id="footerdiv1">
			<a href="#">사이트맵</a><span class="footerspan"></span> <a href="#">이용약관</a><span
				class="footerspan"></span> <a href="#">개인정보 처리방침</a><span
				class="footerspan"></span> <a href="#">저작권 안내</a><span
				class="footerspan"></span> <a href="#">보증안내</a><span
				class="footerspan"></span> <a href="#">자동차 교환 및 환불 중재 규정 안내</a><span
				class="footerspan"></span> <a href="#">하자 재발 통보 안내</a>
			<div id="snsimg">
				<i class="fab fa-facebook-f"></i> <i class="fab fa-instagram"></i> <i
					class="fab fa-youtube"></i>
			</div>
		</div>
		<div id="footerdiv2">
			<a href="#">챔피언십</a> <a href="#">부티크</a> <a href="#">업데이트</a> <a
				href="#">아카데미</a>
			<div id="language">
				<a href="#">ENG</a><a href="#">KOR</a>
			</div>
		</div>
		<div id="footerlogo">
			<img id="footerlogoimg" src="${path}/images/whitelogo.png" alt="">
			<p>© Copyright 2022 Hyundai Motor Company. All Rights Reserved.</p>
		</div>
	</footer>
	<!-- footer 끝 -->
</body>
</html>