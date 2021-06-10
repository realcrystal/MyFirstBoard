package com.board.service;

import com.board.domain.MemberVO;

public interface MemberService {
	
	// 회원 등록
	public void signUp(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO signIn(String id) throws Exception;
	
	// 비밀번호 변경
	public void modifyPwd(MemberVO vo) throws Exception;

}
