package com.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
import com.board.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void signUp(MemberVO vo) throws Exception {
		dao.signUp(vo);
	}

	@Override
	public MemberVO signIn(String id) throws Exception {
		return dao.signIn(id);
	}

	@Override
	public void modifyPwd(MemberVO vo) throws Exception {
		dao.modifyPwd(vo);
	}

}
