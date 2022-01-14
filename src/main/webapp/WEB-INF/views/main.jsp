<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var= "path" value="${pageContext.request.contextPath}/resources/"/>
<c:set var= "path1" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/css/jquery.mb.YTPlayer.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link rel="stylesheet" href="${path}/css/maincss.css">
  <link rel="stylesheet" href="${path}/css/headerfooter.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
<title>Insert title here</title>
</head>
<body>
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
 
  <div id="wrapper" class="wrapper">

    <section id="main1" class="section main1back">

      <div id="main1Slide">
        <ul id="main1SlideUl1" class="main1SlideUl">
          <li value="1" class="main1SlideLi">
            <div style="background-image:url('${path}/images/k3-slide.jpeg'); background-position:50% 55%;"><h4 class="slideLogo">KIA</h4><h2>K3</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='k3'&brand='KIA'">견적내기</a></div>
          </li>
          <li value="2" class="main1SlideLi">
            <div style="background-image:url(${path}/images/k5-slide.jpeg)"><h4 class="slideLogo">KIA</h4><h2>K5</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='k5'&brand=KIA'">견적내기</a></div>
          </li>
          <li value="3" class="main1SlideLi">
            <div style="background-image:url(${path}/images/k8-slide.jpeg)"><h4 class="slideLogo">KIA</h4><h2>K8</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='k8'&brand='KIA'">견적내기</a></div>
          </li>
          <li value="4" class="main1SlideLi">
            <div style="background-image:url(${path}/images/mohave-slide.jpeg);background-position:10% 70%;"><h4 class="slideLogo">KIA</h4><h2>MOHAVE</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='mohave'&brand='KIA'">견적내기</a></div>
          </li>
          <li value="5" class="main1SlideLi">
            <div style="background-image:url(${path}/images/niro-slide.jpeg)"><h4 class="slideLogo">KIA/h4><h2>NIRO</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='niro'&brand='KIA'">견적내기</a></div>
          </li>
          <li value="6" class="main1SlideLi">
            <div style="background-image:url(${path}/images/seltos-slide.jpeg); background-position: right bottom;"><h4 class="slideLogo">KIA</h4><h2>SELTOS</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='seltos'&brand='KIA'">견적내기</a></div>
          </li>
         
        </ul>
        <ul id="main1SlideUl2" class="main1SlideUl">
          <li value="1" class="main1SlideLi">
            <div style="background-image:url(${path}/images/G70-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>G70</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='G70'&brand='GENESIS'">견적내기</a></div>
          </li>
          <li value="2" class="main1SlideLi">
            <div style="background-image:url(${path}/images/G80-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>G80</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='G80'&brand='GENESIS'">견적내기</a></div>
          </li>
          <li value="3" class="main1SlideLi">
            <div style="background-image:url(${path}/images/G90-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>G90</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='G90'&brand='GENESIS'">견적내기</a></div>
          </li>
          <li value="4" class="main1SlideLi">
            <div style="background-image:url(${path}/images/GV60-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>GV60</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='GV60'&brand='GENESIS'">견적내기</a></div>
          </li>
          <li value="5" class="main1SlideLi">
            <div style="background-image:url(${path}/images/GV70-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>GV70</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='GV70'&brand='GENESIS'">견적내기</a></div>
          </li>
          <li value="6" class="main1SlideLi">
            <div style="background-image:url(${path}/images/GV80-slide.jpeg); background-position: right center;"><h4 class="slideLogo">GENESIS</h4><h2>GV80</h2><p>dasxc</p><a href="">더알아보기</a><a href="${path1}/estimateview?kind='GV80'&brand='GENESIS'">견적내기</a></div>
          </li>
      

        </ul>
        <ul id="main1SlideUl3" class="main1SlideUl">
          <li value="1" class="main1SlideLi">
            <div style="background-image:url(${path}/images/avante-slide.jpeg); background-position: 50% 70%;"><h4 class="slideLogo">GENESIS</h4><h2>G70</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
          <li value="2" class="main1SlideLi">
            <div style="background-image:url(${path}/images/sonata-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>G80</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
          <li value="3" class="main1SlideLi">
            <div style="background-image:url(${path}/images/grandeur-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>G90</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
          <li value="4" class="main1SlideLi">
            <div style="background-image:url(${path}/images/kona-slide.jpeg); background-position: 50% 70%;"><h4 class="slideLogo">GENESIS</h4><h2>GV60</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
          <li value="5" class="main1SlideLi">
            <div style="background-image:url(${path}/images/tucson-slide.jpeg)"><h4 class="slideLogo">GENESIS</h4><h2>GV70</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
          <li value="6" class="main1SlideLi">
            <div style="background-image:url(${path}/images/santafe-slide.jpeg); background-position: right center;"><h4 class="slideLogo">GENESIS</h4><h2>GV80</h2><p>dasxc</p><a href="">더알아보기</a><a href="">견적내기</a></div>
          </li>
        
        </ul>
        <i class="fas fa-chevron-left main1SlideLeft" ></i>
        <i class="fas fa-chevron-right main1SlideRight"></i>
        <ul id="main1radio">
          <li id="main1radio1" class="main1radioli" value="1"><span id="span1" class="spanclass"></span></li>
          <li id="main1radio2" class="main1radioli" value="2"><span id="span2" class="spanclass"></span></li>
          <li id="main1radio3" class="main1radioli" value="3"><span id="span3" class="spanclass"></span></li>
          <li id="main1radio4" class="main1radioli" value="4"><span id="span4" class="spanclass"></span></li>
          <li id="main1radio5" class="main1radioli" value="5"><span id="span5" class="spanclass"></span></li>
          <li id="main1radio6" class="main1radioli" value="6"><span id="span6" class="spanclass"></span></li>
          </ul>
      </div>
      <h3 class="main1H3">KIA, GENESIS, HYUNDAI</h3>
      <h3 class="main1H3">원하는 브랜드를 선택해 보세요.</h3>
      <div id="brandLogo">
        <div id="kia" class="brand"><img id="kiaImg" src="${path}/images/Logo_kia.png" alt=""></div>
        <div id="gen" class="brand"><img id="genImg" src="${path}/images/Logo_genesis.png" alt=""></div>
        <div id="hyn" class="brand"><img id="hynImg" src="${path}/images/Logo_hyundai.png" alt=""></div>
      </div>



    </section>

    <!-- 2페이지 -->

    <section id="main2" class="section" data-property="{
    videoURL:'fSaZWFte7_4',
    mute: true,
    showControls: false,
    useOnMobile: true,
    quality: 'highres',
    containment: 'self',
    loop: true,
    autoPlay: true,
    stopMovieOnBlur: false,
    optimizeDisplay: true,
    startAt: 0,
    opacity: 1}">
      <h3 id="videoC">비디오 코멘트</h3>
    </section>

    <!-- 3페이지 -->

    <section id="main3" class="section">
      <h3>OUR MODELS</h3>
      <p>역동적이면서도 우아한 디자인과 최첨단 기술을 탑재한 국내 브랜드의 라인업을 살펴보세요</p>
      <select name="sBrand" id="sBrand">
        <option value="all">ALL</option>
        <option value="kia">KIA</option>
        <option value="gen">GENESIS</option>
        <option value="hyn">HYUNDAI</option>
      </select>
      <select name="sModel" id="sModel">
        <option value="all">ALL</option>
        <option value="sedan">SEDAN</option>
        <option value="suv">SUV</option>
      </select>
      <i class="fas fa-chevron-left" id="sLeft"></i>
      <ul id="selectSlide">
        <li class="sKia sedan Kse all">
          <h3>K3</h3><img src="${path}/images/kia_k3.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sKia sedan Kse all">
          <h3>K5</h3><img src="${path}/images/kia_k5.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sKia sedan Kse all">
          <h3>K8</h3><img src="${path}/images/kia_k8.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sKia suv Ksuv all">
          <h3>MOHAVE</h3><img src="${path}/images/kia_mohave.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sKia suv Ksuv all">
          <h3>NIRO</h3><img src="${path}/images/kia_niro-ev.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sKia suv Ksuv all">
          <h3>SELTOS</h3><img src="${path}/images/kia_seltos.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen sedan Gse all">
          <h3>G70</h3><img src="${path}/images/g70.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen sedan Gse all">
          <h3>G80</h3><img src="${path}/images/g80.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen sedan Gse all">
          <h3>G90</h3><img src="${path}/images/g90.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen suv Gsuv all">
          <h3>GV60</h3><img src="${path}/images/gv60.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen suv Gsuv all">
          <h3>GV70</h3><img src="${path}/images/gv70.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sGen suv Gsuv all">
          <h3>G780</h3><img src="${path}/images/gv80.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn sedan Hse all">
          <h3>AVANTE</h3><img src="${path}/images/hyn_avante.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn sedan Hse all">
          <h3>SONATA</h3><img src="${path}/images/hyn_sonata.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn sedan Hse all">
          <h3>GRANDEUR</h3><img src="${path}/images/hyn_grandeur.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn suv Hsuv all">
          <h3>KONA</h3><img src="${path}/images/hyn_kona.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn suv Hsuv all">
          <h3>TUCSAN</h3><img src="${path}/images/hyn_tucson.png" alt="">
          <h4>자세히 보기</h4>
        </li>
        <li class="sHyn suv Hsuv all">
          <h3>SANTAFE</h3><img src="${path}/images/hyn_santafe.png" alt="">
          <h4>자세히 보기</h4>
        </li>
      </ul>
      <div id="radioDiv">
        <input class="p3radio" type="radio" name="Page3slide" id="p3radio1" value="0" checked>
        <input class="p3radio" type="radio" name="Page3slide" id="p3radio2" value="1">
        <input class="p3radio" type="radio" name="Page3slide" id="p3radio3" value="2">
        <input class="p3radio" type="radio" name="Page3slide" id="p3radio4" value="3">
        <input class="p3radio" type="radio" name="Page3slide" id="p3radio5" value="4">
      </div>
      <i class="fas fa-chevron-right" id="sRight"></i>
    </section>


    <section id="main4" class="section">
      <h3>INSTAGRAM</h3>
      <p>역동적이면서도 우아한 디자인과 최첨단 기술을 탑재한 국내 브랜드의 라인업을 살펴보세요</p>
      <div id="insta">
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta1.jpg') center no-repeat; background-size: contain;" id="instadiv1" class="instadiv"><div class="innerdiv" id="innerdiv1"><p>csadcdcscdscscdas</p></div></div></div>
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta2.jpg') center no-repeat; background-size: contain;" id="instadiv2" class="instadiv"><div class="innerdiv" id="innerdiv2"><p>dscdsccdcsadsa</p></div></div></div>
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta3.jpg') center no-repeat; background-size: contain;" id="instadiv3" class="instadiv"><div class="innerdiv" id="innerdiv3"><p>asddcscscass</p></div></div></div>

     </div>
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
    </section>
  </div>
</body>
</html>