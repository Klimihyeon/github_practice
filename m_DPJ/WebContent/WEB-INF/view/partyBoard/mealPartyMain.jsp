<%@page import="kr.or.ddit.partyBoard.vo.PartyBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/common/mainNav.jsp"%>


<%

List<PartyBoardVO> partyList = (List<PartyBoardVO>)request.getAttribute("list");  
int countJoin = (Integer) request.getAttribute("countJoin");

%>



        <!-- Masthead-->
        <header class="masthead2">
            <div class="container">
            	<div class="text-light bg-gray ">
	                <div class="masthead-heading text-uppercase">같이 밥먹어조!</div>
	            </div>
                <a class="btn btn-info btn-xl text-uppercase js-scroll-trigger" href="#services">파티 구경가기</a>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<h1 class="my-4">
					Meal파티 게시판
				</h1>
				
				<!-- Blog Post -->
				<div class="card mb-4">
					<div class="card-footer text-muted col-12">
					<h2 class="card-title">모집중인 밀파티 목록</h2>
						<table class="table col-12 ">
							<tbody class="col-12">
								<tr class="col-12 d-flex justify-content-start">
									<th class="p-2 col-1"></th>
									<th class="p-2 col-1">인원</th>
									<th class="p-2 col-3">제목</th>
									<th class="p-2 col-2">작성자</th>
									<th class="p-2 col-1">작성일</th>
									<th class="p-2 col-2">파티마감</th>
									<th class="p-2 col-1">분류</th>
									<th class="p-2 col-1"></th>
								</tr>
								
															<%
								int partySize = partyList.size();
								if(partySize > 0) {
									for(int i = 0; i < partySize; i++) {
										if(partyList.get(i).getAtchFileId() > 0) {
										}
							%>
								
								
								<tr class="col-12 d-flex justify-content-start">
									<td class="col-1">
									<%
										if(partyList.get(i).getPartyYn().equals("N")) {
									%>
											<span class="badge badge-primary p-2 font-weight-normal">모집중</span>								
									<%		
										} else {
									%>
											<span class="badge badge-danger p-2 font-weight-normal">마감</span>								
									<%
										}
									%>											
									</td>
									<td class="p-2 col-1"><%=partyList.get(i).getCountList()%>/4</td>
									<td class="p-2 col-3"><%=partyList.get(i).getBoardTitle() %></td>
									<td class="p-2 col-2"><%=partyList.get(i).getUserId() %></td>
									<td class="p-2 col-1"><%=partyList.get(i).getBoardDate() %></td>
									<td class="p-2 col-2"><%=partyList.get(i).getPartyEnd() %></td>
									<td class="p-2 col-1"><%=partyList.get(i).getRestType() %></td>
									<td class="p-2 col-1">
										<a id="seq" class="btn btn-info" href="select.do?boardSeq=<%=partyList.get(i).getBoardSeq()%>">
											조회
										</a>
									</td>
								</tr>
							<%
									}
								} else {
		
							%>
							<tr>
								<td colspan="7">게시판 정보가 없습니다.</td>
							</tr>
							<%
							}
							%>
								<tr class="col-12 d-flex justify-content-start">
									<td class="col-12">
								<%
									if(userType == null) {
								%>
										<span>DDIT 인증 회원만 파티 등록이 가능합니다.</span>
								<%
									} else if(userType.equals("일반회원") || userType.equals("관리자")) {
								%>
										<a class="btn btn-warning btn-lg float-right" href="">파티 등록</a>
								<%		
									} else {
								%>
										<span>DDIT 인증 회원만 파티 등록이 가능합니다.</span>
								<%										
									}
								%>
									</td>
								</tr>	
															
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

	</div>

        </section>
	
<%@include file="/WEB-INF/view/common/mainFooter.jsp"%>
