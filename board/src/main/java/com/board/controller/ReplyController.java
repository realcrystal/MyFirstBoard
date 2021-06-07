package com.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.ReplyVO;
import com.board.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Inject
	private ReplyService service;

	// 댓글 조회

	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postReply(ReplyVO vo) throws Exception {
		service.write(vo);
		return "redirect:/board/view?bno=" + vo.getBno();
	}

	// 댓글 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, @RequestParam("rno") int rno, Model model) throws Exception {
		ReplyVO vo = service.view(bno, rno);
		model.addAttribute("reply", vo);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(ReplyVO vo) throws Exception {
		service.modify(vo);
		return "redirect:/board/view?bno=" + vo.getBno();
	}

	// 댓글 삭제

}