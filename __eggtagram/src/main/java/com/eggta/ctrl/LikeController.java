package com.eggta.ctrl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eggta.domain.LikeVO;
import com.eggta.service.LikeService;

@Controller
@RequestMapping("/like/*")
public class LikeController {
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(LikeController.class);

	@Inject
	private LikeService lsv;

	
	@PostMapping("/add")
	public String add(LikeVO lvo,@RequestParam("nickname") String nickname ,@RequestParam("ano") Integer ano ) {
		lvo.setAno(ano);
		lvo.setNickname(nickname);

		lsv.up(lvo);
		
		
		return "";
	}
	
	
	
	@PostMapping("/cancle")
	public String cancle(LikeVO lvo,@RequestParam("nickname") String nickname ,@RequestParam("ano") Integer ano ) {
		lvo.setAno(ano);
		lvo.setNickname(nickname);

		lsv.cancle(lvo);
		
		
		return "";
	}
	
	

	

}
