<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/mypage/common/default2.css">
<link rel="stylesheet" href="/resources/css/mypage/default.css">
<link rel="stylesheet" href="/resources/css/mypage/like.css">
<link rel="stylesheet" href="/resources/css/mypage/myInfoPw.css">
<link rel="stylesheet" href="/resources/css/mypage/polish.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
        			<!-- main content making area -->
        			<div class = "subtitle_box">
        				<div class = "subtitle_content">
        					<div class = "content">
        						<div class = "subtitle_text">


								
								    <table class="table-wrap">
								        <tr>
								            <td colspan="3"><h2 id="mypage-title" class="mypage-title">마이페이지</h2></td>
								        </tr>
								        <tr>
								            <td></td>
								            
								            <td id="insert-addr-td">
								
																
								                <form id="mypage-form" action="" method="post" class="mypage-form-class" >
								                    <input id="mypage-keyword" placeholder="검색어 입력" name="keyword" class="input" type="text">
								                    <select id="mypage-sel" name="order" class="mypage-select input select">
								                        <option id="mypage-opt" value="newest" selected>최신순</option>
								                        <option id="mypage-opt" value="oldest">오래된 순</option>
								                        <option id="mypage-opt" value="cheapest">낮은가격순</option>
								                        <option id="mypage-opt" value="highest">높은가격순</option>
								                    </select>
								                    <button type="submit" id="mypage-form-submit" class="top_btn">검색</button>
								                </form>
								
								
								            </td>    
								            <td></td>
								        </tr>
								        <tr>
								            <td class="main-menu-relative">
								                    <div class="main-menu">
								                        <ul>
								                            <a href="/mypageReceiptFrm.do"><li class="menu-item">주문목록</li></a>
								                            <!-- 
								                            <a href="/mypageMembershipFrm.do"><li class="menu-item">집쿠욱 멤버십</li></a>
								                             -->
								                            <a href="/mypageQnAFrm.do"><li class="menu-item">Q&A Q관리</li></a>
								                            <a href="/mypageReviewFrm.do"><li class="menu-item">리뷰관리</li></a>
								                            <a href="/mypageHelpFrm.do"><li class="menu-item">문의내역</li></a>
								                            <a href="/mypageLikeFrm.do"><li class="menu-item">즐겨찾기</li></a>
								                            <a href="/mypageMyInfoFrm.do"><li class="menu-item">정보 확인/수정</li></a>
								                            <a href="/mypagePwFrm.do"><li class="menu-item">비밀번호 수정</li></a>
								                            <a href="/mypageAddrFrm.do"><li class="menu-item">배송지 관리</li></a>
								                        </ul>
								                    </div>
								
								            </td>
								            <td>

 <!-- 
mypage-title mypage-keyword
mypage-sel order
mypage-opt 4
oldest
mypage-form-submit
 -->
								            