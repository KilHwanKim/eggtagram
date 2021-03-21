package com.eggta.ctrl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eggta.domain.CommentVO;
import com.eggta.service.CommentService;

@Controller
@RequestMapping("/comment/*")
public class CommentController {
	
	
	private static Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	
	@Inject
	private CommentService csv;
	
	
	@PostMapping("/write")
	public String write(CommentVO cvo) {
		logger.info(">>> /comment/write - POST");
		int isUP = csv.write(cvo);
		String msg = isUP > 0 ? "댓글 작성완료": "댓글 작성 실패";
		logger.info(">>> 댓글 작성 성공? ",msg);
		return "redirect:../article/detail/"+cvo.getAno();
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("cno") Integer cno, @RequestParam("ano") String ano) throws UnsupportedEncodingException {
		int isUP = csv.remove(cno);
		String msg = isUP > 0 ? "댓글 삭제완료": "댓글 삭제 실패";
		logger.info(msg);
		
		return "redirect:../article/detail/"+ano;
		
	}
	
	
	
	

}
