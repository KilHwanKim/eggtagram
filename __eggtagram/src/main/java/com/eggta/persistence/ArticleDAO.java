package com.eggta.persistence;

import java.util.List;

import com.eggta.domain.ArticleVO;

public interface ArticleDAO {
	public int insert(ArticleVO avo);
	public List<ArticleVO> selectListprofile(String nickname);
	public ArticleVO selectOne(Integer ano);
	public int selectCurrAno();
	public int delete(Integer ano);
	public int update(ArticleVO avo);
	

}
