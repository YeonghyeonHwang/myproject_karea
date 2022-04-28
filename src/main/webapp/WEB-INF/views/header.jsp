<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var= "path" value="${pageContext.request.contextPath}/resources/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css/headerfooter1.css">

<title>Insert title here</title>
</head>
<body>
 <header>

    <a id="logoA" href="main"><img id="logo" src="${path}/images/Karea.png" alt=""></a>


    <ul id="headerUl">
      <li><h2 id="customerservice" >고객센터</h2></li>
      <li><a href="mypage">마이페이지</a></li>
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
  
  <script type="text/javascript">
  $(function(){
	  
  
  $("#customerservice").click(function(){
	     $("#menuslide").slideToggle();
	     $("#boxshadow").toggle();
	     $("#customerservice").toggleClass('customercolor');
	    });
  
  });
  </script>
</body>
</html>