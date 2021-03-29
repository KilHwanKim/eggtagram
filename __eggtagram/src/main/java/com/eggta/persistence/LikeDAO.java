package com.eggta.persistence;

import java.util.List;

import com.eggta.domain.LikeVO;

public interface LikeDAO  {
	int insert (LikeVO lvo);
	int delete(LikeVO lvo);
	List<LikeVO> selectList(String nickname);
	int selectcheck(LikeVO lvo);
	Integer selectcount(Integer ano);
}
