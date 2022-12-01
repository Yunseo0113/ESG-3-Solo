<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->
<div id="contents">

    <!-- sub title -->
    <div class="sub-title">
        <div class="post-meta" style="text-align: center;"><span class="date">&bullet; 술 취향 테스트 &bullet;</span> <span class="mx-1"></span></div>
        <script type="text/javascript">
var step_idx = 0;
var dan=0;
var sin=0;
var acl_idx=0;
var body=0;
var flav=0;
var acl_idx=0;
$(document).bind('contextmenu', function(e){
    return false;
}); 
 
$(document).ready(function(e) {
	// 테스트 시작하기
    $("#btn_start").click(function () {
		$('.page1').hide();
		$('.page2').show();
    });

	// 결과보기
    $("#btn_result").click(function () {

		if( step_idx <= 1 ) step_idx = 1;
		step_idx++;

		if( step_idx <= 6 ){
		    $('#step1').hide();
		    $('#step2').hide();
		    $('#step3').hide();
		    $('#step4').hide();
		    $('#step5').hide();
		    $('#step6').hide();

		    $('#step'+step_idx).show();
			return false;
		}

		dan = $('input[name=dan]:checked').val();
		sin = $('input[name=sin]:checked').val();
		cjd = $('input[name=cjd]:checked').val();
		body = $('input[name=body]:checked').val();
		flav = $('input[name=flav]:checked').val();
		acl_idx = $('input[name=alcholVal]:checked').val();
		if( acl_idx < 1 ){
			swal({html:true, title: "", text: '알콜도수를 선택하세요.', type: "warning", confirmButtonColor: "#530f86"});
			return false;
		}
		else{
			$('.page2').hide();
			$('.page3').show();

			setTimeout(function() { 
// 				ShowResult();
				$('.page3').hide();
				$('.page4').show();
		console.log("단맛 = " + dan);
		console.log("신맛 = " + sin);
		console.log("청량감 = " + cjd);
		console.log("바디감 = " + body);
		console.log("향 = " + flav);
		console.log("알콜 도수 = " + acl_idx);
			}, 3000);
		}
    });
}); 


</script>
</head>

<body>
<div class="wrap" style="text-align:center;">
  <div style="width:100%;max-width:1080px;margin:0 auto;text-align:center;">
	<div class="page1">
    	<div class="logo_b"><img src="data:image/jpeg;base64,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" style="width:162px;height:162px;"/></div>
        <div class="txt">
        	나에게 잘 맞는<span>우리술</span>
            <p>인공지능 소믈리에 테스트</p>
        </div>
<!--         <div class="toon"><img src="/aiSommelier/img/character1.gif" /></div> -->
        <div class="btn">
        	<a href="javascript:;" id="btn_start">테스트 시작하기</a>
        </div>
			<p style="font-size:11px">*지나친 음주는 뇌졸증, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다.</p>
    </div>

	<div class="page2" style="display:none;">
    	<div class="top">
        	<div class="top_txt"><span>더술닷컴 소믈리에</span>나에게 잘 맞는 우리술은?</div><br>
            <div class="top_logo"></div>
        </div>

        <div class="content">   
        	<!-- 단맛 -->
			<div class="box sweet" id="step1" style="    width: 100%; margin-bottom: 8%;">
            	<div class="box_txt" ><p>원하시는 <span class="p">단맛</span>의 정도를</p>선택해 주세요.</div>
              
               
                	<label class="form-check-label" > <input class="form-check-input"type="radio" name="dan" value="0"> 0</label><br>
                	<label class="form-check-label"> <input class="form-check-input"type="radio" name="dan" value="1"> 1</label><br>
                	<label class="form-check-label"> <input class="form-check-input"type="radio" name="dan" value="2"> 2</label><br>
                	<label class="form-check-label"> <input class="form-check-input"type="radio" name="dan" value="3"> 3</label><br>
                	<label class="form-check-label"> <input class="form-check-input"type="radio" name="dan" value="4"> 4</label><br>
                	<label class="form-check-label"> <input class="form-check-input"type="radio" name="dan" value="5"> 5</label>
               
            </div>

        
        	<!-- 신맛 -->
        	<div class="box sour" id="step2" style="display:none;">
            	<div class="box_txt"><p>원하시는 <span class="p">신맛</span>의 정도를</p>선택해 주세요.</div>
                	<label> <input type="radio" name="sin" value="0"> 0</label>
                	<label> <input type="radio" name="sin" value="1"> 1</label>
                	<label> <input type="radio" name="sin" value="2"> 2</label>
                	<label> <input type="radio" name="sin" value="3"> 3</label>
                	<label> <input type="radio" name="sin" value="4"> 4</label>
                	<label> <input type="radio" name="sin" value="5"> 5</label>
            </div>

        
       	    <!-- 청량감 -->
        <div class="box refresh" id="step3" style="display:none;">
            	<div class="box_txt"><p>원하시는 <span class="p">청량감</span>을</p><p>선택해 주세요.</p><span class="small">(뒷맛이 깔끔한 정도)</span></div>
            	<label> <input type="radio" name="dan" value="0"> 0</label>
                	<label> <input type="radio" name="cjd" value="1"> 1</label>
                	<label> <input type="radio" name="cjd" value="2"> 2</label>
                	<label> <input type="radio" name="cjd" value="3"> 3</label>
                	<label> <input type="radio" name="cjd" value="4"> 4</label>
                	<label> <input type="radio" name="cjd" value="5"> 5</label>
            </div>
            
        
        	<!-- 바디감 -->
        <div class="box body" id="step4" style="display:none;">
            	<div class="box_txt"><p>원하시는 <span class="p">바디감</span>을</p>선택해 주세요.</div>
          	<label> <input type="radio" name="dan" value="0"> 0</label>
                	<label> <input type="radio" name="body" value="1"> 1</label>
                	<label> <input type="radio" name="body" value="2"> 2</label>
                	<label> <input type="radio" name="body" value="3"> 3</label>
                	<label> <input type="radio" name="body" value="4"> 4</label>
                	<label> <input type="radio" name="body" value="5"> 5</label>
            </div>
        
        	<!-- 향 -->
        	<div class="box scent" id="step5" style="display:none;">
            	<div class="box_txt"><p>원하시는 <span class="p">향</span>의 정도를</p><p>선택해 주세요.<p><span class="small">(냄새의 진한 정도)</span></div>
             	<label> <input type="radio" name="dan" value="0"> 0</label>
                	<label> <input type="radio" name="flav" value="1"> 1</label>
                	<label> <input type="radio" name="flav" value="2"> 2</label>
                	<label> <input type="radio" name="flav" value="3"> 3</label>
                	<label> <input type="radio" name="flav" value="4"> 4</label>
                	<label> <input type="radio" name="flav" value="5"> 5</label>
            </div>
        
        	<!-- 알콜도수 -->
        	<div class="box acl" id="step6" style="display:none;">
            	<div class="box_txt"><p>원하시는 <span class="p">알콜도수</span>를</p>선택해 주세요.</div>
            	
                <ul class="box_choice">
                	<li class="zero box_choice_graph_bg" ><input type="radio" value="0" name="alcholVal">0</li>
                	<li class="one"><input type="radio" value="5" name="alcholVal">5</li>
                    <li class="two"><input type="radio" value="10" name="alcholVal">10</li>
                    <li class="three"><input type="radio" value="15" name="alcholVal">15</li>
                    <li class="four"><input type="radio" value="20" name="alcholVal">20</li>
                    <li class="five"> <input type="radio" value="25" name="alcholVal">25</li>
                    <li class="six"><input type="radio" value="30" name="alcholVal">30</li>
                    <li class="seven"><input type="radio" value="35" name="alcholVal">35</li>
                    <li class="eight"><input type="radio" value="40" name="alcholVal">40</li>
                    <li class="nine"><input type="radio" value="45" name="alcholVal">45</li>
                    <li class="ten"><input type="radio" value="50" name="alcholVal">50</li>
                </ul>
                <ul class="box_number">
                	<li class="zero">0</li>
                	<li class="one">5</li>
                    <li class="two">10</li>
                    <li class="three">15</li>
                    <li class="four">20</li>
                    <li class="five">25</li>
                    <li class="six">30</li>
                    <li class="seven">35</li>
                    <li class="eight">40</li>
                    <li class="nine">45</li>
                    <li class="ten">50</li>
                </ul>
            </div>

            <div class="toon" id="page2_character"></div>

            <div class="btn">
            	<a href="javascript:;" id="btn_result">다음으로</a>
            </div>
				<p style="font-size:11px">*지나친 음주는 뇌졸증, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다.</p>

        </div>
    </div>

	
	<div class="page3" style="display:none;">
    	<div class="top">
        	<div class="top_txt"><span>코알라 소믈리에</span>나에게 잘 맞는 우리술은?</div>
            <div class="top_logo"></div>
        </div>
        <div class="txt">
        	나에게 가장 잘 맞는<span>우리술을 찾고 있습니다<i>!</i></span>
        </div>
        <div class="toon" id="page3_character"></div>
    </div>
	
	<div class="page4" style="display:none;">
    	<div class="top">
        	<div class="top_txt"><span>코알라 소믈리에</span>나에게 잘 맞는 우리술은?</div>
            <div class="top_logo"></div>
        </div>
        <div class="content">  
		  <div id="id_result">
        	<!-- box1 -->
        	 <div class="box">
				<div class="sool">
					<div class="type">일반증류주</div>
                    <img src="/aiSommelier/img/sool/01.jpg" />
                </div>
                <ul class="box_con">
					<li class="brand">양촌감(영) / 충남 논산</li>
                    <li class="name">감보드카</li>
                    <li class="volume"><span>용량</span>375ml</li>
                    <li class="price"><span>가격</span>14,000원(인터넷 구매가능)</li>
                    <li class="box_con_img">
						<div class="level"><img src="/aiSommelier/img/level/01.png" /></div>
                        <div class="graph"><img src="/aiSommelier/img/graph/01.png" /></div>
                    </li>
                </ul>
            </div>
            
			<div class="box">
				<div class="sool">
					<div class="type">과실주</div>
                    <img src="/aiSommelier/img/sool/02.jpg" />
                </div>
                <ul class="box_con">
					<li class="brand">청도감와인㈜ / 경북 청도</li>
                    <li class="name">감그린 스페셜</li>
                    <li class="volume"><span>용량</span>750ml</li>
                    <li class="price"><span>가격</span>25,000원(인터넷 구매가능)</li>
                    <li class="box_con_img">
						<div class="level"><img src="/aiSommelier/img/level/02.png" /></div>
                        <div class="graph"><img src="/aiSommelier/img/graph/02.png" /></div>
                    </li>
                </ul>
            </div>
            
			<div class="box">
				<div class="sool">
					<div class="type">과실주</div>
                    <img src="/aiSommelier/img/sool/03.jpg" />
                </div>
                <ul class="box_con">
					<li class="brand">청도감와인㈜ / 경북 청도</li>
                    <li class="name">감그린 아이스와인</li>
                    <li class="volume"><span>용량</span>750ml</li>
                    <li class="price"><span>가격</span>89,000원(인터넷 구매가능)</li>
                    <li class="box_con_img">
						<div class="level"><img src="/aiSommelier/img/level/03.png" /></div>
                        <div class="graph"><img src="/aiSommelier/img/graph/03.png" /></div>
                    </li>
                </ul>
            </div> 
		  </div>

            <div class="btn">
            	<a href="javascript:location.reload();">처음으로</a><br/>
				<p style="font-size:11px">*지나친 음주는 뇌졸증, 기억력 손상이나 치매를 유발합니다. 임신 중 음주는 기형아 출생 위험을 높입니다.</p>
            </div>
        </div>
    </div>
  </div>
</div>
        
        <a href="<c:url value="/"/>" class="back-btn"><i class="i_go_back"></i></a>
    </div>
    <!-- //sub title -->
    <!-- container -->
    <div id="container" class="sub-wrap ">
		<!--예시로 3개의 video 태그-->
<!-- 		<video ref="aaa_video" autoplay/> -->
<!-- 		<video ref="bbb_video" autoplay/> -->
<!-- 		<video ref="ccc_video3" autoplay/> -->
    </div>
    <!-- //container -->
</div>
<div class="asf"></div>
<!-- //contents -->
