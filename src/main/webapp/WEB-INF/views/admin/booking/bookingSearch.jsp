<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/taglib.jsp"%>


<html>
<head>
	<title>AirBnD - 관리자 예약 검색</title>
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



				<h1 style="text-align: center;">검 색 결 과</h1>


				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">Reservation DataTable</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">

							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
								<tr>
									<th width="10%">예약번호</th>
									<th width="30%">숙소명</th>
									<th width="20%">예약자</th>
									<th width="20%">입실 날짜</th>
									<th width="20%">퇴실 날짜</th>
								</tr>
								</thead>
								<tfoot>
								<tr>
									<th colspan="6">
										<c:forEach var="pageNum" begin="1" end="${allPage }">
											<a href="${contextPath }/admin/bookingsearch?pageNum=${pageNum}&choice=${choice}&userSearch=${houseSearch}">${pageNum } </a>
										</c:forEach>
									</th>
								</tr>
								</tfoot>
								<tbody>

								<c:choose>
								<c:when test="${bookingSearchList.size() != 0 }">
									<c:forEach var="dto" items="${bookingSearchList }">
										<tr>
											<td>${dto.reservationId }</td>
											<td>
												<a href="#">${dto.name }</a> 
											</td>
											<td>${dto.email }</td> 
											<td>${dto.checkIn }</td>
											<td>${dto.checkOut }</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
								<tr>
									<th colspan="6"> 조건에 부합하는 예약 내역이 없습니다.</th>
								<tr>
									</c:otherwise>
									</c:choose>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				
				
				
				<table width="100%">
				<tr>
					<th>
						<form action="${contextPath }/admin/bookingsearch" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<div class="form-row align-items-center">
							    <div class="col-auto my-1">
									<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">검색옵션</label>
									<select class="custom-select mr-sm-2" id="inlineFormCustomSelect"  name="choice">
										<option value="1">예약번호
										<option value="2">숙소명
										<option value="3">예약자
							      	</select>
							      	
							    </div>
							    <div class="col-auto my-1">
								    <div class="custom-control custom-checkbox mr-sm-2">
								        <input class="form-control" type="text" name="bookingSearch">
								    </div>
							    </div>
							    <div class="col-auto my-1">
							      	<button type="submit" class="btn btn-primary">검색</button>
							    </div>
							    
							</div>
						</form>
					</th>
					
					<th>
						<div class="col-auto my-1" align="right">
							<form action="${contextPath }/admin/bookingmanage" id="frm">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<a class="btn btn-primary" onclick="formSubmit()">목록으로</a>
							</form>
						</div>
					</th>
				</tr>
			</table>
			

				







			</div>
		<!-- End of Main Content -->

		<c:import url="../../include/footer.jsp"/>
		<!-- End of Footer -->
	</div>
	<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
</div>

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>
</body>
</html>