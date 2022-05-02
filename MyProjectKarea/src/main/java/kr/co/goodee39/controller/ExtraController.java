package kr.co.goodee39.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;

import kr.co.goodee39.service.CarInfoService;
import kr.co.goodee39.service.EstimateService;
import kr.co.goodee39.vo.CarInfoVO;
import kr.co.goodee39.vo.EngineTypeVO;


@Controller
public class ExtraController {

	@Autowired
	CarInfoService carInfoService;
	@Autowired
	EstimateService estimateService;
	
	@GetMapping("/map")
	public String kareamap() {
		return "kareamap";
	}
	@GetMapping("/estimateview")
	public String estimateview(@RequestParam("cname") String cname, @RequestParam("brand") String brand,Model model){
        
		estimateService.estimate(cname, brand, model);
        
		
		return "estimateview";
		
	}
	@PostMapping("/quotationview")
	public String quotationview(@RequestParam Map<String, Object> param)  {
		String cname=(String) param.get("cname");
		int enginenum=(int) param.get("enginenum");
		int drivingnum=(int) param.get("drivingnum");
		int excolornum=(int) param.get("excolornum");
		System.out.println(cname);
		estimateService.quotation(cname, enginenum, drivingnum, excolornum);
		return "success";
	}
//	@GetMapping("/detailview")
//	public String detailview() {
//		
//	}
}
