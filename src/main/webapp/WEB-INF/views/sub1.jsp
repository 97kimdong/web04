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

    <title>진료안내</title>
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
            width: 1600px;
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
        }
    </style>
</head>

<body>
<section class="page" id="page1">
    <header id="header">
	<%@ include file="./include/hd.jsp" %>
	</header>
    <div id="ct">
        <div class="ct_warp">
                <div class="ct_warp">
                    <div class="list1">
                        <div>
                            <h2 class="list_tit">병원소개</h2>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_1.png" alt="">
                            </figure>
                            <div class="text-table ">
                                <div>
                                    <p style="text-align: center;"><span style="font-size: 16px;">안녕하십니까?</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">정발산튼튼척의원&nbsp;대표원장
                                            김인기입니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">이번에 저는 여러분들과 좀 더
                                            가까이에서&nbsp;</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">보다 편안하고 안전한 의료서비스를
                                            제공하고자</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">이곳 정발산역에 최신의
                                            의료장비와</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">정밀한 진단기기를 구비하여</span>
                                    </p>
                                    <p style="text-align: center;"><span
                                            style="font-size: 16px;">"정발산튼튼척의원"을&nbsp;개원하였습니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;"><br></span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">환자를 먼저 생각하고 항상 고민하고
                                            연구하는 자세로</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">더욱더 좋은 병원이 되도록
                                            노력하겠습니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">많은 관심과 격려
                                            부탁드립니다.</span></p>
                                </div>
                            </div>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_2.jpg" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_3.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_4.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_5.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_6.jpg" alt="">
                            </figure>
                        </div>
                    </div>
                </div>

        </div>
    </div> <!-- #ct 끝 -->
    <footer id="footer">
	<%@ include file="./include/ft.jsp" %>
	</footer>

</section> <!-- 섹션1끝 -->

<section class="page" id="page2">
    <header id="header">
	<%@ include file="./include/hd.jsp" %>
	</header>
    <div id="ct">
        <div class="ct_warp">
			<p>여기는 섹션2입니다.</p>
                <div class="ct_warp">
                    <div class="list1">
                        <div>
                            <h2 class="list_tit">병원소개</h2>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_1.png" alt="">
                            </figure>
                            <div class="text-table ">
                                <div>
                                    <p style="text-align: center;"><span style="font-size: 16px;">안녕하십니까?</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">정발산튼튼척의원&nbsp;대표원장
                                            김인기입니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">이번에 저는 여러분들과 좀 더
                                            가까이에서&nbsp;</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">보다 편안하고 안전한 의료서비스를
                                            제공하고자</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">이곳 정발산역에 최신의
                                            의료장비와</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">정밀한 진단기기를 구비하여</span>
                                    </p>
                                    <p style="text-align: center;"><span
                                            style="font-size: 16px;">"정발산튼튼척의원"을&nbsp;개원하였습니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;"><br></span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">환자를 먼저 생각하고 항상 고민하고
                                            연구하는 자세로</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">더욱더 좋은 병원이 되도록
                                            노력하겠습니다.</span></p>
                                    <p style="text-align: center;"><span style="font-size: 16px;">많은 관심과 격려
                                            부탁드립니다.</span></p>
                                </div>
                            </div>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_2.jpg" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_3.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_4.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_5.png" alt="">
                            </figure>
                        </div>
                        <div>
                            <figure class="fig">
                                <img src="${path }/resources/img/sub1_6.jpg" alt="">
                            </figure>
                        </div>
                    </div>
                </div>

        </div>
    </div> <!-- #ct 끝 -->
    <footer id="footer">
	<%@ include file="./include/ft.jsp" %>
	</footer>
</section> <!-- 섹션2끝 -->


</body>

</html>