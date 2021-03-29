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

	@ResponseBody
	@PostMapping("/add")
	public void add(LikeVO lvo,@RequestParam("nickname") String nickname ,@RequestParam("ano") Integer ano ) {
		lvo.setAno(ano);
		lvo.setNickname(nickname);

		lsv.up(lvo);
		
		
		
	}
	
	
	@ResponseBody
	@PostMapping("/cancle")
	public void cancle(LikeVO lvo,@RequestParam("nickname") String nickname ,@RequestParam("ano") Integer ano ) {
		lvo.setAno(ano);
		lvo.setNickname(nickname);

		lsv.cancle(lvo);
		
		
		
	}
	
	@ResponseBody
	@PostMapping("/count")
	public String count(@RequestParam("ano") Integer ano) {
		logger.info("좋아요 갯수"+lsv.count(ano));
		
		
		return lsv.count(ano).toString();
		
	}
	

	

}
