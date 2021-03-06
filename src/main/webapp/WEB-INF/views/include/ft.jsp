<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }" />

    <div class="footer_wrap">
        <div class="footer_top" >
            <a href="#" target="_blank"><i class="xi-youtube-play xi-5x"></i>   </i></a>
            <a href="#" target="_blank"><i class="xi-instagram xi-5x"></i>   </i></a>
            <a href="#" target="_blank"><i class="xi-kakaotalk xi-5x"></i>   </i></a>
            <a href="#" target="_blank"><i class="xi-message xi-5x"></i>   </i></a>
        </div>
        <div class="ft_bind">
        <div class="footer_bottom">
            <img src="${path}/resources/img/footer_logo1.png" alt="로고">
        </div>
        <div class="footer_info">
            <nav class="nav1"><a href="#" target="_blank">개인정보정책</a></nav>
            <nav class="nav2"><a href="#" target="_blank">이용약관</a></nav>
            <div>
                <span>
                    <strong>주소 : </strong>
					경기도 고양시 일산동구 정발산로 38 이스턴시티 4층
                </span>
                <span>
                    <strong>E-mail : </strong>
                    kdh@naver.com
                </span>
                <br>
                <span>
                    <strong>사업자등록번호 : </strong>
                    219-98-22380
                </span>
                <span>
                    <strong>대표원장 : </strong>
					김인기
                </span>
                <span>
                    <strong>의료기관명칭 : </strong>
					정발산튼튼척의원
                </span>
                <span>
                    <strong>전화번호 : </strong>
                    031.902.4758
                </span>
                <p>Copyright© 정발산튼튼척의원 All Rights Reserved</p>
            </div>
            <button type="button" id="top_btn" style="border: 0; cursor: pointer;">
                <img src="${path}/resources/img/gotop.jpg" alt="버튼">
            </button>
        </div>
        </div>
    </div>
    <script>
                $('#top_btn').click(function(){
                $('html').scrollTop(0);
                });
    </script>
