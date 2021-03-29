package com.eggta.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eggta.domain.LikeVO;

public interface LikeService {
	int up(LikeVO lvo);
	int cancle(LikeVO lvo);
	List <LikeVO> getList(String NickName);
	int ckeck(LikeVO lvo);
	Integer count(Integer ano);
}
