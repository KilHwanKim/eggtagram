package com.eggta.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eggta.domain.FollowVO;

public interface FollowService {
	public int add (FollowVO fvo);
	public int cancle(FollowVO fvo);
	public int check(FollowVO fvo);
	public List<String> getfollower(String target);
	public List<String> gettarget(String follower);
	public List<String> recommand(String nickname);
	
	
	
	
}
