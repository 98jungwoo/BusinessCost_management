package woo.cost.mgmt.login.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.login.model.LoginDAO;
import woo.cost.mgmt.login.model.LoginDTO;

@Service
public class LoginServiceImp implements LoginService {
	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImp.class);
	
	private final LoginDAO loginDAO;
	
	@Autowired
	public LoginServiceImp(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}
	//로그인을 실행하기 위한 메서드
	@Override
	public AdminDTO login(LoginDTO loginDTO) {
		logger.info("■■■■■ LoginServiceImp ■■■■■ login");
		return loginDAO.login(loginDTO);
	}

}
