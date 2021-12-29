<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info:first-child{
		margin-bottom: 0;
		border-bottom: 0;
	}
	.btn-area{
		text-align: center;
		display: flex;
	}
	.btn-area>button:first-child {
		margin-right: 10px;
	}
</style>
</head>
<body>
<div class="s-wrapper">
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
        <div class = "content_div">
        	<div class = "content_title">나의 집쿠욱</div>
        	<div class = "content_div_area">
        		<div class = "content_div_content">
        			<div class = "content_div_info">
        				<div class = "content_div_opt1">집쿠욱 레벨</div>
        				<div class = "content_div_opt2">집쿠욱 포인트</div>
        				<div class = "content_div_opt3">주문내역</div>
        			</div>
        			<div class = "content_div_info">
        				<div class = "content_div_opt1" id="text-emp">집쿡초보</div>
        				<div class = "content_div_opt2" id="text-emp">555</div>
        				<div class = "content_div_opt3"><a href="#" id="text-emp">보러가기</a></div>
        			</div>
        			<div class = "content_title" style="margin-top:20px; margin-bottom: 15px;">정보 확인/수정</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">이름</div>
	        			<div class="content_div_opt2" id="text-emp">문수라</div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">주소</div>
	        			<div class="content_div_opt2"><input type="text" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">전화번호</div>
	        			<div class="content_div_opt2"><input type="text" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">현재 비밀번호</div>
	        			<div class="content_div_opt2"><input type="password" class="input"></div>
	        		</div>
	        		<div class = "content_div_info">
	        			<div class="content_div_opt1">새로운 비밀번호</div>
	        			<div class="content_div_opt2"><input type="password" class="input"></div>
	        		</div>
	        		<div class="btn-area">
		        		<button type="submit" class="buy_btn">변경</button>
		        		<button type="reset" class="cart_btn">취소</button>	        		
	        		</div>
        		</div>	
        	</div>
        </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageFooter.jsp"%>
	<style>
		.input{
			height: 24px;
		}
	</style>
      