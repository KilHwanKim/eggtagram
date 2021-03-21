package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eggta.domain.CommentVO;

@Repository
public class CommentDAOimp implements CommentDAO {
	private static final String NAME_SPACE = "commentMapper.";
	
	@Inject
	private SqlSession sql;

	@Override
	public int insert(CommentVO cvo) {
		// TODO Auto-generated method stub
		return sql.insert(NAME_SPACE + "write",cvo);
	}

	@Override
	public int delete(int cno) {
		// TODO Auto-generated method stub
		return sql.delete(NAME_SPACE+"remove",cno);
	}

	@Override
	public List<CommentVO> selectList(int ano) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"list",ano);
	}
	

}
