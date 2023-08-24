package woo.cost.mgmt.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public String login(AdminDTO adminDTO, Model model,HttpServletRequest request,
			HttpServletResponse response) {

		logger.info("LoginController ■■■2■■ loginView ■■■■■");
		model.addAttribute("adminDTO", loginServiceImp.login(adminDTO, request, response));
		
		logger.info("LoginController ■■4■■■ loginView ■■■■■");
		return "./login/login_check";
	}

}
