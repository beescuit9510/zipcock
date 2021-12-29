<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    
    
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
                <div class="dilivery-statuswarps" style="border: solid 1px #ddd; overflow:hidden; padding: 50px;">

                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th style="width:50%;">오늘 주문</th>
                                <td style="width:50%;"><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th style="width:50%;">오늘 매출</th>
                                <td style="width:50%;"><span>0</span><span>원</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th>결제완료</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송중　</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송완료</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                        </table>
                    </div>

                </div>

                <br><br><br>
                <div class="dilivery-statuswarps" style="border: solid 1px #ddd; overflow:hidden; padding: 50px;">

                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th style="width:50%;">오늘 주문</th>
                                <td style="width:50%;"><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th style="width:50%;">오늘 매출</th>
                                <td style="width:50%;"><span>0</span><span>원</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th>결제완료</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송중　</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송완료</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                        </table>
                    </div>

                </div>
                <br><br><br>
                <div class="dilivery-statuswarps" style="border: solid 1px #ddd; overflow:hidden; padding: 50px;">

                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th style="width:50%;">일별 판매량</th>
                                <td style="width:50%;"><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th style="width:50%;">오늘 매출</th>
                                <td style="width:50%;"><span>0</span><span>원</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="dilivery-status">
                        <table class="table">
                            <tr>
                                <th>월별 판매량</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송중　</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                            <tr>
                                <th>배송완료</th>
                                <td><span>0</span><span>건</span></td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>


        </div>
    </div>
    
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>