<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}/resources/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link rel="stylesheet" href="${path}/css/estimate.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
	
	<section id="section1">
	
	<ul id="exColorListUl">
    <c:forEach var="item" items="${exColorTypeList}">
    <li data-colorNum="${item.excolornum}" class="colorActive colorType ">
    <img src="${path}/images/estimateImg/${item.localimg}" alt="" />
    </li>
    </c:forEach>
	</ul>
	<p id="imgComment">상기 이미지는 기본 차량의 대표 이미지로 적용되어 있습니다.</p>
	</section>
	
	<section id="section2">
	<div id="section2Wrap">
	<ul>
	<li>
	<h2 class="brandName">${brand}</h2>
	<h2 class="brandName">${cname}</h2>
	</li>
	
	
	<li>
	<!-- 엔진타입 -->
	<ul id="engineUl">
	<h3 class="typeTitle">1.엔진 타입</h3>
	<c:forEach var="item" items="${engineTypeList}">
	<li class="typeLi">
	<label>
	<div class="flexDiv">
	<div class="typeInfoDiv">
	<h4 class="noChecked">${item.entype}</h4>
    <p class="noChecked">+${item.additional}원</p>
     <input type="radio" name="entypeCheck" value="${item.enginenum}" data-addPrice="${item.additional}"/>
    </div>
   
     <img class="checkImg noChecked" src="${path}/images/estimateImg/${item.localimg}" alt="" />
    </div>
    </label>
	
	 </li>
	</c:forEach>
	</ul>
	</li>
	<li>
	
	<!-- 드라이빙 타입 -->
	<ul id="drivingUl">
	<h3 class="typeTitle">2.구동 타입</h3>
	<c:forEach var="item" items="${drivingTypeList}">
	<li class="typeLi">
	<label>
	<div class="flexDiv">
    <div class="typeInfoDiv">
	<h4 class="noChecked">${item.drtype}</h4>
    <p class="noChecked">+${item.additional}원</p> 
    <input type="radio" name="drtypeCheck" value="${item.drivingnum}" data-addPrice="${item.additional}"/>
    </div>
    <img class="checkImg noChecked" src="${path}/images/estimateImg/${item.localimg}" alt="" />
    </div>
	 </label>
	 </li>
	</c:forEach>
	</ul>
	</li>
	<li>
	
	<!-- 외부 컬러 타입 -->
	<h3 class="typeTitle">3.외부 컬러 타입</h3>
	<h4 class="colorTitle glossyTitle">글로시 (유광)</h3>
	<ul class="exColorUl">
	<c:forEach var="item" items="${exColorTypeList}" varStatus="status">
	<c:if test="${item.additional eq 0}">
	<li class="exColorLi">
	<label class="glossyLabel">
	<div class="colorDiv" style="background-color:${item.colorrgb}"></div>
    <input type="radio" name="excolorCheck" value="${item.excolornum}" data-addPrice="${item.additional}" data-exColor="${item.excolor}"/>
    </label>
    </li>
	</c:if>
	</c:forEach>
	</ul>
	<div class="flexDiv">
	<p id="colorNameGlossy"></p>
	<p class="fontColor80" id="glossyAdditional"></p>
	</div>
	<div id="glossyCheck" class="typeLi"></div>
	
	
	<h4 class="colorTitle matteTitle">매트 (무광)</h3>
	<ul class="exColorUl">
	<c:forEach var="item" items="${exColorTypeList}">
	<c:if test="${item.additional ne 0}">
	<li class="exColorLi">
	
	<label class="matteLabel">
	<div class="colorDiv" style="background-color:${item.colorrgb}"></div>
    <input type="radio" name="excolorCheck" value="${item.excolornum}" data-addPrice="${item.additional}" data-exColor="${item.excolor}" />
    </label>
	</li>
	</c:if>
	</c:forEach>
	</ul>
	<div class="flexDiv">
	<p id="colorNameMatte"></p>
	<p class="fontColor80" id="matteAdditional"></p>
	</div>
	<div id="matteCheck" class="typeLi"></div>
	</li>
	</ul>
   
	
	</div>
	 <section id="section3">
	<div>
	<p class="fontColor80">예상가격</p>
    <p id="totalPrice"></p>
    <button id="viewQuotation">견적서 보러 가기</button>
    </div>
    </section>
	</section>
	
	
	</main>
		
	
	<script  type="text/javascript">
		/* 데이터베이스 만들기 */
		/* if (!window.indexedDB) {
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
		} */

		/* ObjectStore 만들기 */
		$(function () {
			sessionStorage.setItem('price',${originalPrice});
			sessionStorage.setItem('prePrice',0);
			sessionStorage.setItem('enAddPrice',0);
			sessionStorage.setItem('drAddPrice',0);
			sessionStorage.setItem('exCAddPrice',0);
			
			
			/* 엔진 타입 체크 */
			 $("input:radio[name=entypeCheck]").click(function(){
			     $("input:radio[name=entypeCheck]").siblings().addClass("noChecked");
				 $("input:radio[name=entypeCheck]:checked").siblings().removeClass("noChecked");
				 $("input:radio[name=entypeCheck]").parent().next().addClass("noChecked");
				 $("input:radio[name=entypeCheck]:checked").parent().next().removeClass("noChecked");
				 $("input:radio[name=entypeCheck]").closest("li").removeClass("checked");
				 $("input:radio[name=entypeCheck]:checked").closest("li").addClass("checked");
				 let enAddPrice=Number($("input:radio[name=entypeCheck]:checked").attr('data-addPrice')); 
				 sessionStorage.setItem('enAddPrice',enAddPrice);
				 changePrice();
			 });
			
			/* 구동 타입 체크 */
			 $("input:radio[name=drtypeCheck]").click(function(){
				 $("input:radio[name=drtypeCheck]").siblings().addClass("noChecked");
				 $("input:radio[name=drtypeCheck]:checked").siblings().removeClass("noChecked"); 
				 $("input:radio[name=drtypeCheck]").parent().next().addClass("noChecked");
				 $("input:radio[name=drtypeCheck]:checked").parent().next().removeClass("noChecked");
				 $("input:radio[name=drtypeCheck]").closest("li").removeClass("checked");
				 $("input:radio[name=drtypeCheck]:checked").closest("li").addClass("checked");
				 let drAddPrice=Number($("input:radio[name=drtypeCheck]:checked").attr('data-addPrice')); 
				 sessionStorage.setItem('drAddPrice',drAddPrice);
				 changePrice();
			 }); 
            
			 /* 외부 컬러체크 */
			 $("input:radio[name=excolorCheck]").click(function(){
				  let exCAddPrice=Number($("input:radio[name=excolorCheck]:checked").attr('data-addPrice')); 
				  sessionStorage.setItem('exCAddPrice',exCAddPrice);
				  colValue=Number($("input:radio[name=excolorCheck]:checked").val()); 
				  $("#exColorListUl").children().removeClass("colorActive"); 
				  $('li[data-colorNum="'+colValue+'"]').addClass("colorActive"); 
				  $(".colorDiv").removeClass("colorChecked");
				  $("input:radio[name=excolorCheck]:checked").prev().addClass("colorChecked");
				  changePrice();
				  
			 }); 
			 $(".glossyLabel").children("input").click(function(){
				   $("#colorNameMatte").empty(); 
				   $("#matteAdditional").empty();
				   $("#glossyCheck").addClass("checked");
				   $("#matteCheck").removeClass("checked");
				   $(".glossyTitle").removeClass("noChecked");
				   $(".matteTitle").addClass("noChecked");
				 let exColorGlossy=$(".glossyLabel").children("input:checked").attr('data-exColor');
			   	  $("#colorNameGlossy").text(exColorGlossy);
			   	 let glossyAdditional=$(".glossyLabel").children("input:checked").attr('data-addPrice');
			   	 $("#glossyAdditional").text("+"+glossyAdditional+"원");
			 });
			 $(".matteLabel").children("input").click(function(){
				  $("#colorNameGlossy").empty(); 
				  $("#glossyAdditional").empty(); 
				  $("#matteCheck").addClass("checked");
				  $("#glossyCheck").removeClass("checked");
				  $(".glossyTitle").addClass("noChecked");
				  $(".matteTitle").removeClass("noChecked");
				 let exColorMatte=$(".matteLabel").children("input:checked").attr('data-exColor');
				  $("#colorNameMatte").text(exColorMatte); 
				  let matteAdditional=$(".matteLabel").children("input:checked").attr('data-addPrice');
				   	 $("#matteAdditional").text("+"+matteAdditional+"원");
			 });
			 
			 $("#viewQuotation").click(function(){
				 let obj={
						 "cname":'${cname}',
						 "enginenum":$("input:radio[name=entypeCheck]:checked").val(),
						 "drivingnum":$("input:radio[name=drtypeCheck]:checked").val(),
						 "excolornum":$("input:radio[name=excolorCheck]:checked").val()
						 
				 }
				 $.ajax({
					 url:'${path}../quotationview',
						type:"POST",
						data: JSON.stringify(obj),
						contentType:"application/json; charset=utf-8;",
						
						success: function(result){
	 						if (result=="success") {
		                       
		                      }else{
		                    	  alert("ERROR");
		                      }
						},
						error: function(){
							alert("stringify error");
						}
				 })
			 });
			 
			
			 
			 /* 추가금액 변경 함수 */
			 function changePrice(){
				
				let price=sessionStorage.getItem("price");
				let enAddPrice=sessionStorage.getItem("enAddPrice");
				let drAddPrice=sessionStorage.getItem("drAddPrice");
				let exCAddPrice=sessionStorage.getItem("exCAddPrice");
				let totalPrice=Number(price)+Number(enAddPrice)+Number(drAddPrice)+Number(exCAddPrice);
				let prePrice=sessionStorage.getItem("prePrice");
				 $("#totalPrice").empty();
			    
			     $({ val : prePrice }).animate({ val : totalPrice }, {
					 duration: 1000,
					 step: function() {
						 var localeTotalPrice = numberWithCommas(Math.floor(this.val));
						 $("#totalPrice").text(localeTotalPrice+"원");
						 },
						 complete: function() {
							 var localeTotalPrice = numberWithCommas(Math.floor(this.val));
							 $("#totalPrice").text(localeTotalPrice+"원");
						 }
	             });  
			    sessionStorage.setItem('prePrice',totalPrice);
				 
			 }
			 
			 /* 금액 변경 시 애니메이션 */
			 function numberWithCommas(x) {
				 return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			 }
			
			    $("input:radio[name='drtypeCheck']").eq(0).trigger("click");
				$("input:radio[name='entypeCheck']").eq(0).trigger("click");
				$("input:radio[name='excolorCheck']").eq(0).trigger("click");
				
		});
	</script>
</body>
</html>