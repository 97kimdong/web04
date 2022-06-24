<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<html>
<head>
<meta charset="UTF-8"> <!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<title>정발산튼튼척의원</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    
</head>
<body>
<header id="hd">
<%@ include file="./include/hd.jsp" %>
</header>
<div id="ct">
        <div class="ct_wrap">
            <div class="main_fade">
                <div class="fadebox">
                    <div class="fade_btn_box">
                        <span class="prev_btn"></span>
                        <span class="next_btn"></span>
                    </div>
                    <div class="fade_btn_box2">
                        <span class="slider_btn"></span>
                        <span class="slider_btn"></span>
                        <span class="slider_btn"></span>

                    </div>

                    <img src="${path }/resources/img/main1.jpg" alt="이미지1" class="main_img">
                    <img src="${path }/resources/img/main2.jpg" alt="이미지2" class="main_img">
                    <img src="${path }/resources/img/main33.png" alt="이미지3" class="main_img">
                </div>

            </div>
        </div>

        <div class="main_banner">
            <div class="banner_item"><img src="${path }/resources/img/main3.png" alt=""></div>
            <div class="banner_item"><img src="${path }/resources/img/main4.png" alt=""></div>
        </div>
        <div class="sub_btn_box_wrap">
            <div class="sub_btn_box">
                <span class="sub_prev_btn">
                    <</span> <span class="sub_next_btn">>
                </span>


            </div>
        </div>
    </div>


    <div class="main_about">

        <div class="main_about_imgbox">
            <img src="${path }/resources/img/main6.png" alt="">
        </div>

    </div>

    <div class="main_customer">
        <div class="layout">
            <div class="info">
                <h2>Contact Us</h2>
                <p class="txt">경기도 고양시 일산동구 정발산로 38 이스턴시티 4층 정발산튼튼척의원</p>
                <dl class="dl_style1">
                    <dt><i class="icon"><img src="${path }/resources/img/info_icon01.png" alt=""></i>전화</dt>
                    <dd>031.902.4758</dd><br>
                    <dt><i class="icon"><img src="${path }/resources/img/info_icon02.png" alt=""></i>이메일</dt>
                    <dd>kdh@naver.com</dd><br>
                    <dt><i class="icon"><img src="${path }/resources/img/info_icon03.png" alt=""></i>카카오톡</dt>
                    <dd>정발산튼튼척의원</dd><br>
                    <dt><i class="icon"><img src="${path }/resources/img/info_icon04.png" alt=""></i>진료시간</dt>
                    <dd>
                        <p><span>평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</span>AM 10:00 ~ PM 07:00 <em
                                class="p_color1">(수요일 휴진)</em></p>
                        <p><span>토&nbsp;&nbsp;요&nbsp;&nbsp;일</span><em class="p_color2">AM 10:00 ~ PM 03:00(점심시간 없이
                                진료)</em></p>
                        <p><span>점심 평일</span>PM 01:00 ~ PM 02:00</p>
                    </dd>
                </dl>
            </div>
            <div class="location" style="height: 450px;">
                <div id="location_wrap">
                    <div class="map">
                        <!-- * 카카오맵 - 지도퍼가기 -->
                        <!-- 1. 지도 노드 -->
                        <div id="daumRoughmapContainer1582866366527"
                            class="root_daum_roughmap root_daum_roughmap_landing"></div>

                        <!--
                              2. 설치 스크립트
                              * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                           -->
                        <script charset="UTF-8" class="daum_roughmap_loader_script"
                            src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                        <!-- 3. 실행 스크립트 -->
                        <script charset="UTF-8">
                            new daum.roughmap.Lander({
                                "timestamp": "1582866366527",
                                "key": "x9si",
                                "mapWidth": "700",
                                "mapHeight": "400"
                            }).render();
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>

    </div>

    <footer id="footer">

    </footer>

    <script>
        $(document).ready(function () {
            $("#header").load("./hd.html");
            $("#footer").load("./ft.html");
            var subpos = 0;


            $(".sub_prev_btn").click(function () {
                if (subpos < 3) sub_right();
            });

            $(".sub_next_btn").click(function () {
                if (subpos > 0) sub_left();
            });

            function sub_right() {
                $(".sub_item").animate({
                    left: "-=288"
                }, 500);
                subpos++
            }

            function sub_left() {
                $(".sub_item").animate({
                    left: "+=288"
                }, 500);
                subpos--
            }

            function slider_ck() {
                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;
                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                if (fs === 1) {
                    $(".slider_btn").eq(0).css("background-color", "black");
                    $(".slider_btn").eq(1).css("background-color", "#777");
                    $(".slider_btn").eq(2).css("background-color", "#777");
                } else if (fs === 2) {
                    $(".slider_btn").eq(1).css("background-color", "black");
                    $(".slider_btn").eq(0).css("background-color", "#777");
                    $(".slider_btn").eq(2).css("background-color", "#777");
                } else if (fs === 3) {
                    $(".slider_btn").eq(2).css("background-color", "black");
                    $(".slider_btn").eq(1).css("background-color", "#777");
                    $(".slider_btn").eq(0).css("background-color", "#777");
                }

            }


            $(".main_img").eq(1).fadeOut();
            $(".main_img").eq(2).fadeOut();
            slider_ck();

            var interval = setInterval(function () {
                next();
            }, 7000);



            $(".prev_btn").click(function () {
                clearInterval(interval);
                prev();
            });

            $(".next_btn").click(function () {
                clearInterval(interval);
                next();
            });


            $(".slider_btn").eq(0).click(function () {
                clearInterval(interval);
                $(".main_img").eq(1).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).fadeOut(1000).delay(1000);
                $(".main_img").eq(0).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(0).css("background-color", "black");
                $(".slider_btn").eq(1).css("background-color", "#777");
                $(".slider_btn").eq(2).css("background-color", "#777");
            });

            $(".slider_btn").eq(1).click(function () {
                clearInterval(interval);
                $(".main_img").eq(0).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).fadeOut(1000).delay(1000);
                $(".main_img").eq(1).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(1).css("background-color", "black");
                $(".slider_btn").eq(0).css("background-color", "#777");
                $(".slider_btn").eq(2).css("background-color", "#777");
            });

            $(".slider_btn").eq(2).click(function () {
                clearInterval(interval);
                $(".main_img").eq(0).fadeOut(1000).delay(1000);
                $(".main_img").eq(1).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(2).css("background-color", "black");
                $(".slider_btn").eq(0).css("background-color", "#777");
                $(".slider_btn").eq(1).css("background-color", "#777");
            });




            function prev() {

                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;

                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                switch (fs) {
                    case 1:
                        $(".main_img").eq(0).fadeOut(1000).delay(1000);
                        $(".main_img").eq(2).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(2).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        break;
                    case 2:
                        $(".main_img").eq(1).fadeOut(1000).delay(1000);
                        $(".main_img").eq(0).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(0).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;
                    case 3:
                        $(".main_img").eq(2).fadeOut(1000).delay(1000);
                        $(".main_img").eq(1).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(1).css("background-color", "black");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;

                }

            }

            function next() {

                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;

                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                switch (fs) {
                    case 1:
                        $(".main_img").eq(0).fadeOut(1000).delay(1000);
                        $(".main_img").eq(1).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(1).css("background-color", "black");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;
                    case 2:
                        $(".main_img").eq(1).fadeOut(1000).delay(1000);
                        $(".main_img").eq(2).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(2).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        break;
                    case 3:
                        $(".main_img").eq(2).fadeOut(1000).delay(1000);
                        $(".main_img").eq(0).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(0).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;

                }
            }



        });
    </script>
<footer id="ft">
<%@ include file="./include/ft.jsp" %>
</footer>

</body>
</html>
