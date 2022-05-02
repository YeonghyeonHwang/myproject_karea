package kr.co.goodee39.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.vo.CarInfoVO;
import kr.co.goodee39.vo.DrivingTypeVO;
import kr.co.goodee39.vo.EngineTypeVO;
import kr.co.goodee39.vo.ExColorTypeVO;

@Service
public class EstimateService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void estimate(String cname, String brand, Model model) {
		 CarInfoVO cvo=new CarInfoVO();
	     DrivingTypeVO dvo=new DrivingTypeVO();
	     EngineTypeVO evo=new EngineTypeVO();
	     ExColorTypeVO ecvo=new ExColorTypeVO();
	     cvo.setCname(cname);
	     dvo.setCname(cname);
	     evo.setCname(cname);
	     ecvo.setCname(cname);
	     List<DrivingTypeVO> DList=sqlSessionTemplate.selectList("estimate.selectDrivingTypeList",dvo);
	     List<EngineTypeVO> EList=sqlSessionTemplate.selectList("estimate.selectEngineTypeList",evo);
		 List<ExColorTypeVO> ECList=sqlSessionTemplate.selectList("estimate.selectExColorTypeList",ecvo);
		 
		 model.addAttribute("originalPrice", sqlSessionTemplate.selectOne("carInfo.selectOriginalPrice",cvo));
		 model.addAttribute("drivingTypeList", DList);
		 model.addAttribute("engineTypeList", EList);
		 model.addAttribute("exColorTypeList", ECList);
		 model.addAttribute("cname", cname);
		 model.addAttribute("brand", brand);
	     
		
	}
	
	public void quotation(String cname, int enginenum, int drivingnum, int excolornum) {
		 CarInfoVO cvo=new CarInfoVO();
	     DrivingTypeVO dvo=new DrivingTypeVO();
	     EngineTypeVO evo=new EngineTypeVO();
	     ExColorTypeVO ecvo=new ExColorTypeVO();
	     cvo.setCname(cname);
	     dvo.setDrivingnum(drivingnum);
	     evo.setEnginenum(enginenum);
	     ecvo.setExcolornum(excolornum);
	     
		
	}
}
