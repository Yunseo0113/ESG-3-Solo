<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib
	prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page
	session="false"%><!-- contents -->
<div id="contents">

	<!-- sub title -->
	<div class="sub-title">
		
		<div class="post-meta" style="text-align: center;"><span class="date">&bullet; 로그인 &bullet;</span> <span class="mx-1"></span></div>
		
		 <a href="<c:url value="/"/>" class="back-btn"><i
			class="i_go_back"></i></a>
	</div>
	<!-- //sub title -->
	<!-- container -->
	<!-- Login Modal -->
	
	
	<div id="container" class="sub-wrap ">
		<form id="loginForm" name="loginForm" method="post"
			enctype="multipart/form-data">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-body">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">ID</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="아이디">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="비밀번호">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger"
								data-bs-dismiss="modal" style="">취소</button>
							<button type="button" class="btn btn-primary">로그인</button>
						</div>
					</div>
				</div>
		</form>
	</div>
	<!-- end login modal -->
	<!-- //container -->
</div>
<div class="asf"></div>
<!-- //contents -->
