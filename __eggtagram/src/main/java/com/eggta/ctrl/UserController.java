package com.eggta.ctrl;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eggta.domain.ArticleVO;
import com.eggta.domain.FileVO;
import com.eggta.domain.UserVO;
import com.eggta.service.ArticleService;
import com.eggta.service.FileService;
import com.eggta.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private BCryptPasswordEncoder bcpEncoder;
	
	@Inject
	private UserService usv;
	
	@Inject 
	private ArticleService asv;
	
	@Inject 
	private FileService fsv;
	
	
	@GetMapping("/signup")
	public void signup() {
		logger.info(">>> /user/signup - GET");
	}
	
	@PostMapping("/signup")
	public String join(UserVO uvo, RedirectAttributes reAttr) {
		logger.info(">>> /user/signup - POST");
		String encPwd = bcpEncoder.encode(uvo.getPwd());
		uvo.setPwd(encPwd);
		int isUP = usv.join(uvo);
		String msg = isUP > 0 ? uvo.getEmail() +"님 가입 완료입니다.": "가입 오류!";
		logger.info("result",msg);
		return "redirect:/";
	}
	@GetMapping("/login")
	public void login() {
		logger.info(">>> /user/login - GET");
	}
	@PostMapping("/login")
	public String login(UserVO uvo,HttpSession ses,RedirectAttributes reAttr ) {
		
		if ( ses.getAttribute("login") !=null ){
            
            ses.removeAttribute("login");
        }
		logger.info(">>> uvo의 eamil:"+uvo.getEmail());
		UserVO dbinfo = usv.login(uvo.getEmail());
		String PWD = dbinfo.getPwd();
		logger.info(">>>dbinfo의 비밀번호 "+dbinfo.getPwd());
		boolean isEqual = bcpEncoder.matches(uvo.getPwd(), PWD);
		logger.info("isEqual"+isEqual);
		if(isEqual) {
			ses.setAttribute("login", dbinfo);
			
			ses.setMaxInactiveInterval(60 * 30);
			return "redirect:/";}
		else {
			return "redirect:/user/login";
		}
		
	}
	
	
	@RequestMapping("/profile/{nickname}")
	public String profile(Model model,@PathVariable String nickname) {
		logger.info(">>> test nickname = " +nickname);
		model.addAttribute("uvo",usv.getMember(nickname));
		List<ArticleVO> list = asv.getprofile(nickname);
		logger.info(">>> test list" + list.toString());
		for (ArticleVO avo : list) {
			if (fsv.getFile(avo.getAno()).size()> 0 ) {
				FileVO thumb = fsv.getFile(avo.getAno()).get(0);
				avo.setThumb(thumb.getSavedir()+"\\"+thumb.getUuid()+"_th_"+thumb.getFname());
				
			}
			
			
		}
		model.addAttribute("a_list", list);
		model.addAttribute("article_count",list.size());
		model.addAttribute("belong_count",0);//팔로워
		model.addAttribute("target_count",0);

		return "user/profile";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession ses) {
		logger.info(">>>> /user/logout - GET");
		ses.invalidate();
		return "redirect:/";
	}
	
	
	
	
}
