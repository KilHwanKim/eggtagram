package com.eggta.persistence;

import java.util.List;

import com.eggta.domain.FollowVO;

public interface FollowDAO {
	public int insert (FollowVO fovo);
	public int delete(FollowVO fovo);
	public int selectcheck(FollowVO fovo);
	public List<String> selectList(String nickname);
	public List<String> selectfollower(String follower);
	public List<String> selecttarget(String target);
}
