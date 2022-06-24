<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />

<div class="header_wrap">
    <div class="header_top">
        <h1>정발산튼튼척의원은 환자중심의 진료환경을 지향합니다.</h1>
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
        <div class="logo"><a href="${path}"><img src="${path}/resources/img/header_logo1.png" alt="로고"></a></div>
        <ul>
            <a href="${path}/sub1#page1">진료안내</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub1#page1">병원소개</a></li>
                <li><a href="">진료시간</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="${path}/sub2#page1">척추클리닉</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub2#page1">허리디스크</a></li>
                <li><a href="">목디스크</a></li>
                <li><a href="">요추관협착증</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="${path}/sub3#page1">관절클리닉</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub3#page1">퇴행성관절염</a></li>
                <li><a href="">류마티스관절염</a></li>
                <li><a href="">통 풍</a></li>
                <li><a href="">회전근개파열</a></li>
                <li><a href="">오십견</a></li>
                <li><a href="">근막동통증후군</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="${path}/sub4#page1">통증클리닉</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub4#page1">편두통</a></li>
                <li><a href="">대상포진</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="${path}/sub5#page1">비수술클리닉</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="${path}/sub5#page1">체외충격파</a></li>
                <li><a href="">프롤로테라피</a></li>
                <li><a href="">도수치료</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="${path }/board/list.do">공지사항</a>
        </ul>
    </div>
</div>