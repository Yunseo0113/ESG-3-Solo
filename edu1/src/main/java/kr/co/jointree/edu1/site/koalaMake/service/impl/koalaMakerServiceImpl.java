package kr.co.jointree.edu1.site.koalaMake.service.impl;

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
import kr.co.jointree.edu1.site.sample1.service.SiteSample1Service;


@Service("koalaMakerService")
public class koalaMakerServiceImpl implements koalaMakerService {

    public static Logger log = LoggerFactory.getLogger(koalaMakerServiceImpl.class);

    @Autowired
    private koalaMakerDAO koalaMakerDAO;

    /**
     * 목록 정보 갯수
     * @param paramMap
     * @return
     */
    public int getSample1Count(Map<String, Object> paramMap){
  		int selectData = koalaMakerDAO.getSample1Count(paramMap);
  		return selectData;
  	}
    
    /**
     * 목록 정보 조회
     * @return
     */
    public List<Map<String, Object>> getSample1List(Map<String, Object> paramMap) {
        List<Map<String, Object>> selectData = koalaMakerDAO.getSample1List(paramMap);
        return selectData;
    }
    
    /**
     * 단건 정보 조회
     * @return
     */
    public Map<String, Object> getSample1Info(Map<String, Object> paramMap) {
        Map<String, Object> selectData = koalaMakerDAO.getSample1Info(paramMap);
        return selectData;
    }

    /**
     * 정보 등록
     * @return
     * @throws IOException 
     * @throws IllegalStateException 
     */
    public int setSample1Insert(Map<String, Object> paramMap){
        
    	int selectData = koalaMakerDAO.setSample1Insert(paramMap);
    	
        return selectData;
    }

    /**
     * 정보 수정
     * @return
     */
    public int setSample1Update(Map<String, Object> paramMap){
    	
    	int selectData = koalaMakerDAO.setSample1Update(paramMap);
    	
        return selectData;
    }
    
    /**
     * 정보 삭제
     * @return
     */
    public int setSample1Delete(Map<String, Object> paramMap) {
    	int selectData = koalaMakerDAO.setSample1Delete(paramMap);
        return selectData;
    }
    
}
