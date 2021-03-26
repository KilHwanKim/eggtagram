package com.eggta.persistence;

import java.util.List;

import com.eggta.domain.FollowVO;
import com.eggta.domain.UserVO;

public interface FollowDAO {
	public int insert (FollowVO fovo);
	public int delete(FollowVO fovo);
	public int selectcheck(FollowVO fovo);
	public List<UserVO> selectList(String nickname);
	public List<FollowVO> selectfollower(String follower);
	public List<FollowVO> selecttarget(String target);
}
