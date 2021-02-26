package com.eggta.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eggta.domain.FileVO;
import com.eggta.persistence.FileDAO;

@Service
public class FileServiceimp implements FileService {

	
	@Inject
	FileDAO fdao;
	
	@Override
	public int resister(FileVO fvo) {
		// TODO Auto-generated method stub
		return fdao.insert(fvo);
	}

	@Override
	public List<FileVO> getFile(Integer ano) {
		// TODO Auto-generated method stub
		return fdao.selectList(ano);
	}

	@Override
	public FileVO getFile(String nickname) {
		// TODO Auto-generated method stub
		return fdao.selectOne(nickname);
	}

	@Override
	public int remove(String nickname) {
		// TODO Auto-generated method stub
		return fdao.delete(nickname);
	}

	@Override
	public int remove(Integer ano) {
		// TODO Auto-generated method stub
		return fdao.delete(ano);
	}

	
}
