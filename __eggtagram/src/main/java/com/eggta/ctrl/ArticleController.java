package com.eggta.ctrl;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.eggta.domain.ArticleVO;
import com.eggta.orm.FileProcessor;
import com.eggta.service.ArticleService;
import com.eggta.service.FileService;
import com.eggta.service.UserService;



/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/article/*")

public class ArticleController {
   
   @Inject
   private BCryptPasswordEncoder bcpEncoder;
   @Inject
	private FileProcessor fp;
   @Inject
   private ArticleService asv;
	@Inject
	private UserService usv;

   private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
   
   
   @GetMapping("/register")
   public void register() {}
   
   
	@PostMapping("/register")
	public String register(ArticleVO avo,
			Model model,@RequestParam(name="photo",required = false)MultipartFile[] files ) {
		
		logger.info("recontent" + avo.getContent());
		logger.info("renick" + avo.getNickname());
		int isUp = asv.register(avo);
		if(isUp > 0 ) {
			int ano = asv.getCurrAno();
			if(files[0].getSize()>0) {
				fp.uploadFiles(files, ano);
			}
		}
		String msg = isUp >0? "article 등록 완료~": "article 등록 오류!";
		logger.info("Messge :"+msg);
		return "redirect:/";
	}
	
	@GetMapping("/detail/{ano}")
	public ModelAndView detail(Model model,@PathVariable Integer ano) {
		ModelAndView Page = new ModelAndView("/");
		
		logger.info("Page", Page);
		return Page;
	}
	
	
	
   
   
   
   
   
}