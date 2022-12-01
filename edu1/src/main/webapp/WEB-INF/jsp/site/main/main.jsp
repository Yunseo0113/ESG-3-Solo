<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib
	prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page
	session="false"%><!-- contents -->
<div id="contents">

	<!-- sub title -->
	<div class="sub-title">
		<div class="post-meta" style="text-align: center;">
			<span class="date">&bullet; 메인화면 &bullet;</span> <span class="mx-1"></span>
		</div>
		<a href="<c:url value="/"/>" class="back-btn"><i class="i_go_back"></i></a>
	</div>
	<!-- //sub title -->
	<!-- container -->
	<div id="container" class="sub-wrap">
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">swiper-slide1</div>
			<div class="swiper-slide">swiper-slide2</div>
			<div class="swiper-slide">swiper-slide3</div>
		</div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
	</div>
	
	</div>
	<!-- //container -->
	
</div>
<div class="asf"></div>
<!-- //contents -->
<script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
		navigation : {
			prevEl : '.swiper-button-prev',
			nextEl : '.swiper-button-next',
		},
		pagination : {
			el : '.swiper-pagination',
			type : 'bullets',
		},
		autoplay : {
			delay : 2000,
		},
		observer : true,
		observeParents : true,
		 spaceBetween: 30, // 슬라이드 간의 거리(px 단위)
		    loop: true, // 슬라이드 무한 반복
		    centeredSlides: true, // 다음 슬라이드의 모습이 50%만 보입니다.(중앙)
		    slidesPerView: 3, // 보여지는 슬라이드 수

	});
</script>
