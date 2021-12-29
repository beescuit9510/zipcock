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
            <div class="mypage-context">
                <div class="row">
                    <div>
                  
                    </div>
                    <div>
                        <h1 style="border-left:2px solid #5f755a;">상품 문의</h1>
                        <br>
                        <fieldset>
                            <table class="table table-hover" style="width:100%;">
                                <tr class="table-primary">
                                    <th>문의번호</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>답변여부</th>
                                </tr>
                                <tr class="table-light">
                                    <td>1</td>
                                    <td style="text-align:left;"><a href='#'>파는게 맞나요?</a></td>
                                    <td>2021.11.24</td>
                                    <td style="color:red;">미완료</td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>