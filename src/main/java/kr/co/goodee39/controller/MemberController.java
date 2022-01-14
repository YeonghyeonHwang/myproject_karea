package kr.co.goodee39.controller;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller



public class MemberController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("/mypage")
	public String mypage(MemberVO vo, HttpSession session) {
	 return "mypage";
	}
	@GetMapping("/member/mypage")
	public String membermypage(MemberVO vo, HttpSession session) {
		
	 return "membermypage";
		
	}
	@GetMapping("/main")
	public String gohome(MemberVO vo) {
		return "main";
	}
	@GetMapping("/signup")
	public String signup(MemberVO vo) {
		return "signup";
	}
	@GetMapping("/gologin")
	public String gologin(MemberVO vo) {
		return "login";
	}
	@PostMapping("/login")
	public String isLogin(MemberVO vo, HttpSession session) {
		return memberService.getMember(vo, session);
	}
	@PostMapping("/signupResult")
	public String signupResult(MemberVO vo) {
		memberService.setMember(vo);
		return "signupresult";
	}
	
	
}
