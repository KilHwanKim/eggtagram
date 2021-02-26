package com.eggta.persistence;

import com.eggta.domain.UserVO;

public interface UserDAO {
	
	public UserVO SelectOne(String nickname);
	public int SelectNick(String nickname);
	public int SelectEmail(String email);
	public int insert(UserVO uvo);
	public int update(UserVO uvo);
	public int delete(UserVO uvo);
	public UserVO selectlogin(String email);
	
	
}
