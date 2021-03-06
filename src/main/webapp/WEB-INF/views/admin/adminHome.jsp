<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/taglib.jsp"%>


<html>
<head>
    <title>AirBnD - 관리자 홈</title>
    <c:import url="../include/header.jsp" />

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <c:import url="./sidebar.jsp" />


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <c:import url="../include/navbar.jsp" />

            <!-- Begin Page Content -->
            <div class="container-fluid">

				<h1>관리자 페이지</h1><hr>
				

                <!-- Content Row -->
                <div class="row">

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            등록된 유저수
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${userNum} 명</div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            등록된 숙소수
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${houseNum } 개</div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                       	 	진행된 예약 수
                                       	 </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${reservationNum} 건</div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        	커뮤니티 게시글 수</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${boardNum} 개</div> 
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                
</div>

       
                
                
                
                
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

<c:import url="../include/footer.jsp"/>
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Page level custom scripts -->
<script src="${contextPath}/js/demo/chart-area-demo.js"></script>
<script src="${contextPath}/js/demo/chart-pie-demo.js"></script>
</body>
</html>