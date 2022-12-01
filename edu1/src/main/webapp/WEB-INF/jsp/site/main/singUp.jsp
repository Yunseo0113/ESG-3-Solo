<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->
<div id="contents">

    <!-- sub title -->
    <div class="sub-title">
        <div class="post-meta" style="text-align: center;"><span class="date">&bullet; 회원가입 &bullet;</span> <span class="mx-1"></span></div>
        
        <a href="<c:url value="/"/>" class="back-btn"><i class="i_go_back"></i></a>
    </div>
    <!-- //sub title -->
    <!-- container -->
    <div id="container" class="sub-wrap ">
		<!-- Singup Modal -->

	<form id="registForm" name="registForm" method="post"
		enctype="multipart/form-data">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">ID</label> <input
								type="text" class="form-control" id="singid"
								aria-describedby="emailHelp" placeholder="아이디">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">PASSWORD</label>
							<input type="password" class="form-control" id="signpw" placeholder="비밀번호">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">NICKNAME</label>
							<input type="text" class="form-control" id="singnick"
								aria-describedby="emailHelp" placeholder="닉네임">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">BIRTH</label>
							<input type="text" class="form-control" id="singbirth"
								aria-describedby="emailHelp" placeholder="ex) 19950113">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">PREFER</label>
								<select class="form-select">
								<option value="없음">선호전통주</option>
								<option value="탁주">탁주</option>
								<option value="약주">약주</option>
								<option value="소주">소주</option>
								<option value="증류주">증류주</option>
								<option value="리큐르">리큐르</option>
								<option value="과실주">과실주</option>
								<option value="기타주류">기타주류</option>
								</select>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal" style="">취소</button>
						<button type="button" class="btn btn-success" onclick="()">회원가입</button>
					</div>
			</div>
		</div>
	</form>
	<!--  end singup modal -->
    </div>
    <!-- //container -->
</div>
<div class="asf"></div>
<!-- //contents -->
