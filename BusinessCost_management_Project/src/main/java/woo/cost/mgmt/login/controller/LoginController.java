package woo.cost.mgmt.login.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.support.RequestContextUtils;

import lombok.RequiredArgsConstructor;
import woo.cost.mgmt.admin.controller.AdminController;
import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.admin.service.AdminServiceImp;
import woo.cost.mgmt.login.model.LoginDTO;
import woo.cost.mgmt.login.service.LoginServiceImp;

@Controller
@RequiredArgsConstructor
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	public final LoginServiceImp loginServiceImp;
	
	@GetMapping("Login")
	public String login(Model model, HttpServletRequest request, LoginDTO loginDTO) {
		
		logger.info("LoginController ■■■■■ loginView ■■■■■");
		
		//getInputFlashMap : request에 저장된 'input'플래시 속성이 있는 읽기전용 map을 반환한다."
		
		//먼저, loginView의 InputFlashMap은 저번글에서 구현했던 회원가입 기능중, 회원가입완료 후 로그인페이지로 
		// 리다이렉트했을때 가입완료창을 띄우기위해 넣은 코드이다.
		
//그럼 나 insert에서 RedirectAttributes를 안썼어서 없어도 되는 부분같아 
//		Map<String, ?> inputFlashFMap = RequestContextUtils.getInputFlashMap(request);
//		if (null != inputFlashFMap) {
//			model.addAttribute("msg", inputFlashFMap.get("msg"));
//		}
		return "./login/login";
	}
	
	@PostMapping("Login")
	public String login(LoginDTO loginDTO, HttpSession httpSession, Model model) {
	logger.info("loginDTO" + loginDTO.getUserID());
	AdminDTO adminDTO = loginServiceImp.login(loginDTO);
	
	logger.info("password" + adminDTO);
	
	//BCrypt는 해시 알고리즘으로 비밀번호를 암호화 하는기법
//	if (adminDTO == null || !BCrypt.checkpw(loginDTO.getPassword(), adminDTO.getPassword())) {
//		return;
//	}
	
	//BCrypt로 비밀번호를 암호화 하는기법을 사용하지 않은기법
	// adminDTO가 null인 경우나 입력된 비밀번호와 adminDTO에 저장된 비밀번호가 일치하지 않는 경우에만 조건이 참이되어 메서드 종료
	if (adminDTO == null || !loginDTO.getPassword().equals(adminDTO.getPassword())) {
		return "./login/login_check.";
	}
	model.addAttribute("adminDTO", adminDTO);
	return "./login/login_check.";
	}
	
}
