package com.eggta.service;

import java.util.List;

import com.eggta.domain.FileVO;

public interface FileService {
	public int resister (FileVO fvo);
	public List<FileVO> getFile(Integer ano);
	public FileVO getFile(String nickname);// 하나만 출력
	public int remove(String nickname);
	public int remove(Integer ano);
	
	
}
