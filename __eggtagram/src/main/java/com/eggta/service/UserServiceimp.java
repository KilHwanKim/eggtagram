package com.eggta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eggta.domain.UserVO;
import com.eggta.persistence.UserDAO;


@Service
public class UserServiceimp implements UserService{
	@Inject
	UserDAO udao;
	
	
	
	@Override
	public int join(UserVO uvo) {
		// TODO Auto-generated method stub
		return udao.insert(uvo);
	}


	@Override
	public UserVO getMember(String nickname) {
		// TODO Auto-generated method stub
		return udao.SelectOne(nickname);
	}

	@Override
	public int modify(UserVO uvo) {
		// TODO Auto-generated method stub
		return udao.update(uvo);
	}

	@Override
	public int resign(String nickname) {
		// TODO Auto-generated method stub
		return udao.delete(nickname);
	}

	@Override
	public int checkNick(String nickname) {
		// TODO Auto-generated method stub
		return udao.SelectNick(nickname);
	}

	@Override
	public int checkEmail(String email) {
		// TODO Auto-generated method stub
		return udao.SelectEmail(email);
	}
	@Override
	public UserVO login(String email) {
		// TODO Auto-generated method stub
		return udao.selectlogin(email);
	}


	@Override
	public List<UserVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
