package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eggta.domain.UserVO;


@Repository 
public class UserDAOimp implements UserDAO{
	private static final String NAME_SPACE = "userMapper.";

	@Inject
	private SqlSession sql;

	@Override
	public UserVO SelectOne(String nickname) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"getuser",nickname);
	}

	@Override
	public int SelectNick(String nickname) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"checknick",nickname);
	}

	@Override
	public int SelectEmail(String email) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"checkemail",email);
	}

	@Override
	public int insert(UserVO uvo) {
		// TODO Auto-generated method stub
		return sql.insert( NAME_SPACE + "join",uvo);
	}

	@Override
	public int update(UserVO uvo) {
		// TODO Auto-generated method stub
		return sql.update(NAME_SPACE+"edit",uvo);
	}

	@Override
	public int delete(String nickname) {
		// TODO Auto-generated method stub
		return sql.delete(NAME_SPACE + "resign",nickname);
	}

	

	@Override
	public UserVO selectlogin(String email) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE+"nick", email);
	}

	@Override
	public List<UserVO> selectAuto(String search) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"auto",search);
	}

	


}
