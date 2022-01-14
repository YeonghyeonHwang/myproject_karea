<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}/resources/" />
<c:set var="brand" value="${requestScope.brand}" />
<c:set var="kind" value="${requestScope.kind}" />
<c:set var="brandvar" value="${fn:replace(brand,\"'\",'')}" />
<c:set var="kindvar" value="${fn:replace(kind,\"'\",'')}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div>
			<h1>${brandvar}</h1>
			<h1>${kindvar}</h1>
			<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>

		<ul>
			<li><h3>PE 시스템</h3></li>
			<li><h3>외장 디자인</h3></li>
			<li>내장 디자인</li>
			<li>옵션 & 패키지</li>
			<li>미리보기</li>
			<li>견적완료</li>
		</ul>
	</header>
	<div>
		<ul id="partImage">
			<li><h1>${brandvar}</h1></li>
			<li><h1>${kindvar}</h1></li>
			<li>
				<ul>

					<%--  <li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-e5e.png" alt="" /></li>
    <li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-na3.png" alt="" /></li>
    <li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-ph3.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-ps5.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-rgy.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-smt.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-ura.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-uyh.png" alt="" /></li>
	<li><img style="width: 400px; height: 200px;"   src="${path}images/W-genesis-${kindvar}-360view-ex-z5e.png" alt="" /></li> --%>
				</ul>
			</li>

			<li>${item.color}</li>
			<li>${item.wheel}</li>
			<li>${item.innerin}</li>
			<li>${item.interior}</li>
			<li>${item.popula}</li>
			<li>${item.option}</li>
		</ul>
	</div>
	<div>
		<ul>
			<li>
				<ul>
					<li><h3>PE 시스템</h3>
						<p>1/2</p></li>
					<li><h2>1. PE 타입</h2></li>
					<li><h3>전기 모터</h3>
						<p>+0원</p>
						<img src="" alt="" /></li>
				</ul>
			</li>
			<li>
				<ul>
					<li><h3>PE 시스템</h3>
						<p>2/2</p></li>
					<li><h2>2.구동 타입</h2></li>
					<li><h3>e-AWD</h3>
						<p>+0원</p>
						<img src="" alt="" /></li>
				</ul>
			</li>
			<li>
				<ul>
					<li><h3>외장 디자인</h3>
						<p>1/2</p></li>
					<li><h2>3.외장 컬러</h2></li>
					<li></li>

					<li><h3>글로시(유광)</h3></li>
					<li><h3>매트(무광)</h3></li>


				</ul>
			</li>
			<li>
				<ul>
					<li><h3>외장 디자인</h3>
						<p>2/2</p></li>
					<li><h2>4.휠&타이어</h2></li>
					<li>
					<li><h3>글로시(유광)</h3></li>
					<li><h3>매트(무광)</h3></li>
			</li>
		</ul>
		</li>
		<li>
			<ul>
				<li><h3>내장 디자인</h3>
					<p>1/2</p></li>
				<li><h2>5.내장 컬러 및 재질</h2></li>
				<li></li>
			</ul>
		</li>
		<li>
			<ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</li>
		<li>
			<ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</li>
		<li>
			<ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</li>
		</ul>
	</div>
	<script>
		/* 데이터베이스 만들기 */
		if (!window.indexedDB) {
			window.alert("browser doesn't support indexedDB");
		} else {
			let db;
			let request = window.indexedDB.open('myDataBase');

			request.onupgradeneeded = function(event) {
				var db = event.target.result;

			}

			request.onerror = function(event) {
				alert('failed');
			}
			request.onsuccess = function(event) {
				db = request.result;

			}
		}

		/* ObjectStore 만들기 */
	</script>
</body>
</html>