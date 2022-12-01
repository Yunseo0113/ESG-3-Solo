package kr.co.jointree.edu1.site.koalaTest.web;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.cmm.model.JtFileDetail;
import egovframework.com.cmm.paging.PaginationInfo;
import egovframework.com.cmm.paging.PagingAccess;
import egovframework.com.cmm.service.ComCmmFileService;
import egovframework.com.cmm.util.EgovClntInfo;
import egovframework.com.cmm.util.EgovStringUtil;
import kr.co.jointree.edu1.site.koalaTest.service.koalaTestService;
import kr.co.jointree.edu1.site.sample1.service.SiteSample1Service;
@Controller
public class koalaTestController {

    public static Logger log = LoggerFactory.getLogger(koalaTestController.class);

    @Autowired
    koalaTestService koalaTestService;
    
    @Autowired
    ComCmmFileService comCmmFileService;
    
    @Autowired
    PagingAccess pagingAccess;
    
    /**
     * 리스트 화면
     * @param request
     * @param model
     * @return
     */
    
    /**
     * 등록/수정 화면
     * @param request
     * @param model
     * @return
     */
   
    /**
     * 등록/수정 하기
     * @param request
     * @param model
     * @return
     * @throws IOException 
     * @throws IllegalStateException 
     */
    
    @GetMapping(value = {"/koalaTest/login.do"})
    public String loginkoway(
    		HttpServletRequest request
    		,Model model
    		,@RequestParam Map<String, Object> paramMap
    ) {
        log.debug("login");
        //tiles.xml 을 사용해서 jsp를 불러오는거임 . name
        return "/site/main/login.site";
    }
    @GetMapping(value = {"/koalaTest/singUp.do"})
    public String singUpkoway(
    		HttpServletRequest request
    		,Model model
    		,@RequestParam Map<String, Object> paramMap
    ) {
        log.debug("singUp");
        //tiles.xml 을 사용해서 jsp를 불러오는거임 . name
        return "/site/main/singUp.site";
    }
  
    @GetMapping(value = {"/koalaTest/selfDiagnosis.do"})
    public String koalaMaker(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koalaTest/selfDiagnosis.site";
    }
    @GetMapping(value = {"/koalaTest/alcholTest.do"})
    public String alcholTest(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koalaTest/alcholTest.site";
    }
}
