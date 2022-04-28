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
    <jsp:include page="header.jsp"></jsp:include>
	
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>