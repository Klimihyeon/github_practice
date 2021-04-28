<%@page import="kr.or.ddit.adminBoard.vo.AdminBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
%>
<html lang="kr">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        
        <link href="<%=request.getContextPath() %>/adminView/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/assets/js/blackList/blackList.js"></script>
        <script src="<%=request.getContextPath() %>/assets/js/util/ejyooMyutils.js"></script>
        <script src="<%=request.getContextPath() %>/assets/js/userAll/userAll.js"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Welcome, Admin!</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">로그아웃</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">MAIN</div>
                            <a class="nav-link" href="<%=request.getContextPath() %>/admin/main.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-users-cog"></i></div>
                    관리자 메인 페이지
                            </a>
                            <div class="sb-sidenav-menu-heading">ADMIN DATA</div>
                            
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMembers" aria-expanded="false" aria-controls="collapseMembers">
                                <div class="sb-nav-link-icon"><i class="fas fa-address-card"></i></div>
                    회원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseMembers" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<%=request.getContextPath() %>/userAll/listUserAllList.do">가입회원</a>
                                    <a class="nav-link" href="<%=request.getContextPath() %>/blackList/listBlackList.do">블랙리스트</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                게시글 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">공지사항 및 FAQ</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">전체 게시판</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseComments" aria-expanded="false" aria-controls="collapseComments">
                                <div class="sb-nav-link-icon"><i class="fas fa-comments"></i></div>
                                댓글 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseComments" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">전체 댓글</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">삭제 댓글</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCodes" aria-expanded="false" aria-controls="collapseCodes">
                                <div class="sb-nav-link-icon"><i class="fas fa-hashtag"></i></div>
                                코드 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseCodes" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">그룹 코드</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">개별 코드</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCharts" aria-expanded="false" aria-controls="collapseCharts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-line"></i></div>
                                통계 현황
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseCharts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">회원 통계</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">식당 통계</a>
                                </nav>
                            </div><!-- 왼쪽 메뉴 끝 -->
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        굿끼제먹 관리자
                    </div>
                </nav>
            </div>
            
            
            
            
            
            
            
            
            <div id="layoutSidenav_content"><!-- 가운데 영역 시작 -->
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4 mb-4">회원등록</h1>
                        
<!--                         <ul class="nav nav-pills mb-4"> -->
<!-- 						  <li class="nav-item"> -->
<%-- 						    <a class="nav-link" href="<%=request.getContextPath() %>/userAll/getBlockUserAll.do">전체</a> --%>
<!-- 						  </li> -->
<!-- 						</ul>가운데 상위 메뉴 끝 -->
						
						
<!-- 						<div class="card mb-4"> -->
<!--                             <div class="card-body"> -->
<!--                               블랙리스트 -->
<!--                             </div> -->
<!--                         </div> -->
                        
                        <div class="card mb-4"><!-- 가운데 중간 영역 시작-->
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                               	회원등록 
<!--                                	<a type="button" class="btn btn-outline-danger btn-sm float-right" href="noticeInsert.do">뒤로가기</a> -->
                               	<a type="button" class="btn btn-outline-info btn-sm float-right" href="<%=request.getContextPath() %>/userAll/listUserAllList.do">뒤로가기</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                
                                
                                    <form id="fm">
								
									<div class="form-group"><!-- 아이디 시작 -->
										<label class="small mb-1" for="userId">아이디</label>
										<div class="input-group">
											<input type="text" class="form-control py-4" id="userId"
												placeholder="아이디를 입력하세요" name="userId">
											<div class="input-group-append">
												<button class="btn btn-primary" type="button" id="userIdChk"
													onclick="chkId()">중복체크</button>
											</div>
										</div>
										<span id="spUserId" style="display:none;"></span>
									</div><!-- 아이디 종료 -->
									
									<div class="form-group"><!-- 비밀번호 시작 -->
										<label class="small mb-1" for="userPw">비밀번호</label> <input
											class="form-control py-4" id="userPw" type="password"
											placeholder="비밀번호를 입력하세요" name="userPw" />
										<span id="spUserPw" style="display:none;"></span>
									</div><!-- 비밀번호 종료 -->
									
									<div class="form-group"><!-- 이름 시작 -->
										<label class="small mb-1" for="dditName">이름</label> <input
											class="form-control py-4" id="dditName" type="text"
											placeholder="이름을 입력하세요" name="dditName" />
										<span id="spDditName" style="display:none;"></span>
									</div><!-- 이름 종료 -->
									
									<div class="form-group"><!-- 소속반 시작 -->
										<label class="small mb-1" for="dditClass">소속반</label>
										<select class="custom-select" id="dditClass" name="dditClass">
										  <option selected value="1">401</option>
										  <option value="2">402</option>
										  <option value="3">403</option>
										  <option value="4">404</option>
										  <option value="5">405</option>
										  <option value="6">406</option>
										  <option value="7">407</option>
										  <option value="8">408</option>
										</select>
										
										
									</div><!-- 소속반 종료 -->
									
									<div class="form-group"><!-- 휴대폰 번호 시작 -->
										<label class="small mb-1" for="dditHp">휴대폰 번호</label> <input
											class="form-control py-4" id="dditHp" type="text"
											placeholder="휴대폰 번호를 입력하세요(예: 010-0000-0000)" name="dditHp" />
										<span id="spDditHp" style="display:none;"></span>
									</div><!-- 휴대폰 번호 종료 -->
									
									<div class="form-group"><!-- 이메일 주소 시작 -->
										<label class="small mb-1" for="dditMail">이메일</label>
										<div class="input-group">
											<input type="email" class="form-control py-4" id="dditMail"
												placeholder="이메일을 입력하세요" name="dditMail">
											<div class="input-group-append">
												<button class="btn btn-primary" type="button" id="dditMailChk"
													onclick="chkMail()">중복체크</button>
											</div>
										</div>
										<span id="spDditMail" style="display:none;"></span>
									</div><!-- 이메일 주소 종료 -->
									
									<div class="form-group"><!-- 이메일 수신여부 시작 -->
										<div class="custom-control custom-checkbox">
									  		<input type="checkbox" class="custom-control-input" id="recvMail" name="recvMail">
									  		<label class="custom-control-label" for="recvMail">이메일 수신 여부</label>
										</div>
									</div><!-- 이메일 수신여부 종료 -->
									
									<div class="form-group"><!-- 생년월일 시작 -->
										<label class="small mb-1" for="dditBir">생년월일</label> <input
											class="form-control py-4" id="dditBir" name="dditBir" type="date" />
										<span id="spDditBir" style="display:none;"></span>
									</div><!-- 생년월일 종료 -->
									
									<div class="form-group text-center">
										<button type="button" class="btn btn-primary col-5"
											id="registerBtn" onclick="save()">등록 </button>
										<button type="reset" class="btn btn-outline-primary col-5"
											id="resetBtn">초기화</button>
									</div>
									<input type="hidden" name="flag" id="formFlag">
								</form>
								
								
                                </div>
                            </div>
                  		</div>       
                   	</div>
                </main>
                
                <footer class="py-4 bg-light mt-auto"><!-- 가운데 하단 영역 -->
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Enjoy Your Meal Right On Time 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <form id="fm" method="post">
        	<input type="hidden" id="boardSeq" name="boardSeq">
        </form>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/chart-area-demo.js"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/datatables-demo.js"></script>
        <script src="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
    </body>
</html>