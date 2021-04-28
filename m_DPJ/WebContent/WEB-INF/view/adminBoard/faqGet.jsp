<%@page import="kr.or.ddit.adminBoard.vo.AdminBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AdminBoardVO abv = (AdminBoardVO)request.getAttribute("adminBoardVO");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 페이지</title>
        <link href="<%=request.getContextPath() %>/adminView/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="<%=request.getContextPath() %>/css/boardCss.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
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
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Admin Main Page
                            </a>
                            <div class="sb-sidenav-menu-heading">ADMIN DATA</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
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
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4 mb-4">Board Administration</h1>
                        
                        <ul class="nav nav-pills mb-4">
						  <li class="nav-item">
						    <a class="nav-link" href="boardAdmin.html">전체</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="getAll.do">공지</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link active" href="faqGetAll.do">FAQ</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="qnaAdmin.html">문의</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="eventAdmin.html">홍보/이벤트</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="commuAdmin.html">커뮤니티</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="partyAdmin.html">파티</a>
						  </li>
						</ul>
						<div class="card mb-4">
                            <div class="card-body">
                               공지 게시판 테스트용 임시 페이지 입니다.
                            </div>
                        </div>
                        <div class="get-board">
                        	<button type="button" onclick="fnUpdate(<%=abv.getBoardSeq() %>)">수정</button>
                            <button type="button" onclick="fnDelete(<%=abv.getBoardSeq() %>)">삭제</button>
                            <button type="button" onclick="fnGetAll()">목록</button>
                        	<table class="board-table table-spacing right">
                       			<tr class="border-bottom">
                       				<th class="tr-th text-center border-right">제목</th>
                       				<td colspan="3"><%=abv.getBoardTitle() %></td>
                       			</tr>
                       			<tr class="border-bottom">
                       				<th class="tr-th text-center border-right">작성자</th>
                       				<td><%=abv.getUserId() %></td>
                       				<th class="tr-th border-left text-center border-right">작성일</th>
                       				<td><%=abv.getBoardDate() %></td>
                       			</tr>
                       			<tr class="border-bottom">
                       				<th class="tr-th text-center border-right">내용</th>
                       				<td colspan="3"><%=abv.getBoardContent() %></td>
                       			</tr>
                       			<tr class="border-bottom">
                       				<th class="tr-th text-center border-right">첨부파일</th>
                       				<td>(첨부파일)</td>
                       				<th class="tr-th border-left text-center border-right">삭제여부</th>
                       				<td><%=abv.getBoardDelete() %></td>
                       			</tr>
                        	</table>
                        </div>
                   	</div>
                </main>
                <footer class="py-4 bg-light mt-auto">
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
        <script type="text/javascript">
        function fnDelete(data){
    		if(confirm("삭제하시겠습니까?")){//삭제하기
    			$("#fm").attr("action", "<%=request.getContextPath()%>/adminBoard/faqDelete.do");
    			$("#boardSeq").val(data);
    			$("#fm").submit();
    		}
    	}
        function fnUpdate(data) {//수정하기
//				if(confirm("수정ㄱ?")){
				$("#fm").attr("method", "get");
				$("#fm").attr("action", "<%=request.getContextPath()%>/adminBoard/faqUpdate.do");
				$("#boardSeq").val(data);
				$("#fm").submit();
//				}
		}
        function fnGetAll() {//목록으로 돌아가기
			$("#fm").attr("action", "<%=request.getContextPath()%>/adminBoard/faqGetAll.do");
			$("#fm").submit();
	}
        </script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/chart-area-demo.js"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath() %>/adminView/assets/demo/datatables-demo.js"></script>
    </body>
</html>