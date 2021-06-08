package com.board.service;

import java.util.List;

import com.board.domain.ReplyVO;

public interface ReplyService {
	// 댓글 조회
	public List<ReplyVO> list(int bno) throws Exception;

	// 댓글 하나 조회
	public ReplyVO view(int bno, int rno) throws Exception;

	// 댓글 작성
	public void write(ReplyVO vo) throws Exception;

	// 댓글 수정
	public void modify(ReplyVO vo) throws Exception;

	// 댓글 삭제
	public void delete(int rno) throws Exception;

	// 댓글 갯수
	public int count(int bno) throws Exception;

}
