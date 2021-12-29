<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.zcdStatistics_search{
		color: #000;
		background: #f5f5f5;
		border: 1px solid #e6e6e6;
		overflow: hidden;
		border-left: #9ac6e8;
		border-bottom: 0px;	
	}
	.zcdStatistics_ul{
		display: inline-block;
		vertical-align: top;
		list-style: none;
	}
	.zcdStatistics_ul li{
		display: inline-block;
		vertical-align: top;
		padding-right: 2px;
		list-style: none;
	}
	.zcdStatistics_submit{
		padding: 0 13px;
		height: 30px;
		line-height: 30px;
		display: inline-block;
		font-size: 0.9em;
		background: #616b7d;
		color: #fff;
		border-color: #616b7d;
	}
	.zcdStatistics_chart{
		margin-bottom: 30px;
		border: 1px solid #dcdcdc;
	}
	.zcdChart_title{
		padding: 20px;
		border-bottom: 1xp solid #dcdcdc;
	}
	.zcdChart_content{
		padding: 20px;
	}
	.zcdChart_content img{
		max-width: 100%;
		border: 0;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container" style="width: 1080px;">
		<h3>통계관리</h3>
		<hr>
		<div class="zcdStatistics_search">
			<div style="width: 50%; float: left;">
				<input type="text">
				<input id="datepicker">
				-
				<input type="text">
				<input id="datepicker">
				<ul class="zcdStatistics_ul">
					<li>
						<a href="#" class="zcdStatistics_submit">이번주</a>
					</li>
					<li>
						<a href="#" class="zcdStatistics_submit">지난주</a>
					</li>
					<li>
						<a href="#" class="zcdStatistics_submit">이번달</a>
					</li>
					<li>
						<a href="#" class="zcdStatistics_submit">전체</a>
					</li>
				</ul>
			</div>
			<div class="zcdStatistics_chart">
				<div class="zcdChart_title">
					<h3>일별 결제금액</h3>
					<p>결제금액을 일별로 살펴볼수 있으며, 7일 평균 차트를 통해 결제금액을 살펴볼 수 있습니다.</p>
				</div>
				<div class="zcdChart_content">
					<img src="/resources/img/statistics/통계테스트이미지.jpg">
				</div>
			</div>
		</div>
	</div>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script>
		$(function() {
			$("#datepicker").datepicker({ minDate: 0});
		});
		$.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',	//날짜 포맷이다.
	        prevText: '이전 달',	// 마우스 오버시 이전달 텍스트
	        nextText: '다음 달',	// 마우스 오버시 다음달 텍스트
	        closeText: '닫기', // 닫기 버튼 텍스트 변경
	        currentText: '오늘', // 오늘 텍스트 변경
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더중 월 표시를 위한 부분
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더 중 월 표시를 위한 부분
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],	//한글 캘린더 요일 표시 부분
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],	//한글 요일 표시 부분
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],	// 한글 요일 표시 부분
	        showMonthAfterYear: true,	// true : 년 월  false : 월 년 순으로 보여줌
	        yearSuffix: '년',	//
	        showButtonPanel: true,	// 오늘로 가는 버튼과 달력 닫기 버튼 보기 옵션
            showOn:"button",
            buttonImage:"/resources/img/coupon/Calendar.png",
            buttonImageOnly:true,
	    });
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>