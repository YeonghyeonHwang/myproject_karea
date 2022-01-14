package kr.co.goodee39.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExtraController {

	@GetMapping("/map")
	public String kareamap() {
		return "kareamap";
	}
	@GetMapping("/estimateview")
	public String estimate(HttpServletRequest request){
		String kind=request.getParameter("kind");
		String brand=request.getParameter("brand");
		request.setAttribute("kind",kind);
		request.setAttribute("brand",brand);
		return "estimateview";
		
	}
}
