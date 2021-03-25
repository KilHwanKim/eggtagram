package com.eggta.ctrl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eggta.domain.FollowVO;
import com.eggta.service.FollowService;

@Controller
@RequestMapping("/follow/*")

public class FollowController {

	private static Logger logger = LoggerFactory.getLogger(FollowController.class);
	@Inject
	FollowService fosv;

	@PostMapping("/add")
	public String add(FollowVO fovo, @RequestParam("follower") String follower, @RequestParam("target") String target,
			Model model) {

		fovo.setFollower(follower);
		fovo.setTarget(target);

		fosv.add(fovo);

		return "redirect:/";

	}

	@PostMapping("/cancle")
	public String cancle(FollowVO fovo, @RequestParam("follower") String follower, @RequestParam("target") String target,
			Model model) {

		fovo.setFollower(follower);
		fovo.setTarget(target);

		fosv.cancle(fovo);

		return "redirect:/";

	}

}
