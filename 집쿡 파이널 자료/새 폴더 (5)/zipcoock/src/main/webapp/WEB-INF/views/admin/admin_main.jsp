<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<style>

.chart_area2
{
	display: flex;
	justify-content: space-around;	
}

</style>
<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	
        <div class = "main_field">        	
        	<div class = "main_content">
        		<div class = "main_content_field">
        			<!-- main content making area -->      
        			<%@include file="/WEB-INF/views/admin/adminHeader.jsp" %>	 	
        			<div class = "amdin_main_content">
        				<div class = "chart_area" id = "test">
        					<canvas id="myChart"></canvas>
        				</div>        				
        				<div class = "chart_area2">
        					<div><canvas id="myChart2"></canvas></div>
        					<div><canvas id="myChart3"></canvas></div>        					
        				</div>        			
        			</div>        			
        		</div> <!-- main_content_field -->
        	</div> <!-- main content -->
        </div> <!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
<script>
$(function()
{	
	var ctx = document.getElementById('myChart').getContext('2d'); 
	var chart = new Chart(ctx, 
			{ 
				type: 'line', 
				// 챠트를 그릴 데이타 
				data: { labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'], 
				datasets: [{ label: 'My First dataset', backgroundColor: '#6653e3', borderColor: '#908b8f', data: [0, 10, 5, 2, 20, 30, 45] }] }, 
				// 옵션 
				options: {} 
			});
	
	var ctx2 = document.getElementById('myChart2'); 
	var myChart = new Chart(ctx2, 
			{ 
				type: 'bar', 
				data: 
				{ 
					labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'], 
					datasets: 
						[{ 
							label: '# of Votes', 
							data: [12, 19, 3, 5, 2, 3], 
							backgroundColor: [ 'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ], 
							borderColor: [ 'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ], 
							borderWidth: 1 
						}] }, 
					options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } } 
				});
	
	var ctx3 = document.getElementById('myChart3'); 
	var myChart = new Chart(ctx3, 
			{ 
				type: 'bar', 
				data: 
				{ 
					labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'], 
					datasets: 
						[{ 
							label: '# of Votes', 
							data: [12, 19, 3, 5, 2, 3], 
							backgroundColor: [ 'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ], 
							borderColor: [ 'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ], 
							borderWidth: 1 
						}] }, 
					options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } } 
				});
});
</script>
</html>