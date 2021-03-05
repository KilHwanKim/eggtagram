package com.eggta.persistence;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eggta.domain.CommentVO;

public interface CommentDAO {
	public int insert(CommentVO cvo);
	public int delete(int cno);
	public List <CommentVO> selectList(int ano);
	
	
}
