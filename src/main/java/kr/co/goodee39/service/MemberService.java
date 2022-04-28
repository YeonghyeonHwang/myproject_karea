package kr.co.goodee39.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public String getMember(MemberVO vo, HttpSession session, HttpServletResponse response) throws IOException {
		MemberVO vo1 = sqlSessionTemplate.selectOne("member.selectMember",vo);
		String path = "";
		if(vo1 != null) {
			session.setAttribute("account", vo1);
			path = "membermypage";
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter out = response.getWriter(); 
			out.println("<script language='javascript'>");
					out.println("alert('회원정보가 일치하지 않습니다.')");
					out.println("</script>");	 
			out.flush();
			path = "login";
		}
		return path;
	}
	
	public void setMember(MemberVO vo) {
		sqlSessionTemplate.insert("member.insertMember", vo);
	}
}
