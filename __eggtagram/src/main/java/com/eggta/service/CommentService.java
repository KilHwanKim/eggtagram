package com.eggta.service;

import java.util.List;

import com.eggta.domain.CommentVO;

public interface CommentService {
	public int write(CommentVO cvo);
	public int remove(int cno);
	public List <CommentVO> getList(int ano);
	

}
