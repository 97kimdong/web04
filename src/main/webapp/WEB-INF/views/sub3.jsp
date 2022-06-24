<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="http://test.com">
    <meta name="title" content="제목">
    <meta name="description" content="설명">
    <meta name="keywords" content="키워드">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="http://test.com">
    <meta property="og:title" content="제목">
    <meta property="og:description" content="설명">
    <meta property="og:image" content="로고주소">

    <title>관절진료</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
        <style>
        img {
            display: block;
        }

        .page {
            clear: both;
            min-height: 100vh;
            display: none;
            width: 100%;
        }

        ul {
            list-style: none;
        }

        .page:target {
            display: block;
        }

        .grid_warp {
            width: 1440px;
            margin: 0 auto;
        }

        .grid_box {
            display: grid;
            grid-template-columns: 50% 50%;
        }

        .img_box {
            margin-left: 40px;
        }

        .grid_box .txt_box {
            display: inline-block;
            width: 100%;
            vertical-align: top;
            font-size: 20px;
            font-weight: 300;
            line-height: 1.5em;
        }

        .page_tit {
            margin-left: 235px;
            font-size: 20px;
            font-weight: 300;
            text-decoration: underline;
            margin-bottom: 50px;
        }

        .color_blue {
            color: blue;
        }

        .list {
            width: 1600px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;


        }

        .list>div {
            display: inline-block;
            width: 46%;
            margin: 0 2% 0.5rem;
            vertical-align: top;
        }

        .list>div figure img {
            display: block;
            width: 100%;
        }

        .list>div .txt_box {
            margin-top: 0.35rem;
            text-align: center;
        }

        .list>div .txt_box .tit {
            color: #000;
            font-size: 30px;
            font-weight: 400;
        }

        .list>div .txt_box .txt {
            margin-top: 0.2rem;
            color: #363636;
        }

        #page2 .ct_warp>h3 {
            text-align: center;
            font-size: 60px;
            font-weight: 250;
        }

        .list1 {
            width: 1600px;
            margin: 0 auto;

        }

        .hgroup {
            text-align: center;
            font-size: 30px;
            font-weight: 300;
        }

        em {
            margin-left: 760px;
            display: flex;
            width: 35px;
            text-align: center;
            background-color: blue;
            color: #fff;
        }
        .fig{
            width: 100%;
            margin: 0 auto;
            margin-top: 50px;
            display: flex;
            margin-bottom: 50px;
            justify-content: center;
        }
        .list_tit{
            text-align: center;
            margin-top: 50px;
            text-decoration: underline;
            margin-bottom: 30px;
        }
        .list_p{
            text-align: center;
            font-weight: 100;
            margin-bottom: 100px;
        }
        .list_tit1{
            text-align: center;
            margin-top: 150px;
            margin-bottom: 30px;
        }
        .list_tit2{
            text-align: center;
            margin-top: 200px;
            margin-bottom: 30px;
        }
    </style>
</head>

<body>
<!-- 섹션1 시작 -->
<section class="page" id="page1">
    <header id="header">
	<%@ include file="./include/hd.jsp" %>
	</header>
    <div id="ct">
        <div class="ct_warp">
                <div class="ct_warp">
                    <div class="list1">
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub3_1.PNG" alt="">
                            </figure>
                        </div>
                        <h1 class="list_tit">퇴행성관절염</h1>
                        <div class="list_p">
                            <p>퇴행성관절염은 골관절염이라고도 부릅니다.</p>
                            <p> 골관절염은 외부충격으로부터 보호하고 있는 연골이 손상되거나 퇴행성변화로 관절을 이루는 뼈와 인대에 손상을 가져오며 골관절에 염증이 생기고 통증을 유발합니다.</p>
                            <p>퇴행성관절염은 척추관절, 골반과 대퇴골을 잇는 고관절, 무릎관절 슬관절, 손관절, 족관절 등 여러 부위에 다양한 형태로 나타날 수 있습니다.</p>
                            <p>퇴행성관절염은 노화로 인한 퇴행성 관절염_1차성, 외상이나 감염 후유증_2차성, 관절을 둘러싸고 있는 활막에 생긴 염증질환_류마티스 관절염으로 분류할 수 있습니<span style="font-size: 16px;">다.</span></p>
                        </div>
                        <h2 class="list_tit1">오십견 원인</h2>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub3_2.PNG" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub3_3.png" alt="">
                            </figure>
                        </div>
                        <h2 class="list_tit2">퇴행성관절염 증상</h2>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub3_4.jpg" alt="">
                            </figure>
                        </div>
                        <h2 class="list_tit2">퇴행성관절염 예방</h2>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub3_5.PNG" alt="">
                            </figure>
                        </div>
                        <h2 class="list_tit2">CLINIC PROGRAM</h2>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub2_5.png" alt="">
                                <img src="${path }/resources/img/sub2_6.png" alt="">
                                <img src="${path }/resources/img/sub2_7.png" alt="">
                            </figure>
                        </div>
                    </div>
                </div>
    <footer id="footer">
	<%@ include file="./include/ft.jsp" %>
	</footer>
</section>
<!-- 섹션1 끝 -->
</body>

</html>