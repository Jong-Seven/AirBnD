  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/taglib.jsp"%>

<html>
<head>
	<title>AirBnD - 관리자 고객센터 수정</title>
	<c:import url="../../include/header.jsp" />

<script type="text/javascript">
	function readURL(input){
		var file = input.files[0]
		console.log(file)
		if(file != ''){
			var reader = new FileReader();
			reader.readAsDataURL(file)
			reader.onload = function(e){
				console.log(e.target.result)
				$("#preview").attr("src",e.target.result)
			}
		}
	}
</script>
</head>

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
	<c:import url="../sidebar.jsp" />

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content">

			<c:import url="../../include/navbar.jsp" />

			<!-- Begin Page Content -->
			<div class="container-fluid">
			
				<div style="width:300px; margin: 0 auto;">
				
					<form action="${contextPath }/admin/modify?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
						<input type="hidden" name="qnaNo" value="${qnaData.qnaNo }">
						<input type="hidden" name="originFileName" value="${qnaData.imageFileName }">
					<b>작성자</b><br>
						<input type="text" name="writer" size="30" value="${qnaData.email }" readonly><br>
					<b>제목</b><br>
						<input type="text" size="30" name="title" value="${qnaData.title}"><hr>
					<b>내용</b><br>
						<textarea rows="5" cols="30" name="content">${qnaData.content}</textarea>
					<hr>
					<b>이미지파일 첨부 : ${qnaData.imageFileName}</b><br>
						<c:if test="${qnaData.imageFileName != 'nan' }">
							<img width="100px" height="100px" id="preview"
								 src="${contextPath }/admin/download?imageFileName=${qnaData.imageFileName}">
						</c:if>
						<input type="file" name="imageFileName" onchange="readURL(this)">
						<hr>
						<input type="submit" class="btn btn-primary" value="수정">
						<input type="button" class="btn btn-secondary" onclick="history.back()" value="돌아가기">
					</form>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- End of Main Content -->
		<c:import url="../../include/footer.jsp"/>
		<!-- End of Footer -->
	</div>
	<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>

</body>
</html>