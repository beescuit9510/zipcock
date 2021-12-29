<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/default.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/leftmenu.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/sellermypage.css">
</head>
<body>

<%@include file="/WEB-INF/views/common/header.jsp" %>
 <div class="container">

        <div class="seller-mypagewarp">
            <div class="menu-left">
                <h4>MY PAGE<br> </h4>
                <ul class="left-menu" style="float: left;">
                    <li><a class="leftmenu" href="sellerMypage.do">주문/배송</a></li>
                    <li><a class="leftmenu" href="productMgr.do">상품 관리</a></li>
                    <li><a class="leftmenu" href="sellerQNA.do">고객 관리</a></li>
                    <li><a class="leftmenu" href="statistics.do">판매 통계</a></li>
                    <li><a class="leftmenu" href="sellerInfo.do">판매자정보</a></li>
                </ul>
            </div>
            <div class="mypage-context" style="background-color: ddd;">
                <h1> 나의 상회</h1>
                <hr>
                <br>
               <div class="well col-lg-12"> <h2>총매출</h2></div>
               <div class="well col-lg-6" style="background-color:white;">
          		<div>
          			<h4>일별 판매량</h4>
          		</div>
          		<div>
          			<canvas id="myChart"></canvas>
          		</div>
          	</div>
          	<div class="well col-lg-6" style="background-color:white;">
          		<div>
          			<h4>일별 매출</h4>
          		</div>
          		<div>
          			<canvas id="myChart2"></canvas>
          		</div>
          		
          	
          	</div>    
             </div>
                </div>
                   </div>
    
<%@include file="/WEB-INF/views/common/footer.jsp" %>

          	
          	<script>
	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, {
	    // The type of chart we want to create
	    type: 'bar',

	    // The data for our dataset
	    data: {
	        labels: ['${orderDay[6]}', '${orderDay[5]}', '${orderDay[4]}', '${orderDay[3]}', '${orderDay[2]}', '${orderDay[1]}', '${orderDay[0]}'],
	        datasets: [{
	            label: '판매 건',
	            backgroundColor: '#ADC2A9',
	            borderColor: '#5F755A',
	            data: [${orderCount[6]}, ${orderCount[5]}, ${orderCount[4]}, ${orderCount[3]}, ${orderCount[2]}, ${orderCount[1]}, ${orderCount[0]}]
	        }]
	    },

	    // Configuration options go here
	    options: {}
	});
	
	var ctx2 = document.getElementById('myChart2').getContext('2d');
	var chart2 = new Chart(ctx2, {
	    // The type of chart we want to create
	    type: 'line',

	    // The data for our dataset
	    data: {
	        labels: ['${orderDay[6]}', '${orderDay[5]}', '${orderDay[4]}', '${orderDay[3]}', '${orderDay[2]}', '${orderDay[1]}', '${orderDay[0]}'],
	        datasets: [{
	            label: '판매 금액',
	            backgroundColor: '#ADC2A9',
	            borderColor: '#5F755A',
	            data: [${orderAmount[6] }, ${orderAmount[5]}, ${orderAmount[4]}, ${orderAmount[3]}, ${orderAmount[2]}, ${orderAmount[1]}, ${orderAmount[0]}]
	        }]
	    },

	    // Configuration options go here
	    options: {}
	});
	</script>  
</body>
</html>