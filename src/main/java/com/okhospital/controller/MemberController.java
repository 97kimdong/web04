package com.okhospital.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.okhospital.dto.MemberDTO;
import com.okhospital.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Inject
	MemberService memberService;
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	//리스트
	@RequestMapping(value = "list.do", method = RequestMethod.GET)	
	public String memberList(Model model) throws Exception {
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/list";
	}
	//상세보기
	@RequestMapping(value = "view", method = RequestMethod.GET)
	public String viewMember(@RequestParam String userid, Model model) throws Exception {
		MemberDTO dto = memberService.viewMember(userid);
		return "member/viewMember";
	}
	//회원가입
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String addMember(MemberDTO mdto, Model model) throws Exception {
		mdto.setUserpw(pwdEncoder.encode(mdto.getUserpw()));
		memberService.addMember(mdto);
		return "redirect:/member/loginForm";
	}
	//회원정보수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO mdto, Model model) throws Exception {
		memberService.editMember(mdto);
		return "member/list";
	}
	//회원탈퇴
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String memberDelete(@RequestParam String userid, Model model) throws Exception {
		memberService.deleteMember(userid);
		return "redirect:/home";
	}
	//로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberDTO mdto, HttpSession session, RedirectAttributes rttr) throws Exception {
		session.getAttribute("member");
		MemberDTO login = memberService.loginCheck(mdto);
		if(login==null) {
			return "redirect:./loginForm";
		}
		boolean pwdMatch = pwdEncoder.matches(mdto.getUserpw(), login.getUserpw());
		if (login != null && pwdMatch == true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", mdto.getUserid());
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}
		return "redirect:/";
	}
	//아이디중복확인
	@RequestMapping("IDCK")
	public void IDCK(Model model,HttpServletResponse response,String userid) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; utf-8");
		PrintWriter out = response.getWriter();
		int ck = memberService.memberIDCK(userid);
		if (ck == 0) {
		out.println("<style>body{text-align:center}</style><br><p>"+userid + "는 사용 가능합니다.</p><br><br>"
				+ "<button onclick='"
				+ "opener.document.getElementById(\"userid\").readOnly = true;"
				+ "window.close();"
				+ "'>사용하기</button> &nbsp;&nbsp;&nbsp;"
				+ "<button onclick='"
				+ "opener.document.getElementById(\"userid\").readOnly = false;"
				+ "window.close();"
				+ "'>다시입력</button>");
		} else {
			out.println("<style>body{text-align:center}</style><br><p style='color:red;'>"+userid + "는 사용 불가능합니다.</p><br><br>"
					+ "<button onclick='"
					+ "opener.document.getElementById(\"userid\").readOnly = false;"
					+ "window.close();"
					+ "'>다시입력</button>");
		}
	}
	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpServletResponse response,HttpServletRequest request,HttpSession session){
		session.invalidate();
		return "redirect:../";
		
	}
	//조인폼 jsp
	@RequestMapping("joinForm")
	public String join() {
		return "member/joinForm";
	}
	@RequestMapping("loginForm")
	public String login() {
		return "member/loginForm";
	}
	
	@RequestMapping("agreement")
	public String agreement() {
		return "member/agreement";
	}
	@RequestMapping("list")
	public String list() {
		return "member/list";
	}
}
