package com.eggta.service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.eggta.domain.CommentVO;
import com.eggta.persistence.CommentDAO;






@Service
public class CommentServiceimp implements CommentService{

	@Inject
	CommentDAO cdao;
		
	@Override
	public int write(CommentVO cvo) {
		// TODO Auto-generated method stub
		return cdao.insert(cvo);
	}

	@Override
	public int remove(int cno) {
		// TODO Auto-generated method stub
		return cdao.delete(cno);
	}

	@Override
	public List<CommentVO> getList(int ano) {
		// TODO Auto-generated method stub
		return cdao.selectList(ano);
	}

	

}
