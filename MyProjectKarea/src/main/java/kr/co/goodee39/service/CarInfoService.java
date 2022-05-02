package kr.co.goodee39.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.vo.CarInfoVO;


@Service
public class CarInfoService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void selectCarList(Model model) {
	    CarInfoVO vo1=new CarInfoVO();
	    CarInfoVO vo2=new CarInfoVO();
	    CarInfoVO vo3=new CarInfoVO();
	    vo1.setBrand("KIA");
	    vo2.setBrand("GENESIS");
	    vo3.setBrand("HYUNDAI");
	    List<CarInfoVO> carList1=sqlSessionTemplate.selectList("carInfo.selectCarList",vo1);
	    List<CarInfoVO> carList2=sqlSessionTemplate.selectList("carInfo.selectCarList",vo2);
	    List<CarInfoVO> carList3=sqlSessionTemplate.selectList("carInfo.selectCarList",vo3);
	    model.addAttribute("ListKia", carList1);
	    model.addAttribute("ListGenesis", carList2);
	    model.addAttribute("ListHyundai", carList3);
	    
	}
	
}
