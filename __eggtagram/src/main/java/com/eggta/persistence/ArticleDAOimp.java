package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eggta.domain.ArticleVO;

@Repository
public class ArticleDAOimp implements ArticleDAO{
	private static final String NAME_SPACE = "articleMapper.";
	
	
	@Inject
	private SqlSession sql;
	
	@Override
	public int insert(ArticleVO avo) {
		// TODO Auto-generated method stub
		return sql.insert(NAME_SPACE+ "register",avo);
	}

	@Override
	public List<ArticleVO> selectListprofile(String nickname) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE+"profile" ,nickname);
	}

	@Override
	public ArticleVO selectOne(Integer ano) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE + "detail",ano);	
		
	
	}

	@Override
	public int selectCurrAno() {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE +"curr");
	}

	@Override
	public int delete(Integer ano) {
		// TODO Auto-generated method stub
		return sql.delete(NAME_SPACE+"remove", ano);
	}

	@Override
	public int update(ArticleVO avo) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
