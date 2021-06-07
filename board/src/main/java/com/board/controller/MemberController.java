package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.MemberVO;
import com.board.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Inject
	MemberService service;

	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public void getSignUp() throws Exception {

	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String postSignUp(MemberVO vo) throws Exception {
		String hashedPwd = BCrypt.hashpw(vo.getPwd(), BCrypt.gensalt());
		vo.setPwd(hashedPwd);
		service.signUp(vo);
		return "redirect:/";
	}

	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public void getSignIn() throws Exception {

	}

	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String postSignIn(@RequestParam("id") String id, @RequestParam("pwd") String pwd, HttpSession session,
			HttpServletRequest request) throws Exception {
		String referer = (String) request.getHeader("REFERER");
		MemberVO vo = null;
		vo = service.signIn(id);

		if (vo == null || !BCrypt.checkpw(pwd, vo.getPwd())) { // 로그인 실패
			session.setAttribute("user", null);
			System.out.println("로그인 실패");
		} else { // 로그인 성공
			session.setAttribute("user", vo);
			System.out.println("로그인 성공");
		}

		return "redirect:" + referer;
	}

	@RequestMapping(value = "/signOut", method = RequestMethod.GET)
	public String getSignOut(HttpSession session, HttpServletRequest request) throws Exception {
		String referer = (String) request.getHeader("REFERER");
		System.out.println(referer);
		session.invalidate();
		return "redirect:" + referer;
	}
}
