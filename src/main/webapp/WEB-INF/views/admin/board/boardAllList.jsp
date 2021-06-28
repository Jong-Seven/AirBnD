<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/taglib.jsp"%>

<html>
<head>
	<title>AirBnD - 관리자 예약관리</title>
	<c:import url="../../include/header.jsp" />


<script type="text/javascript">
	function formSubmit(){
		document.getElementById('frm').submit();
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
				
				
				
				<h1 style="text-align: center;">게시판</h1>
				
				
				
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">Board DataTable</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">

							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
								<tr>
									<th>Number</th><th>작성자</th><th>Title</th>
									<th>Date</th><th>Hit</th><th>Image file</th>
								</tr>
								</thead>
								<tfoot>
								<tr>
									<td colspan="6">
										<c:forEach var="pageNum" begin="1" end="${repeat }">
											<a href="${contextPath }/admin/board/boardAllList?pageNum=${repeat}">${pageNum } &nbsp;</a>
										</c:forEach>
									</td>
								</tr>
								</tfoot>
								<tbody>

								<c:choose>
								<c:when test="${boardList.size() != 0 }">
									<c:forEach var="dto" items="${boardList }">
										<tr>
											<td>${dto.writeNo }</td> <td>${dto.writer }</td>
											<td>
												<a href="${contextPath }/admin/contentView?writeNo=${dto.writeNo }">${dto.title }</a>
											</td>
											<td>${dto.saveDate }</td>
											<td>${dto.hit }</td>
											<td>${dto.fileName }</td>
				
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
								<tr>
									<th colspan="6">저장 데이터 없음</th>
								<tr>
									</c:otherwise>
									</c:choose>

								</tbody>
							</table>
						</div>
					</div>
				
				
				
			</div>
			<!-- /.container-fluid -->
			
			<form action="${contextPath }/admin/boardwriteform" id="frm">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<a class="btn btn-primary" href="${contextPath }/admin/writeform">게시글 작성</a>
			</form>
			
			
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