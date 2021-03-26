package com.eggta.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eggta.domain.FollowVO;
import com.eggta.domain.UserVO;

public interface FollowService {
	public int add (FollowVO fvo);
	public int cancle(FollowVO fvo);
	public int check(FollowVO fvo);
	public List<UserVO> recommand(String nickname);
	public List<FollowVO> getfollower(String target);
	public List<FollowVO> gettarget(String follower);
	
	
	
	
	
}
