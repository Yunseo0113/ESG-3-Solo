<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>

<header class="lh-1 py-3">
	<div class="row flex-nowrap justify-content-between align-items-center">
		<div class="col-4">
			<h1>
				<a class="text-dark text-decoration-none" href="/main.do">코알라</a>
			</h1>
		</div>
		<div class="col-4 d-flex justify-content-end align-items-center">
			<!-- 			<a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a> -->
			<!-- 			<a class="btn btn-sm btn-outline-secondary" href="#">login</a> -->

			<button class="btn btn-sm btn-outline-secondary openBtn"
				data-toggle="modal" data-target="#SingupModal" id="SingupModal1">Sing
				up</button>
			<button class="btn btn-sm btn-outline-secondary openBtn"
				data-toggle="modal" data-target="#loginModal" id="loginModal1">login</button>
		</div>
	</div>
	<!-- Login Modal -->
	<form id="loginForm" name="loginForm" method="post" enctype="multipart/form-data">
	<div class="modal fade" id="loginModal" tabindex="-1"
		aria-labelledby="loginModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="text-align: center;">로그인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">ID</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Password</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1">
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal" style="">취소</button>
					<button type="button" class="btn btn-primary">로그인</button>
				</div>
			</div>
		</div>
	</div>
</form>
	<!-- end login modal -->
	<!-- Singup Modal -->

	<form id="registForm" name="registForm" method="post" enctype="multipart/form-data">
		<div class="modal fade" id="SingupModal" tabindex="-1"
			aria-labelledby="SingupModal" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" style="text-align: center;">회원가입</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">ID</label> <input
								type="text" class="form-control" id="singid"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">PASSWORD</label>
							<input type="password" class="form-control" id="signpw">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">NICKNAME</label>
							<input type="text" class="form-control" id="singnick"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">BIRTH</label>
							<input type="text" class="form-control" id="singbirth"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">PREFER</label>
							<input type="text" class="form-control" id="singpre"
								aria-describedby="emailHelp">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal" style="">취소</button>
						<button type="button" class="btn btn-success" onclick="SingUp()">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!--  end singup modal -->

</header>
<script>
	$('#loginModal1').click(function(e) {
		e.preventDefault();
		$('#loginModal').modal("show");
	});
	$('#SingupModal1').click(function(e) {
		e.preventDefault();
		$('#SingupModal').modal("show");
	});
	//저장 버튼 클릭시
	function SingUp() {
		var singid = $.trim($('#signid').val());
		var signpw = $.trim($('#signpw').val());
		var singnick = $.trim($('#singnick').val());
		var singbirth = $.trim($('#singbirth').val());
		var singpre = $.trim($('#singpre').val());

		

		url = '/signup.do';
		$('#registForm').form('submit', {
			url : url,
			onSubmit : function() {
				return $(this).form('validate');
			},
			success : function(res) {
				//console.log(res);
				var res = JSON.parse(res);
				if (res.result == "success") {
					self.close();
				} else if (res.result == "duplicate") {

				} else {
				}
			}
		});
	}
</script>
