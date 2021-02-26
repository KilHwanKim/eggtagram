package com.eggta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eggta.domain.ArticleVO;
import com.eggta.persistence.ArticleDAO;

@Service
public class ArticleServiceimp implements ArticleService{

	@Inject
	ArticleDAO udao;
	
	
	@Override
	public int register(ArticleVO avo) {
		// TODO Auto-generated method stub
		return udao.insert(avo);
	}

	@Override
	public List<ArticleVO> getprofile(String nickname) {
		// TODO Auto-generated method stub
		return udao.selectListprofile(nickname);
	}

	@Override
	public ArticleVO getDetail(Integer ano) {
		// TODO Auto-generated method stub
		return udao.selectOne(ano);
	}

	@Override
	public int getCurrAno() {
		// TODO Auto-generated method stub
		return udao.selectCurrAno();
	}

	@Override
	public int remove(Integer ano) {
		// TODO Auto-generated method stub
		return udao.delete(ano);
	}

	@Override
	public int edit(ArticleVO avo) {
		// TODO Auto-generated method stub
		return udao.update(avo);
	}

	

}
