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
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ppdhqmdgzh"></script>
<style>
#maptitle {
	margin-top: 10vh;
	margin-left: 2vw;
}

h1 {
	color: white;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<main>

		<div id="maptitle">
			<h1>전시장 찾기</h1>
			<h2>전국 Karea 매장에서 전시장을 체험해 보세요.</h2>
		</div>

		<div id="map" style="width: 100%; height: 63vh;"></div>


	</main>



	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		var mapOptions = {
			center : new naver.maps.LatLng(37.3595704, 127.105399),
			scaleControl : false,
			mapDataControl : false,
			zoom : 15
		};

		var map = new naver.maps.Map('map', mapOptions);
	</script>
</body>
</html>