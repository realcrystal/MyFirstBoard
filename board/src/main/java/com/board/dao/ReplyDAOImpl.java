package com.board.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mappers.reply";
	
	// 댓글 조회
	@Override
	public List<ReplyVO> list(int bno) throws Exception {
		return sql.selectList(namespace + ".replyList", bno);
	}
	
	// 댓글 하나 조회
	@Override
	public ReplyVO view(int bno, int rno) throws Exception {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("bno", bno);
		data.put("rno", rno);
		return sql.selectOne(namespace + ".replyView", data);
	}

	// 댓글 작성
	@Override
	public void write(ReplyVO vo) throws Exception {
		sql.insert(namespace + ".replyWrite", vo);
	}

	// 댓글 수정
	@Override
	public void modify(ReplyVO vo) throws Exception {
		sql.update(namespace + ".replyModify", vo);
	}

	// 댓글 삭제
	@Override
	public void delete(ReplyVO vo) throws Exception {
		sql.delete(namespace + ".replyDelete", vo);
	}

	// 뎃글 갯수
	@Override
	public int count(int bno) throws Exception {
		return sql.selectOne(namespace + ".replyCount", bno);
	}

}
