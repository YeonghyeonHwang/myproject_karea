
$(function () {
    $('#main2').YTPlayer();
    $("#main1Slide").hide();
    $("#wrapper").scroll(function () {

        const stp = $("#wrapper").scrollTop();
        if (stp >= 720 && stp <= 900) {
            $('#main2').YTPPlay();
        } else {
            $('#main2').YTPStop();
        }
    });
    $("#customerservice").click(function(){
     $("#menuslide").slideToggle();
     $("#boxshadow").toggle();
     $("#customerservice").toggleClass('customercolor');
    });
    let kiaVal = 1;
    let genVal = 3;
    let hynVal = 5;
    $("#kia").click(function () {
        main1Toggle(kiaVal);
        moveRadio(1);
       
    });
    $("#gen").click(function () {

        main1Toggle(genVal);
        moveRadio(2);
    });
    $("#hyn").click(function () {
        main1Toggle(hynVal);
        moveRadio(3);
        
    });
    let mainLogo;
    function main1Toggle(val) {

       
        if (val == 1) {
            $("#main1Slide").show();
            visibleStateOn();
            mainLogo = "kia";
            clickLogo(mainLogo);
            
            ++kiaVal;
            genVal = 3;
            hynVal = 5;
            
        } else if (val == 2) {
            $("#main1Slide").hide();
            visibleStateOff();

            --kiaVal;
        } else if (val == 3) {
            $("#main1Slide").show();
            visibleStateOn();
            mainLogo = "gen";
            clickLogo(mainLogo);
            ++genVal;
            kiaVal = 1;
            hynVal = 5;
           
        } else if (val == 4) {
            $("#main1Slide").hide();
            visibleStateOff();
            --genVal;
        } else if (val == 5) {
            $("#main1Slide").show();
            visibleStateOn();
            mainLogo = "hyn";
            clickLogo(mainLogo);
            ++hynVal;
            kiaVal = 1;
            genVal = 3;
            
        } else if (val == 6) {
            $("#main1Slide").hide();
            visibleStateOff();

            --hynVal;
        }
        
        Slideinitialization(val);
    }

    function visibleStateOn() {
        $("#brandLogo").css({ "display": "block", "margin-top": "0" });
        $(".brand").css({ "position": "absolute", "width": "200px", "height": "10vh" });
        $("#kiaImg").css({ "width": "140px", "height": "60px", "transform": "translateY(25%)" });
        $("#genImg").css({ "width": "200px", "height": "80px", "transform": "none" });
        $("#hynImg").css({ "width": "170px", "height": "80px", "transform": "none" });
        $("#main1").removeClass('main1back');
        $(".main1H3").hide();
    }
    function visibleStateOff() {
        $("#brandLogo").css({ "display": "flex", "margin-top": "50px" });
        $(".brand").css({ "position": "relative", "top": "0", "left": "0", "width": "350px", "height": "350px" });
        $("#kiaImg").css({ "width": "300px", "height": "auto", "transform": "translateY(150%)" });
        $("#genImg").css({ "width": "330px", "height": "auto", "transform": "translateY(50%)" });
        $("#hynImg").css({ "width": "250px", "height": "auto", "transform": "translateY(80%)" });
        $("#main1").addClass('main1back');
        $(".main1H3").show();
    }
    function clickLogo(val) {

        if (val == "kia") {
            $("#kia").css({ "top": "10vh", "left": "0" });
            $("#gen").css({ "top": "90vh", "left": "0" });
            $("#hyn").css({ "top": "90vh", "left": "200px" });     
            $("#main1").removeClass('backblue backblack');
            $("#main1").addClass("backwhite");
            $("#main1SlideUl1").show();
            $("#main1SlideUl2").hide();
            $("#main1SlideUl3").hide();
            visibleSlide(1);
           
        } else if (val == "gen") {
            $("#gen").css({ "top": "10vh", "left": "0" });
            $("#hyn").css({ "top": "90vh", "left": "0" });
            $("#kia").css({ "top": "90vh", "left": "200px" });
            $("#main1").removeClass('backblue backwhite');
            $("#main1").addClass("backblack");
            $("#main1SlideUl1").hide();
            $("#main1SlideUl2").show();
            $("#main1SlideUl3").hide();
            visibleSlide(2);
           
        } else if (val == "hyn") {
            $("#hyn").css({ "top": "10vh", "left": "0" });
            $("#kia").css({ "top": "90vh", "left": "0" });
            $("#gen").css({ "top": "90vh", "left": "200px" });
            $("#main1").removeClass('backblack backwhite');
            $("#main1").addClass("backblue");
            $("#main1SlideUl1").hide();
            $("#main1SlideUl2").hide();
            $("#main1SlideUl3").show();
            visibleSlide(3); 
            
        }
    }
     $(".main1SlideLeft").click(function(){
         let mainlogo=mainLogo;
      if(mainlogo=="kia"){
        prevSlide(1);
        moveRadio(1);
      }else if(mainLogo=="gen"){
         prevSlide(2);
         moveRadio(2);
      }else if(mainLogo=="hyn"){
          prevSlide(3);
          moveRadio(3);   
        }
     });
     $(".main1SlideRight").click(function(){
        let mainlogo=mainLogo;
     if(mainlogo=="kia"){
       nextSlide(1);
       moveRadio(1);
     }else if(mainLogo=="gen"){
        nextSlide(2);
        moveRadio(2);
     }else if(mainLogo=="hyn"){
         nextSlide(3);
         moveRadio(3);
     }
    });
    $(".main1radioli").click(function(){
      let id=$(this).attr("id");
      let val=$(this).val();
      
        $(".spanclass").hide();
        $("#"+id+"").children().show();
        checkRadio(mainLogo, val);
    });

    function visibleSlide(num) {
        let slider=$("#main1SlideUl"+num+"");
        let firstSlide=slider.find("li").first().stop(true).animate({"opacity":1},200);
slider.find("li").css({"z-index":0});
        slider.find("li").first().css({"z-index":2});
 
    }

    function prevSlide(num){
        
        let slider=$("#main1SlideUl"+num+"");
        let lastSlide=slider.find("li").last().prependTo(slider);
        let secondSlide=slider.find("li").eq(1).stop(true).animate({"opacity":0},400);
        let firstSlide = slider.find('li').first().stop(true).animate({'opacity':1},400);
slider.find("li").css({"z-index":0});
        slider.find("li").first().css({"z-index":2});
    }
    function nextSlide(num){
        let slider=$("#main1SlideUl"+num+"");
        let firstSlide=slider.find("li").first().appendTo(slider);
        let lastSlide=slider.find("li").last().stop(true).animate({"opacity":0},400);
         firstSlide = slider.find('li').first().stop(true).animate({'opacity':1},400);
slider.find("li").css({"z-index":0});
        slider.find("li").first().css({"z-index":2});

        
    }
    //슬라이드 초기화
    function Slideinitialization(val){
        let slider1=$("#main1SlideUl1");
        let slider2=$("#main1SlideUl2");
        let slider3=$("#main1SlideUl3");
        let i1= slider1.find('li').first().val();
        let i2= slider2.find('li').first().val();
        let i3= slider3.find('li').first().val();
        moveRadio(1);
        moveRadio(2);
        moveRadio(3);
        if(val==2||val==4||val==6){
           for(let i=1; i<i1; i++){
               prevSlide(1);
           }
           for(let i=1; i<i2; i++){
            prevSlide(2);
        }
        for(let i=1; i<i3; i++){
            prevSlide(3);
        }
        }
        
    }

    //라디오버튼
    function moveRadio(val){
        let slider=$("#main1SlideUl"+val+"");
        let i1= slider.find('li').first().val();
        $(".spanclass").hide();
        $("#span"+i1+"").show();
       

    }
    function checkRadio(mainlogo, val){
        let slider;
        let num;
        if(mainlogo=="kia"){
            slider=$("#main1SlideUl1");
            num=1;
          }else if(mainlogo=="gen"){
            slider=$("#main1SlideUl2");
            num=2;
          }else if(mainlogo=="hyn"){
            slider=$("#main1SlideUl3");
            num=3;
            }
        let i1= slider.find('li').first().val();
        console.log(i1);
        console.log(val);
        let i2=val-i1;
        console.log(i2);
        if(i2>0){
           for(let i=0; i<i2; i++){
               nextSlide(num);
           }
        }else{
            for(i=0; i<-i2; i++){
                prevSlide(num);
            }
        }

slider.find("li").css({"z-index":0});
        slider.find("li").first().css({"z-index":2});
        
        

    }
   
  
    // 3페이지



    let position = 0;
    let lastpage = 0;
    $("#sBrand, #sModel").change(function () {

        const sBrand = $("#sBrand option:selected").val();
        const sModel = $("#sModel option:selected").val();
        $("#selectSlide").children().css({ "transform": "translateX(0)" });
        $("input:radio[name='Page3slide']:radio[value='0']").prop('checked', true);
        $("#sLeft").css({ "display": "none" });
        $("#sRight").show();
        position = 0;


        const radio = $("#radioDiv");
        const left = $("#sLeft");
        const right = $("#sRight");
        const defaultall = $('.all').show();

        defaultall;

        if (sBrand == "all" && sModel == "all") {
            $("#radioDiv").children().show();
        } else if (sBrand == "all" && sModel == "sedan") {
            $('.all').not("li.sedan").hide();
        } else if (sBrand == "all" && sModel == "suv") {
            $('.all').not("li.suv").hide();
        }
        else if (sBrand == "kia" && sModel == "all") {
            $(".all").not("li.sKia").hide();
        } else if (sBrand == "gen" && sModel == "all") {
            $(".all").not("li.sGen").hide();
        } else if (sBrand == "hyn" && sModel == "all") {
            $(".all").not("li.sHyn").hide();
        }
        else if (sBrand == "kia" && sModel == "sedan") {
            $(".all").not("li.sKia").hide();
            $(".all").not("li.sedan").hide();
        } else if (sBrand == "gen" && sModel == "sedan") {
            $(".all").not("li.sGen").hide();
            $(".all").not("li.sedan").hide();
        } else if (sBrand == "hyn" && sModel == "sedan") {
            $(".all").not("li.sHyn").hide();
            $(".all").not("li.sedan").hide();
        }
        else if (sBrand == "kia" && sModel == "suv") {
            $(".all").not("li.sKia").hide();
            $(".all").not("li.suv").hide();
        } else if (sBrand == "gen" && sModel == "suv") {
            $(".all").not("li.sGen").hide();
            $(".all").not("li.suv").hide();
        } else if (sBrand == "hyn" && sModel == "suv") {
            $(".all").not("li.sHyn").hide();
            $(".all").not("li.suv").hide();
        }
        paging($(".all:visible").length);
    });


    $("#sLeft").click(function () {
        let x;
        let checkval = $('input[name=Page3slide]:checked').val();
        let y = --checkval;


        if (position == 0) {

        }
        else if (position == 1) {
            x = 0;
            $("#sLeft").hide();

        } else if (position == 2) {
            x = -84.7;

        } else if (position == 3) {
            x = -169.4;
        } else if (position == 4) {
            x = -254.1;

        }
        $("#selectSlide").children().css({ "transform": "translateX(" + x + "vw)" });
        $("input:radio[name='Page3slide']:radio[value='" + y + "']").prop('checked', true);
        position--;
        visibleLength = $(".all:visible").length;
        lastpage = Math.ceil(visibleLength / 4);
        lastcheck(lastpage);
    });

    $("#sRight").click(function () {
        let x;
        let checkval = $('input[name=Page3slide]:checked').val();
        let visibleLength;
        let y = ++checkval;
        $("#sLeft").show();
        if (position == 0) {
            x = -84.7
        }
        else if (position == 1) {
            x = -169.4;
        } else if (position == 2) {
            x = -254.1;
        } else if (position == 3) {
            x = -338.8
        }
        $("#selectSlide").children().css({ "transform": "translateX(" + x + "vw)" });
        $("input:radio[name='Page3slide']:radio[value='" + y + "']").prop('checked', true);
        position++;
        visibleLength = $(".all:visible").length;
        lastpage = Math.ceil(visibleLength / 4);
        lastcheck(lastpage);

    });

    $("input:radio[name=Page3slide]").click(function () {
        const radioValue = $("input:radio[name=Page3slide]:checked").val();
        if (radioValue == 0) {
            $("#selectSlide").children().css({ "transform": "translateX(0)" });
            position = 0;
            $("#sLeft").css({ "display": "none" });
            $("#sRight").css({ "display": "block" });
        } else if (radioValue == 1) {
            $("#selectSlide").children().css({ "transform": "translateX(-84.7vw)" });
            position = 1;
            $("#sLeft").css({ "display": "block" });
            $("#sRight").css({ "display": "block" });

        } else if (radioValue == 2) {
            $("#selectSlide").children().css({ "transform": "translateX(-169.4vw)" });
            position = 2;
            $("#sLeft").css({ "display": "block" });
            $("#sRight").css({ "display": "block" });

        } else if (radioValue == 3) {
            $("#selectSlide").children().css({ "transform": "translateX(-254.1vw)" });
            position = 3;
            $("#sLeft").css({ "display": "block" });
            $("#sRight").css({ "display": "block" });

        } else if (radioValue == 4) {
            $("#selectSlide").children().css({ "transform": "translateX(-338.8vw)" });
            position = 4;
            $("#sLeft").css({ "display": "block" });
            $("#sRight").css({ "display": "none" });

        }
        visibleLength = $(".all:visible").length;
        lastpage = Math.ceil(visibleLength / 4);
        lastcheck(lastpage);
    });

    function paging(numli) {

        if (numli < 5) {
            totalPage(2);
            $("#sRight").hide();

        } else if (numli < 9) {
            totalPage(3);

        } else if (numli < 13) {
            totalPage(4);
        } else {
            totalPage(6);
        }
    }
    function totalPage(num) {
        $("#radioDiv").children().hide();
        for (let i = 1; i < num; i++) {
            $("#p3radio" + i + "").show();

        }
        if (num == 2) {
            $("#p3radio1").hide();
        }
    }

    function lastcheck(num) {
        if (num == position + 1) {
            $("#sRight").hide();
          
        } else {
            $("#sRight").show();
        }
    }

    // page4
    $("#instadiv1").mouseover(function(){
    
       $("#innerdiv1").show();
      
    });
    $("#instadiv2").mouseover(function(){
        $("#innerdiv2").show();
        
    });
    $("#instadiv3").mouseover(function(){
        $("#innerdiv3").show();
      
    });
    $("#instadiv1").mouseout(function(){
        $("#innerdiv1").hide();
     });
     $("#instadiv2").mouseout(function(){
        $("#innerdiv2").hide();
     });
     $("#instadiv3").mouseout(function(){
        $("#innerdiv3").hide();
     });


});