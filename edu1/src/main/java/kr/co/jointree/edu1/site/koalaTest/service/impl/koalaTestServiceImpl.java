package kr.co.jointree.edu1.site.koalaTest.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.cmm.util.FileUtil;
import kr.co.jointree.edu1.site.koalaMake.service.koalaMakerService;
import kr.co.jointree.edu1.site.koalaTest.service.koalaTestService;
import kr.co.jointree.edu1.site.sample1.service.SiteSample1Service;


@Service("koalaTestService")
public class koalaTestServiceImpl implements koalaTestService {

    public static Logger log = LoggerFactory.getLogger(koalaTestServiceImpl.class);

    @Autowired
    private koalaTestDAO koalaTestDAO;

    /**
     * 목록 정보 갯수
     * @param paramMap
     * @return
     */
    public int getSample1Count(Map<String, Object> paramMap){
  		int selectData = koalaTestDAO.getSample1Count(paramMap);
  		return selectData;
  	}
    
    /**
     * 목록 정보 조회
     * @return
     */
    public List<Map<String, Object>> getSample1List(Map<String, Object> paramMap) {
        List<Map<String, Object>> selectData = koalaTestDAO.getSample1List(paramMap);
        return selectData;
    }
    
    /**
     * 단건 정보 조회
     * @return
     */
    public Map<String, Object> getSample1Info(Map<String, Object> paramMap) {
        Map<String, Object> selectData = koalaTestDAO.getSample1Info(paramMap);
        return selectData;
    }

    /**
     * 정보 등록
     * @return
     * @throws IOException 
     * @throws IllegalStateException 
     */
    public int setSample1Insert(Map<String, Object> paramMap){
        
    	int selectData = koalaTestDAO.setSample1Insert(paramMap);
    	
        return selectData;
    }

    /**
     * 정보 수정
     * @return
     */
    public int setSample1Update(Map<String, Object> paramMap){
    	
    	int selectData = koalaTestDAO.setSample1Update(paramMap);
    	
        return selectData;
    }
    
    /**
     * 정보 삭제
     * @return
     */
    public int setSample1Delete(Map<String, Object> paramMap) {
    	int selectData = koalaTestDAO.setSample1Delete(paramMap);
        return selectData;
    }
    
}
