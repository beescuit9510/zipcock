<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info img{
		width: 300px;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
		<div class = "content_div">
       	<div class = "content_title">쿠폰함</div>
       	<div class = "content_div_area">
       		<div class = "content_div_content">
       			<div class = "content_div_info">
       				<div class = "content_div_opt1">쿠폰 정보</div>
       				<div class = "content_div_opt2">사용기한</div>
       				<div class = "content_div_opt3">사용여부</div>
       			</div>
       			<div class ="content_div_info coupon-tbl" style="height: 110px;">
        				<div class = "content_div_opt1"><div>쿠폰 이미지</div></div>
        				<div class = "content_div_opt2" id="text-emp">2021-12-06 09:00 ~ 2021-12-28 00:00</div>
        				<div class = "content_div_opt3" id="text-emp">미사용</div>
        		</div>
        		<div class ="content_div_info coupon-tbl" style="height: 110px;">
        				<div class = "content_div_opt1"><div>쿠폰 이미지</div></div>
        				<div class = "content_div_opt2" id="text-emp">2021-12-06 09:00 ~ 2021-12-28 00:00</div>
        				<div class = "content_div_opt3" id="text-emp">미사용</div>
        		</div>
        		<div class ="content_div_info coupon-tbl" style="height: 110px;">
        				<div class = "content_div_opt1"><div>쿠폰 이미지</div></div>
        				<div class = "content_div_opt2" id="text-emp">2021-12-06 09:00 ~ 2021-12-28 00:00</div>
        				<div class = "content_div_opt3" id="text-emp">미사용</div>
        		</div>
       		</div>	
       	</div>
    </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageFooter.jsp"%>
<style>
	.coupon-tbl{
		text-align: center;
	}
	.content_div_opt1>div{
		width: 300px; 
		height: 100px;
		line-height: 100px;
		background-color: #eee;
		margin: 5px;
	}
</style>