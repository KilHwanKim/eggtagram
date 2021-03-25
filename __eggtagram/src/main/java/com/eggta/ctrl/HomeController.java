package com.eggta.ctrl;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eggta.domain.ArticleVO;
import com.eggta.domain.CommentVO;
import com.eggta.domain.FileVO;
import com.eggta.domain.UserVO;
import com.eggta.service.ArticleService;
import com.eggta.service.CommentService;
import com.eggta.service.FileService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	@Inject ArticleService asv;
	@Inject FileService fsv;
	@Inject CommentService csv;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession ses) {
		logger.info("Welcome home! The client locale is {}.", locale);
		List <ArticleVO> article_list = asv.getall();
		for (ArticleVO avo : article_list) {
			FileVO thumb = fsv.getFile(avo.getNickname());
			if (thumb != null) {
				avo.setThumb( thumb.getSavedir() + "\\" + thumb.getUuid() + "_th_" + thumb.getFname());
				
			}
			/* 파일 리스트 */
			List<FileVO> filelist = fsv.getFile(avo.getAno());
			avo.setFile_list(filelist);
			
			List<CommentVO> commentlist = csv.getList(avo.getAno());
			avo.setComment_list(commentlist);
			
		}
		model.addAttribute("all_list",article_list);
		
		
		
		UserVO uvo = (UserVO) ses.getAttribute("login");
		FileVO myfvo = fsv.getFile(uvo.getNickname());
		
		/* 자신의 프로필 */
		if (myfvo != null) {
			
			String my_thumb = myfvo.getSavedir() + "\\" + myfvo.getUuid() + "_th_" + myfvo.getFname();
			logger.info("mythumb" + my_thumb);
			model.addAttribute("thumb", my_thumb);

		}
	
		
		
		
		return "home";
	}
	
}
