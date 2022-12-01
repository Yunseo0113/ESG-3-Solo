<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>

 <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
<nav id="navbar" class="navbar">
	<ul class="nav nav-pills justify-content-center" style="margin-left: 250px; text-align: center;">
		<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" /> 
		<li class="dropdown btn btn-sm btn-outline-secondary openBtn "  ><a class="atop">코알라<i class="bi bi-chevron-down dropdown-indicator"></i></a>
          <ul>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/koalaIntroduce.do' ? 'active':'green'}" href="/koala/koalaIntroduce.do">코알라 소개</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/liqourIntroduce.do' ? 'active':''}" href="/koala/liqourIntroduce.do">전퉁주란</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/monthLiquor.do' ? 'active':''}" href="/koala/monthLiquor.do">이달의 전통주</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koala/traditionalLiquor.do' ? 'active':''}" href="/koala/traditionalLiquor.do">전통주 정보</a></li>
            </ul>
          </li>
          <li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a class="atop">코알라 만들기<i class="bi bi-chevron-down dropdown-indicator"></i></a>
          <ul>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaMaker/liquorRecipe.do' ? 'active':''}" href="/koalaMaker/liquorRecipe.do">전통주 제조법</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaMaker/bestLiquor.do' ? 'active':''}" href="/koalaMaker/bestLiquor.do">인기 제조법</a></li>
            </ul>
          </li>
          <li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a  class="atop"><span>코알라 테스트</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaTest/alcholTest.do' ? 'active':''}" href="/koalaTest/alcholTest.do">술 취향 테스트</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koalaTest/selfDiagnosis.do' ? 'active':''}" href="/koalaTest/selfDiagnosis.do">알콜중독 자가진단</a></li>
            </ul>
          </li>

          <li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a  class="atop">코뮤니티<i class="bi bi-chevron-down dropdown-indicator"></i></a>
           <ul>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/board.do' ? 'active':''}" href="/kommunity/board.do">게시판</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/meeting.do' ? 'active':''}" href="/kommunity/meeting.do">매장 홍보</a></li>
              <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/kommunity/storePromotion.do' ? 'active':''}" href="/kommunity/storePromotion.do">전퉁주 번개</a></li>
            </ul>
          </li>
          
          <li class="dropdown btn btn-sm btn-outline-secondary openBtn"><a  class="atop">코웨이<i class="bi bi-chevron-down dropdown-indicator"></i></a>
           <ul>
	   		 <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koWay/koway.do' ? 'active':''}"  href="/koWay/koway.do">Ko-Way 지도</a></li>
	   		 <li class="btn btn-sm btn-outline-secondary openBtn libg"><a class="nav-link p-3 text-decoration-none link-light ${path eq '/koWay/festival.do' ? 'active':''}"  href="/koWay/festival.do">축제 정보</a></li>
            </ul>
          </li>
	</ul>
	</nav>
</div>
