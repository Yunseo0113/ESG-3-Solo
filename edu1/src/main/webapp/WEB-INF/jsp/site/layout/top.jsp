<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>

<header class="lh-1 py-3">
	<div class="row flex-nowrap justify-content-between align-items-center">
		<div class="col-2">
			<a href="/main.do"><img
				src="data:image/jpeg;base64,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"
				alt="코알라" class="img111"></a>
			<h1>
				<a class="text-dark text-decoration-none" href="/main.do">코알라</a>
			</h1>
		</div>
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between"
			style="width: 974px;">
			<nav id="navbar" class="navbar">
				<ul class="nav nav-pills justify-content-center"
					style="margin-left:; text-align: center;">
					<c:set var="path"
						value="${requestScope['javax.servlet.forward.servlet_path']}" />
					<li class="dropdown btn btn-sm btn-outline-secondary openBtn "><a
						class="atop">코알라<i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/koalaIntroduce.do' ? 'active':'green'}"
								href="/koala/koalaIntroduce.do">코알라 소개</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/liqourIntroduce.do' ? 'active':''}"
								href="/koala/liqourIntroduce.do">전퉁주란</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/monthLiquor.do' ? 'active':''}"
								href="/koala/monthLiquor.do">이달의 전통주</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/traditionalLiquor.do' ? 'active':''}"
								href="/koala/traditionalLiquor.do">전통주 정보</a></li>
						</ul></li>
					<li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a
						class="atop">코알라 만들기<i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaMaker/liquorRecipe.do' ? 'active':''}"
								href="/koalaMaker/liquorRecipe.do">전통주 제조법</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaMaker/bestLiquor.do' ? 'active':''}"
								href="/koalaMaker/bestLiquor.do">인기 제조법</a></li>
						</ul></li>
					<li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a
						class="atop"><span>코알라 테스트</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaTest/alcholTest.do' ? 'active':''}"
								href="/koalaTest/alcholTest.do">술 취향 테스트</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaTest/selfDiagnosis.do' ? 'active':''}"
								href="/koalaTest/selfDiagnosis.do">알콜중독 자가진단</a></li>
						</ul></li>

					<li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a
						class="atop">코뮤니티<i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/board.do' ? 'active':''}"
								href="/kommunity/board.do">게시판</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/meeting.do' ? 'active':''}"
								href="/kommunity/meeting.do">매장 홍보</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/storePromotion.do' ? 'active':''}"
								href="/kommunity/storePromotion.do">전퉁주 번개</a></li>
						</ul></li>

					<li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a
						class="atop">코웨이<i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koWay/koway.do' ? 'active':''}"
								href="/koWay/koway.do">Ko-Way 지도</a></li>
							<li class="btn btn-sm btn-outline-secondary openBtn libg"><a
								class="nav-link p-3 text-decoration-none link-light ${path eq '/koWay/festival.do' ? 'active':''}"
								href="/koWay/festival.do">축제 정보</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
		<div class="col-2 d-flex justify-content-end align-items-center">
			<!-- 			<a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a> -->
			<!-- 			<a class="btn btn-sm btn-outline-secondary" href="#">login</a> -->

			<button class="btn btn-sm btn-outline-secondary openBtn"
				 onclick="location.href='singUp.do'">Sing
				up</button>
			<button class="btn btn-sm btn-outline-secondary openBtn"
				 onclick="location.href='login.do'">login</button>
		</div>
	</div>
	
	

</header>
<script>
	
</script>
