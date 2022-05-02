package kr.co.goodee39.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodee39.service.CarInfoService;





@Controller
public class HomeController {
	
	@Autowired
	CarInfoService carInfoService;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model) {
		carInfoService.selectCarList(model);
		return "main";
	}
	@GetMapping("/main")
	public String gohome(Model model) {
		carInfoService.selectCarList(model);
		return "main";
	}
}
