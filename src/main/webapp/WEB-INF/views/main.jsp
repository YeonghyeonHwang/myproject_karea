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
  <link rel="stylesheet" href="${path}/css/maincss1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mb.YTPlayer/3.3.9/jquery.mb.YTPlayer.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/script1.js"></script>
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
  
 
  <div id="wrapper" class="wrapper">

    <section id="main1" class="section main1back">

      <div id="main1Slide">
        <ul id="main1SlideUl1" class="main1SlideUl">
          <c:forEach var="item" items="${ListKia}">
            <li value="${item.carval}" class="main1SlideLi">
              <div style="background-image:url(${path}/images/${item.slideimg})" id="kiaModel${item.carval}">
              <h4 class="slideLogo">${item.brand}</h4>
              <h2>${item.cname}</h2>
              <p>${item.comment}</p>
              <a href="detailview?cname=${item.cname}&brand=${item.brand}">더알아보기</a>
              <a href="estimateview?cname=${item.cname}&brand=${item.brand}">견적내기</a>
              
              </div>
            </li>
          </c:forEach>
       
        </ul>
        <ul id="main1SlideUl2" class="main1SlideUl">
      <c:forEach var="item" items="${ListGenesis}">
            <li value="${item.carval}" class="main1SlideLi">
              <div style="background-image:url(${path}/images/${item.slideimg})"  id="genModel${item.carval}">
              <h4 class="slideLogo">${item.brand}</h4>
              <h2>${item.cname}</h2>
              <p>${item.comment}</p>
              <a href="detailview?cname=${item.cname}&brand=${item.brand}">더알아보기</a>
              <a href="estimateview?cname=${item.cname}&brand=${item.brand}">견적내기</a>
              
              </div>
            </li>
          </c:forEach>

        </ul>
        <ul id="main1SlideUl3" class="main1SlideUl">
          <c:forEach var="item" items="${ListHyundai}">
            <li value="${item.carval}" class="main1SlideLi">
              <div style="background-image:url(${path}/images/${item.slideimg})" id="hynModel${item.carval}">
              <h4 class="slideLogo">${item.brand}</h4>
              <h2>${item.cname}</h2>
              <p>${item.comment}</p>
              <a href="detailview?cname=${item.cname}&brand=${item.brand}">더알아보기</a>
              <a href="estimateview?cname=${item.cname}&brand=${item.brand}">견적내기</a>
              
              </div>
            </li>
          </c:forEach>
        
        </ul>
        <i class="fas fa-chevron-left main1SlideLeft" ></i>
        <i class="fas fa-chevron-right main1SlideRight"></i>
        <ul id="main1radio">
        <% 
		 for(int i=1; i<7; i++){
	 %>	
           <li id="main1radio<%=i%>" class="main1radioli" value="<%=i%>"><span id="span<%=i%>" class="spanclass"></span></li>
           <%
	 	}
	 %>
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
      <h3 id="videoC">WATCH THE FULL VIDEO</h3>
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
      <c:forEach var="item" items="${ListKia}">
       <li class="${item.brandclass} ${item.kind} all">
          <h3>${item.cname}</h3><img src="${path}/images/${item.selectimg}" alt="">
          <a href="detailview?cname=${item.cname}&brand=${item.brand}">자세히 보기</a>
        </li>
      </c:forEach>
      <c:forEach var="item" items="${ListGenesis}">
      <li class="${item.brandclass} ${item.kind} all">
          <h3>${item.cname}</h3><img src="${path}/images/${item.selectimg}" alt="">
          <a href="detailview?cname=${item.cname}&brand=${item.brand}">자세히 보기</a>
        </li>
      </c:forEach>
      <c:forEach var="item" items="${ListHyundai}">
      <li class="${item.brandclass} ${item.kind} all">
          <h3>${item.cname}</h3><img src="${path}/images/${item.selectimg}" alt="">
          <a href="detailview?cname=${item.cname}&brand=${item.brand}">자세히 보기</a>
        </li>
      </c:forEach>
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
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta1.jpg') center no-repeat; background-size: contain;" id="instadiv1" class="instadiv"><div class="innerdiv" id="innerdiv1"><p><i class="fab fa-instagram"></i> Athletic elegance, on and off the course. @thegenesisinv @genesis_usa #Genesis #제네시스 #GenesisInvitational #제네시스인비테이셔널 #PGATour #RivieraCountryClub</p></div></div></div>
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta2.jpg') center no-repeat; background-size: contain;" id="instadiv2" class="instadiv"><div class="innerdiv" id="innerdiv2"><p><i class="fab fa-instagram"></i> We have a winner! Congratulations to 2022 Genesis Invitational champion @joaco_niemann on an exceptional tournament.</p></div></div></div>
        <div class="backgroundzoom"><div style=" background: url('${path}/images/insta3.jpg') center no-repeat; background-size: contain;" id="instadiv3" class="instadiv"><div class="innerdiv" id="innerdiv3"><p><i class="fab fa-instagram"></i> It’s tee time at the 2022 Genesis Invitational, with top golfers hitting the links at the Riviera Country Club in Los Angeles.</p></div></div></div>

     </div>
     

<jsp:include page="footer.jsp"></jsp:include>
    </section>
  </div>
</body>
</html>