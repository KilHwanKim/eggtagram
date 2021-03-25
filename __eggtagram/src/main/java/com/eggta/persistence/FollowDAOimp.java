package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eggta.domain.FollowVO;
import com.eggta.domain.UserVO;

@Repository
public class FollowDAOimp implements FollowDAO{
	private static final String NAME_SPACE = "followMapper.";
	
	@Inject
	private SqlSession sql;

	@Override
	public int insert(FollowVO fovo) {
		// TODO Auto-generated method stub
		return sql.insert(NAME_SPACE+"add",fovo);
	}

	@Override
	public int delete(FollowVO fovo) {
		// TODO Auto-generated method stub
		return sql.delete(NAME_SPACE+"cancle",fovo);
	}

	@Override
	public int selectcheck(FollowVO fovo) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"check",fovo);
	}

	@Override
	public List<UserVO> selectList(String nickname) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"recommand",nickname);
	}

	@Override
	public List<String> selectfollower(String target) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"follower",target);
	}

	@Override
	public List<String> selecttarget(String follower) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"target",follower);
	}
	
	



}
