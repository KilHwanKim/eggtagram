package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eggta.domain.LikeVO;


@Repository
public class LikeDAOimp implements LikeDAO{
	private static final String NAME_SPACE = "likeMapper.";
	
	@Inject
	private SqlSession sql;
	
	@Override
	public int insert(LikeVO lvo) {
		// TODO Auto-generated method stub
		return sql.insert(NAME_SPACE+"up",lvo);
	}

	@Override
	public int delete(LikeVO lvo) {
		// TODO Auto-generated method stub
		return sql.delete(NAME_SPACE+"cancle", lvo);
	}

	@Override
	public List<LikeVO> selectList(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectcheck(LikeVO lvo) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"check",lvo);
	}

	@Override
	public Integer selectcount(Integer ano) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"count",ano);
	}


}
