<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<style>
	.content_div_info img{
		width: 300px;
	}
	.side_nav_div:hover{
		background: rgba(51, 51, 51, 0.05);
		cursor: pointer;
		font-weight: 700;
	}
	.side_nav_div:hover span{
		font-weight: 700;
	}
	.side_nav_content a{
		text-decoration: none;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class = "main_field">        	
        	<div class = "main_content2">
        		<div class = "side_nav">
	        		<div class = "my_info">
	        			<div class = "my_info_div">
	        				<span class = "my_info_span">환영합니다</span>
	        			</div>
	        			<div class = "user_div">
	        				<div class = "user_div_div">
	        					<div class= "user_div_content">
	        						<span class = "user_div_name">신동훈<span class = "user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class = "side_nav_content">
	        			<a href="zcdMypage.do" class = "side_nav_div"><span class = "side_nav_span">정보 확인/수정</span></a>
	        			<a href="zcdMyCoupon.do" class = "side_nav_div side_nav_div_selected"><span class = "side_nav_span side_nav_span_selected">쿠폰함</span></a>
	        			<a href="zcdMyReview.do" class = "side_nav_div"><span class = "side_nav_span">리뷰내역</span></a>
	        			<a href="zcdMyQnA.do" class = "side_nav_div"><span class = "side_nav_span">문의내역</span></a>
        			</div>
        		</div>
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
	  </div> <!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
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