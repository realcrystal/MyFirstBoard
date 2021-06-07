package com.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sql;

	private static String namespace = "com.board.mappers.member";
	
	// 회원 등록
	@Override
	public void signUp(MemberVO vo) throws Exception {
		sql.insert(namespace + ".signUp", vo);
	}

	@Override
	public MemberVO signIn(String id) throws Exception {
		return sql.selectOne(namespace + ".signIn", id);
	}

}
