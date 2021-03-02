package com.eggta.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eggta.domain.FileVO;

@Repository
public class FileDAOimp implements FileDAO{
	private static final String NAME_SPACE = "fileMapper.";
	
	@Inject
	private SqlSession sql;
	
	@Override
	public int insert(FileVO fvo) {
		// TODO Auto-generated method stub
		return sql.insert(NAME_SPACE+"register",fvo);
	}

	@Override
	public List<FileVO> selectList(Integer ano) {
		// TODO Auto-generated method stub
		return sql.selectList(NAME_SPACE + "filelist", ano);
	}

	@Override
	public FileVO selectOne(String nickname) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAME_SPACE + "profile",nickname);
	}

	@Override
	public int delete(String nickname) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Integer ano) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
