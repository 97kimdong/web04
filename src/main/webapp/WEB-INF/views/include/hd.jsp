<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />

<div class="header_wrap">
    <div class="header_top">
        <h1>연세디에이지는 환자중심의 진료환경을 지향합니다.</h1>
    </div>
    <div class="util_wrap">
    <div class="util_menu">
       
        <ul>
            <c:if test="${sid eq null }">
            <li><a href="${path}/member/agreement">회원가입</a></li>
            <li><a href="${path}/member/loginForm">로그인</a></li>
            </c:if>
            <c:if test="${sid != null }">
            <li><a href="${path}/member/logout">로그아웃</a></li>
            <li><a href="${path}/board/list.do">글목록보기</a></li>
            <li><a href="${path}/member/list.do">회원목록</a></li>
            <li><a href="${path}/databank/writeForm.do">자료업로드</a></li>
            <li><a href="${path}/member/update">${sid }님</a></li>
            </c:if>
            
        </ul>
      
    </div>
    </div>
    <div class="header_bottom" >
        <div class="logo"><a href="${path}"><img src="${path}/resources/img/header_logo.png" alt="로고"></a></div>
        <ul>
            <a href="">메뉴1</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub1#page1">메뉴-1</a></li>
                <li><a href="${path}/sub1#page2">메뉴-2</a></li>
                <li><a href="${path}/sub1#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴2</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴3</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴4</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴5</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴6</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴7</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
    </div>
</div>