<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
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

    <title>글 상세보기</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <style>
        h2{
            margin: 0 auto;
            width: 1440px;
            margin-bottom: 70px;
            margin-top: 100px;
            font-weight: 400;
            font-size: 1.5em;
            text-decoration: underline;
        }
        .table{
            width: 1440px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <header id="header">
    <%@ include file="../include/hd.jsp" %>
    </header>

    <div id="ct">
        <div class="ct_warp">
            <h2>글 상세보기</h2>
            <form action="${path }/board/update" method="POST">
            <input type="hidden" name="seq" id="seq" value="${dto.seq }" required >
                <table class="table" id="table">
                    <tbody>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" id="title" value="${dto.title }" required >
                            </td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td>
                                <input type="text" name="nickname" id="nickname" value="${dto.nickname }" readonly>
                            </td>
                        </tr>
                        <tr>    
                            <th>작성일</th>
                            <td>
                                <input type="text" name="regdate" id="regdate" value="${dto.regdate }" readonly>
                            </td>
                        </tr>
                        <tr>
                            <th>조회수</th>
                            <td>
                                <input type="text" name="visited" id="visited" value="${dto.visited }" readonly>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea cols="100" rows ="10" name="content" id="content"  required  >${dto.content }	</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="cols">
                                <input type="submit" value="글  수정" class="button is-info"/>
                                <input type="reset" value="취소" class="button is-info"/>
                                <a href="${path }/board/list.do" >목록 |</a>
                                <a href="${path }/board/delete?seq=+${dto.seq }" >글 삭제</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>

    <footer id="footer">
    <%@ include file="../include/ft.jsp" %>
    </footer>

    <script>
        $(document).ready(function(){
        $("#header").load("./hd.html");
        $("#footer").load("./ft.html");



        });
         
         
         
    </script>    
</body>
</html>