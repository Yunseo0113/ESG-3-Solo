package kr.co.jointree.edu1.site.koala.web;

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
import kr.co.jointree.edu1.site.koala.service.koalaService;
import kr.co.jointree.edu1.site.sample1.service.SiteSample1Service;
@Controller
public class koalaController {

    public static Logger log = LoggerFactory.getLogger(koalaController.class);

    @Autowired
    koalaService koalaService;
    
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
    @GetMapping(value = {"/koala/login.do"})
    public String loginkoway(
    		HttpServletRequest request
    		,Model model
    		,@RequestParam Map<String, Object> paramMap
    ) {
        log.debug("login");
        //tiles.xml 을 사용해서 jsp를 불러오는거임 . name
        return "/site/main/login.site";
    }
    @GetMapping(value = {"/koala/singUp.do"})
    public String singUpkoway(
    		HttpServletRequest request
    		,Model model
    		,@RequestParam Map<String, Object> paramMap
    ) {
        log.debug("singUp");
        //tiles.xml 을 사용해서 jsp를 불러오는거임 . name
        return "/site/main/singUp.site";
    }
    
    @GetMapping(value = {"/koala/koalaIntroduce.do"})
    public String koalaIntroduce(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koala/koalaIntroduce.site";
    }
    @GetMapping(value = {"/koala/liqourIntroduce.do"})
    public String liqourIntroduce(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koala/liqourIntroduce.site";
    }
    @GetMapping(value = {"/koala/monthLiquor.do"})
    public String monthLiquor(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koala/monthLiquor.site";
    }
    @GetMapping(value = {"/koala/traditionalLiquor.do"})
    public String traditionalLiquor(HttpServletRequest request,Model model,@RequestParam Map<String, Object> paramMap) {
        log.debug("subYStest");
        return "/site/koala/traditionalLiquor.site";
    }
}
