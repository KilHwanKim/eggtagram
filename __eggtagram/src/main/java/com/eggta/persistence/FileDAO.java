package com.eggta.persistence;

import java.util.List;

import com.eggta.domain.FileVO;

public interface FileDAO {
	public int insert (FileVO fvo);
	public List<FileVO> selectList(Integer ano);
	public FileVO selectOne(String nickname);
	public int delete(String nickname);
	public int delete(Integer ano);
}
