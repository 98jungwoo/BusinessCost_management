package woo.cost.mgmt.login.service;

import woo.cost.mgmt.admin.model.AdminDTO;
import woo.cost.mgmt.login.model.LoginDTO;

public interface LoginService {

	//로그인을 실행하기 위한 메서드
	public AdminDTO login(LoginDTO loginDTO);
}
