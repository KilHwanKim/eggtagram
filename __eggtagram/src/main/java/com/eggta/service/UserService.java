package com.eggta.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eggta.domain.UserVO;

public interface UserService {
	public int join(UserVO uvo);//회원가입
	public UserVO login(String email);//로그인
	public UserVO getMember(String nickname);//프로파일
	public List <UserVO> getList();
	public int modify(UserVO uvo);
	public int resign(String nickname);//
	public int checkNick(String nickname);
	public int checkEmail(String email);
	

}
