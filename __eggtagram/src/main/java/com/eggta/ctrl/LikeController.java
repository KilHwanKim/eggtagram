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
	@PostMapping("/content")
	public String contnet (@RequestParam("nickname") String nickname,@RequestParam("ano") int ano ,@RequestParam("sign") String sign) {
		LikeVO lvo = new LikeVO();
		logger.info("Post Mapping /content");
		lvo.setNickname(nickname);
		lvo.setAno(ano);
		logger.info("sign>>>> "+sign);
		if (sign.equals("up") ) {
			int isUP = lsv.up(lvo) ;
			logger.info("isUP"+isUP);
		}
		else {
			lsv.cancle(lvo);
		}
		
		
		return "";
		
	}
	

	

}
