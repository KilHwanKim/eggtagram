package com.eggta.service;

import java.util.List;

import com.eggta.domain.ArticleVO;

public interface ArticleService {
	public int register(ArticleVO avo);
	public List<ArticleVO> getprofile(String nickname);
	public ArticleVO getDetail(Integer ano);
	public int getCurrAno();
	public int remove(Integer ano);
	public int edit(ArticleVO avo);
	
}
