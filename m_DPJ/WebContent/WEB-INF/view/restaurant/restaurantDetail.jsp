<%@page import="kr.or.ddit.restInfo.vo.RestInfoVO"%>
<%@page import="kr.or.ddit.restInfo.vo.RestFavVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<RestFavVO> favList = (List<RestFavVO>)request.getAttribute("favList");
	RestInfoVO rv = (RestInfoVO)request.getAttribute("restVO");
	int dipsCnt = (Integer)request.getAttribute("dipsCnt");
%>
<%@include file="/WEB-INF/view/common/mainNav.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
      <!-- Sidebar Widgets Column -->
	      <div class="col-md-4">
	        <!-- Categories Widget -->
	        <div class="card my-4">
	          <h5 class="card-header">세호불백</h5>
	          <img class="col-12" src="/DPJ/assets/img/restau/seho.jpg">
	          <div class="card-body">
	            <div class="row">
	              <div class="col-lg-12 justify-content-center">
	              	<table class="table">
						<tr class="d-flex">
			              	<td class="col-lg-4">가격&nbsp;</td>
			              	<td class="col-lg-5"><a class="btn btn-md btn-success">8000원</a></td>
			              	<td class="col-lg-3"></td>
	              		</tr>
						<tr class="d-flex">
			              	<td class="col-lg-4">거리&nbsp;</td>
			              	<td class="col-lg-5"><a class="btn btn-md btn-info">10분(600m)</a></td>
			              	<td class="col-lg-3"></td>
	              		</tr>
						<tr class="d-flex">
			              	<td class="col-lg-4">분류&nbsp;</td>
			              	<td class="col-lg-5"><a class="btn btn-md btn-danger">한식</a></td>
			              	<td class="col-lg-3"></td>			              	
	              		</tr>
			              	<hr>
						<tr class="d-flex">
			              	<td class="col-lg-4">평점&nbsp;</td>
			              	<td class="col-lg-8">
						<span class='star-rating'>
						<span style ="width:80%"></span>
						</span>
			              	</td>
	              		</tr>
						<tr class="d-flex">
			              	<td class="col-lg-4">주력메뉴&nbsp;</td>
			              	<td class="col-lg-5"><a class="btn btn-md btn-warning">뚝불</a></td>
			              	<td class="col-lg-3"></td>
	              		</tr>
	              	</table>
	              </div>
	              <div class="col-lg-6">
	              </div>
	            </div>
	          </div>
	        </div>
		<!-- Search Widget -->
	        <div class="card my-4 d-flex justify-content-end">
	          <h5 class="card-header">다른식당 검색하러 가기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	          <a class="btn btn-md btn-primary " href="">목록</a></h5>
	          
	          <div class="card-body">
	            <div class="input-group">
	              <input type="text" class="form-control" placeholder="식당이름으로 찾기">
	              <span class="input-group-append">
	                <button class="btn btn-secondary" type="button">찾기</button>
	              </span>
	            </div>
	          </div>
	        </div>
	
	      </div>
			
			<!-- Blog Entries Column -->
			<div class="col-md-8">
				<h1 class="my-4">
					식당 검색결과
				</h1>
				<!-- Blog Post -->
				<div class="card mb-4">
					<div class="card-body">
						<table class="table" >
							<tbody>
								<tr class="d-flex text-left">
									<th class="col-2 " >식당 이름</th>
									<th class="col-3 " name="boardTitle"><%=rv.getRestName() %></th>
									<th class="col-3 "></th>
									<th class="col-2 "><small>찜</small></th>
									<th class="col-1 ">
									<%
										Boolean chkdips = false;
										for(int i=0; i<favList.size(); i++){
											if("1".equals(favList.get(i).getRestCode())){//식당코드 :1은 세호불백임
												chkdips = true;
											}
										}
										if(chkdips == true){
									%>
									<img alt="dipsY" src="<%=request.getContextPath() %>/assets/img/restau/heart.png" id="favbtn"></th>
									<th class="col-1 "name="dipsCnt"><small><%=dipsCnt%></small></th>
									<%
										} else if(chkdips == false){
											
									%>
									<img alt="dipsN" src="<%=request.getContextPath() %>/assets/img/restau/eheart.png" id="favbtn"></th>
									<th class="col-1 "name="dipsCnt"><%=dipsCnt%></th>
											
									<%
										}
									%>
								</tr>
								<tr class="d-flex text-left">
									<td class="col-2 ">작성자</td>
									<td class="col-3 "name="userId">세호아자씨아이디</td>
									<th class="col-3 "></th>
									<td class="col-2 "><small>작성일</small></td>
									<td class="col-2 "name="boardDate"><small>오늘</small></td>
								</tr>
								<tr class="d-flex text-left">
									<td class="col-12"><img class="col-12" src="/DPJ/assets/img/menu/sehoMenuList.jpg">
									</td>
								</tr>
								<tr class="d-flex text-left">
									<td class="col-12">
									안뇽하세요 세호 머스크 임미다. 요즘 세호 불백 맛이 괜춘 하죠? 장사 잘되라고 이벤트 한번 헙니다.
									</td>
								</tr>
							</tbody>
						</table>
						<div class="card-footer d-flex justify-content-center">
							<a class="btn btn-lg btn-secondary" type="button" href="list.do">목록으로 돌아가기</a>
								&nbsp;&nbsp;
							<a class="btn btn-lg btn-secondary" type="submit" href="update.do">수정하기</a>
								&nbsp;&nbsp;
							<a class="btn btn-lg btn-secondary" type="reset" href="delete.do">삭제하기</a>
					</div>
						</div>
					</div>
 					<div class="card-footer">
						<h2 class="card-title">리뷰보기</h2>
					</div>
					<div class="card-body">
						<table class="table table-sm table-hover" >
							<tbody>
								<tr class="d-flex text-left">
									<th class="col-3"><small>403호 삼촌</small></th>
									<th class="col-7"><small>2021-04-24</small></th>
									<th class="col-1 text-sm-right"><small>수정</small></th>
									<th class="col-1 text-sm-right"><small>삭제</small></th>
								</tr>
								<tr class="d-flex text-left">
									<th class="col-12">마시 조씁미다</th>
								</tr>
							</tbody>
							<tbody>
								<tr class="d-flex text-left">
									<th class="col-3"><small>소호차이나</small></th>
									<th class="col-7"><small>2021-04-24</small></th>
									<th class="col-1 text-sm-right"><small>수정</small></th>
									<th class="col-1 text-sm-right"><small>삭제</small></th>
								</tr>
								<tr class="d-flex text-left">
									<th class="col-12">장사가 느므 잘되믄 우리집은 우째?</th>
								</tr>
							</tbody>
							<tbody>
								<tr class="d-flex text-left">
									<th class="col-3"><small>403호 강아지</small></th>
									<th class="col-7"><small>2021-04-24</small></th>
									<th class="col-1 text-sm-right"><small>수정</small></th>
									<th class="col-1 text-sm-right"><small>삭제</small></th>
								</tr>
								<tr class="d-flex text-left">
									<th class="col-12">양이 마는거 가타요</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- Pagination -->
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item"><a class="page-link" href="#">&larr;
							Older</a></li>
					<li class="page-item disabled"><a class="page-link" href="#">Newer
							&rarr;</a></li>
				</ul>

			</div>


		</div>
		<form id="fm" method="post">
			<input type="hidden" name="userId" id="userId" value="<%=userId%>">
			<input type="hidden" name="restCode" id="restCode" value="1">
		</form>
	</div>
	<script type="text/javascript">
		$("#favbtn").click(function() {
			if("dipsY" == ($("#favbtn").attr("alt"))){
				$("#favbtn").attr("src", "<%=request.getContextPath()%>/assets/img/eheart.png");
				$("#fm").attr("action", "<%=request.getContextPath()%>/searchRest/insertDips.do");
				$("#fm").submit();
				
			} else if("dipsN" == ($("#favbtn").attr("alt"))){
				$("#favbtn").attr("src","<%=request.getContextPath()%>/assets/img/heart.png");
				$("#fm").attr("action", "<%=request.getContextPath()%>/searchRest/deleteDips.do");
				$("#fm").submit();
			}
			
		});
	</script>
	<!-- /.container -->
	
<%@include file="/WEB-INF/view/common/mainFooter.jsp"%>