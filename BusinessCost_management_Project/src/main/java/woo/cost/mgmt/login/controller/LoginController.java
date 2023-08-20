package woo.cost.mgmt.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.admin.controller.AdminController;
import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.login.model.LoginDTO;
import woo.cost.mgmt.login.service.LoginServiceImp;

@Controller
@RequiredArgsConstructor
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	public final LoginServiceImp loginServiceImp;

	@RequestMapping(value = "/")
	public String main(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("adminDTO") != null) {
			return "redirect:/main/index";
		}
		else {
			return "redirect:Login";
		}
	}

	@GetMapping("main")
	public String main(Model model, HttpServletRequest request, LoginDTO loginDTO) {
		logger.info("LoginController ■■■1■■ main ■■■■■");
			return "./main/index";
		}


	@GetMapping("Login")
	public String login(Model model, HttpServletRequest request, LoginDTO loginDTO) {
		logger.info("LoginController ■■■1■■ loginView ■■■■■");
		return "./login/login";
	}

	@PostMapping("Login")
	public String login(LoginDTO loginDTO, HttpSession httpSession, Model model) {
		logger.info("loginDTO" + loginDTO.getUserID());
		logger.info("LoginController ■■■2■■ loginView ■■■■■");
		AdminDTO adminDTO = loginServiceImp.login(loginDTO);

		/* 혹시 동작 되면 이거 해제해보기 logger.info("password" + adminDTO); */

		// BCrypt는 해시 알고리즘으로 비밀번호를 암호화 하는기법
//	if (adminDTO == null || !BCrypt.checkpw(loginDTO.getPassword(), adminDTO.getPassword())) {
//		return;
//	}

		// BCrypt로 비밀번호를 암호화 하는기법을 사용하지 않은기법
		// adminDTO가 null인 경우나 입력된 비밀번호와 adminDTO에 저장된 비밀번호가 일치하지 않는 경우에만 조건이 참이되어 메서드
		// 종료
		/*
		 * if (adminDTO == null ||
		 * !loginDTO.getPassword().equals(adminDTO.getPassword())) { return
		 * "./login/login_check"; } model.addAttribute("adminDTO", adminDTO); return
		 * "./login/login_check";
		 */

		if (adminDTO == null || !loginDTO.getPassword().equals(adminDTO.getPassword())) {
			logger.info("LoginController ■■3■■■ loginView ■■■■■ " + "/ ■■로그인비번■■■ " + loginDTO.getPassword()
					+ "/ ■■DTO비번■■■ " + adminDTO.getPassword());
			return "./login/login_check";
		}

		model.addAttribute("adminDTO", adminDTO);
		logger.info("LoginController ■■4■■■ loginView ■■■■■");
		// return "redirect:/index"; //Redirect to index.jsp
		return "./login/login_check";
	}

}
