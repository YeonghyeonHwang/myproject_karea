<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}/resources/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="${path}/css/headerfooter.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>
    <script src="${path}/js/script.js"></script>
<title>Insert title here</title>
<style>
        main{
            width: 100%;
            margin-top: 10vh;
            height: 70vh;
            background-color: white;
            text-align: center;
        }
        #wrapper{
           padding: 5vh;
            width: 25vw;
            margin: 0 auto;
            
            text-align: center;
        }
        #loginh1{
            margin-top: px;
            font-weight:normal;
            text-align: left;
        }
        form{
            margin-top: 5vh;
        }
        label{
            display: block;
            text-align: left;
            color: gray;
        }
        input{
            background-color:#f5f5f5 ;
            color: black;
            border-radius: 40px;
            border: none;
            width: 24vw;
            height: 5vh;
            margin-bottom: 3vh;
            padding-left: 1vw;
            font-size: 1.0rem;

        }
        button{
            background-color:#f5f5f5 ;
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
        #submitbutton{
            color: white;
            background-color: #4868da;
        }
        
        #searchidpw>a{
            color: black;
            line-height: top;
            
        }
        #searchidpw>a:hover{
            color: #4868da;
        }
        #searchidpwspan{
            width: 2px;
            display: inline-block;
            
            background-color: black;
            height: 15px;
           
        }
        #linehr{
            margin-top: 20px;
        }
        #linehr>span{
           display: inline-block;
           width: 10vw;
           height: 1px;
           background-color: gray;
           border: none;
           transform: translateY(-300%);
        }
        #linehr>p{
            display: inline;
            color: black;
            
           padding-left: 10px;
           padding-right: 10px;
        }
        #signa{
            background-color:#f5f5f5 ;
            color: gray;
            border-radius: 40px;
            border: none;
            width: 25vw;
            height: 5vh;
            margin-bottom: 3vh;
            border: 1px solid black;
            margin-top: 20px;
        }
        #signa>a{
            color:gray;
            line-height: 5vh;
            display: block;
        }
        #signa>a:hover{
            color: black;
        }
    </style>
</head>
<body>
 <!-- header 시작 -->
     <header>

        <a id="logoA" href="${pageContext.request.contextPath}/main"><img id="logo" src="${path}/images/whitelogo.png" alt=""></a>
    
    
        <ul>
          <li><h2 id="customerservice" >고객센터</h2></li>
         <li><a href="${pageContext.request.contextPath}/member/mypage">마이페이지</a></li>
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
          <!-- header 끝 -->

     <main>
         <div id="wrapper">
         <h1 id="loginh1">로그인</h1>
       <form action="login" method="post">
           <label for="id">아이디</label>
           <input id="id" name="id" type="text">
           <label for="password">비밀번호</label>
           <input id="password" name="password" type="password">
           <button id="submitbutton" type="submit">로그인</button>
           <button type="reset">취소</button>
       </form>
       <div id="searchidpw">
       <a href="">이메일 주소를 잊으셨나요?</a>
       <span id="searchidpwspan"></span>
       <a href="">비밀번호를 잊으셨나요? </a>
    </div>
       <div id="linehr">
           <span></span><p>또는</p><span></span>
       </div>
       <div id="signa"><a href="${pageContext.request.contextPath}/signup">계정 생성하기</a></div>

    </div>

     </main>


           <!-- footer 시작 -->
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
          <!-- footer 끝 -->
</body>
</html>