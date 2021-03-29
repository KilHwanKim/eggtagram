package com.eggta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eggta.domain.LikeVO;
import com.eggta.persistence.LikeDAO;

@Service
public class LikeServiceimp implements LikeService{
	
	
	@Inject
	LikeDAO ldao;
	
	@Override
	public int up(LikeVO lvo) {
		// TODO Auto-generated method stub
		return ldao.insert(lvo);
	}

	@Override
	public int cancle(LikeVO lvo) {
		// TODO Auto-generated method stub
		return ldao.delete(lvo);
	}

	@Override
	public List<LikeVO> getList(String NickName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int ckeck(LikeVO lvo) {
		// TODO Auto-generated method stub
		return ldao.selectcheck(lvo);
	}

	
}
