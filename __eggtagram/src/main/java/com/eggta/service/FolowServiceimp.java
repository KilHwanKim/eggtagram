package com.eggta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eggta.domain.FollowVO;
import com.eggta.domain.UserVO;
import com.eggta.persistence.FollowDAO;

@Service
public class FolowServiceimp implements FollowService{

	
	
	@Inject
	FollowDAO fdao;
	@Override
	public int add(FollowVO fvo) {
		// TODO Auto-generated method stub
		return fdao.insert(fvo);
	}

	@Override
	public int cancle(FollowVO fvo) {
		// TODO Auto-generated method stub
		return fdao.delete(fvo);
	}

	@Override
	public int check(FollowVO fvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserVO> recommand(String nickname) {
		// TODO Auto-generated method stub
		return fdao.selectList(nickname);
	}

	@Override
	public List<String> getfollower(String target) {
		// TODO Auto-generated method stub
		return fdao.selectfollower(target);
	}

	@Override
	public List<String> gettarget(String follower) {
		// TODO Auto-generated method stub
		return fdao.selecttarget(follower);
	}
	
	
	

	

}
