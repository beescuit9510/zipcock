<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryEvent/eventWrite.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<script src="/summernote/jquery-3.3.1.js"></script>
	<script src="/summernote/summernote-lite.js"></script>
	<script src="/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/summernote/summernote-lite.css">
	<div class="container" style="width: 1080px;">
		<h3 class="eventWrite">이벤트 글쓰기</h3>
		<form action="/eventWrite.do" method="post" enctype="multipart/form-data">
			<div class="eventWriteWrapper">
				<table class="eventWrite_table">
					<tr>
						<th class="ew-title">
							제목
						</th>
						<td class="ew-content">
							<input type="text" name="eventName">
						</td>
					</tr>
					<tr>
					<th class="ew-title">
						썸네일 첨부파일
					</th>
					<td class="ew-content">
						<input type="file" id="uploadImg" name="files" onchange="loadImg(this);" accept=".jpg,.png,.jpeg,.gif">
					</td>
				</tr>
				<tr>
					<th class="ew-title">
						썸네일 미리보기
					</th>
					<td class="ew-content">
						<div class="ewimg-viewer">
							<img id="ewimg-view" width="500px">
						</div>
					</td>
				</tr>
				<tr>
					<th class="ew-title">
						게시기간
					</th>
					<td class="ew-content">
						<input name="eventFinishDate" id="datepicker" style="vertical-align: middle;">
					</td>
				</tr>
				<tr>
					<th class="ew-title">
						내용
					</th>
					<td class="ew-content">
						<textarea name="eventContent" id="eventContent"></textarea>
					</td>
				</tr>
				</table>
				<div style="margin-top: 30px; text-align: center;">
					<button type="submit" class="eventSubmit_btn">등록하기</button>
				</div>
			</div>
		</form>
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
		function loadImg(obj){
			var files = obj.files;
			console.log(files);
			if(files.length !=0){
				var reader = new FileReader();
				reader.readAsDataURL(files[0]);
				reader.onload = function(e){
					$("#ewimg-view").attr("src",e.target.result);
				}
			}else{					
				$("#ewimg-view").attr("src","");
			}
		}
		$("#uploadImg");
		$(function(){
			$("#eventContent").summernote({
				height : 400,
				minHeight : null,
				maxHeight : null,
				focus : true,
				lang : "ko-KR",
				callbacks:{
					onImageUpload : function(files,editor,welEditable){
						for(var i=0;i<files.length;i++){
							uploadImage(files[i], this);
						}
					}
				}
			});
		});
		function uploadImage(file,editor){
			data = new FormData();
			data.append("file",file);
			$.ajax({
				url : "/eventUploadImage.do",
				type : "post",
				data : data,
				enctype : 'multipart/form-data',
				processData : false,
				contentType : false,
				success : function(data){
					$(editor).summernote("insertImage",data);
				}
			});
		}
		</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>