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
main {
	width: 100%;
	margin-top: 10vh;
	height: 70vh;
	background-color: white;
	text-align: center;
}

#wrapper {
	padding: 5vh;
	width: 25vw;
	margin: 0 auto;
	text-align: center;
}

#loginh1 {
	margin-top: px;
	font-weight: normal;
	text-align: left;
}

form {
	margin-top: 5vh;
}

label {
	display: block;
	text-align: left;
	color: gray;
}

input {
	background-color: #f5f5f5;
	color: black;
	border-radius: 40px;
	border: none;
	width: 24vw;
	height: 5vh;
	margin-bottom: 3vh;
	padding-left: 1vw;
	font-size: 1.0rem;
}

button {
	background-color: #f5f5f5;
	color: gray;
	border-radius: 40px;
	border: none;
	width: 25vw;
	height: 5vh;
	margin-bottom: 3vh;
	padding: 10px;
	font-size: 1.0rem;
	cursor: pointer;
}

#submitbutton {
	color: white;
	background-color: #4868da;
}

#searchidpw>a {
	color: black;
	line-height: top;
}

#searchidpw>a:hover {
	color: #4868da;
}

#searchidpwspan {
	width: 2px;
	display: inline-block;
	background-color: black;
	height: 15px;
}

#linehr {
	margin-top: 20px;
}

#linehr>span {
	display: inline-block;
	width: 10vw;
	height: 1px;
	background-color: gray;
	border: none;
	transform: translateY(-300%);
}

#linehr>p {
	display: inline;
	color: black;
	padding-left: 10px;
	padding-right: 10px;
}

#signa {
	background-color: #f5f5f5;
	color: gray;
	border-radius: 40px;
	border: none;
	width: 25vw;
	height: 5vh;
	margin-bottom: 3vh;
	border: 1px solid black;
	margin-top: 20px;
}

#signa>a {
	color: gray;
	line-height: 5vh;
	display: block;
}

#signa>a:hover {
	color: black;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<main>
		<div id="wrapper">
			<h1 id="loginh1">로그인</h1>
			<form action="login" method="post">
				<label for="id">아이디</label> <input id="id" name="id" type="text">
				<label for="password">비밀번호</label> <input id="password"
					name="password" type="password">
				<button id="submitbutton" type="submit">로그인</button>
				<button type="reset">취소</button>
			</form>
			<div id="searchidpw">
				<a href="">이메일 주소를 잊으셨나요?</a> <span id="searchidpwspan"></span> <a
					href="">비밀번호를 잊으셨나요? </a>
			</div>
			<div id="linehr">
				<span></span>
				<p>또는</p>
				<span></span>
			</div>
			<div id="signa">
				<a href="${pageContext.request.contextPath}/signup">계정 생성하기</a>
			</div>

		</div>

	</main>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>